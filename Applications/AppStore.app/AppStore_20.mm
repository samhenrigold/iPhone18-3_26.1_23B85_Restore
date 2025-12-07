void sub_10023A3DC()
{
  v1 = *(type metadata accessor for UnifiedMessagingPlacement() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  sub_100236BC4(v8, v0 + v2, v5, v6, v7);
}

uint64_t sub_10023A484(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10023A4CC(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UnifiedMessagingPlacement() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100237D98(a1, a2, v9, v2 + v6, v8, v10);
}

uint64_t sub_10023A5A8(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  v13[5] = ObjectType;
  aBlock[4] = sub_10023AEB8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BA378;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = v2;
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10023A484(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_10023A894(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a5;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = v29;
  v17[4] = v28;
  v17[5] = a4;
  v17[6] = v18;
  v17[7] = a6;
  v19 = ObjectType;
  v17[8] = v6;
  v17[9] = v19;
  aBlock[4] = sub_10023AE94;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BA2D8;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  v22 = v6;
  v23 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10023A484(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v30;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v33 + 8))(v13, v11);
  return (*(v31 + 8))(v16, v32);
}

uint64_t sub_10023ABA8(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = ObjectType;
  aBlock[4] = sub_10023AE88;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BA288;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10023A484(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_10023AEC4()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10023AF58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_contentViewController] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_overlayViewController] = 0;
  v3[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_startedAsFlowPreview] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_objectGraph] = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  sub_10023D1A8(&unk_10097AA10, &unk_1007C20BC);
  v8 = v7;
  dispatch thunk of LoadingPagePresenter.view.setter();

  return v8;
}

void sub_10023B0E4()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  dispatch thunk of BasePresenter.didLoad()();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_contentViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v8 insertSubview:v9 atIndex:0];

LABEL_6:
  v11 = *&v1[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_overlayViewController];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v24 = v16;
  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = 0;
  static ViewControllerContainment.add(_:to:frame:)();
}

void sub_10023B300()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_contentViewController];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 setFrame:{v4, v6, v8, v10}];

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_overlayViewController];
  if (!v14)
  {
    return;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setFrame:{v4, v6, v8, v10}];
}

void sub_10023B4E4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore25LoadingPageViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_contentViewController];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7 = *&v1[v3];
  if (v7)
  {
    [v7 removeFromParentViewController];
    v8 = *&v1[v3];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  *&v1[v3] = a1;
  v13 = a1;

  if (!a1)
  {
    return;
  }

  [v1 addChildViewController:v13];
  if ([v1 isViewLoaded])
  {
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v13 view];
      if (v11)
      {
        v12 = v11;
        [v10 insertSubview:v11 atIndex:0];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
}

uint64_t sub_10023B63C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FlowPresentationContext();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v12 - 8);
  v14 = v25 - v13;
  v15 = type metadata accessor for FlowDestination(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C234(a2, v28);

  sub_100462678(v19, v28, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10002B894(v14, &unk_1009796F0, &unk_1007BA400);
    return 0;
  }

  sub_10013A05C(v14, v18);
  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();
  v20 = [v25[1] traitCollection];
  sub_10065DB50(v8);

  sub_10013B6D8(v11, type metadata accessor for FlowPresentationHints);
  sub_10013B6D8(v18, type metadata accessor for FlowDestination);
  v22 = v26;
  v21 = v27;
  (*(v26 + 32))(v5, v8, v27);
  v23 = (*(v22 + 88))(v5, v21);
  result = 1;
  if (v23 != enum case for FlowPresentationContext.presentModal(_:) && v23 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v23 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v23 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v22 + 8))(v5, v21);
    return 0;
  }

  return result;
}

void sub_10023B9D4(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v4 - 8);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationTab();
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin(v6);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = &v70 - v12;
  __chkstk_darwin(v13);
  v15 = &v70 - v14;
  __chkstk_darwin(v16);
  v72 = &v70 - v17;
  v18 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v21 - 8);
  v23 = &v70 - v22;
  v24 = type metadata accessor for FlowDestination(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v2;
  if (v2[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_startedAsFlowPreview] != 1 || (v71 = type metadata accessor for FlowAction(), (v29 = swift_dynamicCastClass()) == 0))
  {
    type metadata accessor for FlowAction();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;

      goto LABEL_9;
    }

    type metadata accessor for CompoundAction();
    if (!swift_dynamicCastClass())
    {
LABEL_39:
      v67 = *&v28[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_objectGraph];
      v68 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v10, 1, v68) == 1)
      {
        sub_10002B894(v10, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(a1, 1, v67, v10);

        (*(v69 + 8))(v10, v68);
      }

      goto LABEL_42;
    }

    v42 = CompoundAction.actions.getter();
    if (v42 >> 62)
    {
      v65 = v42;
      v66 = _CocoaArrayWrapper.endIndex.getter();
      v42 = v65;
      if (v66)
      {
        goto LABEL_17;
      }
    }

    else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      if ((v42 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }
      }

      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v34 = v43;
LABEL_9:

        if (sub_10023B63C(v34, v79))
        {
          v35 = [v28 tabBarController];
          if (v35)
          {
            v36 = v35;
            v37 = [v35 transientViewController];
            if (v37)
            {

              [v36 setTransientViewController:0 animated:0];
              v38 = *&v28[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_objectGraph];
              v39 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
              v40 = v72;
              BaseObjectGraph.injectIfAvailable<A>(_:)();
              v41 = *(v39 - 8);
              if ((*(v41 + 48))(v40, 1, v39) == 1)
              {

                sub_10002B894(v40, &unk_100972A00, &unk_1007B3130);
              }

              else
              {
                sub_1005F9AF4(a1, 1, v38, v40);

                (*(v41 + 8))(v40, v39);
              }

LABEL_42:
              sub_10021D284();

              return;
            }
          }

          v56 = *&v28[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_objectGraph];
          v57 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v58 = *(v57 - 8);
          if ((*(v58 + 48))(v15, 1, v57) == 1)
          {
            sub_10002B894(v15, &unk_100972A00, &unk_1007B3130);
          }

          else
          {
            sub_1005F9AF4(a1, 1, v56, v15);

            (*(v58 + 8))(v15, v57);
          }

          v59 = [v28 navigationController];
          v60 = [v59 topViewController];

          if (v60)
          {
            sub_100065AF0();
            v61 = v28;
            v62 = static NSObject.== infix(_:_:)();

            if (v62)
            {
              v63 = [v61 navigationController];
              if (v63)
              {
                v64 = v63;
              }
            }
          }

          goto LABEL_42;
        }

        (*(v74 + 104))(v76, enum case for NavigationTab.infer(_:), v75);
        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1007B0B70;
        *(v44 + 32) = a1;

        static ActionMetrics.notInstrumented.getter();
        type metadata accessor for TabChangeAction();
        swift_allocObject();
        v45 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
        v46 = *&v28[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_objectGraph];
        v47 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
        v48 = v78;
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v49 = *(v47 - 8);
        if ((*(v49 + 48))(v48, 1, v47) == 1)
        {

          sub_10002B894(v48, &unk_100972A00, &unk_1007B3130);
        }

        else
        {
          sub_1005FA0E4(v45, 1, v46, v48);

          (*(v49 + 8))(v48, v47);
        }

        goto LABEL_42;
      }

      goto LABEL_39;
    }

    goto LABEL_39;
  }

  v30 = v29;
  sub_10006C234(v79, &v80);
  swift_retain_n();
  sub_100462678(v30, &v80, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v79 = a1;
    sub_10002B894(v23, &unk_1009796F0, &unk_1007BA400);
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for OSLogger();
    sub_1000056A8(v31, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1E00;
    *(&v81 + 1) = ObjectType;
    *&v80 = v28;
    v32 = v28;
    static LogMessage.safe(_:)();
    sub_10002B894(&v80, &unk_1009711D0, &unk_1007B1A10);
    LogMessage.init(stringLiteral:)();
    *(&v81 + 1) = v71;
    *&v80 = v30;

    static LogMessage.sensitive(_:)();
    sub_10002B894(&v80, &unk_1009711D0, &unk_1007B1A10);
    Logger.error(_:)();
  }

  else
  {
    sub_10013A05C(v23, v27);
    v50 = [v28 traitCollection];
    v51 = FlowAction.referrerUrl.getter();
    v53 = v52;
    FlowAction.referrerData.getter();
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    sub_1003C1668(v27, v50, v51, v53, v20, &v80, *&v28[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_objectGraph], 1);
    v55 = v54;

    sub_10002B894(&v80, &unk_100981880, &unk_1007BECD0);
    sub_10002B894(v20, &unk_1009767C0, &unk_1007B1880);
    sub_10023B4E4(v55);

    sub_10013B6D8(v27, type metadata accessor for FlowDestination);
  }
}

void sub_10023C624()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v3 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v4 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v5 = OBJC_IVAR____TtC8AppStore25LoadingPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10023C77C()
{
  v1 = OBJC_IVAR____TtC8AppStore25LoadingPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore25LoadingPageViewController_overlayViewController];
  if (v2)
  {
    type metadata accessor for JULoadingViewController();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      static ViewControllerContainment.remove(_:)();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        static ViewControllerContainment.add(_:to:frame:)();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_10023C860(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v50 = &v39 - v3;
  v4 = type metadata accessor for NavigationTab();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowOrigin();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAnimationBehavior();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FlowPresentationContext();
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - v14;
  v16 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  v19 = type metadata accessor for FlowPage();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for JUContentUnavailableViewController.PresentationContext();
  __chkstk_darwin(v23 - 8);
  static JUContentUnavailableViewController.PresentationContext.placeholder.getter();
  v40 = type metadata accessor for JUContentUnavailableViewController();
  v24 = objc_allocWithZone(v40);
  swift_errorRetain();
  v54 = a1;
  v25 = JUContentUnavailableViewController.init(error:presentationContext:retry:)();
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.viewController(_:), v19);
  v26 = type metadata accessor for URL();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  v27 = type metadata accessor for ReferrerData();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  v55 = 0u;
  v56 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v10 + 104))(v41, enum case for FlowPresentationContext.push(_:), v42);
  (*(v44 + 104))(v43, enum case for FlowAnimationBehavior.never(_:), v45);
  (*(v47 + 104))(v46, enum case for FlowOrigin.inapp(_:), v48);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  *(&v58 + 1) = v40;
  *&v57 = v25;
  v29 = v25;
  v30 = v50;
  v31 = v29;
  FlowAction.setPageData(_:)();
  sub_10002B894(&v57, &unk_1009711D0, &unk_1007B1A10);
  (*(v51 + 104))(v49, enum case for NavigationTab.infer(_:), v52);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007B0B70;
  *(v32 + 32) = v28;

  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v33 = v53;
  TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
  v34 = *(v33 + OBJC_IVAR____TtC8AppStore25LoadingPageViewController_objectGraph);
  v35 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v30, 1, v35) == 1)
  {
    sub_10002B894(v30, &unk_100972A00, &unk_1007B3130);
  }

  else
  {

    sub_1005FA0E4(v37, 1, v34, v30);

    (*(v36 + 8))(v30, v35);
  }

  sub_10021CA80(v54);

  return result;
}

uint64_t sub_10023D1A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LoadingPageViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10023D234(uint64_t a1, void *a2, char *a3)
{
  v62 = a3;
  v69 = type metadata accessor for PrivacyCategoryLayout();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v5;
  __chkstk_darwin(v6);
  v67 = v50 - v7;
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrivacyCategoryStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v56 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v70 = a2;
  sub_100379904(a1, a2, v50 - v20);
  v62 = v21;
  PrivacyCategoryLayout.Metrics.iconSize.getter();
  v57 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v58 = LayoutViewPlaceholder.init(representing:)();
  PrivacyCategory.style.getter();
  v22 = (*(v11 + 88))(v13, v10);
  v72 = v14;
  v64 = v15;
  v61 = v8;
  if (v22 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_10096E0A8 != -1)
    {
      swift_once();
    }

    v23 = qword_1009D1178;
LABEL_9:
    v24 = sub_1000056A8(v14, v23);
    (*(v15 + 16))(v17, v24, v14);
    goto LABEL_13;
  }

  if (v22 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_10096E0B0 != -1)
    {
      swift_once();
    }

    v23 = qword_1009D1190;
    goto LABEL_9;
  }

  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v14, qword_1009D1178);
  (*(v15 + 16))(v17, v25, v14);
  (*(v11 + 8))(v13, v10);
LABEL_13:
  v26 = v70;
  v50[1] = a1;
  sub_1000367E8();
  v27 = [v26 traitCollection];
  v28 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyCategory.title.getter();
  v29 = type metadata accessor for Feature();
  v79[3] = v29;
  v30 = sub_10023EB94(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v55 = v17;
  v53 = v30;
  v79[4] = v30;
  v31 = sub_1000056E0(v79);
  v32 = *(*(v29 - 8) + 104);
  v52 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v51 = v32;
  v32(v31);
  v33 = v28;
  isFeatureEnabled(_:)();
  sub_100007000(v79);
  v34 = v59;
  v54 = v33;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v35 = *(v60 + 8);
  v36 = v61;
  v35(v34, v61);
  if (qword_10096E0B8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v72, qword_1009D11A8);
  v37 = [v70 traitCollection];
  v38 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v78[0] = PrivacyCategory.dataTypes.getter();
  sub_10002849C(&unk_100977380, &qword_1007BB880);
  sub_10015872C();
  BidirectionalCollection<>.joined(separator:)();

  v78[3] = v29;
  v78[4] = v53;
  v39 = sub_1000056E0(v78);
  v51(v39, v52, v29);
  v70 = v38;
  isFeatureEnabled(_:)();
  sub_100007000(v78);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v35(v34, v36);
  v40 = v63;
  v41 = v62;
  (*(v63 + 16))(v56, v62, v71);
  v76 = v57;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v58;
  sub_10002C0AC(v79, v74);
  sub_10002C0AC(v78, v73);

  v42 = v67;
  PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)();
  v43 = v68;
  v44 = v66;
  v45 = v69;
  (*(v68 + 16))(v66, v42, v69);
  v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v47 = swift_allocObject();
  (*(v43 + 32))(v47 + v46, v44, v45);
  swift_allocObject();
  v48 = LayoutViewPlaceholder.init(measureWith:)();

  (*(v43 + 8))(v42, v45);
  sub_100007000(v78);
  sub_100007000(v79);
  (*(v64 + 8))(v55, v72);
  (*(v40 + 8))(v41, v71);
  return v48;
}

