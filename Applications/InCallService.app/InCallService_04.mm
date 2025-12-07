void sub_1001681F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong inCallRootViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() sharedApplication];
      v8 = [v7 delegate];

      if (v8)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v9 = ICSApplicationDelegate.bannerPresentationManager.getter();
          swift_unknownObjectRelease();
          v10 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

          if (v10)
          {
            v10 = v10;
            dispatch thunk of ConversationControlsManager.shouldShowCallDetailsWhenReady.setter();
          }

          goto LABEL_14;
        }

        swift_unknownObjectRelease();
      }

      v10 = 0;
LABEL_14:
      v14 = swift_allocObject();
      *(v14 + 16) = v6;
      aBlock[4] = sub_10016D248;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E570;
      aBlock[3] = &unk_10035BAB8;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v4 presentViewController:a2 animated:1 completion:v15];
      _Block_release(v15);

      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008A14(v11, &unk_1003B8820);
  v10 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, v12, "Failed to present contact card: Theres no ViewController", v13, 2u);
  }

LABEL_15:
}

void sub_1001684DC()
{
  sub_100005D28();
  v1 = v0;
  v2 = type metadata accessor for GlassDimmingView.GradientValues();
  v3 = sub_100005568(v2);
  __chkstk_darwin(v3);
  sub_100005BD0();
  if (![v0 dimmingView])
  {
    type metadata accessor for GlassDimmingView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    static GlassDimmingView.GradientValues.bottomSmallAudio.getter();
    dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
    v7 = v6;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = sub_100006BD0();
    if (v8)
    {
      v9 = v8;
      [v8 addSubview:v7];

      sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1002FB360;
      v11 = [v7 leadingAnchor];
      v12 = sub_100006BD0();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 leadingAnchor];

        v15 = [v11 constraintEqualToAnchor:v14];
        *(v10 + 32) = v15;
        v16 = [v7 topAnchor];
        v17 = sub_100006BD0();
        if (v17)
        {
          v18 = v17;
          v19 = [v17 topAnchor];

          v20 = [v16 constraintEqualToAnchor:v19];
          *(v10 + 40) = v20;
          v21 = sub_100006BD0();
          if (v21)
          {
            v22 = v21;
            v23 = [v21 trailingAnchor];

            v24 = [v7 trailingAnchor];
            v25 = [v23 constraintEqualToAnchor:v24];

            *(v10 + 48) = v25;
            v26 = sub_100006BD0();
            if (v26)
            {
              v27 = v26;
              v28 = objc_opt_self();
              v29 = [v27 bottomAnchor];

              v30 = [v7 bottomAnchor];
              v31 = [v29 constraintEqualToAnchor:v30];

              *(v10 + 56) = v31;
              sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
              sub_10000FF90();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v28 activateConstraints:isa];

              [v1 setDimmingView:v7];
              sub_100007B28();
              return;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_100007B28();
}

void sub_1001688C4()
{
  v1 = v0;
  v2 = [v0 dimmingView];
  if (v2)
  {
    v3 = v2;
    sub_10014EA98(&unk_1003AAF60, &qword_1002FB7C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002FB510;
    v5 = [objc_msgSend(v0 "buttonsViewController")];
    swift_unknownObjectRelease();
    *(inited + 32) = v5;
    v6 = 0;
    *(inited + 40) = [v0 middlePillContainer];
    v7 = _swiftEmptyArrayStorage;
    v22[0] = _swiftEmptyArrayStorage;
    while (v6 != 2)
    {
      v8 = *(inited + 8 * v6++ + 32);
      if (v8)
      {
        v9 = v8;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v22[0];
      }
    }

    swift_setDeallocating();
    sub_10014EA34();
    v10 = sub_10000CF28(v7);
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        v16 = objc_opt_self();
        sub_100006BE8();
        v17 = swift_allocObject();
        *(v17 + 16) = v3;
        *(v17 + 24) = v1;
        v22[4] = sub_10016D230;
        v22[5] = v17;
        sub_100006C90();
        v22[1] = 1107296256;
        sub_1000070E4();
        v22[2] = v18;
        v22[3] = &unk_10035B9C8;
        v19 = _Block_copy(v22);
        v20 = v3;
        v21 = v1;

        [v16 animateWithDuration:v19 animations:0.2];
        _Block_release(v19);

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v14 = [v1 view];
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = v14;
      [v14 insertSubview:v3 belowSubview:v13];
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

id sub_100168B98(void *a1, id a2)
{
  v3 = [a2 middleViewState];
  v4 = 0.0;
  if (v3 == 1)
  {
    v4 = 1.0;
  }

  return [a1 setAlpha:v4];
}

uint64_t sub_100168C40(void *a1)
{
  result = sub_100013DA8(a1);
  if (result)
  {
    sub_100014194(0x7469736E65537369, 0xEE0079654B657669, result, &v4);

    if (v5)
    {
      result = sub_100008D28(&v3, v2);
      if (result)
      {
        return v3;
      }
    }

    else
    {
      sub_10000830C(&v4, &unk_1003AAF50, &qword_1002FB170);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100168D40(void *a1)
{
  v1 = sub_100013DA8(a1);
  if (v1)
  {
    v2 = sub_1000053A8();
    sub_100014194(v2, v3, v1, v4);

    if (v33)
    {
      if (swift_dynamicCast())
      {
        v6 = v30[0];
        v5 = v30[1];
        v7 = [objc_opt_self() defaultManager];
        v8 = String._bridgeToObjectiveC()();
        v9 = [v7 contentsAtPath:v8];

        if (v9)
        {
          v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0xF000000000000000;
        }

        if (qword_1003A9F40 != -1)
        {
          sub_10000755C(&qword_1003A9F40);
        }

        v14 = type metadata accessor for Logger();
        sub_1000058D0(v14, &unk_1003B8820);

        v15 = sub_1000088D4();
        sub_10016D21C(v15, v16);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        v19 = sub_1000088D4();
        sub_100034FE0(v19, v20);
        if (os_log_type_enabled(v17, v18))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v30[0] = v22;
          *v21 = 136315394;
          v31 = v6;
          v32 = v5;
          v23 = String.init<A>(reflecting:)();
          v25 = v24;
          sub_100008ADC(v23, v24, v30);
          sub_10016D3EC();

          *(v21 + 4) = v6;
          *(v21 + 12) = 2080;
          if (v12 >> 60 == 15)
          {
            v26 = sub_100007B58();
          }

          else
          {
            v31 = v10;
            v32 = v12;
            v27 = sub_1000088D4();
            sub_10016D1C4(v27, v28);
            v26 = String.init<A>(reflecting:)();
            v25 = v29;
          }

          sub_100008ADC(v26, v25, v30);
          sub_10016D3EC();

          *(v21 + 14) = v6;
          _os_log_impl(&_mh_execute_header, v17, v18, "SNAP: Reading from cached last file path %s returned data: %s", v21, 0x16u);
          swift_arrayDestroy();
          sub_100005BB8(v22);
          sub_100005BB8(v21);
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000830C(&v31, &unk_1003AAF50, &qword_1002FB170);
    }
  }

  return sub_1000088D4();
}

void *sub_1001690A0(void *a1)
{
  result = sub_100013DA8(a1);
  if (result)
  {
    sub_100014194(0xD000000000000016, 0x80000001002A6630, result, &v4);

    if (v5)
    {
      sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
      if (sub_100008D28(&v3, v2))
      {
        sub_1000064BC(0, &unk_1003AFB30, IMWallpaperMetadata_ptr);
        return sub_10022A504();
      }
    }

    else
    {
      sub_10000830C(&v4, &unk_1003AAF50, &qword_1002FB170);
    }

    return 0;
  }

  return result;
}

void sub_1001691DC()
{
  sub_100005D28();
  v94 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v99 = v1;
  __chkstk_darwin(v2);
  sub_100005BD0();
  v97 = v4 - v3;
  sub_100008A4C();
  v98 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v96 = v5;
  __chkstk_darwin(v6);
  sub_100005BD0();
  v95 = v8 - v7;
  sub_100008A4C();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000688C();
  v92 = v10;
  v93 = v9;
  __chkstk_darwin(v9);
  sub_100005BD0();
  v91 = v12 - v11;
  v13 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  v14 = sub_100005568(v13);
  __chkstk_darwin(v14);
  v88 = &v81[-v15];
  sub_100008A4C();
  v16 = type metadata accessor for URL.DirectoryHint();
  sub_10000688C();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100005BD0();
  v22 = v21 - v20;
  v23 = type metadata accessor for URL();
  sub_10000688C();
  v90 = v24;
  v26 = *(v25 + 64);
  v28 = __chkstk_darwin(v27);
  v89 = &v81[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __chkstk_darwin(v28);
  v31 = &v81[-v30];
  v32 = __chkstk_darwin(v29);
  v34 = &v81[-v33];
  __chkstk_darwin(v32);
  v36 = &v81[-v35];
  v37 = [v0 features];
  v38 = [v37 isNameAndPhotoC3Enabled];

  if (v38)
  {
    v86 = [objc_opt_self() defaultManager];
    v39 = [v86 temporaryDirectory];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v101 = 0xD000000000000014;
    v102 = 0x80000001002A6590;
    (*(v18 + 104))(v22, enum case for URL.DirectoryHint.inferFromPath(_:), v16);
    sub_100028A30();
    v87 = v36;
    URL.appending<A>(component:directoryHint:)();
    (*(v18 + 8))(v22, v16);
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v40 = type metadata accessor for Logger();
    sub_1000058D0(v40, &unk_1003B8820);
    v41 = v90;
    v42 = *(v90 + 16);
    v43 = sub_10016D3E0();
    v44 = v23;
    v42(v43);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v85 = v42;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v84 = v34;
      v49 = v48;
      v83 = swift_slowAlloc();
      v101 = v83;
      *v49 = 136315138;
      v82 = v46;
      v50 = v88;
      (v42)(v88, v31, v44);
      sub_100006848(v50, 0, 1, v44);
      v51 = sub_100173DC8();
      v53 = v52;
      sub_10000830C(v50, &qword_1003AAF20, &unk_1002FABA0);
      v54 = sub_100005BEC();
      v55(v54);
      v56 = sub_100008ADC(v51, v53, &v101);
      v57 = v41;
      v58 = v56;

      *(v49 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v45, v82, "SNAP: deleteAllUnarchivedPosterDirectories path: %s", v49, 0xCu);
      sub_100005B2C(v83);
      sub_10000558C();
      v59 = v49;
      v34 = v84;
      sub_100005BB8(v59);
    }

    else
    {

      v60 = sub_100005BEC();
      v61(v60);
      v57 = v41;
    }

    v62 = v44;
    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    v64 = v91;
    v63 = v92;
    v65 = v93;
    (*(v92 + 104))(v91, enum case for DispatchQoS.QoSClass.background(_:), v93);
    v66 = static OS_dispatch_queue.global(qos:)();
    (*(v63 + 8))(v64, v65);
    v67 = v89;
    v68 = sub_10016D3E0();
    v85(v68);
    v69 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v70 = swift_allocObject();
    v71 = v86;
    *(v70 + 16) = v86;
    (*(v57 + 32))(v70 + v69, v67, v62);
    v105 = sub_100034FF4;
    v106 = v70;
    sub_10000A3B4();
    v102 = 1107296256;
    sub_1000070E4();
    v103 = v72;
    v104 = &unk_10035B928;
    v73 = _Block_copy(&v101);
    v74 = v71;
    v75 = v95;
    static DispatchQoS.unspecified.getter();
    v100 = _swiftEmptyArrayStorage;
    sub_100025A38();
    sub_10002D8E4(v76, v77, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
    sub_100032638();
    v78 = v97;
    v79 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v73);

    (*(v99 + 8))(v78, v79);
    (*(v96 + 8))(v75, v98);
    v80 = v88;
    (v88)(v34, v62);
    v80(v87, v62);
  }

  sub_100007B28();
}

void sub_1001699AC(void *a1)
{
  v2 = URL.path.getter();
  if (sub_100231D40(v2, v3, a1))
  {
    URL._bridgeToObjectiveC()(v4);
    v6 = v5;
    v23 = 0;
    v7 = [a1 removeItemAtURL:v5 error:&v23];

    v8 = v23;
    if (v7)
    {

      v9 = v8;
    }

    else
    {
      v13 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9F40 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008A14(v14, &unk_1003B8820);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136315138;
        swift_errorRetain();
        sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
        v19 = String.init<A>(reflecting:)();
        v21 = sub_100008ADC(v19, v20, &v23);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "SNAP: Failed to remove PosterConfigurations directory with error: %s", v17, 0xCu);
        sub_100005B2C(v18);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008A14(v10, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "SNAP: Cant find PosterConfigurations directory", v12, 2u);
    }
  }
}

void sub_100169D94()
{
  v1 = v0;
  v2 = [v0 callCenter];
  v3 = [v2 currentCallGroups];

  sub_1000064BC(0, &qword_1003AAF18, TUCallGroup_ptr);
  sub_100006628();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10000CF28(v4);
  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    v9 = [v7 status];

    v6 = (v6 + 1);
    if (v9 == 1)
    {

      v10 = [v0 callCenter];
      v11 = [v10 currentCallGroups];

      sub_100006628();
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = sub_10000CF28(v12);
      v6 = 0;
      while (v13 != v6)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v14 = *(v12 + 8 * v6 + 32);
        }

        v15 = v14;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_56;
        }

        v16 = [v14 status];

        v6 = (v6 + 1);
        if (v16 == 4)
        {
          break;
        }
      }

      v1 = v0;
      break;
    }
  }

  v17 = [v1 callCenter];
  v18 = [v17 currentCallGroups];

  sub_100006628();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_10000CF28(v19);
  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (v20 == v21)
    {

      v27 = [v0 callCenter];
      v19 = [v27 callWithStatus:2];

      v28 = [v0 callCenter];
      v29 = [v28 callWithStatus:1];

      v30 = [v0 callCenter];
      v31 = [v30 callWithStatus:3];

      if (v29)
      {
        v20 = v29;
        if (v19)
        {
          if (v31)
          {
LABEL_38:

            goto LABEL_46;
          }

LABEL_41:
          v21 = v29;
          v32 = [v0 callCenter];
          v33 = [v32 canGroupCall:v20 withCall:v19];

          if ((v33 & 1) == 0)
          {

            return;
          }

          if (([v20 isRTT] & 1) == 0)
          {
            v6 = &selRef_isEqualToCall_;
            if (([v20 isTTY] & 1) == 0 && (objc_msgSend(v19, "isRTT") & 1) == 0)
            {
              goto LABEL_53;
            }
          }

LABEL_46:
          return;
        }
      }

      else if (v19)
      {
        v20 = v19;
        if (v31)
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      return;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      sub_100006628();
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v6 = v23;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (sub_100006CB0() == 1 || sub_100006CB0() == 2 || sub_100006CB0() == 3)
    {

      v24 = 1;
    }

    else
    {
      v26 = sub_100006CB0();

      v24 = v26 == 4;
    }

    ++v21;
    v25 = __OFADD__(v22, v24);
    v22 += v24;
    if (v25)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  [v19 v6[164]];
}

id iPadAudioCallViewController.nameAndPhotoUtilitiesDidUpdatePersonalNickname(oldValue:newValue:)(id result, uint64_t a2)
{
  if (!result)
  {
    if (a2)
    {
      return [v2 updateShareNameAndPhotoHUDPresentationIfNeeded];
    }
  }

  return result;
}

void PHAudioCallViewController.nameAndPhotoUtilitiesNameAndPhotoAvailable(forDestinations:withBannerType:)()
{
  sub_100005D28();
  v3 = v2;
  v5 = v4;
  v6 = sub_10014EA98(&unk_1003AAE40, &qword_1002FB520);
  v7 = sub_100005568(v6);
  __chkstk_darwin(v7);
  v9 = v35 - v8;
  v10 = type metadata accessor for ConversationControlsType();
  sub_10000688C();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100005BD0();
  sub_100006634();
  sub_10016C68C(v3, v9);
  if (sub_100006AC0(v9, 1, v10) == 1)
  {
    sub_10000830C(v9, &unk_1003AAE40, &qword_1002FB520);
  }

  else
  {
    (*(v12 + 32))(v1, v9, v10);
    v14 = [v0 callCenter];
    v15 = [v14 callsWithStatus:1];

    sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_10000CF28(v16))
    {
      v17 = sub_100005D40();
      sub_100017238(v17, v18, v16);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v16 + 32);
      }

      v20 = v19;
      v35[1] = v12;

      v36 = v5;

      sub_10016C6FC(&v36);
      v21 = v36;
      v22 = [v20 remoteParticipantHandles];
      sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
      sub_1000085A8();
      sub_10003012C(v23, &qword_1003AAE50, TUHandle_ptr, v24);
      v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001665D4(v25, v26);
      v28 = v27;

      v36 = v28;

      sub_10016C6FC(&v36);

      LOBYTE(v28) = sub_10016A5D8(v21, v36);

      if (v28)
      {
        sub_100164D18();

        v29 = sub_100006628();
        v30(v29);
      }

      else
      {
        v33 = sub_100006628();
        v34(v33);
      }
    }

    else
    {
      v31 = sub_100006628();
      v32(v31);
    }
  }

  sub_100007B28();
}

uint64_t sub_10016A5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10016A664()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ClarityUIContact();
  sub_10000688C();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = *(v3 + 16);
  if (v13 == *(v1 + 16) && v13 && v3 != v1)
  {
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = v3 + v14;
    v16 = v1 + v14;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v19 = (v17 - 8);
    v25 = *(v17 + 56);
    v26 = v18;
    while (1)
    {
      v20 = v26;
      v26(v12, v15, v4);
      if (!v13)
      {
        break;
      }

      v21 = v17;
      v20(v10, v16, v4);
      sub_10002D8E4(&qword_1003AAEE8, &type metadata accessor for ClarityUIContact, &protocol conformance descriptor for ClarityUIContact);
      sub_1000361C8();
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v19;
      (*v19)(v10, v4);
      v23(v12, v4);
      if (v22)
      {
        v16 += v25;
        v15 += v25;
        v24 = v13-- == 1;
        v17 = v21;
        if (!v24)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_100007B28();
  }
}

void sub_10016A860(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    return;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v12 = type metadata accessor for Logger();
      sub_1000058D0(v12, &unk_1003B8820);
      v13 = a1;
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v34 = v16;
        *v15 = 136315138;
        v17 = sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
        v18 = v13;
        v19 = String.init<A>(reflecting:)();
        sub_100008ADC(v19, v20, &v34);
        sub_10016D3EC();

        *(v15 + 4) = v17;
        sub_1000083DC();
        _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
        sub_100005B2C(v16);
        sub_100005BB8(v16);
        sub_100005BB8(v15);

        return;
      }

      goto LABEL_16;
    }

    oslog = [objc_opt_self() sharedPrivacyManager];
    if (oslog)
    {
      v3 = [a1 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000087EC();
      sub_100245A04(v4, v5, v6, oslog);
LABEL_16:

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  v7 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = TUHomeCountryCode();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v26 = objc_allocWithZone(TUPhoneNumber);
  sub_1000087EC();
  v30 = sub_1002457CC(v27, v28, v29, v11);
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() sharedPrivacyManager];
    if (v32)
    {
      oslog = v32;
      [v32 setBlockIncomingCommunication:1 forPhoneNumber:v31];

      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }
}

id sub_10016AB8C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for ReportSpamManager.IDSServiceType();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005BD0();
  sub_100006634();
  v9 = [a1 provider];
  v10 = [v9 isFaceTimeProvider];

  if (v10)
  {
    type metadata accessor for ReportSpamManager();
    (*(v7 + 104))(v2, enum case for ReportSpamManager.IDSServiceType.facetimeCall(_:), v5);
    ReportSpamManager.__allocating_init(idsServiceType:unknownContactChecker:)();
    v18[0] = a1;
    sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
    ReportSpamManager.reportFaceTimeCallSpam<A>(call:)();
  }

  else
  {
    v11 = [a1 provider];
    v12 = [v11 isTelephonyProvider];

    if (v12)
    {
      type metadata accessor for VoiceSpamReportTelephonyManager();
      static VoiceSpamReportTelephonyManager.shared.getter();
      v13 = type metadata accessor for CarrierVoiceSpamReportHelper();
      sub_10016D3F8(v13);
      CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
      v18[3] = sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
      sub_100006900();
      v18[4] = sub_10003012C(v14, &qword_1003ADBE0, TUCall_ptr, v15);
      v18[0] = a1;
      v16 = a1;
      dispatch thunk of CarrierVoiceSpamReportHelper.reportSpam(voiceCall:)();

      sub_100005B2C(v18);
    }
  }

  return [v3 releaseDismissalAssertion];
}

void sub_10016AE2C(void *a1)
{
  v2 = v1;
  sub_1000064BC(0, &qword_1003AFB10, CNContact_ptr);
  sub_10014EA98(&qword_1003AAF10, &unk_1002FB780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002FAB60;
  v5 = [a1 value];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_10022A60C(0, 0, v4);
  v10 = [objc_opt_self() viewControllerForNewContact:v9];
  [v10 setDelegate:v2];
  [v10 setAllowsEditing:1];
  [v10 setAllowsActions:1];
  if (qword_1003A9F60 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000058D0(v11, &unk_1003B8880);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_100005924();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "presenting create contact view controller", v14, 2u);
    sub_100005BB8(v14);
  }

  v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
  [v2 presentViewController:v15 animated:1 completion:0];
}

Swift::Void __swiftcall PHAudioCallViewController.contactViewController(_:didCompleteWith:)(CNContactViewController _, CNContact_optional didCompleteWith)
{
  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_10016C768;
    v8[5] = v5;
    sub_100006C90();
    v8[1] = 1107296256;
    sub_1000070E4();
    v8[2] = v6;
    v8[3] = &unk_10035B8B8;
    v7 = _Block_copy(v8);

    [v4 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

void sub_10016B198(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentCallCount];

  if (!v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong releaseDismissalAssertion];
    }
  }
}

uint64_t sub_10016B2DC()
{
  type metadata accessor for VoiceSpamReportTelephonyManager();
  static VoiceSpamReportTelephonyManager.shared.getter();
  v1 = type metadata accessor for CarrierVoiceSpamReportHelper();
  sub_10016D3F8(v1);
  CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
  sub_100019D88();
  v12[3] = sub_1000064BC(v2, v3, v4);
  sub_100006900();
  sub_100019D88();
  v12[4] = sub_10003012C(v5, v6, v7, v8);
  v12[0] = v0;
  v9 = v0;
  v10 = dispatch thunk of CarrierVoiceSpamReportHelper.carrierAllowsReportVoiceCall(for:)();

  sub_100005B2C(v12);
  return v10 & 1;
}

uint64_t sub_10016B410()
{
  type metadata accessor for VoiceSpamReportTelephonyManager();
  static VoiceSpamReportTelephonyManager.shared.getter();
  v1 = type metadata accessor for CarrierVoiceSpamReportHelper();
  sub_10016D3F8(v1);
  CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
  sub_100019D88();
  v11[3] = sub_1000064BC(v2, v3, v4);
  sub_100006900();
  sub_100019D88();
  v11[4] = sub_10003012C(v5, v6, v7, v8);
  v11[0] = v0;
  v9 = v0;
  dispatch thunk of CarrierVoiceSpamReportHelper.reportSpamAlertControllerCarrierName(for:)();

  sub_100005B2C(v11);
  return sub_1000088D4();
}

uint64_t TUCall.callDate.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 callDuration];
  Date.init(timeIntervalSinceNow:)();
  v3 = type metadata accessor for Date();

  return sub_100006848(a1, 0, 1, v3);
}

