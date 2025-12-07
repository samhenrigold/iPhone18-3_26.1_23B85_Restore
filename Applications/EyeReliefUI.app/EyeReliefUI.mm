Swift::Int sub_1000017B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001828(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *sub_10000186C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100001890(char a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000055B4(0, &qword_10001D458, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_100005740;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059C4;
  aBlock[3] = &unk_100018F50;
  v14 = _Block_copy(aBlock);
  v15 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100005604();
  sub_100004544(&qword_10001D468, &qword_100010618);
  sub_10000565C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_100001B2C(char a1, char *a2)
{
  v2 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel;
  if (*&a2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (LOBYTE(v23[0]) == 1)
    {
      v5 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer;
      v6 = *&a2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer];
      if (a1 == 1)
      {
        v7 = *&a2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer];
        v8 = v7;
        if (!v6)
        {
          if (qword_10001D350 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_10000468C(v9, qword_10001E380);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&_mh_execute_header, v10, v11, "Scheduled safe distance timer", v12, 2u);
          }

          v6 = *&a2[v5];
          v7 = v6;
          v8 = v6;
          if (!v6)
          {
            v13 = objc_opt_self();
            v14 = swift_allocObject();
            *(v14 + 16) = a2;
            v23[4] = sub_10000574C;
            v23[5] = v14;
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 1107296256;
            v23[2] = sub_100002018;
            v23[3] = &unk_100018FA0;
            v15 = _Block_copy(v23);
            v16 = a2;

            v8 = [v13 scheduledTimerWithTimeInterval:0 repeats:v15 block:1.0];
            _Block_release(v15);
            v7 = 0;
            v6 = *&a2[v5];
          }
        }

        *&a2[v5] = v8;
        v17 = v7;
      }

      else
      {
        if (v6)
        {
          if (qword_10001D350 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_10000468C(v18, qword_10001E380);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v19, v20, "Cancelled safe distance timer", v21, 2u);
          }
        }

        [*&a2[v5] invalidate];
        v22 = *&a2[v5];
        *&a2[v5] = 0;

        if (*&a2[v2])
        {
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
        }
      }
    }
  }
}

void sub_100001EC0(uint64_t a1, uint64_t a2)
{
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000468C(v3, qword_10001E380);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fired safe distance timer", v6, 2u);
  }

  if (*(a2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  if (*(a2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming))
  {

    sub_10000EB60();
  }
}

void sub_100002018(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100002080(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000055B4(0, &qword_10001D458, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_1000055FC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059C4;
  aBlock[3] = &unk_100018F00;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100005604();
  sub_100004544(&qword_10001D468, &qword_100010618);
  sub_10000565C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_100002314(uint64_t a1)
{
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000468C(v2, qword_10001E380);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to stream. Enabling continue button.", v5, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }
}

void sub_100002518()
{
  v1 = v0;
  v2 = type metadata accessor for ShieldIntervention(0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InterventionViewModel(0);
  v5 = swift_allocObject();
  LOBYTE(aBlock) = 1;
  Published.init(initialValue:)();
  v6 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel;
  *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel] = v5;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 clearColor];
  [v8 setBackgroundColor:v10];

  if (!*&v1[v6])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = v1;

  sub_100005A08(v13, sub_10000453C, v11, v4);
  v14 = objc_allocWithZone(sub_100004544(&qword_10001D3C8, &qword_1000105A8));
  v15 = UIHostingController.init(rootView:)();
  v16 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention;
  v17 = *&v12[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention];
  *&v12[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention] = v15;
  v18 = v15;

  v19 = [v18 view];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = [v9 clearColor];
  [v19 setBackgroundColor:v20];

  v21 = *&v12[v16];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = [v21 view];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  v24 = [v22 layer];

  [v24 setMasksToBounds:1];
  v25 = *&v12[v16];
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 view];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v26;
  v28 = [v26 layer];

  v29 = objc_opt_self();
  v30 = [v29 mainScreen];
  v31 = [v30 traitCollection];

  [v31 displayCornerRadius];
  v33 = v32;

  [v28 setCornerRadius:v33];
  v34 = *&v12[v16];
  if (!v34)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = [v34 view];
  if (!v35)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = v35;
  v37 = [v35 layer];

  [v37 setCornerCurve:kCACornerCurveContinuous];
  v38 = [v29 mainScreen];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v72.origin.x = v40;
  v72.origin.y = v42;
  v72.size.width = v44;
  v72.size.height = v46;
  Height = CGRectGetHeight(v72);
  v73.origin.x = v40;
  v73.origin.y = v42;
  v73.size.width = v44;
  v73.size.height = v46;
  Width = CGRectGetWidth(v73);
  v74.origin.x = v40;
  v74.origin.y = v42;
  v74.size.width = v44;
  v74.size.height = v46;
  v49 = CGRectGetHeight(v74);
  v50 = *&v12[v16];
  if (!v50)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v51 = v49;
  v52 = [v50 view];
  if (!v52)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v53 = v52;
  [v52 setFrame:{0.0, Height, Width, v51}];

  if (!*&v12[v16])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v12 addChildViewController:?];
  v54 = [v12 view];
  if (!v54)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v55 = v54;
  v56 = *&v12[v16];
  if (!v56)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v57 = [v56 view];
  if (v57)
  {
    v58 = v57;
    [v55 addSubview:v57];

    sub_100003378();
    v59 = objc_opt_self();
    v60 = swift_allocObject();
    *(v60 + 2) = v12;
    v60[3] = v40;
    v60[4] = v42;
    v60[5] = v44;
    v60[6] = v46;
    v70 = sub_1000045C4;
    v71 = v60;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_1000059C4;
    v69 = &unk_100018D20;
    v61 = _Block_copy(&aBlock);
    v62 = v12;

    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    v70 = sub_1000045F4;
    v71 = v63;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_1000031A4;
    v69 = &unk_100018D70;
    v64 = _Block_copy(&aBlock);
    v65 = v62;

    [v59 _animateUsingSpringWithTension:0 friction:v61 interactive:v64 animations:200.0 completion:35.0];
    _Block_release(v64);
    _Block_release(v61);
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_100002B90(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction];
  if (v1)
  {
    if (*&a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v1;

      static Published.subscript.getter();

      v4 = v43;
    }

    else
    {
      v5 = v1;
      v4 = 0;
    }

    if (qword_10001D350 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000468C(v6, qword_10001E380);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v10;
      *v9 = 136315138;
      if (v4)
      {
        v11 = 0x656661736E75;
      }

      else
      {
        v11 = 1701208435;
      }

      if (v4)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      v13 = sub_100004740(v11, v12, &v43);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "User pressed dismiss button at %s distance. Replying back to eyereliefd", v9, 0xCu);
      sub_100004CE8(v10);
    }

    v14 = *&a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention];
    if (v14)
    {
      v15 = [v14 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 layer];

        v18 = objc_opt_self();
        v19 = [v18 mainScreen];
        v20 = [v19 traitCollection];

        [v20 displayCornerRadius];
        v22 = v21;

        [v17 setCornerRadius:v22];
        v23 = [v18 mainScreen];
        [v23 bounds];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v49.origin.x = v25;
        v49.origin.y = v27;
        v49.size.width = v29;
        v49.size.height = v31;
        Height = CGRectGetHeight(v49);
        v50.origin.x = v25;
        v50.origin.y = v27;
        v50.size.width = v29;
        v50.size.height = v31;
        Width = CGRectGetWidth(v50);
        v51.origin.x = v25;
        v51.origin.y = v27;
        v51.size.width = v29;
        v51.size.height = v31;
        v34 = CGRectGetHeight(v51);
        v35 = objc_opt_self();
        v36 = swift_allocObject();
        *(v36 + 2) = a1;
        v36[3] = 0.0;
        v36[4] = Height;
        v36[5] = Width;
        v36[6] = v34;
        v47 = sub_1000046C4;
        v48 = v36;
        v43 = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_1000059C4;
        v46 = &unk_100018DC0;
        v37 = _Block_copy(&v43);
        v38 = a1;

        v39 = swift_allocObject();
        *(v39 + 16) = v1;
        *(v39 + 24) = v38;
        *(v39 + 32) = v4;
        v47 = sub_100004734;
        v48 = v39;
        v43 = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_1000031A4;
        v46 = &unk_100018E10;
        v40 = _Block_copy(&v43);
        v41 = v1;
        v42 = v38;

        [v35 _animateUsingSpringWithTension:0 friction:v37 interactive:v40 animations:200.0 completion:30.0];
        _Block_release(v40);
        _Block_release(v37);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_100003050(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  result = *&a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v11 = result;
  [result setFrame:{a2, a3, a4, a5}];

  a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shouldHideStatusBar] = 1;

  return [a1 setNeedsStatusBarAppearanceUpdate];
}

void sub_100003110(int a1, int a2, id a3, uint64_t a4, char a5)
{
  if ([a3 canSendResponse])
  {
    sub_100005294(a3, (a5 & 1) == 0);
  }

  v7 = [objc_opt_self() sharedApplication];
  [v7 terminateWithSuccess];
}

double sub_1000031A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void sub_100003204(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *(a1 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = [v5 view];
  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  Width = CGRectGetWidth(v13);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  [v11 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v14)}];
}

void sub_1000032DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 layer];

  [v6 setCornerRadius:0.0];
}

