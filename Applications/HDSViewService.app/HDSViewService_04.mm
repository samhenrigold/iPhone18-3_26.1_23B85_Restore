uint64_t sub_100060BAC()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100060C10()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100108998);
  sub_100012AAC(v0, qword_100108998);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100060C94()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001036F0);
  v1 = sub_100012AAC(v0, qword_1001036F0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100060D5C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000144DC();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_getObjectType();
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      if (a1)
      {
        v10 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation);
        if (v10)
        {
          v11 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation + 8);
          v12 = v9;
          v13 = a1;
          sub_100061704(v10, v11);
          v10(v13, v12);
          sub_1000616F4(v10, v11);
        }
      }
    }

    v14 = OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_navigationController;
    v15 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_navigationController);
    if (v15)
    {
      v16 = v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler;
      v17 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler);
      if (v17)
      {
        v18 = *(v16 + 8);
        sub_100061704(v17, v18);
        v19 = v15;
        v20 = v17();
        if (v20)
        {
          v21 = v20;
          v22 = a1;
          v23 = v19;
          sub_100062CC8(v23, v21, v23, v22);

          sub_1000616F4(v17, v18);
        }

        else
        {

          sub_1000616F4(v17, v18);
        }
      }
    }

    else
    {
      v30[1] = &OBJC_PROTOCOL___PRXCardContentProviding;
      v24 = swift_dynamicCastObjCProtocolConditional();
      if (v24)
      {
        v25 = v24;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v27 = Strong;
          v28 = [Strong presentProxCardFlowWithDelegate:v2 initialViewController:v25];
        }

        else
        {
          v28 = 0;
        }

        v29 = *(v2 + v14);
        *(v2 + v14) = v28;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100061004(void *a1, void *a2, uint64_t a3)
{
  sub_1000754B8();
  [a2 pushViewController:a3 animated:1];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setNeedsLayout];

  v8 = [a1 view];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 layoutIfNeeded];
}

void sub_1000610CC(int a1, char a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed) = 1;
    if (qword_100101678 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100012AAC(v9, qword_1001036F0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109376;
      *(v12 + 4) = a1;
      *(v12 + 8) = 1024;
      *(v12 + 10) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupRouter: dismiss with type %d, animated: %{BOOL}d", v12, 0xEu);
    }

    v13 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_navigationController);
    if (v13)
    {
      sub_1000144DC();
      v14 = v13;
      *v8 = static OS_dispatch_queue.main.getter();
      (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
      v15 = _dispatchPreconditionTest(_:)();
      (*(v6 + 8))(v8, v5);
      if (v15)
      {
        [v14 dismissViewControllerAnimated:a2 & 1 completion:0];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v20 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v20, v16, "HomePodSetupRouter: dismiss attempted while navigationController is nil", v17, 2u);
      }

      v18 = v20;
    }
  }
}

id sub_1000613B4()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_navigationController] = 0;
  v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed] = 0;
  v1 = &v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_blockHardwareButtons] = 0;
  v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_homePressed] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for HomePodSetupRouter();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100061480(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomePodSetupRouter();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100061560()
{
  v1 = v0;
  if (qword_100101678 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_1001036F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupRouter: proxCardFlowDidDismiss called dismissing the flow", v5, 2u);
  }

  if ((*(v1 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed) & 1) == 0)
  {
    sub_1000610CC(0, 1);
  }

  v6 = v1 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss;
  v7 = *(v1 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss);
  if (v7)
  {
    v8 = *(v6 + 8);

    v7(v9);

    sub_1000616F4(v7, v8);
  }
}

double sub_1000616F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100061704(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

char *sub_1000617BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_stackView;
  *&v4[v5] = [objc_allocWithZone(UIStackView) init];
  v6 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle;
  *&v4[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel;
  *&v4[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel;
  *&v4[v8] = [objc_allocWithZone(UILabel) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for StereoPairButton();
  v9 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel];
  v11 = v9;
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v14 = *&v11[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel];
  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  sub_100061A6C();
  return v11;
}

id sub_100061950(void *a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_stackView;
  *&v1[v3] = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for StereoPairButton();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_100061A6C();
  }

  return v8;
}

id sub_100061A6C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_stackView];
  [v2 setAxis:1];
  [v2 setSpacing:6.0];
  [v2 setUserInteractionEnabled:0];
  [v0 addSubviewToBounds:v2 with:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v3 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle];
  [v2 addArrangedSubview:v3];
  v4 = [v3 layer];
  [v4 setBorderWidth:2.0];

  sub_1000831A0(1.0, 1.0, 750.0);
  v5 = *&v1[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel];
  v6 = [objc_opt_self() systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  [v5 setFont:v6];

  [v5 setTextAlignment:1];
  sub_1000832FC(v5, 0.0, 0.0);
  v7 = *&v1[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel];
  [v7 setTextAlignment:1];

  return [v2 addArrangedSubview:v7];
}

void sub_100061C28()
{
  v1 = [v0 isHighlighted];
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel];
  v3 = objc_opt_self();
  v4 = v3;
  v5 = &selRef_systemGrayColor;
  if (v1)
  {
    v6 = &selRef_systemBlueColor;
  }

  else
  {
    v6 = &selRef_systemGrayColor;
  }

  if (v1)
  {
    v5 = &selRef_systemBackgroundColor;
    v7 = &selRef_systemBlueColor;
  }

  else
  {
    v7 = &selRef_clearColor;
  }

  v8 = [v3 *v5];
  [v2 setTextColor:v8];

  v9 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel];
  v10 = [v4 *v6];
  [v9 setTextColor:v10];

  v11 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle];
  v12 = [v4 *v7];
  [v11 setBackgroundColor:v12];

  v13 = [v11 layer];
  v14 = [v4 *v6];
  v15 = [v14 CGColor];

  [v13 setBorderColor:v15];
}

id sub_100061EC0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for StereoPairButton();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100061F84()
{
  result = [*v0 name];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100061FE4()
{
  result = [*v0 name];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    return 0x666E696563696F76;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10006207C(void *a1)
{
  v22._countAndFlagsBits = 1031365995;
  v22._object = 0xE400000000000000;
  v1 = a1;
  result = [v1 name];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    String.append(_:)(v7);

    v8._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v22._countAndFlagsBits;
    object = v22._object;
    strcpy(&v22, "<VoiceOption ");
    HIWORD(v22._object) = -4864;
    v10._object = object;
    String.append(_:)(v10);

    countAndFlagsBits = v22._countAndFlagsBits;
    v12 = v22._object;
    _StringGuts.grow(_:)(16);

    strcpy(&v22, "displayValue=");
    HIWORD(v22._object) = -4864;
    result = [v1 name];
    if (result)
    {
      v14 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 32;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      String.append(_:)(v22);

      strcpy(&v22, "voiceInfo=");
      BYTE3(v22._object) = 0;
      HIDWORD(v22._object) = -369098752;
      sub_100062340();
      v17._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = v22._object;
      v22._object = v12;

      v20._countAndFlagsBits = v22._countAndFlagsBits;
      v20._object = v19;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 62;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);

      return countAndFlagsBits;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100062340()
{
  result = qword_100103428;
  if (!qword_100103428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100103428);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleAccountFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppleAccountFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeDeviceSetupFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeDeviceSetupFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharingFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10006272C()
{
  result = qword_100103828;
  if (!qword_100103828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103828);
  }

  return result;
}

Swift::Int sub_100062780()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000627F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

const char *sub_10006284C()
{
  v1 = *v0;
  v2 = "psg_support";
  v3 = "sysdrop";
  v4 = "sysdrop_rp";
  if (v1 != 3)
  {
    v4 = "NetworkSelection";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "home_selection";
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

unint64_t sub_1000628E0()
{
  result = qword_100103830;
  if (!qword_100103830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103830);
  }

  return result;
}

unint64_t sub_100062938()
{
  result = qword_100103838;
  if (!qword_100103838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103838);
  }

  return result;
}

const char *sub_1000629A0()
{
  if (*v0)
  {
    return "HomePodUseAMSEarly";
  }

  else
  {
    return "HomePodUseAMS";
  }
}

Swift::Int sub_1000629D8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100062A44(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100062AAC()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103840);
  v1 = sub_100012AAC(v0, qword_100103840);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100062B74(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_100101680 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103840);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Performing deferred block after navigation controller transition", v6, 2u);
  }

  return a2();
}

uint64_t sub_100062C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100062CC8(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [a1 transitionCoordinator];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100062FE0;
    *(v14 + 24) = v8;
    aBlock[4] = sub_100063024;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100062C68;
    aBlock[3] = &unk_1000F0518;
    v15 = _Block_copy(aBlock);

    [v13 animateAlongsideTransition:0 completion:v15];
    _Block_release(v15);
    if (qword_100101680 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103840);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Navigation controller is in the middle of a transition, waiting for it to complete", v19, 2u);
    }

    swift_unknownObjectRelease();

    return;
  }

  sub_1000754B8();
  [v10 pushViewController:v11 animated:1];
  v20 = [v9 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  [v20 setNeedsLayout];

  v22 = [v9 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 layoutIfNeeded];
}

uint64_t sub_100062F98()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062FEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006302C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100063044()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103858);
  v1 = sub_100012AAC(v0, qword_100103858);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006310C()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v35 - v10);
  v12 = type metadata accessor for HomePodSetupPickerViewController(0);
  v36.receiver = v1;
  v36.super_class = v12;
  objc_msgSendSuper2(&v36, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v13, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_100101688 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100103858);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupPicker: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    if (qword_100101688 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100103858);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100016374(v9);
      v25 = sub_1000B08A0(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupPicker: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v9);
    }

    sub_100063A8C(v11);
    v26 = *(v11 + v5[10]);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v26, sub_10006584C, v27);

    v28 = *(v11 + v5[19]);
    if ((v28 & 2) == 0 && *(v11 + v5[20] + 8))
    {
      v29 = *(v11 + v5[19]);
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = String._bridgeToObjectiveC()();
      v33 = String._bridgeToObjectiveC()();
      v34 = [v1 dismissalConfirmationActionWithTitle:v30 message:v31 confirmButtonTitle:v32 cancelButtonTitle:v33];

      [v1 setDismissButtonAction:v34];
      v28 = v29;
    }

    [v1 setDismissalType:v28];
    sub_100016374(v11);
  }
}