uint64_t TUCall.simUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 localSenderIdentityAccountUUID];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();

  return sub_100006848(a1, v5, 1, v6);
}

uint64_t TUCall.formattedRemoteParticipantHandles.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1000087EC();
  sub_1000064BC(v2, v3, v4);
  sub_1000085A8();
  sub_1000087EC();
  sub_10003012C(v5, v6, v7, v8);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001668D0(v9, v10);
  v12 = v11;

  return v12;
}

void sub_10016B6E0()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_1000070F8(&_mh_execute_header, v6, v7, "Update audio call background for emergency call");
    sub_10000558C();
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() blackColor];
    [v9 setBackgroundColor:v10];

    v12 = [objc_msgSend(v1 "buttonsViewController")];
    swift_unknownObjectRelease();
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 updateBackgroundMaterial:3];
    }
  }

  else
  {
    __break(1u);
  }
}

id iPadAudioCallViewController.isFullScreen.getter()
{
  v1 = [v0 inCallRootViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isFullScreen];
  swift_unknownObjectRelease();
  return v2;
}

void sub_10016B920()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 frontmostCall];

  if (v4)
  {
    v5 = [v2 sharedInstance];
    v6 = [v5 activeConversationForCall:v4];

    if (v6)
    {
      type metadata accessor for ConversationHUDDetailsViewController();
      sub_10003012C(&qword_1003AAEF0, &qword_1003AAEF8, off_1003531E0, &protocol conformance descriptor for PHAudioCallViewController);
      sub_100006628();
      oslog = static ConversationHUDDetailsViewController.generateFTPeoplePickerViewController(conversation:delegate:)();
      [v1 presentViewController:? animated:? completion:?];

      goto LABEL_9;
    }
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v7 = type metadata accessor for Logger();
  sub_1000058D0(v7, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = sub_100005924();
    *v9 = 0;
    sub_1000083DC();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    sub_100005BB8(v9);
  }

LABEL_9:
}

void sub_10016BB34(unint64_t a1, void *a2, NSObject *a3, uint64_t a4, int a5)
{
  v61 = a5;
  v62 = a4;
  v8 = type metadata accessor for UUID();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = &_swiftEmptySetSingleton;
  v69 = &_swiftEmptySetSingleton;
  if (qword_1003A9F40 != -1)
  {
LABEL_43:
    swift_once();
  }

  v63 = a3;
  v10 = type metadata accessor for Logger();
  sub_100008A14(v10, &unk_1003B8820);
  a3 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a3, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, a3, v11, "Adding people to conversation on active call.", v12, 2u);
  }

  v13 = sub_10000CF28(a1);
  v65 = a2;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v66 = a1 & 0xFFFFFFFFFFFFFF8;
    v64 = xmmword_1002FAB60;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v66 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      a3 = sub_1001646DC();
      v19 = PickablePerson.handle.getter();
      v20 = [v19 value];

      if (!v20)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = String._bridgeToObjectiveC()();
      }

      v21 = sub_10023BEC4(v20);
      if (!v22)
      {
        break;
      }

      v23 = sub_10023AE98(v21, v22, a3);

      if (v23)
      {
      }

      else
      {
        PickablePerson.address.getter();
        v24 = String._bridgeToObjectiveC()();

        v25 = TUCopyIDSCanonicalAddressForDestinationID();

        if (v25 && (v26 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v28 = v27, v25, v29 = [objc_opt_self() sharedManager], sub_10014EA98(&qword_1003AAF10, &unk_1002FB780), v30 = swift_allocObject(), *(v30 + 16) = v64, *(v30 + 32) = v26, *(v30 + 40) = v28, isa = Array._bridgeToObjectiveC()().super.isa, a2 = v65, , LODWORD(v28) = objc_msgSend(v29, "isFaceTimeMultiwayAvailableForAnyDestinationInDestinations:", isa), v29, isa, v28))
        {
          a3 = PickablePerson.handle.getter();
          v32 = objc_allocWithZone(TUConversationMember);
          v33 = sub_10023BD1C(a3, 0, 0);
          sub_10019F0A0(&v67, v33);
        }

        else
        {
          v34 = PickablePerson.handle.getter();
          a3 = TUNormalizedHandleForTUHandle();

          if (!a3)
          {
            a3 = PickablePerson.handle.getter();
          }

          sub_10019F07C(&v67, a3);
        }
      }

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    if (v61)
    {
      v35 = [a2 otherInvitedHandles];
      sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
      sub_10003012C(&qword_1003AAE58, &qword_1003AAE50, TUHandle_ptr, &protocol conformance descriptor for NSObject);
      v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = sub_10023AD34(v36);

      if (v37)
      {
        v38 = [objc_allocWithZone(TUConversationMember) initWithHandle:v37];
        [v38 setIsOtherInvitedHandle:1];
        sub_10019F0A0(&v67, v38);
      }
    }

    v39 = v69;
    v40 = sub_10000654C(v69);
    v41 = v63;
    if (v40 > 0 || sub_10000654C(v68) >= 1)
    {
      if (v41)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        if ((dispatch thunk of Call.isConversation.getter() & 1) == 0)
        {
          v46 = dispatch thunk of Call.handle.getter();
          if (v46)
          {
            v47 = v46;
            v48 = objc_allocWithZone(TUConversationMember);
            v49 = v47;
            v50 = sub_10023BD1C(v49, 0, 0);
            sub_10019F0A0(&v67, v50);

            v39 = v69;
          }

          v51 = v68;
          v52 = objc_allocWithZone(TUJoinConversationRequest);

          v53 = sub_10023BD94(v39, v51, 21);
          [v53 setVideoEnabled:dispatch thunk of Call.isSendingVideo.getter() & 1];
          v54 = v58;
          dispatch thunk of Call.uniqueProxyIdentifierUUID.getter();
          v55 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v59 + 8))(v54, v60);
          [v53 setUUID:v55];

          v56 = [objc_opt_self() sharedInstance];
          v57 = [v56 joinConversationWithConversationRequest:v53];

          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
      }

      v42 = [objc_opt_self() sharedInstance];
      v43 = [v42 conversationManager];

      sub_1000064BC(0, &qword_1003AAFC0, TUConversationMember_ptr);
      sub_10003012C(&qword_1003AAFC8, &qword_1003AAFC0, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
      v44 = Set._bridgeToObjectiveC()().super.isa;

      sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
      sub_10003012C(&qword_1003AAE58, &qword_1003AAE50, TUHandle_ptr, &protocol conformance descriptor for NSObject);
      v66 = Set._bridgeToObjectiveC()().super.isa;
      [v43 addRemoteMembers:v44 otherInvitedHandles:v66 toConversation:v65];

      v45 = v66;

      return;
    }
  }
}

Swift::Void __swiftcall PHAudioCallViewController.peoplePickerAdded(_:shouldAddOtherInvitedToRemoteMembers:)(Swift::OpaquePointer _, Swift::Bool shouldAddOtherInvitedToRemoteMembers)
{
  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  v7 = [v6 frontmostCall];

  if (v7)
  {
    v8 = [v5 sharedInstance];
    oslog = [v8 activeConversationForCall:v7];

    if (oslog)
    {
      v9 = sub_10003012C(&qword_1003AAE60, &qword_1003ADBE0, TUCall_ptr, &protocol conformance descriptor for TUCall);
      v10 = v7;
      sub_10016BB34(_._rawValue, oslog, v7, v9, shouldAddOtherInvitedToRemoteMembers);

      [v2 dismissPeoplePicker];
      goto LABEL_9;
    }
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v11 = type metadata accessor for Logger();
  sub_1000058D0(v11, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = sub_100005924();
    *v13 = 0;
    sub_1000083DC();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    sub_100005BB8(v13);
  }

LABEL_9:
}

id sub_10016C570()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_1000070F8(&_mh_execute_header, v6, v7, "Dismiss peoplePicker");
    sub_10000558C();
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_10016C68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&unk_1003AAE40, &qword_1002FB520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10016C6FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100218B8C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10016C7D8(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_10016C774()
{
  result = qword_1003AAE68;
  if (!qword_1003AAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AAE68);
  }

  return result;
}

Swift::Int sub_10016C7D8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_10016C994(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10016C8CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10016C8CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10016C994(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10023F7F4();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_10023F7F4();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_10016CFC8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_10016CE9C(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_10016CE9C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100217808(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10016CFC8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10016CFC8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_10003D890(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_10003D890(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_10016D16C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10016D1C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10016D21C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10016D1C4(result, a2);
  }

  return result;
}

uint64_t sub_10016D268()
{

  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_10016D30C()
{
  v1 = *(type metadata accessor for ConversationControlsType() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100166E24(v0 + v2, v3);
}

uint64_t sub_10016D3F8(uint64_t a1)
{

  return swift_allocObject();
}

double sub_10016D410@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10017000C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_100005A60(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10016D474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10001411C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  return v7;
}

void *sub_10016D4C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100170144(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

__n128 sub_10016D510@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  v4 = static Edge.Set.all.getter();
  *a1 = v3;
  result = *(v1 + 1);
  *(a1 + 24) = *(v1 + 3);
  *(a1 + 8) = result;
  *(a1 + 40) = v4;
  return result;
}

char *sub_10016D564()
{
  v1 = objc_allocWithZone(type metadata accessor for VideoCallViewCoordinator());

  return sub_10016DBDC(v0);
}

void sub_10016D5A4()
{
  type metadata accessor for MultiwayViewController();
  sub_10023E240();
  sub_10014EA98(&qword_1003AB088, &unk_1002FB970);
  UIViewControllerRepresentableContext.coordinator.getter();
  v0 = *&v11[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_bannerPresentationManager];

  v1 = MultiwayViewController.__allocating_init(activeCall:bannerPresentationManager:)();
  UIViewControllerRepresentableContext.coordinator.getter();
  MultiwayViewController.delegate.setter();
  UIViewControllerRepresentableContext.coordinator.getter();
  MultiwayViewController.iOSDelegate.setter();
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];

  MultiwayViewController.supportedDeviceOrientations.setter();
  MultiwayViewController.isDisplayedInBanner.setter();
  MultiwayViewController.pipState.setter();
  v3 = v1;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  [v4 setUserInteractionEnabled:0];

  MultiwayViewController.needsTips.setter();
  v6 = [v3 view];

  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v6 layoutIfNeeded];

  MultiwayViewController.isOnScreen.setter();
  UIViewControllerRepresentableContext.coordinator.getter();
  v7 = *&v11[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_viewController];
  *&v11[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_viewController] = v3;
  v3;

  UIViewControllerRepresentableContext.coordinator.getter();
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lastValidOrientation];

    sub_10016F24C(v10);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10016D7FC(void *a1)
{
  v2 = v1;
  sub_10014EA98(&qword_1003AB088, &unk_1002FB970);
  UIViewControllerRepresentableContext.transaction.getter();
  v4 = Transaction.animation.getter();

  if (v4)
  {

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v7 = *(v2 + 16);
    *(v6 + 24) = *v2;
    *(v6 + 16) = a1;
    *(v6 + 40) = v7;
    *(v6 + 56) = *(v2 + 32);
    aBlock[4] = sub_1001703F8;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = &unk_10035BCF0;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    sub_100170404(v2, v10);

    [v5 animateWithDuration:0 delay:v8 options:0 animations:0.35 completion:0.0];
    _Block_release(v8);
  }

  else
  {
    MultiwayViewController.additionalLocalParticipantInsets.setter();
  }
}

void sub_10016D974(void *a1, double *a2)
{
  MultiwayViewController.additionalLocalParticipantInsets.setter();
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

char *sub_10016DA6C@<X0>(char **a1@<X8>)
{
  result = sub_10016D564();
  *a1 = result;
  return result;
}

uint64_t sub_10016DAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017043C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10016DB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017043C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10016DBB4(uint64_t a1)
{
  sub_10017043C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

char *sub_10016DBDC(uint64_t a1)
{
  v3 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  *&v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_viewController] = 0;
  *&v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_orientationTask] = 0;
  *&v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice] = 0;
  v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_isAmbient] = 0;
  v6 = &v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_configuration];
  v7 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v7;
  *(v6 + 4) = *(a1 + 32);
  v8 = objc_allocWithZone(type metadata accessor for BannerPresentationManager());

  *&v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_bannerPresentationManager] = BannerPresentationManager.init(delegate:)();
  v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_hasPresentedFullScreenCallUI] = 1;
  v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_isPresentingFullScreenCallUI] = 1;
  v9 = type metadata accessor for VideoCallViewCoordinator();
  v21.receiver = v1;
  v21.super_class = v9;
  v10 = objc_msgSendSuper2(&v21, "init");
  v11 = *&v10[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_bannerPresentationManager];
  v12 = v10;
  v13 = v11;
  dispatch thunk of BannerPresentationManager.presentationDelegate.setter();

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v15 = result;
    [result setOrientationEventsEnabled:1];

    v16 = type metadata accessor for TaskPriority();
    sub_100006848(v5, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v17;

    v20 = sub_10016ECCC();
    sub_10016FF88(a1);
    *&v12[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_orientationTask] = v20;

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016DE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_10014EA98(&qword_1003B05B0, &qword_1002FB940);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[18] = swift_task_alloc();
  v6 = sub_10014EA98(&qword_1003AB050, &qword_1002FB948);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = sub_10014EA98(&qword_1003AB058, &qword_1002FB950);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = type metadata accessor for MainActor();
  v4[26] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v9;
  v4[28] = v8;

  return _swift_task_switch(sub_10016E098, v9, v8);
}

