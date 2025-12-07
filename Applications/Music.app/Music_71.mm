void sub_1007E87C0(void *a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4, int a5)
{
  v6 = v5;
  v45 = a1;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v38 - v12;
  v13 = type metadata accessor for UITraitOverrides();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v39 = &v38 - v17;
  v18 = [v5 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = a5;
  v42 = v14;
  v43 = v13;
  v41 = v11;
  v46 = a2;
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_26:

    v35 = v47 & 1;
    v36 = v45;
    v37 = v46;

    UINavigationController.push(_:traitOverrides:animated:)(v36, v37, v35);
    return;
  }

LABEL_25:
  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_3:
  v21 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = sub_1000260B0(v21, v19, &qword_101183D40, UIViewController_ptr);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a3(v22))
    {
      break;
    }

    ++v21;
    if (v24 == v20)
    {
      goto LABEL_26;
    }
  }

  v25 = v41;
  sub_10003895C(v46, v41);
  v27 = v42;
  v26 = v43;
  v28 = *(v42 + 48);
  if (v28(v25, 1, v43) == 1)
  {
    v29 = [v5 topViewController];
    v30 = v44;
    if (v29)
    {
      v31 = v29;
      UIViewController.traitOverrides.getter();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = v47;
    (*(v27 + 56))(v30, v32, 1, v26);
    if (v28(v25, 1, v26) != 1)
    {
      sub_1000095E8(v25, &unk_10119F3A0, &qword_100EC7CD0);
    }
  }

  else
  {
    v30 = v44;
    (*(v27 + 32))(v44, v25, v26);
    (*(v27 + 56))(v30, 0, 1, v26);
    v33 = v47;
  }

  if (v28(v30, 1, v26) == 1)
  {
    sub_1000095E8(v30, &unk_10119F3A0, &qword_100EC7CD0);
  }

  else
  {
    v34 = v39;
    (*(v27 + 32))(v39, v30, v26);
    (*(v27 + 16))(v40, v34, v26);
    UIViewController.traitOverrides.setter();
    (*(v27 + 8))(v34, v26);
  }
}

unint64_t sub_1007E8C74()
{
  if (qword_10117FD78 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A3E68))
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
  if (!*(&v4 + 1))
  {
    sub_1000095E8(v5, &unk_101183F30, qword_100EBF960);
    return 3;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_1007E8FD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TraitNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007E900C()
{
  result = swift_slowAlloc();
  qword_1011A3E68 = result;
  return result;
}

uint64_t sub_1007E9034()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012195E0);
  sub_1000060E4(v0, qword_1012195E0);
  return static Logger.music(_:)(0xD000000000000019, 0x8000000100EE3EA0);
}

uint64_t sub_1007E91D4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for NowPlayingTransportButton();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for NowPlayingTransportButton();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57E00;
  v7._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E939C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for MusicCarPlayBarButtonItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for MusicCarPlayBarButtonItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57DB0;
  v7._countAndFlagsBits = 0xD000000000000040;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E9564(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for PresentationDonationTarget();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for PresentationDonationTarget();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57D90;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E97F0(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for ImpressionTracker();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for ImpressionTracker();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57D50;
  v7._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E9A10(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for PresentationDonationItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for PresentationDonationItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57D70;
  v7._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E9C74(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.subscript.getter();
    a3(0);
    if (swift_dynamicCastClass())
    {
      return v8;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v10 = 0xD000000000000046;
    v9 = 0x8000000100E57D00;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v8;
  }

  _StringGuts.grow(_:)(82);
  v9 = 0x8000000100E57CB0;
  v10 = 0xD000000000000043;
LABEL_11:
  String.append(_:)(*&v10);
  v12._countAndFlagsBits = a4;
  v12._object = a5;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x756F662074756220;
  v13._object = 0xEB0000000020646ELL;
  String.append(_:)(v13);
  swift_getObjectType();
  v14._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v14);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

double sub_1007E9F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1007E9F88()
{
  sub_100009F78(0, &qword_101191A90, OS_os_log_ptr);
  result = OS_os_log.init(musicCategory:)(0xD00000000000001ELL, 0x8000000100EE3F50);
  qword_1011A3EA0 = result;
  return result;
}

uint64_t sub_1007EA014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10010FC20(&qword_1011A3FD0, &unk_100EE4010);
  __chkstk_darwin();
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v19[-v11];
  v13 = *a1;
  swift_beginAccess();
  sub_1000089F8(v4 + v13, v12, &qword_1011A3FD0, &unk_100EE4010);
  v14 = type metadata accessor for Signpost(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return sub_10000C464(v12, a4);
  }

  sub_1000095E8(v12, &qword_1011A3FD0, &unk_100EE4010);
  if (qword_10117FD88 != -1)
  {
    swift_once();
  }

  v16 = qword_1011A3EA0;
  v17 = v4;
  Signpost.init(name:object:log:)(a2, a3, 2, v16, a4);
  sub_1000065D8(a4, v10);
  (*(v15 + 56))(v10, 0, 1, v14);
  swift_beginAccess();
  sub_1000066A4(v10, v4 + v13);
  return swift_endAccess();
}

void sub_1007EA28C(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController);
    if (!v5)
    {
LABEL_10:

      return;
    }

    v6 = v5;
    v7 = [v6 isReversed] | a1;
    if ([v6 isReversed])
    {
      if ((v7 & 1) != 0 && (a1 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v7)
    {
LABEL_9:
      sub_1007EA35C(0);

      v4 = v6;
      goto LABEL_10;
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_9;
  }
}

void sub_1007EA35C(void *a1)
{
  v2 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController;
  v3 = *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController);
  *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController) = a1;
  v14 = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1007EBB80;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
    swift_beginAccess();
    v8 = *&v4[v7];
    v9 = v4;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v7] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_10049974C(0, v8[2] + 1, 1, v8);
      *&v4[v7] = v8;
    }

    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v8 = sub_10049974C((v11 > 1), v12 + 1, 1, v8);
    }

    v8[2] = v12 + 1;
    v13 = &v8[2 * v12];
    v13[4] = sub_100547098;
    v13[5] = v6;
    *&v4[v7] = v8;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1007EA514(void (*a1)(id), uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v5 = [Strong transitionCoordinator];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = a2;
      v7[4] = v11;
      aBlock[4] = sub_1007EBB50;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1007E9F28;
      aBlock[3] = &unk_1010C0EF8;
      v8 = _Block_copy(aBlock);
      sub_100030444(a1, a2);
      v9 = v11;

      [v6 animateAlongsideTransition:0 completion:v8];

      _Block_release(v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = v11;
      if (a1)
      {
        a1(v11);
        v10 = v11;
      }
    }
  }

  else
  {

    sub_1007EAAD8(a1, a2);
  }
}

void sub_1007EA6C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider;
  swift_beginAccess();
  sub_1000089F8(v2 + v5, &v49, &qword_101194670, &qword_100ED2258);
  if (v50)
  {
    sub_100059A8C(&v49, v51);
    v6 = *(*sub_10000954C(v51, v52) + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
    if (v6)
    {
      v7 = [v6 view];
      if (v7)
      {
        v8 = v7;
        v9 = sub_10000954C(v51, v52);
        [v8 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [a1 view];
        v19 = *(*v9 + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
        if (v19 && (v20 = [v19 view]) != 0 && (v21 = v20, v22 = objc_msgSend(v20, "superview"), v21, v22))
        {
          [v22 convertRect:v18 toView:{v11, v13, v15, v17}];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
        }

        else
        {

          v24 = 0;
          v26 = 0;
          v28 = 0;
          v30 = 0;
        }

        sub_10000959C(v51);
        goto LABEL_15;
      }
    }

    sub_10000959C(v51);
  }

  else
  {
    sub_1000095E8(&v49, &qword_101194670, &qword_100ED2258);
  }

  v31 = *(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view);
  v24 = 0;
  if (!v31)
  {
LABEL_17:
    v48 = 1;
    v26 = 0;
    v28 = 0;
    v30 = 0;
    goto LABEL_18;
  }

  v32 = v31;
  v33 = [v32 superview];
  if (!v33)
  {

    goto LABEL_17;
  }

  v34 = v33;
  [v32 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [a1 view];
  [v34 convertRect:v43 toView:{v36, v38, v40, v42}];
  v24 = v44;
  v26 = v45;
  v28 = v46;
  v30 = v47;

LABEL_15:
  v48 = 0;
LABEL_18:
  *a2 = v24;
  *(a2 + 8) = v26;
  *(a2 + 16) = v28;
  *(a2 + 24) = v30;
  *(a2 + 32) = v48;
}

void sub_1007EAAD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v5 = type metadata accessor for UIView.Corner.Radius();
  v53 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIView.Corner();
  v52 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007E9FE4(v12);
  Signpost.begin(dso:)(&_mh_execute_header);
  sub_100007908(v12);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1006CB648();
    v14 = v13;
    v51 = v15;
    swift_unknownObjectRelease();
    if (v14)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_22:

        return;
      }

      v17 = Strong;
      if (!UIAccessibilityPrefersCrossFadeTransitions())
      {
        [v14 setTransitioningDelegate:v2];
      }

      [v14 setModalPresentationStyle:2];
      v18 = [v14 presentationController];
      v50 = v17;
      if (!v18)
      {
LABEL_19:
        sub_1007E9FE4(v12);
        Signpost.end(dso:)(&_mh_execute_header);
        sub_100007908(v12);
        sub_1007E9FFC(v12);
        Signpost.begin(dso:)(&_mh_execute_header);
        sub_100007908(v12);
        v37 = [objc_opt_self() defaultCenter];
        if (qword_10117FD90 != -1)
        {
          swift_once();
        }

        [v37 postNotificationName:qword_1012195F8 object:0];

        v38 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v39 = swift_allocObject();
        v40 = v54;
        v39[2] = v38;
        v39[3] = v40;
        v39[4] = a2;
        v39[5] = v14;
        v39[6] = v51;
        v57 = sub_1007EBB40;
        v58 = v39;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002BC98;
        v56 = &unk_1010C0EA8;
        v41 = _Block_copy(aBlock);
        v42 = v14;
        sub_100030444(v40, a2);

        [v50 presentViewController:v42 animated:1 completion:v41];
        swift_unknownObjectRelease();
        _Block_release(v41);

        swift_unknownObjectWeakAssign();
        goto LABEL_22;
      }

      v19 = v18;
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (!v49)
      {
LABEL_18:

        goto LABEL_19;
      }

      v47 = v19;
      v48 = a2;
      v20 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider;
      swift_beginAccess();
      sub_1000089F8(v3 + v20, aBlock, &qword_101194670, &qword_100ED2258);
      v21 = v56;
      v45 = v5;
      if (v56)
      {
        sub_10000954C(aBlock, v56);
        v46 = &v43;
        v22 = *(v21 - 1);
        v23 = __chkstk_darwin();
        v25 = (&v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v22 + 16))(v25, v23);
        sub_1000095E8(aBlock, &qword_101194670, &qword_100ED2258);
        v26 = *(*v25 + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
        if (v26)
        {
          v27 = [v26 view];
          (*(v22 + 8))(v25, v21);
          if (v27)
          {
LABEL_15:
            v44 = v27;
            v28 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0 smoothness:6.0];
            v29 = [swift_unknownObjectRetain() tabBar];
            v30 = [v29 traitCollection];

            v31 = [v30 userInterfaceStyle];
            [v28 setAdaptiveStyle:v31];
            swift_unknownObjectRelease();
            v32 = v49;
            v46 = v28;
            [v49 _setNonLargeBackground:v28];
            [v32 _setWantsFullScreen:1];
            [v32 _setAllowsInteractiveDismissWhenFullScreen:1];
            [v32 _setShouldDismissWhenTappedOutside:1];
            static UIView.Corner.rounded.getter();
            UIView.Corner.radius.getter();
            (*(v52 + 8))(v10, v8);
            v33 = v44;
            if (v44)
            {
              [v44 bounds];
            }

            a2 = v48;
            v34 = v45;
            UIView.Corner.Radius.value(in:)();
            v36 = v35;
            (*(v53 + 8))(v7, v34);
            [v32 _setCornerRadiusForPresentationAndDismissal:v36];
            [v32 setSourceView:v33];

            v19 = v46;
            goto LABEL_18;
          }
        }

        else
        {
          (*(v22 + 8))(v25, v21);
        }
      }

      else
      {
        sub_1000095E8(aBlock, &qword_101194670, &qword_100ED2258);
      }

      v27 = [*(v3 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view) superview];
      goto LABEL_15;
    }
  }
}

void sub_1007EB294(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1007E9FFC(v7);

    Signpost.end(dso:)(&_mh_execute_header);
    sub_100007908(v7);
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_10117FD98 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:qword_101219600 object:0];

  if (a2)
  {
    a2(a4);
  }
}

id sub_1007EB3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationInteraction(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1007EB5CC(uint64_t a1)
{
  v2 = v1;
  sub_100009F78(0, &qword_101197A30, NSObject_ptr);
  v3 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer;
  v4 = *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer);
  v5 = static NSObject.== infix(_:_:)();

  v6 = *(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController);
  result = (v5 ^ 1) & (v6 == 0);
  if (((v5 ^ 1) & 1) == 0 && !v6)
  {
    v8 = *(v2 + v3);
    v9 = [v8 view];
    [v8 translationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = fabs(v13);
    return v14 > 2.22044605e-16 && fabs(v11 * 0.5) < v14 && v13 < 2.22044605e-16;
  }

  return result;
}

id sub_1007EB7D0(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v8 = *((*(v6 + 16))(v2, ObjectType, v6) + 16);

    if (v8)
    {
      v9 = [a1 presentingViewController];
      if (v9)
      {
        v10 = v9;
        sub_1007EA6C8(v9, v20);
        if ((v21 & 1) == 0)
        {
          v12 = *&v20[2];
          v11 = *&v20[3];
          v14 = *v20;
          v13 = *&v20[1];
          v15 = objc_allocWithZone(type metadata accessor for PalettePresentationAnimationController());
          v16 = v2;
          v17 = sub_100546CA0(v16);

          v18 = v17;
          [v18 setIsReversed:1];
          [v18 setSourceFrame:{v14, v13, v12, v11}];

          v19 = v18;
          sub_1007EA35C(v18);
          swift_unknownObjectRelease();

          return v18;
        }
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

NSString sub_1007EB9A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1012195F8 = result;
  return result;
}

NSString sub_1007EB9D8()
{
  result = String._bridgeToObjectiveC()();
  qword_101219600 = result;
  return result;
}

id sub_1007EBA10(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v5 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v7 = *((*(v5 + 16))(v2, ObjectType, v5) + 16);

  if (v7 && (sub_1007EA6C8(a1, v17), (v18 & 1) == 0))
  {
    v10 = *&v17[2];
    v9 = *&v17[3];
    v12 = *v17;
    v11 = *&v17[1];
    v13 = objc_allocWithZone(type metadata accessor for PalettePresentationAnimationController());
    v14 = v2;
    v8 = sub_100546CA0(v14);

    [v8 setSourceFrame:{v12, v11, v10, v9}];
    v15 = v8;
    sub_1007EA35C(v8);
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1007EBB50()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

char *sub_1007EBB90(void *a1, char a2)
{
  v3 = [a1 tabBarController];
  if (!v3 || (v4 = v3, v5 = [v3 traitCollection], v4, !v5))
  {
    v5 = [objc_opt_self() currentTraitCollection];
  }

  v6 = sub_10066BAEC(v5, a2);

  return v6;
}

id sub_1007EBC30()
{
  v1 = v0;
  v2 = 0x737465636146;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v4 = &v30 - v3;
  v38 = 0x737465636146;
  v39 = 0xE600000000000000;
  aBlock = 0xD000000000000014;
  v32 = 0x8000000100E3E560;
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v7 = v6;
  v9 = v8;
  result = sub_1000095E8(v4, &unk_101182EA0, &unk_100EBE980);
  if (v9)
  {
    v11 = 0x8000000100E58050;
    v12 = 0xD00000000000001ALL;
    v13 = 0xE600000000000000;
  }

  else
  {
    if (v7 >> 14 > 0x18)
    {
      __break(1u);
      return result;
    }

    v11 = 0xE600000000000000;
    String.subscript.getter();
    v14 = static String._fromSubstring(_:)();
    v13 = v15;

    v12 = 0x737465636146;
    v2 = v14;
  }

  v38 = v12;
  v39 = v11;
  v40 = v2;
  v41 = v13;
  v42 = 0;
  v43 = 0xE000000000000000;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v45)
  {
    v35 = v45;
    v36 = v46;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_10003640C;
    v34 = &unk_1010C10C0;
    v19 = _Block_copy(&aBlock);
  }

  else
  {
    v19 = 0;
  }

  v20 = v44;
  v21 = type metadata accessor for MusicTab.Group();
  v37.receiver = v1;
  v37.super_class = v21;
  v22 = objc_msgSendSuper2(&v37, "initWithTitle:image:identifier:children:viewControllerProvider:", v16, v20, v17, v18.super.isa, v19);
  _Block_release(v19);

  sub_100036360(&v38);
  v23 = objc_allocWithZone(_s8FacetTabCMa());
  v24 = v22;
  v25 = sub_1007EC0B0(0, 0);
  [v24 setPreferredPlacement:6];
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EBC6C0;
  *(v26 + 32) = v25;
  v27 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 setChildren:isa];

  v29 = [v27 identifier];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  [v24 setDefaultChildIdentifier:v29];

  [v24 setAllowsHiding:0];
  [v24 setAllowsReordering:1];
  [v24 setSidebarAppearance:1];

  return v24;
}

id sub_1007EC0B0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v6 = &v42 - v5;
  v44 = v2;
  *(v2 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier) = v4;
  v7._countAndFlagsBits = Library.Menu.Identifier.rawValue.getter(v4);
  v53 = 0xD000000000000014;
  v54 = 0x8000000100E3E560;
  String.append(_:)(v7);

  v9 = v53;
  v8 = v54;
  v10 = Library.Menu.Identifier.name(for:)(v3, v4);
  v12 = v11;
  v45 = v3;
  Library.Menu.Identifier.symbolName(for:)(v3, v4);
  v13 = String._bridgeToObjectiveC()();

  v43 = [objc_opt_self() _systemImageNamed:v13];

  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  v53 = v9;
  v54 = v8;
  aBlock = 0xD000000000000014;
  v47 = 0x8000000100E3E560;
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v17 = v16;
  LOBYTE(v3) = v18;
  result = sub_1000095E8(v6, &unk_101182EA0, &unk_100EBE980);
  if (v3)
  {
    v53 = 0xD000000000000014;
    v54 = 0x8000000100E3E560;
    v20._countAndFlagsBits = v9;
    v20._object = v8;
    String.append(_:)(v20);
    v21 = v9;
    v9 = v53;
    v22 = v54;
  }

  else
  {
    v23 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v23 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v23 < v17 >> 14)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();

    v21 = static String._fromSubstring(_:)();
    v25 = v24;

    v22 = v8;
    v8 = v25;
  }

  v53 = v9;
  v54 = v22;
  v55 = v21;
  v56 = v8;
  v57 = v10;
  v58 = v12;
  v59 = v43;
  v60 = sub_1007ED92C;
  v61 = v14;
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  if (v60)
  {
    v50 = v60;
    v51 = v61;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_10003640C;
    v49 = &unk_1010C1098;
    v28 = _Block_copy(&aBlock);
  }

  else
  {
    v28 = 0;
  }

  v29 = v59;
  v30 = type metadata accessor for MusicTab();
  v52.receiver = v44;
  v52.super_class = v30;
  v31 = objc_msgSendSuper2(&v52, "initWithTitle:image:identifier:viewControllerProvider:", v26, v29, v27, v28);
  _Block_release(v28);

  sub_100036360(&v53);
  v32 = v4;
  v33 = Library.Menu.Identifier.musicAccessibilityIdentifier.getter(v4);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  _s8FacetTabCMa();
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v33, v35, v37, v39);
  v41 = v32 != 1 || v45 == 2;
  [v31 setAllowsHiding:v41];
  return v31;
}