char *sub_100063600(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = String._bridgeToObjectiveC()();
    [v6 showActivityIndicatorWithStatus:v7];
  }

  v8 = [v4 contentView];
  v9 = [v8 pickerView];

  v10 = [v9 selectedRowInComponent:0];
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = *&v4[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options];
  if (v10 >= *(v11 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000646E4(v11 + 40 * v10 + 32, v33);
  if (qword_100101688 != -1)
  {
LABEL_17:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100012AAC(v12, qword_100103858);
  sub_1000646E4(v33, &v29);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_10000FEC4(v2);
    v18 = sub_1000B08A0(v16, v17, v28);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = v31;
    sub_10000EC1C(&v29, v31);
    v20 = (*(*(&v19 + 1) + 16))(v19, *(&v19 + 1));
    v22 = v21;
    sub_10000E70C(&v29);
    v23 = sub_1000B08A0(v20, v22, v28);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "HomePodSetupPicker: User tapped on button: %s with selected option '%s'", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000E70C(&v29);
  }

  v24 = v34;
  v25 = v35;
  v26 = sub_10000EC1C(v33, v34);
  v28[3] = v24;
  v28[4] = *(v25 + 8);
  v27 = sub_100065854(v28);
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  LOBYTE(v29) = v2;
  sub_100012DA0(v28, &v30, &qword_1001025D0, &unk_1000BD010);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007A070(&v29);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100012E08(&v29);
  return sub_10000E70C(v33);
}

void sub_100063A8C(int *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  __chkstk_darwin(v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String._bridgeToObjectiveC()();
  [v2 setTitle:v7];

  v8 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v8];

  p_type = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options;
  *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options] = *(a1 + v4[12]);

  if (qword_100101688 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    sub_100012AAC(v10, qword_100103858);
    sub_100012AE4(a1, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v40[0] = p_type;
      v14 = v13;
      v15 = swift_slowAlloc();
      v43[0] = v15;
      *v14 = 136315138;
      v16 = (v6 + v4[47]);
      v17 = *v16;
      v18 = v16[1];

      sub_100016374(v6);
      v19 = sub_1000B08A0(v17, v18, v43);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "HomePodSetupPicker: systemNameIconForPickerView %s", v14, 0xCu);
      sub_10000E70C(v15);

      p_type = v40[0];
    }

    else
    {

      sub_100016374(v6);
    }

    v20 = (a1 + v4[47]);
    v21 = *v20;
    v22 = v20[1];
    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v24 = String._bridgeToObjectiveC()();
      v25 = [objc_opt_self() systemImageNamed:v24];
    }

    else
    {
      v25 = 0;
    }

    v26 = *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage];
    *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage] = v25;

    v28 = sub_100063F58(v27);

    if (!v28)
    {
      break;
    }

    a1 = v28[2];
    if (!a1)
    {
LABEL_29:

      v4 = 0;
      goto LABEL_34;
    }

    v4 = 0;
    v6 = 32;
    p_type = &stru_1000F9FF0.type;
    do
    {
      if (v4 >= v28[2])
      {
        __break(1u);
        goto LABEL_36;
      }

      v29 = *(v28 + v6);
      if (v29 && [v29 homeLocationStatus] == 1)
      {
LABEL_17:

        goto LABEL_34;
      }

      v4 = (v4 + 1);
      v6 += 16;
    }

    while (a1 != v4);
    v4 = 0;
    v36 = 4;
    while (v28[2] != v4)
    {
      if (!v28[v36])
      {
        goto LABEL_17;
      }

      v4 = (v4 + 1);
      v36 += 2;
      if (a1 == v4)
      {
        goto LABEL_29;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  sub_10000F25C(a1 + v4[14], &v41, &qword_100102350, &unk_1000BE1B0);
  if (v42)
  {
    v30 = sub_10000EC04(&v41, v43);
    v31 = *(p_type + v2);
    __chkstk_darwin(v30);
    v40[-2] = v43;

    v32 = *(v31 + 16);
    if (v32)
    {
      v4 = 0;
      v33 = (v31 + 32);
      while (1)
      {
        v34 = sub_1000646C4(v33);
        if (v34)
        {
          break;
        }

        v4 = (v4 + 1);
        v33 += 5;
        if (v32 == v4)
        {
          v4 = 0;
          break;
        }
      }

      v35 = v34 ^ 1;
    }

    else
    {
      v4 = 0;
      v35 = 1;
    }

    v37 = v35 & 1;

    sub_10000E70C(v43);
    if (v37)
    {
      v4 = 0;
    }
  }

  else
  {
    sub_10000EBA4(&v41, &qword_100102350, &unk_1000BE1B0);
    v4 = 0;
  }

LABEL_34:
  v38 = [v2 contentView];
  v39 = [v38 pickerView];

  [v39 selectRow:v4 inComponent:0 animated:0];
}

id *sub_100063F58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10008ECC8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1000646E4(i, v11);
      sub_10000E6C4(&qword_100102058, &unk_1000BD160);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10008ECC8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = (v6 + 1);
      v7 = &v3[2 * v6];
      v7[4] = v9;
      *(v7 + 40) = v10 & 1;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10006408C(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_10000EC1C(a1, v4);
  v5 = (*(*(v3 + 8) + 8))(v4);
  v7 = v6;
  v9 = a2[3];
  v8 = a2[4];
  sub_10000EC1C(a2, v9);
  if (v5 == (*(*(v8 + 8) + 8))(v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

id sub_1000642D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupPickerViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupPickerViewController(uint64_t a1)
{
  result = qword_1001038A8;
  if (!qword_1001038A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000643D8(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100064488(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1000644DC(int *a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  if (qword_100101688 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100103858);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupPicker: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if ([v2 isViewLoaded])
  {
    sub_100063A8C(a1);
  }
}

uint64_t sub_1000646E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100064748(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v121 - v8;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = [objc_allocWithZone(UILabel) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v12 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options;
  v13 = *(v1 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options);
  if (*(v13 + 16) <= a1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_1000646E4(v13 + 40 * a1 + 32, v131);
  v14 = sub_10000E6C4(&qword_100102058, &unk_1000BD160);
  v15 = swift_dynamicCast();
  v126 = v12;
  v123 = v7;
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = v128;
  if (BYTE8(v128) != 1)
  {

LABEL_9:
    v20 = *&v12[v2];
    if (*(v20 + 16) > a1)
    {
      sub_1000646E4(v20 + 40 * a1 + 32, v131);
      v21 = v132;
      v22 = v133;
      sub_10000EC1C(v131, v132);
      (*(v22 + 16))(v21, v22);
      v16 = String._bridgeToObjectiveC()();

      sub_10000E70C(v131);
      [v11 setText:v16];
      goto LABEL_11;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v11 setText:v18];

  v19 = [objc_opt_self() systemBlueColor];
  [v11 setTextColor:v19];

LABEL_11:
  [v11 setTextAlignment:1];
  [v11 setAdjustsFontSizeToFitWidth:1];
  v23 = [objc_opt_self() systemFontOfSize:20.0];
  [v11 setFont:v23];

  v24 = &selRef_initWithSystemImageNamed_;
  v127 = v11;
  [v10 addSubview:v11];
  v25 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage;
  v26 = *(v2 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage);
  if (!v26)
  {
    goto LABEL_15;
  }

  v124 = v14;
  v125 = v10;
  v27 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v2 + v27, v9, &qword_100103420, &unk_1000BCE90);
  v28 = type metadata accessor for HomePodSetupViewModel(0);
  v29 = *(*(v28 - 8) + 48);
  if (v29(v9, 1, v28))
  {
    sub_10000EBA4(v9, &qword_100103420, &unk_1000BCE90);
    v128 = 0u;
    v129 = 0u;
    v130 = 0;
LABEL_14:
    sub_10000EBA4(&v128, &qword_100102350, &unk_1000BE1B0);
    v10 = v125;
    goto LABEL_15;
  }

  sub_10000F25C(&v9[*(v28 + 56)], &v128, &qword_100102350, &unk_1000BE1B0);
  v64 = v26;
  sub_10000EBA4(v9, &qword_100103420, &unk_1000BCE90);
  if (!*(&v129 + 1))
  {

    goto LABEL_14;
  }

  v121 = v29;
  v122 = v64;
  sub_10000EC04(&v128, v131);
  v65 = *&v126[v2];
  if (*(v65 + 16) > a1)
  {
    sub_1000646E4(v65 + 40 * a1 + 32, &v128);
    v67 = *(&v129 + 1);
    v66 = v130;
    sub_10000EC1C(&v128, *(&v129 + 1));
    v68 = (*(*(v66 + 8) + 8))(v67);
    v70 = v69;
    v71 = v132;
    v72 = v133;
    sub_10000EC1C(v131, v132);
    if (v68 == (*(*(v72 + 8) + 8))(v71) && v70 == v73)
    {

      sub_10000E70C(&v128);
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000E70C(&v128);
      if ((v74 & 1) == 0)
      {

        sub_10000E70C(v131);
        v10 = v125;
        v24 = &selRef_initWithSystemImageNamed_;
LABEL_15:
        v132 = &type metadata for HomeDeviceSetupFeatureFlags;
        v133 = sub_100039FE0();
        LOBYTE(v131[0]) = 1;
        v30 = isFeatureEnabled(_:)();
        sub_10000E70C(v131);
        if ((v30 & 1) == 0 || (v31 = *(v2 + v25)) == 0)
        {
LABEL_33:
          v76 = objc_opt_self();
          sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_1000BD460;
          v78 = v127;
          v79 = [v127 topAnchor];
          v80 = [v10 topAnchor];
          v81 = [v79 constraintEqualToAnchor:v80];

          *(v77 + 32) = v81;
          v82 = [v78 leadingAnchor];
          v83 = [v10 leadingAnchor];
          v84 = [v82 constraintEqualToAnchor:v83];

          *(v77 + 40) = v84;
          v85 = [v78 bottomAnchor];
          v86 = [v10 bottomAnchor];
          v87 = [v85 constraintEqualToAnchor:v86];

          *(v77 + 48) = v87;
          v88 = [v78 trailingAnchor];

          v89 = [v10 trailingAnchor];
          v90 = [v88 constraintEqualToAnchor:v89];

          *(v77 + 56) = v90;
          sub_1000163D8();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v76 activateConstraints:isa];

          return;
        }

        v32 = *&v126[v2];
        if (*(v32 + 16) > a1)
        {
          sub_1000646E4(v32 + 40 * a1 + 32, v131);
          v33 = v31;
          if (swift_dynamicCast())
          {
            v34 = v128;
            if (v128)
            {
              if ([v128 homeLocationStatus] == 1)
              {
                v35 = v24;
                v36 = [objc_allocWithZone(UIImageView) initWithImage:v33];
                [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
                [v36 setContentMode:1];
                [v10 v35[220]];
                v126 = objc_opt_self();
                sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
                v37 = v10;
                v38 = swift_allocObject();
                *(v38 + 16) = xmmword_1000BCF90;
                v39 = v127;
                v40 = [v127 topAnchor];
                v41 = [v37 topAnchor];
                v42 = [v40 constraintEqualToAnchor:v41];

                *(v38 + 32) = v42;
                v43 = [v39 centerXAnchor];
                v44 = [v37 centerXAnchor];
                v45 = [v43 constraintEqualToAnchor:v44];

                *(v38 + 40) = v45;
                v46 = [v39 bottomAnchor];
                v47 = [v37 bottomAnchor];
                v48 = [v46 constraintEqualToAnchor:v47];

                *(v38 + 48) = v48;
                v49 = [v39 trailingAnchor];

                v50 = [v36 leadingAnchor];
                v51 = [v49 constraintEqualToAnchor:v50];

                *(v38 + 56) = v51;
                v52 = [v36 topAnchor];
                v53 = [v37 topAnchor];
                v54 = [v52 constraintEqualToAnchor:v53 constant:2.0];

                *(v38 + 64) = v54;
                v55 = [v36 centerYAnchor];
                v56 = [v37 centerYAnchor];
                v57 = [v55 constraintEqualToAnchor:v56];

                *(v38 + 72) = v57;
                v58 = [v36 bottomAnchor];
                v59 = [v37 bottomAnchor];
                v60 = [v58 constraintLessThanOrEqualToAnchor:v59 constant:2.0];

                *(v38 + 80) = v60;
                v61 = [v36 widthAnchor];

                v62 = [v61 constraintEqualToConstant:35.0];
                *(v38 + 88) = v62;
                sub_1000163D8();
                v63 = Array._bridgeToObjectiveC()().super.isa;

                [v126 activateConstraints:v63];

                return;
              }
            }
          }

          goto LABEL_33;
        }

        goto LABEL_42;
      }
    }

    v75 = v123;
    sub_10000F25C(v2 + v27, v123, &qword_100103420, &unk_1000BCE90);
    v24 = &selRef_initWithSystemImageNamed_;
    if (v121(v75, 1, v28))
    {

      sub_10000EBA4(v75, &qword_100103420, &unk_1000BCE90);
      v10 = v125;
    }

    else
    {
      v92 = *(v75 + *(v28 + 192));
      sub_10000EBA4(v75, &qword_100103420, &unk_1000BCE90);
      v10 = v125;
      if (v92)
      {
        v93 = objc_allocWithZone(UIImageView);
        v94 = [v93 initWithImage:v122];
        [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v94 setContentMode:1];
        [v10 addSubview:v94];
        v126 = objc_opt_self();
        sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_1000BCF90;
        v96 = v127;
        v97 = [v127 topAnchor];
        v98 = [v10 topAnchor];
        v99 = [v97 constraintEqualToAnchor:v98];

        *(v95 + 32) = v99;
        v100 = [v96 leadingAnchor];
        v101 = [v125 leadingAnchor];
        v102 = [v100 constraintEqualToAnchor:v101];

        *(v95 + 40) = v102;
        v103 = [v96 bottomAnchor];
        v104 = [v125 bottomAnchor];
        v105 = [v103 constraintEqualToAnchor:v104];

        *(v95 + 48) = v105;
        v106 = [v96 trailingAnchor];

        v107 = [v94 leadingAnchor];
        v108 = [v106 constraintEqualToAnchor:v107];

        *(v95 + 56) = v108;
        v109 = [v94 topAnchor];
        v110 = [v125 topAnchor];
        v111 = [v109 constraintEqualToAnchor:v110 constant:5.0];

        *(v95 + 64) = v111;
        v112 = [v94 centerYAnchor];
        v113 = [v125 centerYAnchor];
        v114 = [v112 constraintEqualToAnchor:v113];

        *(v95 + 72) = v114;
        v115 = [v94 bottomAnchor];
        v116 = [v125 bottomAnchor];
        v117 = [v115 constraintLessThanOrEqualToAnchor:v116 constant:5.0];

        *(v95 + 80) = v117;
        v118 = [v94 widthAnchor];

        v119 = [v118 constraintEqualToConstant:35.0];
        *(v95 + 88) = v119;
        sub_1000163D8();
        v120 = Array._bridgeToObjectiveC()().super.isa;

        [v126 activateConstraints:v120];

        sub_10000E70C(v131);
        return;
      }
    }

    sub_10000E70C(v131);
    goto LABEL_15;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_100065814()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100065854(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 sub_1000658B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000658D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006591C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100065980(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v8 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v11 && v14 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100065AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = String._bridgeToObjectiveC()();
  v10 = CUAddSuffixForCurrentDeviceClass();

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11._countAndFlagsBits = 0x444F50454D4F485FLL;
    v11._object = 0xE800000000000000;
    String.append(_:)(v11);

    v12 = String._bridgeToObjectiveC()();
    v13 = sub_100006658(v12);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();

    v15 = sub_100006658(v14);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();

    v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

    v19 = String._bridgeToObjectiveC()();
    v20 = sub_100006658(v19);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = v21;
    sub_100061704(a3, a4);

    v23 = String._bridgeToObjectiveC()();

    v42 = sub_1000664FC;
    v43 = v22;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10003DFD0;
    v41 = &unk_1000F0670;
    v24 = _Block_copy(&aBlock);

    v25 = objc_opt_self();
    v26 = v5;
    v27 = [v25 actionWithTitle:v23 style:0 handler:v24];
    _Block_release(v24);

    [v18 addAction:v27];
    v28 = String._bridgeToObjectiveC()();
    v29 = sub_100006658(v28);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a2;
    sub_100061704(a1, a2);
    v31 = String._bridgeToObjectiveC()();

    v42 = sub_100066560;
    v43 = v30;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10003DFD0;
    v41 = &unk_1000F06C0;
    v32 = _Block_copy(&aBlock);

    v33 = [v25 actionWithTitle:v31 style:1 handler:v32];
    _Block_release(v32);

    [v18 addAction:v33];
    [v18 setPreferredAction:v27];
    v34 = v26;
    v35 = [v34 presentedViewController];
    if (v35)
    {
      do
      {
        v36 = v35;

        v35 = [v36 presentedViewController];
        v34 = v36;
      }

      while (v35);
    }

    else
    {
      v36 = v34;
    }

    [v36 presentViewController:v18 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100065FD4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2(a1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 presentingViewController];
    v7 = v5;
    if (v6)
    {
      v8 = v5;
      do
      {
        v7 = v6;

        v6 = [v7 presentingViewController];
        v8 = v7;
      }

      while (v6);
    }

    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000660A0(uint64_t *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = CUAddSuffixForCurrentDeviceClass();

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4._countAndFlagsBits = 0x444F50454D4F485FLL;
    v4._object = 0xE800000000000000;
    String.append(_:)(v4);

    v5 = String._bridgeToObjectiveC()();
    v6 = sub_100006658(v5);

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = String._bridgeToObjectiveC()();

    v11 = sub_100006658(v10);

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = String._bridgeToObjectiveC()();
    v16 = sub_100006658(v15);

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = String._bridgeToObjectiveC()();
    v21 = sub_100006658(v20);

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *a1 = v7;
    a1[1] = v9;
    a1[2] = v12;
    a1[3] = v14;
    a1[4] = v17;
    a1[5] = v19;
    a1[6] = v22;
    a1[7] = v24;
    a1[8] = 0;
    a1[9] = 0xE000000000000000;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006629C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000BD050;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100039F8C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = String.init(format:_:)();
  v11 = v10;

  v12 = String._bridgeToObjectiveC()();
  v13 = sub_100006658(v12);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *a3 = v14;
  a3[1] = v16;
  a3[2] = v9;
  a3[3] = v11;
  a3[4] = v19;
  a3[5] = v21;
  a3[6] = v24;
  a3[7] = v26;
  a3[8] = 0;
  a3[9] = 0xE000000000000000;
}

uint64_t sub_10006647C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000664B4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066508(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100066520()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066560()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1000665E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  strcpy(&v17, "language_");

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 1031365995;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);

  _StringGuts.grow(_:)(16);

  strcpy(&v16, "displayValue=");
  HIWORD(v16._object) = -4864;

  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  String.append(_:)(v16);

  _StringGuts.grow(_:)(16);

  strcpy(&v17, "siriLanguage=");
  HIWORD(v17._object) = -4864;
  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  String.append(_:)(v17);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);

  return 0xD000000000000010;
}

void sub_1000668A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100066918()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001038C0);
  v1 = sub_100012AAC(v0, qword_1001038C0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000669E0()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for HomePodSetupAppleMusicViewController(0);
  v27.receiver = v1;
  v27.super_class = v12;
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_viewModel;
  swift_beginAccess();
  sub_100016238(v1 + v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000162A8(v4);
    if (qword_100101690 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_1001038C0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupAppleMusicViewController: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    if (qword_100101690 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_1001038C0);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100016374(v9);
      v25 = sub_1000B08A0(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupAppleMusicViewController: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v9);
    }

    [v1 setDismissalType:*&v11[*(v5 + 76)]];
    sub_100016374(v11);
  }
}

void sub_100066DE0(char a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for HomePodSetupAppleMusicViewController(0);
  objc_msgSendSuper2(&v25, "viewWillAppear:", a1 & 1);
  v23 = [objc_allocWithZone(SKCloudServiceSetupViewController) init];
  [v23 setDelegate:v1];
  sub_10000E6C4(&unk_100103980, &qword_1000BE388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD310;
  *(inited + 32) = SKCloudServiceSetupOptionsActionKey;
  type metadata accessor for SKCloudServiceSetupAction(0);
  *(inited + 40) = SKCloudServiceSetupActionSubscribe;
  *(inited + 64) = v4;
  *(inited + 72) = SKCloudServiceSetupOptionsMessageIdentifierKey;
  type metadata accessor for SKCloudServiceSetupMessageIdentifier(0);
  *(inited + 80) = SKCloudServiceSetupMessageIdentifierJoin;
  v5 = _SKCloudServiceSetupOptionsAudioAccessorySerialNumberKey;
  *(inited + 104) = v6;
  *(inited + 112) = v5;
  v7 = v1;
  v22 = v1;
  v8 = *&v1[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceSerialNumber + 8];
  *(inited + 120) = *&v1[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceSerialNumber];
  *(inited + 128) = v8;
  v9 = _SKCloudServiceSetupOptionsAudioAccessoryUniqueDeviceIdentifierKey;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = v9;
  v10 = *&v7[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceGUID];
  v11 = *&v7[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceGUID + 8];
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  v12 = SKCloudServiceSetupOptionsActionKey;
  v13 = SKCloudServiceSetupActionSubscribe;
  v14 = SKCloudServiceSetupOptionsMessageIdentifierKey;
  v15 = SKCloudServiceSetupMessageIdentifierJoin;
  v16 = v5;

  v17 = v9;

  sub_10000E758(inited);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001019A0, &qword_1000BC270);
  swift_arrayDestroy();
  type metadata accessor for SKCloudServiceSetupOptionsKey(0);
  sub_1000682C8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100068358;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000668A0;
  aBlock[3] = &unk_1000F07E0;
  v20 = _Block_copy(aBlock);

  [v23 loadWithOptions:isa completionHandler:v20];
  _Block_release(v20);

  v21 = *&v22[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic];
  *&v22[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic] = v23;
}

void sub_1000670B8(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_1001038C0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2080;
    sub_10000E6C4(&unk_1001035D8, &unk_1000BDD90);
    v9 = Optional.debugDescription.getter();
    v11 = sub_1000B08A0(v9, v10, v14);

    *(v7 + 10) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupAppleMusicViewController: AppleMusic load view Controller completion called with results:%{BOOL}d error:%s", v7, 0x12u);
    sub_10000E70C(v8);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_100067348();
  }
}

void sub_100067348()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  isa = v5[-1].isa;
  __chkstk_darwin(v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100012AAC(v9, qword_1001038C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "HomePodSetupAppleMusicViewController: AppleMusic show StoreKit view\n", v12, 2u);
  }

  v13 = *&v0[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic];
  if (v13)
  {
    v14 = v13;
    v15 = [v14 view];
    if (v15)
    {
      v16 = v15;
      v58 = v8;
      [v0 addChildViewController:v14];
      v17 = [v0 contentView];
      [v17 addSubview:v16];

      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = [v1 contentView];
      [v18 cardStyle];

      v19 = [v1 traitCollection];
      [v19 prx_cardSizeClass];

      PRXCardPreferredSize();
      v21 = v20;
      v60 = objc_opt_self();
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000BD420;
      v23 = [v1 contentView];
      v24 = [v23 heightAnchor];
      v61 = v5;
      v25 = v24;

      v26 = [v25 constraintEqualToConstant:v21];
      *(v22 + 32) = v26;
      v27 = [v16 topAnchor];
      v59 = v14;
      v28 = [v1 contentView];
      v29 = [v28 topAnchor];

      v30 = [v27 constraintEqualToAnchor:v29];
      *(v22 + 40) = v30;
      v31 = [v16 bottomAnchor];
      v32 = [v1 contentView];
      v33 = [v32 bottomAnchor];

      v34 = [v31 constraintEqualToAnchor:v33];
      *(v22 + 48) = v34;
      v35 = [v16 leadingAnchor];
      v36 = [v1 contentView];
      v37 = [v36 leadingAnchor];

      v38 = [v35 constraintEqualToAnchor:v37];
      *(v22 + 56) = v38;
      v39 = [v16 trailingAnchor];
      v40 = v59;
      v41 = [v1 contentView];
      v42 = [v41 trailingAnchor];

      v43 = [v39 constraintEqualToAnchor:v42];
      v44 = v61;
      *(v22 + 64) = v43;
      sub_1000163D8();
      v45 = Array._bridgeToObjectiveC()().super.isa;

      [v60 activateConstraints:v45];

      [v40 didMoveToParentViewController:v1];
      v46 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_viewModel;
      swift_beginAccess();
      sub_100016238(v1 + v46, v4);
      if ((*(isa + 6))(v4, 1, v44) == 1)
      {

        sub_1000162A8(v4);
      }

      else
      {
        v50 = v58;
        sub_100016310(v4, v58);
        if ((*(v50 + SHIDWORD(v44[9].isa)) & 2) == 0)
        {
          v51 = v50 + SLODWORD(v44[10].isa);
          if (*(v51 + 8))
          {
            v61 = *(v51 + 40);
            v52 = String._bridgeToObjectiveC()();
            v53 = String._bridgeToObjectiveC()();
            v54 = String._bridgeToObjectiveC()();
            v55 = String._bridgeToObjectiveC()();
            v56 = [v1 dismissalConfirmationActionWithTitle:v52 message:v53 confirmButtonTitle:v54 cancelButtonTitle:v55];

            [v1 setDismissButtonAction:v56];
          }
        }

        sub_100016374(v50);
      }

      return;
    }
  }

  v61 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v61, v47, "HomePodSetupAppleMusicViewController: AppleMusic controller was not initilized properly", v48, 2u);
  }

  v49 = v61;
}

id sub_100067AF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupAppleMusicViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupAppleMusicViewController(uint64_t a1)
{
  result = qword_100103908;
  if (!qword_100103908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100067C04(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100067CB4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_100067D08()
{
  v1 = v0;
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_1001038C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupAppleMusicViewController: AppleMusic hide StoreKit view\n", v5, 2u);
  }

  v6 = *&v0[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic];
  if (v6)
  {
    v12 = v6;
    [v12 willMoveToParentViewController:0];
    v7 = [v12 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    [v7 removeFromSuperview];

    v9 = [v1 presentingViewController];
    [v9 removeFromParentViewController];

    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      memset(v16, 0, sizeof(v16));
      v15[0] = 1;
      sub_100012DA0(v13, v16, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(v15);

      swift_unknownObjectRelease();
      sub_100012E08(v15);
      return;
    }
  }

  else
  {
    v12 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v12, v10, "HomePodSetupAppleMusicViewController: AppleMusic controller was not initilized properly", v11, 2u);
    }
  }
}

id sub_100067FE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_1001038C0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupAppleMusicViewController: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    return [v2 setDismissalType:*(a1 + *(v11 + 76))];
  }

  return result;
}

void sub_1000681DC()
{
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_1001038C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "HomePodSetupAppleMusicViewController: SKCloudServiceSetupViewController dismissed.\n", v3, 2u);
  }

  sub_100067D08();
}

unint64_t sub_1000682C8()
{
  result = qword_100103990;
  if (!qword_100103990)
  {
    type metadata accessor for SKCloudServiceSetupOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103990);
  }

  return result;
}

uint64_t sub_100068320()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068378()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103998);
  v1 = sub_100012AAC(v0, qword_100103998);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100068440()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v65 - v10;
  v12 = type metadata accessor for HomePodSetupLeftRightViewController(0);
  v70.receiver = v1;
  v70.super_class = v12;
  objc_msgSendSuper2(&v70, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_viewModel;
  swift_beginAccess();
  sub_100016238(&v1[v13], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000162A8(v4);
    if (qword_100101698 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100103998);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupLeftRight: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    if (qword_100101698 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100103998);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v69 = v22;
      *v21 = 136315138;
      v23 = v5;
      v24 = *v9;
      v25 = v9[1];

      sub_100016374(v9);
      v26 = v24;
      v5 = v23;
      v27 = sub_1000B08A0(v26, v25, &v69);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupLeftRight: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v9);
    }

    v68 = v5;
    v28 = String._bridgeToObjectiveC()();
    [v1 setTitle:v28];

    v29 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v29];

    v67 = *&v11[*(v5 + 76)];
    [v1 setDismissalType:?];
    v30 = *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_buttonStackView];
    [v30 setAxis:0];
    [v30 setSpacing:20.0];
    [v30 setSemanticContentAttribute:2];
    v31 = [v1 contentView];
    [v31 addSubview:v30];

    v32 = *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_leftButton];
    v33 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v34 = swift_allocObject();
    v65 = xmmword_1000BCE00;
    *(v34 + 16) = xmmword_1000BCE00;
    v35 = [v32 widthAnchor];
    v36 = [v35 constraintEqualToConstant:96.0];

    *(v34 + 32) = v36;
    v66 = sub_1000163D8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 activateConstraints:isa];

    [v32 addTarget:v1 action:"leftButtonPressed:" forControlEvents:64];
    [v30 addArrangedSubview:v32];
    v38 = *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_rightButton];
    v39 = swift_allocObject();
    *(v39 + 16) = v65;
    v40 = [v38 widthAnchor];
    v41 = [v40 constraintEqualToConstant:96.0];

    *(v39 + 32) = v41;
    v42 = Array._bridgeToObjectiveC()().super.isa;

    v43 = v33;
    [v33 activateConstraints:v42];

    [v38 addTarget:v1 action:"rightButtonPressed:" forControlEvents:64];
    [v30 addArrangedSubview:v38];
    v44 = [v1 contentView];
    v45 = [v44 mainContentGuide];

    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000BD430;
    v47 = [v30 topAnchor];
    v48 = [v45 topAnchor];
    v49 = [v47 constraintGreaterThanOrEqualToAnchor:v48];

    *(v46 + 32) = v49;
    v50 = [v30 centerYAnchor];
    v51 = [v45 centerYAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];

    *(v46 + 40) = v52;
    v53 = [v30 centerXAnchor];
    v54 = [v45 centerXAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];

    *(v46 + 48) = v55;
    v56 = Array._bridgeToObjectiveC()().super.isa;
    v57 = v68;

    [v43 activateConstraints:v56];

    v58 = *&v11[*(v57 + 40)];
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v58, sub_1000699EC, v59);

    if ((v67 & 2) == 0 && *&v11[*(v57 + 80) + 8])
    {
      v60 = String._bridgeToObjectiveC()();
      v61 = String._bridgeToObjectiveC()();
      v62 = String._bridgeToObjectiveC()();
      v63 = String._bridgeToObjectiveC()();
      v64 = [v1 dismissalConfirmationActionWithTitle:v60 message:v61 confirmButtonTitle:v62 cancelButtonTitle:v63];

      [v1 setDismissButtonAction:v64];
    }

    sub_100016374(v11);
  }
}