uint64_t sub_10016E098()
{
  v1 = v0[21];
  v13 = v0[20];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultCenter];
  v4 = NSNotificationCenter.notifications(named:object:)();

  v0[9] = v4;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10014EA98(&unk_1003AB060, &unk_1002FB960);
  sub_1001708B8(&qword_1003AAC18, &type metadata accessor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();
  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v13 + 8))(v1, v2);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v5 = static MainActor.shared.getter();
  v0[29] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_100007618(v8, v6);

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10016E2BC()
{
  v1 = v0[29];
  v0[32] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_1001708B8(&qword_1003AB070, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_10016E3C4;
  v3 = v0[13];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10016E3C4()
{
  v2 = *v1;
  v3 = *v1;
  sub_100006870();
  *v4 = v3;

  if (v0)
  {
    v5 = *(v2 + 240);
    v6 = *(v2 + 248);
    v7 = sub_10016E68C;
  }

  else
  {
    (*(v2 + 256))();
    v5 = *(v2 + 240);
    v6 = *(v2 + 248);
    v7 = sub_10016E4E4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10016E4E4()
{
  v2 = v0[13];
  v1 = v0[14];
  if (sub_100006AC0(v2, 1, v1) == 1)
  {

    sub_1000306A4(v2, &qword_1003B05B0, &qword_1002FB940);
    v3 = v0[27];
    v4 = v0[28];

    return _swift_task_switch(sub_10016EABC, v3, v4);
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[34] = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[35] = v7;
    *v7 = v0;
    v7[1] = sub_10016E6A4;
    v8 = v0[16];

    return (v10)(v0 + 11, v8);
  }
}

uint64_t sub_10016E6A4()
{
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  *v3 = *v0;

  (*(v5 + 8))(v4, v6);
  v2[36] = v1[11];
  v7 = v1[31];
  v8 = v1[30];

  return _swift_task_switch(sub_10016E858, v8, v7);
}

uint64_t sub_10016E858()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return _swift_task_switch(sub_10016E8BC, v1, v2);
}

uint64_t sub_10016E8BC()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = [*(v0 + 288) integerValue];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10016F24C(v2);
    }

    v5 = static MainActor.shared.getter();
    *(v0 + 232) = v5;
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v17 = sub_100007618(v8, v6);

    return _swift_task_switch(v17, v18, v19);
  }

  else
  {

    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008A14(v9, &unk_1003B8978);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Received in-call orientation event with no orientation.", v12, 2u);
    }

    v13 = sub_10000C2F4();
    v14(v13);

    sub_10000535C();

    return v15();
  }
}

uint64_t sub_10016EABC()
{

  v0 = sub_10000C2F4();
  v1(v0);

  sub_10000535C();

  return v2();
}

uint64_t sub_10016EB64(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_10016EB84, 0, 0);
}

uint64_t sub_10016EB84()
{
  v1 = Notification.userInfo.getter();
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  *(v0 + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 96) = v3;
  AnyHashable.init<A>(_:)();
  sub_10016D410(v2, (v0 + 56));

  sub_10016FFB8(v0 + 16);
  if (!*(v0 + 80))
  {
LABEL_6:
    v4 = *(v0 + 104);
    sub_1000306A4(v0 + 56, &unk_1003AAF50, &qword_1002FB170);
    *v4 = 0;
    goto LABEL_7;
  }

  sub_1000064BC(0, &qword_1003AB080, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    **(v0 + 104) = 0;
  }

LABEL_7:
  sub_10000535C();

  return v5();
}

uint64_t sub_10016ECCC()
{
  sub_100009530();
  v6 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v6 - 8);
  sub_100006918(v7, v21);
  v8 = type metadata accessor for TaskPriority();
  sub_10000A3D4(v8);
  if (v5 == 1)
  {
    sub_1000306A4(v1, &qword_1003AA7B0, &qword_1002FA970);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100007118();
    (*(v9 + 8))(v1, v4);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v10)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    swift_unknownObjectRelease();
    if (v2)
    {
LABEL_6:
      v14 = String.utf8CString.getter() + 32;

      if (v13 | v11)
      {
        v23[0] = 0;
        v23[1] = 0;
        v16 = v23;
        v23[2] = v11;
        v23[3] = v13;
      }

      else
      {
        v16 = 0;
      }

      v22[0] = 7;
      v22[1] = v16;
      v22[2] = v14;
      v19 = sub_100006CC8(v15, v22, &type metadata for ()[8]);

      sub_1000306A4(v3, &qword_1003AA7B0, &qword_1002FA970);

      return v19;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  v17 = sub_1000306A4(v3, &qword_1003AA7B0, &qword_1002FA970);
  if (v13 | v11)
  {
    v24[0] = 0;
    v24[1] = 0;
    v18 = v24;
    v24[2] = v11;
    v24[3] = v13;
  }

  else
  {
    v18 = 0;
  }

  return sub_100006CC8(v17, v18, &type metadata for ()[8]);
}

uint64_t sub_10016EEE8()
{
  sub_100009530();
  v6 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v6 - 8);
  sub_100006918(v7, v21);
  v8 = type metadata accessor for TaskPriority();
  sub_10000A3D4(v8);
  if (v5 == 1)
  {
    sub_1000306A4(v1, &qword_1003AA7B0, &qword_1002FA970);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100007118();
    (*(v9 + 8))(v1, v4);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v10)
  {
    v11 = 0;
    v13 = 0;
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_1000306A4(v3, &qword_1003AA7B0, &qword_1002FA970);
    v18 = sub_10014EA98(&qword_1003AB0A8, &unk_1002FFF30);
    if (v13 | v11)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v11;
      v24[3] = v13;
    }

    else
    {
      v19 = 0;
    }

    return sub_100006CC8(v18, v19, v18);
  }

  swift_getObjectType();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v13 = v12;
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_6:
  v14 = String.utf8CString.getter() + 32;

  v15 = sub_10014EA98(&qword_1003AB0A8, &unk_1002FFF30);
  v16 = (v13 | v11);
  if (v13 | v11)
  {
    v23[0] = 0;
    v23[1] = 0;
    v16 = v23;
    v23[2] = v11;
    v23[3] = v13;
  }

  v22[0] = 7;
  v22[1] = v16;
  v22[2] = v14;
  v17 = sub_100006CC8(v15, v22, v15);

  sub_1000306A4(v3, &qword_1003AA7B0, &qword_1002FA970);

  return v17;
}

id sub_10016F114()
{
  if (*&v0[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_orientationTask])
  {

    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    Task.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCallViewCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10016F24C(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8978);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a1;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Ignoring non-interface device orientation: %ld", v6, 0xCu);
LABEL_12:
    }
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_viewController);
    if (v3)
    {
      oslog = v3;
      MultiwayViewController.deviceOrientation.setter();
      goto LABEL_13;
    }

    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008A14(v7, &unk_1003B8978);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Unexpectedly missing view controller for coordinator.", v9, 2u);
      goto LABEL_12;
    }
  }

LABEL_13:
}

void *sub_10016F600()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice);
  v2 = v1;
  return v1;
}

uint64_t sub_10016F68C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice);
  *(v1 + OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice) = a1;
  return _objc_release_x1(a1, v2);
}

__n128 sub_10016FD64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_10016FD98()
{
  result = qword_1003AB048;
  if (!qword_1003AB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB048);
  }

  return result;
}

uint64_t sub_10016FDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10016FEA0;

  return sub_10016DE68(a1, v4, v5, v6);
}

uint64_t sub_10016FEA0()
{
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

unint64_t sub_10017000C()
{
  v0 = sub_100025A50();
  AnyHashable._rawHashValue(seed:)(v0);
  v1 = sub_100008524();

  return sub_1001702D8(v1, v2);
}

unint64_t sub_100170044()
{
  v0 = sub_100025A50();
  NSObject._rawHashValue(seed:)(v0);
  v1 = sub_100008524();

  return sub_100170490(v1, v2);
}

unint64_t sub_10017007C()
{
  sub_100026EE0();
  type metadata accessor for UUID();
  sub_1001708B8(&qword_1003AB0B0, &type metadata accessor for UUID);
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100170720(v0, v1, &type metadata accessor for UUID, &qword_1003AB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100170144(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100170568(a1, v2);
}

unint64_t sub_1001701D8()
{
  v0 = sub_100025A50();
  NSObject._rawHashValue(seed:)(v0);
  v1 = sub_100008524();

  return sub_100170660(v1, v2);
}

unint64_t sub_100170210()
{
  sub_100026EE0();
  type metadata accessor for TPTipsHelper.Entry.Kind();
  sub_1001708B8(&qword_1003AB098, &type metadata accessor for TPTipsHelper.Entry.Kind);
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100170720(v0, v1, &type metadata accessor for TPTipsHelper.Entry.Kind, &qword_1003AB0A0, &type metadata accessor for TPTipsHelper.Entry.Kind, &protocol conformance descriptor for TPTipsHelper.Entry.Kind);
}

unint64_t sub_1001702D8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10017039C(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10016FFB8(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10017043C()
{
  result = qword_1003AB090;
  if (!qword_1003AB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB090);
  }

  return result;
}

unint64_t sub_100170490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1000064BC(0, &unk_1003AB0C0, SCAParticipant_ptr);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100170568(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_100170660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for MessageID(0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100170720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v18 = a4;
  v16 = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v21 = v6 + 64;
  v17 = v6;
  v12 = ~(-1 << *(v6 + 32));
  for (i = a2 & v12; ((1 << i) & *(v21 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v9 + 16))(v11, *(v17 + 48) + *(v9 + 72) * i, v8);
    sub_1001708B8(v18, v19);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v11, v8);
    if (v14)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1001708B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100008524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001708FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10017093C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001709B0()
{
  result = qword_1003AB0D0;
  if (!qword_1003AB0D0)
  {
    sub_100155B7C(&qword_1003AB0D8, &unk_1002FB9E8);
    sub_10016FD98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB0D0);
  }

  return result;
}

void sub_100170A48(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_100017230(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

Swift::Void __swiftcall PHAudioCallViewController.updateCallRecordingIfNeeded(buttonContainer:pillContainer:)(UIStackView_optional buttonContainer, UIStackView_optional pillContainer)
{
  v3 = v2;
  [v2 addCallRecordingIfNeededWithButtonContainer:buttonContainer.value.super.super.super.isa pillContainer:*&buttonContainer.is_nil];
  v4 = [v2 callRecordingButtonViewController];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CallRecordingButtonViewController();
    if (swift_dynamicCastClass())
    {
      v6 = [v2 frontmostCall];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 callUUID];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12._countAndFlagsBits = v9;
        v12._object = v11;
        CallRecordingButtonViewController.update(callUUID:)(v12);

        [v7 recordingAvailability];
        CallRecordingButtonViewController.update(recordingAvailability:)();

        v5 = v7;
      }
    }
  }

  v13 = [v2 callRecordingPillViewController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 view];

    if (v15)
    {
      [v15 setHidden:{objc_msgSend(v3, "canRecord") ^ 1}];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall PHAudioCallViewController.invertColorCallRecordingButtonColor(_:)(Swift::Bool a1)
{
  v3 = [v1 callRecordingButtonViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CallRecordingButtonViewController();
    if (swift_dynamicCastClass())
    {
      CallRecordingButtonViewController.invertColor(_:)(a1);
    }
  }
}

void sub_100170E54(uint64_t a1, uint64_t a2)
{
  v5 = [v2 features];
  v6 = [v5 callRecordingEnabled];

  if (v6)
  {
    [v2 addRecordingIndicatorWithPillContainer:a2];
    v7 = &selRef_removeButtonFrom_;
    if ([v2 canRecord] && !objc_msgSend(v2, "callIsRecording"))
    {
      v7 = &selRef_addButton_;
    }

    v8 = *v7;

    [v2 v8];
  }
}

void sub_100170FC4(void *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for CallRecordingViewMaterialType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CallRecordingPillViewController.DisplayStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [v1 features];
  v12 = [v11 callRecordingEnabled];

  if (v12)
  {
    v13 = [v2 callRecordingPillViewController];
    if (v13)
    {
    }

    else
    {
      if (sub_10001D2CC())
      {
        [objc_opt_self() ambientAudioRoutesButtonSize];
        *v10 = v14;
        v15 = &enum case for CallRecordingPillViewController.DisplayStyle.ambient(_:);
      }

      else
      {
        v15 = &enum case for CallRecordingPillViewController.DisplayStyle.portrait(_:);
      }

      (*(v8 + 104))(v10, *v15, v7);
      v16 = objc_allocWithZone(type metadata accessor for CallRecordingPillViewController());
      v17 = CallRecordingPillViewController.init(displayStyle:usesGlass:)();
      (*(v4 + 104))(v6, enum case for CallRecordingViewMaterialType.photo(_:), v3);
      CallRecordingPillViewController.updateBackgroundMaterial(material:)();
      (*(v4 + 8))(v6, v3);
      [v2 setCallRecordingPillViewController:v17];
    }

    v18 = [v2 callRecordingPillViewController];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 view];
      if (!v20)
      {
LABEL_23:

        return;
      }

      v21 = v20;
      if (sub_10001D2CC())
      {
        v22 = [v2 features];
        v23 = [v22 callRecordingDominoEnabled];

        if (!v23)
        {
          goto LABEL_22;
        }

        v24 = [v2 ambientAudioRoutesControlView];
        if (!v24)
        {
          goto LABEL_22;
        }

        v25 = v24;
        if (v44)
        {
          v26 = v44;
          [v26 addArrangedSubview:v21];
          [v2 addChildViewController:v19];
          [v19 didMoveToParentViewController:v2];
          [v2 updateLayoutSupplementalButtons];
        }

        v27 = objc_opt_self();
        sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1002F96C0;
        v29 = [v21 centerYAnchor];
        v30 = [v25 centerYAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];

        *(v28 + 32) = v31;
        v32 = [v21 trailingAnchor];
        v33 = [v25 leadingAnchor];
        v34 = [v32 constraintEqualToAnchor:v33 constant:-12.0];
      }

      else
      {
        if ([v2 middleViewState] != 1)
        {
          goto LABEL_22;
        }

        v35 = [objc_msgSend(v2 "buttonsViewController")];
        swift_unknownObjectRelease();
        sub_10001D320(v35);

        if (v44)
        {
          v36 = v44;
          [v36 addArrangedSubview:v21];
          [v2 addChildViewController:v19];
          [v19 didMoveToParentViewController:v2];
          [v2 updateLayoutSupplementalButtons];
        }

        v37 = [v2 recordingIndicatorLayoutGuide];
        if (!v37)
        {
          goto LABEL_22;
        }

        v25 = v37;
        v27 = objc_opt_self();
        sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1002F96C0;
        v38 = [v21 centerXAnchor];
        v39 = [v25 centerXAnchor];
        v40 = [v38 constraintEqualToAnchor:v39];

        *(v28 + 32) = v40;
        v32 = [v21 widthAnchor];
        v33 = [v25 widthAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
      }

      v41 = v34;

      *(v28 + 40) = v41;
      sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v27 activateConstraints:isa];

LABEL_22:
      goto LABEL_23;
    }
  }
}

double sub_1001716A8()
{
  v1 = [v0 isShowingPosterBadge];
  [v0 callDetailsButtonPaddingTrailing];
  if (v1)
  {
    return result * 3.0;
  }

  return result;
}

id sub_100171788(SEL *a1, SEL *a2)
{
  v5 = [v2 frontmostCall];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([v5 isVideo])
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = [v6 *v7];

  return v8;
}

void PHAudioCallViewController.updateCallRecordingViewBackgroundMaterialType(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CallRecordingViewMaterialType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 callRecordingPillViewController];
  if (v8)
  {
    v12 = v8;
    type metadata accessor for CallRecordingPillViewController();
    if (swift_dynamicCastClass())
    {
      switch(a1)
      {
        case 2:
          v9 = &enum case for CallRecordingViewMaterialType.noPhoto(_:);
          goto LABEL_12;
        case 1:
          v9 = &enum case for CallRecordingViewMaterialType.avatar(_:);
          goto LABEL_12;
        case 0:
          v9 = &enum case for CallRecordingViewMaterialType.photo(_:);
LABEL_12:
          (*(v5 + 104))(v7, *v9, v4);
          CallRecordingPillViewController.updateBackgroundMaterial(material:)();

          (*(v5 + 8))(v7, v4);
          return;
      }
    }

    v10 = v12;
  }
}

unint64_t sub_100171AA0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100171AB0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100171AA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100171AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100005BD0();
  v10 = v9 - v8;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v11);
  sub_10000693C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = (&v29 - v16);
  v18 = sub_10014EA98(&qword_1003AB238, &qword_1002FBC28);
  v19 = sub_100005568(v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_100153C6C(a1, &v29 - v21);
  sub_100153C6C(a2, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100153C6C(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = *v17 == *&v22[v23];
      goto LABEL_6;
    }

LABEL_8:
    sub_100008360(v22, &qword_1003AB238, &qword_1002FBC28);
    v26 = 0;
    return v26 & 1;
  }

  v24 = sub_100025A60();
  sub_100153C6C(v24, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v14, v4);
    goto LABEL_8;
  }

  (*(v6 + 32))(v10, &v22[v23], v4);
  v26 = static UUID.== infix(_:_:)();
  v27 = *(v6 + 8);
  v27(v10, v4);
  v27(v14, v4);
LABEL_6:
  sub_100153CD0(v22);
  return v26 & 1;
}

uint64_t sub_100171D54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10000688C();
  v45 = v5;
  v46 = v4;
  __chkstk_darwin(v4);
  sub_10000693C();
  v43 = (v6 - v7);
  __chkstk_darwin(v8);
  v44 = &v42 - v9;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v10);
  sub_10000693C();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v42 - v19;
  __chkstk_darwin(v18);
  v22 = (&v42 - v21);
  v23 = sub_10014EA98(&qword_1003AB238, &qword_1002FBC28);
  v24 = sub_100005568(v23);
  v25 = __chkstk_darwin(v24);
  v27 = &v42 - v26;
  v28 = *(v25 + 56);
  sub_100153C6C(a1, &v42 - v26);
  v47 = a2;
  sub_100153C6C(a2, &v27[v28]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153C6C(v27, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v44;
      v29 = v45;
      v31 = *(v45 + 32);
      v32 = v46;
      v31(v44, v20, v46);
      v33 = v43;
      v31(v43, &v27[v28], v32);
      if (static UUID.== infix(_:_:)())
      {
        v34 = *(v29 + 8);
        v34(v33, v32);
        v34(v30, v32);
LABEL_7:
        sub_100153CD0(v27);
        v37 = 0;
        return v37 & 1;
      }

      v37 = static UUID.< infix(_:_:)();
      v40 = *(v29 + 8);
      v40(v33, v32);
      v40(v30, v32);
LABEL_18:
      sub_100153CD0(v27);
      return v37 & 1;
    }

    (*(v45 + 8))(v20, v46);
  }

  else
  {
    sub_100153C6C(v27, v22);
    v35 = *v22;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = *&v27[v28];
      if (v35 == v36)
      {
        goto LABEL_7;
      }

      v37 = v35 < v36;
      goto LABEL_18;
    }
  }

  sub_100153C6C(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153CD0(v17);
    v38 = 1;
  }

  else
  {
    v38 = 0;
  }

  sub_100153C6C(v47, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153CD0(v13);
    v39 = 1;
  }

  else
  {
    v39 = 0;
  }

  v37 = v38 < v39;
  sub_100008360(v27, &qword_1003AB238, &qword_1002FBC28);
  return v37 & 1;
}