void sub_100003378()
{
  v1 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention;
  v2 = *&v0[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = [v2 view];
  if (!v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = *&v0[v1];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = [v5 view];
  if (!v6)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = *&v0[v1];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = [v13 view];
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v14;
  v16 = [v14 bottomAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = *&v0[v1];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = [v21 view];
  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = v22;
  v24 = [v22 leftAnchor];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25;
  v27 = [v25 leftAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = *&v0[v1];
  if (!v29)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = [v30 rightAnchor];

  v33 = [v0 view];
  if (!v33)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = [v33 rightAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  [v36 setActive:1];
}

void sub_1000036E4(void *a1, void (*a2)(id))
{
  v3 = v2;
  if ([v3 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100004D34(v24, v22);
    sub_100004544(&qword_10001D450, &qword_100010610);
    swift_dynamicCast();
    [v23[0] setReachabilityDisabled:1];
    swift_unknownObjectRelease();
    sub_100004D34(v24, v22);
    swift_dynamicCast();
    [v23[0] setAllowsAlertStacking:1];
    swift_unknownObjectRelease();
    sub_100004D34(v24, v22);
    swift_dynamicCast();
    [v23[0] setWallpaperTunnelActive:1];
    swift_unknownObjectRelease();
    v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionType] = 1;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = [a1 userInfo];
    if (v6)
    {
      v7 = v6;
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v8 + 16))
      {
        v9 = sub_100004D94(v22);
        if (v10)
        {
          sub_100004D34(*(v8 + 56) + 32 * v9, v23);
          sub_100005434(v22);

          sub_100004D34(v23, v22);
          if (swift_dynamicCast())
          {
            v11 = 0xD000000000000012;
            v12 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold;
          }

          else
          {
            v12 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold;
            v11 = *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold];
          }

          *&v3[v12] = v11;
          if (qword_10001D350 != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          sub_10000468C(v16, qword_10001E380);
          v17 = v3;
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 134217984;
            *(v20 + 4) = *&v3[v12];
            _os_log_impl(&_mh_execute_header, v18, v19, "Setting distance threshold to %f mm", v20, 0xCu);
          }

          sub_100004CE8(v23);
          if (!a2)
          {
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      v6 = sub_100005434(v22);
    }

    if (!a2)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_16:
    a2(v6);
    sub_100004CE8(v24);
    return;
  }

  if (qword_10001D350 != -1)
  {
LABEL_24:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000468C(v13, qword_10001E380);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v14, "configureWithContext: Failed to instantiate remote VC proxy", v15, 2u);
  }
}

void sub_100003C14(void *a1, void (*a2)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_19;
  }

  v5 = [a1 actions];
  sub_1000055B4(0, &qword_10001D3D8, BSAction_ptr);
  sub_1000053C4();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  if (v7)
  {
    v9 = [a1 actions];
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = sub_100004EA0(v10);

    if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    else if (v11[2])
    {
LABEL_9:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_12;
      }

      if (v11[2])
      {
        v12 = v11[4];
LABEL_12:
        v13 = v12;

        v14 = *(v2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction);
        *(v2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction) = v13;

        goto LABEL_13;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_13:
  if (a2)
  {
    a2(v8);
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100003EB4()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4) && (v5 = objc_msgSend(v4, "interfaceOrientation"), v4, (v5 - 3) <= 1) && (v6 = objc_msgSend(objc_opt_self(), "currentDevice"), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, !v7))
    {
      return 1;
    }

    else
    {
      return v0[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shouldHideStatusBar];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100004024(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction] = 0;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention] = 0;
  v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionType] = 3;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold] = 0x4072C00000000000;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming] = 0;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer] = 0;
  v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shouldHideStatusBar] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100004170(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction] = 0;
  *&v2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention] = 0;
  v2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionType] = 3;
  *&v2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold] = 0x4072C00000000000;
  *&v2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming] = 0;
  *&v2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel] = 0;
  *&v2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer] = 0;
  v2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shouldHideStatusBar] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100004264(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t getEnumTagSinglePayload for InterventionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InterventionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000044B0()
{
  result = qword_10001D3C0;
  if (!qword_10001D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D3C0);
  }

  return result;
}

uint64_t sub_100004504()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004544(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000458C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000045DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000045FC(uint64_t a1, uint64_t a2)
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

  sub_100004544(&qword_10001D3E8, &unk_100010600);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10000468C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000046F4()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100004740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000480C(v11, 0, 0, 1, a1, a2);
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
    sub_100004D34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004CE8(v11);
  return v7;
}

unint64_t sub_10000480C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004918(a5, a6);
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

char *sub_100004918(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004964(a1, a2);
  sub_100004A94(&off_100018C18);
  return v3;
}