void sub_100068D78(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = String._bridgeToObjectiveC()();
    [v4 showActivityIndicatorWithStatus:v5];
  }

  if (qword_100101698 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100103998);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_10000FEC4(v2);
    v13 = sub_1000B08A0(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupLeftRight: User tapped on button: %s", v9, 0xCu);
    sub_10000E70C(v10);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = swift_unknownObjectWeakLoadStrong();

    if (v16)
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      memset(v20, 0, sizeof(v20));
      LOBYTE(v19) = v2;
      sub_100012DA0(v17, v20, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v19);
      swift_unknownObjectRelease();
      sub_100012E08(&v19);
    }
  }
}

id sub_1000691A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupLeftRightViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupLeftRightViewController(uint64_t a1)
{
  result = qword_1001039F8;
  if (!qword_1001039F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000692A8(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100069354(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1000693A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (qword_100101698 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100103998);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupLeftRight: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    v14 = String._bridgeToObjectiveC()();
    [v2 setTitle:v14];

    v15 = String._bridgeToObjectiveC()();
    [v2 setSubtitle:v15];

    return [v2 setDismissalType:*(a1 + *(v11 + 76))];
  }

  return result;
}

uint64_t sub_1000695E8(const char *a1, char a2)
{
  if (qword_100101698 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100103998);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    memset(v12, 0, sizeof(v12));
    v11[0] = a2;
    sub_100012DA0(v9, v12, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v11);
    swift_unknownObjectRelease();
    return sub_100012E08(v11);
  }

  return result;
}

id sub_100069740(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_buttonStackView;
  *&v2[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_leftButton;
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = type metadata accessor for StereoPairButton();
  v17 = objc_allocWithZone(v16);
  *&v2[v5] = sub_1000617BC(v8, v10, v13, v15);
  v18 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_rightButton;
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_100006658(v19);

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = String._bridgeToObjectiveC()();
  v25 = sub_100006658(v24);

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = objc_allocWithZone(v16);
  *&v2[v18] = sub_1000617BC(v21, v23, v26, v28);
  v30 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_viewModel;
  v31 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v31 - 8) + 56))(&v2[v30], 1, 1, v31);
  v33.receiver = v2;
  v33.super_class = type metadata accessor for HomePodSetupLeftRightViewController(0);
  return objc_msgSendSuper2(&v33, "initWithContentView:", a1);
}