void sub_10017211C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100005BD0();
  v8 = v7 - v6;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v9);
  sub_100005BD0();
  v12 = (v11 - v10);
  sub_100153C6C(v1, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100025A60();
    v14(v13);
    Hasher._combine(_:)(1uLL);
    sub_10017314C(&qword_1003AB0B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    v15 = *v12;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v15);
  }
}

Swift::Int sub_1001722B8()
{
  Hasher.init(_seed:)();
  sub_10017211C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001723E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10017211C(v2);
  return Hasher._finalize()();
}

uint64_t sub_100172438()
{
  v1 = type metadata accessor for UUID();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100005BD0();
  v7 = v6 - v5;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v8);
  sub_100005BD0();
  v11 = v10 - v9;
  sub_100153C6C(v0 + OBJC_IVAR___MPMessageID_value, v10 - v9);
  sub_100025A60();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v11, v1);
    UUID.uuidString.getter();
    (*(v3 + 8))(v7, v1);
  }

  else
  {
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  return sub_100025A60();
}

uint64_t sub_1001726A0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v3);
  sub_100005BD0();
  v6 = v5 - v4;
  sub_100153C6C(v1 + OBJC_IVAR___MPMessageID_value, v5 - v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for UUID();
  v9 = v8;
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return sub_100006848(a1, v10, 1, v9);
}

id sub_1001727A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

id sub_10017281C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___MPMessageID_value] = a1;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1001728B8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MPMessageID_value;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t sub_100172AA4(uint64_t a1)
{
  result = type metadata accessor for MessageID.Value(319);
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

uint64_t sub_100172B54(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for UUID();
  sub_10000688C();
  v31 = v4;
  __chkstk_darwin(v5);
  sub_10000693C();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v12);
  sub_10000693C();
  v15 = (v13 - v14);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  v19 = sub_10014EA98(&qword_1003AB238, &qword_1002FBC28);
  v20 = sub_100005568(v19);
  v21 = __chkstk_darwin(v20);
  v23 = &v31 - v22;
  v24 = OBJC_IVAR___MPMessageID_value;
  v25 = *(v21 + 56);
  sub_100153C6C(a1 + OBJC_IVAR___MPMessageID_value, &v31 - v22);
  sub_100153C6C(v32 + v24, &v23[v25]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153C6C(v23, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v31;
      v27 = *(v31 + 32);
      v27(v11, v18, v3);
      v27(v8, &v23[v25], v3);
      v28 = static UUID.< infix(_:_:)();
      v29 = *(v26 + 8);
      v29(v8, v3);
      v29(v11, v3);
    }

    else
    {
      (*(v31 + 8))(v18, v3);
      sub_100153CD0(&v23[v25]);
      v28 = 1;
    }
  }

  else
  {
    sub_100153C6C(v23, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100153CD0(&v23[v25]);
      v28 = 0;
    }

    else
    {
      v28 = *v15 < *&v23[v25];
    }
  }

  sub_100153CD0(v23);
  return v28 & 1;
}

Swift::Int sub_100172E4C()
{
  Hasher.init(_seed:)();
  sub_10017211C(v1);
  return Hasher._finalize()();
}

uint64_t sub_100172E98(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for MessageID.Value(0);
  v4 = sub_100005568(v3);
  __chkstk_darwin(v4);
  sub_100005BD0();
  v7 = v6 - v5;
  sub_10015FE80(a1, v11);
  if (!v12)
  {
    sub_100008360(v11, &unk_1003AAF50, &qword_1002FB170);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  sub_100153C6C(v10 + OBJC_IVAR___MPMessageID_value, v7);
  v8 = sub_100171AE4(v7, v1 + OBJC_IVAR___MPMessageID_value);

  sub_100153CD0(v7);
  return v8 & 1;
}

uint64_t sub_100173040(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001730B0()
{
  result = qword_1003AB228;
  if (!qword_1003AB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB228);
  }

  return result;
}

uint64_t sub_10017314C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001731F0()
{
  result = qword_1003AB240;
  if (!qword_1003AB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB240);
  }

  return result;
}

uint64_t sub_100173248(void *a1)
{
  type metadata accessor for ContactStoreProvider();
  static ContactStoreProvider.shared.getter();
  v2 = [a1 provider];
  v3 = [v2 assumedIdentity];

  v4 = ContactStoreProvider.contactStore(for:)();

  swift_unknownObjectRelease();
  return v4;
}

void *sub_100173354()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_1001733E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window) = a1;
  return _objc_release_x1(a1, v2);
}

void sub_1001733F4(void *a1)
{
  v2 = v1;
  if (qword_1003A9FC8 != -1)
  {
    sub_100007634(&qword_1003A9FC8);
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, qword_1003AB250);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100005924();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "scene willConnectTo", v7, 2u);
    sub_100005BB8(v7);
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = *(*(v2 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_controller) + 16);
    if (v9)
    {
      v10 = v8;
      v11 = a1;
      v12 = v9;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        oslog = v11;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v44 = v16;
        *v15 = 136315138;
        v17 = [v10 activationContext];
        if (v17 && (sub_100173D58(v17), v18))
        {
          v19 = String.init<A>(reflecting:)();
          v21 = v20;
        }

        else
        {

          v21 = 0xE300000000000000;
          v19 = 7104878;
        }

        v27 = sub_100008ADC(v19, v21, &v44);

        *(v15 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v13, v14, "alert will show %s", v15, 0xCu);
        sub_100005B2C(v16);
        sub_100005BB8(v16);
        sub_100005BB8(v15);

        v11 = oslog;
      }

      else
      {
      }

      v28 = sub_1001ED2C8();
      v29 = v28;
      if (v30 > 1u)
      {
        v32 = v28;
      }

      else
      {
        v31 = objc_allocWithZone(type metadata accessor for RemoteAlertHostingViewController());
        v32 = sub_1001FCA38(v29);
      }

      v33 = v32;
      v34 = objc_allocWithZone(UIWindow);
      v35 = v33;
      v36 = [v34 initWithWindowScene:v10];
      [v36 setRootViewController:v35];

      [v36 makeKeyAndVisible];
      v37 = *(v2 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window);
      *(v2 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window) = v36;
      v38 = v36;

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = sub_100005924();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Window is marked as visible", v41, 2u);
        sub_100005BB8(v41);
      }

      [v10 setAllowsMenuButtonDismissal:1];
      [v10 setAllowsAlertStacking:1];

      return;
    }

    osloga = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_100005924();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Not able to find alert handle.", v26, 2u);
      sub_100005BB8(v26);
    }
  }

  else
  {
    osloga = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v22))
    {
      v23 = sub_100005924();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v22, "Not able to find alert scene.", v23, 2u);
      sub_100005BB8(v23);
    }
  }
}

void sub_100173964(uint64_t a1, const char *a2)
{
  if (qword_1003A9FC8 != -1)
  {
    sub_100007634(&qword_1003A9FC8);
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, qword_1003AB250);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = sub_100005924();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
    sub_100005BB8(v5);
  }
}

void sub_100173A90()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window);
  *(v0 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window) = 0;

  if (qword_1003A9FC8 != -1)
  {
    sub_100007634(&qword_1003A9FC8);
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, qword_1003AB250);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = sub_100005924();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "sceneDidDisconnect", v4, 2u);
    sub_100005BB8(v4);
  }
}

id sub_100173BCC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_controller;
  type metadata accessor for RemoteAlertController();
  *&v0[v2] = swift_initStaticObject();
  *&v0[OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100173CD8()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003AB250);
  sub_100008A14(v0, qword_1003AB250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100173D58(void *a1)
{
  v2 = [a1 reason];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100173DF0(uint64_t a1)
{
  sub_100009878(a1, v13, &qword_1003AB3F8, &unk_1002FBD28);
  if (*&v13[3] == 1)
  {
    sub_100008360(v13, &qword_1003AB3F8, &unk_1002FBD28);
    sub_100008E00();
  }

  else
  {
    sub_100014220(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0]);
    sub_100026E5C(v9, v10);
    String.init<A>(reflecting:)();
    sub_1000089D4();
    sub_100178F5C(v14);
  }

  return sub_1000089C8();
}

uint64_t sub_100173EBC(uint64_t a1)
{
  sub_100009878(a1, v13, &qword_1003AB3E8, &qword_1002FBD20);
  if (*&v13[3] == 1)
  {
    sub_100008360(v13, &qword_1003AB3E8, &qword_1002FBD20);
    sub_100008E00();
  }

  else
  {
    sub_100014220(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0]);
    sub_100027CBC(v9, v10);
    String.init<A>(reflecting:)();
    sub_1000089D4();
    sub_100178DF8(v14);
  }

  return sub_1000089C8();
}

uint64_t sub_100173F88(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v10 = sub_10014EA98(a2, a3);
  sub_100005568(v10);
  sub_100005BE0();
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = a4(0);
  sub_1000058E8();
  __chkstk_darwin(v15);
  sub_10000693C();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v23 - v20;
  sub_100009878(a1, v13, a2, a3);
  if (sub_100006AC0(v13, 1, v14) == 1)
  {
    sub_100008360(v13, a2, a3);
  }

  else
  {
    sub_100178E4C(v13, v21, a5);
    sub_100178EA8(v21, v18, a5);
    String.init<A>(reflecting:)();
    sub_100178F04(v21, a5);
  }

  return sub_1000088E0();
}

uint64_t sub_100174128(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = sub_10014EA98(a2, a3);
  sub_100005568(v8);
  sub_100005BE0();
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = a4(0);
  sub_10000688C();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000693C();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v23 - v20;
  sub_100009878(a1, v11, a2, a3);
  if (sub_100006AC0(v11, 1, v12) == 1)
  {
    sub_100008360(v11, a2, a3);
  }

  else
  {
    (*(v14 + 32))(v21, v11, v12);
    (*(v14 + 16))(v18, v21, v12);
    String.init<A>(reflecting:)();
    (*(v14 + 8))(v21, v12);
  }

  return sub_1000088E0();
}

uint64_t sub_1001742F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  sub_100179254();
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1001743B4;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1);
}

uint64_t sub_1001743B4()
{
  sub_1000058A8();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_100006870();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = sub_100174544;
  }

  else
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v12;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = sub_100174520;
  }

  return _swift_task_switch(v13, v9, v11);
}

uint64_t sub_100174544()
{
  sub_100006610();
  *(v0 + 16) = *(v0 + 48);
  sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_10000535C();

  return v1();
}

id ICSApplicationDelegate.bannerPresentationManager.getter()
{
  v1 = [v0 bannerPresentationManager];
  v2 = direct field offset for CNKBannerPresentationManager.value;
  swift_beginAccess();
  v3 = *&v1[v2];

  return v3;
}

uint64_t ICSApplicationDelegate.updateForegroundApp(url:using:)@<X0>(uint64_t a1@<X1>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  [v3 foregroundAppApplicationType];
  sub_1000065B4(v4, &selRef_foregroundAppBundleIdentifier);
  if (v5 && (type metadata accessor for ForegroundApp(), (v6 = ForegroundApp.__allocating_init(bundleIdentifier:type:)()) != 0))
  {
    v7 = v6;
    v8 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v9 = *(a1 + v8);
    v10 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

    if (v10)
    {
      v11 = v7;
      dispatch thunk of ConversationControlsManager.foregroundApp.setter();
    }

    else
    {
    }

    return 1;
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v12 = type metadata accessor for Logger();
    sub_1000058D0(v12, &unk_1003B8820);
    v13 = v4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_100005384();
      v17 = sub_100005D4C();
      v28[0] = v17;
      *v16 = 136315138;
      v28[3] = v13;
      sub_1000064BC(0, &qword_1003AB3C0, NSURL_ptr);
      v18 = v13;
      v19 = String.init<A>(reflecting:)();
      v21 = sub_100008ADC(v19, v20, v28);

      *(v16 + 4) = v21;
      sub_10000C14C();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      sub_100005B2C(v17);
      sub_100005340();
      sub_100005368();
    }

    else
    {
    }

    return 0;
  }
}