id sub_1007EC514(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1007EC580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a6@<X8>)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v12 = v24 - v11 + 64;
  static Library.Menu.Request.with(_:)(sub_1007ED758, v24);
  if (a1 && (RequestResponse.Revision.content.getter(&v23), (v13 = v23) != 0))
  {

    if (v13 >> 62)
    {
      sub_100009F78(0, &qword_101181F70, UITab_ptr);

      v14 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      v14 = v13;
    }
  }

  else
  {
    v15 = [a4 children];
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static TaskPriority.userInitiated.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  type metadata accessor for MainActor();
  sub_1003E1510(v24, &v23);

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  v19 = v24[3];
  *(v18 + 64) = v24[2];
  *(v18 + 80) = v19;
  *(v18 + 96) = v24[4];
  v20 = v24[1];
  *(v18 + 32) = v24[0];
  *(v18 + 48) = v20;
  *(v18 + 112) = v14;
  *(v18 + 120) = a2;
  *(v18 + 128) = a3;
  v21 = sub_10035EB10(0, 0, v12, &unk_100EE40E0, v18);
  sub_1000095E8(v12, &unk_101181520, &qword_100EBCC60);
  a6[3] = sub_10010FC20(&qword_1011A0D90, &unk_100EE0410);
  a6[4] = &protocol witness table for Task<A, B>;
  result = sub_100400A60(v24);
  *a6 = v21;
  return result;
}

uint64_t sub_1007EC84C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = a7;
  *(v7 + 168) = a5;
  *(v7 + 192) = type metadata accessor for MainActor();
  *(v7 + 200) = static MainActor.shared.getter();
  v9 = a4[3];
  *(v7 + 48) = a4[2];
  *(v7 + 64) = v9;
  *(v7 + 80) = a4[4];
  v10 = a4[1];
  *(v7 + 16) = *a4;
  *(v7 + 32) = v10;
  v11 = swift_task_alloc();
  *(v7 + 208) = v11;
  v12 = sub_1007ED834();
  *v11 = v7;
  v11[1] = sub_1007EC938;

  return Request.response(previousRevision:)(v7 + 96, 0, &type metadata for Library.Menu.Request, v12);
}

uint64_t sub_1007EC938(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007ECA7C, v5, v4);
}

uint64_t sub_1007ECA7C()
{
  v56 = v0;

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  if (*(v0 + 144))
  {
    *(v0 + 152) = v2;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    swift_willThrowTypedImpl();
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101218E00);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v52 = v1;
    sub_1007ED888(v2, v1, v4, v3, v6, v5, 1);
    v10 = v6;
    v11 = v4;
    v12 = v2;
    if (os_log_type_enabled(v8, v9))
    {
      v54 = v3;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v55[0] = v14;
      *v13 = 136446210;
      *(v0 + 160) = v12;
      swift_errorRetain();
      v15 = String.init<A>(describing:)();
      v17 = sub_1000105AC(v15, v16, v55);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to load library facets with error: %{public}s", v13, 0xCu);
      sub_10000959C(v14);

      v3 = v54;
    }

    v18 = *(v0 + 216);
    v19 = *(v0 + 224);
    v20 = *(v0 + 176);
    swift_errorRetain();
    v20(v12, 0, 1, v18, v19);
    sub_1007ED888(v12, v52, v11, v3, v10, v5, 1);
    swift_unknownObjectRelease();
    sub_1007ED888(v12, v52, v11, v3, v10, v5, 1);
    v21.n128_f64[0] = sub_1007ED888(v12, v52, v11, v3, v10, v5, 1);
  }

  else
  {
    v22 = *(v2 + 16);
    v51 = *(v0 + 128);
    if (v22)
    {
      v55[0] = _swiftEmptyArrayStorage;

      v53 = v1;
      v23 = v1;

      specialized ContiguousArray.reserveCapacity(_:)();
      v50 = v2;
      v24 = (v2 + 32);
      v25 = (v2 + 32);
      do
      {
        v28 = *(v0 + 168);
        v30 = *v25++;
        v29 = v30;
        KeyPath = swift_getKeyPath();
        v32 = sub_1002D1A7C(v30, KeyPath, v28);

        if (!v32)
        {
          v33 = objc_allocWithZone(_s8FacetTabCMa());
          v32 = sub_1007EC0B0(v29, 0);
        }

        v26 = v32;

        v27 = sub_10048CAB4(v29, v5);

        [v26 setHidden:(v27 & 1) == 0];
        [v26 setHiddenByDefault:{(sub_10048CAB4(v29, v3) & 1) == 0}];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v22;
      }

      while (v22);
      v34 = v55[0];
      v35 = *(v50 + 16);
      if (v35)
      {
        v49 = v55[0];
        sub_100015C04(0, v35, 0);
        do
        {
          v36 = *v24++;
          v37 = 0xD000000000000029;
          v38 = "nt";
          switch(v36)
          {
            case 1:
              v37 = 0xD000000000000025;
              v38 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v37 = 0xD000000000000023;
              v38 = "LibraryView.Playlists";
              break;
            case 3:
              v37 = 0xD000000000000022;
              v38 = "LibraryView.Artists";
              break;
            case 4:
              v37 = 0xD000000000000021;
              v38 = "LibraryView.Albums";
              break;
            case 5:
              v37 = 0xD000000000000026;
              v38 = "LibraryView.Songs";
              break;
            case 6:
              v37 = 0xD000000000000027;
              v38 = "LibraryView.MadeForYou";
              break;
            case 7:
              v37 = 0xD000000000000022;
              v38 = "LibraryView.MusicVideos";
              break;
            case 8:
              v37 = 0xD000000000000028;
              v38 = "LibraryView.Genres";
              break;
            case 9:
              v37 = 0xD000000000000025;
              v38 = "LibraryView.Compilations";
              break;
            case 10:
              v37 = 0xD000000000000021;
              v38 = "LibraryView.Composers";
              break;
            case 11:
              v37 = 0xD000000000000026;
              v38 = "LibraryView.Shows";
              break;
            case 12:
              v37 = 0xD000000000000027;
              v38 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v55[0] = 0xD000000000000014;
          v55[1] = 0x8000000100E3E560;
          v39 = v38 | 0x8000000000000000;
          String.append(_:)(*&v37);

          v41 = _swiftEmptyArrayStorage[2];
          v40 = _swiftEmptyArrayStorage[3];
          if (v41 >= v40 >> 1)
          {
            sub_100015C04((v40 > 1), v41 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v41 + 1;
          v42 = &_swiftEmptyArrayStorage[2 * v41];
          v42[4] = 0xD000000000000014;
          v42[5] = 0x8000000100E3E560;
          --v35;
        }

        while (v35);
        v34 = v49;
        v43 = v4;
        v44 = v53;
        v45 = v50;
      }

      else
      {
        v43 = v4;
        v45 = v50;
        v44 = v53;
      }
    }

    else
    {

      v46 = v1;

      v34 = _swiftEmptyArrayStorage;
      v45 = v2;
      v44 = v1;
      v43 = v4;
    }

    (*(v0 + 176))(v34, _swiftEmptyArrayStorage, 0, *(v0 + 216), *(v0 + 224));
    sub_1007ED888(v45, v44, v43, v3, v51, v5, 0);

    swift_unknownObjectRelease();
  }

  v47 = *(v0 + 8);

  return v47(v21);
}

double sub_1007ED1F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *v4;

  sub_1007EC580(a1, sub_1007ED710, v9, v10, a4);

  return result;
}

uint64_t sub_1007ED29C(uint64_t *a1, uint64_t *a2)
{
  sub_100009F78(0, &qword_101197A30, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibrary();
  return static MusicLibrary.== infix(_:_:)() & 1;
}

unint64_t sub_1007ED31C(uint64_t a1)
{
  result = sub_1007ED344();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1007ED344()
{
  result = qword_1011A4060;
  if (!qword_1011A4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4060);
  }

  return result;
}

void sub_1007ED398(uint64_t a1, uint64_t a2)
{
  Library.Menu.Request.MediaLibrarySource.init(_:)();
  v4 = v3;
  v6 = v5;
  v7 = *a1;
  v8 = *(a1 + 8);

  sub_1003E156C(v7, v8);
  *a1 = v4;
  *(a1 + 8) = v6 & 1;
  *(a1 + 40) = 0;
  v16 = sub_10010F828(&off_10109C528);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6)
  {
    v11 = &v14;
    v12 = 11;
  }

  else
  {
    v11 = &v15;
    v12 = 12;
  }

  sub_1003B4C48(v11, v12);
  v13 = v16;

  *(a1 + 32) = v13;
}

uint64_t sub_1007ED490(__n128 a1)
{
  v1 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UICellAccessory.DisplayedState();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184740, &qword_100ED5D60);
  type metadata accessor for UICellAccessory();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  (*(v6 + 104))(v8, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v5);
  if (qword_10117F290 != -1)
  {
    swift_once();
  }

  v10 = sub_1000060E4(v1, qword_101218718);
  (*(v2 + 16))(v4, v10, v1);
  static UICellAccessory.multiselect(displayed:options:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1007ED710(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  return v6(v8, a4, a5);
}

uint64_t sub_1007ED760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1007EC84C(a1, v4, v5, (v1 + 32), v6, v7, v8);
}

unint64_t sub_1007ED834()
{
  result = qword_1011A4068;
  if (!qword_1011A4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4068);
  }

  return result;
}

double sub_1007ED888(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }

  return result;
}

double sub_1007ED934(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v54 = a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = qword_10117F7B0;

  v12 = v5;

  if (v11 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218E30);

    v14 = v12;

    v15 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v55 = v8;
    v56 = v7;
    v59 = v10;
    v60 = v9;
    v65 = a4;
    v61 = v14;
    if (os_log_type_enabled(v15, v12))
    {
      v16 = swift_slowAlloc();
      loga = v12;
      v12 = swift_slowAlloc();
      v76 = v12;
      *v16 = 136446210;
      v70 = v6;
      v71 = v14;
      v72 = v7;
      v73 = v8;
      v74 = v9;
      v75 = v10;

      v17 = v14;

      v18 = String.init<A>(describing:)();
      v20 = sub_1000105AC(v18, v19, &v76);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, loga, "Updating menu selection %{public}s", v16, 0xCu);
      sub_10000959C(v12);

      a4 = v65;
    }

    v7 = a3;
    v10 = v6;
    v64 = v6;
    v9 = v14;
    log = *(v6 + 16);
    if (!log)
    {
      break;
    }

    v8 = 0;
    v66 = v6 + 32;
    while (v8 < *(v10 + 16))
    {
      v6 = *(v66 + v8);
      KeyPath = swift_getKeyPath();

      v22 = sub_1002D1A7C(v6, KeyPath, v7);

      if (v22 || (v12 = swift_getKeyPath(), v22 = sub_1002D1A7C(v6, v12, a4), , v22))
      {
        v12 = [v22 isHidden];

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v25 = 136315394;
          if (v12)
          {
            v26 = 0x7463656C65736544;
          }

          else
          {
            v26 = 0x6E697463656C6553;
          }

          if (v12)
          {
            v27 = 0xEB00000000676E69;
          }

          else
          {
            v27 = 0xE900000000000067;
          }

          v28 = sub_1000105AC(v26, v27, &v70);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2082;
          v29 = Library.Menu.Identifier.description.getter(v6);
          v31 = sub_1000105AC(v29, v30, &v70);
          a4 = v65;

          *(v25 + 14) = v31;
          v9 = v61;
          _os_log_impl(&_mh_execute_header, v23, v24, "%s identifier=%{public}s", v25, 0x16u);
          swift_arrayDestroy();
          v10 = v64;

          v7 = a3;
        }

        Library.Menu.setSelectionState(_:for:)(v12, v6);
      }

      ++v8;

      if (log == v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_19:

  v67 = v9;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v62 = v33;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v34 = 136446466;
    v70 = v10;
    v71 = v67;
    v72 = v56;
    v73 = v55;
    v74 = v60;
    v75 = v59;

    v35 = v67;

    v36 = String.init<A>(describing:)();
    v38 = sub_1000105AC(v36, v37, &v76);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v39 = Array.description.getter();
    v41 = sub_1000105AC(v39, v40, &v76);

    *(v34 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v32, v62, "Re-ordering menu %{public}s with identifiers=%{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  v42 = v57;
  v43 = *(v54 + 16);
  if (v43)
  {
    if (v43 == *(v10 + 16))
    {
      v44 = 0;
      do
      {
        if (v43 == v44)
        {
          break;
        }

        v45 = *(v54 + 32 + v44);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v58 = v42;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v70 = v49;
          *v48 = 136446466;
          v50 = Library.Menu.Identifier.description.getter(v45);
          v52 = sub_1000105AC(v50, v51, &v70);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2050;
          *(v48 + 14) = v44;
          _os_log_impl(&_mh_execute_header, v46, v47, "Moving identifier=%{public}s to index=%{public}ld", v48, 0x16u);
          sub_10000959C(v49);

          v42 = v58;
        }

        Library.Menu.move(_:to:)(v45, v44++);
      }

      while (!v42);
    }

    else
    {
      sub_1007EE1D8();
      swift_allocError();
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1007EE1D8()
{
  result = qword_1011A4070;
  if (!qword_1011A4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4070);
  }

  return result;
}

unint64_t sub_1007EE250()
{
  result = qword_1011A4078;
  if (!qword_1011A4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4078);
  }

  return result;
}

uint64_t sub_1007EE2AC@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, char a3@<W0>, uint64_t a4@<X2>, char a5@<W3>)
{
  if (a2)
  {
    result = [a2 horizontalSizeClass];
  }

  else
  {
    result = 1;
  }

  v10 = 0uLL;
  if (!a5)
  {
    goto LABEL_40;
  }

  if (a5 != 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a3)
        {
          static CAPackageDefinition.pause.getter(v24);
LABEL_23:
          CAPackageDefinition.scaled(byX:y:)(&v25, 0.92, 0.92);
LABEL_50:
          v22 = v26;
          v23 = v25;
          v20 = v28;
          v21 = v27;
          v18 = v30;
          v19 = v29;
          a5 = v31;
          result = sub_10002A3D4(v24);
          v15 = v18;
          v14 = v19;
          v13 = v20;
          v12 = v21;
          v11 = v22;
          v10 = v23;
          goto LABEL_51;
        }

        if (result != 2)
        {
          if (result != 1)
          {
            goto LABEL_39;
          }

          static CAPackageDefinition.pause.getter(v24);
          v16 = 0x4032000000000000;
          v17 = 0x4032000000000000;
LABEL_49:
          CAPackageDefinition.with(size:)(v16, v17, 0, &v25);
          goto LABEL_50;
        }

        static CAPackageDefinition.pause.getter(v24);
LABEL_48:
        v16 = 0x403B000000000000;
        v17 = 0x403B000000000000;
        goto LABEL_49;
      }

      if (a3)
      {
        static CAPackageDefinition.stop.getter(v24);
        goto LABEL_23;
      }

      if (result == 2)
      {
        static CAPackageDefinition.stop.getter(v24);
        goto LABEL_48;
      }

      if (result != 1)
      {
        goto LABEL_39;
      }

      static CAPackageDefinition.stop.getter(v24);
    }

    else
    {
      if (a3)
      {
        static CAPackageDefinition.play.getter(v24);
        goto LABEL_23;
      }

      if (result == 2)
      {
        static CAPackageDefinition.play.getter(v24);
        v16 = 0x403E000000000000;
        v17 = 0x403E000000000000;
        goto LABEL_49;
      }

      if (result != 1)
      {
        goto LABEL_39;
      }

      static CAPackageDefinition.play.getter(v24);
    }

    v16 = 0x4030000000000000;
    v17 = 0x4030000000000000;
    goto LABEL_49;
  }

  if ((a3 & 1) == 0)
  {
    if (result == 2)
    {
      if (a4 == -1)
      {
        static CAPackageDefinition.skipBackward.getter(v24);
      }

      else
      {
        if (a4 != 1)
        {
          goto LABEL_39;
        }

        static CAPackageDefinition.skipForward.getter(v24);
      }

      v16 = 0x403E000000000000;
      v17 = 0x4031000000000000;
      goto LABEL_49;
    }

    if (result == 1)
    {
      if (a4 == -1)
      {
        static CAPackageDefinition.skipBackward.getter(v24);
        goto LABEL_42;
      }

      if (a4 == 1)
      {
        static CAPackageDefinition.skipForward.getter(v24);
LABEL_42:
        v16 = 0x4039000000000000;
        v17 = 0x402C000000000000;
        goto LABEL_49;
      }
    }

LABEL_39:
    a5 = 0;
LABEL_40:
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_51;
  }

  if (a4 == -1)
  {
    result = static CAPackageDefinition.skipBackward.getter(&v25);
    goto LABEL_25;
  }

  if (a4 != 1)
  {
    goto LABEL_39;
  }

  result = static CAPackageDefinition.skipForward.getter(&v25);