double sub_10023DC60(uint64_t a1)
{
  v2 = type metadata accessor for PrivacyTypeLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v100 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ShelfLayoutContext();
  v98 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LabelPlaceholderCompatibility();
  v112 = *(v6 - 8);
  v113 = v6;
  __chkstk_darwin(v6);
  v111 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for FontUseCase();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrivacyTypeStyle();
  v101 = *(v9 - 1);
  v102 = v9;
  __chkstk_darwin(v9);
  v114 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v14 = type metadata accessor for PrivacyTypeLayout.Metrics();
  v104 = *(v14 - 8);
  v105 = v14;
  __chkstk_darwin(v14);
  v99 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = (&v90 - v17);
  v18 = type metadata accessor for PageGrid();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrivacyType();
  sub_10023EB94(&qword_10097AA28, &type metadata accessor for PrivacyType, &protocol conformance descriptor for PrivacyType);
  v22 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  v23 = v131[0];
  if (!v131[0])
  {
    return 0.0;
  }

  v94 = v3;
  v95 = v2;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v24 = *(v19 + 8);
  v116 = v21;
  v117 = v19 + 8;
  v118 = v18;
  v115 = v24;
  v24(v21, v18);
  v25 = PrivacyType.artwork.getter();
  PrivacyType.style.getter();
  v123 = v22;
  v26 = sub_100079F24();
  sub_10035FDE8(v25, v13, v26, v108);
  swift_unknownObjectRelease();

  v27 = v101;
  v28 = v102;
  v29 = *(v101 + 8);
  v122 = v13;
  v29(v13, v102);
  v30 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v31 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v92 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v91 = LayoutViewPlaceholder.init(representing:)();
  PrivacyTypeLayout.Metrics.iconSize.getter();
  v121 = v30;
  swift_allocObject();
  v103 = LayoutViewPlaceholder.init(representing:)();
  v32 = v114;
  v110 = v23;
  PrivacyType.style.getter();
  v33 = (*(v27 + 88))(v32, v28);
  v93 = v31;
  if (v33 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    v38 = v28;
    v39 = v106;
    if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      if (qword_10096E090 != -1)
      {
        swift_once();
      }

      v43 = v109;
      v44 = sub_1000056A8(v109, qword_1009D1130);
      (*(v107 + 16))(v39, v44, v43);
      v42 = 4;
    }

    else
    {
      if (qword_10096E088 != -1)
      {
        swift_once();
      }

      v40 = v109;
      v41 = sub_1000056A8(v109, qword_1009D1118);
      (*(v107 + 16))(v39, v41, v40);
      v29(v114, v38);
      v42 = 1;
    }

    v114 = v42;
    goto LABEL_15;
  }

  v34 = v106;
  if (qword_10096E088 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v35 = v109;
    v36 = sub_1000056A8(v109, qword_1009D1118);
    (*(v107 + 16))(v34, v36, v35);
    v114 = 1;
LABEL_15:
    sub_1000367E8();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v45 = v131[0];
    v46 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyType.title.getter();
    v47 = type metadata accessor for Feature();
    v131[3] = v47;
    v102 = sub_10023EB94(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v131[4] = v102;
    v48 = sub_1000056E0(v131);
    v49 = *(v47 - 8);
    v50 = *(v49 + 104);
    LODWORD(v101) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v96 = v49 + 104;
    v97 = v50;
    v50(v48);
    v51 = v46;
    isFeatureEnabled(_:)();
    sub_100007000(v131);
    v52 = v111;
    v90 = v51;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v53 = v113;
    v112 = *(v112 + 8);
    (v112)(v52, v113);
    if (qword_10096E098 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v109, qword_1009D1148);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v54 = v130[0];
    v55 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyType.detail.getter();
    v130[3] = v47;
    v130[4] = v102;
    v56 = sub_1000056E0(v130);
    v97(v56, v101, v47);
    v34 = v55;
    isFeatureEnabled(_:)();
    sub_100007000(v130);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (v112)(v52, v53);
    v57 = PrivacyType.categories.getter();
    v58 = v57;
    if (v57 >> 62)
    {
      v88 = v57;
      v89 = _CocoaArrayWrapper.endIndex.getter();
      v58 = v88;
      v59 = v89;
    }

    else
    {
      v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v102 = v34;
    if (!v59)
    {
      break;
    }

    v60 = v58;
    v114 = type metadata accessor for PrivacyCategoryView();
    if (v59 >= 1)
    {
      v61 = 0;
      v62 = v60;
      v111 = (v60 & 0xC000000000000001);
      v63 = _swiftEmptyArrayStorage;
      v64 = (v98 + 8);
      v112 = v59;
      v113 = v60;
      v65 = v120;
      do
      {
        if (v111)
        {
          v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v66 = *(v62 + 8 * v61 + 32);
        }

        v67 = v116;
        v68 = v119;
        ItemLayoutContext.parentShelfLayoutContext.getter();
        ShelfLayoutContext.contentPageGrid.getter();
        v69 = v67;
        v70 = *v64;
        (*v64)(v68, v65);
        PageGrid.containerWidth.getter();
        v72 = v71;
        v115(v69, v118);
        ItemLayoutContext.parentShelfLayoutContext.getter();
        v73 = ShelfLayoutContext.traitCollection.getter();
        v70(v68, v65);
        v74 = type metadata accessor for SnapshotPageTraitEnvironment();
        v75 = objc_allocWithZone(v74);
        v76 = &v75[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
        *v76 = v72;
        *(v76 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v75[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v73;
        v129.receiver = v75;
        v129.super_class = v74;
        v77 = objc_msgSendSuper2(&v129, "init");
        v78 = sub_10023D234(v66, v77, v114);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_100033548(0, v63[2] + 1, 1, v63);
        }

        v80 = v63[2];
        v79 = v63[3];
        if (v80 >= v79 >> 1)
        {
          v63 = sub_100033548((v79 > 1), v80 + 1, 1, v63);
        }

        ++v61;

        v127 = v121;
        v128 = &protocol witness table for LayoutViewPlaceholder;
        *&v126 = v78;
        v63[2] = v80 + 1;
        sub_100005A38(&v126, &v63[5 * v80 + 4]);
        v62 = v113;
      }

      while (v112 != v61);
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v81 = v126;
  static Separator.thickness(compatibleWith:)();

  v82 = v121;
  swift_allocObject();
  v83 = LayoutViewPlaceholder.init(representing:)();
  (*(v104 + 16))(v99, v108, v105);
  v127 = v82;
  v128 = &protocol witness table for LayoutViewPlaceholder;
  *&v126 = v93;
  v125[23] = v82;
  v125[24] = &protocol witness table for LayoutViewPlaceholder;
  v125[19] = &protocol witness table for LayoutViewPlaceholder;
  v125[20] = v92;
  v125[18] = v82;
  v125[14] = &protocol witness table for LayoutViewPlaceholder;
  v125[15] = v91;
  v125[13] = v82;
  v125[9] = &protocol witness table for LayoutViewPlaceholder;
  v125[10] = v83;
  v122 = v83;
  v125[8] = v82;
  v125[5] = v103;
  sub_10002C0AC(v131, v125);
  sub_10002C0AC(v130, &v124);

  PrivacyType.style.getter();
  v84 = v100;
  PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_10023EB94(&qword_10097AA30, &type metadata accessor for PrivacyTypeLayout, &protocol conformance descriptor for PrivacyTypeLayout);
  v85 = v95;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v37 = v86;

  swift_unknownObjectRelease();

  (*(v94 + 8))(v84, v85);
  sub_100007000(v130);
  sub_100007000(v131);
  (*(v107 + 8))(v106, v109);
  (*(v104 + 8))(v108, v105);
  return v37;
}

uint64_t sub_10023EB94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10023EBDC(uint64_t a1, double a2, double a3)
{
  type metadata accessor for PrivacyCategoryLayout();

  return sub_10037A170();
}

double sub_10023EC64()
{
  sub_10002849C(&qword_10097AB10, &qword_1007D5480);
  sub_100097060(&qword_10097AB18, &qword_10097AB10, &qword_1007D5480, &unk_1007C67E0);
  ShelfBasedCollectionViewController.pageGridProvider.getter();
  sub_10002849C(&qword_10097AB20, &qword_1007C2218);
  sub_10002849C(&unk_10097F5C0, &qword_1007C69E0);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v2, *(&v3 + 1));
    dispatch thunk of PageGridCaching.invalidateCache()();
    sub_100007000(&v2);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_10002B894(&v2, &qword_10097AB28, &qword_1007C2220);
  }

  type metadata accessor for TodayCardGridTracker();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 16) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10023EDE8(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097F530, &qword_1007BCF10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10002849C(&unk_10097F490, &qword_1007C2210);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100031660(a1, &v16[-1] - v7, &unk_10097F490, &qword_1007C2210);
  v9 = sub_10002849C(&qword_100977FC8, &qword_1007C6940);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &unk_10097F490, &qword_1007C2210);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    SnapshotUpdate.contentSnapshot.getter();
    (*(v10 + 8))(v8, v9);
    v11 = ModelMappedDiffableDataSourceContentSnapshot.reloadedItems.getter();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10002849C(&qword_10097AB08, &unk_1007C69D0);
    v13 = sub_100097060(&unk_10097F5B0, &qword_10097AB08, &unk_1007C69D0, &protocol conformance descriptor for Set<A>);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = ComponentHeightCache.invalidate(items:)();
  if (v17)
  {
    return sub_100007000(v16);
  }

  return result;
}

void sub_10023F078()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_10023F264()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_10023F450()
{
  v1 = sub_10002849C(&unk_10097F490, &qword_1007C2210);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_10002849C(&qword_10097AAF8, &qword_1007D8F90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v33 = [Strong view];
  if (v33)
  {
    v10 = [v34 collectionView];
    if (v10)
    {
      v11 = v10;
      if (*(v0 + 48) && (*(v0 + 72) & 1) == 0)
      {
        if ((*(v0 + 72) & 0x100) != 0)
        {
          v16 = *(v0 + 64) + -1.0;
        }

        else
        {
          v16 = *(v0 + 56);
        }

        [v10 frame];
        v13 = v19;
        v15 = v20;
        [v33 bounds];
        Width = CGRectGetWidth(v39);
        if (v16 >= Width)
        {
          v16 = Width;
        }

        [v33 bounds];
        MinX = CGRectGetMidX(v40) + v16 * -0.5;
      }

      else
      {
        [v10 frame];
        v13 = v12;
        v15 = v14;
        [v33 bounds];
        v16 = CGRectGetWidth(v37);
        [v33 bounds];
        MinX = CGRectGetMinX(v38);
      }

      [v11 setFrame:{MinX, v13, v16, v15}];

      v22 = *(v0 + 24);
      if (v22)
      {
        [v22 updateConfiguration];
      }

      if (*(v0 + 48) && (v23 = *(v0 + 74), v23 != 2) && (v23 & 1) != 0)
      {
        v24 = v11;
        UIView.traitOverrides.getter();
        UIMutableTraits.horizontalSizeClass.setter();
        UIView.traitOverrides.setter();

        type metadata accessor for LocalPreferences();
        static LocalPreferences.AppStoreKit.getter();
        if (qword_10096EAA0 != -1)
        {
          swift_once();
        }

        v25 = sub_1000056A8(v4, qword_1009D2D58);
        (*(v5 + 16))(v7, v25, v4);
        v26 = ASKDeviceTypePhone;
        v35[0] = ASKDeviceTypePhone;
        type metadata accessor for DeviceType(0);
        v27 = v26;
        Preferences.subscript.setter();
      }

      else
      {
        type metadata accessor for UITraitHorizontalSizeClass();
        v28 = v11;
        UIView.traitOverrides.getter();
        UITraitOverrides.remove(_:)();
        UIView.traitOverrides.setter();

        type metadata accessor for LocalPreferences();
        static LocalPreferences.AppStoreKit.getter();
        if (qword_10096EAA0 != -1)
        {
          swift_once();
        }

        v29 = sub_1000056A8(v4, qword_1009D2D58);
        v35[3] = v4;
        v35[4] = sub_100097060(&qword_10097AB00, &qword_10097AAF8, &qword_1007D8F90, &protocol conformance descriptor for PreferenceKey<A>);
        v30 = sub_1000056E0(v35);
        (*(v5 + 16))(v30, v29, v4);
        LocalPreferences.removeValue(forKey:)();

        sub_100007000(v35);
      }

      sub_10023EC64();
      v31 = sub_10002849C(&qword_100977FC8, &qword_1007C6940);
      (*(*(v31 - 8) + 56))(v3, 1, 1, v31);
      sub_10023EDE8(v3);
      sub_10002B894(v3, &unk_10097F490, &qword_1007C2210);
      [v11 reloadData];

      return;
    }

    v18 = v33;
  }

  else
  {
    v18 = v34;
  }
}

double sub_10023FA00(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 71) = *(a1 + 31);
  if (!*(a1 + 8) || (v6 = *(v1 + 40), v5 = *(v1 + 48), , !v5))
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_10023F450();
    goto LABEL_12;
  }

  if (!v2)
  {

    goto LABEL_11;
  }

  if (v6 == v3 && v2 == v5)
  {

    goto LABEL_12;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  return result;
}

void sub_10023FAD4(__n128 a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v64 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [Strong view];

    if (v15)
    {
      if ((sub_1001DFF18() & 1) != 0 && !*(v1 + 24))
      {
        v73 = v3;
        v25 = [v15 window];
        v70 = v7;
        v71 = v6;
        v72 = v9;
        if (v25 && (v26 = v25, v27 = [v25 windowScene], v26, v27))
        {
          v28 = [v27 screen];

          [v28 bounds];
          v30 = v29;
          v32 = v31;
        }

        else
        {
          [v15 bounds];
          v30 = v33;
          v32 = v34;
        }

        v35 = 0;
        v36 = _swiftEmptyArrayStorage;
        v37 = 19;
        if (v30 <= v32)
        {
          v30 = v32;
        }

        v74 = v1;
        aBlock[0] = _swiftEmptyArrayStorage;
        v38 = v73;
        v69 = v15;
LABEL_15:
        if (v35 > 0x13)
        {
          v37 = v35;
        }

        v39 = v37 + 1;
        v40 = (&off_1008AFCE0 + 5 * v35);
        while (v35 != 19)
        {
          if (v39 == ++v35)
          {
            __break(1u);
            return;
          }

          v41 = (v40 + 5);
          v42 = *(v40 + 6);
          v43 = *(v40 + 64);
          v44 = v42;
          if (v43)
          {
            v44 = v30;
          }

          v40 += 5;
          if (v44 <= v30)
          {
            v45 = *(v41 + 26);
            v66 = *(v41 + 25);
            v67 = v45;
            v65 = v41[2];
            v47 = *(v41 - 1);
            v46 = *v41;
            v68 = sub_100005744(0, &qword_10097CD40, UIAction_ptr);
            v48 = swift_allocObject();
            swift_weakInit();
            v49 = swift_allocObject();
            *(v49 + 16) = v48;
            *(v49 + 24) = v47;
            *(v49 + 32) = v46;
            *(v49 + 40) = v42;
            *(v49 + 48) = v65;
            *(v49 + 56) = v43;
            v50 = v67;
            *(v49 + 57) = v66;
            *(v49 + 58) = v50;
            swift_bridgeObjectRetain_n();
            UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v36 = aBlock[0];
            v38 = v73;
            v37 = 19;
            goto LABEL_15;
          }
        }

        sub_100005744(0, &qword_10097AAF0, UIMenu_ptr);
        v51._object = 0x80000001008094C0;
        v51._countAndFlagsBits = 0xD000000000000011;
        v76.value.super.isa = 0;
        v76.is_nil = 0;
        isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v51, 0, v76, 32, 0xFFFFFFFFFFFFFFFFLL, v36, v63).super.super.isa;
        v68 = isa;
        static UIButton.Configuration.filled()();
        UIButton.Configuration.title.setter();
        v53 = String._bridgeToObjectiveC()();
        v54 = [objc_opt_self() systemImageNamed:v53];

        UIButton.Configuration.image.setter();
        UIButton.Configuration.imagePadding.setter();
        UIButton.Configuration.imagePlacement.setter();
        (*(v38 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.large(_:), v2);
        UIButton.Configuration.cornerStyle.setter();
        v55 = objc_opt_self();
        v56 = [v55 systemBlueColor];
        UIButton.Configuration.baseBackgroundColor.setter();
        v57 = [v55 whiteColor];
        UIButton.Configuration.baseForegroundColor.setter();
        v58 = swift_allocObject();
        swift_weakInit();
        sub_100005744(0, &qword_1009811E0, UIButton_ptr);
        v7 = v70;
        v6 = v71;
        (*(v70 + 16))(v72, v12, v71);
        v59 = UIButton.init(configuration:primaryAction:)();
        [v59 setMenu:isa];
        [v59 setShowsMenuAsPrimaryAction:1];
        aBlock[4] = sub_100240E44;
        aBlock[5] = v58;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100080D48;
        aBlock[3] = &unk_1008BA4A0;
        v60 = _Block_copy(aBlock);

        v3 = v73;

        [v59 setConfigurationUpdateHandler:v60];
        _Block_release(v60);
        v61 = *(v74 + 24);
        *(v74 + 24) = v59;
        v62 = v59;

        v9 = v72;
        sub_10023F078();
        v1 = v74;

        v15 = v69;

        (*(v7 + 8))(v12, v6);
        if (sub_1001DFF3C())
        {
          goto LABEL_6;
        }
      }

      else if (sub_1001DFF3C())
      {
LABEL_6:
        if (!*(v1 + 32))
        {
          static UIButton.Configuration.filled()();
          v74 = v1;
          UIButton.Configuration.title.setter();
          v16 = String._bridgeToObjectiveC()();
          v17 = [objc_opt_self() systemImageNamed:v16];

          UIButton.Configuration.image.setter();
          UIButton.Configuration.imagePadding.setter();
          UIButton.Configuration.imagePlacement.setter();
          (*(v3 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.large(_:), v2);
          UIButton.Configuration.cornerStyle.setter();
          v18 = objc_opt_self();
          v19 = [v18 systemRedColor];
          UIButton.Configuration.baseBackgroundColor.setter();
          v20 = [v18 whiteColor];
          UIButton.Configuration.baseForegroundColor.setter();
          sub_100005744(0, &qword_1009811E0, UIButton_ptr);
          (*(v7 + 16))(v9, v12, v6);
          sub_100005744(0, &qword_10097CD40, UIAction_ptr);
          UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v21 = UIButton.init(configuration:primaryAction:)();
          v22 = *(v74 + 32);
          *(v74 + 32) = v21;
          v23 = v7;
          v24 = v21;

          sub_10023F264();
          (*(v23 + 8))(v12, v6);
          return;
        }
      }
    }
  }
}

double sub_1002403F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *(a3 + 32);
  v8 = *(a3 + 33);
  v9 = *(a3 + 34);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v8)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = v4;
    v12[1] = v3;
    v12[2] = v5;
    v12[3] = v6;
    v14 = v9;
    v13 = v11 | v7;

    sub_10023FA00(v12);
  }

  return result;
}

uint64_t sub_1002404A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  UIButton.configuration.getter();
  v8 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_100031660(v7, v4, &qword_10097CC90, &unk_1007BB2A0);
    UIButton.configuration.setter();
    return sub_10002B894(v7, &qword_10097CC90, &unk_1007BB2A0);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 48))
      {
      }
    }

    UIButton.Configuration.title.setter();
    return UIButton.configuration.setter();
  }
}

void sub_10024065C()
{
  v0 = [objc_opt_self() sharedURLCache];
  [v0 removeAllCachedResponses];

  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = String._bridgeToObjectiveC()();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);

  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

void sub_100240748()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v68 = [Strong view];

    if (v68)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 traitCollection];

        if (v5)
        {
          v6 = *(v0 + 24);
          v7 = &selRef__setDefaultAttributes_;
          v8 = &selRef_numberOfSegments;
          if (v6)
          {
            v9 = v6;
            [v68 bounds];
            [v9 sizeThatFits:{v10, v11}];
            v13 = v12;
            v15 = v14;
            [v68 bounds];
            v16 = CGRectGetMaxX(v70) - v13;
            if (qword_10096E6D8 != -1)
            {
              swift_once();
            }

            v17 = type metadata accessor for StaticDimension();
            sub_1000056A8(v17, qword_1009D24A8);
            type metadata accessor for TraitEnvironmentPlaceholder();
            sub_10002849C(&qword_100973210, qword_1007B0BB0);
            v18 = swift_allocObject();
            v67 = xmmword_1007B0B70;
            *(v18 + 16) = xmmword_1007B0B70;
            *(v18 + 32) = v5;
            v19 = v5;
            v20 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
            dispatch thunk of AnyDimension.rawValue(in:)();
            v22 = v21;

            v23 = v16 - v22;
            [v68 bounds];
            MaxY = CGRectGetMaxY(v71);
            [v68 safeAreaInsets];
            v26 = MaxY - v25 - v15;
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_1007B0B70;
            *(v27 + 32) = v19;
            v28 = v19;
            v29 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
            dispatch thunk of AnyDimension.rawValue(in:)();
            v31 = v30;

            v7 = &selRef__setDefaultAttributes_;
            [v9 setFrame:{v23, v26 - v31, v13, v15}];

            v8 = &selRef_numberOfSegments;
            [v68 bringSubviewToFront:v9];
          }

          v32 = *(v0 + 32);
          if (v32)
          {
            v33 = v32;
            [v68 bounds];
            [v33 sizeThatFits:{v34, v35}];
            v37 = v36;
            v39 = v38;
            v40 = *(v0 + 24);
            if (v40)
            {
              v41 = v40;
              [v41 frame];
              v42 = CGRectGetMinX(v72) - v37;
              if (qword_10096E6C8 != -1)
              {
                swift_once();
              }

              v43 = type metadata accessor for StaticDimension();
              sub_1000056A8(v43, qword_1009D2478);
              type metadata accessor for TraitEnvironmentPlaceholder();
              sub_10002849C(&qword_100973210, qword_1007B0BB0);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1007B0B70;
              *(v44 + 32) = v5;
              v45 = v5;
              v46 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
              dispatch thunk of AnyDimension.rawValue(in:)();
              v48 = v47;
            }

            else
            {
              [v68 bounds];
              v42 = CGRectGetMaxX(v73) - v37;
              if (qword_10096E6D8 != -1)
              {
                swift_once();
              }

              v49 = type metadata accessor for StaticDimension();
              sub_1000056A8(v49, qword_1009D24A8);
              type metadata accessor for TraitEnvironmentPlaceholder();
              sub_10002849C(&qword_100973210, qword_1007B0BB0);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_1007B0B70;
              *(v50 + 32) = v5;
              v51 = v5;
              v52 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
              dispatch thunk of AnyDimension.rawValue(in:)();
              v48 = v53;
            }

            v54 = v42 - v48;
            v55 = *(v0 + 24);
            if (v55)
            {
              v56 = v55;
              [v56 frame];
              MinY = CGRectGetMinY(v74);
            }

            else
            {
              [v68 bounds];
              v58 = CGRectGetMaxY(v75);
              [v68 safeAreaInsets];
              v60 = v58 - v59 - v39;
              if (qword_10096E6D8 != -1)
              {
                swift_once();
              }

              v61 = type metadata accessor for StaticDimension();
              sub_1000056A8(v61, qword_1009D24A8);
              type metadata accessor for TraitEnvironmentPlaceholder();
              sub_10002849C(&qword_100973210, qword_1007B0BB0);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_1007B0B70;
              *(v62 + 32) = v5;
              v63 = v5;
              v64 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
              dispatch thunk of AnyDimension.rawValue(in:)();
              v66 = v65;

              MinY = v60 - v66;
            }

            [v33 v7[490]];

            [v68 v8[63]];
          }
        }
      }
    }
  }
}

uint64_t sub_100240D80()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_100240DF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v9 = *(v1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_1002403F4(a1, v2, v8);
}

double sub_100240E50()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_10097AB30);
  sub_1000056A8(v0, qword_10097AB30);
  AspectRatio.init(_:_:)();
  return result;
}

uint64_t sub_100240EA4()
{
  v0 = sub_10002849C(&qword_10097ABD8, qword_1007DEBB0);
  sub_100005644(v0, qword_10097AB48);
  sub_1000056A8(v0, qword_10097AB48);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for UIRectEdge(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_100240F48(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_blurOverlayView] = 0;
  v6 = &v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_interactiveDismissal];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissCompleted] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY] = 0;
  v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_isScrollDismissActive] = 0;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView] = v7;
  type metadata accessor for TransitioningPresentedContainerView();
  *&v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v29, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v9 = objc_allocWithZone(UITapGestureRecognizer);
  v10 = v8;
  v11 = [v9 initWithTarget:v10 action:"didTapOverlayView:"];
  v12 = *&v10[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer];
  *&v10[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer] = v11;
  v13 = v11;

  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView;
  v15 = *&v10[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView];
  [v15 addGestureRecognizer:v13];

  v16 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v10 action:"edgePanDidChange:"];
  v17 = OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer;
  v18 = *&v10[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
  *&v10[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer] = v16;
  v19 = v16;

  if (!v19)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_10096D480 != -1)
  {
    swift_once();
  }

  v20 = sub_10002849C(&qword_10097ABD8, qword_1007DEBB0);
  sub_1000056A8(v20, qword_10097AB48);
  v21 = v10;
  Conditional.evaluate(with:)();

  [v19 setEdges:{v28, v10}];
  v22 = *&v10[v17];
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v21;
  v24 = v22;
  v25 = [v23 traitCollection];
  v26 = [v25 horizontalSizeClass];

  [v24 setEnabled:v26 != 2];
  if (*&v10[v17])
  {
    [*&v10[v14] addGestureRecognizer:?];
    v27 = [v23 traitCollection];

    sub_1002412C0(v27);
    [*&v23[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_presentedContainerView] setClipsToBounds:0];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1002412C0(uint64_t a1)
{
  v2 = v1;
  if (UITraitCollection.isSizeClassRegular.getter())
  {
    v3 = OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_blurOverlayView;
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_blurOverlayView);
    if (v4 || (v5 = [objc_opt_self() effectWithStyle:4], v6 = objc_msgSend(objc_allocWithZone(UIVisualEffectView), "initWithEffect:", v5), v5, sub_100241520(v6), (v4 = *(v2 + v3)) != 0))
    {
      v7 = *(v2 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView);
      v8 = v4;
      [v7 bounds];
      [v8 setFrame:{0.0, 0.0}];

      v9 = *(v2 + v3);
      if (v9)
      {
        [v9 setHidden:0];
      }
    }

    v10 = *(v2 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView);
    v15 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor:v15];
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView);
    v12 = [objc_opt_self() blackColor];
    v13 = [v12 colorWithAlphaComponent:0.4];

    [v11 setBackgroundColor:v13];
    v14 = *(v2 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_blurOverlayView);
    if (v14)
    {

      [v14 setHidden:1];
    }
  }
}

void sub_100241520(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_blurOverlayView;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_blurOverlayView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  if (a1)
  {
    [*(v1 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView) addSubview:v6];
  }
}

void sub_10024165C()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    v6 = [v1 traitCollection];
    UITraitCollection.prefersAccessibilityLayouts.getter();

    [v3 bounds];
    CGRectGetWidth(v19);
    if (qword_10096D478 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for AspectRatio();
    sub_1000056A8(v7, qword_10097AB30);
    AspectRatio.height(fromWidth:)();
    [v3 bounds];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    CGRectGetMidX(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGRectGetMidY(v21);

    return;
  }

  v12 = [v1 presentingViewController];
  sub_100041CD0();

  v13 = [v1 presentingViewController];
  v14 = [v13 view];

  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v14 safeAreaInsets];

  v15 = [v1 presentingViewController];
  v16 = [v15 view];

  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v16 safeAreaInsets];

  [v3 bounds];
  if (qword_10096D928 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_1000056A8(v17, qword_1009CFBA0);
  AspectRatio.height(fromWidth:)();
  v18 = [v1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    UITraitCollection.isSizeClassCompact.getter();
  }

  [v3 bounds];
  CGRectGetMinY(v22);
  [v3 bounds];
  CGRectGetMinX(v23);
}

void sub_100241A14()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "containerViewWillLayoutSubviews");
  v1 = [v0 containerView];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView];
    [v1 bounds];
    [v3 setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_blurOverlayView];
    if (v4)
    {
      v5 = v4;
      [v2 bounds];
      [v5 setFrame:{0.0, 0.0}];
    }

    v6 = *&v0[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_presentedContainerView];
    sub_10024165C();
    [v6 setFrame:?];
  }
}