void ICSApplicationDelegate.handleInterventionURL(_:continueWith:)(char *a1, uint64_t a2, uint64_t a3)
{
  v96 = a3;
  v95 = a2;
  v4 = type metadata accessor for InterventionRequest();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000693C();
  v10 = (v8 - v9);
  v12 = __chkstk_darwin(v11);
  v103 = &v88 - v13;
  __chkstk_darwin(v12);
  v101 = &v88 - v14;
  v15 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_100005568(v15);
  sub_100005BE0();
  __chkstk_darwin(v16);
  v99 = &v88 - v17;
  v18 = type metadata accessor for URL();
  sub_10000688C();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_10000693C();
  v93 = (v22 - v23);
  v25 = __chkstk_darwin(v24);
  v102 = &v88 - v26;
  __chkstk_darwin(v25);
  v28 = &v88 - v27;
  if (qword_1003A9F78 != -1)
  {
    sub_10000C314(&qword_1003A9F78);
  }

  v98 = v10;
  v29 = type metadata accessor for Logger();
  sub_1000058D0(v29, &unk_1003B88C8);
  v30 = *(v20 + 16);
  v104 = a1;
  v30(v28, a1, v18);
  v100 = v10;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v94 = v20;
  if (v33)
  {
    v34 = sub_100005384();
    v92 = v4;
    v35 = v34;
    v89 = v34;
    v36 = sub_100005D4C();
    v91 = v6;
    v90 = v36;
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = v99;
    v30(v99, v28, v18);
    sub_100006848(v37, 0, 1, v18);
    sub_100009548();
    v41 = sub_100174128(v37, v38, v39, v40);
    v42 = v18;
    v44 = v43;
    sub_100008360(v37, &qword_1003AAF20, &unk_1002FABA0);
    v45 = *(v20 + 8);
    v46 = sub_100006640();
    v45(v46);
    v47 = sub_100008ADC(v41, v44, aBlock);
    v18 = v42;

    v48 = v89;
    *(v89 + 4) = v47;
    v49 = v48;
    _os_log_impl(&_mh_execute_header, v31, v32, "handleInterventionURL: %s", v48, 0xCu);
    v50 = v90;
    sub_100005B2C(v90);
    v6 = v91;
    sub_100005BB8(v50);
    v4 = v92;
    sub_100005BB8(v49);
  }

  else
  {

    v45 = *(v20 + 8);
    (v45)(v28, v18);
  }

  v51 = v104;
  v30(v102, v104, v18);
  v52 = v103;
  v53 = v18;
  InterventionRequest.init(url:)();
  v54 = v101;
  (*(v6 + 32))(v101, v52, v4);
  v55 = v98;
  (*(v6 + 16))(v98, v54, v4);
  v56 = sub_100006640();
  v58 = v57(v56);
  if (v58 == enum case for InterventionRequest.dialRequest(_:))
  {
    v59 = sub_100006640();
    v60(v59);
    sub_10000A410();
    sub_1000072C4(COERCE_DOUBLE(1107296256));
    v106 = v61;
    v107 = &unk_10035BE28;
    v62 = _Block_copy(aBlock);

    [v97 handleInterventionWithDialRequestIfNeeded:v55 continueWith:v62];
LABEL_10:
    _Block_release(v62);

    (*(v6 + 8))(v101, v4);
    goto LABEL_14;
  }

  if (v58 == enum case for InterventionRequest.joinConversationRequest(_:))
  {
    v63 = sub_100006640();
    v64(v63);
    sub_10000A410();
    sub_1000072C4(COERCE_DOUBLE(1107296256));
    v106 = v65;
    v107 = &unk_10035BE00;
    v62 = _Block_copy(aBlock);

    [v97 handleInterventionWithConversationRequestIfNeeded:v55 continueWith:v62];
    goto LABEL_10;
  }

  v103 = v45;
  v66 = v93;
  v30(v93, v51, v53);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = sub_100005384();
    v102 = v69;
    v104 = sub_100005D4C();
    aBlock[0] = v104;
    *v69 = 136315138;
    v70 = v99;
    v30(v99, v66, v53);
    sub_100006848(v70, 0, 1, v53);
    v71 = v4;
    sub_100009548();
    v73 = v72;
    v76 = v6;
    v77 = sub_100174128(v70, v72, v74, v75);
    v79 = v78;
    sub_100008360(v70, v73, &unk_1002FABA0);
    v80 = sub_10000FF9C();
    v81(v80);
    v82 = sub_100008ADC(v77, v79, aBlock);

    v83 = v102;
    *(v102 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v67, v68, "Unknown intervention requestl. %s", v83, 0xCu);
    sub_100005B2C(v104);
    sub_100005368();
    sub_100005BB8(v83);

    v84 = *(v76 + 8);
    v84(v101, v71);
    v84(v98, v71);
  }

  else
  {

    v85 = sub_10000FF9C();
    v86(v85);
    v87 = *(v6 + 8);
    v87(v101, v4);
    v87(v98, v4);
  }

LABEL_14:
  sub_100007B28();
}

void sub_100175294(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100175454(void *a1, void *a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if ([a1 bypassIntervention])
  {
    (a3)[2](a3, 0, a1);

    _Block_release(a3);
    return;
  }

  v55 = a1;
  v56 = v5;
  aBlock = a3;
  v6 = [a1 remoteMembers];
  sub_1000064BC(0, &qword_1003AAFC0, TUConversationMember_ptr);
  sub_1000064FC(&qword_1003AAFC8, &qword_1003AAFC0, TUConversationMember_ptr);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_10000654C(v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
    v63 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v60 = sub_100006554(v7);
    v61 = v11;
    v62 = v12 & 1;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      while (!__OFADD__(v13++, 1))
      {
        v16 = v60;
        v15 = v61;
        v17 = v62;
        sub_100005150(v60, v61, v62, v7, &qword_1003AAFC0, TUConversationMember_ptr);
        v19 = v18;
        v20 = [v18 handle];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((v7 & 0xC000000000000001) != 0)
        {
          if (!v17)
          {
            goto LABEL_49;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10014EA98(&unk_1003AAFD0, &qword_1002FB800);
          v25 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v25(&v59, 0);
        }

        else
        {
          if (v17)
          {
            goto LABEL_50;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v21 = 1 << *(v7 + 32);
          if (v16 >= v21)
          {
            goto LABEL_44;
          }

          v22 = v16 >> 6;
          v23 = *(v7 + 56 + 8 * (v16 >> 6));
          if (((v23 >> v16) & 1) == 0)
          {
            goto LABEL_45;
          }

          if (*(v7 + 36) != v15)
          {
            goto LABEL_46;
          }

          v24 = v23 & (-2 << (v16 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v22 << 6;
            v27 = v22 + 1;
            v28 = (v7 + 64 + 8 * v22);
            while (v27 < (v21 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100005884(v16, v15, 0);
                v21 = __clz(__rbit64(v29)) + v26;
                goto LABEL_26;
              }
            }

            sub_100005884(v16, v15, 0);
          }

LABEL_26:
          v31 = *(v7 + 36);
          v60 = v21;
          v61 = v31;
          v62 = 0;
        }

        if (v13 == v10)
        {

          sub_100005884(v60, v61, v62);
          v32 = v63;
          v9 = _swiftEmptyArrayStorage;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_30:
  v33 = sub_100017230(v32);
  v35 = v55;
  v34 = v56;
  if (!v33)
  {

LABEL_42:
    sub_1001792AC(v35, v9, sub_100005F2C, v34, a2, &unk_10035BED8, &off_10035F138, &unk_1002FBD40);

    _Block_release(aBlock);
    return;
  }

  v36 = v33;
  v59 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v36 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v58 = v32 & 0xC000000000000001;
    v38 = v32;
    do
    {
      if (v58)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v32 + 8 * v37 + 32);
      }

      v40 = v39;
      v41 = sub_1000065B4(v39, &selRef_siriDisplayName);
      if (v42)
      {
        v43 = v41;
        v44 = v42;
      }

      else
      {
        v45 = [v40 value];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v46;
      }

      ++v37;
      sub_10014EA98(&qword_1003AAF10, &unk_1002FB780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002FAB60;
      v48 = [v40 value];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      *(inited + 32) = v49;
      *(inited + 40) = v51;
      v52 = sub_1000055F4(inited);
      v53 = objc_allocWithZone(SCAParticipant);
      sub_1000057FC(v43, v44, v52);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 = v38;
    }

    while (v36 != v37);

    v9 = v59;
    v35 = v55;
    v34 = v56;
    goto LABEL_42;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  _Block_release(aBlock);
  __break(1u);
LABEL_50:
  _Block_release(aBlock);
  __break(1u);
}

uint64_t sub_100175A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v13;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a4;
  v8[29] = a5;
  sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v8[34] = swift_task_alloc();
  v8[35] = type metadata accessor for MainActor();
  v8[36] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[37] = v10;
  v8[38] = v9;

  return _swift_task_switch(sub_100175B34, v10, v9);
}

uint64_t sub_100175B34()
{
  v1 = v0[30];
  v2 = objc_opt_self();
  sub_1000064BC(0, &unk_1003AB0C0, SCAParticipant_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[39] = isa;
  v0[40] = swift_getObjectType();
  v4 = (*(v1 + 32))();
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_100175CD0;
  v5 = swift_continuation_init();
  v0[17] = sub_10014EA98(&qword_1003AB408, &qword_1002FBD48);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100177110;
  v0[13] = &unk_10035BEF0;
  v0[14] = v5;
  [v2 analysesForInterventionOnOutgoingCallToParticipants:isa callType:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100175CD0()
{
  sub_100006610();
  sub_1000058C4();
  v1 = v0[6];
  v0[41] = v1;
  v2 = v0[38];
  v3 = v0[37];
  if (v1)
  {
    v4 = sub_100176A70;
  }

  else
  {
    v4 = sub_100175DF8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100176470()
{
  sub_1000058A8();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = sub_100176C60;
  }

  else
  {
    v7 = sub_1001765A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10017682C()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[52] = v0;

  if (v0)
  {
    v7 = v3[37];
    v8 = v3[38];
    v9 = sub_100176F38;
  }

  else
  {
    sub_100005B2C(v3 + 18);
    v7 = v3[37];
    v8 = v3[38];
    v9 = sub_100176930;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100176930()
{
  sub_100006880();
  v1 = *(v0 + 400);

  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v2) = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v2)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      swift_unknownObjectRetain();
    }

    (*(v0 + 248))(v5, v6);
  }

  else
  {
  }

  sub_10000535C();

  return v7();
}

uint64_t sub_100176A70()
{
  v17 = v0;
  v1 = v0[39];

  swift_willThrow();

  if (qword_1003A9F78 != -1)
  {
    sub_10000C314(&qword_1003A9F78);
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B88C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = sub_100005384();
    v7 = sub_100005D4C();
    v16 = v7;
    *v6 = 136315138;
    v0[24] = v5;
    swift_errorRetain();
    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100008ADC(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Not able to fetch analysis results. %s", v6, 0xCu);
    sub_100005B2C(v7);
    sub_100005340();
    sub_100005368();
  }

  v11 = v0[31];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v11(v12, v13);

  sub_10000535C();

  return v14();
}

uint64_t sub_100176F38()
{
  v13 = v0;

  sub_100005B2C(v0 + 18);
  if (qword_1003A9F80 != -1)
  {
    swift_once();
  }

  sub_1000058D0(v0[49], &unk_1003B88E0);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[52];
  if (v3)
  {
    v5 = sub_100005384();
    v6 = sub_100005D4C();
    v12 = v6;
    *v5 = 136315138;
    v0[27] = v4;
    swift_errorRetain();
    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    v7 = String.init<A>(reflecting:)();
    v9 = sub_100008ADC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Show remote alert error %s", v5, 0xCu);
    sub_100005B2C(v6);
    sub_100005BB8(v6);
    sub_100005BB8(v5);
  }

  else
  {
  }

  sub_10000535C();

  return v10();
}

uint64_t sub_100177110(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100008878((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1000088BC(v4, v5);
  }

  else
  {
    sub_1000064BC(0, &unk_1003AB0C0, SCAParticipant_ptr);
    sub_1000064BC(0, &qword_1003AB410, SCSensitivityAnalysis_ptr);
    sub_1000064FC(&qword_1003AB418, &unk_1003AB0C0, SCAParticipant_ptr);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_1002520B4();
  }
}

uint64_t sub_100177208(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 < 0)
  {
    return __CocoaDictionary.count.getter(a1);
  }

  return __CocoaDictionary.count.getter(a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100177228()
{
  sub_10014EA98(&qword_1003B05B0, &qword_1002FB940);
  v0[3] = swift_task_alloc();
  v1 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9] = v3;
  v0[10] = v2;

  return _swift_task_switch(sub_100177354, v3, v2);
}

uint64_t sub_100177354()
{
  sub_100006880();
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = static MainActor.shared.getter();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100177478;
  v4 = v0[3];

  return (sub_1001742F0)(v4, v2, &protocol witness table for MainActor, v0 + 2);
}

uint64_t sub_100177478()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[13] = v0;

  if (!v0)
  {

    v8 = v3[9];
    v9 = v3[10];

    return _swift_task_switch(sub_100177578, v8, v9);
  }

  return result;
}

uint64_t sub_100177578()
{
  sub_100006880();
  v1 = *(v0 + 24);

  v2 = sub_1000089C8();
  v3(v2);
  v4 = type metadata accessor for Notification();
  if (sub_100006AC0(v1, 1, v4) != 1)
  {
    sub_100008360(*(v0 + 24), &qword_1003B05B0, &qword_1002FB940);
  }

  static Task<>.checkCancellation()();

  sub_10000535C();

  return v5();
}

uint64_t sub_100177660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100177754, v7, v6);
}

uint64_t sub_100177754()
{
  sub_100006610();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10017781C;

  return sub_1000251F4();
}

uint64_t sub_10017781C()
{
  sub_100006880();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  *v4 = *v1;
  *(v3 + 80) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[8];
  v9 = v2[7];
  if (v0)
  {
    v10 = sub_100177A4C;
  }

  else
  {
    v10 = sub_1001779A8;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1001779A8()
{
  sub_100006610();

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    Task.cancel()();
  }

  sub_10000535C();

  return v0();
}

uint64_t sub_100177A4C()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

Swift::Void __swiftcall ICSApplicationDelegate.dismissAnsweredCallBannerIfNeeded()()
{
  v1 = [v0 features];
  v2 = [v1 isIncomingCallBannerEnabled];

  if (!v2 || (v3 = [v0 features], v4 = objc_msgSend(v3, "isSystemApertureEnabled"), v3, (v4 & 1) != 0))
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v5 = type metadata accessor for Logger();
    sub_1000058D0(v5, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = sub_100005924();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "dismissAnsweredCallBannerIfNeeded: not needed", v7, 2u);
      sub_100005BB8(v7);
    }

LABEL_20:
    v16 = oslog;
    goto LABEL_21;
  }

  oslog = ICSApplicationDelegate.bannerPresentationManager.getter();
  v8 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();
  if (!v8)
  {
LABEL_15:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v17 = type metadata accessor for Logger();
    sub_1000058D0(v17, &unk_1003B8820);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (sub_100007DC4(v19))
    {
      v20 = sub_100005924();
      sub_100005DF4(v20);
      sub_10000C14C();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      sub_100005368();
    }

    v26 = String._bridgeToObjectiveC()();
    [oslog dismissPresentedBannerForReason:v26 animated:1];

    goto LABEL_20;
  }

  v9 = v8;
  if ((dispatch thunk of ConversationControlsManager.hasMultipleCalls.getter() & 1) == 0)
  {

    goto LABEL_15;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v10 = type metadata accessor for Logger();
  sub_1000058D0(v10, &unk_1003B8820);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (sub_100005908(v12))
  {
    v13 = sub_100005924();
    *v13 = 0;
    sub_1000070F8(&_mh_execute_header, v14, v15, "dismissAnsweredCallBannerIfNeeded: hasMultipleCalls, no dismissal needed");
    sub_100005BB8(v13);
  }

  v16 = v9;
LABEL_21:
}

uint64_t sub_100177D90(uint64_t a1)
{
  type metadata accessor for LiveVoicemailCarrierSettings(0);
  swift_allocObject();
  sub_1001542E4();
  type metadata accessor for AnsweringMachineSyncComposer();
  swift_allocObject();
  AnsweringMachineSyncComposer.init()();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100006BE8();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  swift_unknownObjectRetain();

  v4 = dispatch thunk of AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:)();

  return v4;
}

uint64_t sub_100177EB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 provider];
  v5 = [v4 isFaceTimeProvider];

  if (v5)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008A14(v6, &unk_1003B8820);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v39[0] = v11;
      *v10 = 136446210;
      v12 = [v7 callUUID];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100008ADC(v13, v15, v39);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "callScreening wait time for call: %{public}s needs to wait for default time before call screening.", v10, 0xCu);
      sub_100005B2C(v11);
    }

    v17 = &enum case for TimeToWaitForCall.faceTime(_:);
  }

  else
  {
    sub_10015437C(a1);
    v19 = v18;
    v21 = v20;
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008A14(v22, &unk_1003B8820);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136446466;
      v27 = [v23 callUUID];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_100008ADC(v28, v30, v39);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2082;
      v32 = Duration.description.getter();
      v34 = sub_100008ADC(v32, v33, v39);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "callScreening wait time for call: %{public}s is %{public}s from carrier", v26, 0x16u);
      swift_arrayDestroy();
    }

    *a2 = v19;
    a2[1] = v21;
    v17 = &enum case for TimeToWaitForCall.duration(_:);
  }

  v35 = *v17;
  v36 = type metadata accessor for TimeToWaitForCall();
  v37 = *(*(v36 - 8) + 104);

  return v37(a2, v35, v36);
}