LABEL_25:
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v15 = v30;
  a5 = v31;
LABEL_51:
  *a1 = v10;
  *(a1 + 1) = v11;
  *(a1 + 2) = v12;
  *(a1 + 3) = v13;
  *(a1 + 4) = v14;
  *(a1 + 5) = v15;
  *(a1 + 96) = a5;
  return result;
}

void sub_1007EE550(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = [a1 tracklist];
  v14 = [v9 playingItem];

  if (!a4)
  {
    v10 = v14;
    if (!a2)
    {
      v11 = &type metadata for Player.JumpCommand;
      v12 = &protocol witness table for Player.JumpCommand;
      goto LABEL_8;
    }

LABEL_20:

    goto LABEL_21;
  }

  v10 = v14;
  if (a4 != 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (!a2)
        {
          *(a5 + 24) = &type metadata for Player.PlaybackCommand;
          *(a5 + 32) = &protocol witness table for Player.PlaybackCommand;

          *a5 = 1;
          return;
        }
      }

      else if (!a2)
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        if (MPCPlayerResponseItem.isLiveContent.getter())
        {
          *(a5 + 24) = &type metadata for Player.PlaybackCommand;
          *(a5 + 32) = &protocol witness table for Player.PlaybackCommand;

          *a5 = 2;
          return;
        }

        v10 = v14;
      }
    }

    else if (!a2)
    {
      *(a5 + 24) = &type metadata for Player.PlaybackCommand;
      *(a5 + 32) = &protocol witness table for Player.PlaybackCommand;

      *a5 = 0;
      return;
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    if (a3 == 1)
    {
      v13 = &v26;
      v28 = &type metadata for Player.ChangeCommand;
      v29 = &protocol witness table for Player.ChangeCommand;
      v27 = 3;
      v31 = &type metadata for Player.ChangeCommand;
      v32 = &protocol witness table for Player.ChangeCommand;
      v30 = 5;
      v34 = &type metadata for Player.ChangeCommand;
      v35 = &protocol witness table for Player.ChangeCommand;
      v33 = 1;
    }

    else
    {
      if (a3 != -1)
      {
        *(a5 + 32) = 0;
        *a5 = 0u;
        *(a5 + 16) = 0u;

        return;
      }

      v13 = &v15;
      v17 = &type metadata for Player.ChangeCommand;
      v18 = &protocol witness table for Player.ChangeCommand;
      v16 = 2;
      v20 = &type metadata for Player.ChangeCommand;
      v21 = &protocol witness table for Player.ChangeCommand;
      v19 = 4;
      v23 = &type metadata for Player.ChangeCommand;
      v24 = &protocol witness table for Player.ChangeCommand;
      v22 = 0;
    }

    sub_100008FE4((v13 + 32), v25);
    if (MPCPlayerResponse.canPerform(_:)(v25) || (sub_10000959C(v25), sub_100008FE4((v13 + 72), v25), MPCPlayerResponse.canPerform(_:)(v25)) || (sub_10000959C(v25), sub_100008FE4((v13 + 112), v25), MPCPlayerResponse.canPerform(_:)(v25)))
    {

      sub_10010FC20(&qword_101192050, &unk_100ECF248);
      swift_arrayDestroy();
      sub_100059A8C(v25, a5);
      return;
    }

    sub_10000959C(v25);

    sub_10010FC20(&qword_101192050, &unk_100ECF248);
    swift_arrayDestroy();
LABEL_21:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  if (a2 == 1)
  {
    v11 = &type metadata for Player.SeekCommand;
    v12 = &protocol witness table for Player.SeekCommand;
LABEL_8:
    *(a5 + 24) = v11;
    *(a5 + 32) = v12;

    *a5 = a3;
    *(a5 + 8) = 0;
    return;
  }

  *(a5 + 24) = &type metadata for Player.SeekCommand;
  *(a5 + 32) = &protocol witness table for Player.SeekCommand;

  *a5 = 0;
  *(a5 + 8) = 2;
}

id sub_1007EE8A4(char a1, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2)
  {
    v8 = [a2 horizontalSizeClass];
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [objc_opt_self() currentTraitCollection];
    v8 = [v12 horizontalSizeClass];

    if (a1)
    {
LABEL_3:
      v9 = objc_opt_self();
      if (a4 >= 2u)
      {
        v10 = 44.0;
        v11 = 7;
      }

      else
      {
        v10 = 28.0;
        v11 = 5;
      }

      goto LABEL_18;
    }
  }

  if (v8 == 1)
  {
    v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:a2];
    [v14 pointSize];
    v16 = v15;

    v9 = objc_opt_self();
    if (a4 < 2u || a3 != 1)
    {
      goto LABEL_16;
    }

    v10 = v16;
    v11 = 7;
  }

  else
  {
    if (v8 != 2)
    {
      v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:a2];
      goto LABEL_15;
    }

    if (a4 < 2u)
    {
      v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:a2];
LABEL_15:
      v17 = v13;
      [v17 pointSize];
      v16 = v18;

      v9 = objc_opt_self();
LABEL_16:
      v10 = v16;
      v11 = 7;
      v19 = 2;
      goto LABEL_19;
    }

    v20 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:a2];
    [v20 pointSize];
    v22 = v21;

    v9 = objc_opt_self();
    v10 = v22;
    v11 = 8;
  }

LABEL_18:
  v19 = 3;
LABEL_19:
  v23 = [v9 configurationWithPointSize:v11 weight:v19 scale:v10];

  return v23;
}

uint64_t sub_1007EEB38(uint64_t result, char a2)
{
  if (!a2)
  {
    if (*&result <= 0.0)
    {
      if (*&result >= 0.0)
      {
        *&result = 0.0;
        return result;
      }

      v4 = 0x61776B6361626F67;
      if ((result & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (fabs(*&result) < 9.22337204e18)
        {
          goto LABEL_18;
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    else
    {
      v4 = 0x726177726F666F67;
      if ((~result & 0x7FF0000000000000) != 0)
      {
        if (*&result > -9.22337204e18)
        {
          if (*&result >= 9.22337204e18)
          {
            __break(1u);
            return *&aPlayFilpauseFi[8 * result];
          }

LABEL_18:
          v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v3);

          return v4;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (a2 != 1)
  {
    return *&aPlayFilpauseFi[8 * result];
  }

  v2 = 0x2E64726177726F66;
  if (result != 1)
  {
    v2 = 0;
  }

  if (*&result == NAN)
  {
    *&result = 7.27378071e175;
  }

  else
  {
    return v2;
  }

  return result;
}

unint64_t sub_1007EECDC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a4;
  v9 = sub_10010DD70(_swiftEmptyArrayStorage);
  if (v8 != 2 || a3)
  {
    sub_1007EE550(a1, 0, a3, a4, &v35);
    if (v36)
    {
      sub_100059A8C(&v35, v37);
      if (MPCPlayerResponse.canPerform(_:)(v37))
      {
        sub_100008FE4(v37, &v35);
        sub_1007F033C(a2, &v32);
        v13 = swift_allocObject();
        sub_100059A8C(&v35, v13 + 16);
        v14 = v33;
        *(v13 + 56) = v32;
        *(v13 + 72) = v14;
        *(v13 + 88) = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v29 = v9;
        sub_1006C7638(sub_1007F03AC, v13, 0, isUniquelyReferenced_nonNull_native);
        v16 = [a1 tracklist];
        v17 = [v16 playingItem];

        if (a4 == 1)
        {
          *(&v33 + 1) = &type metadata for Player.SeekCommand;
          v34 = &protocol witness table for Player.SeekCommand;

          *&v32 = a3;
          BYTE8(v32) = 0;
          sub_100059A8C(&v32, &v35);
          if (MPCPlayerResponse.canPerform(_:)(&v35))
          {
            sub_100008FE4(&v35, &v32);
            sub_1007F033C(a2, &v29);
            v18 = swift_allocObject();
            sub_100059A8C(&v32, v18 + 16);
            v19 = v30;
            *(v18 + 56) = v29;
            *(v18 + 72) = v19;
            *(v18 + 88) = v31;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            v28 = v9;
            sub_1006C7638(sub_1007F044C, v18, 1, v20);
          }

          sub_10000959C(&v35);
        }

        else
        {
        }

        v21 = a4;
        v22 = [a1 tracklist];
        v23 = [v22 playingItem];

        if (v21 == 1)
        {
          *(&v33 + 1) = &type metadata for Player.SeekCommand;
          v34 = &protocol witness table for Player.SeekCommand;

          *&v32 = 0;
          BYTE8(v32) = 2;
          sub_100059A8C(&v32, &v35);
          if (MPCPlayerResponse.canPerform(_:)(&v35))
          {
            sub_100008FE4(&v35, &v32);
            sub_1007F033C(a2, &v29);
            v24 = swift_allocObject();
            sub_100059A8C(&v32, v24 + 16);
            v25 = v30;
            *(v24 + 56) = v29;
            *(v24 + 72) = v25;
            *(v24 + 88) = v31;
            v26 = swift_isUniquelyReferenced_nonNull_native();
            sub_1006C7638(sub_1007F03FC, v24, 2, v26);
          }

          sub_10000959C(&v35);
        }

        else
        {
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1007EE550(a1, 0, 0, 2, &v35);
    if (v36)
    {
      sub_100059A8C(&v35, v37);
      if (MPCPlayerResponse.canPerform(_:)(v37))
      {
        sub_100008FE4(v37, &v35);
        sub_1007F033C(a2, &v32);
        v10 = swift_allocObject();
        sub_100059A8C(&v35, v10 + 16);
        v11 = v33;
        *(v10 + 56) = v32;
        *(v10 + 72) = v11;
        *(v10 + 88) = v34;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        *&v29 = v9;
        sub_1006C7638(sub_1007F04E4, v10, 0, v12);
      }

LABEL_19:
      sub_10000959C(v37);
      return v9;
    }
  }

  sub_1000095E8(&v35, &qword_1011A4140, &unk_100EE42B8);
  return v9;
}

uint64_t sub_1007EF128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1007EF148, 0, 0);
}

uint64_t sub_1007EF148()
{
  *(v0 + 32) = type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EF1E0, v2, v1);
}

uint64_t sub_1007EF1E0()
{

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1007EF278, 0, 0);
}

uint64_t sub_1007EF278(uint64_t a1)
{
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EF304, v3, v2);
}

uint64_t sub_1007EF304()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1007EF3B0;

  return GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(0, 0, 0);
}

uint64_t sub_1007EF3B0(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1007EF4B0, 0, 0);
}

uint64_t sub_1007EF4B0(uint64_t a1)
{
  if (*(v1 + 88))
  {
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(v1 + 64) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1007EF578, v5, v4);
  }
}

uint64_t sub_1007EF578()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1007EF610, 0, 0);
}

uint64_t sub_1007EF610(uint64_t a1)
{
  *(v1 + 72) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EF69C, v3, v2);
}

uint64_t sub_1007EF69C()
{

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1007EF74C;
  v3 = v0[2];
  v2 = v0[3];

  return PlaybackController.perform(_:route:intent:issuer:)(v3, 0, 0, v2);
}

uint64_t sub_1007EF74C(void *a1)
{
  v4 = *v2;

  if (!v1)
  {
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1007EF84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1007EF870, 0, 0);
}

uint64_t sub_1007EF870()
{
  *(v0 + 40) = type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EF908, v2, v1);
}

uint64_t sub_1007EF908()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1007EF9A0, 0, 0);
}

uint64_t sub_1007EF9A0(uint64_t a1)
{
  *(v1 + 56) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EFA2C, v3, v2);
}

uint64_t sub_1007EFA2C()
{

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1007EFADC;
  v3 = v0[3];
  v2 = v0[4];

  return PlaybackController.perform(_:route:intent:issuer:)(v3, 0, 0, v2);
}

uint64_t sub_1007EFADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_1007EFC28, 0, 0);
  }
}

uint64_t sub_1007EFC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1007EFC70, 0, 0);
}

uint64_t sub_1007EFC70()
{
  *(v0 + 40) = type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EFD08, v2, v1);
}

uint64_t sub_1007EFD08()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1007EFDA0, 0, 0);
}

uint64_t sub_1007EFDA0(uint64_t a1)
{
  *(v1 + 56) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EFE2C, v3, v2);
}

uint64_t sub_1007EFE2C()
{

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1007EFEDC;
  v3 = v0[3];
  v2 = v0[4];

  return PlaybackController.perform(_:route:intent:issuer:)(v3, 0, 0, v2);
}

uint64_t sub_1007EFEDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_1007F08E4, 0, 0);
  }
}

double sub_1007F0028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, char *, uint64_t, uint64_t))
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100008FE4(a2, v18);
  sub_1007F033C(a3, v16);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_100059A8C(v18, v13 + 32);
  v14 = v16[1];
  *(v13 + 72) = v16[0];
  *(v13 + 88) = v14;
  *(v13 + 104) = v17;
  a6(0, 0, v11, a5, v13);

  return result;
}

uint64_t sub_1007F016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1007F0190, 0, 0);
}

uint64_t sub_1007F0190()
{
  *(v0 + 40) = type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EFD08, v2, v1);
}

uint64_t sub_1007F0228@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_1007F033C(a3, v10);
  v8 = sub_1007EECDC(a2, v10, v6, v7);
  result = sub_1000095E8(v10, &unk_101183910, &unk_100EBDD00);
  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  return result;
}

uint64_t sub_1007F02BC()
{

  sub_100020438(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1007F033C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183910, &unk_100EBDD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007F049C()
{
  sub_10000959C(v0 + 2);
  if (v0[10])
  {
    sub_10000959C(v0 + 7);
  }

  return swift_deallocObject();
}

uint64_t sub_1007F0534(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1007EF128(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_1007F05E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1007EFC4C(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_1007F069C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1007F016C(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_1007F0750()
{
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 4);
  if (v0[12])
  {
    sub_10000959C(v0 + 9);
  }

  return swift_deallocObject();
}

uint64_t sub_1007F07A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1007EF84C(a1, v4, v5, v1 + 32, v1 + 72);
}

unint64_t sub_1007F0878()
{
  result = qword_1011A4148;
  if (!qword_1011A4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4148);
  }

  return result;
}

uint64_t sub_1007F08E8(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      if (a1 == 128)
      {
        return 0x6165707061736944;
      }

      else
      {
        return 0x6465726165707041;
      }
    }

    v1 = 0x6165707061736944;
  }

  else
  {
    v1 = 0x6E69726165707041;
  }

  v7 = v1;
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x646574616D696E61;
  }

  else
  {
    v3 = 0x6D696E61206E6F6ELL;
  }

  if (v2)
  {
    v4 = 0xEC00000064657461;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  return v7;
}

uint64_t sub_1007F09F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return 1;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1007F0A50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_1007F0AC4()
{
  result = swift_slowAlloc();
  qword_1011A4150 = result;
  return result;
}

id sub_1007F0B30()
{
  if (qword_10117FDA0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A4150))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1005954F4();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_100011DF0(v6);
  }

  v2 = [objc_opt_self() systemBackgroundColor];

  return v2;
}

uint64_t getEnumTagSinglePayload for AppearanceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AppearanceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1007F0DFC(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1007F0E28(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

void sub_1007F0E64(id value)
{
  v2 = value;
  if (qword_10117FDA0 != -1)
  {
    swift_once();
    v2 = value;
  }

  objc_setAssociatedObject(v1, qword_1011A4150, v2, 1);
  if ([v1 isViewLoaded])
  {
    v3 = [v1 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setBackgroundColor:value];
  }
}

void sub_1007F0F38()
{
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v0 = UIFontTextStyleTitle2;
  v1 = static UIFont.preferredFont(forTextStyle:weight:)();

  qword_101219640 = v1;
}

id sub_1007F0FB0()
{
  result = [objc_opt_self() whiteColor];
  qword_101219648 = result;
  return result;
}

void sub_1007F0FEC()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent:0.08];

  v2 = [v1 CGColor];
  qword_101219650 = v2;
}

void sub_1007F1078()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.7];

  qword_101219658 = v1;
}

id sub_1007F1110(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = v2;
  v4 = 0.7;
  if (v1 == 2)
  {
    v4 = 0.2;
  }

  v5 = [v2 colorWithAlphaComponent:v4];

  return v5;
}

id sub_1007F11C4(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_100009F78(0, &qword_101180C98, UIColor_ptr);
    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(53, 53, 53, 1.0);
  }

  else
  {
    v2 = [objc_opt_self() whiteColor];

    return v2;
  }
}

id sub_1007F1284(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  result = [objc_opt_self() quaternarySystemFillColor];
  if (v1 == 2)
  {
    v3 = result;
    v4 = [result colorWithAlphaComponent:0.09];

    return v4;
  }

  return result;
}

id sub_1007F132C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

CGFloat sub_1007F1394()
{
  CGAffineTransformMakeScale(&v1, 0.99, 0.99);
  result = v1.a;
  *byte_101219680 = v1;
  return result;
}

double sub_1007F13DC()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.06, 8.0, 0.0, 2.0);
  result = *v2;
  xmmword_1012196B0 = v2[0];
  unk_1012196C0 = v2[1];
  qword_1012196D0 = v3;
  return result;
}

double sub_1007F1450()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.25, 8.0, 0.0, 2.0);
  result = *v2;
  xmmword_1012196D8 = v2[0];
  *algn_1012196E8 = v2[1];
  qword_1012196F8 = v3;
  return result;
}

double sub_1007F14C0()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 8.0, 0.0, 2.0);
  result = *v2;
  xmmword_101219700 = v2[0];
  unk_101219710 = v2[1];
  qword_101219720 = v3;
  return result;
}

double sub_1007F1538()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.5, 8.0, 0.0, 2.0);
  result = *v2;
  xmmword_101219728 = v2[0];
  *algn_101219738 = v2[1];
  qword_101219748 = v3;
  return result;
}

double sub_1007F15C8()
{
  v0 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorBrightness];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];

  v3 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  v5 = kCAFilterInputAmount;
  [v3 setValue:v4 forKey:kCAFilterInputAmount];

  v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorContrast];
  v7 = Double._bridgeToObjectiveC()().super.super.isa;
  [v6 setValue:v7 forKey:v5];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v8 = swift_allocObject();
  *&result = 3;
  *(v8 + 16) = xmmword_100EBE270;
  *(v8 + 32) = v0;
  *(v8 + 40) = v3;
  *(v8 + 48) = v6;
  return result;
}