void sub_100241B50(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    sub_1002412C0(a1);
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_1002438A4;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1006D1458;
    v11[3] = &unk_1008BA608;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_100241D10(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_presentedContainerView] + OBJC_IVAR____TtC8AppStore35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_100243880;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006D1458;
  v10[3] = &unk_1008BA5B8;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_100241EC4()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v18 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView];
    [v6 setFrame:?];
    v7 = *&v0[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_blurOverlayView];
    if (v7)
    {
      [v7 setFrame:{0.0, 0.0, v3, v5}];
    }

    [v18 addSubview:v6];
    v8 = [v0 presentedViewController];
    v9 = [v8 view];

    if (v9)
    {
      [v9 setAutoresizingMask:18];
      v10 = *&v0[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_presentedContainerView];
      [v10 bounds];
      [v9 setFrame:?];
      [v10 addSubview:v9];
      v11 = [v0 presentedViewController];
      v12 = [v11 contentScrollView];

      sub_1002437AC(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_1002437AC(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v13 = [v0 presentedViewController];
    v14 = [v13 transitionCoordinator];

    [v6 setAlpha:0.0];
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v0;
      aBlock[4] = sub_1002437A4;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006D1458;
      aBlock[3] = &unk_1008BA568;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v17 = v0;

      [v14 animateAlongsideTransition:v16 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002421DC(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_100242324(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

double sub_100242474()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_10024379C;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1006D1458;
    v7[3] = &unk_1008BA518;
    v5 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v6 = v0;

    [v2 animateAlongsideTransition:v5 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002425A0(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView] setAlpha:0.0];
  v3 = [a2 presentedViewController];
  v4 = [v3 view];

  if (v4)
  {
    v5 = [v4 layer];

    [v5 setMaskedCorners:15];
  }

  v6 = [a2 presentedViewController];
  [v6 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_10024279C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_interactiveDismissal;
  swift_beginAccess();
  sub_100243654(a1, v1 + v3);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1002436C4(v1 + v3, v8);
    v6 = v9 == 0;
    sub_100243734(v8);
    [v5 setShowsVerticalScrollIndicator:v6];
  }

  return sub_100243734(a1);
}

void sub_100242854(void *a1)
{
  [*&v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v31) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 >= 1.0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    if (v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissCompleted])
    {
      return;
    }

    v11 = &v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_interactiveDismissal];
    swift_beginAccess();
    if (*(v11 + 24))
    {
      sub_10002C0AC(v11, &v28);
      v12 = *(&v29 + 1);
      v13 = v30;
      sub_10002A400(&v28, *(&v29 + 1));
      (v13[4])(v12, v13);
      sub_100007000(&v28);
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
LABEL_25:
    sub_10024279C(&v28);
    return;
  }

  if (v7 == 1)
  {
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1007B0B70;
    v15 = [v1 presentedViewController];
    v16 = [v15 view];

    if (!v16)
    {
      __break(1u);
      return;
    }

    *(v14 + 32) = v16;
    v17 = [v1 presentedViewController];
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    v19 = _swiftEmptyArrayStorage;
    if (v18 && v17)
    {
      v20 = v18;
      v21 = v1;
      ObjectType = swift_getObjectType();
      v23 = (*(v20 + 16))(ObjectType, v20);
      if (v23)
      {
        v24 = v23;
        v19 = swift_allocObject();
        *(v19 + 1) = xmmword_1007B0B70;
        v19[4] = v24;
      }

      v1 = v21;
    }

    v25 = [v1 traitCollection];
    *(&v29 + 1) = &type metadata for ScaleDownInteractiveDismissal;
    v30 = &off_1008B8010;
    v26 = swift_allocObject();
    *&v28 = v26;
    *(v26 + 16) = v14;
    *(v26 + 24) = v19;
    *(v26 + 32) = v25;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_25;
  }

  if (v7 != 2)
  {
    return;
  }

  if (v6 >= 1.0)
  {
LABEL_26:
    v27 = [v1 presentedViewController];
    [v27 dismissViewControllerAnimated:1 completion:0];

    v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissCompleted] = 1;
    return;
  }

  v8 = &v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v8 + 24))
  {
    sub_10002C0AC(v8, &v28);
    v9 = *(&v29 + 1);
    v10 = v30;
    sub_10002A400(&v28, *(&v29 + 1));
    (v10[2])(v9, v10, v6);
    sub_100007000(&v28);
  }
}

void sub_100242CAC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v4 = OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v42) * 0.18;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != 3)
          {
            goto LABEL_36;
          }

          if (v11 >= 1.0)
          {
LABEL_39:
            v36 = [v1 presentedViewController];
            [v36 dismissViewControllerAnimated:1 completion:0];

            v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissCompleted] = 1;
            return;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          if (v11 < 1.0)
          {
            v13 = &v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_interactiveDismissal];
            swift_beginAccess();
            if (*(v13 + 24))
            {
              sub_10002C0AC(v13, &v38);
              v14 = *(&v39 + 1);
              v15 = v40;
              sub_10002A400(&v38, *(&v39 + 1));
              (v15[2])(v14, v15, v11);

              sub_100007000(&v38);
              return;
            }

            goto LABEL_38;
          }

          goto LABEL_39;
        }

LABEL_36:

LABEL_38:

        return;
      }

      if (v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissCompleted])
      {
        goto LABEL_36;
      }

      v33 = &v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v33 + 24))
      {
        sub_10002C0AC(v33, &v38);
        v34 = *(&v39 + 1);
        v35 = v40;
        sub_10002A400(&v38, *(&v39 + 1));
        (v35[4])(v34, v35);
        sub_100007000(&v38);
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      sub_10024279C(&v38);

      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
      {
        goto LABEL_36;
      }

      [v37 contentOffset];
      v17 = v16;
      [v37 adjustedContentInset];
      if (v17 + v18 > 0.0)
      {
        goto LABEL_36;
      }

      [a1 velocityInView:v37];
      if (v19 <= 0.0)
      {
        goto LABEL_36;
      }

      [v37 adjustedContentInset];
      [v37 contentOffset];
      [v37 setContentOffset:?];
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007B0B70;
      v21 = [v1 presentedViewController];
      v22 = [v21 view];

      if (v22)
      {
        *(v20 + 32) = v22;
        v23 = [v1 presentedViewController];
        swift_getObjectType();
        v24 = swift_conformsToProtocol2();
        v25 = _swiftEmptyArrayStorage;
        if (v24 && v23)
        {
          v26 = v24;
          v27 = v1;
          ObjectType = swift_getObjectType();
          v29 = (*(v26 + 16))(ObjectType, v26);
          if (v29)
          {
            v30 = v29;
            v25 = swift_allocObject();
            *(v25 + 1) = xmmword_1007B0B70;
            v25[4] = v30;
          }

          v1 = v27;
        }

        *(&v39 + 1) = &type metadata for PullDownInteractiveDismissal;
        v40 = &off_1008B8038;
        *&v38 = v20;
        *(&v38 + 1) = v25;
        *&v39 = 0x3FB1EB851EB851ECLL;
        sub_10024279C(&v38);
        [a1 translationInView:0];
        v32 = v31;

        *&v1[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY] = v32;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100243300(void *a1)
{
  v2 = v1;
  v19.receiver = v1;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || v5 != [a1 layoutDirection])
  {
    v6 = *&v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
    if (!v6)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = qword_10096D480;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_10002849C(&qword_10097ABD8, qword_1007DEBB0);
    sub_1000056A8(v9, qword_10097AB48);
    v10 = v2;
    Conditional.evaluate(with:)();

    [v8 setEdges:{v18, v2}];
  }

  v11 = [v2 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (a1 && v12 == [a1 horizontalSizeClass])
  {
    goto LABEL_11;
  }

  v13 = *&v2[OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
  if (v13)
  {
    v14 = v13;
    v15 = [v2 traitCollection];
    v16 = [v15 horizontalSizeClass];

    [v14 setEnabled:v16 != 2];
LABEL_11:
    v17 = [v2 containerView];
    [v17 setNeedsLayout];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_100243654(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097ABE0, qword_1007C2290);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002436C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097ABE0, qword_1007C2290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100243734(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097ABE0, qword_1007C2290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002437AC(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

id sub_1002438A4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_overlayView);
  [*(v0 + 24) bounds];

  return [v1 setFrame:?];
}

uint64_t sub_100243910()
{
  v6 = [v0 presentedViewController];
  sub_100065AF0();
  sub_10002849C(&qword_10097AC58, &qword_1007C2318);
  if (swift_dynamicCast())
  {
    sub_100005A38(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10002A400(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_100007000(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10002B894(v4, &unk_10097AC60, qword_1007C2320);
  }
}

uint64_t sub_100243A00()
{
  v6 = [v0 presentedViewController];
  sub_100065AF0();
  sub_10002849C(&qword_10097AC58, &qword_1007C2318);
  if (swift_dynamicCast())
  {
    sub_100005A38(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10002A400(v7, v8);
    (*(v2 + 16))(v1, v2);
    return sub_100007000(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10002B894(v4, &unk_10097AC60, qword_1007C2320);
  }
}

void sub_100243AF0(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  *&v3[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = 0;
  v10 = &v3[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_interactiveDismissal];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_isScrollDismissActive] = 0;
  v11 = [objc_opt_self() effectWithStyle:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v3[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView] = v12;
  type metadata accessor for ShadowView();
  *&v3[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  *&v3[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v14 = objc_allocWithZone(UITapGestureRecognizer);
  v15 = v13;
  v16 = [v14 initWithTarget:v15 action:"dismissTapDidChange:"];
  v17 = *&v15[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer];
  *&v15[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = *&v15[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView];
    [v19 addGestureRecognizer:v18];

    v20 = OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_shadowView;
    v21 = qword_10096DA38;
    v22 = *&v15[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_shadowView];
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Shadow();
    v24 = sub_1000056A8(v23, qword_1009CFD08);
    v25 = *(v23 - 8);
    (*(v25 + 16))(v9, v24, v23);
    (*(v25 + 56))(v9, 0, 1, v23);
    dispatch thunk of ShadowView.shadow.setter();

    v26 = [*&v15[v20] layer];
    [v26 setMaskedCorners:3];

    [*&v15[v20] _setContinuousCornerRadius:20.0];
    [*&v15[v20] setAutoresizingMask:18];
    v27 = *&v15[v20];
    dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

    v28 = OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_presentedContainerView;
    [*&v15[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_presentedContainerView] setClipsToBounds:0];
    v29 = *&v15[v28];
    v30 = *&v15[v20];
    [v29 bounds];
    [v30 setFrame:?];

    [*&v15[v28] addSubview:*&v15[v20]];
  }

  else
  {
    __break(1u);
  }
}

void sub_100243F9C()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v54 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 containerView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v57 = v10;
  v16 = [v1 traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 != 2)
  {
    v50 = [v1 presentingViewController];
    v51 = [v50 view];

    if (v51)
    {
      [v51 bounds];

      return;
    }

    goto LABEL_23;
  }

  v55 = v13;
  v56 = v9;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  v18 = [v1 presentingViewController];
  v19 = [v18 view];

  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v19 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [v1 presentingViewController];
  v25 = [v24 view];

  if (!v25)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v54[1] = v21;
  v54[2] = v23;
  [v25 safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  v26 = v55;
  if (qword_10096DB10 != -1)
  {
    swift_once();
  }

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v3 + 8))(v8, v2);
  v27 = [v1 presentingViewController];
  v28 = [v27 traitCollection];

  PageGrid.containerWidth.getter();
  UITraitCollection.isSizeClassRegular.getter();

  [v15 safeAreaInsets];
  v31 = fmax(v30, 44.0);
  if (v29 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v15 bounds];
  v58.origin.x = sub_1000CC354(v33, v34, v35, v36, v31, v32);
  CGRectGetHeight(v58);
  static CGRect.frame(centeredWithin:of:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v1 presentedViewController];
  type metadata accessor for ComponentViewOverflowViewController();
  v46 = swift_dynamicCastClass();
  v47 = v57;
  if (v46)
  {
    sub_1002A91B4(v42, v44);
    v49 = v48;
  }

  else
  {

    v52 = [v1 presentedViewController];
    type metadata accessor for ProductPageReviewsOverflowViewController(0);
    if (swift_dynamicCastClass())
    {
      v49 = sub_10018CC08();
    }

    else
    {

      v49 = v44;
    }
  }

  v53 = v56;
  v59.origin.x = v38;
  v59.origin.y = v40;
  v59.size.width = v42;
  v59.size.height = v44;
  if (CGRectGetHeight(v59) >= v49)
  {
    static CGRect.frame(centeredWithin:of:)();
  }

  else
  {
    [v15 safeAreaInsets];

    sub_1000CC354(v38, v40, v42, v44, 0.0, 0.0);
  }

  (*(v47 + 8))(v26, v53);
}

void sub_100244650(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_100245F68;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1006D1458;
    v11[3] = &unk_1008BA748;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_100244788(int a1, char *a2, void *a3)
{
  v5 = [a2 presentedViewController];
  v10 = [v5 view];

  v6 = [a2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 2)
  {
    if (v10)
    {
      v8 = *&a2[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_shadowView];
      v9 = v10;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v10)
  {
    [v10 _setContinuousCornerRadius:0.0];
  }

  [a3 bounds];
  [*&a2[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
}

void sub_10024494C(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_presentedContainerView] + OBJC_IVAR____TtC8AppStore35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_100245F44;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006D1458;
  v10[3] = &unk_1008BA6F8;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_100244B00()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "containerViewWillLayoutSubviews");
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    [*&v0[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_presentedContainerView];
    sub_100243F9C();
    [v4 setFrame:?];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v0 containerView];
    if (!v13)
    {
LABEL_12:

      return;
    }

    v14 = v13;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = 0.0;
    v29.size.height = 0.0;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    if (CGRectEqualToRect(v25, v29) || ([v14 bounds], v30.origin.x = 0.0, v30.origin.y = 0.0, v30.size.width = 0.0, v30.size.height = 0.0, CGRectEqualToRect(v26, v30)))
    {
LABEL_11:

      v3 = v14;
      goto LABEL_12;
    }

    [v14 bounds];
    MaxY = CGRectGetMaxY(v27);
    [v14 safeAreaInsets];
    v17 = MaxY - v16;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v18 = CGRectGetMaxY(v28);
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v17 >= v18)
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 15;
        goto LABEL_10;
      }
    }

    else
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 3;
LABEL_10:
        v23 = v21;

        [v23 setMaskedCorners:v22];
        v3 = v14;
        v14 = v23;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100244DB4()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView];
    [v2 setFrame:?];
    [v17 addSubview:v2];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v4 setClipsToBounds:1];
      [v4 setAutoresizingMask:18];
      v5 = *&v0[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_presentedContainerView];
      [v5 bounds];
      [v4 setFrame:?];
      v6 = [v4 layer];
      v7 = *&v0[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_shadowView];
      v8 = [v7 layer];
      v9 = [v8 maskedCorners];

      [v6 setMaskedCorners:v9];
      [v7 _cornerRadius];
      [v4 _setCornerRadius:?];
      [v5 addSubview:v4];
      v10 = [v0 presentedViewController];
      v11 = [v10 contentScrollView];

      sub_100245E70(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_100245E70(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v12 = [v0 presentedViewController];
    v13 = [v12 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      aBlock[4] = sub_100245E68;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006D1458;
      aBlock[3] = &unk_1008BA6A8;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v16 = v0;

      [v13 animateAlongsideTransition:v15 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10024513C(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_100245284(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

double sub_1002453D4()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_100245E60;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1006D1458;
    v7[3] = &unk_1008BA658;
    v5 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v6 = v0;

    [v2 animateAlongsideTransition:v5 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100245500(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView] setAlpha:0.0];
  v3 = *&a2[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_shadowView];
  [v3 setAlpha:0.0];
  v4 = [a2 presentedViewController];
  v5 = [v4 view];

  if (v5)
  {
    [v3 _cornerRadius];
    [v5 _setCornerRadius:?];
  }

  v6 = [a2 presentedViewController];
  v7 = [v6 view];

  if (v7)
  {
    v8 = [v7 layer];

    [v8 setMaskedCorners:15];
  }

  v9 = [a2 presentedViewController];
  [v9 setNeedsStatusBarAppearanceUpdate];
}

void sub_100245778(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v4 = OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v38) * 0.14;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != 3)
          {
            goto LABEL_27;
          }

          if (v11 == 1.0)
          {
            v32 = [v1 presentedViewController];
            [v32 dismissViewControllerAnimated:1 completion:0];

            goto LABEL_27;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          v13 = &v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_interactiveDismissal];
          swift_beginAccess();
          if (*(v13 + 24))
          {
            sub_10002C0AC(v13, &v34);
            v14 = *(&v35 + 1);
            v15 = v36;
            sub_10002A400(&v34, *(&v35 + 1));
            (v15[2])(v14, v15, v11);

            sub_100007000(&v34);
            return;
          }

          goto LABEL_29;
        }

LABEL_27:

LABEL_29:

        return;
      }

      v29 = &v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v29 + 24))
      {
        sub_10002C0AC(v29, &v34);
        v30 = *(&v35 + 1);
        v31 = v36;
        sub_10002A400(&v34, *(&v35 + 1));
        (v31[4])(v30, v31);

        sub_100007000(&v34);
      }

      else
      {
      }

      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_beginAccess();
      sub_100245DF0(&v34, v29);
      swift_endAccess();
      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1)
      {
        goto LABEL_27;
      }

      v16 = [v1 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 != 2)
      {
        goto LABEL_27;
      }

      [v33 contentOffset];
      v19 = v18;
      [v33 adjustedContentInset];
      if (v19 + v20 > 0.0)
      {
        goto LABEL_27;
      }

      [v33 adjustedContentInset];
      [v33 contentOffset];
      [v33 setContentOffset:?];
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007B15F0;
      v22 = [v1 presentedViewController];
      v23 = [v22 view];

      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_shadowView];
        *(v21 + 32) = v23;
        *(v21 + 40) = v24;
        v36 = &off_1008B8038;
        *&v34 = v21;
        *(&v34 + 1) = _swiftEmptyArrayStorage;
        *&v35 = 0x3FB1EB851EB851ECLL;
        *(&v35 + 1) = &type metadata for PullDownInteractiveDismissal;
        v25 = OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_interactiveDismissal;
        swift_beginAccess();
        v26 = v24;
        sub_100245DF0(&v34, &v1[v25]);
        swift_endAccess();
        [a1 translationInView:0];
        v28 = v27;

        *&v1[OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = v28;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100245DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097ABE0, qword_1007C2290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100245E70(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

unint64_t sub_100245F9C()
{
  result = qword_10097AC70;
  if (!qword_10097AC70)
  {
    type metadata accessor for SheetAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097AC70);
  }

  return result;
}

void sub_100245FF4(uint64_t a1, uint64_t a2)
{
  v92 = type metadata accessor for FlowOrigin();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for FlowAnimationBehavior();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v91 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for FlowPresentationContext();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v86 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v9 - 8);
  v85 = &v79 - v10;
  v11 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v11 - 8);
  v82 = &v79 - v12;
  v80 = type metadata accessor for FlowPage();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SheetActionStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SheetAction.style.getter();
  v18 = SheetActionStyle.allowsDisplayOfTitle.getter();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    Action.title.getter();
    v20 = v19;
    SheetAction.message.getter();
    v22 = v21;
    if (v20)
    {
      v23 = String._bridgeToObjectiveC()();

      if (!v22)
      {
        goto LABEL_8;
      }

LABEL_6:
      v25 = String._bridgeToObjectiveC()();

      goto LABEL_9;
    }

    v23 = 0;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    SheetAction.message.getter();
    v23 = 0;
    if (v24)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v25 = 0;
LABEL_9:
  v26 = [objc_opt_self() alertControllerWithTitle:v23 message:v25 preferredStyle:0];

  v97 = v26;
  [v26 setModalPresentationStyle:7];
  v27 = SheetAction.actions.getter();
  v28 = v27;
  if (v27 >> 62)
  {
LABEL_46:
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
      goto LABEL_11;
    }

LABEL_47:

    if (SheetAction.isCancelable.getter())
    {
      SheetAction.cancelTitle.getter();
      if (!v70)
      {
        v71._countAndFlagsBits = 0x432E6E6F69746341;
        v71._object = 0xED00006C65636E61;
        v72._countAndFlagsBits = 0;
        v72._object = 0xE000000000000000;
        localizedString(_:comment:)(v71, v72);
      }

      v73 = String._bridgeToObjectiveC()();

      v74 = [objc_opt_self() actionWithTitle:v73 style:1 handler:0];

      v75 = v97;
      [v97 addAction:v74];
      [v75 setPreferredAction:v74];
    }

    v109 = 0;
    aBlock = 0u;
    v108 = 0u;
    (*(v79 + 104))(v81, enum case for FlowPage.viewController(_:), v80);
    v76 = type metadata accessor for URL();
    (*(*(v76 - 8) + 56))(v82, 1, 1, v76);
    v77 = type metadata accessor for ReferrerData();
    (*(*(v77 - 8) + 56))(v85, 1, 1, v77);
    v106 = sub_100246DF4();
    v105 = v97;
    v104 = v97;
    static ActionMetrics.notInstrumented.getter();
    (*(v83 + 104))(v89, enum case for FlowPresentationContext.infer(_:), v84);
    (*(v87 + 104))(v91, enum case for FlowAnimationBehavior.infer(_:), v88);
    (*(v90 + 104))(v93, enum case for FlowOrigin.inapp(_:), v92);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v78 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005D01FC(v78, 1, a2);

    return;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_11:
  v30 = 0;
  v99 = v28 & 0xFFFFFFFFFFFFFF8;
  v100 = v28 & 0xC000000000000001;
  v98 = &v108;
  v94 = "";
  v96 = v28;
  v95 = v29;
  while (1)
  {
    if (v100)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v30 >= *(v99 + 16))
      {
        goto LABEL_45;
      }

      v31 = *(v28 + 8 * v30 + 32);

      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v33 = v30 != SheetAction.destructiveActionIndex.getter();
    v35 = ((v34 | v33) & 1) == 0;
    v36 = 2;
    if (!v35)
    {
      v36 = 0;
    }

    v102 = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = v31;
    *(v37 + 24) = a2;

    v38 = SheetAction.isCustom.getter();
    v103 = v32;
    v104 = v31;
    if ((v38 & 1) == 0)
    {
      Action.title.getter();
      if (v47)
      {

        v48 = String._bridgeToObjectiveC()();
      }

      else
      {

        v48 = 0;
      }

      v109 = sub_100246DC4;
      v110 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v108 = sub_100768994;
      *(&v108 + 1) = &unk_1008BA7B8;
      v54 = _Block_copy(&aBlock);

      v55 = [objc_opt_self() actionWithTitle:v48 style:v102 handler:v54];
      goto LABEL_40;
    }

    v39 = SheetAction.checkedIndex.getter();
    if ((v40 & 1) == 0 && v30 == v39)
    {
      v41 = objc_opt_self();
      v42 = String._bridgeToObjectiveC()();
      v43 = [v41 kitImageNamed:v42];

      if (!v43)
      {
        goto LABEL_53;
      }

      v44 = [v43 imageWithRenderingMode:2];

      v45 = [v44 _imageThatSuppressesAccessibilityHairlineThickening];
      goto LABEL_23;
    }

    v49 = Action.artwork.getter();
    if (!v49)
    {
      goto LABEL_35;
    }

    v50 = v49;
    if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
    {
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        v45 = static SystemImage.load(artwork:with:includePrivateImages:)();

LABEL_23:
        v101 = v45;
        v46 = v45;
        goto LABEL_38;
      }

LABEL_35:
      v101 = 0;
      goto LABEL_38;
    }

    v51 = sub_100330100(v50, 0);
    if (v51)
    {
      v52 = v51;
      v53 = [v51 imageWithRenderingMode:2];

      v101 = [v53 _imageThatSuppressesAccessibilityHairlineThickening];
    }

    else
    {

      v101 = 0;
    }

    v56 = v101;
LABEL_38:
    v57 = a1;
    v58 = a2;
    v59 = [objc_allocWithZone(UIViewController) init];
    v60 = Action.title.getter();
    v62 = v61;
    v63 = objc_allocWithZone(type metadata accessor for AlertActionTrailingImageView());
    v64 = sub_100390B44(v60, v62, v101);
    [v59 setView:v64];

    v65 = [v59 view];
    if (!v65)
    {
      break;
    }

    v66 = v65;
    [v65 intrinsicContentSize];
    v68 = v67;

    [v59 setPreferredContentSize:{0.0, v68}];
    v69 = objc_opt_self();
    v109 = sub_100246DC4;
    v110 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v108 = sub_100246D50;
    *(&v108 + 1) = &unk_1008BA7E0;
    v54 = _Block_copy(&aBlock);
    v48 = v59;

    v55 = [v69 _actionWithContentViewController:v48 style:v102 handler:v54];

    a2 = v58;
    a1 = v57;
    v28 = v96;
    v29 = v95;
LABEL_40:
    _Block_release(v54);

    if (v55)
    {
      [v97 addAction:v55];
    }

    ++v30;
    if (v103 == v29)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_100246D50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_100246DC4(__n128 a1)
{
  sub_1005D0214(*(v1 + 16), 1, *(v1 + 24));

  return result;
}

unint64_t sub_100246DF4()
{
  result = qword_10097AC78;
  if (!qword_10097AC78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097AC78);
  }

  return result;
}

void sub_100246E48(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(*&v3);
}

Swift::Int sub_100246E98()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_100246E48(v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100246EF4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  sub_100246E48(v2, v3);
  return Hasher._finalize()();
}

id sub_100246F70()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_100247494(1u, 1u);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100246FD0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_100247494(0, 1u);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_100247030()
{
  sub_10002849C(&qword_10097AD30, &qword_1007C2818);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007C23A0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_1007C23B0;
  *(v0 + 96) = xmmword_1007C23B0;
  *(v0 + 112) = xmmword_1007C23B0;
  *(v0 + 128) = xmmword_1007C23C0;
  *(v0 + 144) = xmmword_1007C23C0;
  *(v0 + 160) = xmmword_1007C23C0;
  *(v0 + 176) = xmmword_1007C23D0;
  *(v0 + 192) = xmmword_1007C23D0;
  *(v0 + 208) = xmmword_1007C23D0;
  *(v0 + 224) = xmmword_1007C23E0;
  *(v0 + 240) = xmmword_1007C23E0;
  *(v0 + 256) = xmmword_1007C23F0;
  *(v0 + 272) = xmmword_1007C2400;
  *(v0 + 288) = xmmword_1007C2400;
  *(v0 + 304) = 0x3FF0000000000000;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0x3FC999999999999ALL;
  *(v0 + 336) = xmmword_1007C2410;
  *(v0 + 352) = xmmword_1007C2420;
  *(v0 + 368) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v0 + 384) = xmmword_1007C2430;
  *(v0 + 400) = xmmword_1007C2440;
  *(v0 + 416) = xmmword_1007C2450;
  *(v0 + 432) = xmmword_1007C2460;
  *(v0 + 448) = xmmword_1007C2470;
  *(v0 + 464) = xmmword_1007C2480;
  *(v0 + 480) = xmmword_1007C2450;
  *(v0 + 496) = xmmword_1007C2480;
  *(v0 + 512) = xmmword_1007C2490;
  *(v0 + 528) = xmmword_1007C24A0;
  *(v0 + 544) = xmmword_1007C24B0;
  *(v0 + 560) = xmmword_1007C24C0;
  *(v0 + 576) = xmmword_1007C24C0;
  *(v0 + 592) = xmmword_1007C24C0;
  *(v0 + 608) = xmmword_1007C24D0;
  *(v0 + 624) = xmmword_1007C24E0;
  *(v0 + 640) = xmmword_1007C24F0;
  *(v0 + 656) = xmmword_1007C2500;
  *(v0 + 672) = xmmword_1007C2510;
  *(v0 + 688) = xmmword_1007C2520;
  *(v0 + 704) = vdupq_n_s64(0x3FD999999999999AuLL);
  *(v0 + 720) = xmmword_1007C2530;
  *(v0 + 736) = xmmword_1007C2540;
  *(v0 + 752) = xmmword_1007C2550;
  *(v0 + 768) = xmmword_1007C2550;
  *(v0 + 784) = xmmword_1007C2560;
  *(v0 + 800) = xmmword_1007C2570;
  *(v0 + 816) = xmmword_1007C2580;
  *(v0 + 832) = xmmword_1007C2590;
  *(v0 + 848) = xmmword_1007C25A0;
  *(v0 + 864) = xmmword_1007C25A0;
  *(v0 + 880) = xmmword_1007C25A0;
  *(v0 + 896) = xmmword_1007C25B0;
  *(v0 + 912) = xmmword_1007C25B0;
  *(v0 + 928) = xmmword_1007C25B0;
  *(v0 + 944) = xmmword_1007C25C0;
  *(v0 + 960) = xmmword_1007C25C0;
  *(v0 + 976) = xmmword_1007C25D0;
  *(v0 + 992) = xmmword_1007C25E0;
  *(v0 + 1008) = xmmword_1007C25F0;
  *(v0 + 1024) = xmmword_1007C25F0;
  *(v0 + 1040) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(v0 + 1056) = xmmword_1007C2600;
  *(v0 + 1072) = xmmword_1007C2610;
  *(v0 + 1088) = xmmword_1007C2620;
  *(v0 + 1104) = xmmword_1007C2630;
  *(v0 + 1120) = xmmword_1007C2640;
  *(v0 + 1136) = xmmword_1007C2650;
  *(v0 + 1152) = xmmword_1007C2650;
  *(v0 + 1168) = xmmword_1007C2650;
  *(v0 + 1184) = xmmword_1007C2660;
  *(v0 + 1200) = xmmword_1007C2670;
  *(v0 + 1216) = xmmword_1007C2660;
  *(v0 + 1232) = xmmword_1007C2680;
  *(v0 + 1248) = xmmword_1007C2690;
  *(v0 + 1264) = xmmword_1007C26A0;
  *(v0 + 1280) = xmmword_1007C26B0;
  *(v0 + 1296) = xmmword_1007C26C0;
  *(v0 + 1312) = xmmword_1007C26D0;
  *(v0 + 1328) = xmmword_1007C26E0;
  *(v0 + 1344) = xmmword_1007C26F0;
  *(v0 + 1360) = xmmword_1007C2700;
  v1 = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v0 + 1376) = v1;
  *(v0 + 1392) = v1;
  *(v0 + 1408) = v1;
  *(v0 + 1424) = xmmword_1007C2710;
  *(v0 + 1440) = xmmword_1007C2710;
  *(v0 + 1456) = xmmword_1007C2710;
  *(v0 + 1472) = xmmword_1007C2720;
  *(v0 + 1488) = xmmword_1007C2720;
  *(v0 + 1504) = xmmword_1007C2720;
  *(v0 + 1520) = xmmword_1007C2730;
  *(v0 + 1536) = xmmword_1007C2740;
  *(v0 + 1552) = xmmword_1007C2750;
  *(v0 + 1568) = xmmword_1007C2760;
  *(v0 + 1584) = xmmword_1007C2770;
  *(v0 + 1600) = xmmword_1007C2760;
  *(v0 + 1616) = xmmword_1007C2780;
  *(v0 + 1632) = xmmword_1007C2790;
  *(v0 + 1648) = xmmword_1007C27A0;
  *(v0 + 1664) = xmmword_1007C2790;
  *(v0 + 1680) = xmmword_1007C27B0;
  *(v0 + 1696) = xmmword_1007C27C0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  v7 = sub_100397408(v0);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  off_10097AC80 = v7;
  return result;
}

uint64_t sub_100247430()
{

  return swift_deallocClassInstance();
}

id sub_100247494(unsigned int a1, unsigned int a2)
{
  v4 = [objc_allocWithZone(CAMutableMeshTransform) init];
  [v4 setDepthNormalization:kCADepthNormalizationMax];
  if (qword_10096D488 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = vdup_n_s32(a2);
  v7 = off_10097AC80;
  v8 = vdup_n_s32(a1);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v38 = _Q1;
  v39 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v9.i64[0] = v6.u32[0];
  v9.i64[1] = v6.u32[1];
  v37 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  if (*(off_10097AC80 + 2))
  {
LABEL_4:
    v15 = *(&off_1008AF1D0 + v5 + 32);
    v16 = sub_1003D7724(0.0, v15);
    if (v17)
    {
      v18 = vbslq_s8(v39, *(v7[7] + 32 * v16), *(v7[7] + 32 * v16 + 16));
      v41 = 0;
      v42 = v15;
      v43 = vbslq_s8(v37, vsubq_f64(v38, v18), v18);
      v44 = 0;
      [v4 addVertex:&v41];
    }

    if (v7[2])
    {
      v19 = sub_1003D7724(0.2, v15);
      if (v20)
      {
        v21 = vbslq_s8(v39, *(v7[7] + 32 * v19), *(v7[7] + 32 * v19 + 16));
        v41 = 0x3FC999999999999ALL;
        v42 = v15;
        v43 = vbslq_s8(v37, vsubq_f64(v38, v21), v21);
        v44 = 0;
        [v4 addVertex:&v41];
      }

      if (v7[2])
      {
        v22 = sub_1003D7724(0.4, v15);
        if (v23)
        {
          v24 = vbslq_s8(v39, *(v7[7] + 32 * v22), *(v7[7] + 32 * v22 + 16));
          v41 = 0x3FD999999999999ALL;
          v42 = v15;
          v43 = vbslq_s8(v37, vsubq_f64(v38, v24), v24);
          v44 = 0;
          [v4 addVertex:&v41];
        }

        if (v7[2])
        {
          v25 = sub_1003D7724(0.6, v15);
          if (v26)
          {
            v27 = vbslq_s8(v39, *(v7[7] + 32 * v25), *(v7[7] + 32 * v25 + 16));
            v41 = 0x3FE3333333333333;
            v42 = v15;
            v43 = vbslq_s8(v37, vsubq_f64(v38, v27), v27);
            v44 = 0;
            [v4 addVertex:&v41];
          }

          if (v7[2])
          {
            v28 = sub_1003D7724(0.8, v15);
            if (v29)
            {
              v30 = vbslq_s8(v39, *(v7[7] + 32 * v28), *(v7[7] + 32 * v28 + 16));
              v41 = 0x3FE999999999999ALL;
              v42 = v15;
              v43 = vbslq_s8(v37, vsubq_f64(v38, v30), v30);
              v44 = 0;
              [v4 addVertex:&v41];
            }

            if (v7[2])
            {
              v31 = sub_1003D7724(1.0, v15);
              if (v32)
              {
                v33 = vbslq_s8(v39, *(v7[7] + 32 * v31), *(v7[7] + 32 * v31 + 16));
                v41 = 0x3FF0000000000000;
                v42 = v15;
                v43 = vbslq_s8(v37, vsubq_f64(v38, v33), v33);
                v44 = 0;
                [v4 addVertex:&v41];
              }
            }
          }
        }
      }
    }
  }

  while (v5 != 40)
  {
    v5 += 8;
    if (v7[2])
    {
      goto LABEL_4;
    }
  }

  v45 = 0uLL;
  for (i = -24; ; i += 6)
  {
    v43 = 0uLL;
    LODWORD(v41) = i + 24;
    HIDWORD(v41) = i + 25;
    v35 = vadd_s32(vdup_n_s32(i + 24), 0x600000007);
    v40 = v35.i32[0];
    v42 = *&v35;
    [v4 addFace:{&v41, *&v37, *&v38}];
    v43 = 0uLL;
    LODWORD(v41) = i + 25;
    HIDWORD(v41) = i + 26;
    LODWORD(v42) = i + 32;
    HIDWORD(v42) = v40;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 26;
    HIDWORD(v41) = i + 27;
    LODWORD(v42) = i + 33;
    HIDWORD(v42) = i + 32;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 27;
    HIDWORD(v41) = i + 28;
    LODWORD(v42) = i + 34;
    HIDWORD(v42) = i + 33;
    [v4 addFace:&v41];
    v43 = v45;
    LODWORD(v41) = i + 28;
    HIDWORD(v41) = i + 29;
    LODWORD(v42) = i + 35;
    HIDWORD(v42) = i + 34;
    [v4 addFace:&v41];
    if (!i)
    {
      break;
    }
  }

  return v4;
}

unint64_t sub_100247918()
{
  result = qword_10097AD38;
  if (!qword_10097AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097AD38);
  }

  return result;
}

void *sub_10024796C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v15 = a1;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v13[1] = "adamId to selectedCpp:";
  v13[2] = v9;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000779C(&qword_100975440, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10002849C(&qword_100975448, &qword_1007B7550);
  sub_100097060(&qword_100975450, &qword_100975448, &qword_1007B7550, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v16;
  v3[2] = v15;
  v3[3] = v11;
  v3[4] = v17;
  v3[5] = v10;
  return v3;
}

uint64_t sub_100247BF8(uint64_t a1, uint64_t a2, int a3)
{
  v46 = a3;
  v47 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for AdamId();
  v8 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_10097ADF0, qword_1007C2920);
  v49 = Promise.__allocating_init()();
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  v55 = v5;
  v48 = a1;
  if (v11)
  {
    v45 = v4;
    v64 = _swiftEmptyArrayStorage;
    sub_100144128(0, v11, 0);
    v12 = v64;
    v13 = *(type metadata accessor for SponsoredSearchAdvert() - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = (v8 + 8);
    v56 = *(v13 + 72);
    do
    {
      SponsoredSearchAdvert.adamId.getter();
      v16 = AdamId.stringValue.getter();
      v18 = v17;
      (*v15)(v10, v57);
      aBlock = v16;
      v59 = v18;
      v19._countAndFlagsBits = 8250;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      v20 = SponsoredSearchAdvert.serverCppId.getter();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v20 = 0x746C7561666564;
        v22 = 0xE700000000000000;
      }

      v23 = v22;
      String.append(_:)(*&v20);

      v24 = aBlock;
      v25 = v59;
      v64 = v12;
      v27 = v12[2];
      v26 = v12[3];
      if (v27 >= v26 >> 1)
      {
        sub_100144128((v26 > 1), v27 + 1, 1);
        v12 = v64;
      }

      v12[2] = v27 + 1;
      v28 = &v12[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      v14 += v56;
      --v11;
    }

    while (v11);
    v4 = v45;
  }

  aBlock = v12;
  sub_10002849C(&unk_100977380, &qword_1007BB880);
  sub_100097060(&qword_100973110, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for OSLogger();
  sub_1000056A8(v32, qword_1009CE248);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  v33 = v50;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  LogMessage.init(stringLiteral:)();
  v61 = &type metadata for String;
  aBlock = v29;
  v59 = v31;
  static LogMessage.safe(_:)();
  sub_10003D444(&aBlock);
  Logger.info(_:)();

  v57 = *(v33 + 40);
  v34 = *(v33 + 16);
  v35 = swift_allocObject();
  v37 = v47;
  v36 = v48;
  *(v35 + 16) = v34;
  *(v35 + 24) = v37;
  v38 = v49;
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  *(v35 + 48) = v46 & 1;
  *(v35 + 56) = v33;
  v62 = sub_10024A24C;
  v63 = v35;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100007A08;
  v61 = &unk_1008BA8B0;
  v39 = _Block_copy(&aBlock);
  v40 = v34;

  v41 = v51;
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_10000779C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  v42 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v39);
  (*(v55 + 8))(v42, v4);
  (*(v52 + 8))(v41, v54);

  return v38;
}

void sub_10024832C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v51 = a6;
  v50 = a5;
  v60 = a3;
  v9 = type metadata accessor for SponsoredSearchNativeAdvertData();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v57 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SponsoredSearchAdvert();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v54 = &v49[-v14];
  v15 = type metadata accessor for AdamId();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15);
  v53 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for SponsoredSearchOrganic();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v68 = &v49[-v22];
  v23 = *(a2 + 16);
  v61 = a1;
  v62 = a4;
  if (v23)
  {
    v52 = v11;
    aBlock[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = *(v18 + 16);
    v24 = (v18 + 16);
    v26 = (a2 + ((v24[64] + 32) & ~v24[64]));
    v65 = *(v24 + 7);
    v66 = v25;
    v27 = v68;
    v63 = v15;
    v64 = (v67 + 8);
    v67 = v24;
    v28 = v24 - 8;
    v29 = v53;
    do
    {
      v30 = v66;
      v66(v27, v26, v17);
      v30(v20, v27, v17);
      v31 = objc_allocWithZone(ADAppRepresentation);
      SponsoredSearchOrganic.adamId.getter();
      AdamId.stringValue.getter();
      (*v64)(v29, v63);
      v32 = String._bridgeToObjectiveC()();

      SponsoredSearchOrganic.assetInformation.getter();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v31 initWithAdamID:v32 assetInformation:isa];

      v27 = v68;
      v34 = *v28;
      (*v28)(v20, v17);
      v34(v27, v17);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v26 += v65;
      --v23;
    }

    while (v23);
    a1 = v61;
    a4 = v62;
    v11 = v52;
  }

  sub_100005744(0, &qword_10097ADF8, ADAppRepresentation_ptr);
  v35 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setOrganics:v35];

  v36 = v60;
  v37 = *(v60 + 16);
  if (v37)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v38 = sub_100005744(0, &qword_10097AE00, ADAppAdvertisement_ptr);
    v39 = v55;
    v67 = *(v56 + 16);
    v68 = v38;
    v40 = v36 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v66 = *(v56 + 72);
    v41 = (v56 + 8);
    v42 = v54;
    do
    {
      v43 = v67;
      (v67)(v42, v40, v11);
      v43(v39, v42, v11);
      sub_100248AC8(v39);
      (*v41)(v42, v11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v40 += v66;
      --v37;
    }

    while (v37);
    a1 = v61;
    a4 = v62;
  }

  sub_100005744(0, &qword_10097AE00, ADAppAdvertisement_ptr);
  v44 = Array._bridgeToObjectiveC()().super.isa;

  v45 = [a1 setAdvertisementsWithPolicy:v44];

  if (v45)
  {
    v46 = v57;
    SponsoredSearchNativeAdvertData.init(adverts:odmlSuccess:installedStates:appliedPolicy:appStates:)();
    Promise.resolve(_:)();
    (*(v58 + 8))(v46, v59);
  }

  else
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v50 & 1;
    *(v47 + 24) = v51;
    *(v47 + 32) = a4;
    aBlock[4] = sub_10024A260;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10024A12C;
    aBlock[3] = &unk_1008BA900;
    v48 = _Block_copy(aBlock);

    [a1 orderedAdsWithODMLSuccess:v48];
    _Block_release(v48);
  }
}

id sub_100248AC8(uint64_t a1)
{
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SponsoredSearchAdvert.adamId.getter();
  AdamId.stringValue.getter();
  (*(v3 + 8))(v5, v2);
  v6 = String._bridgeToObjectiveC()();

  if (SponsoredSearchAdvert.cppIds.getter())
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  SponsoredSearchAdvert.serverCppId.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  SponsoredSearchAdvert.adData.getter();
  v11 = objc_allocWithZone(ADDataObject);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWith:isa andError:0];

  SponsoredSearchAdvert.instanceId.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v10 initWithAdamID:v6 cppIDs:v7.super.isa serverCppID:v9 adData:v13 instanceID:v14];

  v16 = v15;
  if (SponsoredSearchAdvert.appBinaryTraits.getter())
  {
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  [v16 setAppBinaryTraits:v17.super.isa];

  v18 = type metadata accessor for SponsoredSearchAdvert();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v16;
}