void sub_1001784A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CallScreeningService();
  sub_10000688C();
  v58 = v3;
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CallScreeningStatus();
  sub_10000688C();
  v59 = v8;
  __chkstk_darwin(v9);
  sub_10000693C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v16 = [objc_msgSend(v0 "featureFlags")];
  swift_unknownObjectRelease();
  if (!v16 || (sub_100019BAC(0, v17) & 1) == 0)
  {
    goto LABEL_35;
  }

  v55 = v7;
  v18 = objc_opt_self();
  v19 = [v18 sharedInstance];
  [v19 fetchCurrentCalls];

  v20 = [v18 sharedInstance];
  v21 = String._bridgeToObjectiveC()();
  v56 = [v20 callWithCallUUID:v21];

  if (!v56)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v27 = type metadata accessor for Logger();
    sub_1000058D0(v27, &unk_1003B8820);
    v59 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v28))
    {
      v29 = sub_100005924();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v59, v28, "Not able to request screening scene. No Screening Calls.", v29, 2u);
      sub_100005BB8(v29);
    }

    goto LABEL_20;
  }

  if ([v56 receptionistState])
  {
    v22 = [v1 sceneManager];
    v23 = [v22 callScene];

    if (v23)
    {

      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v24 = type metadata accessor for Logger();
      sub_1000058D0(v24, &unk_1003B8820);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      if (!sub_100007DC4(v26))
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if ([v56 resolvedCallStatus] == 4 && (objc_msgSend(objc_opt_self(), "isSpringBoardPasscodeLocked") & 1) != 0)
    {
      v40 = 2;
    }

    else
    {
      v40 = 0;
    }

    v41 = v55;
    v42 = v59;
    v43 = [swift_getObjCClassFromMetadata() configurationForCall:v56 preferredPresentationMode:v40];
    CallScreeningService.init()();
    TUCall.basicCall.getter();
    CallScreeningService.screeningStatusForCall(_:)();
    sub_100005B2C(v60);
    (*(v58 + 8))(v6, v2);
    isa = v42[13].isa;
    isa(v12, enum case for CallScreeningStatus.screening(_:), v41);
    v45 = static CallScreeningStatus.== infix(_:_:)();
    v46 = v42[1].isa;
    v46(v12, v41);
    if (v45 & 1) != 0 || (isa(v12, enum case for CallScreeningStatus.liveVoicemail(_:), v41), v47 = static CallScreeningStatus.== infix(_:_:)(), v46(v12, v41), (v47))
    {
      [v43 setRequiresDismissedPresentationmode:1];
    }

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v48 = type metadata accessor for Logger();
    sub_1000058D0(v48, &unk_1003B8820);
    v49 = v43;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = sub_100005384();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&_mh_execute_header, v50, v51, "config %@", v52, 0xCu);
      sub_100008360(v53, &qword_1003B0230, &qword_1002FC550);
      sub_100005BB8(v53);
      sub_100005BB8(v52);
    }

    [v1 performPresentationWithConfiguration:v49 forSceneType:0];
    v46(v15, v41);
LABEL_35:
    sub_100007B28();
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v30 = type metadata accessor for Logger();
  sub_1000058D0(v30, &unk_1003B8820);
  v25 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (!sub_100007DC4(v31))
  {
    goto LABEL_19;
  }

LABEL_18:
  v32 = sub_100005924();
  sub_100005DF4(v32);
  sub_10000C14C();
  _os_log_impl(v33, v34, v35, v36, v37, 2u);
  sub_100005368();
LABEL_19:

LABEL_20:
  sub_100007B28();
}

uint64_t sub_100178B98()
{
  v0 = [objc_allocWithZone(type metadata accessor for WaitOnHoldServiceComposer()) init];
  v1 = WaitOnHoldServiceComposer.compose()();

  return v1;
}

void sub_100178C24(void *a1, void (**a2)(void))
{
  v3 = [a1 currentInCallScene];
  if (v3)
  {
    v4 = v3;
    [v3 requestTransitionToPresentationMode:2 isUserInitiated:0 analyticsSource:0];
  }

  a2[2](a2);

  _Block_release(a2);
}

char *sub_100178D04(char *result, int64_t a2, char a3, char *a4)
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
    sub_10014EA98(&qword_1003AB428, &qword_1002FBD88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100178E4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000058E8();
  v4 = sub_1000085C0();
  v5(v4);
  return a2;
}

uint64_t sub_100178EA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000058E8();
  v4 = sub_1000085C0();
  v5(v4);
  return a2;
}

uint64_t sub_100178F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000058E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100178FB0(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return _HashTable.occupiedBucket(after:)();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10017904C()
{
  sub_100179524();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000301D4(v1);

  return sub_100175A50(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100179124()
{
  sub_1000058A8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100009D10(v1);

  return sub_100177228();
}

uint64_t sub_1001791B8()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_100005B88(v3);
  *v4 = v5;
  v6 = sub_100009D10(v4);

  return sub_100177660(v6, v7, v1, v2);
}

unint64_t sub_100179254()
{
  result = qword_1003AB070;
  if (!qword_1003AB070)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB070);
  }

  return result;
}

void sub_1001792AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[1] = a8;
  v14 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  sub_100005568(v14);
  sub_100005BE0();
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  [a5 acquirePreventSuspensionAssertion];
  v18 = type metadata accessor for TaskPriority();
  sub_100006848(v17, 1, 1, v18);
  type metadata accessor for MainActor();

  v19 = a1;

  v20 = a5;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = a2;
  v22[5] = v19;
  v22[6] = a7;
  v22[7] = a3;
  v22[8] = a4;
  v22[9] = v20;
  sub_1001621BC();

  sub_100007B28();
}

uint64_t sub_1001793F4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10017944C()
{
  sub_100179524();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000301D4(v1);

  return sub_100175A50(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100179504(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10017953C()
{

  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_100179574()
{

  return swift_dynamicCast();
}

uint64_t sub_100179634()
{
  v0 = sub_1000085C0();
  sub_10017A4B4(v0, v1);
  return sub_1000085C0();
}

uint64_t sub_100179714(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction);
  v4 = *(v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction);
  v5 = *(v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000081F4(v4, v5);
}

id sub_100179734(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___ICSFallbackToTelephonyAlert_disconnectedCall] = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 tu_contactStoreConfigurationForCall:v5];
  v7 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v6];
  v8 = [v5 handle];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = String._bridgeToObjectiveC()();

  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002FBD90;
  *(v12 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  sub_10014EA98(&qword_1003AAF80, &unk_1002FB7D0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v7 contactForDestinationId:v11 keysToFetch:isa];

  if (v14)
  {
    v15 = sub_10017A444(v14);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      if (String.count.getter() > 0)
      {
LABEL_17:
        v30 = &v1[OBJC_IVAR___ICSFallbackToTelephonyAlert_name];
        *v30 = v17;
        v30[1] = v18;
        v34.receiver = v1;
        v34.super_class = ObjectType;
        v31 = objc_msgSendSuper2(&v34, "init", v32);

        return v31;
      }
    }
  }

  v19 = [v5 handle];
  if (!v19)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 type];
  result = [v20 value];
  v23 = result;
  if (v21 != 2)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v29;
LABEL_16:

    goto LABEL_17;
  }

  if (result)
  {
    v24 = PNCopyBestGuessCountryCodeForNumber();

    result = [v20 value];
    if (result)
    {
      v25 = result;
      v32 = v24;
      v23 = CFPhoneNumberCreate();

      String = CFPhoneNumberCreateString();
      if (!String)
      {
        String = [v20 value];
      }

      v27 = String;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v28;

      v20 = v27;
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100179B6C()
{
  sub_1001FD1F8(0xD000000000000014, 0x80000001002A6CF0);
  sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002FAB60;
  v3 = *(v0 + OBJC_IVAR___ICSFallbackToTelephonyAlert_name);
  v2 = *(v0 + OBJC_IVAR___ICSFallbackToTelephonyAlert_name + 8);
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10002BBB4();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  String.init(format:_:)();

  return sub_1000085C0();
}

id sub_100179C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  sub_100179CE0(a3, a4);
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100179CE0(uint64_t a1, uint64_t a2)
{
  sub_1001FD1F8(a1, a2);
  sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002FAB60;
  v5 = *(v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_name);
  v4 = *(v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_name + 8);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10002BBB4();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  String.init(format:_:)();

  return sub_1000085C0();
}

void sub_100179E28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  byte_1003AB430 = 0;
  v5 = [objc_allocWithZone(TUCallProviderManager) init];
  v6 = [v5 telephonyProvider];
  v7 = [objc_allocWithZone(TUDialRequest) initWithProvider:v6];

  v8 = *(v0 + OBJC_IVAR___ICSFallbackToTelephonyAlert_disconnectedCall);
  v9 = [v8 handle];
  [v7 setHandle:v9];

  [v7 setPreferDefaultApp:0];
  isa = [v8 localSenderIdentityUUID];
  if (isa)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v4, v1);
  }

  [v7 setLocalSenderIdentityAccountUUID:isa];

  [v7 setOriginatingUIType:51];
  [v7 setTtyType:1];
  v11 = [objc_opt_self() sharedInstance];
  [v11 launchAppForDialRequest:v7 completion:0];
}

void sub_10017A0AC()
{
  byte_1003AB430 = 0;
  v1 = *(v0 + OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction);
  if (v1)
  {

    v1(v2);
    v3 = sub_1000085C0();

    sub_1000081F4(v3, v4);
  }
}

void sub_10017A160()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (byte_1003AB430)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v3 = type metadata accessor for Logger();
    sub_100008A14(v3, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "FallbackToTelephonyAlert is already presented.", v5, 2u);
    }
  }

  else
  {
    v6 = ObjectType;
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v7 = type metadata accessor for Logger();
    sub_100008A14(v7, &unk_1003B8820);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Presenting FallbackToTelephonyAlert.", v10, 2u);
    }

    byte_1003AB430 = 1;
    v12.receiver = v1;
    v12.super_class = v6;
    objc_msgSendSuper2(&v12, "show");
  }
}

uint64_t sub_10017A444(void *a1)
{
  v2 = [a1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10017A4B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_10017A55C()
{
  sub_1000064BC(0, &qword_1003AB4C0, NSString_ptr);
  v1 = NSString.init(stringLiteral:)("%d", v4);
  sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
  v2 = swift_allocObject();
  v3 = *&v0[OBJC_IVAR____TtC13InCallService15PHCountingLayer_value];
  *(v2 + 16) = xmmword_1002FAB60;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v3;
  v5 = NSString.init(format:_:)();

  [v0 setString:v5];
  [v0 setNeedsDisplay];
}

uint64_t sub_10017A65C()
{
  sub_10000C334();
  v1 = v1 && v0 == 0xE500000000000000;
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  v11 = sub_100007654(v4, "needsDisplayForKey:", v5, v6, v7, v8, v9, v10, ObjCClassFromMetadata);
  v2 = objc_msgSendSuper2(v11, v12);

  return v2;
}

id sub_10017A760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000C334();
  v7 = v7 && v6 == 0xE500000000000000;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1000064BC(0, &qword_1003AB4B8, CABasicAnimation_ptr);

    v8 = sub_100205804(a1, a2);
    v9 = [v3 presentationLayer];
    if (v9)
    {
      v10 = v9;
      [v9 value];
    }

    else
    {
      [v3 value];
    }

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v8 setFromValue:isa];
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();
    v22 = type metadata accessor for PHCountingLayer();
    v19 = sub_100007654(v22, "actionForKey:", v13, v14, v15, v16, v17, v18, v3);
    v8 = objc_msgSendSuper2(v19, v20);
  }

  return v8;
}

id sub_10017A914()
{
  *&v0[OBJC_IVAR____TtC13InCallService15PHCountingLayer_value] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHCountingLayer();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10017A978(void *a1)
{
  *(v1 + OBJC_IVAR____TtC13InCallService15PHCountingLayer_value) = 0;
  sub_100008878(a1, a1[3]);
  _bridgeAnythingToObjectiveC<A>(_:)();
  v13 = type metadata accessor for PHCountingLayer();
  v9 = sub_100007654(v13, "initWithLayer:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);
  swift_unknownObjectRelease();
  sub_100005B2C(a1);
  return v11;
}

id sub_10017AA4C(void *a1)
{
  *(v1 + OBJC_IVAR____TtC13InCallService15PHCountingLayer_value) = 0;
  v13 = type metadata accessor for PHCountingLayer();
  v9 = sub_100007654(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id sub_10017AAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHCountingLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10017AB3C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10017B61C();
    sub_10017B660();
    Set.Iterator.init(_cocoa:)();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

LABEL_7:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_10017B61C(), swift_dynamicCast(), v14 = v17, v5 = v10, v6 = v11, !v17))
      {
LABEL_24:
        sub_10016D304(v2);
        return;
      }

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_17:
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {

      goto LABEL_7;
    }

    v16 = [v15 keyWindow];

    v10 = v5;
    v11 = v6;
    if (v16)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_10017ADA4()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100005924();
    *v5 = 0;
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_100005BB8(v5);
  }

  v11 = *(v1 + OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy);

  return [v11 startPictureInPicture];
}

id sub_10017AE7C()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100005924();
    *v5 = 0;
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_100005BB8(v5);
  }

  v11 = *(v1 + OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy);

  return [v11 stopPictureInPictureAndRestoreUserInterface:1];
}

id sub_10017AF98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnhancedEmergencyPIPCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10017B05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong transitionToRTTState:2];

      swift_unknownObjectRelease();
    }
  }
}

id sub_10017B12C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_sourceView) window];
  if (!v1)
  {
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 connectedScenes];

    sub_10017B61C();
    sub_10017B660();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10017AB3C(v4, v5);
    v7 = v6;

    if (sub_100017230(v7))
    {
      sub_100017238(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v7 + 32);
      }

      v9 = v8;

      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v10 = type metadata accessor for Logger();
      sub_100008A14(v10, &unk_1003B8820);
      v1 = v9;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v1;
        *v14 = v1;
        v1 = v1;
        sub_100007F34();
        _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        sub_100153D2C(v14);
        sub_100005BB8(v14);
        sub_100005BB8(v13);
      }
    }

    else
    {

      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v20 = type metadata accessor for Logger();
      sub_100008A14(v20, &unk_1003B8820);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_100005924();
        *v23 = 0;
        sub_100007F44(&_mh_execute_header, v24, v25, "EnhancedEmergency: There are no windows associated with the application, returning an empty window.");
        sub_100005BB8(v23);
      }

      return [objc_allocWithZone(UIWindow) init];
    }
  }

  return v1;
}

double sub_10017B438()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_sourceView);
  [v1 frame];
  if (CGRectIsEmpty(v13) || (v2 = [v1 superview]) == 0)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_100005924();
      *v8 = 0;
      sub_100007F44(&_mh_execute_header, v9, v10, "EnhancedEmergency: The source view does not yet have a frame or superview set, returning the main screen bounds for picture-in-picture");
      sub_100005BB8(v8);
    }

    v3 = [objc_opt_self() mainScreen];
    [(UIView *)v3 bounds];
  }

  else
  {
    v3 = v2;
    [v1 frame];
    v4 = UIAccessibilityConvertFrameToScreenCoordinates(v14, v3);
  }

  v11 = *&v4;

  return v11;
}

unint64_t sub_10017B61C()
{
  result = qword_1003AB510;
  if (!qword_1003AB510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AB510);
  }

  return result;
}

unint64_t sub_10017B660()
{
  result = qword_1003AB518;
  if (!qword_1003AB518)
  {
    sub_10017B61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB518);
  }

  return result;
}

void *sub_10017B6EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_10017B778(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window) = a1;
  return _objc_release_x1(a1, v2);
}