uint64_t sub_1000699B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000699F4(uint64_t a1)
{
  v45.receiver = v1;
  v45.super_class = type metadata accessor for HomePodPrivacyConsentViewController();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [objc_allocWithZone(type metadata accessor for HomePodSetupPrivacyConsentView()) init];
  v5 = OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView;
  v6 = *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView];
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView] = v4;
  v7 = v4;

  v8 = v7;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 addSubview:v8];

  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000BD420;
  v12 = [v8 topAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor:v15];
  *(v11 + 32) = v16;
  v17 = [v8 leadingAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v11 + 40) = v21;
  v22 = [v8 bottomAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [v23 bottomAnchor];

  v26 = [v22 constraintEqualToAnchor:v25];
  *(v11 + 48) = v26;
  v27 = [v8 trailingAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v11 + 56) = v31;
  v32 = [v8 heightAnchor];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 heightAnchor];

  v37 = [v32 constraintEqualToAnchor:v36];
  *(v11 + 64) = v37;
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];

  v39 = *&v1[v5];
  if (v39)
  {
    v40 = *(v39 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_doneButton);
    sub_10003AE18(0, &unk_100102630, UIAction_ptr);
    v41 = swift_allocObject();
    *(v41 + 16) = v1;
    v42 = v40;
    v43 = v1;
    v44 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v42 addAction:v44 forControlEvents:{64, 0, 0, 0, sub_100012D88, v41}];
  }
}

char *sub_10006A094()
{
  v1 = [objc_opt_self() buttonWithType:1];
  *&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_doneButton] = v1;
  v2 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
  *&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_titleLabel] = v2;
  v3 = [objc_allocWithZone(PRXTextView) initWithStyle:3];
  *&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_textView] = v3;
  v82.receiver = v0;
  v82.super_class = type metadata accessor for HomePodSetupPrivacyConsentView();
  v4 = objc_msgSendSuper2(&v82, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_doneButton;
  [*&v6[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_doneButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *&v6[v8];
  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v9 setTitle:v11 forState:0];

  v12 = *&v6[v8];
  v13 = [v5 systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_titleLabel;
  [*&v6[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = *&v6[v14];
  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100006658(v16);

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v15 setText:v17];

  [*&v6[v14] setAdjustsFontSizeToFitWidth:1];
  [*&v6[v14] setTextAlignment:1];
  v18 = *&v6[v14];
  v19 = [v5 secondarySystemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [*&v6[v14] layer];
  [v20 setCornerRadius:10.0];

  v21 = [*&v6[v14] layer];
  [v21 setMasksToBounds:1];

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24._countAndFlagsBits = 2570;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25 = String._bridgeToObjectiveC()();
  v26 = sub_100006658(v25);

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_textView;
  [*&v6[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_textView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = *&v6[v31];
  v33 = String._bridgeToObjectiveC()();

  [v32 setText:v33];

  [*&v6[v31] setTextAlignment:0];
  v34 = *&v6[v31];
  v35 = [v5 secondarySystemBackgroundColor];
  [v34 setBackgroundColor:v35];

  v36 = [*&v6[v31] textContainer];
  [v36 setLineBreakMode:0];

  v37 = *&v6[v31];
  v38 = [v5 labelColor];
  [v37 setTextColor:v38];

  [*&v6[v31] setTextContainerInset:{30.0, 20.0, 10.0, 20.0}];
  [*&v6[v31] setScrollEnabled:1];
  v39 = *&v6[v31];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 preferredFontForTextStyle:UIFontTextStyleBody];
  [v41 setFont:v42];

  v43 = [*&v6[v31] layer];
  [v43 setCornerRadius:10.0];

  v44 = [*&v6[v31] layer];
  [v44 setMasksToBounds:1];

  [v6 addSubview:*&v6[v8]];
  [v6 addSubview:*&v6[v14]];
  [v6 addSubview:*&v6[v31]];
  v81 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1000BD020;
  v46 = [*&v6[v8] topAnchor];
  v47 = [v6 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:0.0];

  *(v45 + 32) = v48;
  v49 = [*&v6[v8] trailingAnchor];
  v50 = [v6 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-10.0];

  *(v45 + 40) = v51;
  v52 = [*&v6[v8] widthAnchor];
  v53 = [v52 constraintEqualToConstant:60.0];

  *(v45 + 48) = v53;
  v54 = [*&v6[v8] heightAnchor];
  v55 = [v54 constraintEqualToConstant:40.0];

  *(v45 + 56) = v55;
  v56 = [*&v6[v14] topAnchor];
  v57 = [*&v6[v8] bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:0.0];

  *(v45 + 64) = v58;
  v59 = [*&v6[v14] leadingAnchor];
  v60 = [v6 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:10.0];

  *(v45 + 72) = v61;
  v62 = [*&v6[v14] trailingAnchor];
  v63 = [v6 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-10.0];

  *(v45 + 80) = v64;
  v65 = [*&v6[v14] heightAnchor];
  v66 = [v65 constraintEqualToConstant:100.0];

  *(v45 + 88) = v66;
  v67 = [*&v6[v31] topAnchor];
  v68 = [*&v6[v14] bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:10.0];

  *(v45 + 96) = v69;
  v70 = [*&v6[v31] leadingAnchor];
  v71 = [v6 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:10.0];

  *(v45 + 104) = v72;
  v73 = [*&v6[v31] bottomAnchor];
  v74 = [v6 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-20.0];

  *(v45 + 112) = v75;
  v76 = [*&v6[v31] trailingAnchor];
  v77 = [v6 trailingAnchor];

  v78 = [v76 constraintEqualToAnchor:v77 constant:-10.0];
  *(v45 + 120) = v78;
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:isa];

  return v6;
}

id sub_10006AC9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006AD54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006AD8C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103A78);
  v1 = sub_100012AAC(v0, qword_100103A78);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006AE54()
{
  v1 = v0;
  v2 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v2 - 8);
  v4 = &v72 - v3;
  v5 = type metadata accessor for AdjustedImage(0);
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v72 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v7 - 8);
  v9 = &v72 - v8;
  v10 = type metadata accessor for HomePodSetupViewModel(0);
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v14 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v72 - v15;
  v17 = type metadata accessor for HomePodSetupSiriWelcomeViewController(0);
  v77.receiver = v1;
  v77.super_class = v17;
  objc_msgSendSuper2(&v77, "viewDidLoad");
  v18 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v18, v9, &qword_100103420, &unk_1000BCE90);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_10006CCD4(v9, v16, type metadata accessor for HomePodSetupViewModel);
    if (qword_1001016A0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100012AAC(v23, qword_100103A78);
    sub_100012AE4(v16, v14);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v73 = v16;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = v28;
      *v27 = 136315138;
      v30 = *v14;
      v29 = v14[1];

      sub_10003A960(v14, type metadata accessor for HomePodSetupViewModel);
      v31 = sub_1000B08A0(v30, v29, &v76);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "HomePodSetupSiriWelcome: viewDidLoad with title %s", v27, 0xCu);
      sub_10000E70C(v28);
      v16 = v73;
    }

    else
    {

      sub_10003A960(v14, type metadata accessor for HomePodSetupViewModel);
    }

    sub_10006BCE0(v16);
    v32 = *&v16[v10[10]];
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v32, sub_10006CCCC, v33);

    v34 = v75;
    if ((v16[v10[19]] & 2) == 0 && *&v16[v10[20] + 8])
    {
      v35 = String._bridgeToObjectiveC()();
      v36 = String._bridgeToObjectiveC()();
      v37 = String._bridgeToObjectiveC()();
      v16 = v73;
      v38 = String._bridgeToObjectiveC()();
      v39 = [v1 dismissalConfirmationActionWithTitle:v35 message:v36 confirmButtonTitle:v37 cancelButtonTitle:v38];

      v34 = v75;
      [v1 setDismissButtonAction:v39];
    }

    sub_10000F25C(&v16[v10[28]], v4, &unk_100102610, &unk_1000BD130);
    if ((*(v74 + 48))(v4, 1, v34) != 1)
    {
      v46 = v72;
      sub_10006CCD4(v4, v72, type metadata accessor for AdjustedImage);
      v47 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v46];
      sub_100083828(v46 + *(v34 + 20));
      [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
      v48 = [v1 contentView];
      [v48 addSubview:v47];

      sub_10003A960(v46, type metadata accessor for AdjustedImage);
      v40 = v47;
LABEL_26:
      v51 = [v1 contentView];
      v52 = [v51 mainContentGuide];

      v53 = objc_opt_self();
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1000BD420;
      v55 = [v40 topAnchor];
      v56 = [v52 topAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];

      *(v54 + 32) = v57;
      v58 = [v40 leadingAnchor];
      v59 = [v52 leadingAnchor];
      v60 = [v58 constraintGreaterThanOrEqualToAnchor:v59];

      *(v54 + 40) = v60;
      v61 = [v40 trailingAnchor];
      v62 = [v52 trailingAnchor];
      v63 = [v61 constraintLessThanOrEqualToAnchor:v62];

      *(v54 + 48) = v63;
      v64 = [v40 centerXAnchor];
      v65 = [v52 centerXAnchor];
      v66 = [v64 constraintEqualToAnchor:v65];

      *(v54 + 56) = v66;
      v67 = [v40 bottomAnchor];

      v68 = [v52 bottomAnchor];
      v69 = [v67 constraintEqualToAnchor:v68];

      *(v54 + 64) = v69;
      sub_1000163D8();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v53 activateConstraints:isa];

      sub_10003A960(v73, type metadata accessor for HomePodSetupViewModel);
      return;
    }

    sub_10000EBA4(v4, &unk_100102610, &unk_1000BD130);
    v40 = [objc_allocWithZone(UIImageView) init];
    v41 = *&v16[v10[11]];
    if (v41 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v41 & 0xC000000000000001) != 0)
      {
        v71 = v40;
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v42 = *(v41 + 32);
        v43 = v40;
        v44 = v42;
      }

      v45 = v44;
      goto LABEL_25;
    }

    v49 = v40;
    v45 = 0;
LABEL_25:
    [v40 setImage:v45];

    v50 = [v1 contentView];
    [v50 addSubview:v40];

    goto LABEL_26;
  }

  sub_10000EBA4(v9, &qword_100103420, &unk_1000BCE90);
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100012AAC(v19, qword_100103A78);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "HomePodSetupSiriWelcome: viewDidLoad failed because viewModel not set.", v22, 2u);
  }
}

void sub_10006B8D4(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103A78);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupSiriWelcome: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      memset(v17, 0, sizeof(v17));
      LOBYTE(v16) = v2;
      sub_100012DA0(v14, v17, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v16);
      swift_unknownObjectRelease();
      sub_100012E08(&v16);
    }
  }
}

void sub_10006BB88(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HomePodSetupSiriWelcomeViewController(0);
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103A78);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupSiriWelcome: viewWillDisappear was called.", v6, 2u);
  }
}

id sub_10006BCE0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1 + *(v5 + 72);
  if (*(v8 + 4))
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8;
  }

  sub_10006C400(v9);
  v10 = String.init(cString:)();
  v12 = v11;
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100012AAC(v13, qword_100103A78);
  sub_100012AE4(a1, v7);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v16 = 136315394;
    v17 = v2;
    v26 = v10;
    v19 = *v7;
    v18 = v7[1];

    sub_10003A960(v7, type metadata accessor for HomePodSetupViewModel);
    v20 = v19;
    v2 = v17;
    v21 = sub_1000B08A0(v20, v18, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_1000B08A0(v26, v12, &v28);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "HomePodSetupSiriWelcome: configureUI called with title %s progressEvent=%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10003A960(v7, type metadata accessor for HomePodSetupViewModel);
  }

  v23 = String._bridgeToObjectiveC()();
  [v2 setTitle:v23];

  return [v2 setDismissalType:*(a1 + *(v4 + 76))];
}

id sub_10006C04C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupSiriWelcomeViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupSiriWelcomeViewController(uint64_t a1)
{
  result = qword_100103AC0;
  if (!qword_100103AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C128(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10006C1C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_10006C218(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100103A78);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupSiriWelcome: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    return sub_10006BCE0(a1);
  }

  return result;
}

const char *sub_10006C400(int a1)
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

uint64_t sub_10006CC94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006CD3C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103AD0);
  v1 = sub_100012AAC(v0, qword_100103AD0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10006CE04()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100012B48(v0, qword_100103AE8);
  *sub_100012AAC(v0, qword_100103AE8) = 1;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id sub_10006CE94(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_viewModel;
  v9 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = objc_allocWithZone(type metadata accessor for SVSHomePodIDViewController());
  v11 = sub_1000916E8(v3 == 5);
  v12 = qword_1001016A8;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_100012AAC(v4, qword_100103AD0);
  v15 = *(v5 + 16);
  v15(v7, v14, v4);
  v15(&v2[OBJC_IVAR____TtC14HDSViewService21ScannerViewController_log], v7, v4);
  type metadata accessor for SVSLPCActivityIndicatorViewController();
  *&v2[OBJC_IVAR____TtC14HDSViewService21ScannerViewController_viewfinderViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = &v2[OBJC_IVAR____TtC14HDSViewService21ScannerViewController_scannerEngineViewController];
  *v16 = v13;
  *(v16 + 1) = &off_1000F08D0;
  v17 = [objc_allocWithZone(PRXCardContentView) initWithCardStyle:0];
  v18 = type metadata accessor for ScannerViewController(0);
  v25.receiver = v2;
  v25.super_class = v18;
  v19 = objc_msgSendSuper2(&v25, "initWithContentView:", v17);

  (*(v5 + 8))(v7, v4);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = &v13[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler];
  v22 = *&v13[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler];
  v23 = *&v13[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler + 8];
  *v21 = sub_10006EF38;
  v21[1] = v20;

  sub_100061714(v22, v23);

  return v19;
}

void sub_10006D170(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10006E274();
  }

  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103AD0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupBaseScannerViewController handler called", v6, 2u);
  }
}

void sub_10006D280()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for HomePodSetupVisualAuthViewController(0);
  v35.receiver = v1;
  v35.super_class = v12;
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_viewModel;
  swift_beginAccess();
  sub_100016238(v1 + v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100103AD0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupVisualAuthViewController: failed in viewDidLoad because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    if (qword_1001016A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100103AD0);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100016374(v9);
      v25 = sub_1000B08A0(v23, v24, &v34);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupVisualAuthViewController: viewDidLoad called with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v9);
    }

    v26 = *&v11[v5[10]];
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v26, sub_10006EFBC, v27);

    v28 = *&v11[v5[19]];
    [v1 setDismissalType:v28];
    if ((v28 & 2) == 0 && *&v11[v5[20] + 8])
    {
      v29 = String._bridgeToObjectiveC()();
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = String._bridgeToObjectiveC()();
      v33 = [v1 dismissalConfirmationActionWithTitle:v29 message:v30 confirmButtonTitle:v31 cancelButtonTitle:v32];

      [v1 setDismissButtonAction:v33];
    }

    sub_100016374(v11);
  }
}

void sub_10006D754(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103AD0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupVisualAuthViewController: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      memset(v17, 0, sizeof(v17));
      LOBYTE(v16) = v2;
      sub_100012DA0(v14, v17, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v16);
      swift_unknownObjectRelease();
      sub_100012E08(&v16);
    }
  }
}

