uint64_t sub_1001AE638()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000068BC();
  *v1 = v0;
  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return _swift_task_switch(sub_1001AE734, v4, v3);
}

uint64_t sub_1001AE734()
{

  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  (*(v0 + 280))(1);

  sub_10000535C();

  return v3();
}

uint64_t sub_1001AE7BC()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000068BC();
  *v1 = v0;
  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return _swift_task_switch(sub_1001AEFC4, v4, v3);
}

uint64_t sub_1001AE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001AEA04, v7, v6);
}

uint64_t sub_1001AEA04()
{
  sub_100006880();
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = _Block_copy(v4);
  v0[8] = _Block_copy(v2);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v6;
  v8 = v5;
  v9 = v3;
  v10 = v1;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1001AEB1C;

  return sub_1001ADFC8();
}

uint64_t sub_1001AEB1C()
{
  sub_100006880();
  sub_1000058C4();
  v2 = v1[8];
  v3 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  v6 = *v0;
  sub_1000068BC();
  *v7 = v6;

  v2[2](v2);
  _Block_release(v2);
  sub_10000535C();

  return v8();
}

id sub_1001AECA0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 routeController];

  v2 = [v1 pickedRoute];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 isReceiver];

  return v3;
}

id sub_1001AED44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GreenTea3PUIHardwareEventHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001AEDAC(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AEE14()
{
  sub_100006880();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1001AEED8;

  return sub_1001AE964(v2, v3, v4, v5, v6);
}

uint64_t sub_1001AEED8()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *v0;
  sub_1000068BC();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

id sub_1001AF00C()
{
  v1 = sub_1001AAF48(v0);
  v3 = v2;
  if (v2)
  {
    v4 = v1;
    v5 = v1 == 0xD000000000000028 && 0x80000001002A91F0 == v2;
    if (v5 || (sub_100006DD0(0xD000000000000028, 0x80000001002A91F0) & 1) != 0)
    {
      v6 = &CNWallpaperTypeMemoji;
    }

    else
    {
      v9 = v4 == 0xD00000000000002CLL && 0x80000001002A91C0 == v3;
      if (v9 || (sub_100006DD0(0xD00000000000002CLL, 0x80000001002A91C0) & 1) != 0)
      {
        v6 = &CNWallpaperTypeMonogram;
      }

      else
      {
        if (v4 != 0xD00000000000002ELL || 0x80000001002A9190 != v3)
        {
          v11 = sub_100006DD0(0xD00000000000002ELL, 0x80000001002A9190);

          if ((v11 & 1) == 0)
          {
            return 0;
          }

          v6 = &CNWallpaperTypePhoto;
          goto LABEL_9;
        }

        v6 = &CNWallpaperTypePhoto;
      }
    }

LABEL_9:
    v3 = *v6;
    v7 = *v6;
  }

  return v3;
}

id sub_1001AF160()
{
  v1 = [v0 metadata];
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1001AF304(v1);
  if (v2)
  {
    v3 = sub_10016D4C8(CNWallpaperColorDescriptionKeyRed, v2);
    if (v3)
    {
      v4 = v3;
      v5 = sub_10016D4C8(CNWallpaperColorDescriptionKeyGreen, v2);
      if (v5)
      {
        v6 = v5;
        v7 = sub_10016D4C8(CNWallpaperColorDescriptionKeyBlue, v2);
        if (v7)
        {
          v8 = v7;
          v9 = sub_10016D4C8(CNWallpaperColorDescriptionKeyAlpha, v2);

          if (v9)
          {
            [v4 doubleValue];
            v11 = v10;
            [v6 doubleValue];
            v13 = v12;
            [v8 doubleValue];
            v15 = v14;
            [v9 doubleValue];
            v2 = [objc_allocWithZone(UIColor) initWithRed:v11 green:v13 blue:v15 alpha:v16];

            return v2;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1001AF304(void *a1)
{
  v2 = [a1 backgroundColorDescription];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for CNWallpaperColorDescriptionKey(0);
  sub_1001AF390();
  sub_1001AF3D4();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1001AF390()
{
  result = qword_1003AB080;
  if (!qword_1003AB080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AB080);
  }

  return result;
}

unint64_t sub_1001AF3D4()
{
  result = qword_1003AA4B8;
  if (!qword_1003AA4B8)
  {
    type metadata accessor for CNWallpaperColorDescriptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA4B8);
  }

  return result;
}

id sub_1001AF42C(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR___ICSScreenSharingBroadcasterRootViewController_bannerPresentationManager] = a1;
  objc_allocWithZone(type metadata accessor for ScreenSharingBroadcasterViewController());
  v4 = a1;
  *&v2[OBJC_IVAR___ICSScreenSharingBroadcasterRootViewController_containerViewController] = ScreenSharingBroadcasterViewController.init(bannerPresentationManager:)();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ScreenSharingBroadcasterRootViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);

  return v5;
}

id sub_1001AF548()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for ScreenSharingBroadcasterRootViewController();
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR___ICSScreenSharingBroadcasterRootViewController_containerViewController];
  result = sub_100006BD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = sub_100006BD0();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  result = sub_100006C60();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = sub_100006BD0();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  [v6 addSubview:result];

  [v0 addChildViewController:v1];
  [v1 didMoveToParentViewController:v0];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002FB360;
  result = sub_100006BD0();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = [result leadingAnchor];

  result = sub_100006C60();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  v12 = [result leadingAnchor];

  v13 = sub_100007768();
  *(v8 + 32) = v13;
  result = sub_100006BD0();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = result;
  v15 = [result trailingAnchor];

  result = sub_100006C60();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = result;
  v17 = [result trailingAnchor];

  v18 = sub_100007768();
  *(v8 + 40) = v18;
  result = sub_100006BD0();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = result;
  v20 = [result topAnchor];

  result = sub_100006C60();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = result;
  v22 = [result topAnchor];

  v23 = sub_100007768();
  *(v8 + 48) = v23;
  result = sub_100006BD0();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = result;
  v25 = [result bottomAnchor];

  result = sub_100006C60();
  if (result)
  {
    v26 = result;
    v27 = objc_opt_self();
    v28 = [v26 bottomAnchor];

    v29 = [v25 constraintEqualToAnchor:v28];
    *(v8 + 56) = v29;
    sub_100162160();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints:isa];

    return [v0 setNeedsStatusBarAppearanceUpdate];
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_1001AF988(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ScreenSharingBroadcasterRootViewController();
  return objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
}

id sub_1001AFA78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingBroadcasterRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AddCallControlService.__allocating_init(call:callCenter:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  AddCallControlService.init(call:callCenter:)(a1, a2);
  return v4;
}

void *AddCallControlService.init(call:callCenter:)(void *a1, void *a2)
{
  v3 = v2;
  v3[3] = a1;
  v3[4] = a2;
  sub_10014EA98(&qword_1003ABF68, &qword_1002FCE50);
  swift_allocObject();
  v6 = a1;
  v7 = a2;
  v3[2] = CurrentValueSubject.init(_:)();
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  [v9 addObserver:v3 selector:"callModelDidChange:" name:TUCallModelChangedNotification object:0];

  v10 = [v8 defaultCenter];
  [v10 addObserver:v3 selector:"callStatusDidChange:" name:TUCallCenterCallStatusChangedNotification object:0];

  sub_1001AFE94();
  return v3;
}

uint64_t sub_1001AFCE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

void sub_1001AFDD8()
{
  v1 = *(v0 + 24);
  Notification.object.getter();
  if (v5)
  {
    sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
    if (swift_dynamicCast())
    {
      v2 = [v3 isEqualToCall:v1];

      if (v2)
      {
        sub_1001AFE94();
      }
    }
  }

  else
  {
    sub_10015E258(v4);
  }
}

id sub_1001AFED4()
{
  result = [*(v0 + 32) isAddCallAllowed];
  if (result)
  {
    v2 = objc_opt_self();
    result = [v2 sharedInstance];
    if (result)
    {
      v3 = result;
      v4 = [result isSetupAssistantRunning];

      if (v4)
      {
        return 0;
      }

      v5 = *(v0 + 24);
      if ([v5 isConversation])
      {
        v6 = [v5 remoteParticipantHandles];
        sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
        sub_1001B0104();
        v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = sub_10000654C(v7);

        if (v8 != 1)
        {
          return 0;
        }
      }

      result = [v2 sharedInstance];
      if (result)
      {
        v9 = result;
        v10 = [result isInLostMode];

        return (v10 ^ 1);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t AddCallControlService.deinit()
{

  return v0;
}

uint64_t AddCallControlService.__deallocating_deinit()
{
  AddCallControlService.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_1001B008C(uint64_t a1, uint64_t a2)
{
  result = qword_1003AC3B8;
  if (!qword_1003AC3B8)
  {
    type metadata accessor for AddCallControlService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC3B8);
  }

  return result;
}

unint64_t sub_1001B0104()
{
  result = qword_1003AAE58;
  if (!qword_1003AAE58)
  {
    sub_1000064BC(255, &qword_1003AAE50, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AAE58);
  }

  return result;
}

char *sub_1001B0174(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for VisualVoicemailManager());
  v7 = a1;

  return sub_10014F93C(v7, a2, a3);
}

id sub_1001B0270()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001B0300(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureWindow();
  v3 = objc_msgSendSuper2(&v5, "initWithWindowScene:", a1);

  return v3;
}

id sub_1001B0378(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1001B0400(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureWindow();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001B048C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t FaceTimeControlService.__allocating_init(call:callCenter:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  FaceTimeControlService.init(call:callCenter:)(a1, a2);
  return v4;
}

void *FaceTimeControlService.init(call:callCenter:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FaceTimeValidityState();
  sub_10000688C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100005BD0();
  v12 = v11 - v10;
  v3[4] = a1;
  v3[5] = a2;
  sub_10014EA98(&qword_1003ABF68, &qword_1002FCE50);
  swift_allocObject();
  v13 = a1;
  v14 = a2;
  v3[2] = CurrentValueSubject.init(_:)();
  (*(v8 + 104))(v12, enum case for FaceTimeValidityState.unknown(_:), v6);
  sub_10014EA98(&qword_1003AC4E8, &qword_1002FCF28);
  swift_allocObject();
  v3[3] = CurrentValueSubject.init(_:)();
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  [v16 addObserver:v3 selector:"callStatusDidChange:" name:TUCallCenterCallStatusChangedNotification object:0];

  v17 = [v15 defaultCenter];
  [v17 addObserver:v3 selector:"faceTimeIDStatusDidChange:" name:TUCallFaceTimeIDStatusChangedNotification object:0];

  sub_1001B0768();
  sub_1001B0970();

  return v3;
}

void sub_1001B07C0(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 + 32);
  Notification.object.getter();
  if (v8)
  {
    sub_1001A7AEC();
    if (swift_dynamicCast())
    {
      v5 = [v6 isEqualToCall:v4];

      if (v5)
      {
        a2();
      }
    }
  }

  else
  {
    sub_10015E258(v7);
  }
}

uint64_t sub_1001B088C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = type metadata accessor for Notification();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005BD0();
  v11 = v10 - v9;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v11);

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_1001B0970()
{
  v0 = type metadata accessor for FaceTimeValidityState();
  sub_10000688C();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100005BD0();
  v6 = v5 - v4;
  sub_1001B0CFC(v5 - v4);
  CurrentValueSubject.send(_:)();
  return (*(v2 + 8))(v6, v0);
}

Swift::Void __swiftcall FaceTimeControlService.requestUpgradeToFaceTime()()
{
  v3 = v0 + 32;
  v2 = *(v0 + 32);
  v1 = *(v3 + 8);
  [v1 requestVideoUpgradeForCall:v2 originatingUIType:27];
  [v2 setIsSendingVideo:1];
  v8 = [v1 routeController];
  v4 = [v8 pickedRoute];
  if (v4)
  {
    v5 = v4;
    if ([v4 isReceiver])
    {
      v6 = [v8 speakerRoute];
      if (v6)
      {
        v7 = v6;
        [v8 pickRoute:v6];

        v8 = v7;
      }
    }
  }
}

id sub_1001B0B28()
{
  v1 = *(v0 + 32);
  v2 = [v1 provider];
  v3 = [v2 supportsAudioAndVideo];

  if ((v3 & 1) == 0)
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v5 = result;
    v6 = [result faceTimeVideoIsAvailable];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [v1 handle];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = String.count.getter();

  if (v10 < 1 || ([v1 isConferenced] & 1) != 0 || (objc_msgSend(v1, "isVoicemail") & 1) != 0 || (objc_msgSend(v1, "isEmergency") & 1) != 0 || objc_msgSend(v1, "status") != 1 || objc_msgSend(v1, "faceTimeIDStatus") == 1)
  {
    return 0;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = [result isSetupAssistantRunning];

    return (v12 ^ 1);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1001B0CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 32) faceTimeIDStatus];
  v4 = type metadata accessor for FaceTimeValidityState();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for FaceTimeValidityState.valid(_:);
  if (v3 != 2)
  {
    v6 = &enum case for FaceTimeValidityState.unknown(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t FaceTimeControlService.deinit()
{

  return v0;
}

uint64_t FaceTimeControlService.__deallocating_deinit()
{
  FaceTimeControlService.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_1001B0E00(uint64_t a1, uint64_t a2)
{
  result = qword_1003AC4F0;
  if (!qword_1003AC4F0)
  {
    type metadata accessor for FaceTimeControlService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC4F0);
  }

  return result;
}

id sub_1001B0EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_100007790();
  objc_allocWithZone(type metadata accessor for AudioCallViewController(v6));
  v7 = v4;
  v8 = v3;
  v9 = sub_1001B12B8();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR___PHAudioCallViewControllerWrapper_viewController] = v9;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for AudioCallViewControllerWrapper();
  v10 = objc_msgSendSuper2(&v12, "init");

  swift_unknownObjectRelease();
  return v10;
}

uint64_t type metadata accessor for AudioCallViewController(uint64_t a1)
{
  result = qword_1003AC6A0;
  if (!qword_1003AC6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1001B1160()
{
  v1 = v0;
  v2 = sub_1001B1200();
  if (v2)
  {
    v3 = v2;
    v4 = qword_1003AC698;
    if (!*&v1[qword_1003AC698])
    {
      objc_allocWithZone(type metadata accessor for CallDetailsCoordinator());
      v5 = v1;
      v6 = CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)();
      v3 = *&v1[v4];
      *&v1[v4] = v6;
    }

    v7 = *&v1[v4];
    v8 = v7;
  }

  else
  {
    v9 = *&v0[qword_1003AC698];
    *&v0[qword_1003AC698] = 0;

    return 0;
  }

  return v7;
}

uint64_t sub_1001B1200()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v2 = ICSApplicationDelegate.bannerPresentationManager.getter();
      v3 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();
      swift_unknownObjectRelease();

      return v3;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

char *sub_1001B12B8()
{
  sub_100007790();
  v3 = type metadata accessor for AudioCallView();
  __chkstk_darwin(v3 - 8);
  swift_unknownObjectWeakInit();
  *&v0[qword_1003AC698] = 0;
  *&v0[qword_1003AC680] = v1;
  v4 = v1;
  result = [v0 frontmostCall];
  if (result)
  {
    v6 = result;
    type metadata accessor for AudioCallModelManager();
    swift_allocObject();
    v7 = v4;
    v8 = v0;
    *&v0[qword_1003AC688] = sub_1001D7828(v7, v6, v8, v2);

    AudioCallView.init(model:)();
    v9 = LockScreenHostingController.init(rootView:)();
    v10 = *&v9[qword_1003AC688];
    *(v10 + 64) = sub_1001B1BCC(qword_1003AC7C0, &unk_1002FD0D8);
    swift_unknownObjectWeakAssign();
    v11 = v9;

    sub_1001D7980();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001B146C()
{
  swift_unknownObjectWeakInit();
  *(v0 + qword_1003AC698) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001B1560()
{

  sub_100037A10(v0 + qword_1003AC690);
  v1 = *(v0 + qword_1003AC698);
}

id sub_1001B15DC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001B1614(uint64_t a1)
{

  sub_100037A10(a1 + qword_1003AC690);
  v2 = *(a1 + qword_1003AC698);
}

void sub_1001B168C()
{
  if ([v0 isReadyToShowCallDetails])
  {
    v1 = sub_1001B1200();
    if (v1)
    {
      v4 = v1;
      if (dispatch thunk of ConversationControlsManager.shouldShowCallDetailsWhenReady.getter())
      {
        v2 = sub_1001B1160();
        if (v2)
        {
          v3 = v2;
          dispatch thunk of CallDetailsCoordinator.start(withReason:)();
        }
      }
    }
  }
}

void sub_1001B1734(void *a1)
{
  v1 = a1;
  sub_1001B1688();
}

BOOL sub_1001B177C(void *a1)
{
  v1 = a1;
  v2 = sub_1001B17B0();

  return v2;
}

void sub_1001B17E4(uint64_t a1, uint64_t a2)
{
  [*(v2 + qword_1003AC688) callDisplayStyleDidChangeFromStyle:a1 toStyle:a2];

  sub_1001B168C();
}

void sub_1001B1828(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  sub_1001B17E4(a3, a4);
}

void sub_1001B1884()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4[4] = sub_1001B1B48;
    v4[5] = v2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_100164920;
    v4[3] = &unk_10035D538;
    v3 = _Block_copy(v4);

    [v1 requestPasscodeUnlockWithCompletion:v3];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001B198C(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a1 & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    if ([objc_opt_self() shouldUseFullScreenPeoplePicker])
    {
      v7 = [objc_opt_self() sharedInstance];
      if (!v7)
      {
        goto LABEL_12;
      }

      v8 = v7;
      sub_1001B1B50(1, 0xD000000000000025, 0x80000001002A9590, v7);
    }

    v9 = [v4 view];
    if (v9)
    {
      v10 = v9;
      [v6 presentPhoneRemoteViewControllerForView:v9];

      swift_unknownObjectRelease();
      v4 = v10;
LABEL_9:

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

uint64_t sub_1001B1AE0(uint64_t a1)
{
  *(a1 + 8) = sub_1001B1BCC(&qword_1003AC7B0, &unk_1002FD0B0);
  result = sub_1001B1BCC(&qword_1003AC7B8, &unk_1002FD088);
  *(a1 + 16) = result;
  return result;
}

void sub_1001B1B50(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 setRequestedVCPresentationWithStatusBar:a1 & 1 withReasonLog:v6];
}

uint64_t sub_1001B1BCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioCallViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B1C10(uint64_t a1)
{
  result = type metadata accessor for Mutex();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1001B1D14(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_100017230(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1001B1E00(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4 + *((swift_isaMask & *v4) + 0xB0), v8);
  v12 = v4 + *((swift_isaMask & *v4) + 0x80);
  os_unfair_lock_lock(v12);
  sub_1001B1F80(v12 + 1, v4, v11, a1, a2, a3);
  os_unfair_lock_unlock(v12);
  return (*(v9 + 8))(v11, v8);
}

void sub_1001B1F80(void **a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a4;
  v10 = *a1;
  if (v10)
  {
    v11 = v10;
LABEL_5:
    swift_unknownObjectRetain_n();
    v8(v11);
    swift_unknownObjectRelease_n();
    return;
  }

  v11 = (*(a2 + *((swift_isaMask & *a2) + 0x78)))();
  *a1 = v11;
  v15 = a2 + *((swift_isaMask & *a2) + 0x90);
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v15);
  sub_1001B20D0(v15 + 1, v11, a2, a3, a6);
  if (!v7)
  {
    os_unfair_lock_unlock(v15);
    v8 = a4;
    goto LABEL_5;
  }

  os_unfair_lock_unlock(v15);
  __break(1u);
}

_OWORD *sub_1001B20D0(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a2;
  v25 = a1;
  v7 = *a3;
  v8 = swift_isaMask;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v12 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = *((v8 & v7) + 0x50);
  *(v13 + 3) = *((v8 & v7) + 0x58);
  *(v13 + 4) = v23;
  *(v13 + 5) = *((v8 & v7) + 0x60);
  *(v13 + 6) = a3;
  (*(v10 + 32))(&v13[v12], &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v29 = sub_1001B7298;
  v30 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v27 = sub_1001B3564;
  ObjectType = &unk_10035D6E0;
  v14 = _Block_copy(&aBlock);
  v15 = a3;

  v16 = [v24 listenForChangesWithHandler:v14];
  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  swift_unknownObjectRetain();
  v17 = v25;
  sub_10021689C(v18);
  v19 = *(*v17 + 16);
  sub_10021696C(v19);
  swift_unknownObjectRelease();
  v20 = *v17;
  *(v20 + 16) = v19 + 1;
  result = sub_100034DBC(&aBlock, (v20 + 32 * v19 + 32));
  *v17 = v20;
  return result;
}

double sub_1001B234C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a1;
  v30 = a4;
  v32 = *a3;
  v31 = swift_isaMask;
  v6 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v28 = &v27 - v7;
  v9 = type metadata accessor for Logger();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for TaskPriority();
  sub_100006848(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v12, v30, v9);
  sub_1001B7320(a2, v8);
  v18 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v29 + 80) + v19 + 8) & ~*(v29 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v23 = v31;
  v22 = v32;
  *(v21 + 4) = *((v31 & v32) + 0x50);
  *(v21 + 5) = *((v23 & v22) + 0x58);
  *(v21 + 6) = v33;
  *(v21 + 7) = *((v23 & v22) + 0x60);
  *(v21 + 8) = v17;
  (*(v10 + 32))(&v21[v18], v12, v27);
  v24 = v34;
  *&v21[v19] = v34;
  sub_100154A58(v28, &v21[v20]);
  v25 = v24;
  sub_1001621BC();

  return result;
}

uint64_t sub_1001B266C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001B2720, 0, 0);
}

uint64_t sub_1001B2720()
{
  v24 = v0;
  sub_100007158();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {

    sub_10000535C();
    sub_100008D44();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[7];
  sub_1001B7320(v0[8], v0[11]);
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = sub_100008A70();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    sub_1001B7320(v7, v8);
    v13 = v9;
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_10000830C(v7, &qword_1003AAB40, &unk_1002FAAB0);
    v17 = sub_100008ADC(v14, v16, &v23);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "VoicemailAccountManager: processing %@ for UUID %s", v10, 0x16u);
    sub_10000830C(v11, &qword_1003B0230, &qword_1002FC550);
    sub_100005BB8(v11);
    sub_100005B2C(v12);
    sub_100005BB8(v12);
    sub_100005BB8(v10);
  }

  else
  {

    sub_10000830C(v7, &qword_1003AAB40, &unk_1002FAAB0);
  }

  v20 = swift_task_alloc();
  v0[13] = v20;
  *v20 = v0;
  v20[1] = sub_1001B2998;
  sub_100008D44();

  return sub_1001B2AE8();
}

uint64_t sub_1001B2998()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_1001B79FC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B2A80()
{
  sub_100006610();

  sub_10000535C();

  return v1();
}

uint64_t sub_1001B2AE8()
{
  sub_100006610();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = swift_isaMask & *v0;
  v4 = type metadata accessor for CancellationError();
  v1[7] = v4;
  sub_100006998(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v6 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_100006998(v6);
  v1[10] = v7;
  v1[11] = *(v8 + 64);
  v1[12] = swift_task_alloc();
  sub_1001B79FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001B2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v63 = v14;
  v15 = *(v14 + 24);
  *(v14 + 104) = *((swift_isaMask & **(v14 + 40)) + 0xB0);
  v16 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v14 + 24);
    v20 = sub_100005384();
    v21 = sub_100008A70();
    *v20 = 138412290;
    *(v20 + 4) = v19;
    *v21 = v19;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v17, v18, "Updating voicemail account Cache with updates: %@", v20, 0xCu);
    sub_10000830C(v21, &qword_1003B0230, &qword_1002FC550);
    sub_100005BB8(v21);
    sub_100005BB8(v20);
  }

  v60 = *(v14 + 96);
  v61 = *(v14 + 80);
  v23 = *(v14 + 40);
  v24 = *(v14 + 48);
  v26 = *(v14 + 24);
  v25 = *(v14 + 32);
  v59 = v26;

  sub_100005C44();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_task_alloc();
  v29 = v24[10];
  v28[2] = v29;
  v30 = v24[11];
  v28[3] = v30;
  v31 = v24[12];
  v28[4] = v31;
  v28[5] = v27;
  v28[6] = v26;
  sub_1001B1E00(sub_1001B7528, v28, &type metadata for ()[8]);

  sub_100005C44();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1001B7320(v25, v60);
  v33 = (*(v61 + 80) + 56) & ~*(v61 + 80);
  v34 = swift_allocObject();
  v34[2] = v29;
  v34[3] = v30;
  v34[4] = v31;
  v34[5] = v32;
  v34[6] = v59;
  sub_100154A58(v60, v34 + v33);
  v35 = v59;

  dispatch thunk of TaskQueue.async(_:)();

  v36 = v23 + *((swift_isaMask & *v23) + 0x98);
  os_unfair_lock_lock(v36);
  sub_1001B694C(v36 + 1, v23, &v62);
  os_unfair_lock_unlock(v36);
  v37 = v62;
  *(v14 + 112) = v62;
  if (!v37)
  {
    v47 = *(v14 + 24);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v14 + 24);
      v51 = sub_100005384();
      v52 = sub_100008A70();
      *v51 = 138412290;
      *(v51 + 4) = v50;
      *v52 = v50;
      v53 = v50;
      sub_100005414(&_mh_execute_header, v54, v55, "Finished Updating voicemail account Cache with updates: %@");
      sub_10000830C(v52, &qword_1003B0230, &qword_1002FC550);
      sub_100005BB8(v52);
      sub_100005BB8(v51);
    }

    sub_10000535C();
    sub_100025ED8();

    __asm { BRAA            X1, X16 }
  }

  v38 = swift_task_alloc();
  *(v14 + 120) = v38;
  *(v14 + 128) = sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
  *v38 = v14;
  v38[1] = sub_1001B30E0;
  sub_100025ED8();

  return Task.value.getter(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001B30E0()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v3 + 136) = v0;

  if (v0)
  {
  }

  sub_1001B79FC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001B31E8()
{
  sub_100006880();

  v1 = *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = sub_100005384();
    v6 = sub_100008A70();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    sub_100005414(&_mh_execute_header, v8, v9, "Finished Updating voicemail account Cache with updates: %@");
    sub_10000830C(v6, &qword_1003B0230, &qword_1002FC550);
    sub_100005BB8(v6);
    sub_100005BB8(v5);
  }

  sub_10000535C();

  return v10();
}

uint64_t sub_1001B3318()
{
  sub_100006880();
  v0[2] = v0[17];
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Canceling disk update because newer updates were received", v3, 2u);
      sub_100005BB8(v3);
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_100005384();
      v10 = sub_100008A70();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update cache on Disk with: %@", v9, 0xCu);
      sub_10000830C(v10, &qword_1003B0230, &qword_1002FC550);
      sub_100005BB8(v10);
      sub_100005BB8(v9);

      goto LABEL_9;
    }
  }

LABEL_9:

  sub_10000535C();

  return v12();
}

uint64_t sub_1001B3564(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = 1;
  }

  sub_100006848(v8, v11, 1, v10);

  v12 = a2;
  v9();

  return sub_10000830C(v8, &qword_1003AAB40, &unk_1002FAAB0);
}

uint64_t (*sub_1001B3674(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v7 = *v3;
  v8 = swift_isaMask;
  v9 = swift_allocObject();
  v9[2] = *((v8 & v7) + 0x50);
  v9[3] = *((v8 & v7) + 0x58);
  v9[4] = a3;
  v9[5] = *((v8 & v7) + 0x60);
  v9[6] = a1;
  v9[7] = a2;

  return sub_1001B7824;
}

uint64_t sub_1001B374C@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v7 = swift_unknownObjectRetain();
    a2(v7);
    swift_unknownObjectRelease();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_100006848(a4, v8, 1, a3);
}

double sub_1001B37D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1001B3674(a1, a2, a3);
  v5 = (v3 + *((swift_isaMask & *v3) + 0x70));
  os_unfair_lock_lock(v5);
  (v4)(&v5[2]);
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  os_unfair_lock_unlock(v5);

  return result;
}