void sub_10017B78C(void *a1)
{
  v3 = sub_10014EA98(&qword_1003AB600, &qword_1002FBEE0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v61 - v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v62 = v4;
  v12 = objc_opt_self();
  v63 = a1;
  v13 = [v12 sharedApplication];
  v14 = [v13 delegate];

  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v61[1] = v14;
      v16 = [v15 sceneManager];
      [v16 registerGenericScene:v63 ofType:3];

      v17 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v11];
      v18 = *(v1 + OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window);
      *(v1 + OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window) = v17;
      v19 = v17;

      v20 = [v12 sharedApplication];
      v21 = [v20 delegate];

      if (v21)
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v23 = v22;
          if ([v22 shouldActivateSOS])
          {
            v24 = [objc_allocWithZone(PHInCallRootViewController) initWithCallDisplayStyleManager:0];
            if (!v24)
            {
LABEL_27:
              [v19 makeKeyAndVisible];

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

LABEL_28:
              sub_100007660();
              return;
            }

            v25 = v24;
            [v24 forceUpdateCallControllerForSOS];
            v26 = [objc_allocWithZone(UIViewController) init];
            v27 = [v26 view];
            if (v27)
            {
              v28 = v27;
              v29 = [objc_opt_self() blackColor];
              [v28 setBackgroundColor:v29];

              v30 = [v26 view];
              if (v30)
              {
                v31 = v30;
                v32 = v25;
                v33 = [v32 view];
                if (v33)
                {
                  v34 = v33;
                  [v31 addSubview:v33];

                  v35 = [v32 view];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = [v26 view];
                    if (v37)
                    {
                      v38 = v37;
                      [v37 bounds];
                      v40 = v39;
                      v42 = v41;
                      v44 = v43;
                      v46 = v45;

                      [v36 setFrame:{v40, v42, v44, v46}];
                      v47 = [v32 view];

                      if (v47)
                      {
                        [v47 setAutoresizingMask:18];

                        [v26 addChildViewController:v32];
                        v48 = v26;
                        [v32 didMoveToParentViewController:v48];
                        [v19 setRootViewController:v48];

LABEL_26:
                        goto LABEL_27;
                      }

                      goto LABEL_35;
                    }

LABEL_34:
                    __break(1u);
LABEL_35:
                    __break(1u);
                    return;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          else
          {
            sub_10017BEAC(v23);
            v52 = objc_allocWithZone(sub_10014EA98(&qword_1003AB608, &qword_1002FBEE8));
            v53 = v62;
            (*(v62 + 16))(v7, v9, v3);
            v54 = UIHostingController.init(rootView:)();
            (*(v53 + 8))(v9, v3);
            v48 = v54;
            v55 = [v48 view];
            if (v55)
            {
              v56 = v55;
              v57 = objc_opt_self();
              v58 = [v57 clearColor];
              [v56 setBackgroundColor:v58];

              v59 = v19;
              v60 = [v57 clearColor];
              [v59 setBackgroundColor:v60];

              [v59 setRootViewController:v48];
              goto LABEL_26;
            }

            __break(1u);
          }

          __break(1u);
          goto LABEL_31;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }

    sub_100007660();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100007660();
  }
}

uint64_t sub_10017BEAC(void *a1)
{
  v2 = [a1 activationContext];
  v3 = [v2 pendingRestrictedScreenTimeRequest];

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = a1;
  sub_1001D8FB8(v3, sub_10017C548, v4, &v8);
  v13 = v9;
  v6 = v11;
  v14 = v10;
  v15 = v12;
  sub_10017C558();
  View.clarityUIIdiom()();

  sub_1000306A4(&v13, &unk_1003ADA00, &unk_1002FE900);

  sub_1000306A4(&v14, &qword_1003AB5F0, &qword_1002FBED0);

  return sub_1000306A4(&v15, &qword_1003AB5F8, &qword_1002FBED8);
}

id sub_10017C000()
{
  *&v0[OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10017C064()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017C13C(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + qword_1003AB550);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v8 - v5, a1, v3);
  v6 = UIHostingController.init(rootView:)();
  (*(v4 + 8))(a1, v3);
  return v6;
}

void *sub_10017C2A4(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1003AB550);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_10017C3DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_1003AB550), *((swift_isaMask & *v4) + qword_1003AB550 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10017C4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_1003AB550), *((swift_isaMask & *v4) + qword_1003AB550 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

unint64_t sub_10017C558()
{
  result = qword_1003AB5E0;
  if (!qword_1003AB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB5E0);
  }

  return result;
}

void *AudioCallIcon.iconView.getter()
{
  v1 = *(v0 + OBJC_IVAR___PHAudioCallIcon_iconView);
  v2 = v1;
  return v1;
}

void *AudioCallIcon.iconImage.getter()
{
  v1 = *(v0 + OBJC_IVAR___PHAudioCallIcon_iconImage);
  v2 = v1;
  return v1;
}

id AudioCallIcon.init(iconView:iconImage:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___PHAudioCallIcon_iconView] = a1;
  *&v2[OBJC_IVAR___PHAudioCallIcon_iconImage] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id AmbientAvatarView.contact.getter()
{
  v1 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AmbientAvatarView.contact.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_10017C998(v4);
}

void sub_10017C998(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact;
  swift_beginAccess();
  v5 = [*(v2 + v4) identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v15 = *(v2 + OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView);
      dispatch thunk of _UIHostingView.rootView.getter();

      v16 = *(v2 + v4);
      sub_10014EA98(&qword_1003AB688, &qword_1002FC050);
      State.wrappedValue.setter();

      sub_10017ED80(v30[2], v31);

      return;
    }
  }

  v17 = *(v2 + v4);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 isKeyAvailable:v18];

  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = [a1 isKeyAvailable:v20];

    if (v21)
    {
      v22 = [a1 wallpaper];
      v23 = v22;
      if (v22)
      {
      }

      v24 = [*(v2 + v4) wallpaper];
      if (v24)
      {

        if (v23)
        {
          return;
        }
      }

      else if (!v23)
      {
        return;
      }

      v25 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView;
      [*(v2 + OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView) removeFromSuperview];
      v26 = *(v2 + v4);
      sub_10017CC50(v30);
      v27 = objc_allocWithZone(sub_10014EA98(&qword_1003AB650, &qword_1002FBF40));
      v28 = _UIHostingView.init(rootView:)();
      v29 = *(v2 + v25);
      *(v2 + v25) = v28;

      sub_10017CF24();
    }
  }
}

void *sub_10017CC50@<X0>(uint64_t a2@<X8>)
{
  sub_1000064BC(0, &qword_1003AFB10, CNContact_ptr);
  State.init(wrappedValue:)();
  result = State.init(wrappedValue:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

void (*AmbientAvatarView.contact.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100162C14(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_10017CD74;
}

void sub_10017CD74(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    AmbientAvatarView.contact.setter(v3);
  }

  else
  {
    AmbientAvatarView.contact.setter(v3);
  }

  free(v2);
}

id AmbientAvatarView.init(contact:)(void *a1)
{
  v2 = a1;
  sub_10017CC50(v8);
  v3 = objc_allocWithZone(sub_10014EA98(&qword_1003AB650, &qword_1002FBF40));
  *&v1[OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView] = _UIHostingView.init(rootView:)();
  *&v1[OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact] = v2;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AmbientAvatarView();
  v4 = v2;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10017CF24();

  return v5;
}

void sub_10017CF24()
{
  v2 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView]];
  [*&v0[v2] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002FB360;
  v4 = [v0 leadingAnchor];
  v5 = [sub_100025A90() leadingAnchor];
  v6 = [v1 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v0 topAnchor];
  v8 = [sub_100025A90() topAnchor];
  v9 = sub_100007680(v8);

  *(v3 + 40) = v9;
  v10 = [v0 trailingAnchor];
  v11 = [sub_100025A90() trailingAnchor];
  v12 = sub_100007680(v11);

  *(v3 + 48) = v12;
  v13 = [v0 bottomAnchor];
  v14 = [sub_100025A90() bottomAnchor];
  v15 = sub_100007680(v14);

  *(v3 + 56) = v15;
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 addConstraints:isa];
}

id AmbientAvatarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id AmbientAvatarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientAvatarView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017D2DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10017D328(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a2 >> 6))
  {
    if (a4 < 0x40u)
    {
      sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
      v7 = static NSObject.== infix(_:_:)();
      v8 = a4 ^ a2 ^ 1;
      if ((v7 & 1) == 0)
      {
        v8 = 0;
      }

      return v8 & 1;
    }

    goto LABEL_20;
  }

  if (a2 >> 6 == 1)
  {
    if ((a4 & 0xC0) == 0x40)
    {
      sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
      return static NSObject.== infix(_:_:)() & 1;
    }

    goto LABEL_20;
  }

  v9 = a4 & 0xC0;
  if (a1 | a2 ^ 0x80)
  {
    if (v9 != 128 || a3 != 1)
    {
      goto LABEL_20;
    }
  }

  else if (v9 != 128 || a3)
  {
    goto LABEL_20;
  }

  if (a4 != 128)
  {
LABEL_20:
    v8 = 0;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

void sub_10017D444(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      Hasher._combine(_:)(3uLL);
      NSObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)((a2 | a3 ^ 0x80) != 0);
    }
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    NSObject.hash(into:)();
    Hasher._combine(_:)(a3 & 1);
  }
}

Swift::Int sub_10017D4EC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  sub_10017D444(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10017D554(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  sub_10017D444(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_10017D5B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10017D784(v1, &v23);
  v21 = v23;
  v20 = v24;
  v4 = v25;
  v5 = v26;
  v7 = *(v1 + 8);
  *&v23 = *v1;
  v6 = v23;
  *(&v23 + 1) = v7;
  sub_10014EA98(&qword_1003AB688, &qword_1002FC050);
  State.wrappedValue.getter();
  v8 = [v22[0] identifier];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (a1 + *(sub_10014EA98(&qword_1003AB690, &qword_1002FC058) + 36));
  v13 = sub_10014EA98(&qword_1003AB698, &qword_1002FC060);
  static TaskPriority.userInitiated.getter();
  v14 = *(v2 + 32);
  *&v23 = *(v2 + 16);
  BYTE8(v23) = *(v2 + 24);
  v27 = v14;
  v28 = v7;
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v2 + 32);
  v17 = (v12 + *(v13 + 40));
  *v17 = v9;
  v17[1] = v11;
  *v12 = &unk_1002FC070;
  v12[1] = v15;
  *a1 = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = v4;
  *(a1 + 26) = v5;
  v18 = v6;
  sub_10017FF60(&v28, v22, &qword_1003AB6A0, &qword_1002FC078);
  sub_10017EF08(&v23, v22);
  return sub_10017FF60(&v27, v22, &qword_1003AB6A8, &qword_1002FC080);
}

void sub_10017D784(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = a1[1];
  v31 = *(a1 + 4);
  sub_10014EA98(&qword_1003AB6B0, &qword_1002FC090);
  State.wrappedValue.getter();
  v8 = *v27;
  v9 = v27[8];
  v10 = v27[8] >> 6;
  if (!v10)
  {
    if ((v27[8] & 1) == 0)
    {
      v18 = *v27;
      Image.init(uiImage:)();
      (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
      v19 = Image.resizable(capInsets:resizingMode:)();

      (*(v5 + 8))(v7, v4);
      *v27 = v19;
      *&v27[8] = xmmword_1002FBF10;
      LOBYTE(v28) = 1;

      sub_10014EA98(&qword_1003AB700, &unk_1002FC0B0);
      sub_10017FA34();
      sub_10017FA88();
      _ConditionalContent<>.init(storage:)();
      *v27 = v30;
      *&v27[16] = v31;
      LOBYTE(v28) = v32;
      HIBYTE(v28) = 1;
      sub_10014EA98(&qword_1003AB6D0, &qword_1002FC0A0);
      sub_10014EA98(&qword_1003AB6E8, &qword_1002FC0A8);
      sub_10017F8C8();
      sub_10017F9A8();
      _ConditionalContent<>.init(storage:)();
      if (HIBYTE(v32))
      {
        v20 = 256;
      }

      else
      {
        v20 = 0;
      }

      *v27 = v30;
      *&v27[16] = v31;
      v28 = v20 | v32;
      v29 = 0;
      sub_10014EA98(&qword_1003AB6B8, &qword_1002FC098);
      sub_10017F83C();
      _ConditionalContent<>.init(storage:)();
      sub_10017ED80(v8, v9);
      goto LABEL_20;
    }

    v12 = sub_10017DF54();
    v13 = [v12 backgroundColor];

    if (!v13)
    {
      v14 = [objc_opt_self() blackColor];
      v13 = [v14 colorWithAlphaComponent:0.1];
    }

    *v27 = v8;
    *&v27[8] = 1;
    *&v27[16] = v13;
    LOBYTE(v28) = 0;
    sub_10017EF60(v8, v9);
    v15 = v13;
    sub_10014EA98(&qword_1003AB700, &unk_1002FC0B0);
    sub_10017FA34();
    sub_10017FA88();
    _ConditionalContent<>.init(storage:)();
    *v27 = v30;
    *&v27[16] = v31;
    LOBYTE(v28) = v32;
    HIBYTE(v28) = 1;
    sub_10014EA98(&qword_1003AB6D0, &qword_1002FC0A0);
    sub_10014EA98(&qword_1003AB6E8, &qword_1002FC0A8);
    sub_10017F8C8();
    sub_10017F9A8();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v32))
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    *v27 = v30;
    *&v27[16] = v31;
    v28 = v16 | v32;
    v29 = 0;
    sub_10014EA98(&qword_1003AB6B8, &qword_1002FC098);
    sub_10017F83C();
    _ConditionalContent<>.init(storage:)();
    sub_10017ED80(v8, v9);
LABEL_25:

    goto LABEL_26;
  }

  if (v10 != 1)
  {
    if (!(*v27 | v27[8] ^ 0x80))
    {
      *v27 = static Color.clear.getter();
      v27[8] = 0;
      sub_10017F954();

      _ConditionalContent<>.init(storage:)();
      *v27 = v30;
      *&v27[8] = BYTE8(v30);
      *&v27[16] = 0;
      v28 = 0;
      sub_10014EA98(&qword_1003AB6D0, &qword_1002FC0A0);
      sub_10014EA98(&qword_1003AB6E8, &qword_1002FC0A8);
      sub_10017F8C8();
      sub_10017F9A8();
      _ConditionalContent<>.init(storage:)();
      if (HIBYTE(v32))
      {
        v17 = 256;
      }

      else
      {
        v17 = 0;
      }

      *v27 = v30;
      *&v27[16] = v31;
      v28 = v17 | v32;
      v29 = 0;
      sub_10014EA98(&qword_1003AB6B8, &qword_1002FC098);
      sub_10017F83C();
      sub_10017FA34();
      _ConditionalContent<>.init(storage:)();
LABEL_20:

      goto LABEL_26;
    }

    v30 = *a1;
    sub_10014EA98(&qword_1003AB688, &qword_1002FC050);
    State.wrappedValue.getter();
    v21 = *v27;
    v27[8] = 1;
    sub_10017F954();
    v15 = v21;
    _ConditionalContent<>.init(storage:)();
    *v27 = v30;
    *&v27[8] = BYTE8(v30);
    *&v27[16] = 0;
    v28 = 0;
    sub_10014EA98(&qword_1003AB6D0, &qword_1002FC0A0);
    sub_10014EA98(&qword_1003AB6E8, &qword_1002FC0A8);
    sub_10017F8C8();
    sub_10017F9A8();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v32))
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    *v27 = v30;
    *&v27[16] = v31;
    v28 = v22 | v32;
    v29 = 0;
    sub_10014EA98(&qword_1003AB6B8, &qword_1002FC098);
    sub_10017F83C();
    sub_10017FA34();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_25;
  }

  v11 = [objc_opt_self() clearColor];
  *v27 = v8;
  *&v27[16] = v11;
  v28 = 0;
  v29 = 1;
  sub_10014EA98(&qword_1003AB6B8, &qword_1002FC098);
  sub_10017F83C();
  sub_10017FA34();
  _ConditionalContent<>.init(storage:)();
LABEL_26:
  v23 = *(&v30 + 1);
  v24 = v31;
  v25 = v32;
  v26 = v33;
  *a2 = v30;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25;
  *(a2 + 26) = v26;
}

id sub_10017DF54()
{
  sub_10014EA98(&qword_1003AB688, &qword_1002FC050);
  State.wrappedValue.getter();
  v0 = String._bridgeToObjectiveC()();
  v1 = [v4 isKeyAvailable:v0];

  if (!v1)
  {
    return 0;
  }

  State.wrappedValue.getter();
  v2 = [v4 wallpaper];

  return v2;
}

uint64_t sub_10017E048(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for Date();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_10017E148, v4, v3);
}

uint64_t sub_10017E148()
{
  sub_100006610();
  static Date.now.getter();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10017E1DC;

  return sub_10017E4D0();
}

uint64_t sub_10017E1DC()
{
  sub_100006610();
  v1 = *v0;
  sub_1000068BC();
  *v3 = v2;
  v4 = *v0;
  sub_1000068BC();
  *v5 = v4;
  *(v7 + 128) = v6;
  *(v7 + 49) = v8;

  v9 = *(v1 + 112);
  v10 = *(v1 + 104);

  return _swift_task_switch(sub_10017E2FC, v10, v9);
}