id sub_1007F1758()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:630.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_101219758 = result;
  return result;
}

id sub_1007F17A8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:211.0 damping:9.0 initialVelocity:{0.0, 0.0}];
  qword_101219760 = result;
  return result;
}

id sub_1007F17F8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_101219768 = result;
  return result;
}

void sub_1007F1910(char a1)
{
  if ([v1 isHighlighted] == (a1 & 1))
  {
    return;
  }

  v2 = [v1 isHighlighted];
  v3 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state;
  v4 = v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state];
  if (!v2)
  {
    if (v4 != 3)
    {
      goto LABEL_16;
    }

    v17 = v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousState];
    if (v17 == 3 || v17 == 5)
    {
      goto LABEL_16;
    }

    v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state] = v17;
    if (qword_10117FE28 != -1)
    {
      swift_once();
    }

    v19 = qword_101219768;
    v6 = objc_opt_self();
    [v19 settlingDuration];
    v8 = v20;
    [v19 mass];
    v10 = v21;
    [v19 stiffness];
    v12 = v22;
    [v19 damping];
    v14 = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    v46 = sub_1007F4D6C;
    v47 = v24;
    v42 = _NSConcreteStackBlock;
    v43 = 1107296256;
    v16 = &unk_1010C17D8;
    goto LABEL_15;
  }

  v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousState] = v4;
  if (v4 != 3)
  {
    v1[v3] = 3;
    if (qword_10117FE28 != -1)
    {
      swift_once();
    }

    v5 = qword_101219768;
    v6 = objc_opt_self();
    [v5 settlingDuration];
    v8 = v7;
    [v5 mass];
    v10 = v9;
    [v5 stiffness];
    v12 = v11;
    [v5 damping];
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v46 = sub_1007F4DB8;
    v47 = v15;
    v42 = _NSConcreteStackBlock;
    v43 = 1107296256;
    v16 = &unk_1010C1828;
LABEL_15:
    v44 = sub_10002BC98;
    v45 = v16;
    v25 = _Block_copy(&v42);
    v26 = v1;

    [v6 _animateUsingSpringWithDuration:6 delay:v25 options:0 mass:v8 stiffness:0.0 damping:v10 initialVelocity:v12 animations:v14 completion:{0.0, v42, v43}];
    _Block_release(v25);
  }

LABEL_16:
  if ([v1 isHighlighted])
  {
    if (qword_10117FE18 != -1)
    {
      swift_once();
    }

    v27 = &qword_101219758;
  }

  else
  {
    if (qword_10117FE20 != -1)
    {
      swift_once();
    }

    v27 = &qword_101219760;
  }

  v28 = *v27;
  [v28 settlingDuration];
  v30 = v29;
  if ([v1 isHighlighted])
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 0.1;
  }

  v32 = objc_opt_self();
  [v28 mass];
  v34 = v33;
  [v28 stiffness];
  v36 = v35;
  [v28 damping];
  v38 = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = v1;
  v46 = sub_1007F4D64;
  v47 = v39;
  v42 = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10002BC98;
  v45 = &unk_1010C1788;
  v40 = _Block_copy(&v42);
  v41 = v1;

  [v32 _animateUsingSpringWithDuration:6 delay:v40 options:0 mass:v30 stiffness:v31 damping:v34 initialVelocity:v36 animations:v38 completion:0.0];

  _Block_release(v40);
}

id sub_1007F1E28(void *a1)
{
  if ([a1 isHighlighted])
  {
    if (qword_10117FDE8 != -1)
    {
      swift_once();
    }

    v3 = *byte_101219680;
    v2 = *&byte_101219680[16];
    v4 = *&byte_101219680[32];
  }

  else
  {
    v2 = xmmword_100EBEF30;
    v3 = xmmword_100EBEF40;
    v4 = 0uLL;
  }

  v6[0] = v3;
  v6[1] = v2;
  v6[2] = v4;
  return [a1 setTransform:v6];
}

char *sub_1007F1EFC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v11 = &v164 - v10;
  v12 = &v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_text];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_textAlignment] = 4;
  v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position] = 0;
  v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousState] = 5;
  v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state] = 0;
  v13 = &v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousContainerViewFrame];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView;
  v15 = [objc_allocWithZone(UIView) init];
  v16 = UIView.forAutolayout.getter();

  *&v5[v14] = v16;
  v17 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
  v18 = [objc_allocWithZone(UIView) init];
  v19 = UIView.forAutolayout.getter();

  *&v5[v17] = v19;
  v20 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView;
  v21 = [objc_allocWithZone(UIView) init];
  v22 = UIView.forAutolayout.getter();

  *&v5[v20] = v22;
  v23 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView;
  v24 = objc_allocWithZone(type metadata accessor for BackdropView());
  v25 = sub_100453A34();
  v26 = UIView.forAutolayout.getter();

  *&v5[v23] = v26;
  v27 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label;
  v28 = [objc_allocWithZone(UILabel) init];
  v29 = UIView.forAutolayout.getter();

  *&v5[v27] = v29;
  v30 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView;
  v31 = [objc_allocWithZone(UILabel) init];
  v32 = UIView.forAutolayout.getter();

  *&v5[v30] = v32;
  v33 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer;
  *&v5[v33] = [objc_allocWithZone(CAShapeLayer) init];
  v34 = _s8LineCellCMa();
  v169.receiver = v5;
  v169.super_class = v34;
  v35 = objc_msgSendSuper2(&v169, "initWithFrame:", a1, a2, a3, a4);
  v36 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView;
  v37 = *&v35[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
  v38 = v35;
  v39 = v37;
  UIView.shadowPathIsBounds.setter(1);

  v40 = v36;
  v41 = *&v35[v36];
  v42 = [v38 traitCollection];
  v43 = [v42 userInterfaceStyle];

  if (v43 == 2)
  {
    if (qword_10117FE00 != -1)
    {
      swift_once();
    }

    v44 = &xmmword_101219700;
  }

  else
  {
    if (qword_10117FDF0 != -1)
    {
      swift_once();
    }

    v44 = &xmmword_1012196B0;
  }

  v45 = *v44;
  v168 = *(v44 + 8);
  v46 = *(v44 + 3);
  v47 = *(v44 + 4);
  v170 = v45;
  v171 = v168;
  v172 = v46;
  v173 = v47;
  UIView.shadow.setter(&v170);

  v48 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
  v49 = [*&v38[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView] layer];
  [v49 setMasksToBounds:1];

  v50 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView;
  v51 = [*&v38[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView] layer];
  [v51 setMasksToBounds:1];

  v52 = *&v38[v50];
  static UIView.Corner.value(_:continuous:)();
  v53 = type metadata accessor for UIView.Corner();
  (*(*(v53 - 8) + 56))(v11, 0, 1, v53);
  UIView.corner.setter();

  v54 = *&v38[v48];
  v167 = v50;
  [v54 addSubview:*&v38[v50]];
  v55 = [v38 traitCollection];
  v56 = [v55 userInterfaceStyle];

  if (v56 == 2)
  {
    v57 = [*&v38[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView] layer];
    objc_opt_self();
    v58 = swift_dynamicCastObjCClassUnconditional();
    if (qword_10117FE10 != -1)
    {
      swift_once();
    }

    sub_10018DC74(qword_101219750);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v58 setFilters:isa];
  }

  v60 = *&v38[v48];
  v164 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView;
  [v60 addSubview:{*&v38[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView], OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView}];
  v61 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label;
  v62 = qword_10117FDA8;
  v63 = *&v38[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label];
  if (v62 != -1)
  {
    swift_once();
  }

  [v63 setFont:qword_101219640];

  [*&v38[v61] setNumberOfLines:0];
  v64 = *&v38[v48];
  *&v168 = v61;
  [v64 addSubview:*&v38[v61]];
  v65 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView;
  [*&v38[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView] setClipsToBounds:1];
  v66 = qword_10117FDE0;
  v67 = *&v38[v65];
  if (v66 != -1)
  {
    swift_once();
  }

  [v67 setBackgroundColor:qword_101219678];

  [*&v38[v48] addSubview:*&v38[v65]];
  v68 = v38;
  v69 = [v68 contentView];
  [v69 addSubview:*&v35[v40]];

  v70 = [v68 contentView];
  [v70 addSubview:*&v38[v48]];

  v71 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer;
  [*&v68[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer] setFillColor:0];
  v72 = *&v68[v71];
  v73 = [v68 traitCollection];
  v165 = v65;
  v74 = v73;

  [v74 displayScale];
  v76 = v75;

  [v72 setLineWidth:1.0 / v76];
  v77 = qword_10117FDB8;
  v78 = *&v68[v71];
  if (v77 != -1)
  {
    swift_once();
  }

  [v78 setStrokeColor:qword_101219650];

  [*&v68[v71] setCompositingFilter:kCAFilterPlusL];
  v79 = [*&v38[v48] layer];
  [v79 addSublayer:*&v68[v71]];

  v166 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_100EE44F0;
  v81 = [*&v35[v40] leadingAnchor];
  v82 = v40;
  v83 = [*&v38[v48] leadingAnchor];
  v84 = [v81 constraintEqualToAnchor:v83];

  *(v80 + 32) = v84;
  v85 = [*&v35[v82] trailingAnchor];
  v86 = [*&v38[v48] trailingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v80 + 40) = v87;
  v88 = [*&v35[v82] topAnchor];
  v89 = [*&v38[v48] topAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];

  *(v80 + 48) = v90;
  v91 = [*&v35[v82] bottomAnchor];
  v92 = [*&v38[v48] bottomAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];

  *(v80 + 56) = v93;
  v94 = [*&v38[v48] leadingAnchor];
  v95 = [v68 contentView];
  v96 = [v95 leadingAnchor];

  v97 = [v94 constraintEqualToAnchor:v96 constant:32.0];
  *(v80 + 64) = v97;
  v98 = [*&v38[v48] trailingAnchor];
  v99 = [v68 contentView];
  v100 = [v99 trailingAnchor];

  v101 = [v98 constraintEqualToAnchor:v100 constant:-32.0];
  *(v80 + 72) = v101;
  v102 = [*&v38[v48] topAnchor];
  v103 = [v68 contentView];
  v104 = [v103 topAnchor];

  v105 = [v102 constraintEqualToAnchor:v104 constant:4.0];
  *(v80 + 80) = v105;
  v106 = [*&v38[v48] bottomAnchor];
  v107 = [v68 contentView];

  v108 = [v107 bottomAnchor];
  v109 = [v106 constraintEqualToAnchor:v108 constant:-4.0];

  *(v80 + 88) = v109;
  v110 = v164;
  v111 = [*&v38[v164] leadingAnchor];
  v112 = [*&v38[v48] leadingAnchor];
  v113 = [v111 constraintEqualToAnchor:v112];

  *(v80 + 96) = v113;
  v114 = [*&v38[v110] trailingAnchor];
  v115 = [*&v38[v48] trailingAnchor];
  v116 = [v114 constraintEqualToAnchor:v115];

  *(v80 + 104) = v116;
  v117 = [*&v38[v110] topAnchor];
  v118 = [*&v38[v48] topAnchor];
  v119 = [v117 constraintEqualToAnchor:v118];

  *(v80 + 112) = v119;
  v120 = [*&v38[v110] bottomAnchor];
  v121 = [*&v38[v48] bottomAnchor];
  v122 = [v120 constraintEqualToAnchor:v121];

  *(v80 + 120) = v122;
  v123 = v167;
  v124 = [*&v38[v167] leadingAnchor];
  v125 = [*&v38[v48] leadingAnchor];
  v126 = [v124 constraintEqualToAnchor:v125];

  *(v80 + 128) = v126;
  v127 = [*&v38[v123] trailingAnchor];
  v128 = [*&v38[v48] trailingAnchor];
  v129 = [v127 constraintEqualToAnchor:v128];

  *(v80 + 136) = v129;
  v130 = [*&v38[v123] topAnchor];
  v131 = [*&v38[v48] topAnchor];
  v132 = [v130 constraintEqualToAnchor:v131];

  *(v80 + 144) = v132;
  v133 = [*&v38[v123] bottomAnchor];
  v134 = [*&v38[v48] bottomAnchor];
  v135 = [v133 constraintEqualToAnchor:v134];

  *(v80 + 152) = v135;
  v136 = v165;
  v137 = [*&v38[v165] leadingAnchor];
  v138 = [*&v38[v48] leadingAnchor];
  v139 = [v137 constraintEqualToAnchor:v138];

  *(v80 + 160) = v139;
  v140 = [*&v38[v136] trailingAnchor];
  v141 = [*&v38[v48] trailingAnchor];
  v142 = [v140 constraintEqualToAnchor:v141];

  *(v80 + 168) = v142;
  v143 = [*&v38[v136] topAnchor];
  v144 = [*&v38[v48] topAnchor];
  v145 = [v143 constraintEqualToAnchor:v144];

  *(v80 + 176) = v145;
  v146 = [*&v38[v136] bottomAnchor];
  v147 = [*&v38[v48] bottomAnchor];
  v148 = [v146 constraintEqualToAnchor:v147];

  *(v80 + 184) = v148;
  v149 = v168;
  v150 = [*&v38[v168] leadingAnchor];
  v151 = [*&v38[v48] leadingAnchor];
  v152 = [v150 constraintEqualToAnchor:v151 constant:16.0];

  *(v80 + 192) = v152;
  v153 = [*&v38[v149] trailingAnchor];
  v154 = [*&v38[v48] trailingAnchor];
  v155 = [v153 constraintEqualToAnchor:v154 constant:-16.0];

  *(v80 + 200) = v155;
  v156 = [*&v38[v149] topAnchor];
  v157 = [*&v38[v48] topAnchor];
  v158 = [v156 constraintEqualToAnchor:v157 constant:12.0];

  *(v80 + 208) = v158;
  v159 = [*&v38[v149] bottomAnchor];
  v160 = [*&v38[v48] bottomAnchor];
  v161 = [v159 constraintEqualToAnchor:v160 constant:-12.0];

  *(v80 + 216) = v161;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  v162 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v162];

  return v68;
}

id sub_1007F3124(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = _s8LineCellCMa();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v2 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
  [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView] frame];
  v3 = &v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousContainerViewFrame];
  result = CGRectEqualToRect(v10, *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousContainerViewFrame]);
  if ((result & 1) == 0)
  {
    sub_1007F3A40();
    result = [*&v1[v2] frame];
    *v3 = v5;
    *(v3 + 1) = v6;
    *(v3 + 2) = v7;
    *(v3 + 3) = v8;
  }

  return result;
}

void sub_1007F31FC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    if (qword_10117FE00 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_101219700;
  }

  else
  {
    if (qword_10117FDF0 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1012196B0;
  }

  v41 = *(v4 + 8);
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  v43 = *v4;
  v44 = v43;
  v45 = v41;
  v46 = v5;
  v47 = v6;
  v7 = [v1 traitCollection];
  v8 = [v7 accessibilityContrast];

  v9 = v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v19 = qword_10117FDC0;
      v20 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label];
      if (v19 != -1)
      {
        swift_once();
      }

      [v20 setTextColor:{qword_101219658, v41}];

      v21 = qword_10117FDD0;
      v22 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView];
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setBackgroundColor:qword_101219668];

      v23 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
      v24 = v43;
      v25 = &v44;
    }

    else
    {
      if (v9 == 3)
      {
        v10 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
        v11 = v43;
        v12 = v10;
        UIView.shadow.setter(&v44);

        v13 = 1;
        v14 = 1.0;
        goto LABEL_39;
      }

      v26 = qword_10117FDC8;
      v27 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label];
      if (v26 != -1)
      {
        swift_once();
      }

      [v27 setTextColor:{qword_101219660, v41}];

      v28 = qword_10117FDD8;
      v29 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView];
      if (v28 != -1)
      {
        swift_once();
      }

      [v29 setBackgroundColor:qword_101219670];

      v23 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
      v30 = UIView.Shadow.identity.unsafeMutableAddressor();
      v31 = *(v30 + 1);
      *v48 = *v30;
      *&v48[16] = v31;
      v49 = v30[4];
      v32 = *v48;
      v25 = v48;
    }

    UIView.shadow.setter(v25);

    v14 = 0.0;
    [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView] setAlpha:0.0];
    v13 = 1;
    goto LABEL_39;
  }

  if (!v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state])
  {
    goto LABEL_40;
  }

  v15 = qword_10117FDB0;
  v16 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label];
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setTextColor:{qword_101219648, v41}];

  v17 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView];
  if (v8 == 1)
  {
    v18 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  else
  {
    v18 = 0;
  }

  [v17 setBackgroundColor:v18];

  v33 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
  v34 = [v1 traitCollection];
  v35 = [v34 userInterfaceStyle];

  if (v35 == 2)
  {
    if (qword_10117FE08 != -1)
    {
      swift_once();
    }

    v36 = &xmmword_101219728;
  }

  else
  {
    if (qword_10117FDF8 != -1)
    {
      swift_once();
    }

    v36 = &xmmword_1012196D8;
  }

  v42 = *(v36 + 8);
  v37 = *(v36 + 3);
  v38 = *(v36 + 4);
  *v48 = *v36;
  *&v48[8] = v42;
  *&v48[24] = v37;
  v49 = v38;
  UIView.shadow.setter(v48);

  v39 = 1.0;
  v14 = 0.0;
  if (v8 == 1)
  {
    v39 = 0.0;
  }

  [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView] setAlpha:{v39, v42}];
  v13 = 0;
LABEL_39:
  [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView] setAlpha:{v14, v41}];
  v40 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer];
  [v40 setHidden:v13];

LABEL_40:
}

void sub_1007F37B8(id a1)
{
  v14.receiver = v1;
  v14.super_class = _s8LineCellCMa();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (a1)
  {
    v6 = v3 == v5;
    a1 = [a1 accessibilityContrast];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 traitCollection];
  v8 = [v7 accessibilityContrast];

  if (!v6 || a1 != v8)
  {
    sub_1007F31FC();
    v9 = [v1 traitCollection];
    v10 = [v9 userInterfaceStyle];

    v11 = [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView] layer];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    if (v10 == 2)
    {
      if (qword_10117FE10 != -1)
      {
        swift_once();
      }

      sub_10018DC74(qword_101219750);
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v12 setFilters:v13.super.isa];
  }
}