uint64_t sub_1001B38AC(void *a1)
{
  v1 = a1;
  v2 = sub_1001B38E0();

  return v2 & 1;
}

uint64_t sub_1001B38E0()
{
  sub_100025ADC();
  v1 = *(v0 + 80);
  sub_100025ADC();
  v3 = *(v2 + 88);
  sub_100025ADC();
  v5 = *(v4 + 96);
  KeyPath = swift_getKeyPath();
  sub_100008C18();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = KeyPath;
  sub_100030224();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v5;
  v8[5] = sub_1001B7990;
  v8[6] = v7;
  sub_10000B474(v8, v9, &type metadata for Bool);

  if (v11 != 2 && (v11 & 1) != 0)
  {
    return 1;
  }

  sub_1001B1E00(sub_1001B79F8, 0, &type metadata for Bool);
  return v11;
}

uint64_t sub_1001B3A44(void *a1)
{
  v1 = a1;
  v2 = sub_1001B3A78();

  return v2 & 1;
}

uint64_t sub_1001B3A78()
{
  sub_100025ADC();
  v1 = *(v0 + 80);
  sub_100025ADC();
  v3 = *(v2 + 88);
  sub_100025ADC();
  v5 = *(v4 + 96);
  KeyPath = swift_getKeyPath();
  sub_100008C18();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = KeyPath;
  sub_100030224();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v5;
  v8[5] = sub_1001B79E4;
  v8[6] = v7;
  sub_10000B474(v8, v9, &type metadata for Bool);

  if (v11 != 2 && (v11 & 1) != 0)
  {
    return 1;
  }

  sub_1001B1E00(sub_1001B3BC0, 0, &type metadata for Bool);
  return v11;
}

id sub_1001B3BC0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isOnline];
  *a2 = result;
  return result;
}

uint64_t sub_1001B3BF0(void *a1)
{
  v1 = a1;
  sub_1001B3C24(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, vars0, vars8, SWORD2(vars8), SBYTE6(vars8), SHIBYTE(vars8));
  v10 = v9;

  return v10 & 1;
}

void sub_1001B3C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100005984();
  sub_100008010();
  sub_100025ADC();
  sub_100025ADC();
  swift_getKeyPath();
  sub_100008C18();
  v16 = swift_allocObject();
  sub_1000095EC(v16);
  sub_100030224();
  v17 = swift_allocObject();
  v18 = sub_100008408(v17);
  v19 = sub_100005978(v18);
  sub_10000B474(v19, v20, &type metadata for Bool);

  if (a15 == 2)
  {
    sub_100008010();
    [*(v15 + *(v21 + 104)) isMessageWaiting];
  }

  sub_100005C78();
}

id sub_1001B3D40(void *a1)
{
  v1 = a1;
  v2 = sub_1001B3D74();

  return v2;
}

id sub_1001B3D74()
{
  sub_100008010();
  v10 = *(v1 + 80);
  sub_100025ADC();
  v11 = *(v2 + 88);
  sub_100025ADC();
  v12 = *(v3 + 96);
  KeyPath = swift_getKeyPath();
  sub_100008C18();
  v5 = swift_allocObject();
  sub_1000095EC(v5);
  sub_100030224();
  v6 = swift_allocObject();
  v7 = sub_100008408(v6);
  sub_100005978(v7);
  sub_1001B37D4(sub_1001B7940, KeyPath, &type metadata for UInt);

  if (v14 != 1)
  {
    return v13;
  }

  sub_100008010();
  return [*(v0 + *(v8 + 104)) storageUsage];
}

uint64_t sub_1001B3EB0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1001B3F00(void *a1)
{
  v1 = a1;
  v9 = sub_1001B3F34(v1, v2, v3, v4, v5, v6, v7, v8);

  return v9;
}

uint64_t sub_1001B3F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1001B3F6C(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, vars0, vars8);
  v9 = sub_100017230(v8);

  return v9;
}

void sub_1001B3F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005984();
  sub_100025ADC();
  v13 = *(v12 + 80);
  sub_100025ADC();
  v15 = *(v14 + 88);
  sub_100025ADC();
  swift_getKeyPath();
  sub_100008C18();
  v16 = swift_allocObject();
  sub_1000095EC(v16);
  sub_100030224();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  sub_100005978(v17);
  v18 = sub_10014EA98(&qword_1003AC888, &qword_1002FD2A0);
  sub_1001B37D4(sub_1001B77F8, v17, v18);

  if (!a12)
  {
    goto LABEL_4;
  }

  if (!sub_100017230(a12))
  {

LABEL_4:
    sub_1001B1E00(sub_1001B79F4, 0, v18);
  }

  sub_100005C78();
}

Class sub_1001B40D8(void *a1)
{
  v1 = a1;
  sub_1001B3F6C(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, vars0, vars8);

  type metadata accessor for VoicemailAccount(0);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

void sub_1001B413C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 accounts];
  type metadata accessor for VoicemailAccount(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void sub_1001B41A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 accounts];
  type metadata accessor for VoicemailAccount(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t sub_1001B4200(void *a1)
{
  v1 = a1;
  sub_1001B4234(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, vars0, vars8, SWORD2(vars8), SBYTE6(vars8), SHIBYTE(vars8));
  v10 = v9;

  return v10 & 1;
}

void sub_1001B4234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100005984();
  sub_100008010();
  sub_100025ADC();
  sub_100025ADC();
  swift_getKeyPath();
  sub_100008C18();
  v16 = swift_allocObject();
  sub_1000095EC(v16);
  sub_100030224();
  v17 = swift_allocObject();
  v18 = sub_100008408(v17);
  v19 = sub_100005978(v18);
  sub_10000B474(v19, v20, &type metadata for Bool);

  if (a15 == 2)
  {
    sub_100008010();
    [*(v15 + *(v21 + 104)) isMessageWaiting];
  }

  sub_100005C78();
}

uint64_t sub_1001B4350(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v3;
}

id sub_1001B43A0(void *a1)
{
  v1 = a1;
  sub_1001B43E4(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, vars0, vars8);
  v10 = v9;

  return v10;
}

void sub_1001B43E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005984();
  sub_100008010();
  sub_100025ADC();
  sub_100025ADC();
  KeyPath = swift_getKeyPath();
  sub_100008C18();
  v14 = swift_allocObject();
  sub_1000095EC(v14);
  sub_100030224();
  v15 = swift_allocObject();
  v16 = sub_100008408(v15);
  sub_100005978(v16);
  v17 = sub_10014EA98(&qword_1003AC890, &qword_1002FD2D8);
  sub_1001B37D4(sub_1001B78CC, KeyPath, v17);

  if (a12 == 1)
  {
    sub_100008010();
    v19 = [*(v12 + *(v18 + 104)) transcriptionProgress];
  }

  sub_100005C78();
}

id sub_1001B4520@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transcriptionProgress];
  *a2 = result;
  return result;
}

uint64_t sub_1001B4590(void *a1, uint64_t (*a2)(id *), void *a3, void (*a4)(uint64_t))
{
  v8 = type metadata accessor for UUID();
  sub_10000688C();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100005BD0();
  v14 = v13 - v12;
  sub_1001B3F6C(v15, v16, v17, v18, v19, v20, v21, v22, v37, v38, v39[0], v39[1]);
  v39[2] = a1;
  sub_1001B1D14(a2, v39, v23);
  v25 = v24;

  if (v25)
  {
    v26 = v25[*a3];
  }

  else
  {
    if (qword_1003A9F50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008A14(v27, &unk_1003B8850);
    (*(v10 + 16))(v14, a1, v8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = sub_100005384();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v30 = 136315138;
      sub_1001B7798(&qword_1003AAC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = a4;
      v33 = v32;
      (*(v10 + 8))(v14, v8);
      v34 = sub_100008ADC(v31, v33, &v40);
      a4 = v38;

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "No Account found for %s in cache.", v30, 0xCu);
      sub_100005B2C(v37);
      sub_100005BB8(v37);
      sub_100005BB8(v30);
    }

    else
    {

      v35 = (*(v10 + 8))(v14, v8);
    }

    __chkstk_darwin(v35);
    *(&v37 - 2) = a1;
    sub_1001B1E00(a4, (&v37 - 4), &type metadata for Bool);
    return v40;
  }

  return v26;
}

uint64_t sub_1001B48E0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), void *a5, void (*a6)(uint64_t))
{
  v10 = type metadata accessor for UUID();
  sub_10000688C();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100005BD0();
  v16 = (v15 - v14);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a1;
  LOBYTE(a6) = sub_1001B4590(v16, a4, a5, a6);

  (*(v12 + 8))(v16, v10);
  return a6 & 1;
}

uint64_t sub_1001B49DC(uint64_t a1)
{
  v2[2] = a1;
  sub_1001B1E00(sub_1001B7750, v2, &type metadata for Bool);
  return v3;
}

void sub_1001B4A28(void *a1@<X0>, SEL *a2@<X2>, _BYTE *a3@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  LOBYTE(a2) = [a1 *a2];

  *a3 = a2;
}

uint64_t sub_1001B4A80(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  v9 = sub_1001B49DC(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

void sub_1001B4BB0(void *a1@<X0>, void *a2@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = [a1 maximumPasscodeLengthForAccountUUID:isa];

  *a2 = v5;
}

void sub_1001B4C60(void *a1@<X0>, void *a2@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = [a1 minimumPasscodeLengthForAccountUUID:isa];

  *a2 = v5;
}

uint64_t sub_1001B4CD0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = type metadata accessor for UUID();
  sub_10000688C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100005BD0();
  v12 = v11 - v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a1;
  v14 = a4(v12);

  (*(v8 + 8))(v12, v6);
  return v14;
}

void sub_1001B4DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12[4] = a5;
  v12[5] = a6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001B4EE8;
  v12[3] = &unk_10035D870;
  v11 = _Block_copy(v12);

  [a1 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

void sub_1001B4EE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001B4F60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a5);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = a1;
  sub_1001B4DB4(v12, v14, v10, sub_1001B79E0, v15, v17, v18, v19);

  return (*(v8 + 8))(v10, v7);
}

void sub_1001B5100(void *a1@<X0>, void *a2@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [a1 maximumGreetingDurationForAccountUUID:isa];
  v6 = v5;

  *a2 = v6;
}

double sub_1001B5160(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  v16 = sub_1001B50C0(v7, v9, v10, v11, v12, v13, v14, v15);

  (*(v5 + 8))(v7, v4);
  return v16;
}