uint64_t sub_100248D88(unint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v125 = a5;
  v126 = a4;
  v122 = a2;
  v124 = type metadata accessor for SponsoredSearchNativeAdvertData();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for OSLogger();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for AdamId();
  v120 = *(v151 - 8);
  __chkstk_darwin(v151);
  v138 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v140 = &v119 - v11;
  __chkstk_darwin(v12);
  v150 = &v119 - v13;
  v14 = type metadata accessor for LegacyAppState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v137 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v119 - v18;
  __chkstk_darwin(v20);
  v139 = &v119 - v21;
  __chkstk_darwin(v22);
  v147 = &v119 - v23;
  v24 = type metadata accessor for SponsoredSearchAdvert();
  v153 = *(v24 - 8);
  __chkstk_darwin(v24);
  v149 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v141 = &v119 - v28;
  __chkstk_darwin(v29);
  v32 = &v119 - v31;
  if (!a1)
  {
    v142 = 0;
    v143 = 0;
    v152 = 0;
    v15 = 0;
    v34 = 0;
    goto LABEL_63;
  }

  v136 = v30;
  v119 = v15;
  if (a1 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = _swiftEmptyArrayStorage;
  v154 = v24;
  v148 = v14;
  if (!v33)
  {
LABEL_14:
    v152 = v34;
    v39 = v141;
    if (a3)
    {
      v135 = v19;

      v142 = sub_100398B30(_swiftEmptyArrayStorage);
      v146 = v34[2];
      if (v146)
      {
        v40 = 0;
        v145 = (v34 + ((*(v153 + 80) + 32) & ~*(v153 + 80)));
        v144 = v153 + 16;
        v134 = (v120 + 8);
        v41 = *(v126 + 24);
        v133 = *(v126 + 32);
        v132 = (v119 + 32);
        v131 = (v119 + 8);
        v143 = (v153 + 8);
        v130 = v41;
        v42 = (v120 + 8);
        v43 = v147;
        do
        {
          if (v40 >= v34[2])
          {
            goto LABEL_69;
          }

          (*(v153 + 16))(v39, v145 + *(v153 + 72) * v40, v24);
          if (!v41)
          {
            (*v143)(v39, v24);
            goto LABEL_18;
          }

          swift_getObjectType();
          v44 = v150;
          SponsoredSearchAdvert.adamId.getter();
          dispatch thunk of AppStateController.stateMachine(forApp:)();
          v45 = *v42;
          v46 = v151;
          (*v42)(v44, v151);
          swift_getObjectType();
          v47 = v139;
          dispatch thunk of AppStateMachine.currentState.getter();
          swift_unknownObjectRelease();
          (*v132)(v43, v47, v14);
          v15 = v140;
          SponsoredSearchAdvert.adamId.getter();
          v39 = AdamId.stringValue.getter();
          v49 = v48;
          v45(v15, v46);
          v50 = LegacyAppState.isLocalApplication.getter();
          v34 = v142;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v156 = v34;
          v53 = sub_1000072B8(v39, v49);
          v54 = v34[2];
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_70;
          }

          v15 = v52;
          if (v34[3] >= v56)
          {
            v34 = v152;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_27;
            }

            sub_100054078();
          }

          else
          {
            sub_10004DB84(v56, isUniquelyReferenced_nonNull_native);
            v57 = sub_1000072B8(v39, v49);
            if ((v15 & 1) != (v58 & 1))
            {
              goto LABEL_77;
            }

            v53 = v57;
          }

          v34 = v152;
LABEL_27:
          if (v15)
          {

            v142 = v156;
            *(v156[7] + v53) = v50 & 1;
            v14 = v148;
            (*v131)(v147, v148);
            v39 = v141;
            v24 = v154;
            (*v143)(v141, v154);
          }

          else
          {
            v15 = v156;
            v156[(v53 >> 6) + 8] |= 1 << v53;
            v59 = (*(v15 + 48) + 16 * v53);
            *v59 = v39;
            v59[1] = v49;
            *(*(v15 + 56) + v53) = v50 & 1;
            v14 = v148;
            (*v131)(v147, v148);
            v39 = v141;
            v24 = v154;
            (*v143)(v141, v154);
            v60 = *(v15 + 16);
            v61 = __OFADD__(v60, 1);
            v62 = v60 + 1;
            if (v61)
            {
              goto LABEL_72;
            }

            v142 = v15;
            *(v15 + 16) = v62;
          }

          v41 = v130;
LABEL_18:
          ++v40;
        }

        while (v146 != v40);
      }

      v143 = sub_1001962CC(_swiftEmptyArrayStorage);
      v64 = v34[2];
      if (v64)
      {
        v65 = *(v126 + 24);
        v140 = *(v126 + 32);
        v145 = *(v153 + 16);
        v39 = v34 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
        v139 = (v120 + 8);
        v144 = *(v153 + 72);
        v134 = (v119 + 32);
        v132 = (v119 + 8);
        v146 = v153 + 16;
        v141 = (v153 + 8);
        v66 = v135;
        v67 = v136;
        v133 = v65;
        v145(v136, v39, v24);
        while (1)
        {
          if (v65)
          {
            v147 = v64;
            swift_getObjectType();
            v69 = v150;
            SponsoredSearchAdvert.adamId.getter();
            dispatch thunk of AppStateController.stateMachine(forApp:)();
            v70 = *v139;
            v71 = v151;
            (*v139)(v69, v151);
            swift_getObjectType();
            v72 = v137;
            dispatch thunk of AppStateMachine.currentState.getter();
            swift_unknownObjectRelease();
            (*v134)(v66, v72, v14);
            v15 = v138;
            SponsoredSearchAdvert.adamId.getter();
            v73 = AdamId.stringValue.getter();
            v75 = v74;
            v70(v15, v71);
            v76 = LegacyAppState.dictionaryKey.getter();
            v78 = v77;
            v34 = v143;
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v156 = v34;
            v81 = sub_1000072B8(v73, v75);
            v82 = v34[2];
            v83 = (v80 & 1) == 0;
            v84 = v82 + v83;
            if (__OFADD__(v82, v83))
            {
              goto LABEL_71;
            }

            v15 = v80;
            if (v34[3] >= v84)
            {
              v34 = v152;
              if ((v79 & 1) == 0)
              {
                sub_100053F00();
                v34 = v152;
              }
            }

            else
            {
              sub_10004D8C4(v84, v79);
              v85 = sub_1000072B8(v73, v75);
              if ((v15 & 1) != (v86 & 1))
              {
                goto LABEL_77;
              }

              v81 = v85;
              v34 = v152;
            }

            v66 = v135;
            v87 = v156;
            v143 = v156;
            if (v15)
            {
              v68 = (v156[7] + 16 * v81);
              *v68 = v76;
              v68[1] = v78;
            }

            else
            {
              v156[(v81 >> 6) + 8] |= 1 << v81;
              v88 = (v87[6] + 16 * v81);
              *v88 = v73;
              v88[1] = v75;
              v89 = (v87[7] + 16 * v81);
              *v89 = v76;
              v89[1] = v78;
              v90 = v87[2];
              v61 = __OFADD__(v90, 1);
              v91 = v90 + 1;
              if (v61)
              {
                goto LABEL_73;
              }

              v87[2] = v91;
            }

            v14 = v148;
            (*v132)(v66, v148);
            v24 = v154;
            v67 = v136;
            v65 = v133;
            v64 = v147;
          }

          (*v141)(v67, v24);
          v39 += v144;
          if (!--v64)
          {
            break;
          }

          v145(v67, v39, v24);
        }
      }

      v63 = v143;
    }

    else
    {
      v142 = 0;
      v63 = 0;
    }

    v143 = v63;
    v15 = v34[2];
    v39 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v155 = _swiftEmptyArrayStorage;

      v34 = &v155;
      sub_100144128(0, v15, 0);
      v92 = v152;
      v93 = 0;
      v147 = v152 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
      v39 = v155;
      v146 = v153 + 16;
      v144 = v153 + 8;
      v145 = (v120 + 8);
      v148 = v15;
      v94 = v153;
      while (v93 < v92[2])
      {
        v95 = v149;
        v96 = v154;
        (*(v94 + 16))(v149, &v147[*(v94 + 72) * v93], v154);
        v97 = v150;
        SponsoredSearchAdvert.adamId.getter();
        v98 = AdamId.stringValue.getter();
        v100 = v99;
        (*v145)(v97, v151);
        v156 = v98;
        v157 = v100;
        v101._countAndFlagsBits = 8250;
        v101._object = 0xE200000000000000;
        String.append(_:)(v101);
        v102 = SponsoredSearchAdvert.selectedCppId.getter();
        if (v103)
        {
          v104 = v103;
        }

        else
        {
          v102 = 0x746C7561666564;
          v104 = 0xE700000000000000;
        }

        v34 = &v156;
        v105 = v104;
        String.append(_:)(*&v102);

        v106 = v156;
        v107 = v157;
        (*(v94 + 8))(v95, v96);
        v155 = v39;
        v109 = *(v39 + 16);
        v108 = *(v39 + 24);
        if (v109 >= v108 >> 1)
        {
          v34 = &v155;
          sub_100144128((v108 > 1), v109 + 1, 1);
          v39 = v155;
        }

        ++v93;
        *(v39 + 16) = v109 + 1;
        v110 = v39 + 16 * v109;
        *(v110 + 32) = v106;
        *(v110 + 40) = v107;
        v15 = v148;
        v92 = v152;
        if (v148 == v93)
        {

          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_62:
    v156 = v39;
    sub_10002849C(&unk_100977380, &qword_1007BB880);
    sub_100097060(&qword_100973110, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
    v15 = BidirectionalCollection<>.joined(separator:)();
    v34 = v111;

LABEL_63:
    LOBYTE(v39) = v122;
    if (qword_10096D130 == -1)
    {
LABEL_64:
      v112 = v129;
      v113 = sub_1000056A8(v129, qword_1009CE248);
      (*(v128 + 16))(v127, v113, v112);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B23A0;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v159 = &type metadata for Bool;
      LOBYTE(v156) = v39 & 1;
      static LogMessage.safe(_:)();
      sub_10003D444(&v156);
      LogMessage.init(stringLiteral:)();
      if (v34)
      {
        v114 = &type metadata for String;
      }

      else
      {
        v15 = 0;
        v114 = 0;
        v158 = 0;
      }

      v156 = v15;
      v157 = v34;
      v159 = v114;
      static LogMessage.safe(_:)();
      sub_10003D444(&v156);
      v115 = v129;
      v116 = v127;
      Logger.info(_:)();

      (*(v128 + 8))(v116, v115);
      v117 = v121;
      SponsoredSearchNativeAdvertData.init(adverts:odmlSuccess:installedStates:appliedPolicy:appStates:)();
      Promise.resolve(_:)();
      return (*(v123 + 8))(v117, v124);
    }

LABEL_74:
    swift_once();
    goto LABEL_64;
  }

  v156 = _swiftEmptyArrayStorage;
  sub_1001443CC(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    LODWORD(v152) = a3;
    v35 = 0;
    v34 = v156;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(a1 + 8 * v35 + 32);
      }

      sub_100249EC0(v36);
      v156 = v34;
      v38 = v34[2];
      v37 = v34[3];
      v15 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_1001443CC((v37 > 1), v38 + 1, 1);
        v34 = v156;
      }

      ++v35;
      v34[2] = v15;
      (*(v153 + 32))(v34 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v38, v32, v154);
    }

    while (v33 != v35);
    v24 = v154;
    v14 = v148;
    LOBYTE(a3) = v152;
    goto LABEL_14;
  }

  __break(1u);
LABEL_77:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100249EC0(void *a1)
{
  v3 = type metadata accessor for AdamId();
  v4 = [a1 instanceID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a1;
  v6 = [v5 adamID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AdamId.init(value:)();
  v7 = [v5 assetInformation];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = [v5 adData];
  v9 = [v8 adData];

  if (v9)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100397CE8(_swiftEmptyArrayStorage);
  }

  v10 = [v5 selectedCppID];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [v5 appBinaryTraits];
  if (v12)
  {
    v13 = v12;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  SponsoredSearchAdvert.init(instanceId:adamId:assetInformation:adData:cppIds:serverCppId:selectedCppId:appBinaryTraits:)();
}

double sub_10024A12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100005744(0, &qword_10097AE00, ADAppAdvertisement_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v4, a3);

  return result;
}

uint64_t sub_10024A1BC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10024A288()
{
  result = qword_10097AE08;
  if (!qword_10097AE08)
  {
    type metadata accessor for CrossfireReferralAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097AE08);
  }

  return result;
}

uint64_t sub_10024A2E0()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReferrerData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  CrossfireReferralAction.referrerData.getter();
  dispatch thunk of MetricsActivity.setReferrerData(_:)();

  (*(v5 + 8))(v7, v4);
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return Promise.__allocating_init(value:)();
}

double sub_10024A4A8(uint64_t a1, void *a2, double a3, double a4)
{
  v32 = type metadata accessor for MixedMediaLockupLayout.Metrics();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MixedMediaLockupLayout();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LabelPlaceholderCompatibility();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v16.n128_f64[0] = a3;
  sub_10024DC08(a2, v16, a4);
  v17 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v18 = LayoutViewPlaceholder.init(measureWith:)();
  if (MixedMediaLockupLayout.Metrics.alwaysIncludeTaglineSpace.getter())
  {
    v28 = a1;
    v29 = v11;
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    if (qword_10096E290 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for FontUseCase();
    sub_1000056A8(v19, qword_1009D1730);
    v20 = [a2 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v21 = type metadata accessor for Feature();
    *(&v42 + 1) = v21;
    v43 = sub_10025007C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v22 = sub_1000056E0(&v41);
    (*(*(v21 - 8) + 104))(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
    isFeatureEnabled(_:)();
    sub_100007000(&v41);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (*(v30 + 8))(v15, v31);
    v11 = v29;
    a1 = v28;
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  (*(v8 + 16))(v10, a1, v32);
  v39 = v17;
  v40 = &protocol witness table for LayoutViewPlaceholder;
  v38 = v18;
  swift_allocObject();

  v23 = LayoutViewPlaceholder.init(representing:)();
  v36 = v17;
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v35 = v23;
  sub_100031660(&v41, v34, &unk_10097E890, qword_1007B4270);
  MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)();
  sub_10025007C(&qword_10097AE58, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v25 = v24;

  (*(v33 + 8))(v13, v11);
  sub_10002B894(&v41, &unk_10097E890, qword_1007B4270);
  return v25;
}

double sub_10024A9E4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, double a5, double a6)
{
  v63 = a3;
  v62 = a2;
  v70 = a1;
  v68 = type metadata accessor for MixedMediaLockupLayout();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for LabelPlaceholderCompatibility();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v69 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = sub_10002849C(&unk_100973CA0, qword_1007B3BB8);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v57 - v25;
  v65 = type metadata accessor for MixedMediaLockupLayout.Metrics();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v71 = &v57 - v29;
  swift_getObjectType();
  v30.n128_f64[0] = a5;
  sub_10024DC08(a4, v30, a6);
  (*(v13 + 56))(v26, 1, 1, v12);
  sub_100031660(v26, v23, &unk_100973CA0, qword_1007B3BB8);
  v31 = *(v13 + 48);
  if (v31(v23, 1, v12) == 1)
  {
    (*(v6 + 224))();
    if (v31(v23, 1, v12) != 1)
    {
      sub_10002B894(v23, &unk_100973CA0, qword_1007B3BB8);
    }
  }

  else
  {
    (*(v13 + 32))(v20, v23, v12);
  }

  v32 = *(v13 + 16);
  v32(v17, v20, v12);
  v33 = (*(v13 + 88))(v17, v12);
  if (v33 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDDC0, &v77);
  }

  else if (v33 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10096CFE0 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDD98, &v77);
  }

  else
  {
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDDC0, &v77);
    (*(v13 + 8))(v17, v12);
  }

  v32(v69, v20, v12);
  sub_10002C0AC(&v77, v76);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E290 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for FontUseCase();
  sub_1000056A8(v34, qword_1009D1730);
  v60 = a4;
  v35 = [a4 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for StaticDimension();
  v37 = sub_1000056A8(v36, qword_1009D2430);
  v74 = v36;
  v75 = &protocol witness table for StaticDimension;
  v38 = sub_1000056E0(v73);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  v39 = v70;
  MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
  sub_100007000(&v77);
  (*(v13 + 8))(v20, v12);
  sub_10002B894(v26, &unk_100973CA0, qword_1007B3BB8);
  v40 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v41 = LayoutViewPlaceholder.init(measureWith:)();
  if (v63)
  {
    v42 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v42 = v62 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v60;
    if (!v42 && (v39 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:

    v44 = [v43 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v45 = type metadata accessor for Feature();
    *(&v78 + 1) = v45;
    v79 = sub_10025007C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v46 = sub_1000056E0(&v77);
    (*(*(v45 - 8) + 104))(v46, enum case for Feature.measurement_with_labelplaceholder(_:), v45);
    isFeatureEnabled(_:)();
    sub_100007000(&v77);
    v47 = v57;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (*(v58 + 8))(v47, v59);
    goto LABEL_28;
  }

  v43 = v60;
  if (v39)
  {
    goto LABEL_27;
  }

LABEL_25:
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
LABEL_28:
  v48 = v64;
  v49 = v71;
  v50 = v65;
  (*(v64 + 16))(v61, v71, v65);
  v76[3] = v40;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  v76[0] = v41;
  swift_allocObject();

  v51 = LayoutViewPlaceholder.init(representing:)();
  v74 = v40;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73[0] = v51;
  sub_100031660(&v77, v72, &unk_10097E890, qword_1007B4270);
  v52 = v66;
  MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)();
  sub_10025007C(&qword_10097AE58, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  v53 = v68;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v55 = v54;

  (*(v67 + 8))(v52, v53);
  sub_10002B894(&v77, &unk_10097E890, qword_1007B4270);
  (*(v48 + 8))(v49, v50);
  return v55;
}

unint64_t sub_10024B4E4(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, void, uint64_t, uint64_t, __n128), uint64_t a5, void *a6)
{
  v7 = v6;
  v246 = a5;
  v255 = a4;
  v266 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_10097AE68, &qword_1007C2A38);
  __chkstk_darwin(v10 - 8);
  v228 = &v224 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v233 = &v224 - v13;
  v245 = type metadata accessor for Shelf.PresentationHints();
  v257 = *(v245 - 8);
  __chkstk_darwin(v245);
  v15 = &v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v16 - 8);
  v241 = &v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v242 = &v224 - v19;
  v20 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v20 - 8);
  v240 = &v224 - v21;
  v22 = type metadata accessor for VideoControls();
  __chkstk_darwin(v22 - 8);
  v232 = &v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v231 = &v224 - v25;
  __chkstk_darwin(v26);
  v237 = &v224 - v27;
  __chkstk_darwin(v28);
  v236 = &v224 - v29;
  v239 = type metadata accessor for VideoFillMode();
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v230 = &v224 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v235 = &v224 - v32;
  v244 = type metadata accessor for VideoConfiguration();
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v234 = &v224 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v259 = &v224 - v35;
  v227 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v251 = &v224 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = type metadata accessor for AspectRatio();
  v274 = *(v265 - 8);
  __chkstk_darwin(v265);
  v256 = &v224 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for LockupMediaLayout.Metrics();
  v248 = *(v249 - 8);
  __chkstk_darwin(v249);
  v247 = &v224 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for LockupMediaLayout.DisplayType();
  v270 = *(v39 - 8);
  v271 = v39;
  __chkstk_darwin(v39);
  v225 = &v224 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v260 = (&v224 - v42);
  __chkstk_darwin(v43);
  v269 = &v224 - v44;
  v268 = type metadata accessor for ScreenshotsDisplayStyle();
  v275 = *(v268 - 8);
  __chkstk_darwin(v268);
  v250 = &v224 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v276 = &v224 - v47;
  v254 = type metadata accessor for ComponentLayoutOptions();
  v253 = *(v254 - 8);
  __chkstk_darwin(v254);
  v252 = &v224 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v49 - 8);
  v229 = &v224 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v264 = &v224 - v52;
  __chkstk_darwin(v53);
  v277 = &v224 - v54;
  v55 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v55 - 8);
  v273 = &v224 - v56;
  v57 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v57 - 8);
  v278 = &v224 - v58;
  v59 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v59 - 8);
  v272 = &v224 - v60;
  v61 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v61 - 8);
  v267 = &v224 - v62;
  v63 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v63 - 8);
  v65 = (&v224 - v64);
  v66 = type metadata accessor for MixedMediaLockup.LockupPosition();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v224 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10002849C(&qword_1009780F8, qword_1007BD2C0);
  __chkstk_darwin(v70 - 8);
  v72 = &v224 - v71;
  v73 = sub_10002849C(&unk_100973CA0, qword_1007B3BB8);
  *&v74 = __chkstk_darwin(v73 - 8).n128_u64[0];
  v76 = &v224 - v75;
  v77 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_pageTraits] = v77;
  swift_unknownObjectRelease();
  v262 = a1;
  MixedMediaLockup.overrideLockupPosition.getter();
  v78 = (*(v67 + 48))(v72, 1, v66);
  v263 = v7;
  v258 = v15;
  if (v78 == 1)
  {
    sub_10002B894(v72, &qword_1009780F8, qword_1007BD2C0);
    v79 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
    (*(*(v79 - 8) + 56))(v76, 1, 1, v79);
  }

  else
  {
    (*(v67 + 16))(v69, v72, v66);
    v80 = (*(v67 + 88))(v69, v66);
    if (v80 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      v81 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v82 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
      (*(*(v82 - 8) + 104))(v76, v81, v82);
    }

    else
    {
      v83 = v80;
      v84 = enum case for MixedMediaLockup.LockupPosition.bottom(_:);
      v82 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
      v85 = *(*(v82 - 8) + 104);
      if (v83 == v84)
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v82);
      }

      else
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v82);
        (*(v67 + 8))(v69, v66);
      }
    }

    (*(v67 + 8))(v72, v66);
    type metadata accessor for MixedMediaLockupLayout.LockupPosition();
    (*(*(v82 - 8) + 56))(v76, 0, 1, v82);
    v7 = v263;
  }

  v86 = ObjectType;
  v87 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_10024DE14(v76, &v7[v87]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10002B894(v76, &unk_100973CA0, qword_1007B3BB8);
  v88 = *&v7[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_lockupView];
  v89 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v89 - 8) + 56))(v65, 1, 1, v89);
  v90 = type metadata accessor for OfferStyle();
  v91 = v267;
  (*(*(v90 - 8) + 56))(v267, 1, 1, v90);
  v92 = type metadata accessor for OfferEnvironment();
  v93 = v272;
  (*(*(v92 - 8) + 56))(v272, 1, 1, v92);
  v94 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v95 = v278;
  (*(*(v94 - 8) + 56))(v278, 1, 1, v94);
  v96 = type metadata accessor for OfferTint();
  v97 = v273;
  (*(*(v96 - 8) + 56))(v273, 1, 1, v96);
  v98 = v88;
  v99 = v262;
  sub_1004F3190(v262, v98, v65, v266, 0, 0, v91, v93, v97, v95);
  sub_10002B894(v97, &unk_100973AD0, &unk_1007B17C0);
  v98[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10070AB34();
  [v98 setNeedsLayout];

  sub_10002B894(v95, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v93, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v91, &qword_100973AE0, &unk_1007B17D0);
  v100 = sub_10002B894(v65, &unk_100973230, &unk_1007B17E0);
  v101 = (*(v86 + 192))(v100);
  v273 = 0;
  v102 = v277;
  if ((v101 & 1) == 0)
  {
    goto LABEL_19;
  }

  result = MixedMediaLockup.screenshots.getter();
  if (result >> 62)
  {
    v104 = result;
    v105 = _CocoaArrayWrapper.endIndex.getter();
    result = v104;
    if (v105)
    {
      goto LABEL_13;
    }

LABEL_18:

    v273 = 0;
    goto LABEL_19;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((result & 0xC000000000000001) != 0)
  {
    v273 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v273 = *(result + 32);
  }

LABEL_19:
  if (((*(v86 + 216))() & 1) == 0)
  {
    v106 = 0;
    v272 = 0;
    goto LABEL_30;
  }

  result = MixedMediaLockup.trailers.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_28:

    v272 = 0;
    goto LABEL_29;
  }

  v107 = result;
  v108 = _CocoaArrayWrapper.endIndex.getter();
  result = v107;
  if (!v108)
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((result & 0xC000000000000001) != 0)
  {
    v272 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v272 = *(result + 32);

LABEL_25:

LABEL_29:
  v106 = MixedMediaLockup.alignedRegionVideo.getter();
LABEL_30:
  v278 = v106;
  v267 = MixedMediaLockup.alignedRegionArtwork.getter();
  v109 = v252;
  static ComponentLayoutOptions.isSingleVerticalColumn.getter();
  sub_10025007C(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v110 = v254;
  v111 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v253 + 8))(v109, v110);
  if (v111)
  {
    v112 = 1;
  }

  else
  {
    v113 = ASKDeviceTypeGetCurrent();
    sub_1000DCAC8(v113);

    v112 = 0;
  }

  v114 = *(v274 + 56);
  v274 += 56;
  v255 = v114;
  (v114)(v102, v112, 1, v265);
  v115 = v276;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v99 = *&v7[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView];
  v116 = MixedMediaLockup.alignedRegionArtwork.getter();
  v117 = MixedMediaLockup.alignedRegionVideo.getter();
  v118 = ASKDeviceTypeGetCurrent();
  v119 = v269;
  v121 = v272;
  v120 = v273;
  (*(v86 + 456))(v116, v117, v273, v272, v118, v115);

  v280[3] = &type metadata for CGFloat;
  v280[4] = &protocol witness table for CGFloat;
  v280[0] = 0x4021000000000000;
  sub_10002C0AC(v280, v279);
  v97 = *(v270 + 16);
  (v97)(v260, v119, v271);
  if (v278 | v267)
  {
    AspectRatio.init(_:_:)();
    v93 = v258;
    v123 = v120;
    v65 = &StringUserDefaultsDebugSetting;
  }

  else
  {
    result = sub_1001B9B24(v120, v121, 0, 1, v122);
    v123 = v120;
    if (result >> 62)
    {
      v200 = result;
      v124 = _CocoaArrayWrapper.endIndex.getter();
      result = v200;
    }

    else
    {
      v124 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v258;
    v65 = &StringUserDefaultsDebugSetting;
    if (v124)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_40;
      }

      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_40:

        Artwork.size.getter();
        AspectRatio.init(_:_:)();

        goto LABEL_43;
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    AspectRatio.init(_:_:)();
  }

LABEL_43:
  sub_100031660(v277, v264, &unk_1009732A0, &unk_1007B4FE0);
  v125 = v247;
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v280);
  v126 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  v127 = v248;
  v128 = &v99[v126];
  v129 = v249;
  (*(v248 + 24))(v128, v125, v249);
  swift_endAccess();
  [v99 v65[41].base_meths];
  (*(v127 + 8))(v125, v129);
  if (v123)
  {
    v130 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v130 = 0;
  }

  type metadata accessor for Screenshots();
  v131 = v251;
  sub_10061B788(v130, v251);

  v132 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1001BAB64(v131, &v99[v132], v133);
  swift_endAccess();
  sub_1001B7B88(v134);
  sub_1001BABC8(v131, v135);
  if (v123)
  {
    v123 = Screenshots.mediaPlatform.getter();
  }

  v136 = v250;
  *&v99[OBJC_IVAR____TtC8AppStore15LockupMediaView_platform] = v123;

  sub_1001B7D8C(v137);

  v138 = v275;
  v139 = v268;
  (*(v275 + 16))(v136, v276, v268);
  v140 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v138 + 24))(&v99[v140], v136, v139);
  swift_endAccess();
  [v99 v65[41].base_meths];
  v141 = *(v138 + 8);
  v275 = v138 + 8;
  v260 = v141;
  v141(v136, v139);
  if (!v278)
  {
    if (!v272)
    {
      goto LABEL_94;
    }

    result = Trailers.videos.getter();
    if (!(result >> 62))
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

LABEL_93:

LABEL_94:
      v203 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
      v204 = *&v99[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
      if (v204)
      {
        [v204 removeFromSuperview];
        v205 = *&v99[v203];
      }

      else
      {
        v205 = 0;
      }

      v162 = v263;
      v163 = v257;
      *&v99[v203] = 0;

      v158 = v65;
      [v99 v65[41].base_meths];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_103;
      }

      v207 = Strong;
      sub_10025007C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v208 = [v207 superview];
      if (v208)
      {
        v209 = v208;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v210 = v99;
        v211 = static NSObject.== infix(_:_:)();

        v163 = v257;
        if ((v211 & 1) == 0)
        {
          goto LABEL_103;
        }

        v212 = swift_unknownObjectWeakLoadStrong();
        if (!v212)
        {
          goto LABEL_103;
        }

        v207 = v212;
        [v212 removeFromSuperview];
      }

LABEL_103:
      swift_unknownObjectWeakAssign();
      v213 = swift_unknownObjectWeakLoadStrong();
      if (v213)
      {
        v215 = v213;
        [v99 addSubview:v213];
      }

      sub_1001B8790(v214);
      [v99 v65[41].base_meths];
      goto LABEL_106;
    }