void sub_1007F3A40()
{
  v1 = v0;
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  v6 = __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView);
  v10 = (v3 + 104);
  if (*(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) != 2)
    {
      *v5 = 0x4030000000000000;
      v5[8] = 1;
      v57 = enum case for UIView.Corner.Radius.value(_:);
      v59 = *v10;
      v59(v5, v6);
      v40 = v9;
      UIView.Corner.init(radius:mask:)();
      v41 = type metadata accessor for UIView.Corner();
      v42 = *(*(v41 - 8) + 56);
      v42(v8, 0, 1, v41);
      UIView.corner.setter();

      v58 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
      v43 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
      *v5 = 0x4020000000000000;
      v5[8] = 1;
      v44 = v2;
      v45 = v57;
      (v59)(v5, v57, v44);
      v46 = v43;
      UIView.Corner.init(radius:mask:)();
      v42(v8, 0, 1, v41);
      UIView.corner.setter();

      v47 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView);
      *v5 = 0x4030000000000000;
      v5[8] = 1;
      (v59)(v5, v45, v44);
      v48 = v47;
      UIView.Corner.init(radius:mask:)();
      v42(v8, 0, 1, v41);
      UIView.corner.setter();

      [*(v58 + v1) bounds];
      v21 = 8.0;
      goto LABEL_8;
    }

    *v5 = 0x4020000000000000;
    v5[8] = 1;
    v57 = enum case for UIView.Corner.Radius.value(_:);
    v59 = *v10;
    v59(v5, v6);
    v22 = v9;
    UIView.Corner.init(radius:mask:)();
    v23 = type metadata accessor for UIView.Corner();
    v24 = *(*(v23 - 8) + 56);
    v24(v8, 0, 1, v23);
    UIView.corner.setter();

    v58 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
    v25 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
    *v5 = 0x4020000000000000;
    v5[8] = 1;
    v26 = v57;
    (v59)(v5, v57, v2);
    v27 = v25;
    UIView.Corner.init(radius:mask:)();
    v24(v8, 0, 1, v23);
    UIView.corner.setter();

    v28 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView);
    *v5 = 0x4020000000000000;
    v5[8] = 1;
    (v59)(v5, v26, v2);
    v29 = v28;
    UIView.Corner.init(radius:mask:)();
    v24(v8, 0, 1, v23);
    UIView.corner.setter();

    [*(v58 + v1) bounds];
    v21 = 8.0;
    v30 = 8.0;
  }

  else
  {
    if (!*(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position))
    {
      *v5 = 0x4030000000000000;
      v5[8] = 1;
      LODWORD(v59) = enum case for UIView.Corner.Radius.value(_:);
      v58 = *v10;
      v58(v5, v6);
      v11 = v9;
      UIView.Corner.init(radius:mask:)();
      v12 = type metadata accessor for UIView.Corner();
      v13 = *(*(v12 - 8) + 56);
      v13(v8, 0, 1, v12);
      UIView.corner.setter();

      v14 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
      v15 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
      *v5 = 0x4030000000000000;
      v5[8] = 1;
      (v58)(v5, v59, v2);
      v16 = v15;
      static CACornerMask.all.getter();
      UIView.Corner.init(radius:mask:)();
      v13(v8, 0, 1, v12);
      UIView.corner.setter();

      [*(v1 + v14) bounds];
      v21 = 16.0;
LABEL_8:
      v30 = 16.0;
      goto LABEL_9;
    }

    *v5 = 0x4020000000000000;
    v5[8] = 1;
    v57 = enum case for UIView.Corner.Radius.value(_:);
    v59 = *v10;
    v56 = v2;
    v59(v5, v6);
    v31 = v9;
    UIView.Corner.init(radius:mask:)();
    v32 = type metadata accessor for UIView.Corner();
    v33 = *(*(v32 - 8) + 56);
    v33(v8, 0, 1, v32);
    UIView.corner.setter();

    v58 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
    v34 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
    *v5 = 0x4030000000000000;
    v5[8] = 1;
    v35 = v57;
    v36 = v56;
    (v59)(v5, v57, v56);
    v37 = v34;
    UIView.Corner.init(radius:mask:)();
    v33(v8, 0, 1, v32);
    UIView.corner.setter();

    v38 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView);
    *v5 = 0x4020000000000000;
    v5[8] = 1;
    (v59)(v5, v35, v36);
    v39 = v38;
    UIView.Corner.init(radius:mask:)();
    v33(v8, 0, 1, v32);
    UIView.corner.setter();

    [*(v58 + v1) bounds];
    v21 = 16.0;
    v30 = 8.0;
  }

LABEL_9:
  v49 = sub_1007F4900(v17, v18, v19, v20, v21, v30);
  v50 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer;
  v51 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer);
  v52 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
  v53 = v49;
  v54 = v51;
  [v52 bounds];
  [v54 setFrame:?];

  v55 = *(v1 + v50);
  [v55 setPath:v53];
}

id sub_1007F4410()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (*(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) == 4)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v4.receiver = v0;
    v4.super_class = _s8LineCellCMa();
    result = objc_msgSendSuper2(&v4, "accessibilityHint");
    if (result)
    {
      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

void sub_1007F457C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = _s8LineCellCMa();
  objc_msgSendSuper2(&v9, *a4, v7);
}

UIAccessibilityTraits sub_1007F4640(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = _s8LineCellCMa();
  v2 = objc_msgSendSuper2(&v8, "accessibilityTraits");
  v3 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v2) == 0)
  {
    v3 = 0;
  }

  result = v3 | v2;
  v5 = v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state];
  if (v5 == 4)
  {
    v6 = &UIAccessibilityTraitNotEnabled;
  }

  else
  {
    if (v5 != 1)
    {
      return result;
    }

    v6 = &UIAccessibilityTraitSelected;
  }

  v7 = *v6;
  if ((v7 & ~result) == 0)
  {
    v7 = 0;
  }

  result |= v7;
  return result;
}

id sub_1007F46D8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = _s8LineCellCMa();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_1007F4728(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s8LineCellCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1007F4854()
{
  result = qword_1011A41E8;
  if (!qword_1011A41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A41E8);
  }

  return result;
}

unint64_t sub_1007F48AC()
{
  result = qword_1011A41F0;
  if (!qword_1011A41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A41F0);
  }

  return result;
}

id sub_1007F4900(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  MinX = CGRectGetMinX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v18 = CGRectGetMinY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v21 = CGRectGetMaxX(v26);
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  MaxY = CGRectGetMaxY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v22 = CGRectGetMinX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v14 = CGRectGetMaxY(v29);
  v15 = [objc_allocWithZone(UIBezierPath) init];
  [v15 moveToPoint:{MinX, MinY + a5}];
  [v15 _addRoundedCornerWithTrueCorner:1 radius:0 corner:MinX clockwise:{MinY, a5, a5}];
  [v15 addLineToPoint:{MaxX - a5, v18}];
  [v15 _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v18, a5, a5}];
  [v15 addLineToPoint:{v21, MaxY - a6}];
  [v15 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v21 clockwise:{MaxY, a6, a6}];
  [v15 addLineToPoint:{v22 + a6, v14}];
  [v15 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v22 clockwise:{v14, a6, a6}];
  [v15 closePath];
  v16 = [v15 CGPath];

  return v16;
}

void sub_1007F4B60()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_textAlignment) = 4;
  *(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) = 0;
  *(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousState) = 5;
  *(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = 0;
  v3 = (v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousContainerViewFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = UIView.forAutolayout.getter();

  *(v1 + v4) = v6;
  v7 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
  v8 = [objc_allocWithZone(UIView) init];
  v9 = UIView.forAutolayout.getter();

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView;
  v11 = [objc_allocWithZone(UIView) init];
  v12 = UIView.forAutolayout.getter();

  *(v1 + v10) = v12;
  v13 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView;
  v14 = objc_allocWithZone(type metadata accessor for BackdropView());
  v15 = sub_100453A34();
  v16 = UIView.forAutolayout.getter();

  *(v1 + v13) = v16;
  v17 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label;
  v18 = [objc_allocWithZone(UILabel) init];
  v19 = UIView.forAutolayout.getter();

  *(v1 + v17) = v19;
  v20 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView;
  v21 = [objc_allocWithZone(UILabel) init];
  v22 = UIView.forAutolayout.getter();

  *(v1 + v20) = v22;
  v23 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer;
  *(v1 + v23) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007F4DC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of PlaylistFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1007F4E08(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v37 = type metadata accessor for IndexPath();
  __chkstk_darwin();
  v34 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v36 = &v26 - v10;
  v33 = *(a3 + 16);
  if (v33)
  {
    v11 = 0;
    v30 = (v8 + 8);
    v31 = (v8 + 32);
    v32 = v8 + 16;
    v35 = _swiftEmptyArrayStorage;
    v28 = a2;
    v29 = a3;
    v27 = a1;
    while (v11 < *(a3 + 16))
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = *(v8 + 72);
      v14 = a3;
      v15 = a3 + v12 + v13 * v11;
      v16 = v8;
      v17 = a1;
      v18 = v36;
      (*(v8 + 16))(v36, v15, v37, v9);
      v19 = v18;
      a1 = v17;
      v20 = v17(v19);
      if (v3)
      {
        (*v30)(v36, v37);

        return;
      }

      if (v20)
      {
        v21 = *v31;
        (*v31)(v34, v36, v37);
        v22 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10066CB48(0, v22[2] + 1, 1);
          v22 = v38;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_10066CB48((v24 > 1), v25 + 1, 1);
          v22 = v38;
        }

        v22[2] = v25 + 1;
        v35 = v22;
        v21(v22 + v12 + v25 * v13, v34, v37);
        a3 = v29;
        a1 = v27;
      }

      else
      {
        (*v30)(v36, v37);
        a3 = v14;
      }

      ++v11;
      v8 = v16;
      if (v33 == v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_14:
  }
}

id sub_1007F5184(void (*a1)(char *, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  v110 = a3;
  v115 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v112 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v111 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v108 = v6;
  v109 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v102 - v11;
  v106 = sub_100009F78(0, &unk_1011A49E0, UISwipeActionsConfiguration_ptr);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AC8;
  v14 = type metadata accessor for MusicVideo();
  v15 = sub_100866F00(&unk_101193C00, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
  v116 = v13;
  v16 = *Player.state<A>(for:)(a1, v14, v15);
  (*(v16 + 256))();

  v17 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:);
  v18 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v19 = *(v18 - 8);
  v114 = *(v19 + 104);
  v113 = (v19 + 104);
  v114(v10, v17, v18);
  v20 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  v21 = *(v8 + 104);
  v21(v10, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v7);
  sub_100866F00(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v8 + 8);
  v23 = (v8 + 8);
  v117 = v24;
  v24(v10, v7);
  if (v22 & 1) != 0 || (v114(v10, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.accountRequired(_:), v18), v21(v10, v20, v7), v25 = dispatch thunk of static Equatable.== infix(_:_:)(), v117(v10, v7), (v25))
  {
    v117(v12, v7);
    return 0;
  }

  else
  {
    v103 = v12;
    v114 = v7;
    v128 = _swiftEmptyArrayStorage;
    v27 = v115;
    v28 = PlaybackIntentDescriptor.intent.getter();
    v29 = Player.InsertCommand.init(location:playbackIntent:)(2, v28);
    v31 = v30;
    v126 = &type metadata for Player.InsertCommand;
    v127 = &protocol witness table for Player.InsertCommand;
    v124 = v29;
    v125 = v30;
    v32 = (*v116 + 760);
    v33 = *v32;
    v34 = v29;
    sub_1001DFD48(v31);
    v113 = v33;
    v35 = v33(&v124);
    sub_10000959C(&v124);
    v102[1] = v32;
    if (v35)
    {
      v36 = v109;
      sub_10086772C(v27, v109, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v110, &v124);
      v37 = (*(v107 + 80) + 24) & ~*(v107 + 80);
      v38 = (v108 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      *(v39 + 16) = v106;
      sub_100869470(v36, v39 + v37, type metadata accessor for PlaybackIntentDescriptor);
      v40 = (v39 + v38);
      *v40 = v34;
      v40[1] = v31;
      sub_10012B828(&v124, v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
      v122 = sub_10086E320;
      v123 = v39;
      aBlock = _NSConcreteStackBlock;
      v119 = 1107296256;
      v120 = sub_1001D72A4;
      v121 = &unk_1010C2F68;
      v41 = _Block_copy(&aBlock);
      v42 = objc_opt_self();
      v43 = v34;
      sub_1001DFD48(v31);
      v44 = [v42 contextualActionWithStyle:0 title:0 handler:v41];
      _Block_release(v41);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v45 = qword_101183DF8;
      v46 = String._bridgeToObjectiveC()();
      v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v45];

      [v44 setImage:v47];
      v48 = [objc_opt_self() systemOrangeColor];
      [v44 setBackgroundColor:v48];

      v49 = v44;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v50 = String._bridgeToObjectiveC()();

      [v49 setAccessibilityLabel:v50];

      v51 = v49;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v27 = v115;
    }

    v52 = PlaybackIntentDescriptor.intent.getter();
    v53 = Player.InsertCommand.init(location:playbackIntent:)(0, v52);
    v55 = v54;
    v126 = &type metadata for Player.InsertCommand;
    v127 = &protocol witness table for Player.InsertCommand;
    v124 = v53;
    v125 = v54;
    v104 = v53;
    v105 = v55;
    sub_1001DFD48(v55);
    LOBYTE(v55) = v113(&v124);
    sub_10000959C(&v124);
    v56 = v114;
    if (v55)
    {
      v57 = v109;
      sub_10086772C(v27, v109, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v110, &v124);
      v58 = (*(v107 + 80) + 24) & ~*(v107 + 80);
      v59 = (v108 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 16) = v106;
      sub_100869470(v57, v60 + v58, type metadata accessor for PlaybackIntentDescriptor);
      v61 = (v60 + v59);
      v62 = v104;
      v63 = v105;
      *v61 = v104;
      v61[1] = v63;
      sub_10012B828(&v124, v60 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8));
      v122 = sub_10086E31C;
      v123 = v60;
      aBlock = _NSConcreteStackBlock;
      v119 = 1107296256;
      v120 = sub_1001D72A4;
      v121 = &unk_1010C2F18;
      v64 = _Block_copy(&aBlock);
      v65 = objc_opt_self();
      v66 = v62;
      sub_1001DFD48(v63);
      v67 = [v65 contextualActionWithStyle:0 title:0 handler:v64];
      _Block_release(v64);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v68 = qword_101183DF8;
      v69 = String._bridgeToObjectiveC()();
      v70 = [objc_opt_self() systemImageNamed:v69 withConfiguration:v68];

      [v67 setImage:v70];
      v71 = [objc_opt_self() systemIndigoColor];
      [v67 setBackgroundColor:v71];

      v72 = v67;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v73 = String._bridgeToObjectiveC()();

      [v72 setAccessibilityLabel:v73];

      v74 = v72;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v56 = v114;
      v27 = v115;
    }

    v75 = PlaybackIntentDescriptor.intent.getter();
    v76 = Player.InsertCommand.init(location:playbackIntent:)(1, v75);
    v78 = v77;
    v126 = &type metadata for Player.InsertCommand;
    v127 = &protocol witness table for Player.InsertCommand;
    v124 = v76;
    v125 = v77;
    v79 = v76;
    sub_1001DFD48(v78);
    v80 = v113(&v124);
    sub_10000959C(&v124);
    v81 = v117;
    if (v80)
    {
      v116 = v23;
      v115 = v34;
      v82 = v31;
      v83 = v117;
      v84 = v109;
      sub_10086772C(v27, v109, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v110, &v124);
      v85 = (*(v107 + 80) + 24) & ~*(v107 + 80);
      v86 = (v108 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = swift_allocObject();
      *(v87 + 16) = v106;
      sub_100869470(v84, v87 + v85, type metadata accessor for PlaybackIntentDescriptor);
      v88 = (v87 + v86);
      *v88 = v79;
      v88[1] = v78;
      sub_10012B828(&v124, v87 + ((v86 + 23) & 0xFFFFFFFFFFFFFFF8));
      v122 = sub_10086E318;
      v123 = v87;
      aBlock = _NSConcreteStackBlock;
      v119 = 1107296256;
      v120 = sub_1001D72A4;
      v121 = &unk_1010C2EC8;
      v89 = _Block_copy(&aBlock);
      v90 = objc_opt_self();
      v91 = v79;
      sub_1001DFD48(v78);
      v92 = [v90 contextualActionWithStyle:0 title:0 handler:v89];
      _Block_release(v89);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v93 = qword_101183DF8;
      v94 = String._bridgeToObjectiveC()();
      v95 = [objc_opt_self() systemImageNamed:v94 withConfiguration:v93];

      [v92 setImage:v95];
      v96 = [objc_opt_self() systemOrangeColor];
      [v92 setBackgroundColor:v96];

      v97 = v92;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v98 = String._bridgeToObjectiveC()();

      [v97 setAccessibilityLabel:v98];

      v99 = v97;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v56 = v114;
      v81 = v83;
      v31 = v82;
      v34 = v115;
    }

    sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v101 = [objc_opt_self() configurationWithActions:isa];

    [v101 _setSwipeActionsStyle:1];
    sub_100309AD8(v78);

    sub_100309AD8(v105);
    sub_100309AD8(v31);
    v81(v103, v56);
    return v101;
  }
}

id sub_1007F63C4(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  v123 = a8;
  v122 = a7;
  v121 = a6;
  v128 = a3;
  v134 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v130 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v129 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v126 = v19;
  v127 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v117 - v24;
  v124 = sub_100009F78(0, &unk_1011A49E0, UISwipeActionsConfiguration_ptr);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v26 = qword_101218AC8;
  v27 = a4(0);
  v135 = v26;
  v28 = *Player.state<A>(for:)(a1, v27, a5);
  (*(v28 + 256))();

  v29 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:);
  v30 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v31 = *(v30 - 8);
  v133 = *(v31 + 104);
  v132 = (v31 + 104);
  v133(v23, v29, v30);
  v32 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  v131 = *(v21 + 104);
  v131(v23, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v20);
  sub_100866F00(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v21 + 8);
  v34 = (v21 + 8);
  v35 = v36;
  v36(v23, v20);
  if (v33 & 1) != 0 || (v133(v23, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.accountRequired(_:), v30), v131(v23, v32, v20), v37 = dispatch thunk of static Equatable.== infix(_:_:)(), v35(v23, v20), (v37))
  {
    v35(v25, v20);
    return 0;
  }

  else
  {
    v120 = v35;
    v119 = v25;
    v118 = v20;
    v131 = v34;
    v146 = _swiftEmptyArrayStorage;
    v39 = v134;
    v40 = PlaybackIntentDescriptor.intent.getter();
    v41 = Player.InsertCommand.init(location:playbackIntent:)(2, v40);
    v43 = v42;
    v144 = &type metadata for Player.InsertCommand;
    v145 = &protocol witness table for Player.InsertCommand;
    v142 = v41;
    v143 = v42;
    v44 = *(*v135 + 760);
    v45 = v41;
    sub_1001DFD48(v43);
    v46 = v44(&v142);
    sub_10000959C(&v142);
    if (v46)
    {
      v47 = v39;
      v48 = v127;
      sub_10086772C(v47, v127, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v128, &v142);
      v49 = (*(v125 + 80) + 24) & ~*(v125 + 80);
      v50 = (v126 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      *(v51 + 16) = v124;
      sub_100869470(v48, v51 + v49, type metadata accessor for PlaybackIntentDescriptor);
      v52 = (v51 + v50);
      *v52 = v45;
      v52[1] = v43;
      sub_10012B828(&v142, v51 + ((v50 + 23) & 0xFFFFFFFFFFFFFFF8));
      v140 = v122;
      v141 = v51;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_1001D72A4;
      v139 = v123;
      v53 = _Block_copy(&aBlock);
      v54 = objc_opt_self();
      v55 = v45;
      sub_1001DFD48(v43);
      v56 = [v54 contextualActionWithStyle:0 title:0 handler:v53];
      _Block_release(v53);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v57 = qword_101183DF8;
      v58 = String._bridgeToObjectiveC()();
      v59 = [objc_opt_self() systemImageNamed:v58 withConfiguration:v57];

      [v56 setImage:v59];
      v60 = [objc_opt_self() systemOrangeColor];
      [v56 setBackgroundColor:v60];

      v61 = v56;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v62 = String._bridgeToObjectiveC()();

      [v61 setAccessibilityLabel:v62];

      v63 = v61;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v39 = v134;
    }

    v123 = v45;
    v64 = PlaybackIntentDescriptor.intent.getter();
    v65 = Player.InsertCommand.init(location:playbackIntent:)(0, v64);
    v67 = v66;
    v144 = &type metadata for Player.InsertCommand;
    v145 = &protocol witness table for Player.InsertCommand;
    v142 = v65;
    v143 = v66;
    v132 = v65;
    v133 = v67;
    sub_1001DFD48(v67);
    v68 = v44(&v142);
    sub_10000959C(&v142);
    if (v68)
    {
      v69 = v43;
      v70 = v39;
      v71 = v127;
      sub_10086772C(v70, v127, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v128, &v142);
      v72 = (*(v125 + 80) + 24) & ~*(v125 + 80);
      v73 = (v126 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
      v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      *(v75 + 16) = v124;
      sub_100869470(v71, v75 + v72, type metadata accessor for PlaybackIntentDescriptor);
      v76 = (v75 + v73);
      v77 = v132;
      v78 = v133;
      *v76 = v132;
      v76[1] = v78;
      sub_10012B828(&v142, v75 + v74);
      v140 = a10;
      v141 = v75;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_1001D72A4;
      v139 = a11;
      v79 = _Block_copy(&aBlock);
      v80 = objc_opt_self();
      v81 = v77;
      sub_1001DFD48(v78);
      v82 = [v80 contextualActionWithStyle:0 title:0 handler:v79];
      _Block_release(v79);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v83 = qword_101183DF8;
      v84 = String._bridgeToObjectiveC()();
      v85 = [objc_opt_self() systemImageNamed:v84 withConfiguration:v83];

      [v82 setImage:v85];
      v86 = [objc_opt_self() systemIndigoColor];
      [v82 setBackgroundColor:v86];

      v87 = v82;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v88 = String._bridgeToObjectiveC()();

      [v87 setAccessibilityLabel:v88];

      v89 = v87;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = v69;
      v39 = v134;
    }

    v90 = PlaybackIntentDescriptor.intent.getter();
    v91 = Player.InsertCommand.init(location:playbackIntent:)(1, v90);
    v92 = v39;
    v94 = v93;
    v144 = &type metadata for Player.InsertCommand;
    v145 = &protocol witness table for Player.InsertCommand;
    v142 = v91;
    v143 = v93;
    v95 = v91;
    sub_1001DFD48(v94);
    v96 = v44(&v142);
    sub_10000959C(&v142);
    v97 = v118;
    v98 = v120;
    if (v96)
    {
      v135 = v43;
      v99 = v127;
      sub_10086772C(v92, v127, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v128, &v142);
      v100 = (*(v125 + 80) + 24) & ~*(v125 + 80);
      v101 = (v126 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
      v102 = swift_allocObject();
      *(v102 + 16) = v124;
      sub_100869470(v99, v102 + v100, type metadata accessor for PlaybackIntentDescriptor);
      v103 = (v102 + v101);
      *v103 = v95;
      v103[1] = v94;
      sub_10012B828(&v142, v102 + ((v101 + 23) & 0xFFFFFFFFFFFFFFF8));
      v140 = a13;
      v141 = v102;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_1001D72A4;
      v139 = a14;
      v104 = _Block_copy(&aBlock);
      v105 = objc_opt_self();
      v106 = v95;
      sub_1001DFD48(v94);
      v107 = [v105 contextualActionWithStyle:0 title:0 handler:v104];
      _Block_release(v104);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v108 = qword_101183DF8;
      v109 = String._bridgeToObjectiveC()();
      v110 = [objc_opt_self() systemImageNamed:v109 withConfiguration:v108];

      [v107 setImage:v110];
      v111 = [objc_opt_self() systemOrangeColor];
      [v107 setBackgroundColor:v111];

      v112 = v107;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v113 = String._bridgeToObjectiveC()();

      [v112 setAccessibilityLabel:v113];

      v114 = v112;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = v135;
      v98 = v120;
    }

    sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v116 = [objc_opt_self() configurationWithActions:isa];

    [v116 _setSwipeActionsStyle:1];
    sub_100309AD8(v94);

    sub_100309AD8(v133);
    sub_100309AD8(v43);
    v98(v119, v97);
    return v116;
  }
}

uint64_t sub_1007F74DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_101184730, &unk_100ECB920);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101184730, &unk_100ECB920);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_101184730, &unk_100ECB920);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007F7A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_101184730, &unk_100ECB920);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101184730, &unk_100ECB920);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_101184730, &unk_100ECB920);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007F7F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for MusicVideo();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_1011846B0, &unk_100ECB630);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011846B0, &unk_100ECB630);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_1011846B0, &unk_100ECB630);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007F8490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for MusicVideo();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_1011846B0, &unk_100ECB630);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011846B0, &unk_100ECB630);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_1011846B0, &unk_100ECB630);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007F89CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Track();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &qword_10118A530, &qword_100EC64E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &qword_10118A530, &qword_100EC64E0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &qword_10118A530, &qword_100EC64E0);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007F8F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118C4F0, &qword_100ECB9A0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Composer();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_10118C4F0, &qword_100ECB9A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_10118C4F0, &qword_100ECB9A0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_10118C4F0, &qword_100ECB9A0);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007F9444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007F9980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Playlist.Folder();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_10118F670, &unk_100EC89B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_10118F670, &unk_100EC89B0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_10118F670, &unk_100EC89B0);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007F9EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FA3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Playlist.Folder();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_10118F670, &unk_100EC89B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_10118F670, &unk_100EC89B0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_10118F670, &unk_100EC89B0);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FA934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118DE80, &unk_100EE4D70);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Genre();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &qword_10118DE80, &unk_100EE4D70);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &qword_10118DE80, &unk_100EE4D70);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &qword_10118DE80, &unk_100EE4D70);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FAEAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v27 = a3;
    type metadata accessor for BannerCell();
    type metadata accessor for BannerProvider.Banner();

    v10 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v26[1] = v3;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_10118E548);
    (*(v7 + 16))(v9, a2, v6);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      v19 = sub_1000105AC(v16, v18, &v27);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v14, 0xCu);
      sub_10000959C(v15);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v20 = type metadata accessor for BannerCell();
    v27 = static UICollectionReusableView.reuseIdentifier.getter();
    v28 = v21;
    v22._object = 0x8000000100E58BF0;
    v22._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v22);
    v23 = v27;
    v24 = v28;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v10 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v20, a2, v23, v24, v20);
  }

  return v10;
}