void sub_1001B5298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001B5370;
  v9[3] = &unk_10035D820;
  v8 = _Block_copy(v9);

  [a1 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

void sub_1001B5370(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001B53FC(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a1;
  sub_1001B5258(v9, sub_1001B7714, v11, v13, v14, v15, v16, v17);

  return (*(v7 + 8))(v9, v6);
}

void sub_1001B5570(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001B4EE8;
  v11[3] = &unk_10035D7D0;
  v10 = _Block_copy(v11);

  [a1 setGreeting:a2 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t sub_1001B5650(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a1;
  sub_1001B5530(v14, v11, sub_1001B6018, v13, v16, v17, v18, v19);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001B57A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v6 = sub_100005568(v5);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for TaskPriority();
  sub_100006848(v8, 1, 1, v10);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  sub_100026F50();
  v14 = sub_1001B7798(v12, v13, &unk_1002FDCD8);
  v15 = swift_allocObject();
  v15[2] = inited;
  v15[3] = v14;
  v15[4] = v2;
  v15[5] = v9;
  v16 = v2;

  sub_1001625C0();
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v17 = AnyCancellable.init(_:)();

  return v17;
}

uint64_t sub_1001B5938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1001B7798(&qword_1003AA7B8, type metadata accessor for VoicemailActor, &unk_1002FDCD8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001B5A04, v7, v6);
}

uint64_t sub_1001B5A04()
{
  sub_100006880();
  v1 = v0[3];
  v0[2] = *(v0[4] + *((swift_isaMask & *v0[4]) + 0x88));

  sub_10014EA98(&qword_1003AC868, &qword_1002FD1F8);
  sub_1001B5FB4();
  v2 = Publisher<>.sink(receiveValue:)();

  *v1 = v2;
  sub_10000535C();

  return v3();
}

double sub_1001B5B04(char *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(sub_10014EA98(&qword_1003AC878, &qword_1002FD200) + 48);

  v4(v5, &a1[v6]);

  return result;
}

void sub_1001B5B98()
{
  type metadata accessor for AnyCancellable();

  Task.cancel()();
}

id sub_1001B5BE8(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a1;
  v8 = sub_1001B57A0(sub_1001B5EE0, v6);

  _Block_release(aBlock);

  return v8;
}

uint64_t sub_1001B5CC4(char *a1)
{
  swift_unknownObjectRelease();
  sub_1000077A4();
  type metadata accessor for Optional();
  v2 = type metadata accessor for _Cell();
  sub_1001BE158(v2);
  sub_1000077A4();

  sub_1000077A4();
  sub_10000830C(&a1[*(v3 + 128) + 8], &qword_1003AC880, &unk_1002FD208);
  sub_1000077A4();

  sub_1000077A4();
  sub_10000830C(&a1[*(v4 + 144) + 8], &qword_1003AC898, &qword_1002FD408);
  sub_1000077A4();
  sub_10000830C(&a1[*(v5 + 152) + 8], &qword_1003AC8A0, &qword_1002FD410);
  sub_1000077A4();

  sub_1000077A4();
  type metadata accessor for Mutex();
  v6 = type metadata accessor for _Cell();
  sub_1001BE158(v6);
  sub_1000077A4();
  v8 = *(v7 + 176);
  type metadata accessor for Logger();
  sub_100006B9C();
  v10 = *(v9 + 8);

  return v10(&a1[v8]);
}

uint64_t sub_1001B5EE8()
{
  sub_100006880();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100008204;

  return sub_1001B5938(v3, v4, v5, v7, v6);
}

unint64_t sub_1001B5FB4()
{
  result = qword_1003AC870;
  if (!qword_1003AC870)
  {
    sub_100155B7C(&qword_1003AC868, &qword_1002FD1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC870);
  }

  return result;
}

void *sub_1001B602C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = result + *((swift_isaMask & *result) + 0x70);
    os_unfair_lock_lock(v10);
    v11 = *(v10 + 1);
    v52 = v10 + 8;
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    lock = v10;
    os_unfair_lock_unlock(v10);
    inited = &selRef_handleSystemInitiatedPIPInterruptionStoppedNotification_;
    v13 = &selRef_handleSystemInitiatedPIPInterruptionStoppedNotification_;
    if (v11)
    {
      v14 = qword_1003AA018;
      swift_unknownObjectRetain();
      if (v14 != -1)
      {
LABEL_45:
        swift_once();
      }

      v15 = qword_1003B8A40;
      if (sub_1001BE688(qword_1003B8A40))
      {
        v16 = [a1 *(inited + 2128)];
      }

      else
      {
        v16 = [v11 anyAccountSubscribed];
      }

      v50 = v16;
      if (qword_1003AA008 != -1)
      {
        swift_once();
      }

      v25 = qword_1003B8A30;
      if (sub_1001BE688(qword_1003B8A30))
      {
        v26 = [a1 v13[267]];
      }

      else
      {
        v26 = [v11 online];
      }

      v49 = v26;
      if (sub_1001BE688(v25))
      {
        v27 = a1;
      }

      else
      {
        v27 = v11;
      }

      v48 = [v27 isMessageWaiting];
      if (qword_1003AA028 != -1)
      {
        swift_once();
      }

      if (sub_1001BE688(qword_1003B8A50))
      {
        v28 = a1;
      }

      else
      {
        v28 = v11;
      }

      v47 = [v28 storageUsage];
      if (qword_1003AA030 != -1)
      {
        swift_once();
      }

      v29 = qword_1003B8A58;
      if (sub_1001BE688(qword_1003B8A58))
      {
        v30 = [a1 isTranscriptionEnabled];
      }

      else
      {
        v30 = [v11 transcriptionEnabled];
      }

      v46 = v30;
      if (sub_1001BE688(v29))
      {
        v31 = a1;
      }

      else
      {
        v31 = v11;
      }

      v45 = [v31 transcriptionProgress];
      sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002F96C0;
      if (qword_1003AA038 != -1)
      {
        swift_once();
      }

      v32 = qword_1003B8A60;
      *(inited + 32) = qword_1003B8A60;
      *(inited + 40) = v15;
      v33 = objc_allocWithZone(ObjectType);
      *&v33[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
      v55.receiver = v33;
      v55.super_class = ObjectType;
      v34 = v32;
      v35 = v15;
      ObjectType = 0;
      v56 = objc_msgSendSuper2(&v55, "init");
      v13 = (inited & 0xC000000000000001);
      while (ObjectType != 2)
      {
        if (v13)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (ObjectType >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v36 = *(inited + 8 * ObjectType + 32);
        }

        v37 = v36;
        ++ObjectType;
        sub_1001BF31C(&v54, v36);
      }

      swift_setDeallocating();
      sub_10014E9D8();
      v38 = v56;
      v39 = sub_1001BF1E8(v56);
      v40 = sub_1001BF93C();

      if (v40)
      {
        v41 = v11;
      }

      else
      {
        v41 = a1;
      }

      v42 = [v41 accounts];
      type metadata accessor for VoicemailAccount(0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Array._bridgeToObjectiveC()().super.isa;

      v24 = [v43 initWithAnyAccountSubscribed:v50 online:v49 isMessageWaiting:v48 storageUsage:v47 transcriptionEnabled:v46 transcriptionProgress:v45 accounts:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      v51 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v17 = [a1 isAnyAccountSubscribed];
      v18 = [a1 isOnline];
      v19 = [a1 isMessageWaiting];
      v20 = [a1 storageUsage];
      v21 = [a1 isTranscriptionEnabled];
      v22 = [a1 transcriptionProgress];
      v23 = [a1 accounts];
      v24 = [v51 initWithAnyAccountSubscribed:v17 online:v18 isMessageWaiting:v19 storageUsage:v20 transcriptionEnabled:v21 transcriptionProgress:v22 accounts:v23];
    }

    swift_unknownObjectRetain();
    os_unfair_lock_lock(lock);
    sub_1001B6660(v52, v24);
    os_unfair_lock_unlock(lock);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_1001B6660(void *a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = a2;
  return swift_unknownObjectRetain();
}

uint64_t sub_1001B66A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_10014EA98(&qword_1003AC878, &qword_1002FD200);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001B674C, 0, 0);
}

uint64_t sub_1001B674C()
{
  sub_100006610();
  sub_100007158();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *((swift_isaMask & *Strong) + 0x88);
    type metadata accessor for VoicemailActor();
    swift_initStaticObject();
    sub_100026F50();
    sub_1001B7798(v2, v3, &unk_1002FDCD8);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001B686C, v5, v4);
  }

  else
  {

    sub_10000535C();

    return v6();
  }
}

uint64_t sub_1001B686C()
{
  v0[12] = *(v0[10] + v0[11]);
  sub_1001B79FC();
  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001B68A0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = *(v0[8] + 48);
  *v1 = v4;
  sub_1001B7320(v3, v1 + v5);
  v6 = v4;
  PassthroughSubject.send(_:)();
  sub_10000830C(v1, &qword_1003AC878, &qword_1002FD200);

  sub_10000535C();

  return v7();
}

void sub_1001B694C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = swift_isaMask & *a2;
  v6 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if (*a1)
  {
    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    Task.cancel()();
  }

  static TaskPriority.low.getter();
  v9 = type metadata accessor for TaskPriority();
  sub_100006848(v8, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = *(v5 + 80);
  *(v11 + 48) = *(v5 + 96);
  *(v11 + 56) = v10;
  v12 = sub_10016ECCC();

  *a1 = v12;
  *a3 = v12;
}

uint64_t sub_1001B6B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001B6BC8, 0, 0);
}

uint64_t sub_1001B6BC8()
{
  sub_100006610();
  sub_100007158();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    ContinuousClock.init()();
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1001B6CD8;
    sub_1001B79FC();

    return sub_1000251F4();
  }

  else
  {

    sub_10000535C();

    return v4();
  }
}

uint64_t sub_1001B6CD8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  sub_1001B79FC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B6E3C(uint64_t a1)
{
  v2 = *(v1 + 88);
  static Task<>.checkCancellation()();
  v3 = *(v1 + 72);
  if (!v2)
  {
    sub_1001B6F78();
    sub_100025ADC();
    v6 = &v3[*(v5 + 152)];
    os_unfair_lock_lock(v6);

    *&v6[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v6);
  }

  sub_10000535C();

  return v4();
}

uint64_t sub_1001B6F14()
{
  sub_100006610();

  sub_10000535C();

  return v1();
}

void sub_1001B6F78()
{
  v1 = (v0 + *((swift_isaMask & *v0) + 0xA8));
  os_unfair_lock_lock(v1);
  v2 = type metadata accessor for Mutex();
  sub_1001B7018(v1 + *(v2 + 28), v0);

  os_unfair_lock_unlock(v1);
}

void sub_1001B7018(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_isaMask;
  v5 = (a2 + *((swift_isaMask & *a2) + 0x70));
  os_unfair_lock_lock(v5);
  v6 = *((v4 & v3) + 0x58);
  v7 = *((v4 & v3) + 0x60);
  v8 = *&v5[2]._os_unfair_lock_opaque;
  swift_unknownObjectRetain();
  if (v2)
  {
    type metadata accessor for Optional();
    os_unfair_lock_unlock(v5);
    __break(1u);
  }

  else
  {
    type metadata accessor for Optional();
    os_unfair_lock_unlock(v5);
    if (v8)
    {
      v17 = v8;
      v9 = (*(v7 + 16))(&v17, v6, v7);
      v10 = Logger.logObject.getter();
      if (v9)
      {
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Failed to update cache on Disk";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
        }
      }

      else
      {
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Updated cache on Disk";
          goto LABEL_11;
        }
      }

      swift_unknownObjectRelease();
      return;
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to update cache on Disk because the cache was nil", v16, 2u);
    }
  }
}

double sub_1001B7298(void *a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = type metadata accessor for Logger();
  sub_100005568(v6);
  v8 = *(v2 + 48);
  v9 = v2 + ((*(v7 + 80) + 56) & ~*(v7 + 80));

  return sub_1001B234C(a1, a2, v8, v9, v5);
}

uint64_t sub_1001B7320(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B7390()
{
  v1 = type metadata accessor for Logger();
  sub_100006998(v1);
  v2 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_100005568(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100008208;
  sub_100008D44();

  return sub_1001B266C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001B7538()
{
  v2 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_100005568(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008204;

  return sub_1001B66A8(v5, v6, v0 + v4);
}

uint64_t sub_1001B7640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008208;

  return sub_1001B6B08(a1, v4, v5, v6);
}

uint64_t sub_1001B7798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B77F8()
{
  sub_10001429C();
  result = v1();
  *v0 = result;
  return result;
}

uint64_t sub_1001B78CC()
{
  sub_10001429C();
  result = v1();
  *v0 = result;
  return result;
}

uint64_t sub_1001B7904()
{
  sub_10001429C();
  result = v1();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1001B7940()
{
  sub_10001429C();
  result = v1();
  *v0 = result;
  return result;
}

uint64_t DeclineControlService.__allocating_init(callCenter:)(void *a1)
{
  v2 = swift_allocObject();
  DeclineControlService.init(callCenter:)(a1);
  return v2;
}

uint64_t DeclineControlService.init(callCenter:)(void *a1)
{
  v2 = v1;
  *(v2 + 16) = a1;
  v4 = objc_allocWithZone(type metadata accessor for DeclineCallServiceFactory());
  v5 = a1;

  type metadata accessor for DeclineCallService();
  swift_allocObject();
  *(v2 + 24) = sub_1002025F4(v5);
  return v2;
}

Swift::Void __swiftcall DeclineControlService.requestDeclineCall()()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_100006848(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_1001621BC();
}

uint64_t sub_1001B7BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_1001B7C68, v6, v5);
}

uint64_t sub_1001B7C68()
{
  v1 = *(v0[18] + 24);
  v0[2] = v0;
  v0[3] = sub_1001B7D80;
  v2 = swift_continuation_init();
  v0[17] = sub_10014EA98(&qword_1003AAE28, &qword_1002FCE00);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001ADEBC;
  v0[13] = &unk_10035DB18;
  v0[14] = v2;
  [v1 declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001B7D80()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_1001B7E88, v2, v1);
}

uint64_t sub_1001B7E88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeclineControlService.__deallocating_deinit()
{
  DeclineControlService.deinit();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1001B7F68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001559CC;

  return sub_1001B7BD0(a1, v4, v5, v6);
}

uint64_t iPadAudioCallViewController._callRecordingController.getter()
{
  if ([v0 callRecordingController])
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
    type metadata accessor for CallRecordingController();
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
    sub_1000306A4(v5, &unk_1003AAF50, &qword_1002FB170);
    return 0;
  }
}

void iPadAudioCallViewController._callRecordingController.setter(void *a1)
{
  [v1 setCallRecordingController:a1];
}

Swift::Void __swiftcall iPadAudioCallViewController.startRecording()()
{
  v1 = v0;
  v2 = [v0 _callRecordingController];
  if (!v2)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008A14(v3, &unk_1003B8820);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Call recording requested however no callRecordingController exists. Attempting to create a callRecordingController for the More Menu.", v6, 2u);
    }

    v2 = sub_1001DF5C8();
    [v1 set_callRecordingController:v2];
  }

  v7 = [v1 _callRecordingController];
  if (v7)
  {
    v8 = v7;
    dispatch thunk of CallRecordingController.startRecording()();
  }
}

Swift::Void __swiftcall iPadAudioCallViewController.endRecording()()
{
  v1 = [v0 _callRecordingController];
  if (v1)
  {
    v2 = v1;
    dispatch thunk of CallRecordingController.stopRecording()();
  }
}

Swift::Void __swiftcall iPadAudioCallViewController.updateCallRecordingIfNeeded()()
{
  v1 = [v0 existingPrioritizedCall];
  if (v1)
  {
    v2 = v1;
    [v0 updateCallRecording:?];
  }
}

id sub_1001B85B4(SEL *a1, SEL *a2)
{
  v5 = [v2 existingPrioritizedCall];
  if (!v5)
  {
    v5 = [v2 frontmostCall];
    if (!v5)
    {
      return 0;
    }
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

Swift::Void __swiftcall iPadAudioCallViewController.observeCallRecordingNotifications()()
{
  v1 = v0;
  sub_10014EA98(&qword_1003AC958, &qword_1002FD488);
  sub_10000688C();
  v74 = v3;
  v75 = v2;
  sub_100005BE0();
  __chkstk_darwin(v4);
  v73 = &v56 - v5;
  sub_10014EA98(&qword_1003AC960, &qword_1002FD490);
  sub_10000688C();
  v71 = v7;
  v72 = v6;
  sub_100005BE0();
  __chkstk_darwin(v8);
  v76 = &v56 - v9;
  sub_10014EA98(&qword_1003AC968, &qword_1002FD498);
  sub_100005BE0();
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for NSNotificationCenter.Publisher();
  sub_10000688C();
  v15 = v14;
  __chkstk_darwin(v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10014EA98(&qword_1003AC970, &qword_1002FD4A0);
  sub_10000688C();
  v66 = v20;
  sub_100005BE0();
  __chkstk_darwin(v21);
  v23 = &v56 - v22;
  v24 = [v0 features];
  v25 = [v24 iPadCallRecordingEnabled];

  if (v25)
  {
    v78 = _swiftEmptyArrayStorage;
    v64 = objc_opt_self();
    v26 = [v64 defaultCenter];
    v27 = static NSNotificationName.startCallRecordingCountdownNotification.getter();
    NSNotificationCenter.publisher(for:object:)();

    v67 = objc_opt_self();
    v28 = [v67 mainRunLoop];
    v77 = v28;
    v70 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v29 = sub_10000C3D0();
    sub_100006848(v29, v30, v31, v32);
    v69 = sub_1000064BC(0, &qword_1003AC978, NSRunLoop_ptr);
    v62 = sub_100029B9C();
    v68 = sub_1001B95E8();
    sub_100025AE8();
    Publisher.receive<A>(on:options:)();
    sub_1000306A4(v12, &qword_1003AC968, &qword_1002FD498);

    v60 = *(v15 + 8);
    v60(v18, v13);
    sub_100005C44();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    v59 = sub_100027E08(&qword_1003AC988, &qword_1003AC970, &qword_1002FD4A0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher<>.sink(receiveValue:)();

    v65 = v1;
    v58 = *(v66 + 8);
    v58(v23, v19);
    v33 = sub_10014EA98(&qword_1003AC990, &qword_1002FD4A8);
    v57 = v19;
    v63 = v33;
    v66 = sub_100027E08(&qword_1003AC998, &qword_1003AC990, &qword_1002FD4A8, &protocol conformance descriptor for [A]);
    AnyCancellable.store<A>(in:)();

    v34 = [v64 defaultCenter];
    v35 = static NSNotificationName.startCallRecordingStateCancelledNotification.getter();
    NSNotificationCenter.publisher(for:object:)();

    v36 = [v67 mainRunLoop];
    v77 = v36;
    v37 = sub_10000C3D0();
    sub_100006848(v37, v38, v39, v70);
    sub_100025AE8();
    Publisher.receive<A>(on:options:)();
    sub_1000306A4(v12, &qword_1003AC968, &qword_1002FD498);

    v40 = v60;
    v60(v18, v13);
    sub_100005C44();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = v13;
    v42 = v57;
    Publisher<>.sink(receiveValue:)();

    v58(v23, v42);
    AnyCancellable.store<A>(in:)();

    v43 = [v64 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
    v44 = v73;
    Publisher.compactMap<A>(_:)();
    v40(v18, v41);
    v45 = [v67 mainRunLoop];
    v77 = v45;
    v46 = sub_10000C3D0();
    sub_100006848(v46, v47, v48, v70);
    sub_100027E08(&qword_1003AC9A0, &qword_1003AC958, &qword_1002FD488, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v50 = v75;
    v49 = v76;
    Publisher.receive<A>(on:options:)();
    sub_1000306A4(v12, &qword_1003AC968, &qword_1002FD498);

    (*(v74 + 8))(v44, v50);
    sub_100005C44();
    swift_allocObject();
    v51 = v65;
    swift_unknownObjectWeakInit();
    sub_100027E08(&qword_1003AC9A8, &qword_1003AC960, &qword_1002FD490, v61);
    v52 = v72;
    Publisher<>.sink(receiveValue:)();

    (*(v71 + 8))(v49, v52);
    AnyCancellable.store<A>(in:)();

    v53 = v78;
    v54 = objc_allocWithZone(type metadata accessor for CombineSubscriptions());
    v55 = sub_1001C4F9C(v53);
    [v51 setCallRecordingCancellables:v55];
  }
}

void sub_1001B8E80(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong *a3];
  }
}

uint64_t sub_1001B8EDC@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v3[3])
  {
    result = sub_1000306A4(v3, &unk_1003AAF50, &qword_1002FB170);
    goto LABEL_5;
  }

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 0;
  }

  return result;
}

void sub_1001B8F74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong updateCallRecording:v2];
  }
}