uint64_t sub_10006D980(char a1)
{
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v41 - v13;
  v14 = type metadata accessor for HomePodSetupVisualAuthViewController(0);
  v53.receiver = v1;
  v53.super_class = v14;
  objc_msgSendSuper2(&v53, "viewWillAppear:", a1 & 1);
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100012AAC(v15, qword_100103AD0);
  v16 = v1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v51 = v16;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = v5;
    v21 = swift_slowAlloc();
    *v19 = 138412290;
    v22 = v51;
    *(v19 + 4) = v51;
    *v21 = v22;
    v23 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "HomePod Setup %@ viewWillAppear", v19, 0xCu);
    sub_10000EBA4(v21, &qword_100101E38, &unk_1000BCF80);
    v5 = v20;
  }

  result = IsAppleInternalBuild();
  if (result)
  {
    if (qword_100101608 != -1)
    {
      result = swift_once();
    }

    v25 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode + 8);
    if ((v25 & 0x2000000000000000) != 0)
    {
      v26 = HIBYTE(v25) & 0xF;
    }

    else
    {
      v26 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode) & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "HomePodSetupVisualAuthViewController: hasForcedPasscode so selecting manual pairing button.", v29, 2u);
      }

      sub_1000144DC();
      v41 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v8 = 2;
      (*(v6 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v5);
      v30 = v44;
      + infix(_:_:)();
      (*(v6 + 8))(v8, v5);
      v31 = v47;
      v32 = *(v46 + 8);
      v32(v12, v47);
      v33 = swift_allocObject();
      v34 = v51;
      *(v33 + 16) = v51;
      aBlock[4] = sub_10006EF98;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100091194;
      aBlock[3] = &unk_1000F0988;
      v35 = _Block_copy(aBlock);
      v36 = v34;

      v37 = v49;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100014530();
      sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
      sub_100014588();
      v38 = v42;
      v39 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v40 = v41;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v35);

      (*(v50 + 8))(v38, v39);
      (*(v48 + 8))(v37, v45);
      return (v32)(v30, v31);
    }
  }

  return result;
}

void sub_10006E0B8(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for HomePodSetupVisualAuthViewController(0);
  objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103AD0);
  v4 = v1;
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
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePod Setup %@ viewDidDisappear", v7, 0xCu);
    sub_10000EBA4(v8, &qword_100101E38, &unk_1000BCF80);
  }
}

uint64_t sub_10006E274()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_10008CC14();
  sub_1000144DC();
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  if (qword_1001016B0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DispatchTimeInterval();
  sub_100012AAC(v13, qword_100103AE8);
  + infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10006EF40;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F0938;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v19;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v2, v0);
  (*(v20 + 8))(v5, v21);
  return (v14)(v12, v6);
}

void sub_10006E63C(uint64_t a1)
{
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100103AD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "HomePodSetupVisualAuthViewController: detectedHomePod so selecting primary button.", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      memset(v11, 0, sizeof(v11));
      v10[0] = 1;
      sub_100012DA0(v8, v11, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(v10);
      swift_unknownObjectRelease();
      sub_100012E08(v10);
    }
  }
}

uint64_t sub_10006E7B8()
{
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103AD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "HomePodSetupVisualAuthViewController: User tapped on manual pairing button.", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    memset(v8, 0, sizeof(v8));
    v7[0] = 2;
    sub_100012DA0(v5, v8, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v7);
    swift_unknownObjectRelease();
    return sub_100012E08(v7);
  }

  return result;
}

id sub_10006E94C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupVisualAuthViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupVisualAuthViewController(uint64_t a1)
{
  result = qword_100103B28;
  if (!qword_100103B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006EA28(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10006EAC4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_10006EB18()
{
  v1 = v0;
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103AD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SVSHomePodIDViewController: start was called", v5, 2u);
  }

  SVSHomePodIDViewController.configureEngine()();
  v6 = *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine);

  return [v6 preheat];
}

void sub_10006EC24()
{
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103AD0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SVSHomePodIDViewController: stop was called", v2, 2u);
  }
}

void sub_10006ED0C(uint64_t a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  sub_100012AE4(a1, &v16 - v4);
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v5, v1 + v7, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  v8 = String._bridgeToObjectiveC()();
  [v1 setTitle:v8];

  v9 = objc_allocWithZone(NSAttributedString);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithString:v10];

  if (v11)
  {
    v12 = objc_allocWithZone(PRXLabel);
    v13 = v11;
    v14 = [v12 initWithStyle:1];
    [v14 setAttributedText:v13];
    v15 = [v1 contentView];
    [v15 setSubtitleLabel:v14];
  }
}

uint64_t sub_10006EF00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006EF48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006EF60()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10006EFD4(uint64_t a1)
{
  type metadata accessor for PRXActionStyle(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10006F06C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10006F1F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_10006F468(double a1)
{
  v3 = [v1 contentView];
  v4 = [v3 auxiliaryViews];

  if (v4)
  {
    sub_10006F5B8();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setAlpha:a1];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10006F5B8()
{
  result = qword_100103BB8;
  if (!qword_100103BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100103BB8);
  }

  return result;
}

uint64_t sub_10006F634()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103BC0);
  v1 = sub_100012AAC(v0, qword_100103BC0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006F6FC()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for HomePodSetupStereoViewController(0);
  v34.receiver = v1;
  v34.super_class = v12;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v13, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016B8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100103BC0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupStereoViewController: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100073554(v4, v11, type metadata accessor for HomePodSetupViewModel);
    if (qword_1001016B8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100103BC0);
    sub_10007361C(v11, v9, type metadata accessor for HomePodSetupViewModel);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_1000735BC(v9, type metadata accessor for HomePodSetupViewModel);
      v25 = sub_1000B08A0(v23, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupStereoViewController: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_1000735BC(v9, type metadata accessor for HomePodSetupViewModel);
    }

    (*((swift_isaMask & *v1) + 0xD8))(v11);
    v26 = *&v11[v5[10]];
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v26, sub_1000736BC, v27);

    if ((v11[v5[19]] & 2) == 0 && *&v11[v5[20] + 8])
    {
      v28 = String._bridgeToObjectiveC()();
      v29 = String._bridgeToObjectiveC()();
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = [v1 dismissalConfirmationActionWithTitle:v28 message:v29 confirmButtonTitle:v30 cancelButtonTitle:v31];

      [v1 setDismissButtonAction:v32];
    }

    sub_1000735BC(v11, type metadata accessor for HomePodSetupViewModel);
  }
}

void sub_10006FC6C(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103BC0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupStereoViewController: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      memset(v17, 0, sizeof(v17));
      LOBYTE(v16) = v2;
      sub_100012DA0(v14, v17, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v16);
      swift_unknownObjectRelease();
      sub_100012E08(&v16);
    }
  }
}

void sub_10006FF20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  __chkstk_darwin(v4 - 8);
  v6 = &v66 - v5;
  v7 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v66 - v15;
  v17 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v17 - 8);
  v19 = &v66 - v18;
  if (v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_isConfigured])
  {
    return;
  }

  v69 = v6;
  v70 = v10;
  v71 = v8;
  v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_isConfigured] = 1;
  v20 = String._bridgeToObjectiveC()();
  [v2 setTitle:v20];

  v21 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v21];

  v22 = type metadata accessor for HomePodSetupViewModel(0);
  v23 = v22;
  if (*(a1 + *(v22 + 228)) == 1)
  {
    [v2 setDismissalType:*(a1 + *(v22 + 76))];
  }

  v24 = (a1 + *(v23 + 28));
  v26 = *v24;
  v25 = v24[1];
  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
    v29 = String._bridgeToObjectiveC()();
    [v28 setText:v29];

    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v2 view];
    if (!v30)
    {
      __break(1u);
      return;
    }

    v31 = v30;
    [v30 addSubview:v28];

    v32 = *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel];
    *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel] = v28;
  }

  v72 = v14;
  v73 = v19;
  v33 = v2;
  v34 = v7;
  v35 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  v74 = v33;
  sub_10000F25C(&v33[v35], v16, &qword_100103420, &unk_1000BCE90);
  v36 = *(*(v23 - 8) + 48);
  if (v36(v16, 1, v23) || (v37 = *(v23 + 232), v38 = v71 + 48, v39 = *(v71 + 48), v39(&v16[v37], 1, v34)))
  {
    sub_10000EBA4(v16, &qword_100103420, &unk_1000BCE90);
    v40 = type metadata accessor for AdjustedImage(0);
    v41 = v73;
    (*(*(v40 - 8) + 56))(v73, 1, 1, v40);
    v42 = v34;
    goto LABEL_12;
  }

  v67 = v39;
  v68 = v38;
  v49 = v70;
  sub_10007361C(&v16[v37], v70, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
  sub_10000EBA4(v16, &qword_100103420, &unk_1000BCE90);
  v42 = v34;
  v41 = v73;
  sub_10000F25C(v49 + *(v34 + 20), v73, &unk_100102610, &unk_1000BD130);
  sub_1000735BC(v49, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
  v50 = type metadata accessor for AdjustedImage(0);
  if ((*(*(v50 - 8) + 48))(v41, 1, v50) == 1)
  {
LABEL_12:
    sub_10000EBA4(v41, &unk_100102610, &unk_1000BD130);
    v43 = v72;
    sub_10000F25C(&v74[v35], v72, &qword_100103420, &unk_1000BCE90);
    if (v36(v43, 1, v23) || (v44 = *(v23 + 232), (*(v71 + 48))(v43 + v44, 1, v42)))
    {
      sub_10000EBA4(v43, &qword_100103420, &unk_1000BCE90);
LABEL_15:
      if (qword_1001016B8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100012AAC(v45, qword_100103BC0);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "HomePodSetupStereoViewController configureUI: stereoPairImages does not have a right, using single stereo constraints", v48, 2u);
      }

      sub_100070864();
      return;
    }

    v57 = v70;
    sub_10007361C(v43 + v44, v70, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
    sub_10000EBA4(v43, &qword_100103420, &unk_1000BCE90);
    v58 = *(v57 + *(v42 + 24));
    v59 = v58;
    sub_1000735BC(v57, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
    if (!v58)
    {
      goto LABEL_15;
    }

    if (qword_1001016B8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100012AAC(v60, qword_100103BC0);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v61, v62))
    {
LABEL_38:

      sub_1000718BC();
      return;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "HomePodSetupStereoViewController configureUI: stereoPairImages has no right image but has an appleTV";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v61, v62, v64, v63, 2u);

    goto LABEL_38;
  }

  sub_10000EBA4(v41, &unk_100102610, &unk_1000BD130);
  v51 = v69;
  sub_10000F25C(a1 + *(v23 + 232), v69, &qword_100101FC0, &unk_1000BE590);
  v52 = v67(v51, 1, v42);
  sub_10000EBA4(v51, &qword_100101FC0, &unk_1000BE590);
  if (v52 != 1)
  {
    if (qword_1001016B8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100012AAC(v65, qword_100103BC0);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_38;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "HomePodSetupStereoViewController configureUI: stereoPairImages has a right, using pair stereo constraints";
    goto LABEL_37;
  }

  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100012AAC(v53, qword_100103BC0);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "No stereo images found", v56, 2u);
  }
}