uint64_t sub_1007FB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_101192800, &qword_100EE5630);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101192800, &qword_100EE5630);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = _s13TracklistCellCMa();
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    sub_100869470(v11, v15, type metadata accessor for AlbumDetailDataSource.CellType);
    sub_10086772C(v15, v9, type metadata accessor for AlbumDetailDataSource.CellType);
    (*(v13 + 56))(v9, 0, 1, v12);
    _s13TracklistCellCMa();
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_101192800, &qword_100EE5630);
    sub_100867794(v15, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  return v28;
}

uint64_t sub_1007FB728(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEF8)
  {
    v30 = v5;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_10118E548);
    (*(v11 + 16))(v13, a2, v10);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v11 + 8))(v13, v10);
      v22 = sub_1000105AC(v19, v21, &v31);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v17, 0xCu);
      sub_10000959C(v18);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v24 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v31 = static UICollectionReusableView.reuseIdentifier.getter();
    v32 = v25;
    v26._object = 0x8000000100E58BF0;
    v26._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v26);
    v27 = v31;
    v28 = v32;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v23 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v24, a2, v27, v28, v24);
  }

  else
  {
    v31 = a3;
    v32 = a4;
    v33 = a5;
    sub_1004EA174(a3, a4, a5);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v23 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1004E5B40(a3, a4, a5);
  }

  return v23;
}

uint64_t sub_1007FBAE4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v29 = a3;
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    a4(0);

    v12 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v28[1] = v4;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_10118E548);
    (*(v9 + 16))(v11, a2, v8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v9 + 8))(v11, v8);
      v21 = sub_1000105AC(v18, v20, &v29);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v16, 0xCu);
      sub_10000959C(v17);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v22 = sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v29 = static UICollectionReusableView.reuseIdentifier.getter();
    v30 = v23;
    v24._object = 0x8000000100E58BF0;
    v24._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v24);
    v25 = v29;
    v26 = v30;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v12 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v22, a2, v25, v26, v22);
  }

  return v12;
}

uint64_t sub_1007FBE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_101183960, &unk_100EBCF90);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101183960, &unk_100EBCF90);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_101183960, &unk_100EBCF90);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FC3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for LibraryImport.ViewModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_1011A4B90, &unk_100ED2800);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011A4B90, &unk_100ED2800);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    sub_100869470(v11, v15, type metadata accessor for LibraryImport.ViewModel);
    sub_10086772C(v15, v9, type metadata accessor for LibraryImport.ViewModel);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_1011A4B90, &unk_100ED2800);
    sub_100867794(v15, type metadata accessor for LibraryImport.ViewModel);
  }

  return v28;
}

uint64_t sub_1007FC938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void, __n128), void (*a7)(void))
{
  v48 = a7;
  v45[1] = a1;
  v12 = type metadata accessor for IndexPath();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin();
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(a4, a5);
  __chkstk_darwin();
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = v45 - v18;
  v20 = a6(0, v17);
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = v45 - v22;
  sub_1000089F8(a3, v19, a4, a5);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v24 = v48;
    v25 = a2;
    sub_1000095E8(v19, a4, a5);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000060E4(v26, qword_10118E548);
    v27 = v46;
    v28 = v47;
    (*(v46 + 16))(v14, a2, v47);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v28;
      v36 = v35;
      (*(v27 + 8))(v14, v34);
      v37 = sub_1000105AC(v33, v36, &v49);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v31, 0xCu);
      sub_10000959C(v32);
    }

    else
    {

      (*(v27 + 8))(v14, v28);
    }

    v49 = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v39 = v24(0);
    v49 = static UICollectionReusableView.reuseIdentifier.getter();
    v50 = v40;
    v41._object = 0x8000000100E58BF0;
    v41._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v41);
    v42 = v49;
    v43 = v50;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v38 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v39, v25, v42, v43, v39);
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    (*(v21 + 16))(v16, v23, v20);
    (*(v21 + 56))(v16, 0, 1, v20);
    v48(0);
    v38 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v16, a4, a5);
    (*(v21 + 8))(v23, v20);
  }

  return v38;
}

uint64_t sub_1007FCE50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = a3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 13)
  {
    v27[1] = v3;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_10118E548);
    (*(v8 + 16))(v10, a2, v7);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v8 + 8))(v10, v7);
      v19 = sub_1000105AC(v16, v18, &v28);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v14, 0xCu);
      sub_10000959C(v15);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v21 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = static UICollectionReusableView.reuseIdentifier.getter();
    v29 = v22;
    v23._object = 0x8000000100E58BF0;
    v23._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v23);
    v24 = v28;
    v25 = v29;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v26 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v21, a2, v24, v25, v21);

    return v26;
  }

  else
  {
    LOBYTE(v28) = a3;
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }
}

uint64_t sub_1007FD1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for RecentlyAddedMusicItem();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_101197040, &unk_100EDAE40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101197040, &unk_100EDAE40);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_101197040, &unk_100EDAE40);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FD6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for TVEpisode();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_1011996D0, &unk_100ED8090);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011996D0, &unk_100ED8090);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_1011996D0, &unk_100ED8090);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FDC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for Artist();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_101184930, &unk_100EC05C0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101184930, &unk_100EC05C0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_101184930, &unk_100EC05C0);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FE16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011A38A0, &qword_100EE5560);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for TVShow();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_1011A38A0, &qword_100EE5560);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011A38A0, &qword_100EE5560);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_1011A38A0, &qword_100EE5560);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FE6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for MusicMovie();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_1011803F0, &qword_100EBA6C0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011803F0, &qword_100EBA6C0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_1011803F0, &qword_100EBA6C0);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FEBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for RecentlyAddedMusicItem();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v11, &unk_101197040, &unk_100EDAE40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101197040, &unk_100EDAE40);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_10118E548);
    v18 = v36;
    v17 = v37;
    v19 = a2;
    (*(v36 + 16))(v7, a2, v37);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v7, v17);
      v27 = sub_1000105AC(v24, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v29 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v38 = static UICollectionReusableView.reuseIdentifier.getter();
    v39 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v29, v19, v32, v33, v29);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v9, &unk_101197040, &unk_100EDAE40);
    (*(v13 + 8))(v15, v12);
  }

  return v28;
}

uint64_t sub_1007FF120(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v28 = a3;
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    type metadata accessor for ContainerDetail.ViewController(0);
    v10 = a3;
    v11 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v27[1] = v3;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_10118E548);
    (*(v7 + 16))(v9, a2, v6);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v7 + 8))(v9, v6);
      v20 = sub_1000105AC(v17, v19, &v28);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v15, 0xCu);
      sub_10000959C(v16);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v21 = sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v28 = static UICollectionReusableView.reuseIdentifier.getter();
    v29 = v22;
    v23._object = 0x8000000100E58BF0;
    v23._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v23);
    v24 = v28;
    v25 = v29;
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v11 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v21, a2, v24, v25, v21);
  }

  return v11;
}

uint64_t sub_1007FF4C0(uint64_t a1)
{
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  sub_1000089F8(a1, &v4 - v2, &unk_101184290, &qword_100EC0E60);
  return EnvironmentValues.horizontalSizeClass.setter();
}

void *sub_1007FF568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Track();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v9 + 16);
  v27 = a1;
  v26(v12, a1, v8, v10);
  v13 = *(v5 + 16);
  v28 = a2;
  v25 = v13;
  v13(v7, a2, v4);
  v31 = dispatch thunk of MusicItem.id.getter();
  v15 = v14;
  v30 = dispatch thunk of MusicItem.id.getter();
  v32 = v16;
  (*(v5 + 8))(v7, v4);
  v17 = v15;
  v18 = v29;
  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v19 = *(v18 + 48);
  if (*(v19 + 16) && (v20 = sub_1006BE598(v31, v17, v30, v32), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (v26)(v12, v27, v8);
    v25(v7, v28, v4);
    type metadata accessor for WaveformPlayer.ListenerToken(0);
    swift_allocObject();
    v22 = sub_1007FFBF8(v12, v7);
    sub_10027317C(v22);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v18 + 48);
    *(v18 + 48) = 0x8000000000000000;
    sub_1006C5CBC(v22, v31, v17, v30, v32, isUniquelyReferenced_nonNull_native);

    *(v18 + 48) = v33;
    swift_endAccess();
    sub_1002732FC();
  }

  return v22;
}

void *sub_1007FF8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Entry();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v9 + 16);
  v27 = a1;
  v26(v12, a1, v8, v10);
  v13 = *(v5 + 16);
  v28 = a2;
  v25 = v13;
  v13(v7, a2, v4);
  v31 = dispatch thunk of MusicItem.id.getter();
  v15 = v14;
  v30 = dispatch thunk of MusicItem.id.getter();
  v32 = v16;
  (*(v5 + 8))(v7, v4);
  v17 = v15;
  v18 = v29;
  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v19 = *(v18 + 48);
  if (*(v19 + 16) && (v20 = sub_1006BE598(v31, v17, v30, v32), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (v26)(v12, v27, v8);
    v25(v7, v28, v4);
    type metadata accessor for WaveformPlayer.ListenerToken(0);
    swift_allocObject();
    v22 = sub_10080011C(v12, v7);
    sub_10027317C(v22);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v18 + 48);
    *(v18 + 48) = 0x8000000000000000;
    sub_1006C5CBC(v22, v31, v17, v30, v32, isUniquelyReferenced_nonNull_native);

    *(v18 + 48) = v33;
    swift_endAccess();
    sub_1002732FC();
  }

  return v22;
}