void sub_1001B9020()
{
  v1 = v0;
  v2 = type metadata accessor for CallRecordingViewMaterialType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v0 callRecordingIndicatorViewController];
  if (!v18)
  {
    return;
  }

  type metadata accessor for CallRecordingPillViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v18 = v18;
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 superview];

      if (v10)
      {

        goto LABEL_6;
      }

      (*(v3 + 104))(v5, enum case for CallRecordingViewMaterialType.photo(_:), v2);
      CallRecordingPillViewController.updateBackgroundMaterial(material:)();
      (*(v3 + 8))(v5, v2);
      v12 = [v7 view];
      if (v12)
      {
        v13 = v12;
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

        [v1 addChildViewController:v7];
        v14 = [v7 view];
        if (v14)
        {
          v15 = v14;
          [v1 addSubviewsToMiddleStackViewWithView:v14 priority:1];

          v16 = [v7 view];
          if (v16)
          {
            [v1 constraintCallRecordingWithView:v16];

            [v7 didMoveToParentViewController:v1];
            return;
          }

LABEL_17:
          __break(1u);
          return;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_6:
  v11 = v18;
}

void sub_1001B9310()
{
  v1 = [v0 callRecordingIndicatorViewController];
  if (!v1)
  {
    return;
  }

  v8 = v1;
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v2 superview];

  if (!v4)
  {
    v7 = v8;
    goto LABEL_8;
  }

  v5 = [v8 view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v5;
  [v0 removeSubviewFromMiddleStackViewWithView:v5];

  v7 = v6;
LABEL_8:
}

void sub_1001B9454(void *a1)
{
  v2 = v1;
  v4 = sub_1001DF5C8();
  if (!v4)
  {
    return;
  }

  v14 = v4;
  v5 = dispatch thunk of CallRecordingController.callUniqueProxyIdentifier.getter();
  v7 = v6;
  v8 = [a1 uniqueProxyIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {

    goto LABEL_10;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_10:
    if (dispatch thunk of CallRecordingController.createMenuItem()())
    {
      dispatch thunk of FTMenuItem.isSessionActive.getter();
    }

    [v2 addCallRecordingIndicator];
  }
}

unint64_t sub_1001B95E8()
{
  result = qword_1003AC980;
  if (!qword_1003AC980)
  {
    sub_1000064BC(255, &qword_1003AC978, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC980);
  }

  return result;
}

id sub_1001B96E4()
{
  sub_1000064BC(0, &qword_1003ACC30, NSAttributedString_ptr);
  v0 = Transcript.text.getter();
  return sub_1001A584C(v0, v1);
}

id sub_1001B97B4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13InCallService22FTTranscriptionMessage_confidenceRating] = 0;
  *&v1[OBJC_IVAR____TtC13InCallService22FTTranscriptionMessage_confidence] = 0x3FF0000000000000;
  v4 = OBJC_IVAR____TtC13InCallService22FTTranscriptionMessage_transcriptData;
  v5 = type metadata accessor for Transcript();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t type metadata accessor for FTTranscriptionMessage(uint64_t a1)
{
  result = qword_1003AC9E0;
  if (!qword_1003AC9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B99A0(uint64_t a1)
{
  result = type metadata accessor for Transcript();
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

id sub_1001B9A84()
{
  sub_1000064BC(0, &qword_1003ACC30, NSAttributedString_ptr);
  v1 = [v0 text];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  return sub_1001A584C(v2, v4);
}

uint64_t sub_1001B9B18()
{
  v1 = [v0 makeTranscriptMessage];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1001B9C08()
{
  v0 = type metadata accessor for UUID();
  sub_10000688C();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  dispatch thunk of Message.recordUUID.getter();
  (*(v2 + 16))(v6, v8, v0);
  v9 = objc_allocWithZone(type metadata accessor for MessageID(0));
  v10 = sub_1001728B8(v6);
  (*(v2 + 8))(v8, v0);
  return v10;
}

uint64_t sub_1001B9E78@<X0>(void *a1@<X8>)
{
  dispatch thunk of Message.callUUID.getter();
  v2 = type metadata accessor for UUID();

  return sub_100006848(a1, 0, 1, v2);
}

uint64_t sub_1001B9F08()
{
  LOWORD(result) = dispatch thunk of Message.messageType.getter();
  if (result < 3u)
  {
    return result;
  }

  _StringGuts.grow(_:)(23);

  dispatch thunk of Message.messageType.getter();
  MessageType.rawValue.getter();
  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B9FF4()
{
  if (dispatch thunk of Message.isFromUnknown.getter())
  {
    return 0;
  }

  else
  {
    return dispatch thunk of Message.from.getter();
  }
}

id sub_1001BA078()
{
  v0 = sub_1001B9FF4();
  v2 = v1;
  if (v1)
  {
    v3 = v0;
    v4 = objc_opt_self();
    String._bridgeToObjectiveC()();
    sub_10000594C();

    v2 = [v4 normalizedHandleWithDestinationID:v3];
  }

  return v2;
}

uint64_t sub_1001BA110()
{
  v0 = sub_1001BA078();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1001BE0F8(v0, &selRef_normalizedValue);
  if (!v3)
  {
    v2 = sub_1001B9FF4();
  }

  v4 = v2;

  return v4;
}

id sub_1001BA194(void *a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v6 = a1;
  v7 = sub_1001BA2E8(a3, a4);
  v9 = v8;

  if (v9)
  {
    String._bridgeToObjectiveC()();
    sub_10000594C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1001BA218()
{
  dispatch thunk of Message.recipient.getter();
  v1 = v0;
  if (v0)
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();

    v1 = [v2 normalizedHandleWithDestinationID:v3];
  }

  return v1;
}

uint64_t sub_1001BA2E8(uint64_t (*a1)(void), SEL *a2)
{
  v3 = a1();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 *a2];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id sub_1001BA37C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    String._bridgeToObjectiveC()();
    sub_10000594C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1001BA430()
{
  v1 = v0 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyFolder));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v1);
  if (v3 == 1)
  {
    v4 = dispatch thunk of Message.mailboxType.getter();
    v5 = 1;
    if (v4 == 2)
    {
      v5 = 2;
    }

    if (v4 == 1)
    {
      return 3;
    }

    else
    {
      return v5;
    }
  }

  return v2;
}

void sub_1001BA504(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyFolder;
  os_unfair_lock_lock(v3);
  *(v3 + 8) = a1;
  *(v3 + 16) = 0;

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1001BA588()
{
  v1 = v0 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyRead;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyRead));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  if (v2 == 2)
  {
    return dispatch thunk of Message.isRead.getter() & 1;
  }

  else
  {
    return v2 & 1;
  }
}

void sub_1001BA644(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyRead;
  os_unfair_lock_lock(v3);
  *(v3 + 4) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_1001BA7E8()
{
  v1 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_100005568(v1);
  sub_100005BE0();
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v5 = sub_10014EA98(&unk_1003ACBB0, &unk_1002FD5B0);
  sub_100005568(v5);
  sub_100005BE0();
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_1001BAA48(v7);
  if (v10 == 2 && (v10 = dispatch thunk of Message.isRTT.getter(), (v10 & 1) != 0) && (v10 = TUCallScreeningRTTEnabled(), v10))
  {
    v11 = atomic_load((v0 + OBJC_IVAR____TtC13InCallService9FTMessage_didLoadTranscript));
    if (v11)
    {
      v12 = *(v0 + OBJC_IVAR____TtC13InCallService9FTMessage__transcript);
      if (sub_1001BAE8C())
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = [v13 conversation];
          sub_10000594C();
          swift_unknownObjectRelease();
          if (v12)
          {
            v15 = [v12 utterances];

            if (v15)
            {
              [v15 count];
            }

            else
            {
              __break(1u);
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    v16 = sub_1001BAA48(v10);
    if (v16)
    {
      if (v16 == 1)
      {
        return;
      }

      sub_1001BAEDC(v9);
      v21 = type metadata accessor for Transcript();
      sub_100006AC0(v9, 1, v21);
      v18 = &unk_1003ACBB0;
      v19 = &unk_1002FD5B0;
      v20 = v9;
    }

    else
    {
      sub_1001BAF80(v4);
      v17 = type metadata accessor for URL();
      sub_100006AC0(v4, 1, v17);
      v18 = &qword_1003AAF20;
      v19 = &unk_1002FABA0;
      v20 = v4;
    }

    sub_100008360(v20, v18, v19);
  }
}

uint64_t sub_1001BAA48(uint64_t a1)
{
  v2 = dispatch thunk of Message.messageType.getter();
  if (v2 < 3u)
  {
    return 0x10002u >> (8 * v2);
  }

  if (qword_1003A9F50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8850);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    dispatch thunk of Message.messageType.getter();
    v10 = String.init<A>(describing:)();
    v12 = sub_100008ADC(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected Message type %{public}s", v8, 0xCu);
    sub_100005B2C(v9);
  }

  return 0;
}

BOOL sub_1001BACEC()
{
  dispatch thunk of Message.transcriptionStatus.getter();
  v0 = TranscriptionStatus.rawValue.getter();
  return v0 != TranscriptionStatus.rawValue.getter();
}

BOOL sub_1001BAD30()
{
  dispatch thunk of Message.mailboxType.getter();
  v0 = MailboxType.rawValue.getter();
  return v0 == MailboxType.rawValue.getter();
}

uint64_t sub_1001BAE8C()
{
  os_unfair_lock_lock(v0 + 4);
  v2 = sub_1001BB024(&v0[6], v1);
  os_unfair_lock_unlock(v0 + 4);
  return v2;
}

void sub_1001BAEDC(uint64_t a1@<X8>)
{
  v3 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v3);
  v4 = sub_10014EA98(&qword_1003ACBD8, &qword_1002FD5C0);
  sub_1001BB0A0(v3 + *(v4 + 28), &qword_1003ACBE0, &qword_1002FD5C8, &unk_1003ACBB0, &unk_1002FD5B0, a1);
  os_unfair_lock_unlock(v3);
}

void sub_1001BAF80(uint64_t a1@<X8>)
{
  v3 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v3);
  v4 = sub_10014EA98(&qword_1003ACBE8, &qword_1002FD5D0);
  sub_1001BB0A0(v3 + *(v4 + 28), &qword_1003ACBF0, &qword_1002FD5D8, &qword_1003AAF20, &unk_1002FABA0, a1);
  os_unfair_lock_unlock(v3);
}

uint64_t sub_1001BB024(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    v4 = *(a1 + 8);
    v2(&v6);
    sub_1001BDFF4(v2, v4, 0);
    *a1 = v6;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  return swift_unknownObjectRetain();
}

uint64_t sub_1001BB0A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  sub_10014EA98(a2, a3);
  sub_1000058E8();
  sub_100005BE0();
  __chkstk_darwin(v12);
  v14 = (v17 - v13);
  sub_1001BE004(a1, v17 - v13, a2, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1001BE054(v14, a6, a4, a5);
  }

  v16 = sub_100008360(a1, a2, a3);
  (*v14)(v16);

  sub_1001BE004(a6, a1, a4, a5);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001BB1CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10014EA98(&qword_1003ACBE0, &qword_1002FD5C8);
  __chkstk_darwin(v5);
  v7 = (&v16 - v6);
  v8 = sub_10014EA98(&qword_1003ACBD8, &qword_1002FD5C0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = (&v16 - v11);
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();
  *v12 = 0;
  v13 = *(v9 + 36);

  v14 = sub_10014EA98(&qword_1003ACBF8, &qword_1002FD5E0);
  bzero(v12 + v13, *(*(v14 - 8) + 64));
  sub_1001BE054(v7, v12 + v13, &qword_1003ACBE0, &qword_1002FD5C8);

  memcpy((v2 + *(*v2 + 88)), v12, v10);
  return v2;
}

uint64_t sub_1001BB35C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10014EA98(&qword_1003ACBF0, &qword_1002FD5D8);
  __chkstk_darwin(v5);
  v7 = (&v16 - v6);
  v8 = sub_10014EA98(&qword_1003ACBE8, &qword_1002FD5D0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = (&v16 - v11);
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();
  *v12 = 0;
  v13 = *(v9 + 36);

  v14 = sub_10014EA98(&qword_1003ACC08, &qword_1002FD5E8);
  bzero(v12 + v13, *(*(v14 - 8) + 64));
  sub_1001BE054(v7, v12 + v13, &qword_1003ACBF0, &qword_1002FD5D8);

  memcpy((v2 + *(*v2 + 88)), v12, v10);
  return v2;
}

void sub_1001BB4EC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 16));
  sub_1001BDFF4(*(v2 + 24), *(v2 + 32), *(v2 + 40));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;

  os_unfair_lock_unlock((v2 + 16));
}

uint64_t sub_1001BB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FTMessage.Lazy.State(255, *(*v4 + 80), a3, a4);
  type metadata accessor for Mutex();
  v5 = type metadata accessor for _Cell();
  sub_1001BE158(v5);
  return v4;
}

uint64_t sub_1001BB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001BB550(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return _swift_deallocClassInstance(v4, v5, v6);
}

id sub_1001BB64C(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_100005568(v5);
  sub_100005BE0();
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = a1;
  a3();

  v10 = type metadata accessor for URL();
  v12 = 0;
  if (sub_100006AC0(v8, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    v14 = sub_1000088D4();
    v15(v14);
  }

  return v12;
}

id sub_1001BB824()
{
  v0 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_100005568(v0);
  sub_100005BE0();
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = type metadata accessor for URL();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BAF80(v3);
  if (sub_100006AC0(v3, 1, v4) == 1)
  {
    sub_100008360(v3, &qword_1003AAF20, &unk_1002FABA0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v3, v4);
    v11 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v12 = String._bridgeToObjectiveC()();

    v10 = [v11 fileExistsAtPath:v12];

    (*(v6 + 8))(v9, v4);
  }

  return v10;
}

char *sub_1001BBA38()
{
  v1 = v0;
  sub_10000594C();
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC13InCallService9FTMessage_dirtyFolder];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v0[OBJC_IVAR____TtC13InCallService9FTMessage_dirtyRead];
  *v4 = 0;
  v4[4] = 2;
  v0[OBJC_IVAR____TtC13InCallService9FTMessage_dirtyIsDeleted] = 0;
  v5 = OBJC_IVAR____TtC13InCallService9FTMessage__transcript;
  sub_10014EA98(&qword_1003ACB90, &qword_1002FD590);
  v6 = swift_allocObject();
  v22 = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = sub_1001BB9EC;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *&v0[v5] = v6;
  v0[OBJC_IVAR____TtC13InCallService9FTMessage_didLoadTranscript] = 0;
  v0[OBJC_IVAR____TtC13InCallService9FTMessage_isDirty] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService9FTMessage_ftMessage] = v0;
  sub_100005C44();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  sub_10014EA98(&qword_1003ACB98, &qword_1002FD598);
  swift_allocObject();
  v8 = v0;
  *&v0[OBJC_IVAR____TtC13InCallService9FTMessage__dataURL] = sub_1001BB35C(sub_1001BDF60, v7);
  sub_100005C44();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_allocObject();
  v10 = v8;
  *&v1[OBJC_IVAR____TtC13InCallService9FTMessage__thumbnailURL] = sub_1001BB35C(sub_1001BDF68, v9);
  sub_100005C44();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_allocObject();
  v12 = v10;
  *&v1[OBJC_IVAR____TtC13InCallService9FTMessage__transcriptURL] = sub_1001BB35C(sub_1001BDF98, v11);
  sub_100005C44();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_10014EA98(&unk_1003ACBA0, &unk_1002FD5A0);
  swift_allocObject();
  v14 = v12;
  *&v1[OBJC_IVAR____TtC13InCallService9FTMessage__transcriptData] = sub_1001BB1CC(sub_1001BDFC8, v13);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v21, "init");
  sub_100005C44();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  v18 = v14;
  v19 = v15;

  sub_1001BB4EC(sub_1001BDFEC, v17);

  return v19;
}

uint64_t sub_1001BBD88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = dispatch thunk of Message.sandboxMessageFile.getter();
  v6 = dispatch thunk of SandboxExtendedURL.sandboxResolvedURL.getter();

  if (v6)
  {
    v7 = type metadata accessor for URL();
    sub_100006848(v4, 1, 1, v7);
    sub_1001BE0A4(&qword_1003ACC00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if (sub_100006AC0(v4, 1, v7) == 1)
    {
      v8 = a1;
      v9 = 1;
    }

    else
    {
      (*(*(v7 - 8) + 32))(a1, v4, v7);
      v8 = a1;
      v9 = 0;
    }

    return sub_100006848(v8, v9, 1, v7);
  }

  else
  {
    v10 = type metadata accessor for URL();

    return sub_100006848(a1, 1, 1, v10);
  }
}

uint64_t sub_1001BBF2C@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_100005568(v4);
  sub_100005BE0();
  v6 = __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = a1(v6);
  if (v9 && (v10 = v9, v11 = dispatch thunk of SandboxExtendedURL.sandboxResolvedURL.getter(), v10, v11))
  {
    v12 = type metadata accessor for URL();
    sub_100006848(v8, 1, 1, v12);
    sub_1001BE0A4(&qword_1003ACC00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if (sub_100006AC0(v8, 1, v12) == 1)
    {
      v13 = a2;
      v14 = 1;
    }

    else
    {
      v17 = sub_1000088D4();
      v18(v17);
      v13 = a2;
      v14 = 0;
    }

    return sub_100006848(v13, v14, 1, v12);
  }

  else
  {
    v15 = type metadata accessor for URL();

    return sub_100006848(a2, 1, 1, v15);
  }
}

void sub_1001BC0D4(uint64_t a2@<X1>, id *a3@<X8>)
{
  v40 = a2;
  v39 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  v4 = __chkstk_darwin(v39);
  v38[1] = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v38 - v6;
  v8 = type metadata accessor for URL();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10014EA98(&unk_1003ACBB0, &unk_1002FD5B0);
  __chkstk_darwin(v11 - 8);
  v13 = v38 - v12;
  v14 = type metadata accessor for Transcript();
  v41 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v38 - v18;
  v20 = type metadata accessor for UUID();
  __chkstk_darwin(v20 - 8);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *a3 = 0;
    return;
  }

  v24 = Strong;
  v25 = sub_1001BAA48(Strong);
  if (v25)
  {
    if (v25 != 1)
    {
      if ((dispatch thunk of Message.isRTT.getter() & 1) != 0 && TUCallScreeningRTTEnabled())
      {
        sub_1000064BC(0, &qword_1003ACBD0, off_1003531D8);
        dispatch thunk of Message.callUUID.getter();
        *a3 = sub_1001BC870(v22);
      }

      else
      {
        sub_1001BAEDC(v13);
        if (sub_100006AC0(v13, 1, v14) == 1)
        {
          sub_100008360(v13, &unk_1003ACBB0, &unk_1002FD5B0);
          *a3 = 0;
        }

        else
        {
          v27 = v41;
          (*(v41 + 32))(v19, v13, v14);
          (*(v27 + 16))(v17, v19, v14);
          v28 = objc_allocWithZone(type metadata accessor for FTTranscriptionMessage(0));
          v29 = sub_1001B97B4(v17);
          (*(v27 + 8))(v19, v14);
          *a3 = v29;
        }
      }

      goto LABEL_15;
    }

    goto LABEL_4;
  }

  sub_1001BAF80(v7);
  v26 = v43;
  if (sub_100006AC0(v7, 1, v43) != 1)
  {
    (*(v42 + 32))(v10, v7, v26);
    v30 = Data.init(contentsOf:options:)();
    v32 = v31;
    sub_1000064BC(0, &qword_1003ACBC0, NSKeyedUnarchiver_ptr);
    sub_1000064BC(0, &qword_1003ACBC8, VMVoicemailTranscript_ptr);
    v33 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v34 = v33;
    if (v33)
    {
      v35 = type metadata accessor for VisualTranscriptionMessage();
      v36 = objc_allocWithZone(v35);
      *&v36[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v34;
      v44.receiver = v36;
      v44.super_class = v35;
      v37 = objc_msgSendSuper2(&v44, "init");
      sub_10016D16C(v30, v32);
      (*(v42 + 8))(v10, v26);
      *a3 = v37;
      goto LABEL_15;
    }

    (*(v42 + 8))(v10, v26);
    sub_10016D16C(v30, v32);
LABEL_4:
    *a3 = 0;
LABEL_15:
    atomic_store(1u, &v24[OBJC_IVAR____TtC13InCallService9FTMessage_didLoadTranscript]);
    goto LABEL_16;
  }

  sub_100008360(v7, &qword_1003AAF20, &unk_1002FABA0);
  *a3 = 0;
  atomic_store(1u, &v24[OBJC_IVAR____TtC13InCallService9FTMessage_didLoadTranscript]);
LABEL_16:
}

id sub_1001BC870(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithCallUUID:isa];

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1001BC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FTMessage.Lazy.State(255, *(a1 + 80), a3, a4);
  result = type metadata accessor for Mutex();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1001BCACC(double a1)
{
  if (sub_1001BA588())
  {
    return 0;
  }

  if (a1 > 5.0)
  {
    return 1;
  }

  dispatch thunk of Message.duration.getter();
  return v3 / 3.0 < a1;
}

id sub_1001BCB7C(void *a1)
{
  v2 = sub_1001BA110();
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  dispatch thunk of Message.from.getter();
  v7 = String._bridgeToObjectiveC()();

  sub_10014EA98(&qword_1003AAF80, &unk_1002FB7D0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = [a1 contactForDestinationId:v7 keysToFetch:isa];

  return v9;
}

uint64_t sub_1001BCCF4(void *a1)
{
  v2 = dispatch thunk of Message.from.getter();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1002FBD90;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 descriptorForRequiredKeysForStyle:0];
    v8 = sub_1001BCB7C(a1);

    if (v8)
    {
      if ([v8 isSuggested])
      {
        sub_1001BCE58();
        sub_1000361F0();
      }

      else
      {
        v9 = [v7 stringFromContact:v8 style:0];
        if (v9)
        {
          v10 = v9;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_1000361F0();
        }
      }
    }

    else
    {
      sub_1001BCE58();
      sub_1000361F0();
    }
  }

  return sub_1000088D4();
}