LABEL_92:
    v201 = result;
    v202 = _CocoaArrayWrapper.endIndex.getter();
    result = v201;
    if (v202)
    {
LABEL_62:
      if ((result & 0xC000000000000001) != 0)
      {
        v264 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v264 = *(result + 32);
      }

      v165 = v225;
      v166 = v271;
      (v97)(v225, v269, v271);
      v167 = v270;
      v168 = (*(v270 + 88))(v165, v166);
      v169 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v167 + 8))(v165, v166);
      if (v168 == v169)
      {
        v170 = 1;
        v162 = v263;
        v93 = v258;
        v171 = v233;
      }

      else
      {
        v173 = Trailers.mediaPlatform.getter();
        v171 = v233;
        sub_10061B788(v173, v233);

        v170 = 0;
        v162 = v263;
        v93 = v258;
      }

      v174 = v226;
      v175 = v227;
      (*(v226 + 56))(v171, v170, 1, v227);
      (*(v238 + 104))(v230, enum case for VideoFillMode.scaleAspectFill(_:), v239);
      Video.preview.getter();
      Artwork.size.getter();
      v176 = v229;
      AspectRatio.init(_:_:)();

      (v255)(v176, 0, 1, v265);
      Video.playbackControls.getter();
      Video.autoPlayPlaybackControls.getter();
      LODWORD(v274) = Video.canPlayFullScreen.getter();
      Video.allowsAutoPlay.getter();
      Video.looping.getter();
      v177 = v228;
      sub_100031660(v171, v228, &qword_10097AE68, &qword_1007C2A38);
      if ((*(v174 + 48))(v177, 1, v175) == 1)
      {
        sub_10002B894(v177, &qword_10097AE68, &qword_1007C2A38);
      }

      else
      {
        sub_1001BABC8(v177, v178);
      }

      VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
      type metadata accessor for VideoViewManager();
      BaseObjectGraph.inject<A>(_:)();
      v179 = v280[0];
      Video.playbackId.getter();
      v180 = v240;
      Video.videoUrl.getter();
      v181 = type metadata accessor for URL();
      (*(*(v181 - 8) + 56))(v180, 0, 1, v181);
      v182 = v242;
      Video.templateMediaEvent.getter();
      v183 = v241;
      Video.templateClickEvent.getter();
      type metadata accessor for VideoView(0);
      sub_10025007C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v274 = v179;
      v184 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
      sub_10002B894(v183, &unk_100973A50, &unk_1007B4FD0);
      sub_10002B894(v182, &unk_100973A50, &unk_1007B4FD0);
      sub_10002B894(v180, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v280, &qword_10096FB90, &qword_1007B2A50);
      v185 = swift_unknownObjectWeakLoadStrong();
      if (!v185)
      {
        goto LABEL_79;
      }

      v186 = v185;
      v187 = [v185 superview];
      if (v187)
      {
        v188 = v187;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v189 = v99;
        v190 = static NSObject.== infix(_:_:)();

        v162 = v263;
        if ((v190 & 1) == 0)
        {
          goto LABEL_79;
        }

        v191 = swift_unknownObjectWeakLoadStrong();
        if (!v191)
        {
          goto LABEL_79;
        }

        v186 = v191;
        [v191 removeFromSuperview];
      }

LABEL_79:
      swift_unknownObjectWeakAssign();
      v192 = swift_unknownObjectWeakLoadStrong();
      if (v192)
      {
        v194 = v192;
        [v99 addSubview:v192];
      }

      sub_1001B8790(v193);
      [v99 setNeedsLayout];

      v195 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
      v196 = *&v99[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
      v163 = v257;
      v197 = v233;
      if (v196)
      {
        [v196 removeFromSuperview];
        v198 = *&v99[v195];
      }

      else
      {
        v198 = 0;
      }

      v199 = v244;
      *&v99[v195] = 0;

      v158 = &StringUserDefaultsDebugSetting;
      [v99 setNeedsLayout];

      (*(v243 + 8))(v234, v199);
      sub_10002B894(v197, &qword_10097AE68, &qword_1007C2A38);
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  (*(v238 + 104))(v235, enum case for VideoFillMode.scaleAspectFill(_:), v239);

  Video.preview.getter();
  Artwork.size.getter();
  v142 = v93;
  v143 = v264;
  AspectRatio.init(_:_:)();

  (v255)(v143, 0, 1, v265);
  Video.playbackControls.getter();
  Video.autoPlayPlaybackControls.getter();
  Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  v93 = v142;
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  type metadata accessor for VideoViewManager();
  BaseObjectGraph.inject<A>(_:)();
  Video.playbackId.getter();
  v144 = v240;
  Video.videoUrl.getter();
  v145 = type metadata accessor for URL();
  (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
  v146 = v242;
  Video.templateMediaEvent.getter();
  v147 = v241;
  Video.templateClickEvent.getter();
  type metadata accessor for VideoView(0);
  sub_10025007C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  v148 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v147, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v146, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v144, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v280, &qword_10096FB90, &qword_1007B2A50);
  v149 = swift_unknownObjectWeakLoadStrong();
  if (v149)
  {
    v150 = v149;
    v151 = [v149 superview];
    if (v151)
    {
      v152 = v151;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v153 = v99;
      v154 = static NSObject.== infix(_:_:)();

      if ((v154 & 1) == 0)
      {
        goto LABEL_55;
      }

      v155 = swift_unknownObjectWeakLoadStrong();
      if (!v155)
      {
        goto LABEL_55;
      }

      v150 = v155;
      [v155 removeFromSuperview];
    }
  }

LABEL_55:
  swift_unknownObjectWeakAssign();
  v156 = swift_unknownObjectWeakLoadStrong();
  v158 = &StringUserDefaultsDebugSetting;
  if (v156)
  {
    v159 = v156;
    [v99 addSubview:v156];
  }

  sub_1001B8790(v157);
  [v99 setNeedsLayout];

  v160 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
  v161 = *&v99[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
  v162 = v263;
  v163 = v257;
  if (v161)
  {
    [v161 removeFromSuperview];
    v164 = *&v99[v160];
  }

  else
  {
    v164 = 0;
  }

  v172 = v244;
  *&v99[v160] = 0;

  [v99 setNeedsLayout];

  (*(v243 + 8))(v259, v172);
LABEL_106:
  v216 = v158;
  [v99 v158[41].base_meths];

  (*(v270 + 8))(v269, v271);
  v217 = *&v162[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_taglineLabel];
  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_10025007C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v218 = v245;
  v219 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v220 = *(v163 + 8);
  v220(v93, v218);
  if ((v219 & 1) != 0 && ((*(ObjectType + 472))(v262), v221))
  {
    v222 = String._bridgeToObjectiveC()();
    v216 = 0x10093E000;
  }

  else
  {
    v222 = 0;
  }

  [v217 setText:v222];

  static Shelf.PresentationHints.showSupplementaryText.getter();
  v223 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v220(v93, v218);
  v162[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = v223 & 1;
  [v162 *(v216 + 2984)];
  [v162 *(v216 + 2984)];

  v260(v276, v268);
  return sub_10002B894(v277, &unk_1009732A0, &unk_1007B4FE0);
}

void sub_10024D9D4(void *a1, double a2, double a3)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SmallLockupLayout.Metrics();
  v7 = sub_1000056A8(v6, qword_1009D3798);
  swift_getObjectType();
  sub_10070B598(v7, a1, a2, a3);
}

void sub_10024DAD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_lockupView);
  sub_100124464(a1, a2);
}

double sub_10024DC08(uint64_t a1, __n128 a2, double a3)
{
  v3 = type metadata accessor for LockupMediaLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspectRatio();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = ASKDeviceTypeGetCurrent();
  sub_1000DCAC8(v11);

  sub_1001B6DB8(v10, v6);
  type metadata accessor for LockupMediaLayout();
  sub_10025007C(&qword_10097AE60, &type metadata accessor for LockupMediaLayout, &protocol conformance descriptor for LockupMediaLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_10024DE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100973CA0, qword_1007B3BB8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10024DE84(char *a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v137 = a6;
  v128 = type metadata accessor for MixedMediaLockupLayout();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for LabelPlaceholderCompatibility();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v138 = *(v133 - 8);
  __chkstk_darwin(v133);
  v134 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = &v105 - v14;
  __chkstk_darwin(v15);
  v112 = &v105 - v16;
  v125 = type metadata accessor for MixedMediaLockupLayout.Metrics();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v121 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v136 = &v105 - v19;
  v120 = type metadata accessor for LockupMediaLayout.DisplayType();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v21 - 8);
  v117 = &v105 - v22;
  v123 = type metadata accessor for ScreenshotsDisplayStyle();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v135 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for MixedMediaLockup.LockupPosition();
  v132 = *(v115 - 8);
  __chkstk_darwin(v115);
  v106 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&qword_1009780F8, qword_1007BD2C0);
  __chkstk_darwin(v25 - 8);
  v131 = &v105 - v26;
  v27 = sub_10002849C(&unk_100973CA0, qword_1007B3BB8);
  __chkstk_darwin(v27 - 8);
  v116 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v139 = &v105 - v30;
  v31 = type metadata accessor for ComponentLayoutOptions();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComponentLayoutOptions.isSingleVerticalColumn.getter();
  sub_10025007C(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v35 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v36 = *(v32 + 8);
  v36(v34, v31);
  v37 = *(v6 + 472);
  v130 = a1;
  v38 = a1;
  v39 = v6;
  v114 = v6 + 472;
  v113 = v37;
  v129 = (v37)(v38);
  v41 = v40;
  static ComponentLayoutOptions.showSupplementaryText.getter();
  v42 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v36(v34, v31);
  if ((v35 & 1) == 0)
  {
    sub_10024A9E4(v42 & 1, v129, v41, v137, a2, a3);

    return a2;
  }

  v43 = v130;
  v129 = MixedMediaLockup.alignedRegionArtwork.getter();
  v44 = (*(v6 + 216))();
  v45 = v6;
  if (v44)
  {
    v110 = MixedMediaLockup.alignedRegionVideo.getter();
  }

  else
  {
    v110 = 0;
  }

  v46 = v133;
  v47 = v138;
  v48 = v132;
  v49 = v131;
  if (((*(v6 + 192))() & 1) == 0)
  {
LABEL_16:
    v132 = 0;
    if ((v44 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v50 = v43;
  v51 = MixedMediaLockup.screenshots.getter();
  if (v51 >> 62)
  {
    v50 = v51;
    v52 = _CocoaArrayWrapper.endIndex.getter();
    v51 = v50;
    if (v52)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_9:
  if ((v51 & 0xC000000000000001) != 0)
  {
    v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v132 = *(v51 + 32);
  }

  if ((v44 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v50 = v43;
  v53 = MixedMediaLockup.trailers.getter();
  if (v53 >> 62)
  {
    v54 = v53;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v54;
    if (v55)
    {
      goto LABEL_19;
    }
  }

  else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    if ((v53 & 0xC000000000000001) != 0)
    {
      v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_22;
    }

    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v131 = *(v53 + 32);

LABEL_22:

      goto LABEL_26;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_44;
  }

LABEL_25:
  v131 = 0;
LABEL_26:
  v56 = (v113)(v43);
  v133 = v57;
  MixedMediaLockup.overrideLockupPosition.getter();
  v58 = v115;
  v59 = (*(v48 + 48))(v49, 1, v115);
  v114 = v56;
  if (v59 == 1)
  {
    sub_10002B894(v49, &qword_1009780F8, qword_1007BD2C0);
    v60 = 1;
  }

  else
  {
    v61 = v106;
    (*(v48 + 16))(v106, v49, v58);
    v62 = (*(v48 + 88))(v61, v58);
    if (v62 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      (*(v47 + 104))(v139, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v46);
    }

    else
    {
      v63 = *(v47 + 104);
      if (v62 == enum case for MixedMediaLockup.LockupPosition.bottom(_:))
      {
        v63(v139, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v46);
      }

      else
      {
        v63(v139, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v46);
        (*(v48 + 8))(v106, v58);
      }
    }

    (*(v48 + 8))(v49, v58);
    v60 = 0;
  }

  (*(v47 + 56))(v139, v60, 1, v46);
  v64 = v135;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v65 = ASKDeviceTypeGetCurrent();
  v115 = type metadata accessor for LockupMediaView(0);
  v66 = type metadata accessor for AspectRatio();
  v67 = v117;
  (*(*(v66 - 8) + 56))(v117, 1, 1, v66);
  v68 = *(v39 + 456);
  v69 = v118;
  v70 = v129;
  v71 = v110;
  v72 = v132;
  v73 = v45;
  v74 = v131;
  v130 = v65;
  v113 = v73;
  v68(v129, v110, v132, v131, v65, v64);
  v75 = v137;
  swift_getObjectType();
  sub_1005B8730(v70, v71, v72, v74, v67, v69, v75, v64, a2, a3);
  (*(v119 + 8))(v69, v120);
  sub_10002B894(v67, &unk_1009732A0, &unk_1007B4FE0);
  v76 = v116;
  sub_100031660(v139, v116, &unk_100973CA0, qword_1007B3BB8);
  v77 = v138;
  v78 = *(v138 + 48);
  v79 = v138;
  if (v78(v76, 1, v46) == 1)
  {
    v43 = v112;
    v113[28]();
    v80 = v78(v76, 1, v46);
    v81 = v111;
    v82 = v133;
    if (v80 != 1)
    {
      sub_10002B894(v76, &unk_100973CA0, qword_1007B3BB8);
    }
  }

  else
  {
    v43 = v112;
    (*(v77 + 32))(v112, v76, v46);
    v81 = v111;
    v82 = v133;
  }

  v50 = *(v79 + 16);
  v50(v81, v43, v46);
  v83 = (*(v79 + 88))(v81, v46);
  if (v83 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v45 = v82;
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    v84 = qword_1009CDDC0;
    goto LABEL_45;
  }

  v45 = v82;
  if (v83 != enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDDC0, &v145);
    (*(v79 + 8))(v81, v46);
    goto LABEL_49;
  }

  if (qword_10096CFE0 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v84 = qword_1009CDD98;
LABEL_45:
  sub_10002C0AC(v84, &v145);
LABEL_49:
  v85 = v137;
  v50(v134, v43, v46);
  sub_10002C0AC(&v145, v144);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E290 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for FontUseCase();
  sub_1000056A8(v86, qword_1009D1730);
  v87 = [v85 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for StaticDimension();
  v89 = sub_1000056A8(v88, qword_1009D2430);
  v142 = v88;
  v143 = &protocol witness table for StaticDimension;
  v90 = sub_1000056E0(&v141);
  (*(*(v88 - 8) + 16))(v90, v89, v88);
  MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
  sub_100007000(&v145);
  (*(v138 + 8))(v43, v46);
  v91 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v92 = LayoutViewPlaceholder.init(measureWith:)();
  if (v45)
  {

    v93 = [v85 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v94 = type metadata accessor for Feature();
    *(&v146 + 1) = v94;
    v147 = sub_10025007C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v95 = sub_1000056E0(&v145);
    (*(*(v94 - 8) + 104))(v95, enum case for Feature.measurement_with_labelplaceholder(_:), v94);
    isFeatureEnabled(_:)();
    sub_100007000(&v145);
    v96 = v107;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (*(v108 + 8))(v96, v109);
  }

  else
  {
    v133 = 0;
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
  }

  v97 = v130;
  v98 = v124;
  v99 = v136;
  v100 = v125;
  (*(v124 + 16))(v121, v136, v125);
  v144[3] = v91;
  v144[4] = &protocol witness table for LayoutViewPlaceholder;
  v144[0] = v92;
  swift_allocObject();

  v101 = LayoutViewPlaceholder.init(representing:)();
  v142 = v91;
  v143 = &protocol witness table for LayoutViewPlaceholder;
  v141 = v101;
  sub_100031660(&v145, v140, &unk_10097E890, qword_1007B4270);
  v102 = v126;
  MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)();
  sub_10025007C(&qword_10097AE58, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  v103 = v128;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v127 + 8))(v102, v103);
  sub_10002B894(&v145, &unk_10097E890, qword_1007B4270);
  (*(v98 + 8))(v99, v100);
  (*(v122 + 8))(v135, v123);
  sub_10002B894(v139, &unk_100973CA0, qword_1007B3BB8);
  return a2;
}

id sub_10024F2BC(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for Shelf.PresentationHints();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = v10;
  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_10025007C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v7 + 8))(v9, v6);
  v13 = sub_10024A9E4(v12 & 1, 0, 0xE000000000000000, a4, v11, a2);
  v14 = objc_opt_self();
  v15 = [v14 absoluteDimension:v11];
  v16 = [v14 absoluteDimension:v13];
  v17 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [objc_opt_self() itemWithLayoutSize:v17];
  v19 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1007B0B70;
  *(v20 + 32) = v18;
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v21 = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v19 verticalGroupWithLayoutSize:v17 subitems:isa];

  return v23;
}

void sub_10024F580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for LockupMediaLayout.DisplayType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v9 - 8);
  v71 = &v59 - v10;
  v11 = type metadata accessor for ScreenshotsDisplayStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v15 - 8);
  sub_10002C0AC(a1, v75);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for MixedMediaLockup();
  if (swift_dynamicCast())
  {
    v67 = v7;
    v68 = v6;
    v69 = v12;
    v16 = v74;
    v17 = *(v3 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_pageTraits);
    if (!v17)
    {

      return;
    }

    v66 = v11;

    swift_unknownObjectRetain();
    v18 = Lockup.icon.getter();

    v70 = v3;
    if (v18)
    {
      v20 = qword_10096EE80;
      v21 = *(*(v3 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v22, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v21 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v21 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      type metadata accessor for ArtworkView();
      sub_10025007C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v23 = ObjectType;
    v24 = (*(ObjectType + 192))(v19);
    if (v24)
    {
      v25 = MixedMediaLockup.screenshots.getter();
      if (v25 >> 62)
      {
        v27 = v25;
        v28 = _CocoaArrayWrapper.endIndex.getter();
        v25 = v27;
        if (v28)
        {
          goto LABEL_12;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        if ((v25 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v26 = *(v25 + 32);
        }

LABEL_20:
        v29 = (*(v23 + 216))(v24);
        v64 = v26;
        v65 = a2;
        v63 = v17;
        if ((v29 & 1) == 0)
        {
          v32 = v14;
          v60 = MixedMediaLockup.alignedRegionArtwork.getter();
          v33 = 0;
          v34 = 0;
LABEL_31:
          v37 = v32;
          MixedMediaLockup.screenshotsDisplayStyle.getter();
          v38 = ASKDeviceTypeGetCurrent();
          type metadata accessor for MixedMediaLockupCollectionViewCell(0);
          LayoutMarginsAware<>.layoutFrame.getter();
          v40 = v39;
          v42 = v41;
          v61 = type metadata accessor for LockupMediaView(0);
          v62 = v16;
          v43 = type metadata accessor for AspectRatio();
          v44 = v71;
          (*(*(v43 - 8) + 56))(v71, 1, 1, v43);
          v45 = v72;
          v46 = v60;
          v47 = v34;
          v48 = v34;
          v49 = v64;
          v50 = v38;
          (*(ObjectType + 456))(v60, v48, v64, v33, v38, v37);
          v51 = v63;
          swift_getObjectType();
          sub_1005B8730(v46, v47, v49, v33, v44, v45, v51, v37, v40, v42);
          v53 = v52;
          v55 = v54;

          (*(v67 + 8))(v45, v68);
          sub_10002B894(v44, &unk_1009732A0, &unk_1007B4FE0);
          v56 = *(v70 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView);
          v57 = [v51 traitCollection];
          v58.n128_u64[0] = v53;
          sub_1005B6FA0(v46, v47, v49, v33, v57, v65, v37, v58, v55);

          swift_unknownObjectRelease();

          (*(v69 + 8))(v37, v66);
          return;
        }

        v30 = MixedMediaLockup.trailers.getter();
        if (v30 >> 62)
        {
          v35 = v30;
          v36 = _CocoaArrayWrapper.endIndex.getter();
          v30 = v35;
          if (v36)
          {
            goto LABEL_23;
          }
        }

        else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_23:
          if ((v30 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_26;
          }

          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v31 = *(v30 + 32);

LABEL_26:
            v32 = v14;

LABEL_30:
            v60 = MixedMediaLockup.alignedRegionArtwork.getter();
            v34 = MixedMediaLockup.alignedRegionVideo.getter();
            v33 = v31;
            goto LABEL_31;
          }

LABEL_36:
          __break(1u);
          return;
        }

        v32 = v14;

        v31 = 0;
        goto LABEL_30;
      }
    }

    v26 = 0;
    goto LABEL_20;
  }
}

void sub_10024FD54(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_10025007C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView);
  v5 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v15 = v4;
    goto LABEL_12;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v19 = v4;
  v8 = v4;

  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    type metadata accessor for BorderedScreenshotView(0);
    sub_10025007C(&qword_100973D78, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v12 = v11;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    sub_10003D614(v20);
    v13 = *&v12[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
    v21.value.super.isa = 0;
    v21.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v21, v14);
  }

  while (v7 != v9);

  v4 = v19;
LABEL_12:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    type metadata accessor for VideoView(0);
    sub_10025007C(&qword_100992450, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v18 = v17;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v20);
  }

  else
  {
  }
}

uint64_t sub_10025007C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002502DC()
{
  v1 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v1 - 8);
  v37 = v36 - v2;
  v3 = type metadata accessor for OfferButtonSubtitlePosition();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v7 = *(v36[0] - 8);
  __chkstk_darwin(v36[0]);
  v9 = v36 - v8;
  v10 = type metadata accessor for OfferButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  v39.receiver = v0;
  v39.super_class = v17;
  v36[1] = v17;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v38 = v0;
  v18 = [v0 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v19 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v19 = qword_100991028;
  }

  v20 = sub_1000056A8(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v16, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v37, 1, 1, v3);
  sub_100140F54();
  AccessibilityConditional.init(value:axValue:)();
  v21 = v38;
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  v23 = v22;
  v25 = v24;
  (*(v7 + 8))(v9, v36[0]);
  (*(v11 + 8))(v16, v10);
  v26 = *&v21[OBJC_IVAR____TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton_button];
  [v26 frame];
  [v26 setFrame:?];
  v27 = [v26 layer];
  v28 = v27;
  if (v23 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  [v27 setCornerRadius:{v29 * 0.5, v36[0]}];

  LayoutMarginsAware<>.layoutFrame.getter();
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  return [v26 setCenter:{MidX, CGRectGetMidY(v41)}];
}

id sub_1002507E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10025084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  [v4 setNumberOfLines:1];
  [v4 setLineBreakMode:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  v6 = [objc_opt_self() preferredFontForTextStyle:a3];
  [v4 setFont:v6];

  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  [v4 setTextColor:v7];

  return v4;
}

id sub_10025097C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for FontUseCase();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a3, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.none(_:), v4);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v14 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v15 = String._bridgeToObjectiveC()();
  [v14 setText:v15];

  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 secondarySystemBackgroundColor];
  [v17 setTextColor:v18];

  return v17;
}