void *sub_1007FFBF8(char *a1, uint64_t a2)
{
  v56 = a2;
  v70 = a1;
  v67 = sub_10010FC20(&unk_1011A4BB0, &unk_100EE5638) - 8;
  __chkstk_darwin();
  v71 = &v51 - v5;
  v69 = type metadata accessor for Album();
  v6 = *(v69 - 8);
  v66 = v6[8];
  __chkstk_darwin();
  v65 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v10 = type metadata accessor for Track();
  v11 = *(v10 - 8);
  v64 = v11[8];
  __chkstk_darwin();
  v63 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v51 - v13;
  v15 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  v16 = type metadata accessor for WaveformState();
  v17 = *(*(v16 - 8) + 56);
  v55 = v2;
  v17(v2 + v15, 1, 1, v16);
  ObservationRegistrar.init()();
  v18 = v11[2];
  v53 = v11;
  v54 = v18;
  v18(v14, a1, v10);
  v58 = v6[2];
  v52 = v9;
  v19 = v69;
  v58(v9, a2, v69);
  v68 = v14;
  v57 = dispatch thunk of MusicItem.id.getter();
  v51 = v20;
  v21 = dispatch thunk of MusicItem.id.getter();
  v23 = v22;
  v61 = v6[1];
  v62 = v6 + 1;
  v61(v9, v19);
  v24 = v11[1];
  v59 = v11 + 1;
  v60 = v24;
  v24(v14, v10);
  v25 = v54;
  v26 = v55;
  v27 = v51;
  v55[2] = v57;
  v26[3] = v27;
  v26[4] = v21;
  v26[5] = v23;
  v28 = *(v67 + 56);
  v29 = v71;
  v25(v71, v70, v10);
  v30 = v6[4];
  v67 = (v6 + 4);
  v57 = v28;
  v30(&v29[v28], v56, v19);
  v31 = v68;
  v25(v68, v29, v10);
  v32 = &v29[v28];
  v33 = v52;
  v34 = v19;
  v58(v52, v32, v19);
  v35 = v53 + 4;
  v36 = v53[4];
  v37 = v63;
  v36(v63, v31, v10);
  v38 = v65;
  v39 = v34;
  v40 = v67;
  v30(v65, v33, v39);
  v41 = *(v35 + 48);
  v42 = (v41 + 16) & ~v41;
  v64 += v42;
  v58 = (v41 | 7);
  v43 = (v64 + *(v40 + 48)) & ~*(v40 + 48);
  v44 = swift_allocObject();
  v36((v44 + v42), v37, v10);
  v45 = v44 + v43;
  v46 = v69;
  v30(v45, v38, v69);
  v47 = v71;
  v61(&v71[v57], v46);
  v60(v47, v10);
  v26[6] = sub_10086D9B0;
  v26[7] = v44;
  v48 = v68;
  v36(v68, v70, v10);
  v49 = swift_allocObject();
  v36((v49 + v42), v48, v10);
  v26[8] = sub_10086DB7C;
  v26[9] = v49;
  return v26;
}

void *sub_10080011C(char *a1, uint64_t a2)
{
  v56 = a2;
  v70 = a1;
  v67 = sub_10010FC20(&qword_1011A4B40, &qword_100EE5438) - 8;
  __chkstk_darwin();
  v71 = &v51 - v5;
  v69 = type metadata accessor for Playlist();
  v6 = *(v69 - 8);
  v66 = v6[8];
  __chkstk_darwin();
  v65 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v10 = type metadata accessor for Playlist.Entry();
  v11 = *(v10 - 8);
  v64 = v11[8];
  __chkstk_darwin();
  v63 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v51 - v13;
  v15 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  v16 = type metadata accessor for WaveformState();
  v17 = *(*(v16 - 8) + 56);
  v55 = v2;
  v17(v2 + v15, 1, 1, v16);
  ObservationRegistrar.init()();
  v18 = v11[2];
  v53 = v11;
  v54 = v18;
  v18(v14, a1, v10);
  v58 = v6[2];
  v52 = v9;
  v19 = v69;
  v58(v9, a2, v69);
  v68 = v14;
  v57 = dispatch thunk of MusicItem.id.getter();
  v51 = v20;
  v21 = dispatch thunk of MusicItem.id.getter();
  v23 = v22;
  v61 = v6[1];
  v62 = v6 + 1;
  v61(v9, v19);
  v24 = v11[1];
  v59 = v11 + 1;
  v60 = v24;
  v24(v14, v10);
  v25 = v54;
  v26 = v55;
  v27 = v51;
  v55[2] = v57;
  v26[3] = v27;
  v26[4] = v21;
  v26[5] = v23;
  v28 = *(v67 + 56);
  v29 = v71;
  v25(v71, v70, v10);
  v30 = v6[4];
  v67 = (v6 + 4);
  v57 = v28;
  v30(&v29[v28], v56, v19);
  v31 = v68;
  v25(v68, v29, v10);
  v32 = &v29[v28];
  v33 = v52;
  v34 = v19;
  v58(v52, v32, v19);
  v35 = v53 + 4;
  v36 = v53[4];
  v37 = v63;
  v36(v63, v31, v10);
  v38 = v65;
  v39 = v34;
  v40 = v67;
  v30(v65, v33, v39);
  v41 = *(v35 + 48);
  v42 = (v41 + 16) & ~v41;
  v64 += v42;
  v58 = (v41 | 7);
  v43 = (v64 + *(v40 + 48)) & ~*(v40 + 48);
  v44 = swift_allocObject();
  v36((v44 + v42), v37, v10);
  v45 = v44 + v43;
  v46 = v69;
  v30(v45, v38, v69);
  v47 = v71;
  v61(&v71[v57], v46);
  v60(v47, v10);
  v26[6] = sub_10086B4F8;
  v26[7] = v44;
  v48 = v68;
  v36(v68, v70, v10);
  v49 = swift_allocObject();
  v36((v49 + v42), v48, v10);
  v26[8] = sub_10086B538;
  v26[9] = v49;
  return v26;
}

uint64_t sub_100800640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = __chkstk_darwin();
  (*(v6 + 16))(&v8 - v5, a1, v3, v4);
  return String.init<A>(describing:)();
}

void sub_10080070C(void *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v38 = &v30 - v3;
  v37 = *(sub_10010FC20(&unk_1011842D0, &qword_100ECBF00) - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v30 - v6;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = type metadata accessor for Album();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v30 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ([a1 state] == 1 && (v17 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v36 = v17;
      v18 = *(*v16 + 128);
      swift_beginAccess();
      sub_1000089F8(v16 + v18, v8, &unk_101184730, &unk_100ECB920);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_1000095E8(v8, &unk_101184730, &unk_100ECB920);
      }

      else
      {
        v19 = *(v10 + 32);
        v32 = v10 + 32;
        v33 = v19;
        v19(v14, v8, v9);
        v31 = *(v10 + 16);
        v31(v12, v14, v9);
        Album.tracks.getter();
        v21 = *(v10 + 8);
        v20 = v10 + 8;
        v35 = v21;
        v21(v12, v9);
        v34 = v20;
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
        v31(v12, v14, v9);
        sub_1000089F8(v39, v5, &unk_1011842D0, &qword_100ECBF00);
        type metadata accessor for MainActor();
        v36 = v36;
        v31 = static MainActor.shared.getter();
        v23 = (*(v20 + 72) + 32) & ~*(v20 + 72);
        v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = (*(v37 + 80) + v24 + 8) & ~*(v37 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = v31;
        *(v26 + 24) = &protocol witness table for MainActor;
        v33(v26 + v23, v12, v9);
        v27 = v36;
        *(v26 + v24) = v36;
        sub_10003D17C(v5, v26 + v25, &unk_1011842D0, &qword_100ECBF00);
        sub_1001F4CB8(0, 0, v38, &unk_100EE5618, v26);

        sub_10010FC20(&unk_101182D80, "ʫ\n");
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100EBC6B0;
        v29 = sub_100137E8C();
        *(v28 + 32) = &type metadata for MusicLibraryTrait;
        *(v28 + 40) = v29;
        swift_allocObject();
        swift_weakInit();
        type metadata accessor for ContainerDetail.ViewController(0);
        UIViewController.registerForTraitChanges<A>(_:handler:)();

        swift_unknownObjectRelease();

        sub_1000095E8(v39, &unk_1011842D0, &qword_100ECBF00);
        v35(v14, v9);
      }
    }

    else
    {
    }
  }
}

void sub_100800CD8(void *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v38 = &v30 - v3;
  v37 = *(sub_10010FC20(&unk_1011842D0, &qword_100ECBF00) - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v30 - v6;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v30 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ([a1 state] == 1 && (v17 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v36 = v17;
      v18 = *(*v16 + 128);
      swift_beginAccess();
      sub_1000089F8(v16 + v18, v8, &unk_1011814D0, &qword_100EC12A0);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
      }

      else
      {
        v19 = *(v10 + 32);
        v32 = v10 + 32;
        v33 = v19;
        v19(v14, v8, v9);
        v31 = *(v10 + 16);
        v31(v12, v14, v9);
        Playlist.tracks.getter();
        v21 = *(v10 + 8);
        v20 = v10 + 8;
        v35 = v21;
        v21(v12, v9);
        v34 = v20;
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
        v31(v12, v14, v9);
        sub_1000089F8(v39, v5, &unk_1011842D0, &qword_100ECBF00);
        type metadata accessor for MainActor();
        v36 = v36;
        v31 = static MainActor.shared.getter();
        v23 = (*(v20 + 72) + 32) & ~*(v20 + 72);
        v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = (*(v37 + 80) + v24 + 8) & ~*(v37 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = v31;
        *(v26 + 24) = &protocol witness table for MainActor;
        v33(v26 + v23, v12, v9);
        v27 = v36;
        *(v26 + v24) = v36;
        sub_10003D17C(v5, v26 + v25, &unk_1011842D0, &qword_100ECBF00);
        sub_1001F4CB8(0, 0, v38, &unk_100EE51B8, v26);

        sub_10010FC20(&unk_101182D80, "ʫ\n");
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100EBC6B0;
        v29 = sub_100137E8C();
        *(v28 + 32) = &type metadata for MusicLibraryTrait;
        *(v28 + 40) = v29;
        swift_allocObject();
        swift_weakInit();
        type metadata accessor for ContainerDetail.ViewController(0);
        UIViewController.registerForTraitChanges<A>(_:handler:)();

        swift_unknownObjectRelease();

        sub_1000095E8(v39, &unk_1011842D0, &qword_100ECBF00);
        v35(v14, v9);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1008012A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  type metadata accessor for MainActor();
  v6[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[25] = v8;
  v6[26] = v7;

  return _swift_task_switch(sub_100801340, v8, v7);
}

uint64_t sub_100801340()
{
  v1 = *(v0 + 176);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_100801424;
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  return sub_10086250C(v4, v0 + 16, v3);
}

uint64_t sub_100801424()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_100801550, v3, v2);
}

uint64_t sub_100801550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008015B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  type metadata accessor for MainActor();
  v6[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[25] = v8;
  v6[26] = v7;

  return _swift_task_switch(sub_10080164C, v8, v7);
}

uint64_t sub_10080164C()
{
  v1 = *(v0 + 176);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_100801730;
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  return sub_100863048(v4, v0 + 16, v3);
}

uint64_t sub_100801730()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_10086E324, v3, v2);
}

double sub_10080185C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v7 = *(Strong + *(*Strong + 136)), , , v7))
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  if (v8)
  {
    type metadata accessor for MusicLibrary();
    sub_100866F00(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v10)
    {
      return result;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    *(v12 + *(*v12 + 136)) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a4();
  }

  return result;
}

void *sub_100801A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(*v3 + 136));
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v9 = *(*v4 + 256);

  v11 = v9(v10);
  if (static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(v11))
  {

    return 0;
  }

  v13 = sub_100804004(a1, a2, a3);
  v14 = [v13 customView];

  if (v14)
  {
    v15 = sub_100801BE0(v4);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_100009F78(0, &qword_101181620, UIView_ptr);
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v15, v17, v19, v21);
  }

  v22 = *(v5 + *(*v5 + 152));
  v23 = v22;
  return v22;
}

uint64_t sub_100801BE0(uint64_t a1)
{
  v1 = (*(*a1 + 256))();
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      if ((v2 & 0x100) != 0)
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadPausedButton.unsafeMutableAddressor();
      }

      else if (v2)
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadQueuedButton.unsafeMutableAddressor();
      }

      else
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadingButton.unsafeMutableAddressor();
      }
    }

    else if (v1 | v2 ^ 0x8000)
    {
      if (v2 == 0x8000 && v1 == 1)
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadButton.unsafeMutableAddressor();
      }

      else
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadedButton.unsafeMutableAddressor();
      }
    }

    else
    {
      v3 = AccessibilityIdentifier.containerDetailStateButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v3 = AccessibilityIdentifier.containerDetailAddButton.unsafeMutableAddressor();
  }

  v5 = *v3;

  return v5;
}

void sub_100801CC4()
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v2 = &v32 - v1;
  v3 = type metadata accessor for Album();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v32 - v7;
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = *(*v0 + 128);
  swift_beginAccess();
  sub_1000089F8(v0 + v11, v2, &unk_101184730, &unk_100ECB920);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &unk_101184730, &unk_100ECB920);
    *(v0 + *(*v0 + 136)) = 0;

    return;
  }

  (*(v4 + 32))(v10, v2, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(v0 + *(*v0 + 136));
    if (v14)
    {
      (*(v4 + 16))(v8, v10, v3);
      v15 = *(*v14 + 216);

      v15(v8);
    }

    else
    {
      v34 = *(*v0 + 136);
      v35 = v0;
      (*(v4 + 16))(v6, v10, v3);
      v16 = v13;
      v17 = [v16 traitCollection];
      sub_100137E8C();
      UITraitCollection.subscript.getter();

      v33 = v36;
      v18 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
      swift_beginAccess();
      v19 = *&v16[v18];
      swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      v21 = 0;
      v22 = 0;
      if (v20)
      {
        v23 = v35;
        if (v19)
        {
          v24 = v20;
          swift_unknownObjectRetain();
          v21 = v19;
          v22 = v24;
        }
      }

      else
      {
        v23 = v35;
      }

      v25 = swift_allocObject();
      swift_weakInit();
      sub_10010FC20(&unk_1011A4BA0, &qword_100EE55F8);
      swift_allocObject();
      v26 = MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(v6, v33, v21, v22, sub_10086D14C, v25);
      *(v23 + v34) = v26;

      v27 = *(*v26 + 256);

      v29 = v27(v28);
      v31 = v30;

      if (static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(v29))
      {
        (*(v4 + 8))(v10, v3);

        return;
      }

      sub_10080276C(0, 0x8000, v29, v31, &unk_1010C30E0, sub_10086D1A0, sub_10086D1D8);
    }
  }

  (*(v4 + 8))(v10, v3);
}

void sub_1008021C4()
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v2 = &v32 - v1;
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v32 - v7;
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = *(*v0 + 128);
  swift_beginAccess();
  sub_1000089F8(v0 + v11, v2, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &unk_1011814D0, &qword_100EC12A0);
    *(v0 + *(*v0 + 136)) = 0;

    return;
  }

  (*(v4 + 32))(v10, v2, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(v0 + *(*v0 + 136));
    if (v14)
    {
      (*(v4 + 16))(v8, v10, v3);
      v15 = *(*v14 + 216);

      v15(v8);
    }

    else
    {
      v34 = *(*v0 + 136);
      v35 = v0;
      (*(v4 + 16))(v6, v10, v3);
      v16 = v13;
      v17 = [v16 traitCollection];
      sub_100137E8C();
      UITraitCollection.subscript.getter();

      v33 = v36;
      v18 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
      swift_beginAccess();
      v19 = *&v16[v18];
      swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      v21 = 0;
      v22 = 0;
      if (v20)
      {
        v23 = v35;
        if (v19)
        {
          v24 = v20;
          swift_unknownObjectRetain();
          v21 = v19;
          v22 = v24;
        }
      }

      else
      {
        v23 = v35;
      }

      v25 = swift_allocObject();
      swift_weakInit();
      sub_10010FC20(&qword_1011A49C0, &qword_100EE50F0);
      swift_allocObject();
      v26 = MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(v6, v33, v21, v22, sub_10086A7BC, v25);
      *(v23 + v34) = v26;

      v27 = *(*v26 + 256);

      v29 = v27(v28);
      v31 = v30;

      if (static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(v29))
      {
        (*(v4 + 8))(v10, v3);

        return;
      }

      sub_10080276C(0, 0x8000, v29, v31, &unk_1010C25F0, sub_10086A810, sub_10086E3A0);
    }
  }

  (*(v4 + 8))(v10, v3);
}

double sub_1008026C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10080276C(a2, a3, a4, v11, a7, a8, a9);
  }

  return result;
}

void sub_10080276C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  v49 = a4;
  v14 = type metadata accessor for PopoverProvider.PopoverSource();
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin();
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v42 - v16;
  v17 = type metadata accessor for PlacementID();
  v47 = *(v17 - 8);
  v48 = v17;
  __chkstk_darwin();
  v50 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v42 - v19;
  __chkstk_darwin();
  v21 = &v42 - v20;
  sub_10010FC20(&qword_1011A49C8, &qword_100EE50F8);
  __chkstk_darwin();
  v23 = &v42 - v22;
  v24 = sub_100802C84(a5, a6, a7);
  v25 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  if (static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(a1))
  {
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v23, 0, 0, 0, 1);

    sub_1000095E8(v23, &qword_1011A49C8, &qword_100EE50F8);
    v26 = v49;
  }

  else
  {
    v27 = SymbolButton.Animation.eased.unsafeMutableAddressor();
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v23, *v27, *(v27 + 1), *(v27 + 2), 0);

    sub_1000095E8(v23, &qword_1011A49C8, &qword_100EE50F8);
    v26 = v49;
    if ((static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(a3) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    sub_10069F67C();
  }

LABEL_6:
  v30 = swift_unknownObjectWeakLoadStrong();
  v31 = v50;
  if (!v30)
  {
    return;
  }

  v32 = v30;
  if (!sub_1006A4900())
  {

    return;
  }

  if (!(v26 >> 14))
  {
    if (a3 == 5 || !static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(a3, 2))
    {
      static PlacementID.BubbleTip.downloadButton.getter();
      dispatch thunk of PopoverProvider.removeRegistration(for:)();
      v33 = v48;
      v34 = *(v47 + 8);
      v34(v21, v48);
      static PlacementID.BubbleTip.addToLibraryButton.getter();
      v35 = *(v11 + *(*v11 + 144));
      v36 = v44;
      goto LABEL_18;
    }

LABEL_16:
    static PlacementID.BubbleTip.downloadButton.getter();
    dispatch thunk of PopoverProvider.removeRegistration(for:)();
    v37 = v48;
    v38 = *(v47 + 8);
    v38(v21, v48);
    static PlacementID.BubbleTip.addToLibraryButton.getter();
    dispatch thunk of PopoverProvider.removeRegistration(for:)();

    v38(v21, v37);
    return;
  }

  if (v26 >> 14 != 2 || a3 != 1 || v26 != 0x8000)
  {
    goto LABEL_16;
  }

  static PlacementID.BubbleTip.addToLibraryButton.getter();
  dispatch thunk of PopoverProvider.removeRegistration(for:)();
  v33 = v48;
  v34 = *(v47 + 8);
  v34(v21, v48);
  v31 = v42;
  static PlacementID.BubbleTip.downloadButton.getter();
  v35 = *(v11 + *(*v11 + 144));
  v36 = v43;
LABEL_18:
  *v36 = v35;
  v40 = v45;
  v39 = v46;
  (*(v45 + 104))(v36, enum case for PopoverProvider.PopoverSource.sourceItem(_:), v46);
  v41 = v35;
  dispatch thunk of PopoverProvider.registerPlacement(for:presentingViewController:popoverSource:)();

  (*(v40 + 8))(v36, v39);
  v34(v31, v33);
}