uint64_t sub_1001BCE58()
{
  v0 = objc_opt_self();
  dispatch thunk of Message.from.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (!v2)
  {
    return 0;
  }

  sub_1001BE0F8(v2, &selRef_normalizedValue);
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  sub_1001BE0F8(v2, &selRef_isoCountryCode);
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = TUFormattedPhoneNumber();

  if (!v7)
  {

    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_1001BD038()
{
  v1 = v0;
  v105 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_1000058E8();
  sub_100005BE0();
  __chkstk_darwin(v2);
  v104 = &v100 - v3;
  type metadata accessor for Date();
  sub_10000688C();
  v102 = v4;
  v103 = v5;
  __chkstk_darwin(v4);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_1000058E8();
  sub_100005BE0();
  __chkstk_darwin(v7);
  v9 = (&v100 - v8);
  v108 = 0;
  v109 = 0xE000000000000000;
  _StringGuts.grow(_:)(699);
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v10._object = 0x80000001002A9BA0;
  String.append(_:)(v10);
  v11 = [*(v0 + OBJC_IVAR____TtC13InCallService9FTMessage_ftMessage) description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = sub_10000C3E0() | 0x3A64692000000000;
  v16._object = 0xE900000000000020;
  String.append(_:)(v16);
  v17 = sub_1001B9C08();
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = sub_10000C3E0() | 0x6F72702000000000;
  v23._object = 0xEF203A7265646976;
  String.append(_:)(v23);
  v110._countAndFlagsBits = dispatch thunk of Message.provider.getter();
  sub_1000069A8(v110);

  v24._countAndFlagsBits = sub_10000C3E0() | 0x6C61632000000000;
  v24._object = 0xEF203A444955556CLL;
  String.append(_:)(v24);
  sub_1001B9E78(v9);
  v111._countAndFlagsBits = String.init<A>(describing:)();
  sub_1000069A8(v111);

  v25._countAndFlagsBits = 0xD000000000000012;
  v25._object = 0x80000001002A9BC0;
  String.append(_:)(v25);
  v106 = sub_1001B9F08();
  sub_100005C90(v106, v26, &type metadata for MessageType);
  v27._countAndFlagsBits = 0xD00000000000001ALL;
  v27._object = 0x80000001002A9BE0;
  String.append(_:)(v27);
  v106 = sub_1001BA110();
  v107 = v28;
  sub_10014EA98(&qword_1003AAC88, &qword_1002FB238);
  v112._countAndFlagsBits = String.init<A>(describing:)();
  sub_1000069A8(v112);

  v29._countAndFlagsBits = 0xD00000000000001BLL;
  v29._object = 0x80000001002A9C00;
  String.append(_:)(v29);
  v30 = sub_1000095FC();
  v31 = sub_1001BA2E8(v30, &selRef_isoCountryCode);
  v113._countAndFlagsBits = sub_100008638(v31, v32);
  sub_1000069A8(v113);

  v33._countAndFlagsBits = 0xD00000000000001CLL;
  v33._object = 0x80000001002A9C20;
  String.append(_:)(v33);
  v34 = sub_1001BA2E8(sub_1001BA218, &selRef_normalizedValue);
  v36._countAndFlagsBits = sub_100008638(v34, v35);
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0xD00000000000001DLL;
  v37._object = 0x80000001002A9C40;
  String.append(_:)(v37);
  v38 = sub_1001BA2E8(sub_1001BA218, &selRef_isoCountryCode);
  v114._countAndFlagsBits = sub_100008638(v38, v39);
  sub_1000069A8(v114);

  v40._countAndFlagsBits = 0xD00000000000001CLL;
  v40._object = 0x80000001002A9C60;
  String.append(_:)(v40);
  v41 = sub_1001B9FF4();
  v115._countAndFlagsBits = sub_100008638(v41, v42);
  sub_1000069A8(v115);

  v43._countAndFlagsBits = 0xD000000000000012;
  v43._object = 0x80000001002A9C80;
  String.append(_:)(v43);
  v44 = v1 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyFolder));
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  os_unfair_lock_unlock(v44);
  v106 = v45;
  LOBYTE(v107) = v46;
  sub_10014EA98(&qword_1003ACC10, &qword_1002FD5F0);
  v116._countAndFlagsBits = String.init<A>(describing:)();
  sub_1000069A8(v116);

  v47._countAndFlagsBits = sub_10000C3E0() | 0x6C6F662000000000;
  v47._object = 0xED0000203A726564;
  String.append(_:)(v47);
  v106 = sub_1001BA430();
  sub_100005C90(v106, v48, &type metadata for MessageFolder);
  v49._object = 0x80000001002A9CA0;
  v49._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v49);
  v50 = v1 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyRead;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyRead));
  LOBYTE(v45) = *(v50 + 4);
  os_unfair_lock_unlock(v50);
  LOBYTE(v106) = v45;
  sub_10014EA98(&qword_1003ACC18, &qword_1002FD5F8);
  v117._countAndFlagsBits = String.init<A>(describing:)();
  sub_1000069A8(v117);

  v51._countAndFlagsBits = sub_10000C3E0() | 0x6165722000000000;
  v51._object = 0xEB00000000203A64;
  String.append(_:)(v51);
  v52 = sub_1001BA588();
  v53 = (v52 & 1) == 0;
  if (v52)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v53)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  v56 = v55;
  String.append(_:)(*&v54);

  v57._countAndFlagsBits = sub_10000C3E0() | 0x7461642000000000;
  v57._object = 0xEB00000000203A65;
  String.append(_:)(v57);
  v58 = v101;
  dispatch thunk of Message.dateCreated.getter();
  sub_1001BE0A4(&qword_1003ACC20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v59 = v102;
  v118._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1000069A8(v118);

  (*(v103 + 8))(v58, v59);
  v60._countAndFlagsBits = 0xD00000000000001FLL;
  v60._object = 0x80000001002A9CC0;
  String.append(_:)(v60);
  sub_1001BA7E8();
  if (v61)
  {
    v62 = 1702195828;
  }

  else
  {
    v62 = 0x65736C6166;
  }

  sub_10003024C(v62);

  v63._countAndFlagsBits = sub_10000C3E0() | 0x7275642000000000;
  v63._object = 0xEF203A6E6F697461;
  String.append(_:)(v63);
  dispatch thunk of Message.duration.getter();
  Double.write<A>(to:)();
  v64._countAndFlagsBits = 0xD00000000000001BLL;
  v64._object = 0x80000001002A9CE0;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 0x65736C6166;
  v65._object = 0xE500000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 0xD000000000000015;
  v66._object = 0x80000001002A9D00;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 0x65736C6166;
  v67._object = 0xE500000000000000;
  String.append(_:)(v67);
  v68._countAndFlagsBits = 0xD00000000000001DLL;
  v68._object = 0x80000001002A9D20;
  String.append(_:)(v68);
  if (sub_1001BACEC())
  {
    v69 = 1702195828;
  }

  else
  {
    v69 = 0x65736C6166;
  }

  sub_10003024C(v69);

  sub_100025374("\n    isBlocked: ");
  if (sub_1001BAD30())
  {
    v70 = 1702195828;
  }

  else
  {
    v70 = 0x65736C6166;
  }

  sub_10003024C(v70);

  sub_100025374("\n    isDeleted: ");
  sub_100026F68(OBJC_IVAR____TtC13InCallService9FTMessage_dirtyIsDeleted);
  if (v71)
  {
    v72 = 0x65736C6166;
  }

  else
  {
    v72 = 1702195828;
  }

  if (v71)
  {
    v73 = 0xE500000000000000;
  }

  else
  {
    v73 = 0xE400000000000000;
  }

  v74 = v73;
  String.append(_:)(*&v72);

  v75._countAndFlagsBits = 0xD000000000000012;
  v75._object = 0x80000001002A9D80;
  String.append(_:)(v75);
  if (dispatch thunk of Message.isSensitive.getter())
  {
    v76 = 1702195828;
  }

  else
  {
    v76 = 0x65736C6166;
  }

  sub_10003024C(v76);

  v77._countAndFlagsBits = sub_10000C3E0() | 0x7461642000000000;
  String.append(_:)(v77);
  v78 = v104;
  sub_1001BAF80(v104);
  v119._countAndFlagsBits = String.init<A>(describing:)();
  sub_1000069A8(v119);

  v79._countAndFlagsBits = 0xD000000000000013;
  v79._object = 0x80000001002A9DA0;
  String.append(_:)(v79);
  sub_1001BAF80(v78);
  v120._countAndFlagsBits = String.init<A>(describing:)();
  sub_1000069A8(v120);

  v80._countAndFlagsBits = 0xD000000000000014;
  v80._object = 0x80000001002A9DC0;
  String.append(_:)(v80);
  sub_1001BAF80(v78);
  v121._countAndFlagsBits = String.init<A>(describing:)();
  sub_1000069A8(v121);

  v81._countAndFlagsBits = sub_10000C3E0() | 0x5273692000000000;
  v81._object = 0xEC000000203A5454;
  String.append(_:)(v81);
  if (dispatch thunk of Message.isRTT.getter())
  {
    v82 = 1702195828;
  }

  else
  {
    v82 = 0x65736C6166;
  }

  sub_10003024C(v82);

  v83._countAndFlagsBits = 0xD000000000000016;
  v83._object = 0x80000001002A9DE0;
  String.append(_:)(v83);
  if (sub_1001BB824())
  {
    v84 = 1702195828;
  }

  else
  {
    v84 = 0x65736C6166;
  }

  sub_10003024C(v84);

  v85._countAndFlagsBits = 0xD000000000000011;
  v85._object = 0x80000001002A9E00;
  String.append(_:)(v85);
  v106 = sub_1001BAE8C();
  sub_10014EA98(&qword_1003ACC28, &unk_1002FD600);
  v122._countAndFlagsBits = String.init<A>(describing:)();
  sub_1000069A8(v122);

  v86._countAndFlagsBits = 0xD000000000000018;
  v86._object = 0x80000001002A9E20;
  String.append(_:)(v86);
  sub_100026F68(OBJC_IVAR____TtC13InCallService9FTMessage_didLoadTranscript);
  if (v87)
  {
    v88 = 0x65736C6166;
  }

  else
  {
    v88 = 1702195828;
  }

  if (v87)
  {
    v89 = 0xE500000000000000;
  }

  else
  {
    v89 = 0xE400000000000000;
  }

  v90 = v89;
  String.append(_:)(*&v88);

  v91._countAndFlagsBits = sub_10000C3E0() | 0x4473692000000000;
  v91._object = 0xEE00203A79747269;
  String.append(_:)(v91);
  sub_100026F68(OBJC_IVAR____TtC13InCallService9FTMessage_isDirty);
  if (v92)
  {
    v93 = 0x65736C6166;
  }

  else
  {
    v93 = 1702195828;
  }

  if (v92)
  {
    v94 = 0xE500000000000000;
  }

  else
  {
    v94 = 0xE400000000000000;
  }

  v95 = v94;
  String.append(_:)(*&v93);

  v96._countAndFlagsBits = 0xD000000000000014;
  v96._object = 0x80000001002A9E40;
  String.append(_:)(v96);
  LOBYTE(v106) = sub_1001BAA48(v97);
  _print_unlocked<A, B>(_:_:)();
  v98._countAndFlagsBits = 0x202020202020200ALL;
  v98._object = 0xEA00000000002920;
  String.append(_:)(v98);
  return v108;
}

id sub_1001BDB48(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  sub_1000361F0();

  sub_1000088D4();
  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1001BDBB8(uint64_t a1)
{
  result = sub_1001BDF18();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001BDC30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1001BDD54(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1001BDF18()
{
  result = qword_1003ACB88;
  if (!qword_1003ACB88)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1003ACB88);
  }

  return result;
}

double sub_1001BDFF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1001BE004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100008020(a1, a2, a3, a4);
  sub_1000058E8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1001BE054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100008020(a1, a2, a3, a4);
  sub_1000058E8();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1001BE0A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BE0F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t getEnumTagSinglePayload for FTMessageSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FTMessageSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001BE2D0()
{
  result = qword_1003ACC38;
  if (!qword_1003ACC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACC38);
  }

  return result;
}

id sub_1001BE374(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1001BE420()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (byte_1003ACC40)
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
      _os_log_impl(&_mh_execute_header, oslog, v4, "MirroringToMacAlert is already presented.", v5, 2u);
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
      _os_log_impl(&_mh_execute_header, v8, v9, "Presenting MirroringToMacAlert.", v10, 2u);
    }

    byte_1003ACC40 = 1;
    v12.receiver = v1;
    v12.super_class = v6;
    objc_msgSendSuper2(&v12, "show");
  }
}

uint64_t sub_1001BE6A4()
{
  sub_1000077B8();
  v2 = sub_1001BF25C(v0, v1);
  v3 = sub_1001BF93C();

  return v3 & 1;
}

id sub_1001BE6EC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1001BE768()
{
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002FD6B0;
  if (qword_1003AA008 != -1)
  {
    swift_once();
  }

  v1 = qword_1003B8A30;
  *(v0 + 32) = qword_1003B8A30;
  v2 = qword_1003AA010;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1003B8A38;
  *(v0 + 40) = qword_1003B8A38;
  v5 = qword_1003AA018;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1003B8A40;
  *(v0 + 48) = qword_1003B8A40;
  v8 = qword_1003AA020;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1003B8A48;
  *(v0 + 56) = qword_1003B8A48;
  v11 = qword_1003AA028;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1003B8A50;
  *(v0 + 64) = qword_1003B8A50;
  v14 = qword_1003AA030;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1003B8A58;
  *(v0 + 72) = qword_1003B8A58;
  v17 = qword_1003AA038;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1003B8A60;
  *(v0 + 80) = qword_1003B8A60;
  v20 = qword_1003AA040;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1003B8A68;
  *(v0 + 88) = qword_1003B8A68;
  v23 = qword_1003AA048;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1003B8A70;
  *(v0 + 96) = qword_1003B8A70;
  qword_1003B8A28 = v0;

  return v25;
}

double sub_1001BEA08()
{
  if (qword_1003AA000 != -1)
  {
    swift_once();
  }

  return result;
}

id sub_1001BEDD0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

id sub_1001BEE2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *a3 = result;
  return result;
}

BOOL sub_1001BEED8(uint64_t a1)
{
  swift_getObjectType();
  sub_10015FE80(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      v4 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      return v3 == v4;
    }
  }

  else
  {
    sub_10015E258(v7);
  }

  return 0;
}

id sub_1001BF05C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001BE6EC(*a1);
  *a2 = result;
  return result;
}

id sub_1001BF0B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001BF0D8();
  *a1 = result;
  return result;
}

id sub_1001BF0D8()
{
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

void sub_1001BF148(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_1001BF25C(*a1, sub_1001BF560);

  *a2 = v6;
}

void sub_1001BF1A4(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1000077B8();
  v6 = sub_1001BF25C(v4, v5);

  *a1 = v6;
}

void sub_1001BF200(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_1001BF25C(*a1, sub_1001BF69C);

  *a2 = v6;
}

id sub_1001BF25C(uint64_t a1, void (*a2)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v7 = objc_allocWithZone(ObjectType);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v9, "init");
  a2(a1);
  return v10;
}

BOOL sub_1001BF2E8(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1001BF31C(a1, *a2);

  return v3;
}

BOOL sub_1001BF31C(void *a1, void *a2)
{
  sub_1000077B8();
  v5 = sub_1001BF25C(a2, v4);
  type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = static NSObject.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {

    v5 = a2;
    sub_1001BF560(v5);
  }

  *a1 = v5;
  return (v6 & 1) == 0;
}

id sub_1001BF3A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001BF3D0(*a1);
  *a2 = result;
  return result;
}

id sub_1001BF3D0(uint64_t a1)
{
  v2 = sub_1001BF25C(a1, sub_1001BF5E4);
  if (sub_1001BF93C())
  {

    return 0;
  }

  else
  {
    v3 = sub_1001BF25C(a1, sub_1001BF69C);
    sub_1001BF5E4(v3);
  }

  return v2;
}

void sub_1001BF474(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1001BF4B4(*a1);

  *a2 = v4;
}

id sub_1001BF4B4(uint64_t a1)
{
  v2 = sub_1001BF25C(a1, sub_1001BF5E4);
  sub_1001BF560(a1);
  if (sub_1001BF93C())
  {

    return 0;
  }

  return v2;
}

void sub_1001BF524(uint64_t *a1)
{
  v1 = *a1;
  sub_1001BF560(*a1);
}

id sub_1001BF560(uint64_t a1)
{
  v3 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v4 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) | v3;
  v5 = type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *v1 = result;
  return result;
}

id sub_1001BF5E4(uint64_t a1)
{
  v3 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v4 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v3;
  v5 = type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *v1 = result;
  return result;
}

void sub_1001BF660(id *a1)
{
  v1 = *a1;
  sub_1001BF69C(*a1);
}

id sub_1001BF69C(uint64_t a1)
{
  v3 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v4 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v3;
  v5 = type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *v1 = result;
  return result;
}

void sub_1001BF718(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = sub_1001BF758(*a1);

  *a2 = v5;
}

id sub_1001BF758(uint64_t a1)
{
  v1 = sub_1001BF25C(a1, sub_1001BF69C);
  v2 = sub_1001BF25C(v1, sub_1001BF5E4);

  return v2;
}

uint64_t sub_1001BF7E0(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_1001BF25C(a1, sub_1001BF5E4);
  v3 = static NSObject.== infix(_:_:)();

  return v3 & 1;
}

uint64_t sub_1001BF8A4(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_1001BF25C(v1, sub_1001BF5E4);
  v3 = static NSObject.== infix(_:_:)();

  return v3 & 1;
}

uint64_t sub_1001BF93C()
{
  ObjectType = swift_getObjectType();
  v1 = objc_allocWithZone(ObjectType);
  *&v1[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v4.receiver = v1;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, "init");
  LOBYTE(ObjectType) = static NSObject.== infix(_:_:)();

  return ObjectType & 1;
}

void sub_1001BF9CC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v9.receiver = v3;
  v9.super_class = v1;
  v10 = objc_msgSendSuper2(&v9, "init");
  v4 = sub_100017230(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1001BF31C(&v8, v6);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1001BFAD0(uint64_t a1)
{
  v1 = sub_1001BF25C(a1, sub_1001BF69C);
  sub_1001BF5E4(v1);
}

uint64_t sub_1001BFB34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001BE6DC();
  *a1 = result;
  return result;
}

uint64_t sub_1001BFB60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001BE684();
  *a1 = result;
  return result;
}

unint64_t sub_1001BFC5C()
{
  result = qword_1003ACCB0;
  if (!qword_1003ACCB0)
  {
    sub_100155B7C(&qword_1003ACCB8, qword_1002FD820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACCB0);
  }

  return result;
}

uint64_t sub_1001BFD28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccountManagerUpdate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001BFD68()
{
  swift_getObjectType();
  if (qword_1003AA008 != -1)
  {
    swift_once();
  }

  v1 = sub_10000C3EC(qword_1003B8A30);

  if (v1)
  {
    return 0x7453656E696C6E6FLL;
  }

  if (qword_1003AA010 != -1)
  {
    swift_once();
  }

  v3 = sub_10000C3EC(qword_1003B8A38);

  if (v3)
  {
    return 0x696C696261706163;
  }

  if (qword_1003AA018 != -1)
  {
    swift_once();
  }

  v4 = sub_10000C3EC(qword_1003B8A40);

  if (v4)
  {
    return 0xD000000000000012;
  }

  if (qword_1003AA020 != -1)
  {
    swift_once();
  }

  v5 = sub_10000C3EC(qword_1003B8A48);

  if (v5)
  {
    return 0x72506E49636E7973;
  }

  if (qword_1003AA028 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C3EC(qword_1003B8A50);

  if (v6)
  {
    return 0xD000000000000013;
  }

  if (qword_1003AA030 != -1)
  {
    swift_once();
  }

  v7 = sub_10000C3EC(qword_1003B8A58);

  if (v7)
  {
    return 0xD000000000000012;
  }

  if (qword_1003AA038 != -1)
  {
    swift_once();
  }

  v8 = sub_10000C3EC(qword_1003B8A60);

  if (v8)
  {
    return 0x73746E756F636361;
  }

  if (qword_1003AA040 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C3EC(qword_1003B8A68);

  if (v9)
  {
    return 0x676E697465657267;
  }

  if (qword_1003AA048 != -1)
  {
    swift_once();
  }

  v10 = sub_10000C3EC(qword_1003B8A70);

  if (v10)
  {
    return 0x69616D6563696F56;
  }

  sub_1001C0180();
  return String.init<A>(_:radix:uppercase:)();
}

unint64_t sub_1001C0180()
{
  result = qword_1003ACCD0;
  if (!qword_1003ACCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACCD0);
  }

  return result;
}

uint64_t sub_1001C01D4(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1001C01F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C0230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001C0274(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1001C029C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000077D0();
      _StringGuts.grow(_:)(43);

      sub_10000C404();
      v2 = v4 + 1;
      goto LABEL_5;
    case 3:
      result = 0xD000000000000025;
      break;
    default:
      sub_1000077D0();
      _StringGuts.grow(_:)(42);

      sub_10000C404();
LABEL_5:
      v7 = v2;
      type metadata accessor for MessageID(0);
      v5._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v5);

      v6._countAndFlagsBits = 41;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);
      result = v7;
      break;
  }

  return result;
}