uint64_t sub_100070864()
{
  v1 = v0;
  v2 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v2 - 8);
  v4 = &v123 - v3;
  v5 = type metadata accessor for AdjustedImage(0);
  v126 = *(v5 - 1);
  v127 = v5;
  __chkstk_darwin(v5);
  v125 = (&v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v123 - v11;
  v13 = type metadata accessor for HomePodSetupViewModel(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v17, v12, &qword_100103420, &unk_1000BCE90);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    v19 = &qword_100103420;
    v20 = &unk_1000BCE90;
    v21 = v12;
    return sub_10000EBA4(v21, v19, v20);
  }

  sub_100073554(v12, v16, type metadata accessor for HomePodSetupViewModel);
  sub_10000F25C(v1 + v17, v10, &qword_100103420, &unk_1000BCE90);
  if (v18(v10, 1, v13))
  {
    sub_1000735BC(v16, type metadata accessor for HomePodSetupViewModel);
    sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
    v126[7](v4, 1, 1, v127);
LABEL_7:
    v19 = &unk_100102610;
    v20 = &unk_1000BD130;
    v21 = v4;
    return sub_10000EBA4(v21, v19, v20);
  }

  sub_10000F25C(&v10[*(v13 + 112)], v4, &unk_100102610, &unk_1000BD130);
  sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
  v22 = v127;
  if ((v126[6])(v4, 1, v127) == 1)
  {
    sub_1000735BC(v16, type metadata accessor for HomePodSetupViewModel);
    goto LABEL_7;
  }

  v126 = v1;
  v24 = v125;
  sub_100073554(v4, v125, type metadata accessor for AdjustedImage);
  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100012AAC(v25, qword_100103BC0);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "HomePodSetupStereoViewController setUpFixedLayout, Setting up a single stereo image view", v28, 2u);
  }

  v29 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v24];
  sub_100083828(v24 + v22[5]);
  v30 = v29;
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  p_type = &stru_1000F9FF0.type;
  v32 = [v126 contentView];
  [v32 addSubview:v30];

  v33 = v16[*(v13 + 116)];
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v127 = v30;
  if (v33 == 1)
  {
    v37 = v13;
    v123 = v16;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "HomePodSetupStereoViewController setUpFixedLayout using useSoloHomePodConstraints constraints", v38, 2u);
    }

    v39 = [objc_allocWithZone(UILayoutGuide) init];
    v40 = v126;
    v41 = [v126 contentView];
    [v41 addLayoutGuide:v39];

    v42 = [v40 contentView];
    v43 = [v42 mainContentGuide];

    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1000BD320;
    v45 = [v39 topAnchor];
    v46 = [v43 topAnchor];
    v47 = [v45 constraintGreaterThanOrEqualToAnchor:v46];

    *(v44 + 32) = v47;
    v48 = [v39 bottomAnchor];
    v49 = [v43 bottomAnchor];
    v50 = [v48 constraintLessThanOrEqualToAnchor:v49];

    *(v44 + 40) = v50;
    v51 = [v39 centerYAnchor];
    v52 = [v43 centerYAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v44 + 48) = v53;
    v54 = [v39 leadingAnchor];
    v124 = v43;
    v55 = [v43 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v44 + 56) = v56;
    v57 = [v39 trailingAnchor];
    v58 = [v43 trailingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v44 + 64) = v59;
    v60 = [v39 heightAnchor];
    v61 = v37;
    v62 = *(v37 + 120);
    v63 = v123;
    v64 = *&v123[v62];
    v65 = [v60 constraintEqualToConstant:v64];

    *(v44 + 72) = v65;
    v30 = v127;
    v66 = [v127 centerYAnchor];
    v67 = [v39 centerYAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v44 + 80) = v68;
    v69 = [v30 centerXAnchor];
    v70 = [v39 centerXAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];

    *(v44 + 88) = v71;
    v16 = v63;
    v72 = [v30 heightAnchor];
    v73 = [v72 constraintEqualToConstant:v64];

    *(v44 + 96) = v73;
    v74 = [v30 widthAnchor];
    v75 = [v74 constraintEqualToConstant:*&v63[*(v61 + 124)]];

    *(v44 + 104) = v75;
    p_type = (&stru_1000F9FF0 + 16);
  }

  else
  {
    if (v36)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "HomePodSetupStereoViewController setUpFixedLayout NOT using useSoloHomePodConstraints constraints", v76, 2u);
    }

    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1000BD430;
    v77 = [v30 centerXAnchor];
    v40 = v126;
    v78 = [v126 contentView];
    v79 = [v78 mainContentGuide];

    v80 = [v79 centerXAnchor];
    v81 = [v77 constraintEqualToAnchor:v80];

    *(v44 + 32) = v81;
    v82 = [v30 topAnchor];
    v83 = [v40 contentView];
    v84 = [v83 mainContentGuide];

    v85 = [v84 topAnchor];
    v86 = [v82 constraintGreaterThanOrEqualToAnchor:v85];

    *(v44 + 40) = v86;
    v87 = [v30 bottomAnchor];
    v88 = [v40 contentView];
    v89 = [v88 mainContentGuide];

    v90 = [v89 bottomAnchor];
    v91 = [v87 constraintLessThanOrEqualToAnchor:v90];

    *(v44 + 48) = v91;
  }

  v128 = v44;
  if ((*((swift_isaMask & *v40) + 0xA0))())
  {
    v92 = [v30 centerYAnchor];
    v93 = [v126 p_type[229]];
    v94 = [v93 mainContentGuide];

    v95 = [v94 centerYAnchor];
    v96 = [v92 constraintEqualToAnchor:v95];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v97 = v126;
  v98 = *(v126 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel);
  if (v98)
  {
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BD460;
    v100 = v98;
    v101 = [v100 leadingAnchor];
    v102 = [v97 p_type[229]];
    v103 = p_type;
    v104 = [v102 mainContentGuide];

    v105 = [v104 leadingAnchor];
    v106 = [v101 constraintEqualToAnchor:v105];

    *(inited + 32) = v106;
    v107 = [v100 trailingAnchor];
    v108 = [v97 v103[229]];
    v109 = [v108 mainContentGuide];

    v110 = [v109 trailingAnchor];
    v111 = [v107 constraintEqualToAnchor:v110];

    *(inited + 40) = v111;
    v112 = [v100 topAnchor];
    v113 = [v127 bottomAnchor];

    v114 = [v112 constraintEqualToAnchor:v113 constant:10.0];
    *(inited + 48) = v114;
    v115 = [v100 bottomAnchor];

    v116 = v103[229];
    v30 = v127;
    v117 = [v97 v116];
    v118 = [v117 mainContentGuide];

    v119 = [v118 bottomAnchor];
    v120 = [v115 constraintEqualToAnchor:v119];

    *(inited + 56) = v120;
    sub_1000952D4(inited);
  }

  else
  {
  }

  v121 = objc_opt_self();
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v121 activateConstraints:isa];

  sub_1000735BC(v125, type metadata accessor for AdjustedImage);
  return sub_1000735BC(v16, type metadata accessor for HomePodSetupViewModel);
}

uint64_t sub_1000718BC()
{
  v1 = v0;
  v2 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v3 = __chkstk_darwin(v2 - 8);
  v172 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v170 = &v162 - v6;
  __chkstk_darwin(v5);
  v171 = (&v162 - v7);
  v8 = type metadata accessor for AdjustedImage(0);
  v174 = *(v8 - 8);
  v175 = v8;
  __chkstk_darwin(v8);
  v10 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v11 - 8);
  v13 = &v162 - v12;
  v14 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  __chkstk_darwin(v14 - 8);
  v16 = &v162 - v15;
  v17 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v21, v13, &qword_100103420, &unk_1000BCE90);
  v22 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v22 - 8) + 48))(v13, 1, v22))
  {
    sub_10000EBA4(v13, &qword_100103420, &unk_1000BCE90);
    (*(v18 + 56))(v16, 1, 1, v17);
    return sub_10000EBA4(v16, &qword_100101FC0, &unk_1000BE590);
  }

  v166 = v10;
  v173 = v20;
  sub_10000F25C(&v13[*(v22 + 232)], v16, &qword_100101FC0, &unk_1000BE590);
  sub_10000EBA4(v13, &qword_100103420, &unk_1000BCE90);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_10000EBA4(v16, &qword_100101FC0, &unk_1000BE590);
  }

  sub_100073554(v16, v173, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v165 = v17;
  v24 = type metadata accessor for Logger();
  v163 = sub_100012AAC(v24, qword_100103BC0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "HomePodSetupStereoViewController setUpCompositeLayout started", v27, 2u);
  }

  v28 = [objc_allocWithZone(UIView) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v1 contentView];
  [v29 addSubview:v28];

  v30 = v173;
  v31 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v173];
  sub_100083828(v30 + *(v175 + 20));
  v32 = v31;
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28 addSubview:v32];
  v167 = sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000BDD00;
  v34 = [v32 leftAnchor];
  v35 = [v28 leftAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v33 + 32) = v36;
  v169 = v32;
  v37 = [v32 topAnchor];
  v38 = [v28 topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v33 + 40) = v39;
  v40 = [v28 leftAnchor];
  v41 = [v1 contentView];
  v42 = [v41 mainContentGuide];

  v43 = [v42 leftAnchor];
  v44 = [v40 constraintGreaterThanOrEqualToAnchor:v43];

  *(v33 + 48) = v44;
  v45 = [v28 rightAnchor];
  v46 = [v1 contentView];
  v47 = [v46 mainContentGuide];

  v48 = [v47 rightAnchor];
  v49 = [v45 constraintLessThanOrEqualToAnchor:v48];

  *(v33 + 56) = v49;
  v50 = [v28 bottomAnchor];
  v51 = [v1 contentView];
  v52 = [v51 mainContentGuide];

  v53 = [v52 bottomAnchor];
  v54 = [v50 constraintLessThanOrEqualToAnchor:v53];

  *(v33 + 64) = v54;
  v55 = [v28 centerXAnchor];
  v56 = [v1 contentView];
  v57 = [v56 mainContentGuide];

  v58 = [v57 centerXAnchor];
  v59 = [v55 constraintEqualToAnchor:v58];

  *(v33 + 72) = v59;
  v176 = v33;
  LOBYTE(v55) = (*((swift_isaMask & *v1) + 0xA0))();
  v168 = v28;
  v60 = [v28 topAnchor];
  v61 = v1;
  v62 = [v1 contentView];
  v63 = [v62 mainContentGuide];

  v64 = [v63 topAnchor];
  v164 = v1;
  if (v55)
  {
    v65 = [v60 constraintGreaterThanOrEqualToAnchor:v64];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v66 = v166;
    v67 = v171;
    if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v68 = [v168 centerYAnchor];
    v69 = [v61 contentView];
    v70 = [v69 mainContentGuide];

    v71 = [v70 centerYAnchor];
    v72 = [v68 constraintEqualToAnchor:v71];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v73 = [v60 constraintEqualToAnchor:v64 constant:-15.0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v66 = v166;
    v67 = v171;
    if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_15;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_15:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v74 = v175;
  v75 = v165;
  v76 = v165[5];
  sub_10000F25C(v76 + v173, v67, &unk_100102610, &unk_1000BD130);
  v77 = v174 + 48;
  v171 = *(v174 + 48);
  v78 = v171(v67, 1, v74);
  v79 = v168;
  v174 = v77;
  v166 = v76;
  if (v78 == 1)
  {
    sub_10000EBA4(v67, &unk_100102610, &unk_1000BD130);
  }

  else
  {
    sub_100073554(v67, v66, type metadata accessor for AdjustedImage);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "HomePodSetupStereoViewController: stereoImags has right image", v82, 2u);
    }

    v83 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v66];
    sub_100083828(v66 + *(v74 + 20));
    v84 = v83;
    [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v79 addSubview:v84];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BD430;
    v86 = [v84 topAnchor];
    v87 = v169;
    v88 = [v169 topAnchor];
    v89 = [v86 constraintEqualToAnchor:v88];

    *(inited + 32) = v89;
    v90 = [v84 leftAnchor];
    v91 = [v87 rightAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:10.0];

    *(inited + 40) = v92;
    v93 = [v84 rightAnchor];

    v94 = [v79 rightAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];

    *(inited + 48) = v95;
    sub_1000952D4(inited);

    sub_1000735BC(v66, type metadata accessor for AdjustedImage);
    v75 = v165;
    v76 = v166;
  }

  v96 = v75[6];
  v97 = *(v173 + v96);
  if (v97)
  {
    v165 = *(v173 + v96);
    v98 = v97;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v99, v100, "HomePodSetupStereoViewController createStereoPairImages: stereoImags has apple tv image", v101, 2u);
    }

    v102 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:v98];
    [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v79 addSubview:v102];
    v103 = swift_initStackObject();
    v162 = xmmword_1000BD0A0;
    *(v103 + 16) = xmmword_1000BD0A0;
    v104 = [v102 centerYAnchor];
    v105 = v169;
    v106 = [v169 centerYAnchor];
    v163 = v98;
    v107 = [v104 constraintEqualToAnchor:v106 constant:45.0];

    *(v103 + 32) = v107;
    v108 = [v102 bottomAnchor];
    v109 = [v79 bottomAnchor];
    v110 = [v108 constraintEqualToAnchor:v109];

    *(v103 + 40) = v110;
    sub_1000952D4(v103);
    v111 = v173;
    v112 = v76 + v173;
    v113 = v170;
    sub_10000F25C(v112, v170, &unk_100102610, &unk_1000BD130);
    LODWORD(v110) = v171(v113, 1, v175);
    sub_10000EBA4(v113, &unk_100102610, &unk_1000BD130);
    if (v110 == 1)
    {
      v114 = swift_initStackObject();
      *(v114 + 16) = v162;
      v115 = [v102 centerXAnchor];
      v116 = [v105 centerXAnchor];
      v117 = [v115 constraintEqualToAnchor:v116 constant:57.0];

      *(v114 + 32) = v117;
      v118 = [v102 rightAnchor];

      v119 = [v79 rightAnchor];
      v120 = [v118 constraintEqualToAnchor:v119];

      *(v114 + 40) = v120;
      v121 = v173;
      sub_1000952D4(v114);
    }

    else
    {
      v126 = swift_initStackObject();
      *(v126 + 16) = xmmword_1000BCE00;
      v127 = [v102 centerXAnchor];

      v128 = [v168 centerXAnchor];
      v129 = [v127 constraintEqualToAnchor:v128];

      *(v126 + 32) = v129;
      v130 = v126;
      v79 = v168;
      sub_1000952D4(v130);

      v121 = v111;
    }

    v97 = v165;
    v76 = v166;
  }

  else
  {
    v122 = swift_initStackObject();
    *(v122 + 16) = xmmword_1000BCE00;
    v123 = [v169 bottomAnchor];
    v124 = [v79 bottomAnchor];
    v125 = [v123 constraintEqualToAnchor:v124];

    *(v122 + 32) = v125;
    v121 = v173;
    sub_1000952D4(v122);
  }

  v131 = v172;
  sub_10000F25C(v76 + v121, v172, &unk_100102610, &unk_1000BD130);
  v132 = v171(v131, 1, v175);
  v133 = v164;
  if (v132 == 1)
  {
    sub_10000EBA4(v131, &unk_100102610, &unk_1000BD130);
    if (v97)
    {
      v134 = v169;
    }

    else
    {
      v134 = v169;
      v135 = [v169 rightAnchor];

      v136 = [v79 rightAnchor];
      v137 = [v135 constraintEqualToAnchor:v136];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v133 = v164;
    }
  }

  else
  {
    v134 = v169;

    sub_10000EBA4(v131, &unk_100102610, &unk_1000BD130);
  }

  v138 = *&v133[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel];
  if (v138)
  {
    v139 = swift_initStackObject();
    *(v139 + 16) = xmmword_1000BD460;
    v140 = v138;
    v141 = [v140 leadingAnchor];
    v142 = v133;
    v143 = [v133 contentView];
    v144 = [v143 mainContentGuide];

    v145 = [v144 leadingAnchor];
    v146 = [v141 constraintEqualToAnchor:v145];

    *(v139 + 32) = v146;
    v147 = [v140 trailingAnchor];
    v148 = [v142 contentView];
    v149 = [v148 mainContentGuide];

    v79 = v168;
    v150 = [v149 trailingAnchor];

    v151 = [v147 constraintEqualToAnchor:v150];
    *(v139 + 40) = v151;
    v152 = [v140 bottomAnchor];
    v153 = [v142 contentView];
    v154 = [v153 mainContentGuide];

    v155 = [v154 bottomAnchor];
    v156 = [v152 constraintEqualToAnchor:v155];

    *(v139 + 48) = v156;
    v157 = [v140 topAnchor];

    v158 = [v79 bottomAnchor];
    v159 = [v157 constraintEqualToAnchor:v158 constant:10.0];

    *(v139 + 56) = v159;
    v121 = v173;
    sub_1000952D4(v139);

    v134 = v169;
  }

  v160 = objc_opt_self();
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v160 activateConstraints:isa];

  return sub_1000735BC(v121, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
}