void *sub_100802C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 144);
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *(v3 + v4);
  }

  else
  {
    v7 = sub_100802D00(v3, a1, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

void *sub_100802D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = (&v20 - v8);
  SymbolButton.Configuration.init()(v7);
  v10 = objc_opt_self();
  v11 = [v10 currentTraitCollection];
  SymbolButton.Configuration.forBarButtonItem(_:)(v9);

  sub_100867794(v7, type metadata accessor for SymbolButton.Configuration);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v14 = SymbolButton.init(configuration:handler:)(v9, a3, v12);
  v15 = swift_allocObject();
  swift_weakInit();

  v16 = SymbolButton.withProvider(_:)(a4, v15);

  v17 = [v10 currentTraitCollection];
  SymbolButton.configureForToolbar(_:)(v17);

  [v16 sizeToFit];
  (*((swift_isaMask & *v16) + 0x108))(0xD00000000000001BLL, 0x8000000100E58A30);
  v18 = sub_1008040A0();
  [v16 addGestureRecognizer:v18];

  return v16;
}

double sub_100802F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v6 = &v16 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + *(*Strong + 136));
    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
        type metadata accessor for MainActor();
        swift_retain_n();
        v13 = v11;
        v14 = static MainActor.shared.getter();
        v15 = swift_allocObject();
        v15[2] = v14;
        v15[3] = &protocol witness table for MainActor;
        v15[4] = v13;
        v15[5] = v9;
        sub_1001F4CB8(0, 0, v6, a4, v15);
      }
    }
  }

  return result;
}

uint64_t sub_100803108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return _swift_task_switch(sub_100803214, v7, v6);
}

uint64_t sub_100803214()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  v4 = v3;
  PresentationSource.init(viewController:position:)(v4, v0 + 112, v0 + 16);
  v5 = &v4[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  *(v0 + 216) = v7;
  (*(v6 + 256))(ObjectType, v6);
  sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  v11 = *v5;
  v10 = *(v5 + 1);
  v12 = swift_getObjectType();
  *(v0 + 224) = v11;
  v13 = *(v10 + 264);
  swift_unknownObjectRetain();
  *(v9 + 32) = v13(v12, v10);
  swift_unknownObjectRelease();
  sub_1000089F8(v1, v2, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v14 = sub_10053771C();
  v35 = v15;
  v36 = v14;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v18 = *(v0 + 256);
  v32 = *(v0 + 248);
  v19 = *(v0 + 240);
  v20 = qword_101218AD0;
  v34 = GroupActivitiesManager.hasJoined.getter();
  v33 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v18, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v17[5];
  v24 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v24 - 8) + 56))(&v16[v23], 1, 1, v24);
  v25 = v17[7];
  v26 = &v16[v17[6]];
  v27 = v17[8];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_10006B010(v32, &v16[v23], &unk_1011838F0, &qword_100EC1070);
  *v26 = v36;
  v26[1] = v35;
  *&v16[v25] = v9;
  *&v16[v27] = 0;
  v28 = &v16[v17[9]];
  *v28 = v34 & 1;
  *(v28 + 1) = v33;
  *(v28 + 2) = v22;
  v37 = (*(*v19 + 280) + **(*v19 + 280));
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *v29 = v0;
  v29[1] = sub_1008035C8;
  v30 = *(v0 + 272);

  return v37(v0 + 16, v30);
}

uint64_t sub_1008035C8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 272);
  if (v0)
  {

    sub_100867794(v4, type metadata accessor for Actions.MetricsReportingContext);
    v5 = *(v3 + 288);
    v6 = *(v3 + 296);
    v7 = sub_10086E2EC;
  }

  else
  {
    sub_100867794(v4, type metadata accessor for Actions.MetricsReportingContext);
    v5 = *(v3 + 288);
    v6 = *(v3 + 296);
    v7 = sub_100803734;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100803734()
{

  sub_10012BA6C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008037C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return _swift_task_switch(sub_1008038CC, v7, v6);
}

uint64_t sub_1008038CC()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  v4 = v3;
  PresentationSource.init(viewController:position:)(v4, v0 + 112, v0 + 16);
  v5 = &v4[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  *(v0 + 216) = v7;
  (*(v6 + 256))(ObjectType, v6);
  sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  v11 = *v5;
  v10 = *(v5 + 1);
  v12 = swift_getObjectType();
  *(v0 + 224) = v11;
  v13 = *(v10 + 264);
  swift_unknownObjectRetain();
  *(v9 + 32) = v13(v12, v10);
  swift_unknownObjectRelease();
  sub_1000089F8(v1, v2, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v14 = sub_10053771C();
  v35 = v15;
  v36 = v14;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v18 = *(v0 + 256);
  v32 = *(v0 + 248);
  v19 = *(v0 + 240);
  v20 = qword_101218AD0;
  v34 = GroupActivitiesManager.hasJoined.getter();
  v33 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v18, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v17[5];
  v24 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v24 - 8) + 56))(&v16[v23], 1, 1, v24);
  v25 = v17[7];
  v26 = &v16[v17[6]];
  v27 = v17[8];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_10006B010(v32, &v16[v23], &unk_1011838F0, &qword_100EC1070);
  *v26 = v36;
  v26[1] = v35;
  *&v16[v25] = v9;
  *&v16[v27] = 0;
  v28 = &v16[v17[9]];
  *v28 = v34 & 1;
  *(v28 + 1) = v33;
  *(v28 + 2) = v22;
  v37 = (*(*v19 + 280) + **(*v19 + 280));
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *v29 = v0;
  v29[1] = sub_100803C80;
  v30 = *(v0 + 272);

  return v37(v0 + 16, v30);
}

uint64_t sub_100803C80()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 272);
  if (v0)
  {
  }

  sub_100867794(v4, type metadata accessor for Actions.MetricsReportingContext);
  v5 = *(v3 + 288);
  v6 = *(v3 + 296);

  return _swift_task_switch(sub_10086E2EC, v5, v6);
}

double sub_100803DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + *(*Strong + 136));
    if (v8 && (v9 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v10 = v9;
      sub_100869470(a2, v5, type metadata accessor for SymbolButton.Configuration);
      v11 = *(*v8 + 256);

      v13 = v11(v12);
      v15 = [v10 traitCollection];
      UITraitCollection.supportedMaterials.getter();

      LOBYTE(v15) = sub_100042A50();

      if (v15)
      {
        sub_100282F24(*(v5 + 25), *(v5 + 26), *(v5 + 27), *(v5 + 28));
        *(v5 + 200) = xmmword_100EBCEE0;
        *(v5 + 27) = 0;
        *(v5 + 28) = 0;
        sub_1002ACCD0(*(v5 + 29), *(v5 + 30), *(v5 + 31), *(v5 + 32), *(v5 + 33), *(v5 + 34));
        *(v5 + 29) = 1;
        *(v5 + 15) = 0u;
        *(v5 + 16) = 0u;
        *(v5 + 34) = 0;
      }

      sub_100869470(v5, a2, type metadata accessor for SymbolButton.Configuration);
    }

    else
    {
    }
  }

  return result;
}

id sub_100804004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 152);
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *(v3 + v4);
  }

  else
  {
    v7 = sub_100802C84(a1, a2, a3);
    v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v7];

    v9 = *(v3 + v4);
    *(v3 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

id sub_1008040A0()
{
  v1 = *(*v0 + 160);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100804120(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v36 = type metadata accessor for IndexPath();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v11 = &v29 - v10;
  Date.init()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v34 = v7;
    v14 = a2;
    v15 = sub_100391EC8(a2);

    if (v15)
    {
      v32 = *(v3 + 88);
      v16 = swift_allocObject();
      v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = v16;
      swift_weakInit();
      (*(v5 + 16))(v35, v14, v36);
      (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v34);
      v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v30 = v15;
      v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
      v22 = v33;
      v29 = (*(v8 + 80) + v21 + 10) & ~*(v8 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v17;
      (*(v5 + 32))(v23 + v18, v35, v36);
      *(v23 + v19) = v22;
      v24 = v22;
      v25 = v29;
      *(v23 + v20) = v30;
      v26 = v23 + v21;
      *v26 = 0;
      *(v26 + 8) = 1025;
      v27 = v34;
      (*(v8 + 32))(v23 + v25, v31, v34);

      v28 = v24;
      sub_100534EE4(sub_10086DF90, v23);

      (*(v8 + 8))(v11, v27);
    }

    else
    {
      (*(v8 + 8))(v11, v34);
    }
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }
}

void sub_100804470(void *a1, uint64_t a2)
{
  v43 = a2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  Date.init()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = v2;
    v36 = v6;
    v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v4;
    v37 = v5;
    v38 = a1;
    v41 = v7;
    v13 = (Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
    v14 = Strong;
    swift_beginAccess();
    v16 = *v13;
    v15 = v13[1];
    ObjectType = swift_getObjectType();
    v44 = v16;
    v18 = *(v15 + 448);
    swift_unknownObjectRetain();
    v19 = v18(v43, ObjectType, v15);
    swift_unknownObjectRelease();

    if (v19)
    {
      v33 = v19;
      v34 = *(v35 + 88);
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = v37;
      (*(v37 + 16))(v39, v43, v40);
      (*(v8 + 16))(v42, v11, v41);
      v22 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v23 = (v36 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = (*(v8 + 80) + v25 + 10) & ~*(v8 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v20;
      (*(v21 + 32))(v27 + v22, v39, v40);
      v28 = v38;
      *(v27 + v23) = v38;
      *(v27 + v24) = v33;
      v29 = v27 + v25;
      *v29 = 0;
      *(v29 + 8) = 1025;
      v30 = v41;
      (*(v8 + 32))(v27 + v26, v42, v41);

      v31 = v28;
      sub_100534EE4(sub_10086C97C, v27);

      (*(v8 + 8))(v11, v30);
    }

    else
    {
      (*(v8 + 8))(v11, v41);
    }
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_100804814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, double a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, double), uint64_t *a11, uint64_t *a12, void (*a13)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    if (*(*(v21 + 112) + 16))
    {

      sub_1006BE9F0(a2);
      if (v22)
      {

        swift_unknownObjectWeakAssign();
LABEL_9:

        a10(v25, a2, a9, a8);
      }
    }

    if (a7 == 4)
    {
      a7 = *(v21 + 40);
    }

    sub_10010FC20(a11, a12);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v23 + 16) = a4;
    swift_unknownObjectWeakAssign();
    *(v23 + 24) = a5;
    *(v23 + 32) = a6 & 1;
    *(v23 + 48) = a7;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v21 + 112);
    *(v21 + 112) = 0x8000000000000000;
    a13(v23, a2, isUniquelyReferenced_nonNull_native);
    *(v21 + 112) = v26;
    swift_endAccess();
    goto LABEL_9;
  }

  return result;
}

void sub_100804A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v9 = sub_100805058(a2, sub_10040E394, sub_1006C8E74);
    swift_endAccess();

    if (v9)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = sub_100431E88(*(v9 + 16));
        v14 = v13;
        swift_beginAccess();
        v15 = *(v11 + 104);

        if (*(v15 + 16))
        {
          v16 = sub_100019C10(v12, v14);
          v18 = v17;

          if (v18)
          {
            v19 = *(*(v15 + 56) + 8 * v16);

            swift_beginAccess();
            v20 = *(v19 + 48);
            v23 = *(v20 + 16);
            v21 = v20 + 16;
            v22 = v23;
            if (v23 && (*(v21 + 16 * v22 + 8) & 1) == 0)
            {
              (*(v6 + 16))(v8, a3, v5);
              Date.timeIntervalSince1970.getter();
              v25 = v24;
              (*(v6 + 8))(v8, v5);
              swift_beginAccess();
              v26 = *(v19 + 48);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v19 + 48) = v26;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v26 = sub_100499F10(0, *(v26 + 2) + 1, 1, v26);
                *(v19 + 48) = v26;
              }

              v29 = *(v26 + 2);
              v28 = *(v26 + 3);
              if (v29 >= v28 >> 1)
              {
                v26 = sub_100499F10((v28 > 1), v29 + 1, 1, v26);
              }

              *(v26 + 2) = v29 + 1;
              v30 = &v26[16 * v29];
              *(v30 + 4) = v25;
              v30[40] = 1;
              *(v19 + 48) = v26;
              swift_endAccess();
            }

            goto LABEL_16;
          }
        }

        else
        {
        }
      }

LABEL_16:
    }
  }
}

void sub_100804D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v9 = sub_100805058(a2, sub_10040E394, sub_1006C92C8);
    swift_endAccess();

    if (v9)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = sub_100431E88(*(v9 + 16));
        v14 = v13;
        swift_beginAccess();
        v15 = *(v11 + 104);

        if (*(v15 + 16))
        {
          v16 = sub_100019C10(v12, v14);
          v18 = v17;

          if (v18)
          {
            v19 = *(*(v15 + 56) + 8 * v16);

            swift_beginAccess();
            v20 = *(v19 + 48);
            v23 = *(v20 + 16);
            v21 = v20 + 16;
            v22 = v23;
            if (v23 && (*(v21 + 16 * v22 + 8) & 1) == 0)
            {
              (*(v6 + 16))(v8, a3, v5);
              Date.timeIntervalSince1970.getter();
              v25 = v24;
              (*(v6 + 8))(v8, v5);
              swift_beginAccess();
              v26 = *(v19 + 48);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v19 + 48) = v26;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v26 = sub_100499F24(0, *(v26 + 2) + 1, 1, v26);
                *(v19 + 48) = v26;
              }

              v29 = *(v26 + 2);
              v28 = *(v26 + 3);
              if (v29 >= v28 >> 1)
              {
                v26 = sub_100499F24((v28 > 1), v29 + 1, 1, v26);
              }

              *(v26 + 2) = v29 + 1;
              v30 = &v26[16 * v29];
              *(v30 + 4) = v25;
              v30[40] = 1;
              *(v19 + 48) = v26;
              swift_endAccess();
            }

            goto LABEL_16;
          }
        }

        else
        {
        }
      }

LABEL_16:
    }
  }
}

uint64_t sub_100805058(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_1006BE9F0(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for IndexPath();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

BOOL sub_10080516C(char a1, uint64_t (*a2)(void, __n128), uint64_t a3, void (*a4)(uint64_t))
{
  v47 = a4;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v44 - v7;
  v9 = type metadata accessor for EditorialVideoArtworkFlavor();
  v46 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v44 - v12;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v44 - v18;
  if (!a1)
  {
    a2(0, v17);
    v28 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    if (v28)
    {
      v29 = v28;
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
      if (*(v29 + 16) && (v30 = sub_1006BE63C(v13), (v31 & 1) != 0))
      {
        v32 = v30;
        v33 = *(v29 + 56);
        v34 = type metadata accessor for VideoArtwork();
        v35 = *(v34 - 8);
        (*(v35 + 16))(v19, v33 + *(v35 + 72) * v32, v34);
        (*(v46 + 8))(v13, v9);

        (*(v35 + 56))(v19, 0, 1, v34);
      }

      else
      {

        (*(v46 + 8))(v13, v9);
        v34 = type metadata accessor for VideoArtwork();
        (*(*(v34 - 8) + 56))(v19, 1, 1, v34);
      }

      type metadata accessor for VideoArtwork();
      v36 = 1;
      if ((*(*(v34 - 8) + 48))(v19, 1, v34) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v37 = type metadata accessor for VideoArtwork();
      (*(*(v37 - 8) + 56))(v19, 1, 1, v37);
    }

    v36 = 0;
LABEL_19:
    v38 = &unk_101192950;
    v39 = &unk_100EBDF40;
    v40 = v19;
LABEL_23:
    sub_1000095E8(v40, v38, v39);
    return v36;
  }

  if (a1 == 1)
  {
LABEL_22:
    v47(v16);
    v42 = type metadata accessor for Artwork();
    v36 = (*(*(v42 - 8) + 48))(v8, 1, v42) != 1;
    v38 = &unk_101188920;
    v39 = &qword_100EBCC50;
    v40 = v8;
    goto LABEL_23;
  }

  a2(0, v17);
  v20 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
  if (!v20)
  {
    v41 = type metadata accessor for VideoArtwork();
    (*(*(v41 - 8) + 56))(v15, 1, 1, v41);
LABEL_21:
    v16 = sub_1000095E8(v15, &unk_101192950, &unk_100EBDF40);
    v8 = v45;
    goto LABEL_22;
  }

  v21 = v20;
  static EditorialVideoArtworkFlavor.motionDetailTall.getter();
  if (*(v21 + 16) && (v22 = sub_1006BE63C(v11), (v23 & 1) != 0))
  {
    v24 = v22;
    v25 = *(v21 + 56);
    v26 = type metadata accessor for VideoArtwork();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v15, v25 + *(v27 + 72) * v24, v26);
    (*(v46 + 8))(v11, v9);

    (*(v27 + 56))(v15, 0, 1, v26);
  }

  else
  {

    (*(v46 + 8))(v11, v9);
    v26 = type metadata accessor for VideoArtwork();
    (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  }

  type metadata accessor for VideoArtwork();
  if ((*(*(v26 - 8) + 48))(v15, 1, v26) == 1)
  {
    goto LABEL_21;
  }

  sub_1000095E8(v15, &unk_101192950, &unk_100EBDF40);
  return 1;
}