double sub_100250BE4()
{
  v1 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = type metadata accessor for OfferButtonSubtitlePosition();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = type metadata accessor for OfferButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v19 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v19 = qword_100991028;
  }

  v20 = sub_1000056A8(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_100140F54();
  AccessibilityConditional.init(value:axValue:)();
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

id sub_100250FB4(double a1)
{
  v2 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientEndY;
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientEndY] = a1;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView];
  v4 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() endPoint];
  v6 = v5;

  v7 = *&v1[v2];
  v8 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  v9 = [*&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  return [v1 setNeedsDisplay];
}

void *sub_100251118(char a1)
{
  v1 = off_1008BAA40[a1];
  v2 = v1[2];
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = objc_opt_self();
    v4 = 4;
    do
    {
      v5 = *&v1[v4];
      v6 = [v3 blackColor];
      v7 = [v6 colorWithAlphaComponent:v5];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v4;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100251248(void *a1, char a2)
{
  v2 = off_1008BAA58[a2];
  v3 = v2[2];
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 4;
    do
    {
      v6 = [a1 colorWithAlphaComponent:*&v2[v5]];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v5;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10025133C(void *a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = &unk_1008AE7B0;
  if (a2 != 1)
  {
    v3 = &_swiftEmptyArrayStorage[2];
  }

  v4 = *v3;
  if (*v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 == 1)
    {
      v6 = &unk_1008AE7C0;
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage[4];
    }

    do
    {
      v7 = *v6++;
      v8 = [a1 colorWithAlphaComponent:v7];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
  }

  return _swiftEmptyArrayStorage;
}

void sub_10025144C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColor);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView);
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_style);
    v5 = v1;
    *&v2[OBJC_IVAR____TtC8AppStore12GradientView_colors] = sub_10025133C(v5, v3);

    sub_1001C0CEC();
    [v2 setHidden:0];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView);

    [v4 setHidden:1];
  }
}

void *sub_100251554()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = v0[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_style];
  if (!v0[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_style])
  {
    v4 = objc_opt_self();
    if (v2 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = objc_opt_self();
    if (v2 == 2)
    {
LABEL_4:
      v5 = [v4 blackColor];
LABEL_9:
      v6 = v5;
      goto LABEL_10;
    }

LABEL_8:
    v5 = [v4 whiteColor];
    goto LABEL_9;
  }

  v6 = *&v0[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_todayCardStyleColor];
LABEL_10:
  v7 = v6;
  v8 = sub_100251248(v7, v3);

  return v8;
}

id sub_10025166C()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static UIEdgeInsets.horizontal(left:right:)();
  v11 = sub_1000CC354(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&v0[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView] setFrame:?];
  [*&v0[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] setFrame:{v11, v13, v15, v17}];
  LayoutMarginsAware<>.layoutFrame.getter();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  static UIEdgeInsets.horizontal(left:right:)();
  v28 = sub_1000CC354(v19, v21, v23, v25, v26, v27);
  v29 = *&v0[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurView];
  [v29 setFrame:v28];
  v30 = *&v0[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView];
  [v29 bounds];
  return [v30 setFrame:?];
}

id sub_10025183C(uint64_t a1, uint64_t a2, double a3)
{
  v28 = a2;
  v6 = type metadata accessor for CornerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v10);
  v13 = &v25[-v12];
  v14 = *(v7 + 16);
  v27 = a1;
  v14(&v25[-v12], a1, v6, v11);
  v15 = (*(v7 + 88))(v13, v6);
  v26 = enum case for CornerStyle.continuous(_:);
  if (v15 == enum case for CornerStyle.continuous(_:))
  {
    v16 = *(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setContinuousCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setContinuousCornerRadius:a3];
  }

  else
  {
    v18 = v15;
    v19 = enum case for CornerStyle.arc(_:);
    v16 = *(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setCornerRadius:a3];
    if (v18 != v19)
    {
      (*(v7 + 8))(v13, v6);
    }
  }

  v20 = [v16 layer];
  [v20 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  v21 = [v17 layer];
  [v21 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  v22 = *(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurView);
  (*(v7 + 104))(v9, v26, v6);
  v23 = static CornerStyle.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  return [v22 _setCornerRadius:v23 & 1 continuous:UIRectCorner.caCornerMask.getter() maskedCorners:a3];
}

unint64_t sub_100251CAC()
{
  result = qword_10097AF38;
  if (!qword_10097AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097AF38);
  }

  return result;
}

char *sub_100251D00(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_todayCardStyleColor;
  *&v1[v4] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurUserInterfaceStyle] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColor] = 0;
  v5 = objc_opt_self();
  if (!a1)
  {
LABEL_5:
    v5 = [v5 effectWithBlurRadius:30.0];
    if (!v5)
    {
      __break(1u);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (a1 != 1)
  {
LABEL_7:
    v5 = [v5 effectWithStyle:6];
    goto LABEL_8;
  }

  v5 = [v5 effectWithBlurRadius:20.0];
  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_8:
  v6 = v5;
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];

  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurView] = v7;
  v8 = type metadata accessor for GradientView();
  v9 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView] = v9;
  v10 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView] = v10;
  v11 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] = v11;
  v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_style] = a1;
  *&v1[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientEndY] = 0x3FF0000000000000;
  v53.receiver = v1;
  v53.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
  v20 = *&v16[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView];
  *&v20[OBJC_IVAR____TtC8AppStore12GradientView_colors] = sub_100251118(a1);

  sub_1001C0CEC();

  v21 = *&v16[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY];
  v22 = *&v16[v19];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v21}];

  v24 = *&v16[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY];
  v25 = *&v16[v19];
  v26 = [v25 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v24}];

  v27 = a1;
  v28 = off_1008BAA70[a1];
  v29 = *&v16[v19];
  sub_1001C0B48(v28);

  v30 = [*&v16[v17] layer];
  v31 = [*&v16[v19] layer];
  objc_opt_self();
  [v30 setMask:swift_dynamicCastObjCClassUnconditional()];

  v32 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView;
  v33 = *&v16[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView];
  *(v33 + OBJC_IVAR____TtC8AppStore12GradientView_colors) = sub_100251554();

  sub_1001C0CEC();
  v34 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY;
  v35 = *&v16[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY];
  v36 = *&v16[v32];
  v37 = [v36 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v35}];

  v38 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientEndY;
  v39 = *&v16[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientEndY];
  v40 = *&v16[v32];
  v41 = [v40 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v39}];

  v42 = off_1008BAA88[v27];
  v43 = *&v16[v32];
  sub_1001C0B48(v42);

  [v16 addSubview:*&v16[v32]];
  sub_10025144C();
  v44 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView;
  v45 = *&v16[v34];
  v46 = *&v16[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView];
  v47 = [v46 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v45}];

  v48 = *&v16[v38];
  v49 = *&v16[v44];
  v50 = [v49 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v48}];

  v51 = *&v16[v44];
  sub_1001C0B48(v42);

  [v16 addSubview:*&v16[v44]];
  return v16;
}

void sub_1002523A0()
{
  v1 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_todayCardStyleColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurUserInterfaceStyle) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002524FC(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for StaticDimension();
  sub_100005644(v10, a3);
  sub_1000056A8(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  StaticDimension.init(_:scaledLike:)();
  return (*(v7 + 8))(v9, v6);
}

void sub_10025266C(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v92[-v10];
  v12 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v92[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v92[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_descriptionLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_callToActionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemMaterialTextOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v102.receiver = v4;
    v102.super_class = v33;
    v34 = objc_msgSendSuper2(&v102, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v100 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_materialBackground];
    sub_10075B130();

    v40 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_badgeLabel;
    v41 = qword_10096E3D0;
    v42 = *&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for FontUseCase();
    v44 = sub_1000056A8(v43, qword_1009D1AF0);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v95 = v45;
    v96 = *(v45 + 56);
    v96(v11, 0, 1, v43);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v40] setNumberOfLines:1];
    v47 = *&v38[v40];
    v48 = objc_opt_self();
    v49 = v47;
    v101 = v48;
    v50 = [v48 secondaryLabelColor];
    v51 = v40;
    v52 = v50;
    [v49 setTextColor:v50];

    v99 = v51;
    v53 = [*&v38[v51] layer];
    v98 = kCAFilterPlusL;
    [v53 setCompositingFilter:?];

    v54 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_titleLabel;
    v55 = qword_10096E3E0;
    v56 = *&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_titleLabel];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = sub_1000056A8(v43, qword_1009D1B20);
    v46(v11, v57, v43);
    v58 = v96;
    v96(v11, 0, 1, v43);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v54] setNumberOfLines:2];
    v59 = *&v38[v54];
    v60 = [v101 labelColor];
    v97 = v54;
    v61 = v60;
    [v59 setTextColor:v60];

    v62 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_descriptionLabel;
    v63 = *&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_descriptionLabel];
    *v11 = UIFontTextStyleFootnote;
    v11[1] = UIFontWeightRegular;
    v93 = enum case for FontUseCase.preferredFontDerivative(_:);
    v64 = v11;
    v65 = v95[13];
    v65(v64);
    v58(v64, 0, 1, v43);
    v95 = UIFontTextStyleFootnote;
    v66 = v63;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v67 = v62;
    [*&v38[v62] setNumberOfLines:2];
    v68 = *&v38[v62];
    v94 = v62;
    v69 = v68;
    v70 = [v101 secondaryLabelColor];
    [v69 setTextColor:v70];

    v71 = [*&v38[v67] layer];
    v72 = v98;
    [v71 setCompositingFilter:v98];

    v73 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_callToActionLabel;
    v74 = *&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_callToActionLabel];
    *v64 = v95;
    v64[1] = UIFontWeightBold;
    (v65)(v64, v93, v43);
    v58(v64, 0, 1, v43);
    v75 = v74;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v73] setNumberOfLines:1];
    v76 = *&v38[v73];
    v77 = v101;
    v78 = [v101 labelColor];
    [v76 setTextColor:v78];

    v79 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_chevronView;
    v80 = *&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_chevronView];
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 configurationWithTextStyle:UIFontTextStyleBody];
    [v82 setPreferredSymbolConfiguration:v83];

    v84 = *&v38[v79];
    v85 = [v77 secondaryLabelColor];
    [v84 setTintColor:v85];

    v86 = [*&v38[v79] layer];
    [v86 setCompositingFilter:v72];

    v87 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_tapGestureRecognizer] setEnabled:0];
    v88 = *&v38[v87];
    v89 = v38;
    [v88 addTarget:v89 action:"handleSelection:"];
    v90 = *&v38[v87];
    [v90 setDelegate:v89];

    [v89 addGestureRecognizer:*&v38[v87]];
    [v89 addSubview:*&v38[v100]];
    [v89 addSubview:*&v38[v99]];
    [v89 addSubview:*&v38[v97]];
    [v89 addSubview:*&v38[v94]];
    [v89 addSubview:*&v38[v73]];
    [v89 addSubview:*&v38[v79]];
    sub_100254608(v91);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002532F8@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v30 = type metadata accessor for Pin.Edge();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, v3 + v17, v13);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v14 + 8))(v16, v13);
  v18.n128_f64[0] = (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  sub_100255A1C(&qword_10097B030, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v18);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*v40 == v37)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);

  sub_10025386C(v40);
  if ((v31 & 1) == 0)
  {
    v24 = *(v3 + OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_chevronView);
    v38 = sub_10019FDD0();
    v39 = &protocol witness table for UIImageView;
    *&v37 = v24;
    v25 = v24;
    static Center.Axis.neither.getter();
    v35 = type metadata accessor for Center();
    v36 = &protocol witness table for Center;
    sub_1000056E0(v34);
    Center.init(_:filling:)();
    (*(v29 + 104))(v5, enum case for Pin.Edge.trailingEdge(_:), v30);
    sub_10002C0AC(v40, &v37);
    v33[3] = type metadata accessor for Margins();
    v33[4] = &protocol witness table for Margins;
    sub_1000056E0(v33);
    Margins.init(insets:child:)();
    v38 = type metadata accessor for Pin();
    v39 = &protocol witness table for Pin;
    sub_1000056E0(&v37);
    Pin.init(_:to:of:)();
    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10002C0AC(v40, v33);
    static Center.Axis.horizontal.getter();
    v35 = type metadata accessor for Center();
    v36 = &protocol witness table for Center;
    sub_1000056E0(v34);
    Center.init(_:filling:)();
    goto LABEL_9;
  }

  v21 = *(v3 + OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_chevronView);
  type metadata accessor for CarouselItemMaterialTextOverlay(0);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v21 sizeThatFits:{v22, v23}];
  sub_10002C0AC(v40, v34);
  v38 = type metadata accessor for Margins();
  v39 = &protocol witness table for Margins;
  sub_1000056E0(&v37);
  Margins.init(insets:child:)();
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_10002C0AC(&v37, v34);
LABEL_9:
  sub_10002C0AC(v34, v33);
  v26 = type metadata accessor for Margins();
  v27 = v32;
  v32[3] = v26;
  v27[4] = &protocol witness table for Margins;
  sub_1000056E0(v27);
  Margins.init(insets:child:)();
  sub_100007000(v40);
  sub_100007000(&v37);
  return sub_100007000(v34);
}