id sub_100073028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupStereoViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupStereoViewController(uint64_t a1)
{
  result = qword_100103C10;
  if (!qword_100103C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073120(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000731D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_100073224(_DWORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_10007326C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_1000732F0(uint64_t a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100103BC0);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = [v7 isViewLoaded];

    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupStereoViewController: presenter:didUpdate viewModel, isViewloaded = %{BOOL}d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  sub_10007361C(a1, v5, type metadata accessor for HomePodSetupViewModel);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v5, v7 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v7 isViewLoaded];
  if (result)
  {
    return (*((swift_isaMask & v7->isa) + 0xD8))(a1);
  }

  return result;
}

uint64_t sub_100073554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000735BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007361C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100073684()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000736C4()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103C20);
  v1 = sub_100012AAC(v0, qword_100103C20);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10007378C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView);
  }

  else
  {
    type metadata accessor for HomePodSetupWiFiInfoTableView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100073804()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v47 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HomePodSetupIntroViewController(0);
  v55.receiver = v1;
  v55.super_class = v12;
  objc_msgSendSuper2(&v55, "viewDidLoad");
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  if (Int64)
  {
    v16 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    [v16 notificationOccurred:0];
    goto LABEL_16;
  }

  v17 = [objc_allocWithZone(CUAudioPlayer) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setLabel:v18];

  [v17 setEnableSmartRouting:2];
  [v17 activate];
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() bundleWithIdentifier:v19];

  if (!v20)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_9:
    sub_100075414(v7);
    if (qword_1001016C0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100012AAC(v29, qword_100103C20);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000B08A0(0xD00000000000001CLL, 0x80000001000C67F0, &aBlock);
      _os_log_impl(&_mh_execute_header, v30, v31, "HomePodSetupIntro: viewDidLoad could not locate the audio file %s ", v32, 0xCu);
      sub_10000E70C(v33);
    }

    goto LABEL_15;
  }

  v21 = v20;
  v22 = v9;
  v48 = v21;
  v23 = v21;
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 URLForResource:v24 withExtension:0];

  if (v25)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v22;
  (*(v22 + 56))(v5, v26, 1, v8);
  sub_100051A10(v5, v7);
  v28 = (*(v22 + 48))(v7, 1, v8);
  v20 = v48;
  if (v28 == 1)
  {
    goto LABEL_9;
  }

  (*(v27 + 32))(v11, v7, v8);
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  [v17 playURL:v35 completion:0];

  (*(v27 + 8))(v11, v8);
LABEL_15:
  v16 = *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_audioPlayer];
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_audioPlayer] = v17;
LABEL_16:

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v38 = String._bridgeToObjectiveC()();
  v53 = sub_100075404;
  v54 = v37;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10003DFD0;
  v52 = &unk_1000F0C10;
  v39 = _Block_copy(&aBlock);
  v40 = [objc_opt_self() actionWithTitle:v38 style:0 handler:v39];

  _Block_release(v39);

  [v1 setInfoButtonAction:v40];

  v41 = [v1 infoButton];
  if (v41)
  {
    v42 = v41;
    [v41 setAlpha:0.0];
  }

  v43 = sub_10007378C();
  [v43 setAlpha:0.0];

  v44 = objc_opt_self();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = sub_10007540C;
  v54 = v45;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100091194;
  v52 = &unk_1000F0C38;
  v46 = _Block_copy(&aBlock);

  [v44 animateWithDuration:65538 delay:v46 options:0 animations:0.7 completion:8.0];
  _Block_release(v46);
}

void sub_100073F68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong handleTapOnInfoButton];
  }
}

void sub_100073FC4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong infoButton];

    if (v3)
    {
      [v3 setAlpha:1.0];
    }
  }
}

double sub_1000741AC(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for HomePodSetupViewModel(0) + 40));
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *(v2 + 16);
  if (v4)
  {
    v16 = objc_opt_self();
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v5 += 32;
      v10 = swift_allocObject();
      *(v10 + 16) = v6;
      *(v10 + 24) = v7;
      *(v10 + 32) = v8;
      *(v10 + 40) = v9;
      *(v10 + 48) = sub_1000752D4;
      *(v10 + 56) = v3;
      swift_bridgeObjectRetain_n();

      v11 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_10004745C;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10003DFD0;
      aBlock[3] = &unk_1000F0AA8;
      v12 = _Block_copy(aBlock);
      v13 = [v16 actionWithTitle:v11 style:v8 handler:v12];

      _Block_release(v12);

      v14 = [v1 addAction:v13];

      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return result;
}

void sub_1000743D4(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1001016C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103C20);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupIntro: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = String._bridgeToObjectiveC()();
    [v12 showActivityIndicatorWithStatus:v13];

    v14 = [v12 infoButton];
    v15 = 1;
    if (v14)
    {
      v16 = [v14 isActive];

      if (v16)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      memset(v20, 0, sizeof(v20));
      LOBYTE(v19) = v15;
      sub_10000EAFC(v17, v20);
      sub_10007A070(&v19);

      swift_unknownObjectRelease();
      sub_100012E08(&v19);
    }

    else
    {
    }
  }
}

void sub_1000746B0()
{
  v1 = v0;
  if (qword_1001016C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIntro: user tapped on the info button.", v5, 2u);
  }

  v6 = sub_10007378C();
  [v6 setSeparatorStyle:0];

  v7 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView;
  v8 = *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView];
  sub_100095AE0();

  sub_100074E20();
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v23 = sub_1000753C8;
  v24 = v10;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100091194;
  v22 = &unk_1000F0B98;
  v11 = _Block_copy(&v19);
  v12 = v1;

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v23 = sub_1000753D0;
  v24 = v13;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000A3260;
  v22 = &unk_1000F0BE8;
  v14 = _Block_copy(&v19);
  v15 = v12;

  [v9 animateWithDuration:v11 animations:v14 completion:0.5];
  _Block_release(v14);
  _Block_release(v11);
  [*&v1[v7] setHidden:0];
  if (v15[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo])
  {
    v16 = *&v1[v7];
    sub_100095E28();
LABEL_10:

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v18 = sub_1000A670C(sub_1000753FC, v17);
    swift_unknownObjectRelease();

    if ((v18 & 1) == 0)
    {
      v16 = String._bridgeToObjectiveC()();
      [v15 showActivityIndicatorWithStatus:v16];
      goto LABEL_10;
    }
  }
}

void sub_100074A28(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  v3 = sub_10007378C();
  [v3 setAlpha:1.0];

  if ((*(a1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo) & 1) == 0)
  {
    sub_10006F468(0.0);
  }
}

void sub_100074AA4(uint64_t *a1, uint64_t a2)
{
  if (qword_1001016C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103C20);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupIntro: Request for PreAuth completed.", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo] = 1;
    v8 = Strong;
    [Strong hideActivityIndicator];
    sub_10006F468(1.0);
    v9 = sub_10007378C();
    sub_100095C9C(a1);
  }
}

void sub_100074BF8()
{
  v1 = *&v0[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView];
  if (v1)
  {
    [v1 setHidden:0];
  }

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v13 = sub_10007536C;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100091194;
  v12 = &unk_1000F0AF8;
  v4 = _Block_copy(&v9);
  v5 = v0;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_100075374;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000A3260;
  v12 = &unk_1000F0B48;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.5];
  _Block_release(v7);
  _Block_release(v4);
}

id sub_100074DA0(uint64_t a1)
{
  v2 = sub_10007378C();
  [v2 setAlpha:0.0];

  result = *(a1 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView);
  if (result)
  {

    return [result setAlpha:1.0];
  }

  return result;
}

void sub_100074E20()
{
  v1 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView);
  v3 = sub_10007378C();
  [v2 addSubview:v3];

  v4 = [*(v0 + v1) mainContentGuide];
  v5 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000BD460;
  v7 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView;
  v8 = [*(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView) topAnchor];
  v9 = [v4 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v6 + 32) = v10;
  v11 = [*(v0 + v7) bottomAnchor];
  v12 = [v4 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v6 + 40) = v13;
  v14 = [*(v0 + v7) leadingAnchor];
  v15 = [v4 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v6 + 48) = v16;
  v17 = [*(v0 + v7) trailingAnchor];
  v18 = [v4 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v6 + 56) = v19;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

void sub_100075134()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView);
}

id sub_100075174()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupIntroViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupIntroViewController(uint64_t a1)
{
  result = qword_100103C68;
  if (!qword_100103C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007529C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000752DC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10007531C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100075334()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100075374()
{
  v0 = sub_10007378C();
  [v0 setHidden:1];
}

id sub_1000753D0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView);
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

uint64_t sub_100075414(uint64_t a1)
{
  v2 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000754B8()
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

    if (v1[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] == 1)
    {
      v6 = v1;
      v7 = [v6 presentedViewController];
      if (v7)
      {
        do
        {
          v8 = v7;

          v7 = [v8 presentedViewController];
          v6 = v8;
        }

        while (v7);
      }

      else
      {
        v8 = v6;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();

      if (!v9)
      {
        ++v5;
      }
    }

    v10 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lastSetDesiredButtonEvents;
    if (v5 != *&v1[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lastSetDesiredButtonEvents])
    {
      if (qword_1001016C8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100012AAC(v11, qword_100103C80);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v14 = 136315394;
        *(v14 + 4) = sub_1000B08A0(0xD000000000000023, 0x80000001000C6910, &v21);
        *(v14 + 12) = 2080;
        v15 = SBUIRemoteAlertServiceButtonEventDescription();
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_1000B08A0(v16, v18, &v21);

        *(v14 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s: %s", v14, 0x16u);
        swift_arrayDestroy();
      }

      v20 = sub_10009CC3C();
      if (v20)
      {
        [v20 setDesiredHardwareButtonEvents:v5 & 0x1E];
        swift_unknownObjectRelease();
      }

      sub_1000770DC();
      *&v1[v10] = v5;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100075774()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103C80);
  v1 = sub_100012AAC(v0, qword_100103C80);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10007583C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction;
  if (!*&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction] && v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] == 1)
  {
    v2 = [objc_opt_self() _cameraCaptureShutterConfigurationWithOptionsProvider:0];
    sub_10003AE18(0, &qword_100103DC0, _UIPhysicalButtonConfiguration_ptr);
    sub_100077AEC(&qword_100103DC8, &qword_100103DC0, _UIPhysicalButtonConfiguration_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = objc_allocWithZone(_UIPhysicalButtonInteraction);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v5 = [v3 initWithConfigurations:isa delegate:v0];

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;

      [v7 addInteraction:v5];

      v8 = *&v0[v1];
      *&v0[v1] = v5;
      v9 = v5;

      sub_1000754B8();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1000759D8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] = 0;
  *&v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion] = 0;
  *&v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lastSetDesiredButtonEvents] = 0;
  *&v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

void sub_100075B48(void *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v5 = [a1 userInfo];
  if (v5)
  {
    v6 = v5;
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = sub_10000D8A8(_swiftEmptyArrayStorage);
  }

  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100103C80);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v13 = sub_100075E34(v7);
    v15 = sub_1000B08A0(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "<loom:ViewService:matchHomePodSetupFlowViewController> HomePod Setup Flow being configured with user info: %s", v11, 0xCu);
    sub_10000E70C(v12);
  }

  v16 = sub_10009CC3C();
  type metadata accessor for HomePodSetupPresenter(0);
  swift_allocObject();
  v17 = sub_1000796B8(v7, v16);
  v18 = (v3 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter);
  *v18 = v17;
  v18[1] = &off_1000F0D90;

  v19 = swift_unknownObjectRelease();
  if (*v18)
  {
    v20 = *(*v18 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = (v20 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler);
    v23 = *(v20 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler);
    v24 = *(v20 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler + 8);
    *v22 = sub_100077B7C;
    v22[1] = v21;
    swift_unknownObjectRetain();

    sub_1000616F4(v23, v24);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    a2(v19);
  }

  else
  {
    __break(1u);
  }
}

id sub_100075E34(void *a1)
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  v2 = objc_opt_self();

  sub_10000E6C4(&qword_1001020B0, &qword_1000BD170);
  v16 = 0;
  v3 = [v2 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:1 error:&v16];
  swift_unknownObjectRelease();
  v4 = v16;
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      v10 = v8;
      sub_100077BB4(v5, v7);
      return v10;
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v15._countAndFlagsBits = 0xD00000000000002ELL;
    v15._object = 0x80000001000C6980;
    String.append(_:)(v15);
    _print_unlocked<A, B>(_:_:)();
    sub_100077BB4(v5, v7);
  }

  else
  {
    v12 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v13._countAndFlagsBits = 0xD00000000000001ALL;
    v13._object = 0x80000001000C6940;
    String.append(_:)(v13);
    sub_10000E6C4(&unk_1001035F0, &unk_1000BE8D0);
    _print_unlocked<A, B>(_:_:)();
    v14._object = 0x80000001000C6960;
    v14._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
  }

  return v16;
}

void sub_1000761C8()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"presentationControllerTransitionDidEnd:" name:UIPresentationControllerPresentationTransitionDidEndNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"presentationControllerTransitionDidEnd:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:0];
}

void sub_1000762F4(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter])
  {
    v4 = qword_1001016C8;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100012AAC(v5, qword_100103C80);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "<loom:ViewService:matchHomePodSetupFlowViewController> HomePodSetupFlowViewController: HomePod Setup Flow viewDidAppear", v8, 2u);
    }

    sub_100079BE0(v2);
    v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] = 1;
    sub_10007583C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001016C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100012AAC(v9, qword_100103C80);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "HomePodSetupFlowViewController: viewDidAppear called with no presenter - configure not called", v12, 2u);
    }
  }
}

void sub_100076554(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100103C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "<loom:ViewService:matchHomePodSetupFlowViewController> HomePodSetupFlowViewController: HomePod Setup Flow viewDidDisappear", v8, 2u);
  }

  v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] = 0;
  v9 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction;
  v10 = *&v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction];
  if (v10)
  {
    v11 = v10;
    v12 = [v2 view];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = v12;
    [v12 removeInteraction:v11];

    v14 = *&v2[v9];
    *&v2[v9] = 0;

    sub_1000754B8();
  }

  if (*&v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter])
  {
    swift_unknownObjectRetain();
    sub_100079EA4(21);
    swift_unknownObjectRelease();
  }

  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidDisappear:", a1 & 1);
  v15 = [objc_opt_self() sharedApplication];
  [v15 terminateWithSuccess];
}