uint64_t sub_1001C0464()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton);
  sub_10017A4B4(v1, *(v0 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton + 8));
  return v1;
}

uint64_t sub_1001C054C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton);
  v4 = *(v2 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton);
  v5 = *(v2 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000081F4(v4, v5);
}

char *sub_1001C056C(uint64_t a1)
{
  v2 = a1;
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002FBD90;
  *(v6 + 32) = [objc_opt_self() effectWithStyle:16];
  sub_1000064BC(0, &unk_1003AAFA0, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setBackgroundEffects:isa];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_blurEffectView] = v5;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  v10 = [v8 init];
  v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v10 setFont:v11];

  v12 = [objc_opt_self() secondaryLabelColor];
  [v10 setTextColor:v12];

  [v10 setNumberOfLines:2];
  [v10 setTextAlignment:1];
  v13 = sub_1001FD1F8(0xD000000000000021, 0x80000001002AA2F0);
  sub_10021BFD8(v13, v14, v10);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_descriptionLabel] = v10;
  v15 = v10;
  *&v1[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_revealButton] = sub_1001C0894(v2);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_blurEffectView]];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_descriptionLabel]];
  v17 = *&v16[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_revealButton];
  if (v17)
  {
    v18 = v17;
    [v16 addSubview:v18];
    [v18 addTarget:v16 action:"didTapButton" forControlEvents:0x2000];
  }

  sub_1001C0BFC();

  return v16;
}

void *sub_1001C0894(char a1)
{
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v17 = &v24 - v16;
  v18 = 0;
  if ((a1 & 1) == 0)
  {
    v25 = v14;
    v19 = v15;
    static UIButton.Configuration.gray()();
    (*(v7 + 104))(v9, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v6);
    UIButton.Configuration.cornerStyle.setter();
    v20 = [objc_opt_self() whiteColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.medium(_:), v2);
    UIButton.Configuration.buttonSize.setter();
    sub_1001FD1F8(0xD000000000000022, 0x80000001002AA320);
    UIButton.Configuration.title.setter();
    sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
    sub_1001FFAD8();
    UIButton.Configuration.image.setter();
    UIButton.Configuration.imagePlacement.setter();
    UIButton.Configuration.imagePadding.setter();
    UIButton.Configuration.contentInsets.setter();
    sub_1000064BC(0, &qword_1003ABA20, UIButton_ptr);
    v21 = v19;
    v22 = v25;
    (*(v19 + 16))(v13, v17, v25);
    v18 = UIButton.init(configuration:primaryAction:)();
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    (*(v21 + 8))(v17, v22);
  }

  return v18;
}

void sub_1001C0BFC()
{
  v1 = v0;
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002FB360;
  v3 = *&v1[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_blurEffectView];
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v1 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v1 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FAD40;
  v17 = *&v1[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_descriptionLabel];
  v18 = [v17 centerYAnchor];
  v19 = [v1 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(inited + 32) = v20;
  v21 = [v17 leadingAnchor];
  v22 = [v1 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:17.0];

  *(inited + 40) = v23;
  v24 = [v17 trailingAnchor];
  v25 = [v1 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-17.0];

  *(inited + 48) = v26;
  sub_1001D3C00(inited);
  v27 = *&v1[OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_revealButton];
  if (v27)
  {
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_1002F96C0;
    v29 = v27;
    v30 = [v29 topAnchor];
    v31 = [v17 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:8.0];

    *(v28 + 32) = v32;
    v33 = [v29 centerXAnchor];

    v34 = [v1 centerXAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v28 + 40) = v35;
    sub_1001D3C00(v28);
  }

  v36 = objc_opt_self();
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

void sub_1001C10D4()
{
  v1 = (v0 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001C1158()
{
  v1 = (v0 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001C11DC()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Did tap reveal button", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton;
  v7 = *(v1 + OBJC_IVAR____TtC13InCallService35PHContactWallpaperSensitiveBlurView_didTapRevealButton);
  if (v7)
  {
    v8 = *(v6 + 8);

    v7(v9);

    sub_1000081F4(v7, v8);
  }
}

BOOL sub_1001C1424()
{
  v0 = [objc_opt_self() _carScreen];
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

id sub_1001C1474()
{
  v0 = [objc_opt_self() defaultPIPController];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isPIPProxyInterrupted];

  return v2;
}

id sub_1001C14D8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 videoDeviceController];

  v2 = [v1 isPreviewRunning];
  return v2;
}

id sub_1001C1550()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() predicateMatchingBundleIdentifier:v0];

  return v1;
}

char *sub_1001C15B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10014EA98(&qword_1003ACED0, &qword_1002FDB18);
  sub_10000688C();
  v77 = v2;
  v78 = v3;
  sub_100005BE0();
  __chkstk_darwin(v4);
  sub_100026F78();
  v76 = v5;
  sub_10014EA98(&qword_1003AE220, &qword_1002FDB20);
  sub_100005BE0();
  __chkstk_darwin(v6);
  sub_100026F78();
  v71 = v7;
  sub_10014EA98(&qword_1003ACED8, &qword_1002FDB28);
  sub_10000688C();
  v72 = v8;
  v73 = v9;
  sub_100005BE0();
  __chkstk_darwin(v10);
  sub_100026F78();
  v65 = v11;
  sub_10014EA98(&qword_1003ACEE0, &unk_1002FDB30);
  sub_10000688C();
  v74 = v12;
  v75 = v13;
  sub_100005BE0();
  __chkstk_darwin(v14);
  sub_100026F78();
  v69 = v15;
  v16 = type metadata accessor for NSNotificationCenter.Publisher();
  sub_10000688C();
  v18 = v17;
  v66 = v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v79 = &v60 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v60 - v26;
  __chkstk_darwin(v25);
  v29 = &v60 - v28;
  v30 = &v0[OBJC_IVAR___ICSCameraStateMonitor_viewState];
  *v30 = sub_1001C1424;
  v30[1] = 0;
  v30[2] = UniqueAddress.init();
  v30[3] = 0;
  v30[4] = UniqueAddress.init();
  v30[5] = 0;
  v30[6] = UniqueAddress.init();
  v30[7] = 0;
  v30[8] = sub_1001C1474;
  v30[9] = 0;
  v31 = &v0[OBJC_IVAR___ICSCameraStateMonitor_activeVideoCall];
  *v31 = sub_100026AF4;
  v31[1] = 0;
  v32 = &v0[OBJC_IVAR___ICSCameraStateMonitor_isPreviewRunning];
  *v32 = sub_1001C14D8;
  v32[1] = 0;
  v33 = OBJC_IVAR___ICSCameraStateMonitor_faceTimeProcessPredicate;
  sub_1000064BC(0, &qword_1003ACEE8, RBSProcessPredicate_ptr);
  *&v0[v33] = sub_1001C1550();
  *&v0[OBJC_IVAR___ICSCameraStateMonitor_subscriptions] = &_swiftEmptySetSingleton;
  v34 = &v0[OBJC_IVAR___ICSCameraStateMonitor_timerState];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  v35 = OBJC_IVAR___ICSCameraStateMonitor_state;
  v36 = type metadata accessor for CameraStateMonitor.Snapshot(0);
  sub_100006848(&v1[v35], 1, 2, v36);
  v37 = OBJC_IVAR___ICSCameraStateMonitor_queue;
  v62 = sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  *&v1[v37] = static OS_dispatch_queue.main.getter();
  v81.receiver = v1;
  v81.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v81, "init");
  v39 = objc_opt_self();
  v40 = v38;
  ObjectType = v39;
  v41 = [(objc_class *)v39 defaultCenter];
  v70 = v29;
  NSNotificationCenter.publisher(for:object:)();

  v42 = [(objc_class *)v39 defaultCenter];
  v68 = v27;
  NSNotificationCenter.publisher(for:object:)();

  v43 = *(v18 + 16);
  v43(v79, v29, v16);
  v43(v22, v27, v16);
  sub_100027D30(&qword_1003B0A90, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v44 = v65;
  v64 = v16;
  Publishers.Merge.init(_:_:)();
  v63 = OBJC_IVAR___ICSCameraStateMonitor_queue;
  v80 = *&v40[OBJC_IVAR___ICSCameraStateMonitor_queue];
  v45 = v80;
  v61 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v46 = v71;
  sub_100006848(v71, 1, 1, v61);
  sub_100027E08(&qword_1003ACEF0, &qword_1003ACED8, &qword_1002FDB28, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v60 = sub_100027E50();
  v47 = v45;
  v48 = v69;
  v49 = v72;
  Publisher.receive<A>(on:options:)();
  sub_100008360(v46, &qword_1003AE220, &qword_1002FDB20);

  v73[1](v44, v49);
  sub_100005C44();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100027E08(&qword_1003ACEF8, &qword_1003ACEE0, &unk_1002FDB30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v50 = v74;
  Publisher<>.sink(receiveValue:)();

  (*(v75 + 8))(v48, v50);
  sub_10000A474();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v51 = [(objc_class *)ObjectType defaultCenter];
  v52 = v79;
  NSNotificationCenter.publisher(for:object:)();

  v80 = *&v40[v63];
  v53 = v80;
  sub_100006848(v46, 1, 1, v61);
  v54 = v53;
  v55 = v76;
  v56 = v64;
  Publisher.receive<A>(on:options:)();
  sub_100008360(v46, &qword_1003AE220, &qword_1002FDB20);

  v57 = *(v66 + 8);
  v57(v52, v56);
  sub_100005C44();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100027E08(&qword_1003ACF00, &qword_1003ACED0, &qword_1002FDB18, v73);
  v58 = v77;
  Publisher<>.sink(receiveValue:)();

  (*(v78 + 8))(v55, v58);
  sub_10000A474();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v57(v68, v56);
  v57(v70, v56);
  return v40;
}

void sub_1001C1EB4()
{
  v1 = *(v0 + OBJC_IVAR___ICSCameraStateMonitor_activeVideoCall);

  v3 = v1(v2);

  if (v3)
  {
    swift_getObjectType();
    dispatch thunk of Call.isSendingVideo.setter();
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 videoDeviceController];

    [v5 stopPreview];
    if (qword_1003A9FA0 != -1)
    {
      sub_1000077E0(&qword_1003A9FA0);
    }

    v6 = type metadata accessor for Logger();
    sub_100008A14(v6, &unk_1003B8930);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = dispatch thunk of Call.uniqueProxyIdentifier.getter();
      v12 = sub_100008ADC(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Camera failed for call: %s. Force disabling video...", v8, 0xCu);
      sub_100005B2C(v9);
      sub_100005BB8(v9);
      sub_100005BB8(v8);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003A9FA0 != -1)
    {
      sub_1000077E0(&qword_1003A9FA0);
    }

    v13 = type metadata accessor for Logger();
    sub_100008A14(v13, &unk_1003B8930);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "Not updating camera state on monitor because we have no active video call.", v15, 2u);
      sub_100005BB8(v15);
    }
  }
}

uint64_t sub_1001C22A8(uint64_t a1)
{
  result = type metadata accessor for CameraStateMonitor.State(319);
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

uint64_t sub_1001C2404(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___ICSCameraStateMonitor_viewState;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_100006DEC();
}

uint64_t sub_1001C24A8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___ICSCameraStateMonitor_viewState;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  return sub_100006DEC();
}

id sub_1001C24E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8[4] = a3();
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001CC768;
  v8[3] = a4;
  v6 = _Block_copy(v8);

  return v6;
}

void sub_1001C25E8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  sub_100005C44();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1001C2680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C26D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1001C272C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001C2770(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001C27B0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001C285C(uint64_t a1)
{
  v1 = type metadata accessor for CameraStateMonitor.Snapshot(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1001C28DC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001C2958(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___ICSCameraStateMonitor_viewState;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  return sub_100006DEC();
}

void sub_1001C2A10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001C2A6C();
  }
}

void sub_1001C2A6C()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AB3F0, &qword_1002FDB60);
  __chkstk_darwin(v2 - 8);
  v4 = &v130 - v3;
  v5 = type metadata accessor for CameraStateMonitor.State(0);
  v6 = __chkstk_darwin(v5 - 8);
  v139 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v140 = &v130 - v8;
  v9 = type metadata accessor for CameraStateMonitor.Snapshot(0);
  v10 = __chkstk_darwin(v9);
  v133 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v132 = &v130 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v130 - v15;
  v17 = __chkstk_darwin(v14);
  v141 = &v130 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v130 - v20;
  v22 = __chkstk_darwin(v19);
  v134 = &v130 - v23;
  __chkstk_darwin(v22);
  v25 = &v130 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *&v1[OBJC_IVAR___ICSCameraStateMonitor_queue];
  *v29 = v30;
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = v30;
  v32 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v29, v26);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_8;
  }

  v137 = v21;
  v142 = v25;
  v33 = *&v1[OBJC_IVAR___ICSCameraStateMonitor_activeVideoCall];

  v35 = v33(v34);

  if (!v35)
  {
    if (qword_1003A9FA0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100008A14(v64, &unk_1003B8930);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Not updating camera state on monitor because we have no active video call.", v67, 2u);
    }

    return;
  }

  v130 = v4;
  sub_10014EA98(&qword_1003ACF40, &qword_1002FDB68);
  v4 = swift_allocObject();
  *(v4 + 1) = xmmword_1002FDA00;
  v36 = &v1[OBJC_IVAR___ICSCameraStateMonitor_viewState];
  v37 = *&v1[OBJC_IVAR___ICSCameraStateMonitor_viewState];

  LOBYTE(v37) = v37(v38);

  v4[32] = v37 & 1;
  v39 = *(v36 + 2);

  LOBYTE(v39) = v39(v40);

  v4[33] = v39 & 1;
  v41 = *(v36 + 4);

  LOBYTE(v41) = v41(v42);

  v4[34] = v41 & 1;
  v43 = *(v36 + 6);

  LOBYTE(v43) = v43(v44);

  v4[35] = v43 & 1;
  v45 = *(v36 + 8);

  LOBYTE(v45) = v45(v46);

  v4[36] = v45 & 1;
  v32 = sub_10024BC88(1, v4);
  swift_getObjectType();
  LODWORD(v136) = (dispatch thunk of Call.isSendingVideo.getter() & 1) != 0 && (v47 = *&v1[OBJC_IVAR___ICSCameraStateMonitor_isPreviewRunning], v48 = , v49 = v47(v48), , (v49 & 1) != 0) && !sub_1001C3BC8();
  v135 = v35;
  v138 = v9;
  if (qword_1003A9FA0 != -1)
  {
    goto LABEL_42;
  }

LABEL_8:
  v131 = v32;
  v50 = v32 ^ 1;
  v51 = type metadata accessor for Logger();
  sub_100008A14(v51, &unk_1003B8930);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v144[0] = v55;
    *v54 = 136315650;
    v143[0] = v4;
    sub_10014EA98(&qword_1003ACF48, &unk_1002FDB70);
    v56 = String.init<A>(reflecting:)();
    v58 = v16;
    v59 = v1;
    v60 = sub_100008ADC(v56, v57, v144);

    *(v54 + 4) = v60;
    v1 = v59;
    v16 = v58;
    *(v54 + 12) = 1024;
    *(v54 + 14) = v50 & 1;
    *(v54 + 18) = 1024;
    v61 = v136;
    *(v54 + 20) = v136 & 1;
    _os_log_impl(&_mh_execute_header, v52, v53, "Camera state timer fired. Calculated current view state to be: %s (isViewForCameraVisible: %{BOOL}d, isSendingVideo: %{BOOL}d)", v54, 0x18u);
    sub_100005B2C(v55);

    v62 = v141;
    v63 = v142;
  }

  else
  {

    v62 = v141;
    v63 = v142;
    v61 = v136;
  }

  Date.init()();
  v68 = v138;
  *(v63 + *(v138 + 20)) = v61 & 1;
  *(v63 + *(v68 + 24)) = v50 & 1;
  v69 = OBJC_IVAR___ICSCameraStateMonitor_state;
  swift_beginAccess();
  v70 = v140;
  sub_1001C4448(&v1[v69], v140, type metadata accessor for CameraStateMonitor.State);
  v71 = sub_100006AC0(v70, 2, v68);
  if (v71)
  {
    if (v71 == 1)
    {
      v72 = v134;
      sub_1001C4448(v63, v134, type metadata accessor for CameraStateMonitor.Snapshot);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v143[0] = v76;
        *v75 = 136315138;
        v77 = v130;
        sub_1001C4448(v72, v130, type metadata accessor for CameraStateMonitor.Snapshot);
        sub_100006848(v77, 0, 1, v68);
        v78 = sub_100173E80(v77);
        v141 = v69;
        v79 = v68;
        v80 = v1;
        v82 = v81;
        sub_100008360(v77, &qword_1003AB3F0, &qword_1002FDB60);
        sub_1001C4508(v72, type metadata accessor for CameraStateMonitor.Snapshot);
        v83 = sub_100008ADC(v78, v82, v143);
        v1 = v80;
        v68 = v79;
        v69 = v141;

        *(v75 + 4) = v83;
        v63 = v142;
        v84 = "Changing state from unknown to %s.";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v73, v74, v84, v75, 0xCu);
        sub_100005B2C(v76);

        swift_unknownObjectRelease();

LABEL_37:
        v128 = v139;
        sub_1001C44A4(v63, v139);
        sub_100006848(v128, 0, 2, v68);
        swift_beginAccess();
        sub_1001C4360(v128, &v1[v69]);
        swift_endAccess();
        return;
      }
    }

    else
    {
      if (v61 & v131)
      {
        sub_1001C4508(v63, type metadata accessor for CameraStateMonitor.Snapshot);
        swift_unknownObjectRelease();
        return;
      }

      v72 = v133;
      sub_1001C4448(v63, v133, type metadata accessor for CameraStateMonitor.Snapshot);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v143[0] = v76;
        *v75 = 136315138;
        v120 = v130;
        sub_1001C4448(v72, v130, type metadata accessor for CameraStateMonitor.Snapshot);
        sub_100006848(v120, 0, 1, v68);
        v121 = sub_100173E80(v120);
        v141 = v69;
        v122 = v68;
        v123 = v1;
        v125 = v124;
        sub_100008360(v120, &qword_1003AB3F0, &qword_1002FDB60);
        sub_1001C4508(v72, type metadata accessor for CameraStateMonitor.Snapshot);
        v126 = sub_100008ADC(v121, v125, v143);
        v1 = v123;
        v68 = v122;
        v69 = v141;

        *(v75 + 4) = v126;
        v63 = v142;
        v84 = "View state changed from inconsistent state -> %s.";
        goto LABEL_31;
      }
    }

    swift_unknownObjectRelease();
    v102 = type metadata accessor for CameraStateMonitor.Snapshot;
    v101 = v72;