uint64_t sub_10025386C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  ObjectType = swift_getObjectType();
  v72 = type metadata accessor for VerticalStack();
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v63 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v61 - v5;
  __chkstk_darwin(v6);
  v67 = &v61 - v7;
  v8 = type metadata accessor for StaticDimension();
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v9;
  __chkstk_darwin(v10);
  v73 = &v61 - v11;
  v12 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v23], v19);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v20 + 8))(v22, v19);
  v24.n128_f64[0] = (*(v13 + 104))(v15, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v12);
  sub_100255A1C(&qword_10097B030, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v24);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v74 == v77)
  {
    v25 = *(v13 + 8);
    v25(v15, v12);
    v25(v18, v12);

LABEL_4:
    v28 = qword_10096D4A8;
    v62 = *&v2[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_callToActionLabel];
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_10097AF88;
    goto LABEL_10;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v27 = *(v13 + 8);
  v27(v15, v12);
  v27(v18, v12);

  if (v26)
  {
    goto LABEL_4;
  }

  v30 = qword_10096D4A0;
  v62 = *&v2[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_descriptionLabel];
  if (v30 != -1)
  {
    swift_once();
  }

  v29 = qword_10097AF70;
LABEL_10:
  v31 = v65;
  v32 = sub_1000056A8(v8, v29);
  v65 = *(v70 + 16);
  (v65)(v73, v32, v8);
  v33 = v63;
  VerticalStack.init(with:)();
  v34 = *&v2[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_badgeLabel];
  v35 = type metadata accessor for DynamicTypeLabel();
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  *&v74 = v34;
  v36 = swift_allocObject();
  v37 = ObjectType;
  *(v36 + 16) = v2;
  *(v36 + 24) = v37;
  v38 = v37;
  v39 = v34;
  v40 = v2;
  VerticalStack.adding(_:with:)();

  v61 = v8;
  v41 = *(v69 + 1);
  v42 = v33;
  v43 = v72;
  v41(v42, v72);
  v69 = v41;
  sub_100007000(&v74);
  v44 = *&v40[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_titleLabel];
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  *&v74 = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  *(v45 + 24) = v38;
  v63 = v40;
  v46 = v44;
  v47 = v67;
  VerticalStack.adding(_:with:)();

  v41(v31, v43);
  sub_100007000(&v74);
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  v48 = v62;
  *&v74 = v62;
  v49 = v66;
  v50 = v61;
  (v65)(v66, v73, v61);
  v51 = v70;
  v52 = (*(v70 + 80) + 24) & ~*(v70 + 80);
  v53 = (v64 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v63;
  *(v54 + 16) = v63;
  (*(v51 + 32))(v54 + v52, v49, v50);
  v56 = v72;
  *(v54 + v53) = ObjectType;
  v57 = v68;
  v68[3] = v56;
  v57[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(v57);
  v58 = v48;
  v59 = v55;
  VerticalStack.adding(_:with:)();

  v69(v47, v56);
  (*(v51 + 8))(v73, v50);
  return sub_100007000(&v74);
}

uint64_t sub_100254030(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a6;
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, a3 + v17, v13);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v14 + 8))(v16, v13);
  HeroCarouselItemOverlay.DisplayOptions.TextAlignment.verticalStackAlignment.getter();
  (*(v10 + 8))(v12, v9);
  VerticalStack.Properties.alignment.setter();
  v18 = static VerticalStack.Edge.top.getter();
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v18)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for StaticDimension();
  v20 = sub_1000056A8(v19, v24);
  v25[3] = v19;
  v25[4] = &protocol witness table for StaticDimension;
  v21 = sub_1000056E0(v25);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1002542C8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a3 + v14, v10);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v11 + 8))(v13, v10);
  HeroCarouselItemOverlay.DisplayOptions.TextAlignment.verticalStackAlignment.getter();
  (*(v7 + 8))(v9, v6);
  VerticalStack.Properties.alignment.setter();
  sub_10002849C(&qword_10097B040, qword_1007D4350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  v16 = static VerticalStack.Edge.top.getter();
  *(inited + 32) = v16;
  v17 = static VerticalStack.Edge.bottom.getter();
  *(inited + 40) = v17;
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v16)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v17)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  v18 = type metadata accessor for StaticDimension();
  v25 = v18;
  v26 = &protocol witness table for StaticDimension;
  v19 = sub_1000056E0(v24);
  v20 = *(*(v18 - 8) + 16);
  v20(v19, a4, v18);
  VerticalStack.Properties.topSpacing.setter();
  if (qword_10096D4B0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v18, qword_10097AFA0);
  v25 = v18;
  v26 = &protocol witness table for StaticDimension;
  v22 = sub_1000056E0(v24);
  v20(v22, v21, v18);
  return VerticalStack.Properties.bottomSpacing.setter();
}

id sub_100254608(__n128 a1)
{
  v2 = v1;
  v57 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  v65 = *(v57 - 8);
  __chkstk_darwin(v57);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v54 - v5;
  __chkstk_darwin(v6);
  v58 = &v54 - v7;
  __chkstk_darwin(v8);
  v55 = &v54 - v9;
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v59 = &v54 - v17;
  __chkstk_darwin(v18);
  v56 = &v54 - v19;
  __chkstk_darwin(v20);
  v54 = &v54 - v21;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v26 = *(v14 + 16);
  v26(v24, &v1[v25], v13);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  v27 = *(v14 + 8);
  (v27)(v24, v13);
  v28 = [v1 traitCollection];
  v29 = HeroCarouselItemOverlay.DisplayOptions.TextAlignment.textAlignment(with:)();

  v67[1](v12, v68);
  v30 = *&v2[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_badgeLabel];
  v66 = v29;
  [v30 setTextAlignment:v29];
  v60 = v26;
  v61 = v25;
  v31 = v2;
  v32 = v54;
  v26(v54, &v2[v25], v13);
  v33 = v13;
  v34 = v55;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v67 = v27;
  v68 = v14 + 8;
  (v27)(v32, v13);
  v35 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter();
  v36 = v34;
  v37 = v57;
  v65 = *(v65 + 8);
  (v65)(v36);
  if (!v35)
  {
    v35 = [objc_opt_self() secondaryLabelColor];
  }

  [v30 setTextColor:v35];

  v38 = v31;
  v39 = *&v31[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_titleLabel];
  [v39 setTextAlignment:v66];
  v40 = v60;
  v41 = v61;
  v42 = v56;
  v60(v56, &v31[v61], v33);
  v43 = v58;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  (v67)(v42, v33);
  v44 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter();
  (v65)(v43, v37);
  if (!v44)
  {
    v44 = [objc_opt_self() labelColor];
  }

  [v39 setTextColor:v44];

  v45 = *&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_descriptionLabel];
  [v45 setTextAlignment:v66];
  v46 = v59;
  v40(v59, &v38[v41], v33);
  v47 = v62;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  (v67)(v46, v33);
  v48 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.descriptionColor.getter();
  (v65)(v47, v37);
  if (!v48)
  {
    v48 = [objc_opt_self() secondaryLabelColor];
  }

  [v45 setTextColor:v48];

  v49 = *&v38[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_callToActionLabel];
  [v49 setTextAlignment:v66];
  v50 = v63;
  v40(v63, &v38[v41], v33);
  v51 = v64;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  (v67)(v50, v33);
  v52 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.callToActionColor.getter();
  (v65)(v51, v37);
  if (!v52)
  {
    v52 = [objc_opt_self() labelColor];
  }

  [v49 setTextColor:v52];

  return [v38 setNeedsLayout];
}

id sub_100254D7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemMaterialTextOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemMaterialTextOverlay(uint64_t a1)
{
  result = qword_10097B020;
  if (!qword_10097B020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254EF8(uint64_t a1)
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

uint64_t sub_100254FAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10000827C(a1, a2);
  sub_10000827C(a1, a2);
  sub_10001F63C(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_10001F63C(a1, a2);
}

id sub_100255060(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = objc_allocWithZone(NSMutableAttributedString);
    v6 = String._bridgeToObjectiveC()();
    v3 = [v5 initWithString:v6];

    v7 = [objc_opt_self() configurationWithScale:1];
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage:v9];
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 initWithString:v12];

      if (a3)
      {
        [v3 insertAttributedString:v13 atIndex:0];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 insertAttributedString:v14 atIndex:0];
      }

      else
      {
        [v3 appendAttributedString:v13];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 appendAttributedString:v14];
      }
    }
  }

  return v3;
}

id sub_100255290(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v79 = *(v5 - 8);
  __chkstk_darwin(v5);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v60 - v8;
  __chkstk_darwin(v9);
  v63 = &v60 - v10;
  __chkstk_darwin(v11);
  v74 = &v60 - v12;
  __chkstk_darwin(v13);
  v73 = &v60 - v14;
  __chkstk_darwin(v15);
  v72 = &v60 - v16;
  v17 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v62 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  __chkstk_darwin(v23);
  v25 = &v60 - v24;
  HeroCarouselItemOverlay.displayOptions.getter();
  v26 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v27 = v18[3];
  v77 = v26;
  v27(&v3[v26], v25, v17);
  swift_endAccess();
  sub_100254608(v28);
  v29 = v18[1];
  v64 = v25;
  v78 = v17;
  v75 = v29;
  v76 = v18 + 1;
  v29(v25, v17);
  v30 = *&v3[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_badgeLabel];
  HeroCarouselItemOverlay.badgeText.getter();
  if (v31)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = *&v3[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_titleLabel];
  HeroCarouselItemOverlay.titleText.getter();
  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  [v33 setText:v35];

  v36 = *&v3[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_descriptionLabel];
  HeroCarouselItemOverlay.descriptionText.getter();
  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  v61 = v36;
  [v36 setText:v38];

  v39 = v18[2];
  v40 = v78;
  v65 = v18 + 2;
  v71 = v39;
  v39(v22, &v3[v77], v78);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  v75(v22, v40);
  v41 = v79;
  v42 = *(v79 + 104);
  v70 = enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:);
  v69 = v42;
  v43.n128_f64[0] = v42(v73);
  sub_100255A1C(&qword_10097B030, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v43);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v66 = a1;
  if (v82 == v80 && v83 == v81)
  {
    v44 = 1;
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v45 = *(v41 + 8);
  v45(v73, v5);
  v79 = v41 + 8;
  v45(v72, v5);

  [v61 setHidden:v44 & 1];
  v73 = *&v3[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_chevronView];
  v46 = v78;
  v47 = v62;
  v71(v62, &v3[v77], v78);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  v75(v47, v46);
  v48 = v63;
  v69(v63, v70, v5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v82 == v80 && v83 == v81)
  {
    v49 = 1;
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v45(v48, v5);
  v45(v74, v5);

  [v73 setHidden:v49 & 1];
  v50 = *&v3[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_callToActionLabel];
  v51 = HeroCarouselItemOverlay.callToActionText.getter();
  v53 = sub_100255060(v51, v52, [v3 effectiveUserInterfaceLayoutDirection]);

  [v50 setAttributedText:v53];

  v54 = v78;
  v55 = v64;
  v71(v64, &v3[v77], v78);
  v56 = v67;
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  v75(v55, v54);
  v57 = v68;
  v58.n128_f64[0] = v69(v68, v70, v5);
  sub_100255A1C(&qword_10097B038, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v58);
  LOBYTE(v55) = dispatch thunk of static Equatable.== infix(_:_:)();
  v45(v57, v5);
  v45(v56, v5);
  [v50 setHidden:(v55 & 1) == 0];
  return [v3 setNeedsLayout];
}

uint64_t sub_100255A1C(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100255AD8(uint64_t a1)
{
  v3 = *(type metadata accessor for StaticDimension() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1002542C8(v4, a1, v5, v6);
}

void sub_100255B78(__n128 a1)
{
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v8);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v11 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_materialBackground;
  *(v1 + v11) = [objc_allocWithZone(UIVisualEffectView) init];
  v12 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_titleLabel;
  *(v1 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_descriptionLabel;
  *(v1 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_callToActionLabel;
  *(v1 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17];

  if (!v18)
  {
    __break(1u);
  }

  v19 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_chevronView;
  v20 = [objc_allocWithZone(UIImageView) initWithImage:v18];

  *(v1 + v19) = v20;
  v21 = OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
  *(v1 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = (v1 + OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_selectionHandler);
  *v22 = 0;
  v22[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_100255EE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_100255F1C(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100255F74;
}

void sub_100255F74(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_100631CEC(v2);
  }

  else
  {
    sub_100631CEC(*a1);
  }
}

double sub_10025602C()
{
  swift_getObjectType();

  LayoutMarginsAware<>.layoutFrame.getter();
  return result;
}

uint64_t sub_100256060(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100256234(&qword_10097B058, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007C2BC0);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_10025611C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_100256234(&qword_10097B058, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007C2BC0);

  return a3(ObjectType, v4);
}

uint64_t sub_100256234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002562D4()
{
  v0 = sub_10002849C(&unk_10097B100, &unk_1007C2CA8);
  sub_100005644(v0, qword_10097B060);
  sub_1000056A8(v0, qword_10097B060);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for ContentMode(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_100256378()
{
  v0 = sub_10002849C(&qword_10097B0F8, &qword_1007C2CA0);
  sub_100005644(v0, qword_10097B078);
  sub_1000056A8(v0, qword_10097B078);
  swift_getKeyPath();
  sub_10032FEB0(0xD00000000000001ELL, 0x8000000100809D80, 0);
  sub_10032FEB0(0xD000000000000017, 0x8000000100809DA0, 0);
  sub_100005744(0, &qword_1009744B0, UIImage_ptr);
  return Conditional<>.init(property:trueValue:falseValue:)();
}

uint64_t sub_10025648C()
{
  v0 = sub_10002849C(&qword_10097B0F0, &qword_1007C2C98);
  sub_100005644(v0, qword_10097B090);
  sub_1000056A8(v0, qword_10097B090);
  swift_getKeyPath();
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v1 = static UIColor.hex(_:)();
  v2 = static UIColor.hex(_:)();
  UIColor.init(light:dark:)(v1, v2);
  v3 = static UIColor.hex(_:)();
  v4 = static UIColor.hex(_:)();
  UIColor.init(light:dark:)(v3, v4);
  return Conditional<>.init(property:trueValue:falseValue:)();
}

char *sub_1002565BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_topOpaqueLayer;
  *&v4[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_gradientLayer;
  *&v4[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_compositeMaskLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v55.receiver = v4;
  v55.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = qword_10096D4C8;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_10002849C(&qword_10097B0F0, &qword_1007C2C98);
  sub_1000056A8(v17, qword_10097B090);
  v18 = v16;
  Conditional.evaluate(with:)();

  [v18 setBackgroundColor:v54];
  v19 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView;
  v20 = qword_10096D4C0;
  v21 = *&v18[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView];
  if (v20 != -1)
  {
    swift_once();
  }

  v53 = ObjectType;
  v22 = sub_10002849C(&qword_10097B0F8, &qword_1007C2CA0);
  sub_1000056A8(v22, qword_10097B078);
  v23 = v18;
  Conditional.evaluate(with:)();

  [v21 setImage:v54];
  v24 = qword_10096D4B8;
  v25 = *&v18[v19];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_10002849C(&unk_10097B100, &unk_1007C2CA8);
  sub_1000056A8(v26, qword_10097B060);
  Conditional.evaluate(with:)();

  [v25 setContentMode:v54];
  [v23 addSubview:*&v18[v19]];
  v27 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_topOpaqueLayer;
  v28 = *&v23[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_topOpaqueLayer];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  v32 = [v31 CGColor];

  [v30 setBackgroundColor:v32];
  v33 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_gradientLayer;
  v34 = *&v23[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_gradientLayer];
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007B1890;
  v36 = v34;
  v37 = [v29 blackColor];
  v38 = [v37 CGColor];

  type metadata accessor for CGColor(0);
  v40 = v39;
  *(v35 + 56) = v39;
  *(v35 + 32) = v38;
  v41 = [v29 clearColor];
  v42 = [v41 CGColor];

  *(v35 + 88) = v40;
  *(v35 + 64) = v42;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 setColors:isa];

  v44 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_compositeMaskLayer;
  [*&v23[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_compositeMaskLayer] addSublayer:*&v23[v27]];
  [*&v23[v44] addSublayer:*&v23[v33]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1007B10D0;
  *(v45 + 32) = type metadata accessor for UITraitUserInterfaceLevel();
  *(v45 + 40) = &protocol witness table for UITraitUserInterfaceLevel;
  *(swift_allocObject() + 16) = v53;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v46 = [v23 traitCollection];

  LOBYTE(v45) = UITraitCollection.isSizeClassCompact.getter();
  if (v45 & 1) != 0 || (v47 = [v23 traitCollection], v48 = UITraitCollection.prefersAccessibilityLayouts.getter(), v47, (v48))
  {
    v49 = [*&v18[v19] layer];
    [v49 setMask:*&v23[v44]];
  }

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1007B1890;
  *(v50 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v50 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v50 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v50 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1007B10D0;
  *(v51 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(swift_allocObject() + 16) = v53;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v23;
}

void sub_100256CD0(char *a1)
{
  if (qword_10096D4C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&qword_10097B0F0, &qword_1007C2C98);
  sub_1000056A8(v2, qword_10097B090);
  v7 = a1;
  v3 = a1;
  Conditional.evaluate(with:)();

  [v3 setBackgroundColor:{v9, v7}];
  v4 = *&v3[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView];
  if (qword_10096D4C0 != -1)
  {
    swift_once();
  }

  v5 = sub_10002849C(&qword_10097B0F8, &qword_1007C2CA0);
  sub_1000056A8(v5, qword_10097B078);
  v8 = v3;
  v6 = v3;
  Conditional.evaluate(with:)();

  [v4 setImage:{v9, v8}];
}

id sub_100256E3C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView];
  if (qword_10096D4B8 != -1)
  {
    swift_once();
  }

  v3 = sub_10002849C(&unk_10097B100, &unk_1007C2CA8);
  sub_1000056A8(v3, qword_10097B060);
  v4 = a1;
  Conditional.evaluate(with:)();

  return [v2 setContentMode:{v6, a1}];
}

void sub_100256F5C()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v0 traitCollection];
  v4 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.isSizeClassRegular.getter();

  v7 = 100.0;
  if ((v6 & 1) == 0)
  {
    v7 = 20.0;
  }

  if (v4)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  [v2 frame];
  [v2 setFrame:v8 + v9];
  v10 = [v1 traitCollection];
  v11 = UITraitCollection.isSizeClassCompact.getter();

  if (v11 & 1) != 0 || (v12 = [v1 traitCollection], v13 = UITraitCollection.prefersAccessibilityLayouts.getter(), v12, (v13))
  {
    [v2 setClipsToBounds:1];
    if (v4)
    {
      v14 = -100.0;
    }

    else
    {
      v14 = 100.0;
    }

    [v2 frame];
    [v2 setFrame:v14 + v15];
    v16 = *&v1[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_topOpaqueLayer];
    [v1 bounds];
    [v16 setFrame:{0.0, 0.0, CGRectGetWidth(v20), 68.0}];
    v17 = *&v1[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_gradientLayer];
    [v16 frame];
    MaxY = CGRectGetMaxY(v21);
    [v1 bounds];
    [v17 setFrame:{0.0, MaxY, CGRectGetWidth(v22), 110.0}];
  }
}

void sub_100257284(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = UITraitCollection.isSizeClassCompact.getter();

  if (v3 & 1) != 0 || (v4 = [a1 traitCollection], v5 = UITraitCollection.prefersAccessibilityLayouts.getter(), v4, (v5))
  {
    v6 = [*&a1[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:*&a1[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_compositeMaskLayer]];
  }

  else
  {
    v6 = [*&a1[OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:0];
  }
}

void sub_100257388()
{
  v1 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_topOpaqueLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_gradientLayer;
  *(v0 + v3) = [objc_allocWithZone(CAGradientLayer) init];
  v4 = OBJC_IVAR____TtC8AppStore27EditorsChoiceBackgroundView_compositeMaskLayer;
  *(v0 + v4) = [objc_allocWithZone(CALayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100257488(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  *&v5[OBJC_IVAR____TtC8AppStore18IconSilhouetteView_preferredIconWidth] = 0x404F000000000000;
  v17 = OBJC_IVAR____TtC8AppStore18IconSilhouetteView_iconStyle;
  v18 = enum case for Artwork.Style.roundedRect(_:);
  v19 = type metadata accessor for Artwork.Style();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v20 = OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel;
  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D1700);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v20] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v25 = type metadata accessor for IconSilhouetteView(0);
  v32.receiver = v5;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel;
  v28 = *&v26[OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel];
  v29 = v26;
  [v28 setTextAlignment:1];
  sub_100028BB8();
  v30 = static UIColor.placeholderBackgroundStandout.getter();
  [v29 setBackgroundColor:v30];

  [v29 addSubview:*&v26[v27]];
  return v29;
}

id sub_10025781C()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork.Style();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IconSilhouetteView(0);
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC8AppStore18IconSilhouetteView_iconStyle], v2);
  [v1 frame];
  Artwork.Style.iconCornerRadius(for:isPlaceholder:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [v1 _setCornerRadius:v8];
  v9 = *&v1[OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v9 sizeThatFits:{v10, v11}];
  v13 = v12;
  v15 = v14;
  LayoutMarginsAware<>.layoutFrame.getter();
  v16 = CGRectGetMidX(v19) - v13 * 0.5;
  LayoutMarginsAware<>.layoutFrame.getter();
  return [v9 setFrame:{v16, CGRectGetMidY(v20) - v15 * 0.5, v13, v15}];
}

id sub_100257B48(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IconSilhouetteView(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for IconSilhouetteView(uint64_t a1)
{
  result = qword_10097B148;
  if (!qword_10097B148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100257C50(uint64_t a1)
{
  result = type metadata accessor for Artwork.Style();
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

void sub_100257CFC()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  *(v1 + OBJC_IVAR____TtC8AppStore18IconSilhouetteView_preferredIconWidth) = 0x404F000000000000;
  v9 = OBJC_IVAR____TtC8AppStore18IconSilhouetteView_iconStyle;
  v10 = enum case for Artwork.Style.roundedRect(_:);
  v11 = type metadata accessor for Artwork.Style();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  v12 = OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel;
  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_1009D1700);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v12) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100257FA8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10003D4AC(*a1 + 16, v14);
  sub_1002587CC(v14, v9);
  sub_1002587CC(a2, &v11);
  if (!v10)
  {
    sub_10002B894(v14, &qword_10096FB90, &qword_1007B2A50);
    if (!*(&v12 + 1))
    {
      result = sub_10002B894(v9, &qword_10096FB90, &qword_1007B2A50);
      v4 = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = sub_10002B894(v9, &qword_10097B238, qword_1007C2D70);
    v4 = 0;
    goto LABEL_8;
  }

  sub_1002587CC(v9, v8);
  if (!*(&v12 + 1))
  {
    sub_10002B894(v14, &qword_10096FB90, &qword_1007B2A50);
    sub_10003D614(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v4 = static AnyHashable.== infix(_:_:)();
  sub_10003D614(v6);
  sub_10002B894(v14, &qword_10096FB90, &qword_1007B2A50);
  sub_10003D614(v8);
  result = sub_10002B894(v9, &qword_10096FB90, &qword_1007B2A50);
LABEL_8:
  *(v3 + 72) = v4 & 1;
  return result;
}