uint64_t sub_10017E2FC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v5 = v4;
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (v5 <= 0.05)
  {
    v15 = *(v0 + 56);
    v16 = *(v15 + 32);
    v17 = *(v15 + 16);
    *(v0 + 40) = *(v0 + 128);
    v18 = *(v0 + 49);
    v19 = *(v0 + 88);
    v11 = *(v0 + 64);
    *(v0 + 16) = v17;
    *(v0 + 32) = v16;
    *(v0 + 48) = v18;
    sub_10014EA98(&qword_1003AB6B0, &qword_1002FC090);
    State.wrappedValue.setter();
    v14 = v19;
  }

  else
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 88);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v0 + 49);
    v7.n128_u64[0] = 0x3FE6666666666666;
    sub_10017EA9C(v7, 0.0);
    v13 = swift_task_alloc();
    *(v13 + 16) = v10;
    *(v13 + 24) = v8;
    *(v13 + 32) = v12;
    withAnimation<A>(_:_:)();
    sub_10017ED80(v8, v12);

    v14 = v9;
  }

  v6(v14, v11);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10017E4D0()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10017E568, v3, v2);
}

uint64_t sub_10017E568()
{
  sub_100006610();
  if (sub_10017EB64())
  {
    if (qword_1003A9FF8 != -1)
    {
      swift_once();
    }

    *(v0 + 16) = **(v0 + 40);
    sub_10014EA98(&qword_1003AB688, &qword_1002FC050);
    State.wrappedValue.getter();
    v1 = *(v0 + 32);
    *(v0 + 72) = v1;
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_10017E6B8;

    return PosterSnapshotService.takeSnapshot(contact:)(v1);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(1, 128);
  }
}

uint64_t sub_10017E6B8()
{
  v1 = *v0;
  sub_1000068BC();
  *v3 = v2;
  v4 = v1[9];
  v5 = *v0;
  sub_1000068BC();
  *v6 = v5;
  *(v8 + 88) = v7;

  v9 = v1[8];
  v10 = v1[7];

  return _swift_task_switch(sub_10017E7F8, v10, v9);
}

uint64_t sub_10017E7F8()
{
  v1 = *(v0 + 88);

  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = *(v0 + 88);
  v3 = sub_10017DF54();
  v4 = [v3 type];

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5 == v8 && v7 == v9)
  {

    goto LABEL_17;
  }

  v11 = sub_100007F64(v8);

  if (v11)
  {
LABEL_17:
    [v2 size];
    v24 = v23;
    v25 = objc_opt_self();
    v26 = [v25 mainScreen];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v49.origin.x = v28;
    v49.origin.y = v30;
    v49.size.width = v32;
    v49.size.height = v34;
    Width = CGRectGetWidth(v49);
    v36 = [v25 mainScreen];
    [v36 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v50.origin.x = v38;
    v50.origin.y = v40;
    v50.size.width = v42;
    v50.size.height = v44;
    Height = CGRectGetHeight(v50);
    if (Height >= Width)
    {
      Height = Width;
    }

    v21 = v24 == Height;
    v22 = *(v0 + 88);
    goto LABEL_22;
  }

LABEL_8:
  v12 = sub_10017DF54();
  v13 = [v12 type];

  if (!v13)
  {
LABEL_14:

LABEL_15:
    v21 = 128;
    v22 = 1;
    goto LABEL_22;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v14 == v17 && v16 == v18)
  {
  }

  else
  {
    v20 = sub_100007F64(v17);

    if ((v20 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v22 = *(v0 + 88);
  v21 = 64;
LABEL_22:
  v46 = *(v0 + 8);

  return v46(v22, v21);
}

uint64_t sub_10017EA9C(__n128 a1, double a2)
{
  if (a2 <= -1.0)
  {
    v2 = INFINITY;
  }

  else if (a2 >= 0.0)
  {
    v2 = 1.0;
    if (a2 != 0.0)
    {
      if (a2 > 1.0)
      {
        a2 = 1.0;
      }

      v2 = 1.0 - a2;
    }
  }

  else
  {
    v2 = 1.0 / (a2 + 1.0);
  }

  return static Animation.spring(response:dampingFraction:blendDuration:)(a1, v2, 0.0);
}

uint64_t sub_10017EAF0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10017EF60(a2, a3);
  sub_10014EA98(&qword_1003AB6B0, &qword_1002FC090);
  return State.wrappedValue.setter();
}

uint64_t sub_10017EB64()
{
  v0 = sub_10017DF54();
  v1 = [v0 type];

  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = sub_10017DF54();
    v1 = [v9 type];

    if (!v1)
    {
      v8 = 0;
      return v8 & 1;
    }

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v12 != v13)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_15:

      return v8 & 1;
    }

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  v8 = 1;
  return v8 & 1;
}

Swift::Int sub_10017ECFC(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void sub_10017ED80(id a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }
}

uint64_t sub_10017ED8C()
{
  sub_100006610();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10017EE1C;

  return sub_10017E048(v0 + 16);
}

uint64_t sub_10017EE1C()
{
  sub_100006610();
  v1 = *v0;
  sub_1000068BC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id sub_10017EF60(id result, char a2)
{
  if ((a2 & 0x80) == 0)
  {
    return result;
  }

  return result;
}

void sub_10017EF88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    Image.init(uiImage:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v11 = v9;
    v12 = 0;

    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v11 = 0;
    v12 = 1;
    _ConditionalContent<>.init(storage:)();
  }

  v10 = v14;
  *a2 = v13;
  *(a2 + 8) = v10;
}

id sub_10017F158@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *(**a4)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  *(v7 + 32) = a3;
  *a4 = sub_10017FF50;
  a4[1] = v7;
  v8 = a1;

  return a3;
}

void *sub_10017F1E8@<X0>(void *a1@<X1>, char a2@<W2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  v8 = a3;
  v9 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (a2)
  {
    v10 = static Alignment.top.getter();
  }

  else
  {
    v10 = static Alignment.center.getter();
  }

  v12 = v10;
  v13 = v11;
  sub_10017F378(a1, a2 & 1, __src);
  memcpy(__dst, __src, 0xC0uLL);
  __dst[24] = v12;
  __dst[25] = v13;
  memcpy(v22, __dst, sizeof(v22));
  memcpy(v19, __src, sizeof(v19));
  v20 = v12;
  v21 = v13;
  sub_10017FF60(__dst, &v16, &qword_1003AB748, &qword_1002FC368);
  sub_10017FFC8(v19);
  *a4 = v9;
  *(a4 + 8) = xmmword_1002FBF20;
  *(a4 + 24) = 0x3FC3333333333333;
  v14 = v24;
  *(a4 + 32) = v23;
  *(a4 + 48) = v14;
  *(a4 + 64) = v25;
  result = memcpy((a4 + 80), v22, 0xD0uLL);
  *(a4 + 288) = 256;
  return result;
}

void *sub_10017F378@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    sub_10017EF88(a1, v29);
    v6 = v29[0];
    v7 = v29[1];
    v8 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v29[0]) = v7;
    __dst[0] = 1;
    v26[0] = v6;
    LOBYTE(v26[1]) = v7;
    v26[2] = 0;
    LOWORD(v26[3]) = 257;
    LOBYTE(v26[4]) = v8;
    v26[5] = v9;
    v26[6] = v10;
    v26[7] = v11;
    v26[8] = v12;
    LOBYTE(v26[9]) = 0;
    sub_100180030(v26);
  }

  else
  {
    sub_10017EF88(a1, v29);
    v13 = v29[0];
    v14 = v29[1];
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v25[126] = v14;
    v25[118] = 1;
    memcpy(&v25[6], __src, 0x70uLL);
    v15 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25[134] = 0;
    v26[0] = v13;
    LOBYTE(v26[1]) = v14;
    v26[2] = 0;
    LOWORD(v26[3]) = 1;
    memcpy(&v26[3] + 2, v25, 0x76uLL);
    LOBYTE(v26[18]) = v15;
    v26[19] = v17;
    v26[20] = v19;
    v26[21] = v21;
    v26[22] = v23;
    LOBYTE(v26[23]) = 0;
    sub_10018025C(v26);
  }

  memcpy(__dst, v26, sizeof(__dst));
  sub_10014EA98(&qword_1003AB750, &qword_1002FC370);
  sub_10014EA98(&qword_1003AB758, &qword_1002FC378);
  sub_1001801D8(&qword_1003AB760, &qword_1003AB750, &qword_1002FC370, sub_10018003C);
  sub_1001801D8(&qword_1003AB798, &qword_1003AB758, &qword_1002FC378, sub_1001800C8);
  _ConditionalContent<>.init(storage:)();
  memcpy(__dst, v29, sizeof(__dst));
  iPadAudioCallViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)();
  memcpy(v29, __dst, 0xBAuLL);
  return memcpy(a3, v29, 0xBAuLL);
}

id sub_10017F694(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(CNAvatarView);

  return [v3 initWithContact:a2];
}

uint64_t sub_10017F74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017FEFC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10017F7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017FEFC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10017F814(uint64_t a1)
{
  sub_10017FEFC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10017F83C()
{
  result = qword_1003AB6C0;
  if (!qword_1003AB6C0)
  {
    sub_100155B7C(&qword_1003AB6B8, &qword_1002FC098);
    sub_10017F8C8();
    sub_10017F9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6C0);
  }

  return result;
}

unint64_t sub_10017F8C8()
{
  result = qword_1003AB6C8;
  if (!qword_1003AB6C8)
  {
    sub_100155B7C(&qword_1003AB6D0, &qword_1002FC0A0);
    sub_10017F954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6C8);
  }

  return result;
}

unint64_t sub_10017F954()
{
  result = qword_1003AB6D8;
  if (!qword_1003AB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6D8);
  }

  return result;
}

unint64_t sub_10017F9A8()
{
  result = qword_1003AB6E0;
  if (!qword_1003AB6E0)
  {
    sub_100155B7C(&qword_1003AB6E8, &qword_1002FC0A8);
    sub_10017FA34();
    sub_10017FA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6E0);
  }

  return result;
}

unint64_t sub_10017FA34()
{
  result = qword_1003AB6F0;
  if (!qword_1003AB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6F0);
  }

  return result;
}

unint64_t sub_10017FA88()
{
  result = qword_1003AB6F8;
  if (!qword_1003AB6F8)
  {
    sub_100155B7C(&qword_1003AB700, &unk_1002FC0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6F8);
  }

  return result;
}

__n128 sub_10017FB0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10017FB20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10017FB60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017FBC0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10017FBD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10017FC20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10017FC84(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_10017FCBC()
{
  result = qword_1003AB708;
  if (!qword_1003AB708)
  {
    sub_100155B7C(&qword_1003AB690, &qword_1002FC058);
    sub_10017FD74();
    sub_100027E08(&qword_1003AB730, &qword_1003AB698, &qword_1002FC060, &protocol conformance descriptor for _TaskValueModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB708);
  }

  return result;
}

unint64_t sub_10017FD74()
{
  result = qword_1003AB710;
  if (!qword_1003AB710)
  {
    sub_100155B7C(&qword_1003AB718, &qword_1002FC1C0);
    sub_10017FDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB710);
  }

  return result;
}

unint64_t sub_10017FDF8()
{
  result = qword_1003AB720;
  if (!qword_1003AB720)
  {
    sub_100155B7C(&qword_1003AB728, &qword_1002FC1C8);
    sub_10017F83C();
    sub_10017FA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB720);
  }

  return result;
}

unint64_t sub_10017FE88()
{
  result = qword_1003AB738;
  if (!qword_1003AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB738);
  }

  return result;
}

unint64_t sub_10017FEFC()
{
  result = qword_1003AB740;
  if (!qword_1003AB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB740);
  }

  return result;
}

uint64_t sub_10017FF60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10014EA98(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10017FFC8(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AB748, &qword_1002FC368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10018003C()
{
  result = qword_1003AB768;
  if (!qword_1003AB768)
  {
    sub_100155B7C(&qword_1003AB770, &qword_1002FC380);
    sub_1001800C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB768);
  }

  return result;
}

unint64_t sub_1001800C8()
{
  result = qword_1003AB778;
  if (!qword_1003AB778)
  {
    sub_100155B7C(&qword_1003AB780, &qword_1002FC388);
    sub_100180154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB778);
  }

  return result;
}

unint64_t sub_100180154()
{
  result = qword_1003AB788;
  if (!qword_1003AB788)
  {
    sub_100155B7C(&qword_1003AB790, &qword_1002FC390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB788);
  }

  return result;
}

uint64_t sub_1001801D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CircledImageView.ContentMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CircledImageView.ContentMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001803D8()
{
  result = qword_1003AB7B8;
  if (!qword_1003AB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB7B8);
  }

  return result;
}

void sub_100180434(char a1)
{
  v2 = OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls;
  if (v1[OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls] != (a1 & 1))
  {
    v3 = v1;
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8820);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v3[v2];
      _os_log_impl(&_mh_execute_header, v6, v7, "EnhancedEmergency: shouldHideControls for %@: %{BOOL}d", v8, 0x12u);
      sub_1000306A4(v9, &qword_1003B0230, &qword_1002FC550);
    }

    else
    {

      v6 = v5;
    }

    v10 = *(&v5->isa + OBJC_IVAR___EmergencyWebRTCViewController_currentState);
    if (v10)
    {
      v11 = v10;
      sub_1001805FC();
    }
  }
}

void sub_1001805FC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls))
  {
    v2 = 1;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = [Strong getRTTState];
      swift_unknownObjectRelease();
      v2 = v4 == 4;
    }

    else
    {
      v2 = 0;
    }
  }

  v5 = sub_1001808D8();
  v6 = v5;
  v7 = 0.0;
  if (v2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [v5 setAlpha:v8];

  v11 = sub_1001808B8(v9, v10);
  [v11 setAlpha:v8];

  v14 = sub_1001808F8(v12, v13);
  v15 = v14;
  v16 = 0.0;
  if (!v2 && *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_showWebRTCQualityLabel))
  {
    v16 = 1.0;
  }

  [v14 setAlpha:v16];

  v17 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flashButton);
  if (!v2)
  {
    SOSUIWebRTCState.cameraFacing.getter();
    v18 = SOSUIWebRTCCameraFacing.rawValue.getter();
    if (v18 == SOSUIWebRTCCameraFacing.rawValue.getter())
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }
  }

  [v17 setAlpha:v7];

  v19 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButton);
  v20 = 0.0;
  v21 = 0.0;
  if (!v2)
  {
    SOSUIWebRTCState.cameraFacing.getter();
    v22 = SOSUIWebRTCCameraFacing.rawValue.getter();
    v23 = SOSUIWebRTCCameraFacing.rawValue.getter();
    v21 = 1.0;
    if (v22 == v23)
    {
      v21 = 0.0;
    }
  }

  [v19 setAlpha:v21];

  [*(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton) setAlpha:v8];
  v24 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel);
  if (!v2)
  {
    SOSUIWebRTCState.state.getter();
    v25 = SOSUIWebRTCStateName.rawValue.getter();
    if (v25 == SOSUIWebRTCStateName.rawValue.getter())
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 0.0;
    }
  }

  [v24 setAlpha:v20];

  v29 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView);
  v26 = 0.0;
  if (!v2)
  {
    SOSUIWebRTCState.state.getter();
    v27 = SOSUIWebRTCStateName.rawValue.getter();
    v28 = SOSUIWebRTCStateName.rawValue.getter();
    v26 = 0.0;
    if (v27 == v28)
    {
      v26 = 1.0;
    }
  }

  [v29 setAlpha:v26];
}

void sub_1001808A0(char a1)
{
  v2 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls);
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls) = a1;
  sub_100180434(v2);
}

id sub_100180918(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100180990()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*(v1 + 104))(v3, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
    UIButton.Configuration.cornerStyle.setter();
  }

  UIButton.Configuration.contentInsets.setter();
  v11 = objc_opt_self();
  v12 = [v11 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v13 = [v11 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  v14 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1000064BC(0, &qword_1003ABA20, UIButton_ptr);
  (*(v5 + 16))(v8, v10, v4);
  v15 = UIButton.init(configuration:primaryAction:)();
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = v15;
  v17 = sub_1001FD1F8(0x47494C4853414C46, 0xEA00000000005448);
  sub_1001E56EC(v17, v18, v16);

  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  (*(v5 + 8))(v10, v4);
  return v16;
}

id sub_100180CC4()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*(v1 + 104))(v3, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
    UIButton.Configuration.cornerStyle.setter();
  }

  UIButton.Configuration.contentInsets.setter();
  v11 = objc_opt_self();
  v12 = [v11 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v13 = [v11 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003ABA20, UIButton_ptr);
  (*(v5 + 16))(v8, v10, v4);
  v14 = UIButton.init(configuration:primaryAction:)();
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = v14;
  v16 = sub_1001FD1F8(1297043290, 0xE400000000000000);
  sub_1001E56EC(v16, v17, v15);
  [v15 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  aBlock[4] = sub_10018FB9C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001810A4;
  aBlock[3] = &unk_10035C410;
  v19 = _Block_copy(aBlock);
  v20 = v15;

  [v20 setAccessibilityValueBlock:v19];
  _Block_release(v19);
  [v20 setAccessibilityTraits:?];

  (*(v5 + 8))(v10, v4);
  return v20;
}

id sub_10018106C(void *a1)
{
  result = [a1 titleLabel];
  if (result)
  {
    return sub_1001F8A08(result);
  }

  return result;
}

id sub_1001810A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}