LABEL_36:
    sub_1001C4508(v101, v102);
    goto LABEL_37;
  }

  v85 = v137;
  sub_1001C44A4(v70, v137);
  if ((v61 & v131 & 1) == 0)
  {
    sub_1001C4448(v85, v62, type metadata accessor for CameraStateMonitor.Snapshot);
    sub_1001C4448(v63, v16, type metadata accessor for CameraStateMonitor.Snapshot);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v141 = v1;
      v143[0] = v140;
      *v105 = 136315394;
      v106 = v68;
      v107 = v130;
      sub_1001C4448(v62, v130, type metadata accessor for CameraStateMonitor.Snapshot);
      sub_100006848(v107, 0, 1, v106);
      v108 = sub_100173E80(v107);
      v110 = v109;
      sub_100008360(v107, &qword_1003AB3F0, &qword_1002FDB60);
      v136 = type metadata accessor for CameraStateMonitor.Snapshot;
      sub_1001C4508(v62, type metadata accessor for CameraStateMonitor.Snapshot);
      v111 = sub_100008ADC(v108, v110, v143);
      v112 = v138;

      *(v105 + 4) = v111;
      *(v105 + 12) = 2080;
      sub_1001C4448(v16, v107, type metadata accessor for CameraStateMonitor.Snapshot);
      sub_100006848(v107, 0, 1, v112);
      v113 = sub_100173E80(v107);
      v115 = v114;
      v116 = v107;
      v68 = v112;
      sub_100008360(v116, &qword_1003AB3F0, &qword_1002FDB60);
      v117 = v16;
      v118 = v136;
      sub_1001C4508(v117, v136);
      v119 = sub_100008ADC(v113, v115, v143);
      v63 = v142;

      *(v105 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v103, v104, "View state changed from %s -> %s.", v105, 0x16u);
      swift_arrayDestroy();
      v1 = v141;

      swift_unknownObjectRelease();

      v101 = v137;
      v102 = v118;
      goto LABEL_36;
    }

    swift_unknownObjectRelease();

    sub_1001C4508(v16, type metadata accessor for CameraStateMonitor.Snapshot);
    v127 = v62;
    goto LABEL_35;
  }

  if (*(v85 + *(v68 + 20)) != 1 || *(v85 + *(v68 + 24)) == 1)
  {
    v86 = v132;
    sub_1001C4448(v85, v132, type metadata accessor for CameraStateMonitor.Snapshot);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v141 = v1;
      v91 = v90;
      v143[0] = v90;
      *v89 = 136315394;
      v92 = v130;
      sub_1001C4448(v86, v130, type metadata accessor for CameraStateMonitor.Snapshot);
      sub_100006848(v92, 0, 1, v68);
      v93 = sub_100173E80(v92);
      v94 = v85;
      v95 = v86;
      v97 = v96;
      sub_100008360(v92, &qword_1003AB3F0, &qword_1002FDB60);
      sub_1001C4508(v95, type metadata accessor for CameraStateMonitor.Snapshot);
      v98 = sub_100008ADC(v93, v97, v143);
      v99 = v69;
      v100 = v138;

      *(v89 + 4) = v98;
      v63 = v142;
      *(v89 + 12) = 2048;
      *(v89 + 14) = 0x4008000000000000;
      _os_log_impl(&_mh_execute_header, v87, v88, "We detected an inconsistent view state %s -> inconsistent state. Will hold for %f seconds before we take action.", v89, 0x16u);
      sub_100005B2C(v91);
      v1 = v141;

      swift_unknownObjectRelease();

      v101 = v94;
      v68 = v100;
      v69 = v99;
      v102 = type metadata accessor for CameraStateMonitor.Snapshot;
      goto LABEL_36;
    }

    swift_unknownObjectRelease();

    v127 = v86;
LABEL_35:
    sub_1001C4508(v127, type metadata accessor for CameraStateMonitor.Snapshot);
    v101 = v85;
    v102 = type metadata accessor for CameraStateMonitor.Snapshot;
    goto LABEL_36;
  }

  Date.timeIntervalSince(_:)();
  if (v129 > 3.0)
  {
    sub_1001C3CA8();
  }

  swift_unknownObjectRelease();
  sub_1001C4508(v85, type metadata accessor for CameraStateMonitor.Snapshot);
  sub_1001C4508(v63, type metadata accessor for CameraStateMonitor.Snapshot);
}

void sub_1001C3A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
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
  sub_1001C4420();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v11._object = 0x80000001002AA480;
    v11._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v11);
    v12._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

BOOL sub_1001C3BC8()
{
  sub_1000064BC(0, &qword_1003ACF50, RBSProcessHandle_ptr);
  v1 = [objc_opt_self() predicateMatching:*(v0 + OBJC_IVAR___ICSCameraStateMonitor_faceTimeProcessPredicate)];
  v2 = sub_1001C428C(v1);
  v3 = [v2 currentState];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 taskState];

    return v5 == 4;
  }

  else
  {

    return 0;
  }
}

void sub_1001C3CA8()
{
  v1 = v0;
  v2 = type metadata accessor for CameraStateMonitor.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v49[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = (&v49[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR___ICSCameraStateMonitor_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = type metadata accessor for CameraStateMonitor.Snapshot(0);
  sub_100006848(v4, 2, 2, v13);
  v14 = OBJC_IVAR___ICSCameraStateMonitor_state;
  swift_beginAccess();
  sub_1001C4360(v4, v1 + v14);
  swift_endAccess();
  v15 = *(v1 + OBJC_IVAR___ICSCameraStateMonitor_activeVideoCall);

  v17 = v15(v16);

  if (v17)
  {
    swift_getObjectType();
    dispatch thunk of Call.isSendingVideo.setter();
    v18 = [objc_opt_self() sharedInstance];
    v19 = [v18 videoDeviceController];

    [v19 stopPreview];
    if (qword_1003A9FA0 == -1)
    {
LABEL_4:
      v20 = type metadata accessor for Logger();
      sub_100008A14(v20, &unk_1003B8930);
      swift_unknownObjectRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v49[0] = v24;
        *v23 = 134218242;
        *(v23 + 4) = 0x4008000000000000;
        *(v23 + 12) = 2080;
        v25 = dispatch thunk of Call.uniqueProxyIdentifier.getter();
        v27 = sub_100008ADC(v25, v26, v49);

        *(v23 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "View state was hidden with camera active for %f seconds for call: %s. Force disabling video...", v23, 0x16u);
        sub_100005B2C(v24);
        sub_100005BB8(v24);
        sub_100005BB8(v23);
      }

      v28 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      v29._countAndFlagsBits = 0xD00000000000002DLL;
      v29._object = 0x80000001002AA4C0;
      String.append(_:)(v29);
      Double.write<A>(to:)();
      v30._object = 0x80000001002AA4F0;
      v30._countAndFlagsBits = 0xD000000000000021;
      String.append(_:)(v30);
      sub_10014EA98(&qword_1003ACF40, &qword_1002FDB68);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1002FDA00;
      v32 = (v1 + OBJC_IVAR___ICSCameraStateMonitor_viewState);
      v33 = *(v1 + OBJC_IVAR___ICSCameraStateMonitor_viewState);

      v33(v34);
      sub_1000069C0();
      *(v31 + 32) = v33 & 1;
      v35 = v32[2];

      v35(v36);
      sub_1000069C0();
      *(v31 + 33) = v35 & 1;
      v37 = v32[4];

      v37(v38);
      sub_1000069C0();
      *(v31 + 34) = v37 & 1;
      v39 = v32[6];

      v39(v40);
      sub_1000069C0();
      *(v31 + 35) = v39 & 1;
      v41 = v32[8];

      v41(v42);
      sub_1000069C0();
      *(v31 + 36) = v41 & 1;
      v48 = v31;
      sub_10014EA98(&qword_1003ACF48, &unk_1002FDB70);
      v43._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v43);

      v44 = String._bridgeToObjectiveC()();

      [v28 simulateCrashReportWithReason:v44 pid:getpid() code:3735931409];
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

LABEL_13:
    sub_1000077E0(&qword_1003A9FA0);
    goto LABEL_4;
  }

  if (qword_1003A9FA0 != -1)
  {
    sub_1000077E0(&qword_1003A9FA0);
  }

  v45 = type metadata accessor for Logger();
  sub_100008A14(v45, &unk_1003B8930);
  v44 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v44, v46, "Not updating camera state on monitor because we have no active video call.", v47, 2u);
    sub_100005BB8(v47);
  }

LABEL_11:
}

id sub_1001C428C(void *a1)
{
  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1001C4360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraStateMonitor.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C4448(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000058E8();
  v4 = sub_1000085C0();
  v5(v4);
  return a2;
}

uint64_t sub_1001C44A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraStateMonitor.Snapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C4508(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000058E8();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1001C4570()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AE220, &qword_1002FDB20);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - v3;
  v5 = sub_10014EA98(&qword_1003ACF88, &qword_1002FDBA0);
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v41 - v9;
  v11 = sub_10014EA98(&qword_1003ACF90, &qword_1002FDBA8);
  sub_10000688C();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = v41 - v15;
  v17 = [v0 existingPrioritizedCall];
  if (v17)
  {
    v19 = v17;
    v20 = objc_allocWithZone(type metadata accessor for CallStatusTextObserver());
    v50 = v11;
    v47 = v19;
    v49 = CallStatusTextObserver.init(call:)();
    v53 = CallStatusTextObserver.callStatusPublisher.getter();
    v21 = CallStatusTextObserver.primaryStatusPublisher.getter();
    v48 = v13;
    v52 = v21;
    v22 = CallStatusTextObserver.secondaryStatusPublisher.getter();
    v42 = v10;
    v51 = v22;
    v46 = v1;
    v23 = sub_10014EA98(&qword_1003ACF98, &qword_1002FDBB0);
    v43 = v16;
    v44 = v5;
    v41[1] = v23;
    sub_10014EA98(&qword_1003ACFA0, &qword_1002FDBB8);
    v45 = v7;
    sub_100027E08(&qword_1003ACFA8, &qword_1003ACF98, &qword_1002FDBB0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100027E08(&qword_1003ACFB0, &qword_1003ACFA0, &qword_1002FDBB8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v24 = v42;
    Publisher.combineLatest<A, B>(_:_:)();

    sub_10000A2EC();
    v25 = static OS_dispatch_queue.main.getter();
    v53 = v25;
    v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    sub_100006848(v4, 1, 1, v26);
    sub_100027E08(&qword_1003ACFB8, &qword_1003ACF88, &qword_1002FDBA0, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
    sub_100027E50();
    v28 = v43;
    v27 = v44;
    Publisher.receive<A>(on:options:)();
    sub_1001C5174(v4);

    (*(v45 + 8))(v24, v27);
    v29 = swift_allocObject();
    v30 = v46;
    swift_unknownObjectWeakInit();
    sub_100006BE8();
    v31 = swift_allocObject();
    v32 = v47;
    *(v31 + 16) = v29;
    *(v31 + 24) = v32;
    sub_100006BE8();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1001C51DC;
    *(v33 + 24) = v31;
    sub_100027E08(&qword_1003ACFC0, &qword_1003ACF90, &qword_1002FDBA8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v34 = v32;
    v35 = v50;
    v36 = Publisher<>.sink(receiveValue:)();

    (*(v48 + 8))(v28, v35);

    v37 = v49;
    CallStatusTextObserver.startObservingCallStatus()();
    [v30 updateCallDurationVisibility];
    swift_unknownObjectWeakInit();
    CallStatusTextObserver.retrieveStatus.setter();
    swift_unknownObjectWeakDestroy();
    [v30 setCallStatusTextObserver:v37];
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002FBD90;
    *(v38 + 32) = v36;
    v39 = objc_allocWithZone(type metadata accessor for CombineSubscriptions());
    v40 = sub_1001C4F9C(v38);
    [v30 setCallStatusCancellable:v40];
  }

  return result;
}

void sub_1001C4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [a7 provider];
    v14 = [v13 isTelephonyProvider];

    if (v14)
    {
      v15 = [v12 getParticipantsView_WaitingOrNot];
      v16 = [v15 singleCallLabelView];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 statusLabel];
        if (!v18)
        {
          __break(1u);
          return;
        }

        v19 = v18;
        v20 = [v18 text];

        if (v20)
        {
          a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a3 = v21;

LABEL_11:
          sub_1001C4C64(v10, a2, a3);

          return;
        }
      }

      else
      {
        v17 = v15;
      }
    }

    goto LABEL_11;
  }
}

void sub_1001C4C64(int a1, uint64_t a2, uint64_t a3)
{
  objc_allocWithZone(type metadata accessor for PosterViewController.PosterStatusTextModel());

  v4 = PosterViewController.PosterStatusTextModel.init(status:callIsActive:)();
  v5 = [v3 posterViewController];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for PosterViewController();
    if (swift_dynamicCastClass())
    {
      PosterViewController.updateCallerNameAndStatus(model:)();
    }

    v6 = v7;
  }

  else
  {
    v6 = v4;
  }
}

uint64_t sub_1001C4D7C(void *a1, char a2, char a3)
{
  v4 = [a1 callCenter];
  if (v4)
  {
    v5 = v4;
    [v4 currentCallCount];
  }

  type metadata accessor for CallParticipantLabelDescriptor();
  v6 = static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:alertAvailable:allowsDuration:)();
  if (a3)
  {
    v7 = dispatch thunk of CallParticipantLabelDescriptor.secondaryString.getter();
    v9 = v8;

    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v10 = dispatch thunk of CallParticipantLabelDescriptor.strings.getter();
    if (*(v10 + 16))
    {
      v7 = *(v10 + 32);
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

void sub_1001C4E84()
{
  v1 = [v0 callStatusTextObserver];
  if (v1)
  {
    v4 = v1;
    type metadata accessor for CallStatusTextObserver();
    if (swift_dynamicCastClass())
    {
      v2 = [v0 traitCollection];
      v3 = [v2 _backlightLuminance];

      CallStatusTextObserver.updateCallDurationVisibility(showDuration:)(v3 != 1);
    }
  }
}

id sub_1001C4F9C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13InCallService20CombineSubscriptions_cancellables] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

void sub_1001C4FEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService20CombineSubscriptions_cancellables);
  v2 = sub_100017230(v1);

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    AnyCancellable.cancel()();
  }
}

uint64_t sub_1001C5174(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AE220, &qword_1002FDB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_1001C51EC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003ACFC8 = result;
  return result;
}

uint64_t sub_1001C5268(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (qword_1003AA058 != -1)
  {
    swift_once();
  }

  v7 = qword_1003ACFC8;
  type metadata accessor for Identifier(0);
  v8 = v7;
  _print_unlocked<A, B>(_:_:)();

  v9._countAndFlagsBits = a2;
  v9._object = a3;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  *a4 = v10;
  return result;
}

id sub_1001C5394()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

void ICSApplicationDelegate.buildMenu(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _UIEnhancedMainMenuEnabled())
  {
    if (qword_1003A9F88 != -1)
    {
      sub_10000C418(&qword_1003A9F88);
    }

    v6 = type metadata accessor for Logger();
    sub_100008A14(v6, qword_1003B88F8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device is iPad with _UIEnhancedMainMenuEnabled, now building menu bar for ICS", v9, 2u);
      sub_100005BB8(v9);
    }

    v16.receiver = v2;
    v16.super_class = ICSApplicationDelegate;
    objc_msgSendSuper2(&v16, "buildMenuWithBuilder:", a1);
    v10 = sub_100006DF4();
    [v10 v11];
  }

  else
  {
    if (qword_1003A9F88 != -1)
    {
      sub_10000C418(&qword_1003A9F88);
    }

    v12 = type metadata accessor for Logger();
    sub_100008A14(v12, qword_1003B88F8);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Device is not iPad with _UIEnhancedMainMenuEnabled, so we're not building menu bar for ICS", v14, 2u);
      sub_100005BB8(v14);
    }
  }
}

void ICSApplicationDelegate.buildICSMenuBarMenus(_:)(void *a1)
{
  sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
  v2 = [a1 system];
  v3 = [objc_opt_self() mainSystem];
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v5 = [a1 menuForIdentifier:UIMenuClose];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 children];

      sub_1000064BC(0, &qword_1003ACFE0, UIMenuElement_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (sub_100017230(v8))
      {
        sub_100017238(0, (v8 & 0xC000000000000001) == 0, v8);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v22 = v9;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v10 = sub_100006DF4();
    [v10 v11];
    v12 = sub_100006DF4();
    [v12 v13];
    v14 = sub_100006DF4();
    [v14 v15];
    v16 = sub_100006DF4();
    [v16 v17];
    v18 = sub_100006DF4();
    [v18 v19];
    v20 = sub_100006DF4();
    [v20 v21];
  }
}

id sub_1001C5814(void *a1)
{
  [a1 removeMenuForIdentifier:UIMenuFile];
  [a1 removeMenuForIdentifier:UIMenuView];

  return [a1 removeMenuForIdentifier:UIMenuFormat];
}

id sub_1001C58A0(void *a1)
{
  [a1 removeMenuForIdentifier:UIMenuSpelling];
  [a1 removeMenuForIdentifier:UIMenuSpellingPanel];
  [a1 removeMenuForIdentifier:UIMenuSubstitutions];
  [a1 removeMenuForIdentifier:UIMenuTransformations];

  return [a1 removeMenuForIdentifier:UIMenuSpeech];
}

uint64_t sub_1001C598C(void *a1)
{
  v9 = sub_1001C5C84;
  v10 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1001C5C8C;
  v8 = &unk_10035E268;
  v2 = _Block_copy(&v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v2];
  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = sub_1001C5C88;
  v10 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1001C5C8C;
  v8 = &unk_10035E290;
  v4 = _Block_copy(&v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuFind fromChildrenBlock:v4];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1001C5B38(uint64_t a1)
{
  v2 = sub_100017230(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v5;
    }

    v8 = [v6 action];

    if (v8 && (static Selector.== infix(_:_:)() & 1) != 0)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }
}

Class sub_1001C5C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000064BC(0, &qword_1003ACFE0, UIMenuElement_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

void sub_1001C5D24(uint64_t a1)
{
  v2 = sub_100017230(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v5;
    }

    v8 = [v6 action];

    if (v8 && (static Selector.== infix(_:_:)() & 1) != 0)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }
}

void sub_1001C5E88(id a1, void *a2)
{
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1001C778C;
    *(v5 + 24) = v4;
    v9[4] = sub_1001C7794;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1001C5C8C;
    v9[3] = &unk_10035E240;
    v6 = _Block_copy(v9);
    v7 = a2;

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuMinimizeAndZoom fromChildrenBlock:v6];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {

    [a1 removeMenuForIdentifier:UIMenuBringAllToFront];
  }
}

uint64_t sub_1001C604C(uint64_t a1, void *a2)
{
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002FBD90;
  *(v3 + 32) = a2;
  v7 = v3;
  v4 = a2;

  sub_1001D3C34(v5);
  return v7;
}

void sub_1001C6150(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002F96C0;
  *(v6 + 32) = [v2 menuItemMute];
  *(v6 + 40) = [v2 menuAudioOutput];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  if (qword_1003AA058 != -1)
  {
    swift_once();
  }

  v10 = qword_1003ACFC8;
  sub_1000064BC(0, &qword_1003ACFF8, UIMenu_ptr);
  v11 = v10;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v15.value.super.isa = 0;
  v15.is_nil = v10;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v15, 0, 0xFFFFFFFFFFFFFFFFLL, v6, v14).super.super.isa;
  [a1 insertSiblingMenu:isa afterMenuForIdentifier:UIMenuEdit];
}

void sub_1001C6390(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

UIMenu sub_1001C644C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000064BC(0, &unk_1003AD000, UIKeyCommand_ptr);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_1000064BC(0, &qword_1003ACFF8, UIMenu_ptr);
  if (qword_1003AA060 != -1)
  {
    swift_once();
  }

  v3 = qword_1003ACFD0;
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002FBD90;
  *(v4 + 32) = v2;
  v5 = v3;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9.value.super.isa = 0;
  v9.is_nil = v3;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v9, 1, 0xFFFFFFFFFFFFFFFFLL, v4, v8);
}

UIMenu sub_1001C66A4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  sub_1000064BC(0, &qword_1003ACFF8, UIMenu_ptr);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v3 = String.init(localized:table:bundle:locale:comment:)();
  v5 = v4;
  if (qword_1003AA068 != -1)
  {
    swift_once();
  }

  v6 = qword_1003ACFD8;
  v7 = v6;
  v8 = [v0 makeAudioOutputItems];
  sub_1000064BC(0, &qword_1003ACFE0, UIMenuElement_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10._countAndFlagsBits = v3;
  v10._object = v5;
  v13.value.super.isa = 0;
  v13.is_nil = v7;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v13, 33, 0xFFFFFFFFFFFFFFFFLL, v9, v12);
}

void *sub_1001C688C()
{
  v1 = v0;
  v2 = [v0 callCenter];
  v3 = [v2 routeController];

  v4 = [v3 routes];
  sub_1000064BC(0, &qword_1003ACFF0, TURoute_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_100017230(v5);
  if (v6)
  {
    v7 = v6;
    v22 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v1 makeAudioOutputItemWithRoute:v10];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);

    v13 = v22;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  if (qword_1003A9F90 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008A14(v14, qword_1003B8910);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315138;
    sub_1000064BC(0, &qword_1003ACFE0, UIMenuElement_ptr);
    v19 = Array.description.getter();
    v21 = sub_100008ADC(v19, v20, &v22);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Made items for audio output menu: %s", v17, 0xCu);
    sub_100005B2C(v18);
  }

  return v13;
}

void *sub_1001C6BE4(void *a1)
{
  sub_1000064BC(0, &qword_1003ACFE8, UIAction_ptr);
  v3 = [a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = a1;
  v6 = v1;
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v7 setState:{objc_msgSend(v5, "isCurrentlyPicked", 0, 0, 0, sub_1001C7784, v4)}];
  return v7;
}

void sub_1001C6CFC(uint64_t a1, void *a2, void *a3)
{
  if (qword_1003A9F90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008A14(v5, qword_1003B8910);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = [v6 name];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100008ADC(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "User has selected audio output: %s", v9, 0xCu);
    sub_100005B2C(v10);
  }

  v16 = [a3 callCenter];
  v17 = [v16 routeController];

  [v17 pickRoute:v6];
}