char *sub_100004964(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004B80(v5, 0);
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
        v7 = sub_100004B80(v10, 0);
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

uint64_t sub_100004A94(uint64_t result)
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

  result = sub_100004BF4(result, v11, 1, v3);
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

void *sub_100004B80(uint64_t a1, uint64_t a2)
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

  sub_100004544(&qword_10001D3D0, &qword_1000105F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004544(&qword_10001D3D0, &qword_1000105F8);
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

double sub_100004CE8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_100004D34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100004D94(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004DD8(a1, v4);
}

unint64_t sub_100004DD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005488(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100005434(v8);
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

char *sub_100004EA0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1000045FC(v2, 0);

    v1 = sub_100004F50(&v5, v3 + 4, v2, v1);
    sub_10000542C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100004F50(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000055B4(0, &qword_10001D3D8, BSAction_ptr);
  sub_1000053C4();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000055B4(0, &qword_10001D3D8, BSAction_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

double sub_10000516C()
{
  if (v0[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionType] == 1)
  {
    sub_100002518();
  }

  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = *&v0[OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold];
  type metadata accessor for DistanceStreaming();
  swift_allocObject();
  v4 = v0;
  sub_10000DC70(sub_1000055A4, v1, sub_1000055AC, v2, v3);
  *&v4[OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming] = v5;

  sub_10000E554();

  return result;
}

void sub_100005294(void *a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(BSMutableSettings) init];
  [v6 setFlag:a2 forSetting:0];
  v4 = [objc_opt_self() responseWithInfo:v6];
  if ([a1 canSendResponse])
  {
    v5 = v4;
    [a1 sendResponse:v5];
  }
}

double sub_10000536C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10000537C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000053C4()
{
  result = qword_10001D3E0;
  if (!qword_10001D3E0)
  {
    sub_1000055B4(255, &qword_10001D3D8, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D3E0);
  }

  return result;
}

void sub_1000054E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction);
  if (v1)
  {
    v2 = v1;
    if ([v2 canSendResponse])
    {
      sub_100005294(v2, 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  if (*(v0 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention))
  {
    v3 = [objc_opt_self() sharedApplication];
    [v3 terminateWithSuccess];
  }
}

uint64_t sub_1000055B4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100005604()
{
  result = qword_10001D460;
  if (!qword_10001D460)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D460);
  }

  return result;
}

unint64_t sub_10000565C()
{
  result = qword_10001D470;
  if (!qword_10001D470)
  {
    sub_1000056C0(&qword_10001D468, &qword_100010618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D470);
  }

  return result;
}

uint64_t sub_1000056C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005708()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_100005754(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005760(uint64_t a1, int a2)
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

uint64_t sub_100005780(uint64_t result, int a2, int a3)
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

__n128 sub_1000057C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000057CC(uint64_t a1, int a2)
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

uint64_t sub_1000057EC(uint64_t result, int a2, int a3)
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

void sub_10000583C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000058E0()
{
  v0 = type metadata accessor for Logger();
  sub_100005960(v0, qword_10001E380);
  sub_10000468C(v0, qword_10001E380);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100005960(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_1000059C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_100005A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v46 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - v15;
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v49 = 0;
  State.init(wrappedValue:)();
  v19 = v51;
  *(a4 + 16) = v50;
  *(a4 + 24) = v19;
  v49 = 0;
  State.init(wrappedValue:)();
  v20 = v51;
  *(a4 + 32) = v50;
  *(a4 + 40) = v20;
  v49 = 0;
  State.init(wrappedValue:)();
  v21 = v51;
  *(a4 + 48) = v50;
  *(a4 + 56) = v21;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  type metadata accessor for InterventionViewModel(0);
  sub_10000785C(&qword_10001D7F8, type metadata accessor for InterventionViewModel, &unk_10001089C);

  v48 = a1;
  *(a4 + 64) = ObservedObject.init(wrappedValue:)();
  *(a4 + 72) = v22;
  type metadata accessor for ShieldConfiguration(0);
  v23 = swift_allocObject();
  sub_1000069A0();
  *a4 = v23;
  *(a4 + 8) = 0;
  v24 = objc_opt_self();
  v25 = [v24 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 URLForResource:v26 withExtension:v27];

  if (v28)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v9 + 32);
    v29(v18, v16, v8);
    v30 = (a4 + *(type metadata accessor for ShieldIntervention(0) + 40));
    v29(v30, v18, v8);
    v31 = type metadata accessor for VideoPlayerUIViewWrapper(0);
    v30[*(v31 + 20)] = 1;
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }

  else
  {
    v32 = *(type metadata accessor for ShieldIntervention(0) + 40);
    v33 = type metadata accessor for VideoPlayerUIViewWrapper(0);
    (*(*(v33 - 8) + 56))(a4 + v32, 1, 1, v33);
  }

  v34 = [v24 mainBundle];
  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  v37 = [v34 URLForResource:v35 withExtension:v36];

  if (v37)
  {
    v38 = v46;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = *(v9 + 32);
    v40 = v47;
    v39(v47, v38, v8);
    v41 = (a4 + *(type metadata accessor for ShieldIntervention(0) + 44));
    v39(v41, v40, v8);
    v42 = type metadata accessor for VideoPlayerUIViewWrapper(0);
    v41[*(v42 + 20)] = 0;
    return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  }

  else
  {

    v44 = *(type metadata accessor for ShieldIntervention(0) + 44);
    v45 = type metadata accessor for VideoPlayerUIViewWrapper(0);
    return (*(*(v45 - 8) + 56))(a4 + v44, 1, 1, v45);
  }
}

char *sub_100005F18(char *a1, char a2, double a3, double a4, double a5, double a6)
{
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLayer;
  *&v6[v17] = [objc_allocWithZone(AVPlayerLayer) init];
  *&v6[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLooper] = 0;
  v18 = type metadata accessor for VideoPlayerUIView();
  v34.receiver = v6;
  v34.super_class = v18;
  v19 = objc_msgSendSuper2(&v34, "initWithFrame:", a3, a4, a5, a6);
  (*(v14 + 16))(v16, a1, v13);
  v20 = objc_allocWithZone(AVPlayerItem);
  v21 = v19;
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = [v20 initWithURL:v23];

  v26 = *(v14 + 8);
  v26(v16, v13);
  v27 = [objc_allocWithZone(AVQueuePlayer) init];
  [v27 setPreventsDisplaySleepDuringVideoPlayback:0];
  [v27 _setParticipatesInAudioSession:0];
  [v27 insertItem:v25 afterItem:0];
  if (a2)
  {
    v28 = [objc_opt_self() playerLooperWithPlayer:v27 templateItem:v25];
    v29 = *&v21[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLooper];
    *&v21[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLooper] = v28;
  }

  else
  {
    [v27 setActionAtItemEnd:2];
  }

  v30 = OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLayer;
  v31 = *&v21[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLayer];
  [v31 setPlayer:v27];

  v32 = [v21 layer];
  [v32 addSublayer:*&v21[v30]];

  [v27 play];
  v26(a1, v13);
  return v21;
}

id sub_100006354(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VideoPlayerUIView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_1000063F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2);
  LOBYTE(a2) = *(v2 + *(a2 + 20));
  v8 = objc_allocWithZone(type metadata accessor for VideoPlayerUIView());
  return sub_100005F18(v6, a2, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_10000652C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000785C(&qword_10001DB80, type metadata accessor for VideoPlayerUIViewWrapper, &unk_1000107BC);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000065C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000785C(&qword_10001DB80, type metadata accessor for VideoPlayerUIViewWrapper, &unk_1000107BC);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100006654(uint64_t a1)
{
  sub_10000785C(&qword_10001DB80, type metadata accessor for VideoPlayerUIViewWrapper, &unk_1000107BC);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000066AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100006720()
{
  v1 = OBJC_IVAR____TtC11EyeReliefUI21InterventionViewModel__isTooClose;
  v2 = sub_100004544(&qword_10001DB90, &qword_100010D78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_1000067F0(uint64_t a1)
{
  sub_1000073E4(319, &unk_10001D508, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000068A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InterventionViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100006934(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1000069A0()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 model];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String.uppercased()();

  String.append(_:)(v4);
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v26._object = 0x80000001000113E0;
  v7._countAndFlagsBits = 0xD000000000000017;
  v7._object = 0x80000001000113C0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0xD00000000000002ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v26);

  static String.localizedStringWithFormat(_:_:)();

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  String.append(_:)(v4);
  v9 = [v5 mainBundle];
  v27._object = 0x8000000100011430;
  v27._countAndFlagsBits = 0xD000000000000034;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v10._object = 0x8000000100011410;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v27);

  static String.localizedStringWithFormat(_:_:)();

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v12 = [v5 mainBundle];
  v13._countAndFlagsBits = 0xD000000000000014;
  v28._object = 0x8000000100011490;
  v13._object = 0x8000000100011470;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD00000000000002ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v28);

  static String.localizedStringWithFormat(_:_:)();

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  String.append(_:)(v4);

  v15 = [v5 mainBundle];
  v29._object = 0x80000001000114E0;
  v29._countAndFlagsBits = 0xD000000000000031;
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001000114C0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v29);

  static String.localizedStringWithFormat(_:_:)();

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v18 = [v5 mainBundle];
  v30._countAndFlagsBits = 0xD000000000000027;
  v30._object = 0x8000000100011520;
  v19._countAndFlagsBits = 0x45554E49544E4F43;
  v19._object = 0xE800000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v30);

  v21 = static String.localizedStringWithFormat(_:_:)();
  v23 = v22;

  v24 = (v1 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString);
  *v24 = v21;
  v24[1] = v23;
  return v1;
}

uint64_t sub_100006EC8()
{
  v1 = OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration__titleString;
  v2 = sub_100004544(&qword_10001DB88, &qword_100010D70);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration__successTitleString, v2);
  v3(v0 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration__successSubtitleString, v2);
  v3(v0 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration__subtitleString, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

void sub_100007014(uint64_t a1)
{
  sub_1000073E4(319, &unk_10001D610, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000070EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004544(&qword_10001D770, &unk_100010720);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1000071BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004544(&qword_10001D770, &unk_100010720);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000728C(uint64_t a1)
{
  sub_10000752C(319, &qword_10001D7E0, type metadata accessor for ShieldConfiguration, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_1000073E4(319, &qword_10001D7E8, &type metadata for Bool, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100007434(319);
      if (v3 <= 0x3F)
      {
        sub_1000074C8(319);
        if (v4 <= 0x3F)
        {
          sub_10000752C(319, &unk_10001D810, type metadata accessor for VideoPlayerUIViewWrapper, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000073E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100007434(uint64_t a1)
{
  if (!qword_10001D7F0)
  {
    type metadata accessor for InterventionViewModel(255);
    sub_10000785C(&qword_10001D7F8, type metadata accessor for InterventionViewModel, &unk_10001089C);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10001D7F0);
    }
  }
}

void sub_1000074C8(uint64_t a1)
{
  if (!qword_10001D800)
  {
    sub_1000056C0(&qword_10001D808, ":+");
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10001D800);
    }
  }
}

void sub_10000752C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000075B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000075FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000076DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100007794(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000785C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000078C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100004544(&qword_10001DB78, &qword_100010C58);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  a3 &= 1u;
  v27 = a3;
  v26 = 1;
  (*(v14 + 104))(v16, enum case for Font.TextStyle.largeTitle(_:), v13);
  v17 = type metadata accessor for Font.Design();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_10000D868(a1, a2, a3);

  static Font.system(_:design:weight:)();
  sub_10000D634(v12, &qword_10001DB78, &qword_100010C58);
  (*(v14 + 8))(v16, v13);
  v18 = Font.bold()();

  v19 = swift_getKeyPath();
  v20 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v22 = v24;
  v23 = KeyPath;
  *(a5 + 24) = a4;
  *(a5 + 32) = v23;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v22;
  *(a5 + 64) = 1;
  *(a5 + 72) = v19;
  *(a5 + 80) = v18;
  *(a5 + 88) = result;
  *(a5 + 96) = v20;
  *(a5 + 104) = 0x4000000000000000;
  return result;
}

uint64_t sub_100007B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100004544(&qword_10001DB78, &qword_100010C58);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  a3 &= 1u;
  v27 = a3;
  v26 = 1;
  (*(v14 + 104))(v16, enum case for Font.TextStyle.body(_:), v13);
  v17 = type metadata accessor for Font.Design();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_10000D868(a1, a2, a3);

  v18 = static Font.system(_:design:weight:)();
  sub_10000D634(v12, &qword_10001DB78, &qword_100010C58);
  (*(v14 + 8))(v16, v13);
  v19 = swift_getKeyPath();
  v20 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v22 = v24;
  v23 = KeyPath;
  *(a5 + 24) = a4;
  *(a5 + 32) = v23;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v22;
  *(a5 + 64) = 1;
  *(a5 + 72) = v19;
  *(a5 + 80) = v18;
  *(a5 + 88) = result;
  *(a5 + 96) = v20;
  *(a5 + 104) = 0x4000000000000000;
  return result;
}

id sub_100007DAC()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

uint64_t sub_100007E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000DAB4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100007E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000DAB4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100007EE4(uint64_t a1)
{
  sub_10000DAB4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100007F0C(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004544(&qword_10001D908, &qword_1000108F8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() effectWithStyle:9];
  v11 = static Edge.Set.all.getter();
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = sub_100004544(&qword_10001D910, &qword_100010900);
  sub_10000809C(a1, &v9[*(v12 + 44)]);
  sub_10000D5CC(v9, v7, &qword_10001D908, &qword_1000108F8);
  *a2 = v10;
  *(a2 + 8) = v11;
  v13 = sub_100004544(&qword_10001D918, &qword_100010908);
  sub_10000D5CC(v7, a2 + *(v13 + 48), &qword_10001D908, &qword_1000108F8);
  v14 = v10;
  sub_10000D634(v9, &qword_10001D908, &qword_1000108F8);
  sub_10000D634(v7, &qword_10001D908, &qword_1000108F8);
}

uint64_t sub_10000809C@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004544(&qword_10001D920, &qword_100010910);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4032000000000000;
  v9[16] = 0;
  v10 = sub_100004544(&qword_10001D928, &qword_100010918);
  sub_100008208(a1, &v9[*(v10 + 44)]);
  sub_10000D5CC(v9, v7, &qword_10001D920, &qword_100010910);
  *a2 = 0x4040000000000000;
  *(a2 + 8) = 0;
  v11 = sub_100004544(&qword_10001D930, &qword_100010920);
  sub_10000D5CC(v7, a2 + *(v11 + 48), &qword_10001D920, &qword_100010910);
  v12 = a2 + *(v11 + 64);
  *v12 = 0x4040000000000000;
  *(v12 + 8) = 0;
  sub_10000D634(v9, &qword_10001D920, &qword_100010910);
  return sub_10000D634(v7, &qword_10001D920, &qword_100010910);
}

uint64_t sub_100008208@<X0>(char **a1@<X0>, void *a2@<X8>)
{
  v429 = a1;
  v428 = a2;
  v427 = sub_100004544(&qword_10001D938, &qword_100010928);
  v426 = *(v427 - 8);
  __chkstk_darwin(v427);
  v420 = v344 - v2;
  v419 = sub_100004544(&qword_10001D940, &qword_100010930);
  __chkstk_darwin(v419);
  v401 = v344 - v3;
  v378 = sub_100004544(&qword_10001D948, &qword_100010938);
  __chkstk_darwin(v378);
  v380 = v344 - v4;
  v379 = sub_100004544(&qword_10001D950, &qword_100010940);
  __chkstk_darwin(v379);
  v382 = v344 - v5;
  v381 = sub_100004544(&qword_10001D958, &qword_100010948);
  __chkstk_darwin(v381);
  v384 = v344 - v6;
  v383 = sub_100004544(&qword_10001D960, &qword_100010950);
  __chkstk_darwin(v383);
  v386 = v344 - v7;
  v390 = sub_100004544(&qword_10001D968, &qword_100010958);
  __chkstk_darwin(v390);
  v391 = v344 - v8;
  v9 = sub_100004544(&qword_10001D970, &qword_100010960);
  v395 = *(v9 - 8);
  v396 = v9;
  __chkstk_darwin(v9);
  v393 = v344 - v10;
  v385 = sub_100004544(&qword_10001D978, &qword_100010968);
  __chkstk_darwin(v385);
  v397 = v344 - v11;
  v394 = sub_100004544(&qword_10001D980, &qword_100010970);
  v392 = *(v394 - 8);
  __chkstk_darwin(v394);
  v388 = v344 - v12;
  v389 = sub_100004544(&qword_10001D988, &qword_100010978);
  v13 = __chkstk_darwin(v389);
  v399 = v344 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v387 = v344 - v16;
  __chkstk_darwin(v15);
  v410 = v344 - v17;
  v402 = sub_100004544(&qword_10001D990, &qword_100010980);
  v357 = *(v402 - 1);
  __chkstk_darwin(v402);
  v353 = v344 - v18;
  v19 = sub_100004544(&qword_10001D998, &qword_100010988);
  v20 = __chkstk_darwin(v19 - 8);
  v409 = v344 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v422 = v344 - v22;
  v416 = sub_100004544(&qword_10001D9A0, &qword_100010990);
  __chkstk_darwin(v416);
  v418 = v344 - v23;
  v417 = sub_100004544(&qword_10001D9A8, &qword_100010998);
  __chkstk_darwin(v417);
  v400 = v344 - v24;
  v413 = type metadata accessor for BorderedProminentButtonStyle();
  v412 = *(v413 - 8);
  __chkstk_darwin(v413);
  v411 = v344 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_100004544(&qword_10001D9B0, &qword_1000109A0);
  __chkstk_darwin(v358);
  v360 = v344 - v26;
  v359 = sub_100004544(&qword_10001D9B8, &qword_1000109A8);
  __chkstk_darwin(v359);
  v362 = v344 - v27;
  v361 = sub_100004544(&qword_10001D9C0, &qword_1000109B0);
  __chkstk_darwin(v361);
  v364 = v344 - v28;
  v363 = sub_100004544(&qword_10001D9C8, &qword_1000109B8);
  __chkstk_darwin(v363);
  v366 = v344 - v29;
  v370 = sub_100004544(&qword_10001D9D0, &qword_1000109C0);
  __chkstk_darwin(v370);
  v372 = v344 - v30;
  v377 = sub_100004544(&qword_10001D9D8, &qword_1000109C8);
  v375 = *(v377 - 8);
  __chkstk_darwin(v377);
  v374 = v344 - v31;
  v365 = sub_100004544(&qword_10001D9E0, &qword_1000109D0);
  __chkstk_darwin(v365);
  v376 = v344 - v32;
  v373 = sub_100004544(&qword_10001D9E8, &qword_1000109D8);
  v371 = *(v373 - 8);
  __chkstk_darwin(v373);
  v368 = v344 - v33;
  v369 = sub_100004544(&qword_10001D9F0, &qword_1000109E0);
  v34 = __chkstk_darwin(v369);
  v398 = v344 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v367 = v344 - v37;
  __chkstk_darwin(v36);
  v408 = v344 - v38;
  v39 = type metadata accessor for ShieldIntervention(0);
  v40 = *(v39 - 8);
  v405 = v39;
  v406 = v40;
  __chkstk_darwin(v39);
  v423 = v41;
  v424 = v344 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = sub_100004544(&qword_10001D9F8, &qword_1000109E8);
  __chkstk_darwin(v347);
  v349 = v344 - v42;
  v348 = sub_100004544(&qword_10001DA00, &qword_1000109F0);
  __chkstk_darwin(v348);
  v352 = v344 - v43;
  v44 = sub_100004544(&qword_10001DA08, &qword_1000109F8);
  v355 = *(v44 - 8);
  v356 = v44;
  v45 = __chkstk_darwin(v44);
  v351 = v344 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v350 = v344 - v47;
  v48 = sub_100004544(&qword_10001D770, &unk_100010720);
  v49 = __chkstk_darwin(v48 - 8);
  v51 = v344 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v53 = v344 - v52;
  v54 = type metadata accessor for VideoPlayerUIViewWrapper(0);
  v403 = *(v54 - 8);
  v404 = v54;
  v55 = __chkstk_darwin(v54);
  v345 = v344 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v346 = v344 - v57;
  v58 = sub_100004544(&qword_10001DA10, &qword_100010A00);
  v59 = __chkstk_darwin(v58 - 8);
  v407 = v344 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v421 = v344 - v61;
  v62 = sub_100004544(&qword_10001DA18, &qword_100010A08);
  v63 = __chkstk_darwin(v62 - 8);
  v415 = v344 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v414 = v344 - v65;
  v66 = sub_100004544(&qword_10001DA20, &qword_100010A10);
  v67 = __chkstk_darwin(v66 - 8);
  v425 = v344 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v70 = v344 - v69;
  v71 = objc_opt_self();
  v72 = [v71 currentDevice];
  v344[2] = [v72 userInterfaceIdiom];

  v73 = [v71 currentDevice];
  v344[1] = [v73 userInterfaceIdiom];

  v74 = [v71 currentDevice];
  [v74 userInterfaceIdiom];

  v75 = [v71 currentDevice];
  v76 = v70;
  [v75 userInterfaceIdiom];

  v77 = v429;
  v78 = v429[3];
  LOBYTE(v506) = *(v429 + 16);
  *(&v506 + 1) = v78;
  v79 = sub_100004544(&qword_10001D900, &qword_1000108F0);
  State.wrappedValue.getter();
  v80 = 1;
  if (v483 == 1)
  {
    v354 = v79;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v81 = (v403 + 48);
    v344[0] = v70;
    if (v506 == 1)
    {
      sub_10000D5CC(v77 + *(v405 + 40), v53, &qword_10001D770, &unk_100010720);
      if ((*v81)(v53, 1, v404) == 1)
      {
        sub_10000D634(v53, &qword_10001D770, &unk_100010720);
        v82 = 1;
        v83 = v421;
        v84 = v356;
      }

      else
      {
        v88 = v346;
        sub_10000CEE8(v53, v346, type metadata accessor for VideoPlayerUIViewWrapper);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v89 = v349;
        sub_10000D694(v88, v349, type metadata accessor for VideoPlayerUIViewWrapper);
        v90 = (v89 + *(v402 + 9));
        v91 = v524;
        *v90 = v523;
        v90[1] = v91;
        v90[2] = v525;
        static AnyTransition.opacity.getter();
        static Animation.easeOut(duration:)();
        v92 = AnyTransition.animation(_:)();

        *(v89 + *(v347 + 36)) = v92;
        v93 = *(v77 + 32);
        v94 = v77[5];
        LOBYTE(v506) = v93;
        *(&v506 + 1) = v94;
        State.wrappedValue.getter();
        if (v483)
        {
          v95 = 1.0;
        }

        else
        {
          v95 = 0.1;
        }

        v96 = v89;
        v97 = v352;
        sub_10000D564(v96, v352, &qword_10001D9F8, &qword_1000109E8);
        *(v97 + *(v348 + 36)) = v95;
        v98 = static Animation.spring(response:dampingFraction:blendDuration:)();
        LOBYTE(v506) = v93;
        *(&v506 + 1) = v94;
        State.wrappedValue.getter();
        sub_10000D6FC(v88);
        v99 = v483;
        v100 = v351;
        sub_10000D564(v97, v351, &qword_10001DA00, &qword_1000109F0);
        v84 = v356;
        v101 = v100 + *(v356 + 36);
        *v101 = v98;
        *(v101 + 8) = v99;
        v102 = v100;
        v103 = v350;
        sub_10000D564(v102, v350, &qword_10001DA08, &qword_1000109F8);
        v104 = v103;
        v83 = v421;
        sub_10000D564(v104, v421, &qword_10001DA08, &qword_1000109F8);
        v82 = 0;
      }

      (*(v355 + 56))(v83, v82, 1, v84);
      v105 = v77[1];
      v422 = *v77;
      v410 = v105;
      *&v483 = v422;
      *(&v483 + 1) = v105;
      v409 = sub_100004544(&qword_10001DA30, &qword_100010A68);
      State.projectedValue.getter();
      v106 = v506;
      v107 = v507;
      swift_getKeyPath();
      v452 = v106;
      *&v453 = v107;
      v403 = sub_100004544(&qword_10001DA38, &qword_100010A98);
      Binding.subscript.getter();

      v110 = v506;
      v109 = v110 >> 64;
      v108 = v110;
      v111 = v507;

      v483 = __PAIR128__(v109, v108);
      v484 = v111;
      v405 = sub_100004544(&qword_10001DA40, &qword_100010AA0);
      Binding.wrappedValue.getter();
      v113 = *(&v439 + 1);
      v112 = v439;

      v496 = __PAIR128__(v113, v112);
      v404 = sub_10000C70C();
      v114 = Text.init<A>(_:)();
      v116 = v115;
      LOBYTE(v109) = v117;
      sub_1000078C0(v114, v115, v117 & 1, v118, v519);
      sub_10000C760(v114, v116, v109 & 1);

      v119 = v77[5];
      LOBYTE(v506) = *(v77 + 32);
      v120 = v506;
      *(&v506 + 1) = v119;
      v121 = v119;
      State.wrappedValue.getter();
      if (v483)
      {
        v122 = 1.0;
      }

      else
      {
        v122 = 0.1;
      }

      v123 = 1.0;
      LOBYTE(v506) = v120;
      LODWORD(v401) = v120;
      *(&v506 + 1) = v121;
      v399 = v121;
      State.wrappedValue.getter();
      if (!v483)
      {
        v123 = 0.8;
      }

      static UnitPoint.center.getter();
      v125 = v124;
      v127 = v126;
      v128 = static Animation.spring(response:dampingFraction:blendDuration:)();
      LOBYTE(v506) = v120;
      *(&v506 + 1) = v121;
      State.wrappedValue.getter();
      v129 = v483;
      static AnyTransition.opacity.getter();
      static Animation.easeOut(duration:)();
      v130 = AnyTransition.animation(_:)();

      v131 = v424;
      v402 = type metadata accessor for ShieldIntervention;
      sub_10000D694(v77, v424, type metadata accessor for ShieldIntervention);
      v406 = (*(v406 + 80) + 16) & ~*(v406 + 80);
      v132 = v406;
      v133 = swift_allocObject();
      sub_10000CEE8(v131, v133 + v132, type metadata accessor for ShieldIntervention);
      v510 = v519[4];
      v511 = v519[5];
      v512 = v519[6];
      v506 = v519[0];
      v507 = v519[1];
      v509 = v519[3];
      v508 = v519[2];
      *&v513 = v122;
      *(&v513 + 1) = v123;
      *&v514 = v123;
      *(&v514 + 1) = v125;
      *&v515 = v127;
      *(&v515 + 1) = v128;
      LOBYTE(v516) = v129;
      *(&v516 + 1) = v130;
      *&v517 = sub_10000CFA0;
      *(&v517 + 1) = v133;
      v518 = 0uLL;
      *&v452 = v422;
      *(&v452 + 1) = v410;
      State.projectedValue.getter();
      v134 = v483;
      v135 = v484;
      swift_getKeyPath();
      v439 = v134;
      *&v440 = v135;
      Binding.subscript.getter();

      v136 = v483;
      v137 = v484;

      v452 = v136;
      v453 = v137;
      Binding.wrappedValue.getter();
      v138 = v496;

      v474 = v138;
      v139 = Text.init<A>(_:)();
      v141 = v140;
      LOBYTE(v131) = v142;
      sub_100007B40(v139, v140, v142 & 1, v143, v505);
      sub_10000C760(v139, v141, v131 & 1);

      v144 = v401;
      LOBYTE(v483) = v401;
      v145 = v399;
      *(&v483 + 1) = v399;
      State.wrappedValue.getter();
      if (v452)
      {
        v146 = 1.0;
      }

      else
      {
        v146 = 0.1;
      }

      v147 = static Animation.spring(response:dampingFraction:blendDuration:)();
      LOBYTE(v483) = v144;
      *(&v483 + 1) = v145;
      State.wrappedValue.getter();
      v148 = v452;
      static AnyTransition.opacity.getter();
      static Animation.easeOut(duration:)();
      v149 = AnyTransition.animation(_:)();

      v500 = v505[4];
      v501 = v505[5];
      v502 = v505[6];
      v496 = v505[0];
      v497 = v505[1];
      v499 = v505[3];
      v498 = v505[2];
      *&v503 = v146;
      *(&v503 + 1) = v147;
      LOBYTE(v504) = v148;
      DWORD1(v504) = *&v522[3];
      *(&v504 + 1) = *v522;
      *(&v504 + 1) = v149;
      v150 = v424;
      v151 = v402;
      sub_10000D694(v429, v424, v402);
      v152 = v406;
      v153 = swift_allocObject();
      v154 = sub_10000CEE8(v150, v153 + v152, v151);
      __chkstk_darwin(v154);
      sub_100004544(&qword_10001DB10, &qword_100010C30);
      sub_10000D080();
      v155 = v368;
      Button.init(action:label:)();
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v156 = v371;
      v157 = v360;
      v158 = v373;
      (*(v371 + 16))(v360, v155, v373);
      v159 = (v157 + *(v358 + 36));
      v160 = v531;
      v159[4] = v530;
      v159[5] = v160;
      v159[6] = v532;
      v161 = v527;
      *v159 = v526;
      v159[1] = v161;
      v162 = v529;
      v159[2] = v528;
      v159[3] = v162;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v163 = v362;
      sub_10000D564(v157, v362, &qword_10001D9B0, &qword_1000109A0);
      v164 = (v163 + *(v359 + 36));
      v165 = v534;
      *v164 = v533;
      v164[1] = v165;
      v164[2] = v535;
      KeyPath = swift_getKeyPath();
      v167 = swift_allocObject();
      *(v167 + 16) = 1;
      v168 = v163;
      v169 = v364;
      sub_10000D564(v168, v364, &qword_10001D9B8, &qword_1000109A8);
      v170 = (v169 + *(v361 + 36));
      *v170 = KeyPath;
      v170[1] = sub_10000DB40;
      v170[2] = v167;
      v171 = static Color.blue.getter();
      v172 = swift_getKeyPath();
      v173 = v169;
      v174 = v366;
      sub_10000D564(v173, v366, &qword_10001D9C0, &qword_1000109B0);
      v175 = (v174 + *(v363 + 36));
      *v175 = v172;
      v175[1] = v171;
      v176 = static Color.gray.getter();
      v177 = swift_getKeyPath();
      v178 = v372;
      sub_10000D564(v174, v372, &qword_10001D9C8, &qword_1000109B8);
      v179 = (v178 + *(v370 + 36));
      *v179 = v177;
      v179[1] = v176;
      v180 = v411;
      BorderedProminentButtonStyle.init()();
      sub_10000D1D4();
      sub_10000785C(&qword_10001DAD0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
      v181 = v374;
      v182 = v413;
      View.buttonStyle<A>(_:)();
      (*(v412 + 8))(v180, v182);
      sub_10000D634(v178, &qword_10001D9D0, &qword_1000109C0);
      v183 = v376;
      v184 = &v376[*(v365 + 36)];
      sub_100004544(&qword_10001DAD8, &qword_100010B88);
      static ButtonBorderShape.capsule.getter();
      *v184 = swift_getKeyPath();
      (*(v375 + 32))(v183, v181, v377);
      static AnyTransition.opacity.getter();
      static Animation.easeInOut(duration:)();
      v185 = AnyTransition.animation(_:)();

      (*(v156 + 8))(v155, v158);
      v186 = v367;
      sub_10000D564(v183, v367, &qword_10001D9E0, &qword_1000109D0);
      *(v186 + *(v369 + 36)) = v185;
      v187 = v186;
      v188 = v408;
      sub_10000D564(v187, v408, &qword_10001D9F0, &qword_1000109E0);
      v189 = &qword_100010A00;
      v190 = v407;
      sub_10000D5CC(v421, v407, &qword_10001DA10, &qword_100010A00);
      v449 = v516;
      v450 = v517;
      v451 = v518;
      v445 = v512;
      v446 = v513;
      v447 = v514;
      v448 = v515;
      v441 = v508;
      v442 = v509;
      v443 = v510;
      v444 = v511;
      v439 = v506;
      v440 = v507;
      v436 = v502;
      v437 = v503;
      v438 = v504;
      v432 = v498;
      v433 = v499;
      v434 = v500;
      v435 = v501;
      v430 = v496;
      v431 = v497;
      v191 = v188;
      v192 = v398;
      sub_10000D5CC(v191, v398, &qword_10001D9F0, &qword_1000109E0);
      v193 = v400;
      sub_10000D5CC(v190, v400, &qword_10001DA10, &qword_100010A00);
      v194 = sub_100004544(&qword_10001DB60, &qword_100010C40);
      v195 = v194[12];
      v197 = v449;
      v196 = v450;
      v462 = v449;
      v463 = v450;
      v198 = v451;
      v464 = v451;
      v200 = v445;
      v199 = v446;
      v458 = v445;
      v459 = v446;
      v201 = v447;
      v202 = v448;
      v461 = v448;
      v460 = v447;
      v203 = v443;
      v204 = v444;
      v457 = v444;
      v456 = v443;
      v205 = v442;
      v455 = v442;
      v454 = v441;
      v207 = v439;
      v206 = v440;
      v453 = v440;
      v452 = v439;
      v208 = (v193 + v195);
      v208[2] = v441;
      v208[3] = v205;
      v208[6] = v200;
      v208[7] = v199;
      v208[4] = v203;
      v208[5] = v204;
      v208[11] = v196;
      v208[12] = v198;
      v208[9] = v202;
      v208[10] = v197;
      v208[8] = v201;
      *v208 = v207;
      v208[1] = v206;
      v209 = v194[16];
      v210 = v437;
      v471 = v436;
      v472 = v437;
      v211 = v438;
      v473 = v438;
      v212 = v432;
      v213 = v433;
      v467 = v432;
      v468 = v433;
      v215 = v434;
      v214 = v435;
      v470 = v435;
      v469 = v434;
      v217 = v430;
      v216 = v431;
      v466 = v431;
      v465 = v430;
      v218 = (v193 + v209);
      v218[6] = v436;
      v218[7] = v210;
      v218[8] = v211;
      v218[2] = v212;
      v218[3] = v213;
      v218[4] = v215;
      v218[5] = v214;
      *v218 = v217;
      v218[1] = v216;
      v219 = v193 + v194[20];
      *v219 = 0;
      *(v219 + 8) = 1;
      *(v219 + 16) = 0x3FF0000000000000;
      sub_10000D5CC(v192, v193 + v194[24], &qword_10001D9F0, &qword_1000109E0);
      sub_10000D5CC(&v506, &v483, &qword_10001DB68, &qword_100010C48);
      sub_10000D5CC(&v496, &v483, &qword_10001DB70, &qword_100010C50);
      sub_10000D5CC(&v452, &v483, &qword_10001DB68, &qword_100010C48);
      sub_10000D5CC(&v465, &v483, &qword_10001DB70, &qword_100010C50);
      sub_10000D634(v192, &qword_10001D9F0, &qword_1000109E0);
      v480 = v436;
      v481 = v437;
      v482 = v438;
      v476 = v432;
      v477 = v433;
      v479 = v435;
      v478 = v434;
      v475 = v431;
      v474 = v430;
      sub_10000D634(&v474, &qword_10001DB70, &qword_100010C50);
      v493 = v449;
      v494 = v450;
      v495 = v451;
      v489 = v445;
      v490 = v446;
      v492 = v448;
      v491 = v447;
      v485 = v441;
      v486 = v442;
      v488 = v444;
      v487 = v443;
      v484 = v440;
      v483 = v439;
      sub_10000D634(&v483, &qword_10001DB68, &qword_100010C48);
      v220 = &qword_10001DA10;
      sub_10000D634(v407, &qword_10001DA10, &qword_100010A00);
      sub_10000D5CC(v193, v418, &qword_10001D9A8, &qword_100010998);
      swift_storeEnumTagMultiPayload();
      sub_10000DA14(&qword_10001DAF8, &qword_10001D9A8, &qword_100010998, &protocol conformance descriptor for TupleView<A>);
      sub_10000DA14(&qword_10001DB00, &qword_10001D940, &qword_100010930, &protocol conformance descriptor for TupleView<A>);
      v221 = v414;
      _ConditionalContent<>.init(storage:)();
      sub_10000D634(&v496, &qword_10001DB70, &qword_100010C50);
      sub_10000D634(&v506, &qword_10001DB68, &qword_100010C48);
      sub_10000D634(v193, &qword_10001D9A8, &qword_100010998);
      sub_10000D634(v408, &qword_10001D9F0, &qword_1000109E0);
      v222 = v421;
    }

    else
    {
      sub_10000D5CC(v77 + *(v405 + 44), v51, &qword_10001D770, &unk_100010720);
      if ((*v81)(v51, 1, v404) == 1)
      {
        sub_10000D634(v51, &qword_10001D770, &unk_100010720);
        v85 = 1;
        v86 = v422;
        v87 = v402;
      }

      else
      {
        v223 = v345;
        sub_10000CEE8(v51, v345, type metadata accessor for VideoPlayerUIViewWrapper);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v224 = v353;
        sub_10000CEE8(v223, v353, type metadata accessor for VideoPlayerUIViewWrapper);
        v87 = v402;
        v225 = (v224 + *(v402 + 9));
        v226 = v524;
        *v225 = v523;
        v225[1] = v226;
        v225[2] = v525;
        v86 = v422;
        sub_10000D564(v224, v422, &qword_10001D990, &qword_100010980);
        v85 = 0;
      }

      (*(v357 + 56))(v86, v85, 1, v87);
      v227 = v77[1];
      v421 = *v77;
      v408 = v227;
      *&v483 = v421;
      *(&v483 + 1) = v227;
      v407 = sub_100004544(&qword_10001DA30, &qword_100010A68);
      State.projectedValue.getter();
      v228 = v506;
      v229 = v507;
      swift_getKeyPath();
      v452 = v228;
      *&v453 = v229;
      sub_100004544(&qword_10001DA38, &qword_100010A98);
      Binding.subscript.getter();

      v230 = v506;
      v231 = v77;
      v232 = *(&v506 + 1);
      v233 = v507;

      *&v483 = v230;
      *(&v483 + 1) = v232;
      v484 = v233;
      v405 = sub_100004544(&qword_10001DA40, &qword_100010AA0);
      Binding.wrappedValue.getter();
      v234 = v439;

      v496 = v234;
      v404 = sub_10000C70C();
      v235 = Text.init<A>(_:)();
      v237 = v236;
      LOBYTE(v232) = v238;
      sub_1000078C0(v235, v236, v238 & 1, v239, v521);
      sub_10000C760(v235, v237, v232 & 1);

      v240 = *(v77 + 48);
      v241 = v77[7];
      LOBYTE(v506) = v240;
      *(&v506 + 1) = v241;
      v242 = v241;
      State.wrappedValue.getter();
      if (v483)
      {
        v243 = 1.0;
      }

      else
      {
        v243 = 0.0;
      }

      LOBYTE(v506) = v240;
      *(&v506 + 1) = v242;
      v400 = v242;
      State.wrappedValue.getter();
      if (v483)
      {
        v244 = 1.0;
      }

      else
      {
        v244 = 0.8;
      }

      static UnitPoint.center.getter();
      v246 = v245;
      v248 = v247;
      v249 = static Animation.spring(response:dampingFraction:blendDuration:)();
      LOBYTE(v506) = v240;
      *(&v506 + 1) = v242;
      State.wrappedValue.getter();
      v250 = v483;
      v251 = v424;
      v402 = type metadata accessor for ShieldIntervention;
      sub_10000D694(v231, v424, type metadata accessor for ShieldIntervention);
      v406 = *(v406 + 80);
      v252 = (v406 + 16) & ~v406;
      v403 = v252;
      v253 = swift_allocObject();
      sub_10000CEE8(v251, v253 + v252, type metadata accessor for ShieldIntervention);
      v510 = v521[4];
      v511 = v521[5];
      v512 = v521[6];
      v506 = v521[0];
      v507 = v521[1];
      v509 = v521[3];
      v508 = v521[2];
      *&v513 = v243;
      *(&v513 + 1) = v244;
      *&v514 = v244;
      *(&v514 + 1) = v246;
      *&v515 = v248;
      *(&v515 + 1) = v249;
      LOBYTE(v516) = v250;
      *(&v516 + 1) = *v522;
      DWORD1(v516) = *&v522[3];
      *(&v516 + 1) = sub_10000C770;
      v517 = v253;
      *&v518 = 0;
      *&v452 = v421;
      *(&v452 + 1) = v408;
      State.projectedValue.getter();
      v254 = v483;
      v255 = v484;
      swift_getKeyPath();
      v439 = v254;
      *&v440 = v255;
      Binding.subscript.getter();

      v256 = v483;
      v257 = v484;

      v452 = v256;
      v453 = v257;
      Binding.wrappedValue.getter();
      v258 = v496;

      v474 = v258;
      v259 = Text.init<A>(_:)();
      v261 = v260;
      v263 = v262;
      sub_100007B40(v259, v260, v262 & 1, v264, v520);
      sub_10000C760(v259, v261, v263 & 1);

      LOBYTE(v483) = v240;
      v265 = v400;
      *(&v483 + 1) = v400;
      State.wrappedValue.getter();
      if (v452)
      {
        v266 = 1.0;
      }

      else
      {
        v266 = 0.0;
      }

      v267 = static Animation.spring(response:dampingFraction:blendDuration:)();
      LOBYTE(v483) = v240;
      *(&v483 + 1) = v265;
      State.wrappedValue.getter();
      v500 = v520[4];
      v501 = v520[5];
      v502 = v520[6];
      v496 = v520[0];
      v497 = v520[1];
      v499 = v520[3];
      v498 = v520[2];
      *&v503 = v266;
      *(&v503 + 1) = v267;
      LOBYTE(v504) = v452;
      v268 = v424;
      v269 = v402;
      sub_10000D694(v429, v424, v402);
      v270 = v403;
      v271 = swift_allocObject();
      v272 = sub_10000CEE8(v268, v271 + v270, v269);
      __chkstk_darwin(v272);
      sub_100004544(&qword_10001DA50, &qword_100010AD0);
      sub_10000C890();
      v273 = v388;
      Button.init(action:label:)();
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v274 = v392;
      v275 = v380;
      v276 = v394;
      (*(v392 + 16))(v380, v273, v394);
      v277 = (v275 + *(v378 + 36));
      v278 = v531;
      v277[4] = v530;
      v277[5] = v278;
      v277[6] = v532;
      v279 = v527;
      *v277 = v526;
      v277[1] = v279;
      v280 = v529;
      v277[2] = v528;
      v277[3] = v280;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v281 = v382;
      sub_10000D564(v275, v382, &qword_10001D948, &qword_100010938);
      v282 = (v281 + *(v379 + 36));
      v283 = v534;
      *v282 = v533;
      v282[1] = v283;
      v282[2] = v535;
      v284 = swift_getKeyPath();
      v285 = swift_allocObject();
      *(v285 + 16) = 0;
      v286 = v281;
      v287 = v384;
      sub_10000D564(v286, v384, &qword_10001D950, &qword_100010940);
      v288 = (v287 + *(v381 + 36));
      *v288 = v284;
      v288[1] = sub_10000CA24;
      v288[2] = v285;
      v289 = static Color.blue.getter();
      v290 = swift_getKeyPath();
      v291 = v287;
      v292 = v386;
      sub_10000D564(v291, v386, &qword_10001D958, &qword_100010948);
      v293 = (v292 + *(v383 + 36));
      *v293 = v290;
      v293[1] = v289;
      v294 = static Color.white.getter();
      v295 = swift_getKeyPath();
      v296 = v391;
      sub_10000D564(v292, v391, &qword_10001D960, &qword_100010950);
      v297 = (v296 + *(v390 + 36));
      *v297 = v295;
      v297[1] = v294;
      v298 = v411;
      BorderedProminentButtonStyle.init()();
      sub_10000CAEC();
      sub_10000785C(&qword_10001DAD0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
      v299 = v393;
      v300 = v413;
      View.buttonStyle<A>(_:)();
      (*(v412 + 8))(v298, v300);
      sub_10000D634(v296, &qword_10001D968, &qword_100010958);
      v301 = v397;
      v302 = &v397[*(v385 + 36)];
      sub_100004544(&qword_10001DAD8, &qword_100010B88);
      static ButtonBorderShape.capsule.getter();
      *v302 = swift_getKeyPath();
      (*(v395 + 32))(v301, v299, v396);
      static AnyTransition.opacity.getter();
      static Animation.easeInOut(duration:)();
      v303 = AnyTransition.animation(_:)();

      (*(v274 + 8))(v273, v276);
      v304 = v387;
      sub_10000D564(v301, v387, &qword_10001D978, &qword_100010968);
      *(v304 + *(v389 + 36)) = v303;
      v305 = v410;
      sub_10000D564(v304, v410, &qword_10001D988, &qword_100010978);
      v189 = &qword_100010988;
      v306 = v409;
      sub_10000D5CC(v422, v409, &qword_10001D998, &qword_100010988);
      v449 = v516;
      v450 = v517;
      *&v451 = v518;
      v445 = v512;
      v446 = v513;
      v447 = v514;
      v448 = v515;
      v441 = v508;
      v442 = v509;
      v443 = v510;
      v444 = v511;
      v439 = v506;
      v440 = v507;
      v436 = v502;
      v437 = v503;
      LOBYTE(v438) = v504;
      v432 = v498;
      v433 = v499;
      v434 = v500;
      v435 = v501;
      v430 = v496;
      v431 = v497;
      v307 = v305;
      v308 = v399;
      sub_10000D5CC(v307, v399, &qword_10001D988, &qword_100010978);
      v309 = v401;
      sub_10000D5CC(v306, v401, &qword_10001D998, &qword_100010988);
      v310 = sub_100004544(&qword_10001DAE0, &qword_100010BC0);
      v311 = v310[12];
      v313 = v449;
      v312 = v450;
      v462 = v449;
      v463 = v450;
      v315 = v445;
      v314 = v446;
      v458 = v445;
      v459 = v446;
      v316 = v447;
      v317 = v448;
      v461 = v448;
      v460 = v447;
      v318 = v443;
      v319 = v444;
      v457 = v444;
      v456 = v443;
      v320 = v442;
      v455 = v442;
      v454 = v441;
      v322 = v439;
      v321 = v440;
      v453 = v440;
      v452 = v439;
      v323 = v309 + v311;
      *(v323 + 32) = v441;
      *(v323 + 48) = v320;
      v324 = v451;
      *&v464 = v451;
      *(v323 + 96) = v315;
      *(v323 + 112) = v314;
      *(v323 + 64) = v318;
      *(v323 + 80) = v319;
      *(v323 + 192) = v324;
      *(v323 + 160) = v313;
      *(v323 + 176) = v312;
      *(v323 + 128) = v316;
      *(v323 + 144) = v317;
      *v323 = v322;
      *(v323 + 16) = v321;
      v325 = v310[16];
      v326 = v437;
      v471 = v436;
      v472 = v437;
      v327 = v432;
      v328 = v433;
      v467 = v432;
      v468 = v433;
      v330 = v434;
      v329 = v435;
      v470 = v435;
      v469 = v434;
      v332 = v430;
      v331 = v431;
      v466 = v431;
      v465 = v430;
      v333 = v309 + v325;
      *(v333 + 96) = v436;
      *(v333 + 112) = v326;
      *(v333 + 32) = v327;
      *(v333 + 48) = v328;
      *(v333 + 64) = v330;
      *(v333 + 80) = v329;
      LOBYTE(v473) = v438;
      *(v333 + 128) = v438;
      *v333 = v332;
      *(v333 + 16) = v331;
      v334 = v309 + v310[20];
      *v334 = 0;
      *(v334 + 8) = 1;
      *(v334 + 16) = 0x3FF0000000000000;
      sub_10000D5CC(v308, v309 + v310[24], &qword_10001D988, &qword_100010978);
      sub_10000D5CC(&v506, &v483, &qword_10001DAE8, &qword_100010BC8);
      sub_10000D5CC(&v496, &v483, &qword_10001DAF0, &qword_100010BD0);
      sub_10000D5CC(&v452, &v483, &qword_10001DAE8, &qword_100010BC8);
      sub_10000D5CC(&v465, &v483, &qword_10001DAF0, &qword_100010BD0);
      sub_10000D634(v308, &qword_10001D988, &qword_100010978);
      v480 = v436;
      v481 = v437;
      LOBYTE(v482) = v438;
      v476 = v432;
      v477 = v433;
      v479 = v435;
      v478 = v434;
      v475 = v431;
      v474 = v430;
      sub_10000D634(&v474, &qword_10001DAF0, &qword_100010BD0);
      v493 = v449;
      v494 = v450;
      *&v495 = v451;
      v489 = v445;
      v490 = v446;
      v492 = v448;
      v491 = v447;
      v485 = v441;
      v486 = v442;
      v488 = v444;
      v487 = v443;
      v484 = v440;
      v483 = v439;
      sub_10000D634(&v483, &qword_10001DAE8, &qword_100010BC8);
      v220 = &qword_10001D998;
      sub_10000D634(v409, &qword_10001D998, &qword_100010988);
      sub_10000D5CC(v309, v418, &qword_10001D940, &qword_100010930);
      swift_storeEnumTagMultiPayload();
      sub_10000DA14(&qword_10001DAF8, &qword_10001D9A8, &qword_100010998, &protocol conformance descriptor for TupleView<A>);
      sub_10000DA14(&qword_10001DB00, &qword_10001D940, &qword_100010930, &protocol conformance descriptor for TupleView<A>);
      v221 = v414;
      _ConditionalContent<>.init(storage:)();
      sub_10000D634(&v496, &qword_10001DAF0, &qword_100010BD0);
      sub_10000D634(&v506, &qword_10001DAE8, &qword_100010BC8);
      sub_10000D634(v309, &qword_10001D940, &qword_100010930);
      sub_10000D634(v410, &qword_10001D988, &qword_100010978);
      v222 = v422;
    }

    sub_10000D634(v222, v220, v189);
    v335 = v221;
    v336 = v221;
    v337 = v415;
    sub_10000D5CC(v335, v415, &qword_10001DA18, &qword_100010A08);
    v338 = v420;
    sub_10000D5CC(v337, v420, &qword_10001DA18, &qword_100010A08);
    v339 = v338 + *(sub_100004544(&qword_10001DB08, &qword_100010BD8) + 48);
    *v339 = 0;
    *(v339 + 8) = 1;
    sub_10000D634(v336, &qword_10001DA18, &qword_100010A08);
    sub_10000D634(v337, &qword_10001DA18, &qword_100010A08);
    v76 = v344[0];
    sub_10000D564(v338, v344[0], &qword_10001D938, &qword_100010928);
    v80 = 0;
  }

  (*(v426 + 56))(v76, v80, 1, v427);
  v340 = v425;
  sub_10000D5CC(v76, v425, &qword_10001DA20, &qword_100010A10);
  v341 = v428;
  *v428 = 0;
  *(v341 + 8) = 1;
  v341[2] = 0x3FF0000000000000;
  v342 = sub_100004544(&qword_10001DA28, &qword_100010A18);
  sub_10000D5CC(v340, v341 + *(v342 + 48), &qword_10001DA20, &qword_100010A10);
  sub_10000D634(v76, &qword_10001DA20, &qword_100010A10);
  return sub_10000D634(v340, &qword_10001DA20, &qword_100010A10);
}

__n128 sub_10000B45C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_100004544(&qword_10001DB78, &qword_100010C58);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-v7];
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[1];
  v39 = *a1;
  v40 = v13;
  sub_100004544(&qword_10001DA30, &qword_100010A68);
  State.wrappedValue.getter();
  v15 = *(v38 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString);
  v14 = *(v38 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString + 8);

  v39 = v15;
  v40 = v14;
  sub_10000C70C();
  v16 = Text.init<A>(_:)();
  v29 = v18;
  v30 = v17;
  LOBYTE(a1) = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(a1) = a1 & 1;
  LOBYTE(v39) = a1;
  (*(v10 + 104))(v12, enum case for Font.TextStyle.body(_:), v9);
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  static Font.system(_:design:weight:)();
  sub_10000D634(v8, &qword_10001DB78, &qword_100010C58);
  (*(v10 + 8))(v12, v9);
  v21 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v23 = v29;
  v24 = v30;
  *a2 = v16;
  *(a2 + 8) = v24;
  *(a2 + 16) = a1;
  *(a2 + 24) = v23;
  v25 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v25;
  *(a2 + 128) = v37;
  v26 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v26;
  result = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = result;
  *(a2 + 144) = 0x3FE0000000000000;
  *(a2 + 152) = KeyPath;
  *(a2 + 160) = v21;
  return result;
}

void sub_10000B830(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
  a4[1] = v6;
}

uint64_t sub_10000B8AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

__n128 sub_10000B92C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_100004544(&qword_10001DB78, &qword_100010C58);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-v7];
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[1];
  v39 = *a1;
  v40 = v13;
  sub_100004544(&qword_10001DA30, &qword_100010A68);
  State.wrappedValue.getter();
  v15 = *(v38 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString);
  v14 = *(v38 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString + 8);

  v39 = v15;
  v40 = v14;
  sub_10000C70C();
  v16 = Text.init<A>(_:)();
  v29 = v18;
  v30 = v17;
  LOBYTE(a1) = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(a1) = a1 & 1;
  LOBYTE(v39) = a1;
  (*(v10 + 104))(v12, enum case for Font.TextStyle.body(_:), v9);
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  static Font.system(_:design:weight:)();
  sub_10000D634(v8, &qword_10001DB78, &qword_100010C58);
  (*(v10 + 8))(v12, v9);
  v21 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v23 = v29;
  v24 = v30;
  *a2 = v16;
  *(a2 + 8) = v24;
  *(a2 + 16) = a1;
  *(a2 + 24) = v23;
  v25 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v25;
  *(a2 + 128) = v37;
  v26 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v26;
  result = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = result;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v21;
  return result;
}

uint64_t sub_10000BC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v27 = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShieldIntervention(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  sub_10000C300();
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v14 + 8);
  v28(v17, v13);
  sub_10000D694(v27, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShieldIntervention);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_10000CEE8(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ShieldIntervention);
  aBlock[4] = v30;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059C4;
  aBlock[3] = v31;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000785C(&qword_10001D460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004544(&qword_10001D468, &qword_100010618);
  sub_10000DA14(&qword_10001D470, &qword_10001D468, &qword_100010618, &protocol conformance descriptor for [A]);
  v23 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v35 + 8))(v6, v23);
  (*(v33 + 8))(v9, v34);
  return (v28)(v19, v13);
}

uint64_t sub_10000C170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_100004544(&qword_10001D8F0, &qword_1000108D8);
  sub_100007F0C(v2, a2 + *(v7 + 44));
  sub_10000D694(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShieldIntervention);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_10000CEE8(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShieldIntervention);
  result = sub_100004544(&qword_10001D8F8, &unk_1000108E0);
  v11 = (a2 + *(result + 36));
  *v11 = sub_10000C2D4;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

unint64_t sub_10000C300()
{
  result = qword_10001D458;
  if (!qword_10001D458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D458);
  }

  return result;
}

uint64_t sub_10000C34C()
{
  v1 = type metadata accessor for ShieldIntervention(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 80))
  {
  }

  v6 = *(v1 + 40);
  v7 = type metadata accessor for VideoPlayerUIViewWrapper(0);
  v8 = *(*(v7 - 8) + 48);
  if (!v8(v5 + v6, 1, v7))
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 8))(v5 + v6, v9);
  }

  v10 = *(v1 + 44);
  if (!v8(v5 + v10, 1, v7))
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C534(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShieldIntervention(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10000C5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10000C5C0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10000C640(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10000C70C()
{
  result = qword_10001DA48;
  if (!qword_10001DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA48);
  }

  return result;
}

void sub_10000C760(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000C890()
{
  result = qword_10001DA58;
  if (!qword_10001DA58)
  {
    sub_1000056C0(&qword_10001DA50, &qword_100010AD0);
    sub_10000C948();
    sub_10000DA14(&qword_10001DA70, &qword_10001DA78, &qword_100010AE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA58);
  }

  return result;
}

unint64_t sub_10000C948()
{
  result = qword_10001DA60;
  if (!qword_10001DA60)
  {
    sub_1000056C0(&qword_10001DA68, &qword_100010AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA60);
  }

  return result;
}

uint64_t sub_10000C9CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000CA3C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000CA94@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10000CAEC()
{
  result = qword_10001DA80;
  if (!qword_10001DA80)
  {
    sub_1000056C0(&qword_10001D968, &qword_100010958);
    sub_10000CBA4();
    sub_10000DA14(&qword_10001DAC0, &qword_10001DAC8, &qword_100010B80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA80);
  }

  return result;
}

unint64_t sub_10000CBA4()
{
  result = qword_10001DA88;
  if (!qword_10001DA88)
  {
    sub_1000056C0(&qword_10001D960, &qword_100010950);
    sub_10000CC5C();
    sub_10000DA14(&qword_10001DAC0, &qword_10001DAC8, &qword_100010B80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA88);
  }

  return result;
}

unint64_t sub_10000CC5C()
{
  result = qword_10001DA90;
  if (!qword_10001DA90)
  {
    sub_1000056C0(&qword_10001D958, &qword_100010948);
    sub_10000D428(&qword_10001DA98, &qword_10001D950, &qword_100010940, sub_10000CD40);
    sub_10000DA14(&qword_10001DAB0, &qword_10001DAB8, &qword_100010B78, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA90);
  }

  return result;
}

unint64_t sub_10000CD40()
{
  result = qword_10001DAA0;
  if (!qword_10001DAA0)
  {
    sub_1000056C0(&qword_10001D948, &qword_100010938);
    sub_10000DA14(&qword_10001DAA8, &qword_10001D980, &qword_100010970, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DAA0);
  }

  return result;
}

uint64_t sub_10000CE1C(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues._buttonBorderShape.setter();
}

uint64_t sub_10000CEE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D008()
{
  v1 = type metadata accessor for ShieldIntervention(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 80);
  if (v4)
  {
    return v4();
  }

  return result;
}

unint64_t sub_10000D080()
{
  result = qword_10001DB18;
  if (!qword_10001DB18)
  {
    sub_1000056C0(&qword_10001DB10, &qword_100010C30);
    sub_10000D138();
    sub_10000DA14(&qword_10001DA70, &qword_10001DA78, &qword_100010AE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB18);
  }

  return result;
}

unint64_t sub_10000D138()
{
  result = qword_10001DB20;
  if (!qword_10001DB20)
  {
    sub_1000056C0(&qword_10001DB28, &qword_100010C38);
    sub_10000C948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB20);
  }

  return result;
}

unint64_t sub_10000D1D4()
{
  result = qword_10001DB30;
  if (!qword_10001DB30)
  {
    sub_1000056C0(&qword_10001D9D0, &qword_1000109C0);
    sub_10000D28C();
    sub_10000DA14(&qword_10001DAC0, &qword_10001DAC8, &qword_100010B80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB30);
  }

  return result;
}

unint64_t sub_10000D28C()
{
  result = qword_10001DB38;
  if (!qword_10001DB38)
  {
    sub_1000056C0(&qword_10001D9C8, &qword_1000109B8);
    sub_10000D344();
    sub_10000DA14(&qword_10001DAC0, &qword_10001DAC8, &qword_100010B80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB38);
  }

  return result;
}

unint64_t sub_10000D344()
{
  result = qword_10001DB40;
  if (!qword_10001DB40)
  {
    sub_1000056C0(&qword_10001D9C0, &qword_1000109B0);
    sub_10000D428(&qword_10001DB48, &qword_10001D9B8, &qword_1000109A8, sub_10000D4AC);
    sub_10000DA14(&qword_10001DAB0, &qword_10001DAB8, &qword_100010B78, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB40);
  }

  return result;
}

uint64_t sub_10000D428(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000056C0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000D4AC()
{
  result = qword_10001DB50;
  if (!qword_10001DB50)
  {
    sub_1000056C0(&qword_10001D9B0, &qword_1000109A0);
    sub_10000DA14(&qword_10001DB58, &qword_10001D9E8, &qword_1000109D8, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB50);
  }

  return result;
}

uint64_t sub_10000D564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004544(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000D5CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004544(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000D634(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004544(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D6FC(uint64_t a1)
{
  v2 = type metadata accessor for VideoPlayerUIViewWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D758@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000D7B0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000D814@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000D868(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000D89C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10000D8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10000D95C()
{
  result = qword_10001DB98;
  if (!qword_10001DB98)
  {
    sub_1000056C0(&qword_10001D8F8, &unk_1000108E0);
    sub_10000DA14(&qword_10001DBA0, &qword_10001DBA8, "PM", &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB98);
  }

  return result;
}

uint64_t sub_10000DA14(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000056C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000DA60()
{
  result = qword_10001DBB0;
  if (!qword_10001DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DBB0);
  }

  return result;
}

unint64_t sub_10000DAB4()
{
  result = qword_10001DBB8;
  if (!qword_10001DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DBB8);
  }

  return result;
}

id sub_10000DB8C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
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

void sub_10000DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v34 = a4;
  v35 = a3;
  v36 = a2;
  v28 = a1;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v30);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  *(v5 + 32) = 0xD00000000000002DLL;
  *(v5 + 40) = 0x8000000100011640;
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
  *(v5 + 48) = a5;
  *(v5 + 16) = [objc_allocWithZone(AWAttentionAwarenessClient) init];
  v12 = [objc_allocWithZone(AWAttentionAwarenessConfiguration) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setIdentifier:v13];

  [v12 setContinuousFaceDetectMode:1];
  [v12 setNotificationMask:31];
  [v12 setActivateEyeRelief:1];
  [v12 setActivateAttentionDetection:0];
  [*(v5 + 16) setConfiguration:v12];
  sub_10000C300();

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10000F0BC(&qword_10001DDB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004544(&qword_10001DDB8, qword_100010F10);
  sub_10000F104(&qword_10001DDC0, &qword_10001DDB8, qword_100010F10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  v14 = v34;
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6[3] = v15;
  v6[9] = v35;
  v6[10] = v14;
  v16 = v6[2];
  if (!v16)
  {

    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = swift_allocObject();
  v18 = v28;
  v17[2] = v6;
  v17[3] = v18;
  v17[4] = v36;
  v41 = sub_10000F1A0;
  v42 = v17;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100002018;
  v40 = &unk_100019420;
  v19 = _Block_copy(&aBlock);

  v20 = v16;
  v21 = v15;

  [v20 setEventStreamerWithQueue:v21 block:v19];
  _Block_release(v19);

  v22 = v6[2];
  v15 = v6[3];
  if (!v22)
  {
LABEL_5:
    if (!v15)
    {
LABEL_7:

      return;
    }

LABEL_6:
    v26 = v15;
    dispatch_activate(v26);

    goto LABEL_7;
  }

  if (v15)
  {
    v41 = sub_10000F158;
    v42 = v6;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10000E314;
    v40 = &unk_1000193D0;
    v23 = _Block_copy(&aBlock);

    v24 = v22;
    v25 = v15;

    [v24 setNotificationHandlerWithQueue:v25 block:v23];
    _Block_release(v23);

    v15 = v6[3];
    goto LABEL_5;
  }

  __break(1u);
}

double sub_10000E1D8(char a1, uint64_t a2)
{
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000468C(v4, qword_10001E380);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received AA notification for face detect state", v7, 2u);
  }

  if ((a1 & 5) != 0)
  {
    v9 = *(a2 + 72);
    if (v9)
    {
      v10 = *(a2 + 80);

      v9(v11);

      return sub_10000536C(v9, v10);
    }
  }

  return result;
}

double sub_10000E314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_10000E368(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() distance];
  v6 = v5;
  objc_opt_self();
  v7 = [swift_dynamicCastObjCClassUnconditional() faceState];
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000468C(v8, qword_10001E380);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v6;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "ER Distance: %f, ER Face State: %llu", v11, 0x16u);
  }

  v12 = *(v3 + 56);
  if (*(v3 + 64))
  {
    v12 = v6;
  }

  v13 = (v6 + v12) * 0.5;
  *(v3 + 56) = v6;
  *(v3 + 64) = 0;
  if (v13 <= 0.0)
  {
    if (v7 != 2)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 = 2;
    return a2(v14);
  }

  if (v7 == 2)
  {
    goto LABEL_14;
  }

  if (v7 != 1)
  {
LABEL_15:
    v14 = 0;
    return a2(v14);
  }

  if (v13 >= *(v3 + 48))
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  return a2(v14);
}

double sub_10000E554()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  if (v11)
  {
    aBlock[4] = sub_10000F0B4;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000059C4;
    aBlock[3] = &unk_1000193A8;
    v24 = v8;
    v12 = _Block_copy(aBlock);
    v23 = v11;

    static DispatchQoS.unspecified.getter();
    v25 = &_swiftEmptyArrayStorage;
    sub_10000F0BC(&qword_10001D460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004544(&qword_10001D468, &qword_100010618);
    sub_10000F104(&qword_10001D470, &qword_10001D468, &qword_100010618);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v24);
  }

  else
  {
    if (qword_10001D350 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000468C(v15, qword_10001E380);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error: Streaming queue was nil", v18, 2u);
    }

    v19 = *(v1 + 72);
    if (v19)
    {
      v20 = *(v1 + 80);

      v19(v21);

      return sub_10000536C(v19, v20);
    }
  }

  return result;
}

void sub_10000E90C(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v16 = 0;
  if ([v2 resumeWithError:&v16])
  {
    v3 = v16;
LABEL_4:
    if (qword_10001D350 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000468C(v4, qword_10001E380);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Resumed distance streaming", v7, 2u);
    }

    return;
  }

  v8 = v16;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000468C(v9, qword_10001E380);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Couldn't resume distance streaming", v12, 2u);
  }

  v13 = a1[9];
  if (v13)
  {
    v14 = a1[10];

    v13(v15);

    sub_10000536C(v13, v14);
  }

  else
  {
  }
}

double sub_10000EB60()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  if (v11)
  {
    aBlock[4] = sub_10000F094;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000059C4;
    aBlock[3] = &unk_100019380;
    v16 = v7;
    v15 = _Block_copy(aBlock);
    v12 = v11;

    static DispatchQoS.unspecified.getter();
    v17 = &_swiftEmptyArrayStorage;
    sub_10000F0BC(&qword_10001D460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004544(&qword_10001D468, &qword_100010618);
    sub_10000F104(&qword_10001D470, &qword_10001D468, &qword_100010618);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v15;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v10, v16);
  }

  return result;
}

void sub_10000EE10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v11 = 0;
  if ([v1 cancelFaceDetectStreamWithError:&v11])
  {
    v2 = v11;
LABEL_4:
    if (qword_10001D350 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000468C(v3, qword_10001E380);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stopped distance streaming", v6, 2u);
    }

    goto LABEL_13;
  }

  v7 = v11;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000468C(v8, qword_10001E380);
  v4 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, v9, "Couldn't stop distance streaming", v10, 2u);
  }

LABEL_13:
}

uint64_t sub_10000F020()
{

  sub_10000536C(*(v0 + 72), *(v0 + 80));

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_10000F09C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F0BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F104(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000056C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F160()
{

  return _swift_deallocObject(v0, 40, 7);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}