void sub_100076818(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v38 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
      sub_100077AEC(&qword_100103DB8, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
      Set.Iterator.init(_cocoa:)();
      v3 = v41;
      v2 = v42;
      v4 = v43;
      v5 = v44;
      v6 = v45;
    }

    else
    {
      v7 = -1 << *(a1 + 32);
      v2 = a1 + 56;
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
      v3 = v1;
    }

    v10 = (v4 + 64) >> 6;
    do
    {
      if (v3 < 0)
      {
        v14 = __CocoaSet.Iterator.next()();
        if (!v14 || (v40 = v14, sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), (v13 = v46) == 0))
        {
LABEL_24:
          sub_100077AE4(v3);
          if (v39[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation])
          {
            v20 = v39;
            v21 = [v20 presentedViewController];
            v22 = v20;
            if (v21)
            {
              v23 = v20;
              do
              {
                v22 = v21;

                v21 = [v22 presentedViewController];
                v23 = v22;
              }

              while (v21);
            }

            objc_opt_self();
            v24 = swift_dynamicCastObjCClass();

            if (!v24)
            {
              v37 = swift_allocObject();
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakInit();

              sub_100065AC4(sub_100077C08, v37, sub_100076F10, 0);

              swift_unknownObjectWeakDestroy();

              return;
            }
          }

          if (v38)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
            sub_100077AEC(&qword_100103DB8, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
            Set.Iterator.init(_cocoa:)();
            v1 = v46;
            v25 = v47;
            v26 = v48;
            v27 = v49;
            v28 = v50;
          }

          else
          {
            v29 = -1 << *(v1 + 32);
            v25 = v1 + 56;
            v26 = ~v29;
            v30 = -v29;
            if (v30 < 64)
            {
              v31 = ~(-1 << v30);
            }

            else
            {
              v31 = -1;
            }

            v28 = v31 & *(v1 + 56);

            v27 = 0;
          }

          if (v1 < 0)
          {
            goto LABEL_42;
          }

          while (1)
          {
            v32 = v27;
            v33 = v28;
            v34 = v27;
            if (!v28)
            {
              break;
            }

LABEL_40:
            v35 = (v33 - 1) & v33;
            v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
            if (!v36)
            {
LABEL_46:
              sub_100077AE4(v1);
              return;
            }

            while (1)
            {
              [v36 sendResponseWithUnHandledEvents:{objc_msgSend(v36, "events")}];

              v27 = v34;
              v28 = v35;
              if ((v1 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_42:
              if (__CocoaSet.Iterator.next()())
              {
                sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
                swift_dynamicCast();
                v36 = v40;
                v34 = v27;
                v35 = v28;
                if (v40)
                {
                  continue;
                }
              }

              goto LABEL_46;
            }
          }

          while (1)
          {
            v34 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_50;
            }

            if (v34 >= ((v26 + 64) >> 6))
            {
              goto LABEL_46;
            }

            v33 = *(v25 + 8 * v34);
            ++v32;
            if (v33)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        v11 = v5;
        v12 = v6;
        if (!v6)
        {
          while (1)
          {
            v5 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v5 >= v10)
            {
              goto LABEL_24;
            }

            v12 = *(v2 + 8 * v5);
            ++v11;
            if (v12)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_14:
        v6 = (v12 - 1) & v12;
        v13 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v15 = [v13 events];
    }

    while (v15 != 16);
    sub_100077AE4(v3);
    if (qword_1001016C8 == -1)
    {
      goto LABEL_20;
    }

LABEL_51:
    swift_once();
LABEL_20:
    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103C80);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "<loom:ViewService:matchHomePodSetupFlowViewController> HomePodSetupFlowViewController: Home button was pressed - dismissing setup", v19, 2u);
    }

    if (*&v39[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter])
    {
      swift_unknownObjectRetain();
      sub_100079EA4(4);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100076EBC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000754B8();
  }
}

void sub_100076F10()
{
  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103C80);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "confirmSetupDismissal()", v2, 2u);
  }
}

void sub_1000770DC()
{
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = v1;
  MobileGestalt_get_homeButtonType();

  v3 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation;
  if (v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] == 1)
  {
    v4 = v0;
    v5 = [v4 presentedViewController];
    v6 = v4;
    if (v5)
    {
      v7 = v4;
      do
      {
        v6 = v5;

        v5 = [v6 presentedViewController];
        v7 = v6;
      }

      while (v5);
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();

    if (!v8)
    {
      v9 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion;
      if (!*&v4[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion])
      {
        v18 = [objc_opt_self() sharedInstance];
        v19 = [v18 beginConsumingPressesForButtonKind:2 eventConsumer:v4 priority:0];

        *&v4[v9] = v19;
        goto LABEL_17;
      }
    }
  }

  v10 = MobileGestalt_get_current_device();
  if (!v10)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v11 = v10;
  MobileGestalt_get_homeButtonType();

  if (v0[v3] != 1)
  {
    goto LABEL_26;
  }

  v12 = v0;
  v13 = [v12 presentedViewController];
  if (v13)
  {
    do
    {
      v14 = v13;

      v13 = [v14 presentedViewController];
      v12 = v14;
    }

    while (v13);
  }

  else
  {
    v14 = v12;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();

  if (v15)
  {
LABEL_26:
    v16 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion;
    v17 = *&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion];
    if (v17)
    {
      [v17 invalidate];
      *&v0[v16] = 0;
LABEL_17:

      swift_unknownObjectRelease();
    }
  }
}

void sub_1000772F8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction);
}

void sub_100077488()
{
  v1 = (v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lastSetDesiredButtonEvents) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100077524(void *a1)
{
  v2 = [a1 _numberOfStages] == 1 && objc_msgSend(a1, "_stagePhase") != 1;
  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103C80);
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
    sub_100077A7C(v8);
  }

  if (v2)
  {
    v11 = v4;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Confirming setup dismissal in response to physical button action: %@", v14, 0xCu);
      sub_100077A7C(v15);
    }

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();

    sub_100065AC4(sub_100077C08, v17, sub_100076F10, 0);

    swift_unknownObjectWeakDestroy();
  }

  return result;
}

double sub_1000777D8()
{
  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100103C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received lock button press", v4, 2u);
  }

  if (*(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation) == 1)
  {
    v6 = v0;
    v7 = [v6 presentedViewController];
    v8 = v6;
    if (v7)
    {
      v9 = v6;
      do
      {
        v8 = v7;

        v7 = [v8 presentedViewController];
        v9 = v8;
      }

      while (v7);
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();

    if (!v10)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Confirming setup dismissal in response to lock button press", v13, 2u);
      }

      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();

      sub_100065AC4(sub_100077A74, v14, sub_100076F10, 0);

      swift_unknownObjectWeakDestroy();
    }
  }

  return result;
}

uint64_t sub_100077A3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077A7C(uint64_t a1)
{
  v2 = sub_10000E6C4(&qword_100101E38, &unk_1000BCF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100077AEC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AE18(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100077B3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100077BB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100077C0C()
{
  v1 = [*v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100077C64()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.uuidString.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v11[0] = 0x5F646F70656D6F68;
  v11[1] = 0xE800000000000000;
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v11[0];
}

uint64_t sub_100077D94(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = 1031365995;
  v38[1] = 0xE400000000000000;
  v6 = a1;
  v7 = [v6 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v36 = 0x5F646F70656D6F68;
  v37 = 0xE800000000000000;
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v38[0];
  v15 = v38[1];
  v38[0] = 0x646F50656D6F483CLL;
  v38[1] = 0xEF206E6F6974704FLL;
  v14._object = v15;
  String.append(_:)(v14);

  v17 = v38[0];
  v16 = v38[1];
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v38, "displayValue=");
  HIWORD(v38[1]) = -4864;
  v18 = [v6 name];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v36 = v19;
  v37 = v21;
  v22._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = v38[0];
  v25 = v38[1];
  v38[0] = v17;
  v38[1] = v16;

  v26._countAndFlagsBits = v24;
  v26._object = v25;
  String.append(_:)(v26);

  v28 = v38[0];
  v27 = v38[1];
  strcpy(v38, "homePod=");
  BYTE1(v38[1]) = 0;
  WORD1(v38[1]) = 0;
  HIDWORD(v38[1]) = -402653184;
  v36 = v6;
  sub_1000780C0();
  v29._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = v38[0];
  v32 = v38[1];
  v38[0] = v28;
  v38[1] = v27;

  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 62;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);

  return v38[0];
}

unint64_t sub_1000780C0()
{
  result = qword_100102080;
  if (!qword_100102080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100102080);
  }

  return result;
}

void sub_10007811C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E6C4(&qword_100101958, &unk_1000BE900);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    sub_10003AE18(0, &qword_1001023F0, UIFont_ptr);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_10000E9F4((v26 + 8), v24);
    sub_10000E9F4(v24, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << v1[32];
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v13;
    sub_10000E9F4(v26, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1000783D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E6C4(&qword_100101968, &qword_1000BC238);
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10000EA58(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E9F4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E9F4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E9F4(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
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
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_10000E9F4(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_10007869C(char a1)
{
  result = 0x49557472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6F486B636970;
      break;
    case 2:
      result = 0x6F48657461657263;
      break;
    case 3:
    case 6:
    case 42:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6D6F6F526B636970;
      break;
    case 5:
      result = 0x73736572676F7270;
      break;
    case 7:
      result = 0x656C6C65636E6163;
      break;
    case 8:
    case 11:
    case 24:
    case 27:
      result = 0xD000000000000010;
      break;
    case 9:
    case 34:
    case 45:
    case 52:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x55664F736D726574;
      break;
    case 12:
      result = 0x7265764569726973;
      break;
    case 13:
      result = 0x6953656C62616E65;
      break;
    case 14:
      result = 0x636C655769726973;
      break;
    case 15:
    case 23:
    case 41:
    case 43:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x4D6B734169726973;
      break;
    case 17:
    case 31:
    case 61:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0x615044454C746567;
      break;
    case 19:
      result = 0x4E49507265746E65;
      break;
    case 20:
      result = 0x61506F6572657473;
      break;
    case 21:
    case 26:
    case 54:
      result = 0xD000000000000013;
      break;
    case 22:
    case 35:
    case 58:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0x6F63655269726973;
      break;
    case 28:
    case 33:
    case 38:
    case 46:
    case 60:
      result = 0xD000000000000018;
      break;
    case 29:
    case 36:
      result = 0xD00000000000001ALL;
      break;
    case 30:
      result = 0xD000000000000019;
      break;
    case 32:
      result = 0xD00000000000001DLL;
      break;
    case 37:
      result = 0xD000000000000019;
      break;
    case 39:
      result = 0xD000000000000019;
      break;
    case 40:
      result = 0xD000000000000024;
      break;
    case 44:
      result = 0xD000000000000019;
      break;
    case 47:
      result = 0xD00000000000001BLL;
      break;
    case 48:
      result = 0x756F525032506F6ELL;
      break;
    case 49:
      result = 1701736292;
      break;
    case 50:
      result = 0x6F727245656E6F64;
      break;
    case 51:
      result = 1953069157;
      break;
    case 53:
      result = 0xD000000000000021;
      break;
    case 55:
      result = 0x6B63695069666977;
      break;
    case 56:
      result = 0x7373615069666977;
      break;
    case 57:
      result = 0x6D6D755369666977;
      break;
    case 59:
      result = 0xD000000000000019;
      break;
    case 62:
      result = 0x6E69616741797274;
      break;
    case 63:
      result = 0x7365726975716572;
      break;
    case 64:
      result = 0xD000000000000020;
      break;
    case 65:
      result = 0xD000000000000026;
      break;
    case 66:
      result = 0xD000000000000022;
      break;
    case 67:
      result = 0xD000000000000019;
      break;
    case 68:
      result = 0x6C65737055326868;
      break;
    case 69:
      result = 0x50646E4161746164;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100078E68()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103DD0);
  v1 = sub_100012AAC(v0, qword_100103DD0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100078F30(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10007869C(*a1);
  v5 = v4;
  if (v3 == sub_10007869C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100078FB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007869C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007901C(uint64_t a1)
{
  sub_10007869C(*v1);
  String.hash(into:)();
}

Swift::Int sub_100079070(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10007869C(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000790D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100082414(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100079100@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10007869C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100079134()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-1] - v3;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100103DD0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_10007869C(*(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v11 = sub_1000B08A0(v9, v10, v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;

    v12 = sub_10004F854();
    v14 = v13;

    v15 = sub_1000B08A0(v12, v14, v22);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "<loom:ViewService:matchHomePodSetupPresenter> HomePodSetupPresenter: Delegate set with State: %s Model: %s and we build a new viewModel.", v8, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

  LOBYTE(v22[0]) = 1;
  sub_1000185F0(v17, v16, 0x100000000uLL, 0, v4);

  v18 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_100082E7C(v4, v1 + v19);
  swift_endAccess();
  sub_100079428();
  return sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
}

uint64_t sub_100079428()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v9, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
  }

  sub_100016310(v4, v8);
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100012AAC(v11, qword_100103DD0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "<loom:ViewService:matchHomePodSetupPresenter> HomePodSetupPresenter: a viewmodel was set", v14, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(v1, &off_1000F0D90, v8, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  return sub_100016374(v8);
}

uint64_t sub_1000796B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  v7 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_askSiriStatesPresented) = &_swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_setupSession) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_currentViewController) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_softwareUpdateForHomepodPresented) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_noP2PRouterPresented) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_appleMusicPromotionPresented) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController) = a2;
  v8 = objc_allocWithZone(type metadata accessor for HomePodSetupRouter());
  swift_unknownObjectRetain();
  v9 = [v8 init];
  v10 = (v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
  *v10 = v9;
  v10[1] = &off_1000F0238;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = 0;
  type metadata accessor for HomePodSetupInteractor();
  swift_allocObject();
  v11 = v9;
  v12 = sub_1000A34AC(a1);
  swift_unknownObjectRelease();
  v13 = (v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  *v13 = v12;
  v13[1] = &off_1000F1F80;
  v12[5] = &off_1000F0DF8;
  swift_unknownObjectWeakAssign();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = &v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss];
  v16 = *&v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss];
  v17 = *&v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss + 8];
  *v15 = sub_100083108;
  v15[1] = v14;

  sub_1000616F4(v16, v17);

  v18 = swift_allocObject();
  swift_weakInit();

  v19 = &v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation];
  v20 = *&v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation];
  v21 = *&v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation + 8];
  *v19 = sub_100083110;
  v19[1] = v18;

  sub_1000616F4(v20, v21);

  return v3;
}

void sub_100079950(uint64_t a1)
{
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100103DD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupPresenter: didDismiss called", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController;
    v8 = *(Strong + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController);
    if (v8)
    {
      [v8 dismiss];
      v9 = *(v6 + v7);
      if (v9)
      {
        [v9 invalidate];
      }
    }
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupPresenter: didDismiss failed, self is nil", v12, 2u);
    }
  }
}

uint64_t sub_100079B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = a2;
    swift_unknownObjectWeakAssign();
    sub_100079134();
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    v6 = &off_1000F0D90;
  }

  else
  {
    v6 = 0;
  }

  ObjectType = swift_getObjectType();
  return (*(a2 + 16))(v5, v6, ObjectType, a2);
}

void sub_100079BE0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100103DD0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: beginFlow called.", v11, 2u);
  }

  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v13 = *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  swift_unknownObjectWeakAssign();
  [*(v13 + 80) setPresentingViewController:a1];
  swift_unknownObjectWeakAssign();
  if (!IsAppleInternalBuild())
  {
    goto LABEL_10;
  }

  if (qword_100101608 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState) = 0;
  v14 = sub_1000A86D8();
  if (v14 != 70)
  {
    *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = v14;
  }

LABEL_10:
  v15 = sub_1000A83F8();
  if (v15)
  {
    sub_1000A8CFC(-71146);
    *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = 63;
  }

  sub_10007E89C(v15);
}