uint64_t ICSApplicationDelegate.getMenuBarApplicationName(_:)(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = [a1 provider];
  v5 = [v4 localizedName];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (qword_1003A9F90 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008A14(v9, qword_1003B8910);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100008ADC(v6, v8, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "Setting menu bar title with app name %s", v12, 0xCu);
    sub_100005B2C(v13);
    sub_100005BB8(v13);
    sub_100005BB8(v12);
  }

  if (([a1 isVideo] & 1) == 0)
  {
    [a1 isThirdPartyVideo];
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002FAB60;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10002BBB4();
  *(v14 + 32) = v6;
  *(v14 + 40) = v8;
  v15 = String.init(format:_:)();

  return v15;
}

void sub_1001C72DC()
{
  if (qword_1003A9F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, qword_1003B8910);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "User has triggered mute", v4, 2u);
  }

  v5 = [v0 callCenter];
  v6 = [v5 frontmostAudioOrVideoCall];

  if (v6)
  {
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = [v7 isUplinkMuted];

      _os_log_impl(&_mh_execute_header, v8, v9, "Changing toggleMute from %{BOOL}d", v10, 8u);
    }

    else
    {

      v8 = v7;
    }

    [v7 setUplinkMuted:[v7 isUplinkMuted]^ 1];
    oslog = v7;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = [oslog isUplinkMuted];

      _os_log_impl(&_mh_execute_header, v13, v14, "... to %{BOOL}d", v15, 8u);
    }

    else
    {
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Could not find TUCall to mute, so we're not muting anything", v12, 2u);
    }
  }
}

uint64_t sub_1001C7654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007800(a1, a2, a3);
  sub_100017238(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v10 = sub_100025AFC();
  }

  *v3 = v10;
  return sub_100008040();
}

uint64_t sub_1001C76B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007800(a1, a2, a3);
  sub_100017238(v5, v6, v7);
  if (v4)
  {
    v8 = swift_unknownObjectRetain();
  }

  else
  {
    v8 = sub_100025AFC();
  }

  *v3 = v8;
  return sub_100008040();
}

uint64_t sub_1001C771C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007800(a1, a2, a3);
  sub_100017238(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v10 = sub_100025AFC();
  }

  *v3 = v10;
  return sub_100008040();
}

id sub_1001C77D8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureOverlayWindow();
  v3 = objc_msgSendSuper2(&v5, "initWithWindowScene:", a1);

  return v3;
}

id sub_1001C7850(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SecureOverlayWindow();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1001C78D8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureOverlayWindow();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void *sub_1001C79D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_1001C7A64(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window) = a1;
  return _objc_release_x1(a1, v2);
}

void sub_1001C7A78(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2EC();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v10(v7, v4);
  if (v8)
  {
    v11 = [objc_opt_self() sharedApplication];
    v12 = [v11 delegate];

    if (!v12)
    {
      return;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 sceneManager];
      [v14 registerGenericScene:a1 ofType:2];

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        a1 = a1;
        v17 = ICSApplicationDelegate.bannerPresentationManager.getter();
        v18 = objc_allocWithZone(type metadata accessor for SecureOverlayWindow());
        v7 = v17;
        v19 = [v18 initWithWindowScene:v16];
        v20 = OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window;
        v21 = *&v2[OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window];
        *&v2[OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window] = v19;
        v22 = v19;

        v23 = objc_allocWithZone(type metadata accessor for ScreenSharingBroadcasterRootViewController());
        v24 = sub_1001AF42C(v17);
        [v22 setRootViewController:v24];

        v25 = *&v2[v20];
        if (v25)
        {
          [v25 setHidden:0];
          v26 = *&v2[v20];
          if (v26)
          {
            v27 = [v26 _bindingLayer];
            [v27 setDisableUpdateMask:32];
          }
        }

        v28 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v16];
        v29 = OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_cloneTerminatingWindow;
        v30 = *&v2[OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_cloneTerminatingWindow];
        *&v2[OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_cloneTerminatingWindow] = v28;
        v31 = v28;

        [v31 setUserInteractionEnabled:0];
        v32 = *&v2[v29];
        if (v32)
        {
          v33 = [v32 layer];
          [v33 setAllowsHitTesting:0];

          v34 = *&v2[v29];
          if (v34)
          {
            v35 = objc_opt_self();
            v36 = v34;
            v37 = [v35 clearColor];
            [v36 setBackgroundColor:v37];

            v38 = *&v2[v29];
            if (v38)
            {
              v39 = *&v2[v20];
              if (v39)
              {
                v40 = v38;
                [v39 windowLevel];
                v42 = v41;
              }

              else
              {
                v42 = UIWindowLevelNormal;
                v47 = v38;
              }

              type metadata accessor for Level(0);
              *&v56[2] = v42;
              v56[1] = 0x3F50624DD2F1A9FCLL;
              sub_1001C83B8();
              static _UIKitNumericRawRepresentable.- infix(_:_:)();
              [v38 setWindowLevel:*&v56[3]];

              v48 = *&v2[v29];
              if (v48)
              {
                [v48 setHidden:0];
              }
            }
          }
        }

        v9 = [objc_allocWithZone(CACloningTerminatorLayer) init];
        v49 = *&v2[v29];
        if (v49)
        {
          v2 = [v49 layer];
          if (v2)
          {
            while (1)
            {
              v50 = [v2 superlayer];
              if (!v50)
              {
                break;
              }

              v51 = [v2 superlayer];
              v2 = v51;
              if (!v51)
              {
                goto LABEL_29;
              }
            }

            [v2 addSublayer:v9];
          }
        }

        else
        {
          v2 = 0;
        }

LABEL_29:
        if (qword_1003A9F40 == -1)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v43 = type metadata accessor for Logger();
      sub_100008A14(v43, &unk_1003B8820);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Received a non-UIWindowScene with a compact role - requesting scene dismissal", v46, 2u);
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_35:
  sub_10000755C(&qword_1003A9F40);
LABEL_30:
  v52 = type metadata accessor for Logger();
  sub_100008A14(v52, &unk_1003B8820);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Finished creating new generic scene for ScreenSharingBroadcasterSceneDelegate", v55, 2u);
  }

  swift_unknownObjectRelease();
}

void sub_1001C8158()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window);
      *(v0 + OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window) = 0;

      [v4 dismissScreenSharingBroadcasterSession];
    }

    swift_unknownObjectRelease();
  }
}

id sub_1001C8288()
{
  *&v0[OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService37ScreenSharingBroadcasterSceneDelegate_cloneTerminatingWindow] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingBroadcasterSceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001C8310(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001C83B8()
{
  result = qword_1003AD078;
  if (!qword_1003AD078)
  {
    type metadata accessor for Level(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD078);
  }

  return result;
}

id sub_1001C8410()
{
  v1 = OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_view;
  [*(v0 + OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_view) bounds];
  sub_100007834();
  result = CGRectEqualToRect(v5, v6);
  if ((result & 1) == 0)
  {
    v3 = *(v0 + v1);

    return [v3 layoutIfNeeded];
  }

  return result;
}

id sub_1001C84A0(void *a1)
{
  v3 = OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_view;
  v4 = *(v1 + OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_view);
  [a1 bounds];
  [v4 setFrame:?];

  [*(v1 + v3) setAutoresizingMask:18];
  v5 = *(v1 + v3);

  return [a1 addSubview:v5];
}

uint64_t sub_1001C8544()
{
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002F96C0;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v1 blackColor];
  return v0;
}

uint64_t sub_1001C861C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for DimmingView.GradientValues();
  sub_100156134(v4, a3);
  sub_100008A14(v4, a3);
  sub_1001C8544();
  return DimmingView.GradientValues.init(startPoint:endPoint:colors:)();
}

uint64_t sub_1001C8688()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_view);
  sub_10014EA98(&qword_1003AD110, &qword_1002FDC60);
  v3 = type metadata accessor for DimmingView.GradientValues();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002FAB60;
  if (*(v1 + OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_useHighGradientYPosition) == 1)
  {
    v7 = qword_1003AA070;
    v8 = v2;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_1003AD080;
  }

  else
  {
    v10 = qword_1003AA078;
    v11 = v2;
    if (v10 != -1)
    {
      swift_once();
    }

    v9 = qword_1003AD098;
  }

  v12 = sub_100008A14(v3, v9);
  (*(v4 + 16))(v6 + v5, v12, v3);
  DimmingView.updateGradients(with:)(v6);
}

id sub_1001C882C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_view;
  type metadata accessor for DimmingView();
  sub_10014EA98(&qword_1003AD110, &qword_1002FDC60);
  v3 = type metadata accessor for DimmingView.GradientValues();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002FAB60;
  if (qword_1003AA070 != -1)
  {
    swift_once();
  }

  v7 = sub_100008A14(v3, qword_1003AD080);
  (*(v4 + 16))(v6 + v5, v7, v3);
  *&v0[v2] = DimmingView.__allocating_init(values:)();
  v0[OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_useHighGradientYPosition] = 1;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

void sub_1001C8A04(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(type metadata accessor for PHAudioCallPosterDimmingViewHelper()) init];
  sub_1001C84A0(a1);
  [v2 setPosterDimmingViewHelper:v4];
}

void sub_1001C8A80()
{
  v1 = [v0 posterDimmingViewHelper];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for PHAudioCallPosterDimmingViewHelper();
    if (swift_dynamicCastClass())
    {
      sub_100007834();
      sub_1001C8410();
    }
  }
}

void sub_1001C8BA8(__int16 a1)
{
  v3 = [v1 posterDimmingViewHelper];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for PHAudioCallPosterDimmingViewHelper();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_useHighGradientYPosition) = a1 != 4;
      sub_1001C8688();
    }
  }
}

void sub_1001C8C9C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [v3 posterDimmingViewHelper];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PHAudioCallPosterDimmingViewHelper();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      [a2 insertSubview:a1 belowSubview:*(v7 + OBJC_IVAR____TtC13InCallService34PHAudioCallPosterDimmingViewHelper_view)];
    }
  }
}

void sub_1001C8DC0()
{
  v13 = [objc_allocWithZone(type metadata accessor for TouchPassthroughContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v13 setFrame:{v4, v6, v8, v10}];
  [v13 setAutoresizingMask:18];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addSubview:v13];

  sub_1001C8A04(v13);
  [v0 setPosterContainer:v13];
}

id sub_1001C8F94(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1001C9020(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t *sub_1001C90D8()
{
  if (qword_1003AA088 != -1)
  {
    swift_once();
  }

  return &qword_1003B8A88;
}

uint64_t sub_1001C9128()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1001C968C();
  static DispatchQoS.userInteractive.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_1001C96D0(&qword_1003AD1E0, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10014EA98(&qword_1003AD1E8, &unk_1002FDD00);
  sub_1001C9718();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1003B8A80 = result;
  return result;
}

uint64_t sub_1001C93C0(uint64_t a1)
{
  type metadata accessor for VoicemailActor();
  result = swift_initStaticObject();
  qword_1003B8A88 = result;
  return result;
}

uint64_t sub_1001C93EC()
{
  if (qword_1003AA080 != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

id sub_1001C94A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailQueueManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001C9500()
{
  if (qword_1003AA080 != -1)
  {
    swift_once();
  }

  v1 = qword_1003B8A80;
  qword_1003B8A90 = qword_1003B8A80;

  return v1;
}

id sub_1001C9564()
{
  if (qword_1003AA090 != -1)
  {
    swift_once();
  }

  v1 = qword_1003B8A90;

  return v1;
}

id sub_1001C95E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailQueueManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001C968C()
{
  result = qword_1003AD1D8;
  if (!qword_1003AD1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AD1D8);
  }

  return result;
}

uint64_t sub_1001C96D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1001C9718()
{
  result = qword_1003AD1F0;
  if (!qword_1003AD1F0)
  {
    sub_100155B7C(&qword_1003AD1E8, &unk_1002FDD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD1F0);
  }

  return result;
}

id sub_1001C981C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1001C98D8()
{
  v0 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  byte_1003AD1F8 = 0;
  URL.init(string:)();
  if (sub_100006AC0(v2, 1, v3) == 1)
  {
    return sub_100155BC4(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = 0;
  TUOpenURLWithError();

  return (*(v4 + 8))(v6, v3);
}

void sub_1001C9AD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (byte_1003AD1F8)
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
      _os_log_impl(&_mh_execute_header, oslog, v4, "TelephonyUnsuportedAlert is already presented.", v5, 2u);
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
      _os_log_impl(&_mh_execute_header, v8, v9, "Presenting TelephonyUnsuportedAlert.", v10, 2u);
    }

    byte_1003AD1F8 = 1;
    v12.receiver = v1;
    v12.super_class = v6;
    objc_msgSendSuper2(&v12, "show");
  }
}

uint64_t sub_1001C9D38()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003B8A98);
  sub_100008A14(v0, qword_1003B8A98);
  return Logger.init(subsystem:category:)();
}

void sub_1001C9DB0(void *a1)
{
  v3 = [a1 window];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    if (qword_1003AA098 != -1)
    {
      sub_100025B14(&qword_1003AA098);
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, qword_1003B8A98);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v122 = v6;
    if (os_log_type_enabled(v7, v8))
    {
      v1 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v125[0] = v10;
      *v1 = 138412546;
      *(v1 + 4) = v6;
      *v9 = v4;
      *(v1 + 12) = 2080;
      v11 = v6;
      sub_100006E1C();
      v12 = CGRect.description.getter();
      LOBYTE(v4) = v13;
      v14 = sub_100008ADC(v12, v13, v125);

      *(v1 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "[View Evaluation] Current window %@ has a bound of %s.", v1, 0x16u);
      sub_100153D2C(v9);
      sub_100005BB8(v9);
      sub_100005B2C(v10);
      sub_100005BB8(v10);
      sub_100005BB8(v1);
    }

    v126 = a1;
    v15 = a1;
    swift_beginAccess();
    oslog = 138543362;
    *&v16 = 138412290;
    v120 = v16;
    while (1)
    {
      v17 = [v15 superview];

      if (!v17)
      {

        sub_100008654();
        return;
      }

      [v17 bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [v15 frame];
      v135.origin.x = v26;
      v135.origin.y = v27;
      v135.size.width = v28;
      v135.size.height = v29;
      v127.origin.x = v19;
      v127.origin.y = v21;
      v127.size.width = v23;
      v127.size.height = v25;
      if (CGRectContainsRect(v127, v135))
      {
        sub_100026F84();
        if (CGRectIsEmpty(v128))
        {
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.error.getter();
          if (!sub_100006E00(v31))
          {
            goto LABEL_35;
          }

          sub_100005384();
          v32 = sub_10000C438();
          sub_100007848(v32, v33, v34, v35, v36, v37, v38, v39, v120, *(&v120 + 1), v121, v122, oslog);
          v40 = v4;
          v41 = v30;
          v42 = "[View Evaluation] Current view %{public}@ has a zero rect.";
        }

        else
        {
          sub_100026F84();
          if (CGRectGetWidth(v129) == 0.0)
          {
            v30 = Logger.logObject.getter();
            v52 = static os_log_type_t.error.getter();
            if (!sub_100006E00(v52))
            {
              goto LABEL_35;
            }

            sub_100005384();
            v53 = sub_10000C438();
            sub_100007848(v53, v54, v55, v56, v57, v58, v59, v60, v120, *(&v120 + 1), v121, v122, oslog);
            v40 = v4;
            v41 = v30;
            v42 = "[View Evaluation] Current view %{public}@ has a zero width.";
          }

          else
          {
            sub_100026F84();
            if (CGRectGetHeight(v130) == 0.0)
            {
              v30 = Logger.logObject.getter();
              v61 = static os_log_type_t.error.getter();
              if (!sub_100006E00(v61))
              {
                goto LABEL_35;
              }

              sub_100005384();
              v62 = sub_10000C438();
              sub_100007848(v62, v63, v64, v65, v66, v67, v68, v69, v120, *(&v120 + 1), v121, v122, oslog);
              v40 = v4;
              v41 = v30;
              v42 = "[View Evaluation] Current view %{public}@ has a zero height.";
            }

            else
            {
              sub_100026F84();
              Width = CGRectGetWidth(v131);
              v132.origin.x = sub_100006E1C();
              if (CGRectGetWidth(v132) >= Width)
              {
                sub_100026F84();
                Height = CGRectGetHeight(v133);
                v134.origin.x = sub_100006E1C();
                if (CGRectGetHeight(v134) >= Height)
                {
                  if ([v15 isHidden])
                  {
                    v30 = Logger.logObject.getter();
                    v90 = static os_log_type_t.error.getter();
                    if (!sub_100006E00(v90))
                    {
                      goto LABEL_35;
                    }

                    sub_100005384();
                    v91 = sub_10000C438();
                    sub_100007848(v91, v92, v93, v94, v95, v96, v97, v98, v120, *(&v120 + 1), v121, v122, oslog);
                    v40 = v4;
                    v41 = v30;
                    v42 = "[View Evaluation] Current view %{public}@ is hidden.";
                  }

                  else
                  {
                    [v15 alpha];
                    v100 = v99;
                    v30 = Logger.logObject.getter();
                    if (v100 == 0.0)
                    {
                      v101 = static os_log_type_t.error.getter();
                      if (!sub_100006E00(v101))
                      {
                        goto LABEL_35;
                      }

                      sub_100005384();
                      v102 = sub_10000C438();
                      sub_100007848(v102, v103, v104, v105, v106, v107, v108, v109, v120, *(&v120 + 1), v121, v122, oslog);
                      v40 = v4;
                      v41 = v30;
                      v42 = "[View Evaluation] Current view %{public}@ has alpha of 0.";
                    }

                    else
                    {
                      v110 = static os_log_type_t.debug.getter();
                      if (!sub_100006E00(v110))
                      {
                        goto LABEL_35;
                      }

                      sub_100005384();
                      v1 = sub_10000C438();
                      *v8 = v120;
                      *(v8 + 4) = v15;
                      *v1 = v15;
                      v111 = v15;
                      v40 = v4;
                      v41 = v30;
                      v42 = "[View Evaluation] Current view %@.";
                    }
                  }
                }

                else
                {
                  v30 = Logger.logObject.getter();
                  v81 = static os_log_type_t.error.getter();
                  if (!sub_100006E00(v81))
                  {
                    goto LABEL_35;
                  }

                  sub_100005384();
                  v82 = sub_10000C438();
                  sub_100007848(v82, v83, v84, v85, v86, v87, v88, v89, v120, *(&v120 + 1), v121, v122, oslog);
                  v40 = v4;
                  v41 = v30;
                  v42 = "[View Evaluation] Current view %{public}@ has a height larger than the window.";
                }
              }

              else
              {
                v30 = Logger.logObject.getter();
                v71 = static os_log_type_t.error.getter();
                if (!sub_100006E00(v71))
                {
                  goto LABEL_35;
                }

                sub_100005384();
                v72 = sub_10000C438();
                sub_100007848(v72, v73, v74, v75, v76, v77, v78, v79, v120, *(&v120 + 1), v121, v122, oslog);
                v40 = v4;
                v41 = v30;
                v42 = "[View Evaluation] Current view %{public}@ has a width larger than the window.";
              }
            }
          }
        }
      }

      else
      {
        v30 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (!sub_100006E00(v43))
        {
          goto LABEL_35;
        }

        sub_100005384();
        v44 = sub_10000C438();
        sub_100007848(v44, v45, v46, v47, v48, v49, v50, v51, v120, *(&v120 + 1), v121, v122, oslog);
        v40 = v4;
        v41 = v30;
        v42 = "[View Evaluation] Current view %{public}@ is not entirely contained in parent view.";
      }

      _os_log_impl(&_mh_execute_header, v41, v40, v42, v8, 0xCu);
      sub_100153D2C(v1);
      sub_100005BB8(v1);
      sub_100005BB8(v8);
LABEL_35:

      v126 = v17;
      v4 = v17;

      v15 = v4;
    }
  }

  if (qword_1003AA098 != -1)
  {
    sub_100025B14(&qword_1003AA098);
  }

  v112 = type metadata accessor for Logger();
  sub_100008A14(v112, qword_1003B8A98);
  v113 = a1;
  osloga = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v114))
  {
    v115 = sub_100005384();
    v116 = swift_slowAlloc();
    *v115 = 138543362;
    *(v115 + 4) = v113;
    *v116 = v113;
    v117 = v113;
    _os_log_impl(&_mh_execute_header, osloga, v114, "[View Evaluation] Current view %{public}@ has no window.", v115, 0xCu);
    sub_100153D2C(v116);
    sub_100005BB8(v116);
    sub_100005BB8(v115);
  }

  sub_100008654();
}