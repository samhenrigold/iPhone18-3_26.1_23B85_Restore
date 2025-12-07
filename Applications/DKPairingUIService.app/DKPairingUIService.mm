void sub_100001B3C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v1[OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert])
  {
    v41 = OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert;
    (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_logger], v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Pushing uncertified alert to stack...", v8, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v9 = objc_opt_self();
    v10 = [v9 mainBundle];
    v48._object = 0x8000000100011D00;
    v11._countAndFlagsBits = 0xD00000000000002ELL;
    v11._object = 0x8000000100011CB0;
    v12._object = 0x8000000100011CE0;
    v48._countAndFlagsBits = 0xD000000000000029;
    v12._countAndFlagsBits = 0xD000000000000015;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v48);

    v13 = [v9 mainBundle];
    v49._object = 0x8000000100011DC0;
    v14._countAndFlagsBits = 0xD00000000000002CLL;
    v14._object = 0x8000000100011D30;
    v15._countAndFlagsBits = 0xD00000000000005DLL;
    v15._object = 0x8000000100011D60;
    v49._countAndFlagsBits = 0xD00000000000005CLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v49);

    v16 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();

    v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

    v19 = v41;
    v20 = *&v1[v41];
    *&v1[v41] = v18;
    v21 = v18;

    if (v21)
    {
      v22 = [v9 mainBundle];
      v50._object = 0x8000000100011E50;
      v23._countAndFlagsBits = 0x77796E4120646441;
      v24._countAndFlagsBits = 0xD000000000000020;
      v24._object = 0x8000000100011E20;
      v50._countAndFlagsBits = 0xD00000000000003ALL;
      v23._object = 0xEA00000000007961;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v22, v23, v50);

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v26 = String._bridgeToObjectiveC()();

      v46 = sub_100002A98;
      v47 = v25;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_100005480;
      v45 = &unk_1000187E0;
      v27 = _Block_copy(&aBlock);

      v28 = objc_opt_self();
      v29 = [v28 actionWithTitle:v26 style:1 handler:v27];
      _Block_release(v27);

      [v21 addAction:v29];
      v30 = *&v1[v19];
      if (v30)
      {
        v31 = v30;
        v32 = [v9 mainBundle];
        v51._object = 0x8000000100011ED0;
        v33._countAndFlagsBits = 0x6C65636E6143;
        v34._countAndFlagsBits = 0xD00000000000001DLL;
        v34._object = 0x8000000100011EB0;
        v51._countAndFlagsBits = 0xD000000000000038;
        v33._object = 0xE600000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v32, v33, v51);

        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v36 = String._bridgeToObjectiveC()();

        v46 = sub_100002AB8;
        v47 = v35;
        aBlock = _NSConcreteStackBlock;
        v43 = 1107296256;
        v44 = sub_100005480;
        v45 = &unk_100018808;
        v37 = _Block_copy(&aBlock);

        v38 = [v28 actionWithTitle:v36 style:0 handler:v37];
        _Block_release(v37);

        [v31 addAction:v38];
        v39 = *&v1[v19];
        if (v39)
        {
          [v1 presentViewController:v39 animated:1 completion:0];
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000021A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - v3 + 16;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_logger, v5);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Add Anyway pressed", v13, 2u);
    }

    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_100002B08(v14 + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_delegate, v27);

    if (v28)
    {
      v16 = sub_100002BE0(v27, v28);
      v17 = *v16;
      v18 = *(*v16 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
      if (!v18)
      {
        __break(1u);
        return;
      }

      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
      type metadata accessor for MainActor();
      v20 = v18;
      v21 = v17;
      v22 = static MainActor.shared.getter();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = &protocol witness table for MainActor;
      v23[4] = v21;
      v23[5] = v20;
      sub_100003F8C(0, 0, v4, &unk_100010EA0, v23);

      sub_100002C7C(v27);
    }

    else
    {
      sub_100002B78(v27);
    }
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    [v24 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000024EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v2 - 8);
  v4 = v31 - v3 + 16;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_logger, v5);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Cancel pressed", v13, 2u);
    }

    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_100002B08(v14 + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_delegate, v31);

    if (v32)
    {
      v16 = sub_100002BE0(v31, v32);
      v17 = *v16;
      v18 = *(*v16 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
      if (!v18)
      {
        __break(1u);
        return;
      }

      v19 = objc_allocWithZone(type metadata accessor for DockKitCorePairingService());
      v20 = v18;
      v21 = [v19 init];
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
      type metadata accessor for MainActor();
      v23 = v20;
      v24 = v17;
      v25 = v21;
      v26 = static MainActor.shared.getter();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = &protocol witness table for MainActor;
      v27[4] = v24;
      v27[5] = v25;
      v27[6] = v23;
      v27[7] = 0;
      sub_100003F8C(0, 0, v4, &unk_100010FB0, v27);

      sub_100002C7C(v31);
    }

    else
    {
      sub_100002B78(v31);
    }
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    [v28 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1000028A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKUncertifiedAlertView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DKUncertifiedAlertView(uint64_t a1)
{
  result = qword_10001D780;
  if (!qword_10001D780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000029BC(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100002A60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002AC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AC0(&unk_10001D7F0, &unk_100010E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002B78(uint64_t a1)
{
  v2 = sub_100002AC0(&unk_10001D7F0, &unk_100010E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100002BE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002C24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100002C7C(void *a1)
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

uint64_t sub_100002CC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002DD0;

  return sub_10000592C(a1, v4, v5, v7, v6);
}

uint64_t sub_100002DD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002ECC()
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
    sub_100002AC0(&qword_10001D8E8, &unk_100010F90);
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
    sub_100009DC8(v5, &qword_10001D8E0, &unk_100010F80);
    return 0;
  }
}

void sub_10000314C(char a1, char *a2, void (*a3)(void))
{
  v6 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  if (a1)
  {
    v19 = *&a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context];
    if (v19)
    {
      v20 = v19;
      sub_100004820(v20);

      LOBYTE(v20) = sub_10000BAF0();

      if (v20)
      {
        v21 = objc_allocWithZone(type metadata accessor for DKPairingAlertView(0));

        v23 = sub_10000CC80(v22);
        (*(v10 + 16))(v18, &a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger], v9);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "Showing alert...", v26, 2u);
        }

        (*(v10 + 8))(v18, v9);
        v27 = *&a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard];
        if (v27)
        {
          v28 = [v27 navigationController];
          if (v28)
          {
            v29 = v28;
            [v28 presentViewController:v23 animated:1 completion:0];
          }
        }
      }

      else
      {
        (*(v10 + 16))(v16, &a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger], v9);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Bluetooth and Wi-Fi already enabled, continuing with pairing setup.", v48, 2u);
        }

        (*(v10 + 8))(v16, v9);
      }

      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  (*(v10 + 16))(v13, &a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger], v9);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Unable to proceed with prox card!", v32, 2u);
  }

  (*(v10 + 8))(v13, v9);
  v33 = *&a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context];
  if (!v33)
  {
    goto LABEL_23;
  }

  v34 = objc_allocWithZone(type metadata accessor for DockKitCorePairingService());
  v35 = v33;
  v36 = [v34 init];
  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
  type metadata accessor for MainActor();
  v38 = v35;
  v39 = a2;
  v40 = v36;
  v41 = static MainActor.shared.getter();
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = &protocol witness table for MainActor;
  v42[4] = v39;
  v42[5] = v40;
  v42[6] = v38;
  v42[7] = 0;
  sub_100003F8C(0, 0, v8, &unk_100010FB0, v42);

  if (a3)
  {
    a3();
  }

  v43 = sub_100002ECC();
  if (v43)
  {
    [v43 dismiss];
    swift_unknownObjectRelease();
  }

  v44 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient;
  [*&v39[OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient] invalidate];
  v45 = *&v39[v44];
  *&v39[v44] = 0;
}

uint64_t sub_1000036E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100003800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = type metadata accessor for Logger();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[27] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[28] = v10;
  v7[29] = v9;

  return _swift_task_switch(sub_100003904, v10, v9);
}

id sub_100003904()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger;
  *(v0 + 240) = OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger;
  v6 = *(v3 + 16);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Canceling current pairing session...", v9, 2u);
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);

  v14 = *(v12 + 8);
  *(v0 + 264) = v14;
  v14(v10, v11);
  result = [v13 userInfo];
  if (!result)
  {
    goto LABEL_10;
  }

  v16 = result;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 120) = 0x6E656B6F74;
  *(v0 + 128) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = sub_1000081EC(v0 + 16), (v19 & 1) == 0))
  {

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1000094BC(*(v17 + 56) + 32 * v18, v0 + 88);
  sub_100009468(v0 + 16);

  sub_100009840((v0 + 88), (v0 + 56));
  swift_dynamicCast();
  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  *(v0 + 272) = v20;
  v24 = (&async function pointer to dispatch thunk of DockKitCorePairingService.cancelPairAccessory(info:delegate:) + async function pointer to dispatch thunk of DockKitCorePairingService.cancelPairAccessory(info:delegate:));
  v22 = swift_task_alloc();
  *(v0 + 280) = v22;
  *v22 = v0;
  v22[1] = sub_100003B7C;
  v23 = *(v0 + 152);

  return v24(v21, v20, v23);
}

uint64_t sub_100003B7C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100003D54;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100003C98;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100003C98()
{

  v1 = *(v0 + 152);
  dispatch thunk of DockKitCorePairingService.disconnect()();
  v2 = *(v1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v4 = *(*(v0 + 152) + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  if (v4)
  {
    v5 = v4;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100003D54()
{
  v1 = v0[31];
  v2 = v0[30];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[19];

  v1(v3, v5 + v2, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed pairing attempt: %@", v8, 0xCu);
    sub_100009DC8(v9, &qword_10001D8D8, &qword_100010F68);
  }

  v11 = v0[33];
  v12 = v0[25];
  v14 = v0[22];
  v13 = v0[23];

  v11(v12, v13);
  if (v14)
  {
    v15 = v0[22];
    swift_errorRetain();
    sub_100009850(v15);
  }

  v16 = v0[19];
  dispatch thunk of DockKitCorePairingService.disconnect()();
  v17 = *(v16 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  if (v17)
  {
    v18 = v17;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v19 = *(v0[19] + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  if (v19)
  {
    v20 = v19;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100003F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100009628(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009DC8(v11, &qword_10001D8D0, &qword_100011140);
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

      sub_100009DC8(a3, &qword_10001D8D0, &qword_100011140);

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

  sub_100009DC8(a3, &qword_10001D8D0, &qword_100011140);
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

uint64_t sub_10000427C()
{
  result = *(v0 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
  if (result)
  {
    result = [result userInfo];
    if (result)
    {
      v2 = result;
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = objc_opt_self();
      v5 = [v4 mainBundle];
      v34._object = 0x8000000100012810;
      v6._countAndFlagsBits = 0xD000000000000023;
      v6._object = 0x80000001000127C0;
      v7._object = 0x80000001000127F0;
      v34._countAndFlagsBits = 0xD000000000000056;
      v7._countAndFlagsBits = 0xD000000000000011;
      v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v34);
      object = v8._object;

      v10 = [v4 mainBundle];
      v35._object = 0x80000001000128A0;
      v11._countAndFlagsBits = 0xD000000000000027;
      v11._object = 0x8000000100012870;
      v12._countAndFlagsBits = 0xD000000000000015;
      v12._object = 0x8000000100011CE0;
      v35._countAndFlagsBits = 0xD000000000000071;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v35)._countAndFlagsBits;

      v13 = [v4 mainBundle];
      v36._object = 0x8000000100012950;
      v14._object = 0xED00006B636F4420;
      v15._countAndFlagsBits = 0xD000000000000029;
      v15._object = 0x8000000100012920;
      v36._countAndFlagsBits = 0xD000000000000039;
      v14._countAndFlagsBits = 0x676E696B63617254;
      v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v13, v14, v36)._countAndFlagsBits;

      v16 = [v4 mainBundle];
      v37._object = 0x80000001000129E0;
      v17._countAndFlagsBits = 0xD00000000000002BLL;
      v17._object = 0x8000000100012990;
      v18._countAndFlagsBits = 0xD000000000000019;
      v18._object = 0x80000001000129C0;
      v37._countAndFlagsBits = 0xD000000000000054;
      v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v37)._countAndFlagsBits;

      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v20 = sub_1000081EC(v32), (v21 & 1) != 0))
      {
        sub_1000094BC(*(v3 + 56) + 32 * v20, v33);
        sub_100009468(v32);
        v22 = v8._countAndFlagsBits;
        if (swift_dynamicCast())
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v29 = v28 ^ 1;
        }

        else
        {
          v29 = 1;
        }
      }

      else
      {
        sub_100009468(v32);
        v29 = 1;
        v22 = v8._countAndFlagsBits;
      }

      v33[0] = 1701869940;
      v33[1] = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v23 = sub_1000081EC(v32), (v24 & 1) != 0))
      {
        sub_1000094BC(*(v3 + 56) + 32 * v23, v33);
        sub_100009468(v32);
        if (swift_dynamicCast())
        {
          v22 = 0x6569666974726563;

          object = 0xE900000000000064;
        }
      }

      else
      {
        sub_100009468(v32);
      }

      if (v22 == 0x676E696B63617254 && object == 0xED0000646E617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (v29)
        {
          v25 = v31;
        }

        else
        {
          v25 = v19;
        }
      }

      else
      {

        if (v29)
        {
          v25 = v22;
        }

        else
        {
          v25 = countAndFlagsBits;
        }
      }

      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v26 = sub_1000081EC(v32), (v27 & 1) != 0))
      {
        sub_1000094BC(*(v3 + 56) + 32 * v26, v33);
        sub_100009468(v32);

        if (swift_dynamicCast())
        {

          return 1701667182;
        }
      }

      else
      {

        sub_100009468(v32);
      }

      return v25;
    }
  }

  return result;
}

void sub_100004820(void *a1)
{
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_1000081EC(v10), (v7 & 1) == 0))
  {

    sub_100009468(v10);
LABEL_9:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_10;
  }

  sub_1000094BC(*(v5 + 56) + 32 * v6, &v11);
  sub_100009468(v10);

  if (!*(&v12 + 1))
  {
LABEL_10:
    sub_100009DC8(&v11, &qword_10001D8E0, &unk_100010F80);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) != 0 && v10[0] == 1)
  {
    v8 = sub_100008D80();
    v9 = [v1 presentProxCardFlowWithDelegate:v1 initialViewController:v8];

    return;
  }

LABEL_11:
  sub_1000049B8(a1);
}

void sub_1000049B8(void *a1)
{
  v3 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v6 setDismissalType:1];
  v7 = v6;
  sub_10000427C();
  v8 = String._bridgeToObjectiveC()();

  [v7 setTitle:v8];

  v9 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
  v10 = *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService];
  *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService] = v9;

  v11 = *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard];
  *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard] = v7;
  v12 = v7;

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = v12;
  v15 = v1;
  v16 = a1;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v15;
  v18[5] = v16;
  v18[6] = v14;
  sub_100003F8C(0, 0, v5, &unk_100010F78, v18);

  sub_100008B54();
  if (v19)
  {
    v20 = v19;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100010EC0;
    *(v21 + 32) = v20;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v22 = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setImages:isa];
  }

  v24 = [v15 presentProxCardFlowWithDelegate:v15 initialViewController:v14];
}

uint64_t sub_100004C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = type metadata accessor for Logger();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[26] = v9;
  v6[27] = v8;

  return _swift_task_switch(sub_100004D6C, v9, v8);
}

id sub_100004D6C()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = *(v0 + 160);
    v1;
    result = [v2 userInfo];
    if (result)
    {
      v4 = result;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 120) = 0x6E656B6F74;
      *(v0 + 128) = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16))
      {
        v6 = sub_1000081EC(v0 + 16);
        if (v7)
        {
          sub_1000094BC(*(v5 + 56) + 32 * v6, v0 + 88);
          sub_100009468(v0 + 16);

          sub_100009840((v0 + 88), (v0 + 56));
          swift_dynamicCast();
          v8 = *(v0 + 136);
          v9 = *(v0 + 144);
          *(v0 + 232) = v9;
          v18 = (&async function pointer to dispatch thunk of DockKitCorePairingService.registerCard(info:delegate:) + async function pointer to dispatch thunk of DockKitCorePairingService.registerCard(info:delegate:));
          v10 = swift_task_alloc();
          *(v0 + 240) = v10;
          *v10 = v0;
          v10[1] = sub_100005048;
          v11 = *(v0 + 152);

          return v18(v8, v9, v11);
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v12 = *(v0 + 168);
  v13 = [objc_opt_self() mainBundle];
  v20._object = 0x8000000100012750;
  v14._object = 0x8000000100012710;
  v15._object = 0x8000000100012730;
  v20._countAndFlagsBits = 0xD000000000000066;
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  v15._countAndFlagsBits = 0x100000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v20);

  v16 = String._bridgeToObjectiveC()();

  [v12 setBodyText:v16];

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100005048()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = v2[28];

    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_1000052B0;
  }

  else
  {
    v7 = v2[28];

    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_100005174;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100005174()
{

  v1 = *(v0 + 168);
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x8000000100012750;
  v3._object = 0x8000000100012710;
  v4._object = 0x8000000100012730;
  v9._countAndFlagsBits = 0xD000000000000066;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v4._countAndFlagsBits = 0x100000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  v5 = String._bridgeToObjectiveC()();

  [v1 setBodyText:v5];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000052B0()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[19];

  (*(v3 + 16))(v1, v4 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed pairing attempt: %@", v7, 0xCu);
    sub_100009DC8(v8, &qword_10001D8D8, &qword_100010F68);
  }

  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[21];
  v12 = v0[22];

  (*(v11 + 8))(v10, v12);
  swift_errorRetain();
  sub_100009850(v13);

  v14 = v0[1];

  return v14();
}

void sub_100005480(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000054E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  return dispatch thunk of DockKitCorePairingService.saveSecureTrackingUserPreference(enabled:)();
}

void sub_100005564(void *a1)
{
  v3 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v3 setDismissalType:1];
  v4 = v3;
  sub_10000427C();
  v5 = String._bridgeToObjectiveC()();

  [v4 setTitle:v5];

  sub_100008B54();
  if (v6)
  {
    v7 = v6;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100010EC0;
    *(v8 + 32) = v7;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v9 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setImages:isa];
  }

  v11 = [objc_opt_self() mainBundle];
  v23._object = 0x80000001000126B0;
  v12._countAndFlagsBits = 0x7463656E6E6F43;
  v13._object = 0x8000000100012690;
  v23._countAndFlagsBits = 0xD00000000000005ELL;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v12._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v11, v12, v23);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v14;
  v16 = v1;

  v17 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100009CA8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005480;
  aBlock[3] = &unk_100018A50;
  v18 = _Block_copy(aBlock);
  v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];

  _Block_release(v18);

  if (a1)
  {
    v20 = [a1 navigationController];
    if (v20)
    {
      v21 = v20;
      [v20 pushViewController:v4 animated:1];
    }
  }
}

void sub_1000058AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
  if (v3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v3;
    sub_100005FC8(v5, Strong);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = type metadata accessor for Logger();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[25] = v8;
  v5[26] = v7;

  return _swift_task_switch(sub_100005A20, v8, v7);
}

id sub_100005A20()
{
  v1 = *(v0 + 152);
  v2 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
  *(v0 + 216) = v2;
  v3 = *(v1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  *(v1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService) = v2;
  v4 = v2;

  if (v4)
  {
    result = [*(v0 + 160) userInfo];
    if (result)
    {
      v6 = result;
      v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 120) = 0x6E656B6F74;
      *(v0 + 128) = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v7 + 16))
      {
        v8 = sub_1000081EC(v0 + 16);
        if (v9)
        {
          sub_1000094BC(*(v7 + 56) + 32 * v8, v0 + 88);
          sub_100009468(v0 + 16);

          sub_100009840((v0 + 88), (v0 + 56));
          swift_dynamicCast();
          v10 = *(v0 + 136);
          v11 = *(v0 + 144);
          *(v0 + 224) = v11;
          v15 = (&async function pointer to dispatch thunk of DockKitCorePairingService.pairAccessory(info:delegate:) + async function pointer to dispatch thunk of DockKitCorePairingService.pairAccessory(info:delegate:));
          v12 = swift_task_alloc();
          *(v0 + 232) = v12;
          *v12 = v0;
          v12[1] = sub_100005C50;
          v13 = *(v0 + 152);

          return v15(v10, v11, v13);
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100005C50()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);

    v4 = *(v2 + 200);
    v5 = *(v2 + 208);
    v6 = sub_100005DE8;
  }

  else
  {

    v4 = *(v2 + 200);
    v5 = *(v2 + 208);
    v6 = sub_100005D80;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100005D80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005DE8()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];

  (*(v3 + 16))(v1, v4 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed pairing attempt: %@", v7, 0xCu);
    sub_100009DC8(v8, &qword_10001D8D8, &qword_100010F68);
  }

  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  v13 = v0[19];

  (*(v11 + 8))(v10, v12);
  v14 = *(v13 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
  swift_errorRetain();
  v15 = v14;
  sub_100009850(v14);

  v16 = v0[1];

  return v16();
}

void sub_100005FC8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v13 setDismissalType:1];
  v14 = v13;
  sub_10000427C();
  v15 = String._bridgeToObjectiveC()();

  [v14 setTitle:v15];

  v16 = [objc_opt_self() mainBundle];
  v65._object = 0x8000000100012580;
  v17._countAndFlagsBits = 0x697463656E6E6F43;
  v17._object = 0xAD0000A680E2676ELL;
  v18._object = 0x8000000100012560;
  v65._countAndFlagsBits = 0xD000000000000048;
  v18._countAndFlagsBits = 0xD00000000000001CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v16, v17, v65);

  v19 = String._bridgeToObjectiveC()();

  [v14 setBodyText:v19];

  v20 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard;
  v21 = *&v3[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard];
  *&v3[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard] = v14;
  v22 = v14;

  sub_100008B54();
  if (v23)
  {
    v24 = v23;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100010EC0;
    *(v25 + 32) = v24;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v26 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 setImages:isa];
  }

  if (a2)
  {
    v28 = [a2 navigationController];
    if (v28)
    {
      v29 = v28;
      [v28 pushViewController:v22 animated:1];
    }
  }

  v30 = [a1 userInfo];
  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = v30;
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = 0x6569666974726563;
  v60 = 0xE900000000000064;
  AnyHashable.init<A>(_:)();
  if (!*(v32 + 16) || (v33 = sub_1000081EC(v61), (v34 & 1) == 0))
  {

    sub_100009468(v61);
    goto LABEL_14;
  }

  sub_1000094BC(*(v32 + 56) + 32 * v33, v64);
  sub_100009468(v61);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    type metadata accessor for MainActor();
    v36 = v3;
    v37 = a1;
    v38 = static MainActor.shared.getter();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = &protocol witness table for MainActor;
    v39[4] = v36;
    v39[5] = v37;
    sub_100003F8C(0, 0, v8, &unk_100010EA0, v39);

    goto LABEL_15;
  }

  if (v59 != 28494 || v60 != 0xE200000000000000)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_17:
  v62 = type metadata accessor for ViewController(0);
  v63 = &off_100018880;
  v61[0] = v3;
  v41 = objc_allocWithZone(type metadata accessor for DKUncertifiedAlertView(0));
  v42 = sub_100009518(v61, v62);
  __chkstk_darwin(v42);
  v44 = (&v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;
  v47 = v3;
  v48 = sub_1000088F8(v46, v41);
  sub_100002C7C(v61);
  v49 = v57;
  (*(v58 + 16))(v12, &v47[OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger], v57);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Showing alert...", v52, 2u);
  }

  (*(v58 + 8))(v12, v49);
  v53 = *&v3[v20];
  if (v53)
  {
    v54 = [v53 navigationController];
    if (v54)
    {
      v55 = v54;
      [v54 presentViewController:v48 animated:1 completion:0];
    }
  }

  v22 = v48;
LABEL_15:
}

void sub_1000066D4(void *a1)
{
  v2 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v2 setDismissalType:0];
  v15 = v2;
  sub_10000427C();
  v3 = String._bridgeToObjectiveC()();

  [v15 setTitle:v3];

  v4 = [objc_opt_self() mainBundle];
  v17._object = 0x80000001000124F0;
  v5._object = 0x8000000100012480;
  v6._countAndFlagsBits = 0xD000000000000046;
  v6._object = 0x80000001000124A0;
  v17._countAndFlagsBits = 0xD000000000000061;
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v17);

  v7 = String._bridgeToObjectiveC()();

  [v15 setBodyText:v7];

  sub_100008B54();
  if (v8)
  {
    v9 = v8;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100010EC0;
    *(v10 + 32) = v9;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v11 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setImages:isa];
  }

  if (a1)
  {
    v13 = [a1 navigationController];
    if (v13)
    {
      v14 = v13;
      [v13 pushViewController:v15 animated:1];
    }
  }
}

void sub_10000691C(void *a1, char a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
    if (v4)
    {
      v5 = v4;
      dispatch thunk of DockKitCorePairingService.disconnect()();
    }

    v6 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
    if (v6)
    {
      v7 = v6;
      dispatch thunk of DockKitCorePairingService.disconnect()();
    }

    v8 = sub_100008D80();
    if (a1)
    {
      v11 = v8;
      v9 = [a1 navigationController];
      if (v9)
      {
        v10 = v9;
        [v9 pushViewController:v11 animated:1];
      }
    }

    else
    {

      _objc_release_x1(v8, v8);
    }
  }

  else
  {

    sub_100006A40(a1);
  }
}

void sub_100006A40(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v4 setDismissalType:1];
  v5 = v4;
  sub_10000427C();
  v6 = String._bridgeToObjectiveC()();

  [v5 setTitle:v6];

  sub_100008B54();
  if (v7)
  {
    v8 = v7;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100010EC0;
    *(v9 + 32) = v8;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v10 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setImages:isa];
  }

  v12 = [objc_opt_self() mainBundle];
  v26._object = 0x80000001000120A0;
  v13._object = 0x8000000100012080;
  v26._countAndFlagsBits = 0xD00000000000004ELL;
  v13._countAndFlagsBits = 0xD000000000000016;
  v14._countAndFlagsBits = 1701736260;
  v14._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v26);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100008D4C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005480;
  aBlock[3] = &unk_1000188C0;
  v17 = _Block_copy(aBlock);
  v18 = [objc_opt_self() actionWithTitle:v16 style:0 handler:v17];

  _Block_release(v17);

  v19 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  if (v19)
  {
    v20 = v19;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v21 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  if (v21)
  {
    v22 = v21;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  if (a1)
  {
    v23 = [a1 navigationController];
    if (v23)
    {
      v24 = v23;
      [v23 pushViewController:v5 animated:1];
    }
  }
}

void sub_100006DA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100006E08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v108 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v107 = &v99 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v99 - v15;
  v17 = __chkstk_darwin(v14);
  v106 = &v99 - v18;
  __chkstk_darwin(v17);
  v105 = &v99 - v19;
  v111 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_context;
  v20 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
  if (!v20 || (v21 = [v20 userInfo]) == 0)
  {
LABEL_33:
    if (v108 > 2)
    {
      if (v108 <= 4)
      {
        if (v108 == 3)
        {
          v87 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
          v88 = v87;
          sub_1000066D4(v87);

          (*(v8 + 16))(v11, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "Moved from Pairing -> One-time setup", v91, 2u);
          }

          (*(v8 + 8))(v11, v7);
        }

        else
        {
          v60 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
          v61 = v60;
          sub_100006A40(v60);
        }

        return;
      }

      if (v108 == 5)
      {
        v92 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
        v93 = v92;
        sub_10000691C(v92, 1);

        return;
      }

      if (v108 == 6)
      {
        (*(v8 + 16))(v16, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
        v67 = a4;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v72 = a4;
          v73 = v71;
          v116[0] = v71;
          *v70 = 136315138;
          if (v72)
          {
            v74 = [v67 localizedDescription];
            v104 = v16;
            v75 = a1;
            v76 = v74;
            v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v79 = v78;

            a1 = v75;
            v16 = v104;
          }

          else
          {
            v77 = 0x206E776F6E6B6E55;
            v79 = 0xED0000726F727245;
          }

          v96 = sub_10000C470(v77, v79, v116);

          *(v70 + 4) = v96;
          _os_log_impl(&_mh_execute_header, v68, v69, "Pairing Failed: %s", v70, 0xCu);
          sub_100002C7C(v73);
        }

        (*(v8 + 8))(v16, v7);
        v97 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
        v98 = v97;
        sub_100009850(v97);

        return;
      }

      goto LABEL_49;
    }

    if (v108)
    {
      if (v108 == 1)
      {
        v94 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
        v95 = v94;
        sub_100005564(v94);

        v62 = v106;
        (*(v8 + 16))(v106, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          v66 = "Validating accessory";
          goto LABEL_57;
        }
      }

      else
      {
        if (v108 != 2)
        {
LABEL_49:
          v80 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
          if (v80)
          {
            v81 = objc_opt_self();
            v82 = v80;
            v83 = [v81 mainBundle];
            v117._object = 0x8000000100012A60;
            v84._countAndFlagsBits = 0x206E776F6E6B6E55;
            v84._object = 0xED0000726F727245;
            v85._object = 0x8000000100012A40;
            v117._countAndFlagsBits = 0xD000000000000046;
            v85._countAndFlagsBits = 0xD00000000000001FLL;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v83, v84, v117);

            v86 = String._bridgeToObjectiveC()();

            [v82 setBodyText:v86];
          }

          return;
        }

        v62 = v107;
        (*(v8 + 16))(v107, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          v66 = "Ignoring in progress state";
LABEL_57:
          _os_log_impl(&_mh_execute_header, v63, v64, v66, v65, 2u);
        }
      }
    }

    else
    {
      v62 = v105;
      (*(v8 + 16))(v105, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = "Ignoring started state";
        goto LABEL_57;
      }
    }

    (*(v8 + 8))(v62, v7);
    return;
  }

  v100 = v11;
  v101 = a4;
  v104 = v16;
  v102 = v7;
  v103 = v8;

  v22 = a2 + 64;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  v109 = a1;
  v110 = a2;
  if (v25)
  {
    while (1)
    {
LABEL_10:
      v29 = *(a1 + v111);
      if (!v29)
      {
        goto LABEL_67;
      }

      v30 = (v27 << 10) | (16 * __clz(__rbit64(v25)));
      v31 = (*(a2 + 48) + v30);
      v32 = (*(a2 + 56) + v30);
      v33 = *v32;
      v34 = v32[1];
      v35 = v31[1];
      *&v114 = *v31;
      *(&v114 + 1) = v35;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v36 = v29;
      AnyHashable.init<A>(_:)();
      v115 = &type metadata for String;
      *&v114 = v33;
      *(&v114 + 1) = v34;

      v37 = [v36 userInfo];
      if (!v37)
      {
        goto LABEL_66;
      }

      v38 = v37;
      v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      if (v115)
      {
        break;
      }

      sub_100009DC8(&v114, &qword_10001D8E0, &unk_100010F80);
      v49 = sub_1000081EC(v116);
      if (v50)
      {
        v51 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v39;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100008754();
          v39 = v112;
        }

        sub_100009468(v39[6] + 40 * v51);
        sub_100009840((v39[7] + 32 * v51), v113);
        sub_1000085B0(v51, v39);
        sub_100009468(v116);
        sub_100009DC8(v113, &qword_10001D8E0, &unk_100010F80);
        goto LABEL_29;
      }

      sub_100009468(v116);
      memset(v113, 0, sizeof(v113));
      sub_100009DC8(v113, &qword_10001D8E0, &unk_100010F80);
      if (v39)
      {
        goto LABEL_29;
      }

      isa = 0;
LABEL_30:
      a1 = v109;
      v25 &= v25 - 1;
      [v36 setUserInfo:isa];

      a2 = v110;
      if (!v25)
      {
        goto LABEL_6;
      }
    }

    sub_100009840(&v114, v113);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v39;
    v41 = sub_1000081EC(v116);
    v43 = v39[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_64;
    }

    v47 = v42;
    if (v39[3] >= v46)
    {
      if ((v40 & 1) == 0)
      {
        v56 = v41;
        sub_100008754();
        v41 = v56;
        v53 = v112;
        if (v47)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1000082F8(v46, v40);
      v41 = sub_1000081EC(v116);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_68;
      }
    }

    v53 = v112;
    if (v47)
    {
LABEL_23:
      v54 = (v53[7] + 32 * v41);
      sub_100002C7C(v54);
      sub_100009840(v113, v54);
      sub_100009468(v116);
LABEL_29:
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_30;
    }

LABEL_27:
    v53[(v41 >> 6) + 8] |= 1 << v41;
    v57 = v41;
    sub_1000095CC(v116, v53[6] + 40 * v41);
    sub_100009840(v113, (v53[7] + 32 * v57));
    sub_100009468(v116);
    v58 = v53[2];
    v45 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v45)
    {
      goto LABEL_65;
    }

    v53[2] = v59;
    goto LABEL_29;
  }

LABEL_6:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      v8 = v103;
      v7 = v102;
      v16 = v104;
      a4 = v101;
      v11 = v100;
      goto LABEL_33;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100007A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context] = 0;
  *&v3[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard] = 0;
  v7 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_controller;
  sub_100009E28(0, &qword_10001D8F0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  type metadata accessor for DKPairingRadioController();
  swift_allocObject();
  *&v4[v7] = sub_10000A6BC(v8);
  *&v4[OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient] = 0;
  *&v4[OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService] = 0;
  *&v4[OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService] = 0;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for ViewController(0);
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100007BD8(void *a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context] = 0;
  *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard] = 0;
  v4 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_controller;
  sub_100009E28(0, &qword_10001D8F0, OS_dispatch_queue_ptr);
  v5 = static OS_dispatch_queue.main.getter();
  type metadata accessor for DKPairingRadioController();
  swift_allocObject();
  *&v2[v4] = sub_10000A6BC(v5);
  *&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient] = 0;
  *&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService] = 0;
  *&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ViewController(0);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100007D40(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ViewController(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ViewController(uint64_t a1)
{
  result = qword_10001D848;
  if (!qword_10001D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007E98(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_100007F48()
{
  v1 = sub_100002ECC();
  if (v1)
  {
    [v1 deactivate];
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient;
  [*(v0 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient) invalidate];
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;
}

uint64_t sub_100007FFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000080F4;

  return v6(a1);
}

uint64_t sub_1000080F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000081EC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100008230(a1, v4);
}

unint64_t sub_100008230(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000095CC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100009468(v8);
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

Swift::Int sub_1000082F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002AC0(&unk_10001D910, &qword_100010FA0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100009840((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000095CC(v23, &v36);
        sub_1000094BC(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100009840(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000085B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_1000095CC(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_100009468(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100008754()
{
  v1 = v0;
  sub_100002AC0(&unk_10001D910, &qword_100010FA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_1000095CC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000094BC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100009840(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1000088F8(uint64_t a1, char *a2)
{
  v7[3] = type metadata accessor for ViewController(0);
  v7[4] = &off_100018880;
  v7[0] = a1;
  Logger.init(subsystem:category:)();
  *&a2[OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert] = 0;
  sub_100009568(v7, &a2[OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_delegate]);
  v6.receiver = a2;
  v6.super_class = type metadata accessor for DKUncertifiedAlertView(0);
  v4 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  sub_100002C7C(v7);
  return v4;
}

void sub_1000089E0(void (*a1)(void), uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context])
  {
    v5 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient;
    v6 = *&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient];
    if (v6)
    {
      [v6 invalidate];
      v7 = *&v2[v5];
      *&v2[v5] = 0;
    }

    v8 = [objc_allocWithZone(SFClient) init];
    v9 = *&v2[v5];
    *&v2[v5] = v8;
    v10 = v8;

    if (v10)
    {
      v11 = swift_allocObject();
      v11[2] = v2;
      v11[3] = a1;
      v11[4] = a2;
      v14[4] = sub_10000A31C;
      v14[5] = v11;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1000036E0;
      v14[3] = &unk_100018B40;
      v12 = _Block_copy(v14);
      v13 = v2;
      sub_10000A328(a1, a2);

      [v10 startProxCardTransactionWithOptions:14 completion:v12];
      _Block_release(v12);
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_100008B54()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:150.0];
  sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100010ED0;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 labelColor];
  *(v2 + 40) = [v3 systemGreenColor];
  sub_100009E28(0, &qword_10001D8C8, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v0 configurationWithPaletteColors:isa];

  v6 = v1;
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() _systemImageNamed:v7 withConfiguration:v6];

  if (v8)
  {
    [v8 imageByApplyingSymbolConfiguration:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100008D14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100008D80()
{
  v0 = [objc_allocWithZone(PRXIconContentViewController) init];
  v1 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
  v2 = v0;
  [v2 setDismissalType:3];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 mainBundle];
  v6._countAndFlagsBits = 0xD000000000000017;
  v7._countAndFlagsBits = 0xD000000000000021;
  v46._object = 0x8000000100012190;
  v7._object = 0x8000000100012140;
  v6._object = 0x8000000100012170;
  v46._countAndFlagsBits = 0xD000000000000043;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v5, v6, v46);

  v8 = String._bridgeToObjectiveC()();

  [v4 setTitle:v8];

  v9 = [v3 mainBundle];
  v10._countAndFlagsBits = 0xD000000000000026;
  v47._object = 0x80000001000122F0;
  v10._object = 0x80000001000121E0;
  v11._countAndFlagsBits = 0xD0000000000000D3;
  v11._object = 0x8000000100012210;
  v47._countAndFlagsBits = 0xD000000000000043;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v47);

  v12 = String._bridgeToObjectiveC()();

  [v4 setSubtitle:v12];

  sub_100008B54();
  if (v13)
  {
    v14 = v13;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100010EC0;
    *(v15 + 32) = v14;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v16 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setImages:isa];
  }

  v18 = [v3 mainBundle];
  v19._countAndFlagsBits = 0xD000000000000024;
  v48._object = 0x8000000100012370;
  v20._countAndFlagsBits = 0x6E4F206E727554;
  v19._object = 0x8000000100012340;
  v48._countAndFlagsBits = 0xD000000000000064;
  v20._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v48);

  v21 = [v3 mainBundle];
  v22._countAndFlagsBits = 0xD000000000000029;
  v49._object = 0x8000000100012410;
  v23._countAndFlagsBits = 0x776F4E20746F4ELL;
  v22._object = 0x80000001000123E0;
  v49._countAndFlagsBits = 0xD00000000000006BLL;
  v23._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v49);

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v1;
  v26 = v4;

  v27 = v1;
  v28 = String._bridgeToObjectiveC()();

  v44 = sub_1000093A0;
  v45 = v25;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100005480;
  v43 = &unk_100018910;
  v29 = _Block_copy(&aBlock);
  v30 = objc_opt_self();
  v31 = [v30 actionWithTitle:v28 style:0 handler:v29];

  _Block_release(v29);

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v27;
  v34 = v27;

  v35 = String._bridgeToObjectiveC()();

  v44 = sub_100009400;
  v45 = v33;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100005480;
  v43 = &unk_100018960;
  v36 = _Block_copy(&aBlock);
  v37 = [v30 actionWithTitle:v35 style:1 handler:v36];

  _Block_release(v36);

  v38 = [v26 addAction:v37];
  return v26;
}

uint64_t sub_1000093C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009420()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000094BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009518(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100009568(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009628(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009698()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000096D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A488;

  return sub_100007FFC(a1, v4);
}

uint64_t sub_100009788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002DD0;

  return sub_100007FFC(a1, v4);
}

_OWORD *sub_100009840(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100009850(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v4 setDismissalType:1];
  v5 = v4;
  sub_10000427C();
  v6 = String._bridgeToObjectiveC()();

  [v5 setTitle:v6];

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v31._object = 0x8000000100012650;
  v9._countAndFlagsBits = 0xD000000000000020;
  v9._object = 0x80000001000125D0;
  v10._countAndFlagsBits = 0xD000000000000046;
  v10._object = 0x8000000100012600;
  v31._countAndFlagsBits = 0xD00000000000003CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v31);

  v11 = String._bridgeToObjectiveC()();

  [v5 setBodyText:v11];

  sub_100008B54();
  if (v12)
  {
    v13 = v12;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100010EC0;
    *(v14 + 32) = v13;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v15 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setImages:isa];
  }

  v17 = [v7 mainBundle];
  v32._object = 0x80000001000120A0;
  v18._object = 0x8000000100012080;
  v32._countAndFlagsBits = 0xD00000000000004ELL;
  v18._countAndFlagsBits = 0xD000000000000016;
  v19._countAndFlagsBits = 1701736260;
  v19._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v32);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000A4A8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005480;
  aBlock[3] = &unk_100018A00;
  v22 = _Block_copy(aBlock);
  v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  v24 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  if (v24)
  {
    v25 = v24;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v26 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  if (v26)
  {
    v27 = v26;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  if (a1)
  {
    v28 = [a1 navigationController];
    if (v28)
    {
      v29 = v28;
      [v28 pushViewController:v5 animated:1];
    }
  }
}

uint64_t sub_100009C68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009CB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A488;

  return sub_100004C74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100009DC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002AC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009E28(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100009E70(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009E28(0, &qword_10001D8F0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a2;
  v14[4] = a1;
  v14[5] = a3;
  aBlock[4] = sub_10000A16C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000CC68;
  aBlock[3] = &unk_100018AC8;
  v15 = _Block_copy(aBlock);
  v16 = a3;
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000A178();
  sub_100002AC0(&qword_10001D900, &unk_1000110C0);
  sub_10000A1D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_10000A124()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000A178()
{
  result = qword_10001D8F8;
  if (!qword_10001D8F8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D8F8);
  }

  return result;
}

unint64_t sub_10000A1D0()
{
  result = qword_10001D908;
  if (!qword_10001D908)
  {
    sub_10000A234(&qword_10001D900, &unk_1000110C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D908);
  }

  return result;
}

uint64_t sub_10000A234(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A27C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A28C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A2D4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A328(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A338()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A390(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A488;

  return sub_100003800(a1, v4, v5, v6, v7, v9, v8);
}

Swift::Int sub_10000A4C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000A538(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000A57C()
{
  v0 = type metadata accessor for Logger();
  sub_10000CA1C(v0, qword_10001D980);
  sub_10000C438(v0, qword_10001D980);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000A600()
{
  result = *(v0 + 24);
  if (result)
  {
    if (!*(v0 + 32))
    {
      return 0;
    }

    if (![result powerOn])
    {
      goto LABEL_6;
    }

    result = *(v0 + 24);
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    if ([result userAutoJoinDisabled])
    {
LABEL_6:
      result = *(v0 + 32);
      if (result)
      {
        _CTServerConnectionGetCellularDataIsEnabled();
        return 0;
      }

      __break(1u);
      goto LABEL_12;
    }

    return 1;
  }

  return result;
}

uint64_t sub_10000A6BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v54 = &v51 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  if (qword_10001D750 != -1)
  {
    swift_once();
  }

  v15 = sub_10000C438(v4, qword_10001D980);
  v56 = *(v5 + 16);
  v57 = v15;
  v56(v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Trying to initialize CoreBluetooth", v18, 2u);
  }

  v55 = *(v5 + 8);
  v55(v14, v4);
  *(v2 + 48) = a1;
  v19 = objc_allocWithZone(CBController);
  v52 = a1;
  v20 = [v19 init];
  v21 = *(v2 + 16);
  *(v2 + 16) = v20;
  v22 = v20;

  if (!v22)
  {
    __break(1u);
    goto LABEL_22;
  }

  v60 = sub_10000CB40;
  v61 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_10000CC68;
  *(&v59 + 1) = &unk_100018C98;
  v23 = _Block_copy(&aBlock);

  [v22 setBluetoothStateChangedHandler:v23];
  _Block_release(v23);

  v24 = *(v2 + 16);
  if (!v24)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v60 = sub_10000CB48;
  v61 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_10000B49C;
  *(&v59 + 1) = &unk_100018CC0;
  v25 = _Block_copy(&aBlock);

  v26 = v24;

  [v26 activateWithCompletion:v25];
  _Block_release(v25);

  (v56)(v12, v57, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Trying to initialize CoreWiFi", v29, 2u);
  }

  v30 = v55;
  v55(v12, v4);
  v31 = [objc_allocWithZone(CWFInterface) init];
  v32 = *(v2 + 24);
  *(v2 + 24) = v31;
  v33 = v31;

  v34 = v54;
  if (!v33)
  {
    goto LABEL_23;
  }

  v60 = sub_10000CB50;
  v61 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_100005480;
  *(&v59 + 1) = &unk_100018CE8;
  v35 = _Block_copy(&aBlock);

  [v33 setEventHandler:v35];
  _Block_release(v35);

  v36 = *(v2 + 24);
  v37 = v53;
  if (!v36)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  [v36 activate];
  v38 = *(v2 + 24);
  if (!v38)
  {
    goto LABEL_25;
  }

  *&aBlock = 0;
  if ([v38 startMonitoringEventType:1 error:&aBlock])
  {
    v39 = aBlock;
  }

  else
  {
    v40 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  (v56)(v34, v57, v4);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Trying to initialize CoreTelephony", v43, 2u);
  }

  v30(v34, v4);
  v60 = 0;
  aBlock = 0u;
  v59 = 0u;
  v44 = String._bridgeToObjectiveC()();
  v45 = _CTServerConnectionCreateAndLaunchWithIdentifier();

  *(v2 + 32) = v45;
  (v56)(v37, v57, v4);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Radio controller initialized!", v48, 2u);

    v49 = v52;
  }

  else
  {
    v49 = v46;
    v46 = v52;
  }

  v30(v37, v4);
  return v2;
}

void *sub_10000AE34(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = type metadata accessor for DispatchQoS();
  v6 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(a1 + 16);
  if (result)
  {
    if ([result bluetoothState] == 5)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    *(a1 + 40) = v10;
    v11 = *(a1 + 48);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;
    aBlock[4] = sub_10000CC28;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000CC68;
    aBlock[3] = &unk_100018D88;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    static DispatchQoS.unspecified.getter();
    v16[1] = &_swiftEmptyArrayStorage;
    sub_10000A178();
    sub_100002AC0(&qword_10001D900, &unk_1000110C0);
    sub_10000A1D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v6 + 8))(v8, v16[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B10C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10000B150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  if (a1)
  {
    if (qword_10001D750 != -1)
    {
      swift_once();
    }

    v11 = sub_10000C438(v4, qword_10001D980);
    (*(v5 + 16))(v10, v11, v4);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_10000C470(v16, v17, &v26);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to activate Bluetooth controller: %s", v14, 0xCu);
      sub_100002C7C(v15);
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_10001D750 != -1)
    {
      swift_once();
    }

    v20 = sub_10000C438(v4, qword_10001D980);
    (*(v5 + 16))(v8, v20, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Bluetooth controller activated.", v23, 2u);
    }

    (*(v5 + 8))(v8, v4);
    result = *(a2 + 16);
    if (result)
    {
      result = [result bluetoothState];
      if (result == 5)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      *(a2 + 40) = v24;
    }
  }

  return result;
}

void sub_10000B49C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10000B508(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = type metadata accessor for DispatchQoS();
  v7 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000A600())
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *(a2 + 41) = v10;
  v11 = *(a2 + 48);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  aBlock[4] = sub_10000CB90;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000CC68;
  aBlock[3] = &unk_100018D38;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  static DispatchQoS.unspecified.getter();
  v17[1] = &_swiftEmptyArrayStorage;
  sub_10000A178();
  sub_100002AC0(&qword_10001D900, &unk_1000110C0);
  sub_10000A1D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v17[0]);
}

uint64_t sub_10000B7CC(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_10000CBB8(v6 + 56, v8);

    if (v9)
    {
      sub_100009568(v8, v7);
      sub_10000CAD8(v8);
      *(*sub_100002BE0(v7, v7[3]) + *a3) = a2;
      return sub_100002C7C(v7);
    }

    else
    {
      return sub_10000CAD8(v8);
    }
  }

  return result;
}

uint64_t sub_10000B89C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  if (v6)
  {
    [v6 invalidate];
  }

  v7 = *(v1 + 24);
  if (v7)
  {
    [v7 stopMonitoringEventType:1];
    v8 = *(v1 + 24);
    if (v8)
    {
      [v8 invalidate];
    }
  }

  *(v1 + 32) = 0;
  if (qword_10001D750 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C438(v2, qword_10001D980);
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Radio controller uninitialized!", v12, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_10000CAD8(v1 + 56);
  return v1;
}

uint64_t sub_10000BA98()
{
  sub_10000B89C();

  return _swift_deallocClassInstance(v0, 96, 7);
}

BOOL sub_10000BAF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if ([v1 bluetoothState] == 5)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    *(v0 + 40) = v2;
  }

  else
  {
    v2 = *(v0 + 40);
  }

  if (v2 == 2)
  {
    return 1;
  }

  if (!*(v0 + 24))
  {
    return *(v0 + 41) == 2;
  }

  v4 = sub_10000A600() == 0;
  result = v4;
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(v0 + 41) = v5;
  return result;
}

void sub_10000BB7C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10001D750 != -1)
  {
    swift_once();
  }

  v8 = sub_10000C438(v4, qword_10001D980);
  (*(v5 + 16))(v7, v8, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = a1;
    if (a1)
    {
      v15 = 0x64656C62616E45;
    }

    else
    {
      v15 = 0x64656C6261736944;
    }

    if (a1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    v17 = sub_10000C470(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting Bluetooth status to: %s", v12, 0xCu);
    sub_100002C7C(v13);

    v2 = v24;
  }

  else
  {
    v14 = a1;
  }

  (*(v5 + 8))(v7, v4);
  v18 = *(v2 + 16);
  if (v18)
  {
    if (v14)
    {
      v19 = 5;
    }

    else
    {
      v19 = 4;
    }

    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10000CAB8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000B49C;
    aBlock[3] = &unk_100018C70;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    [v22 setPowerState:v19 completion:v21];
    _Block_release(v21);
  }
}

uint64_t sub_10000BE90(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_10000BEF0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 3))
  {
    if (qword_10001D750 != -1)
    {
      swift_once();
    }

    v9 = sub_10000C438(v4, qword_10001D980);
    (*(v5 + 16))(v8, v9, v4);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      if (a1)
      {
        v14 = 0x64656C62616E45;
      }

      else
      {
        v14 = 0x64656C6261736944;
      }

      v23 = v2;
      v15 = a1;
      if (a1)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xE800000000000000;
      }

      v17 = sub_10000C470(v14, v16, &v24);
      a1 = v15;
      v2 = v23;

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Setting Wi-Fi status to: %s", v12, 0xCu);
      sub_100002C7C(v13);
    }

    (*(v5 + 8))(v8, v4);
    v18 = *(v2 + 3);
    if (v18)
    {
      if ([v18 userAutoJoinDisabled] && (a1 & 1) != 0)
      {
        v19 = *(v2 + 3);
        if (!v19)
        {
LABEL_29:
          __break(1u);
          return _objc_retain_x1();
        }

        v24 = 0;
        if (![v19 setUserAutoJoinDisabled:0 error:&v24])
        {
          v22 = v24;
LABEL_25:
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v20 = v24;
      }

      v21 = *(v2 + 3);
      if (v21)
      {
        v24 = 0;
        if ([v21 setPower:a1 & 1 error:&v24])
        {
          *(v2 + 41) = 1;

          return _objc_retain_x1();
        }

        v23 = v24;
        v22 = v24;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000C3E4()
{
  result = qword_10001DB48;
  if (!qword_10001DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB48);
  }

  return result;
}

uint64_t sub_10000C438(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000C470(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C53C(v11, 0, 0, 1, a1, a2);
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
    sub_1000094BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002C7C(v11);
  return v7;
}

unint64_t sub_10000C53C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000C648(a5, a6);
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

char *sub_10000C648(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C694(a1, a2);
  sub_10000C7C4(&off_100018790);
  return v3;
}

char *sub_10000C694(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000C8B0(v5, 0);
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
        v7 = sub_10000C8B0(v10, 0);
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

uint64_t sub_10000C7C4(uint64_t result)
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

  result = sub_10000C924(result, v11, 1, v3);
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

void *sub_10000C8B0(uint64_t a1, uint64_t a2)
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

  sub_100002AC0(&qword_10001DB50, &qword_1000110B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000C924(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002AC0(&qword_10001DB50, &qword_1000110B0);
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

uint64_t *sub_10000CA1C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000CA80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CAC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CAD8(uint64_t a1)
{
  v2 = sub_100002AC0(&qword_10001DB58, &qword_1000110B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CB58()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000CBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AC0(&qword_10001DB58, &qword_1000110B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10000CC80(uint64_t a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert] = 0;
  v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus] = 0;
  v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus] = 0;
  *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller] = a1;
  v3 = type metadata accessor for DKPairingAlertView(0);
  v17.receiver = v1;
  v17.super_class = v3;

  v4 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v5 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller;
  v6 = *&v4[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller];
  v16[3] = v3;
  v16[4] = &off_100018DB0;
  v16[0] = v4;
  swift_beginAccess();
  v7 = v4;

  sub_10000E098(v16, v6 + 56);
  swift_endAccess();

  v8 = *&v4[v5];
  v9 = *(v8 + 16);
  if (v9)
  {

    if ([v9 bluetoothState] == 5)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = 2;
    }

    *(v8 + 40) = v10;
  }

  else
  {
    v10 = *(v8 + 40);
  }

  v7[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus] = v10;
  v11 = *&v4[v5];
  v12 = *(v11 + 24);

  if (v12)
  {
    v13 = sub_10000A600();

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    *(v11 + 41) = v14;
  }

  else
  {

    v14 = *(v11 + 41);
  }

  v7[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus] = v14;

  return v7;
}

uint64_t sub_10000CE6C(void *a1)
{
  v3 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger;
  Logger.init(subsystem:category:)();

  v4 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert;
  *(v1 + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert) = 0;
  *(v1 + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus) = 0;
  *(v1 + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus) = 0;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v1 + v3, v5);

  type metadata accessor for DKPairingAlertView(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10000D0AC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v68 - v7;
  v9 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus;
  if (v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus] == 2 || v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus] == 2)
  {
    if (*&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert])
    {
      return;
    }

    v73 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert;
    (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger], v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Pushing alert to stack...", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v13 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller;
    v14 = *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller];
    v15 = *(v14 + 16);
    if (v15)
    {

      if ([v15 bluetoothState] == 5)
      {
        LOBYTE(v16) = 1;
      }

      else
      {
        LOBYTE(v16) = 2;
      }

      *(v14 + 40) = v16;
    }

    else
    {
      v16 = *(v14 + 40);
    }

    v1[v9] = v16;
    v21 = *&v1[v13];
    if (*(v21 + 24))
    {

      if (sub_10000A600())
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      *(v21 + 41) = v22;
    }

    else
    {
      v22 = *(v21 + 41);
    }

    v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus] = v22;
    v23 = objc_opt_self();
    v24 = [v23 mainBundle];
    v25._countAndFlagsBits = 0xD00000000000001BLL;
    v80._object = 0x8000000100012CC0;
    v26._countAndFlagsBits = 0xD000000000000027;
    v26._object = 0x8000000100012C70;
    v25._object = 0x8000000100012CA0;
    v80._countAndFlagsBits = 0xD00000000000003ELL;
    object = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v24, v25, v80)._object;

    v28 = [v23 mainBundle];
    v81._object = 0x8000000100012D80;
    v29._object = 0x8000000100012D00;
    v30._countAndFlagsBits = 0x1000000000000041;
    v30._object = 0x8000000100012D30;
    v81._countAndFlagsBits = 0xD000000000000040;
    v29._countAndFlagsBits = 0xD000000000000025;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v81)._object;

    v32 = MobileGestalt_get_current_device();
    if (v32)
    {
      v33 = v32;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {

        v35 = v23;
        v36 = [v23 mainBundle];
        v37._countAndFlagsBits = 0xD00000000000001ALL;
        v82._object = 0x8000000100012EC0;
        v38._countAndFlagsBits = 0xD000000000000027;
        v38._object = 0x8000000100012E70;
        v37._object = 0x8000000100012EA0;
        v82._countAndFlagsBits = 0xD00000000000003DLL;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v36, v37, v82)._object;

        v39 = [v23 mainBundle];
        v83._object = 0x8000000100012F80;
        v40._object = 0x8000000100012F00;
        v41._object = 0x8000000100012F30;
        v83._countAndFlagsBits = 0xD00000000000003FLL;
        v40._countAndFlagsBits = 0xD000000000000025;
        v41._countAndFlagsBits = 0x1000000000000040;
        v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v83)._object;
      }

      else
      {
        v35 = v23;
      }

      v72 = object;
      v42 = String._bridgeToObjectiveC()();
      v71 = v31;
      v43 = String._bridgeToObjectiveC()();
      v44 = [objc_opt_self() alertControllerWithTitle:v42 message:v43 preferredStyle:1];

      v45 = v73;
      v46 = *&v1[v73];
      *&v1[v73] = v44;
      v47 = v44;

      if (v47)
      {
        v48 = [v35 mainBundle];
        v49._countAndFlagsBits = 0xD00000000000001ELL;
        v84._countAndFlagsBits = 0xD000000000000022;
        v84._object = 0x8000000100012DF0;
        v50._countAndFlagsBits = 0x7373696D736944;
        v49._object = 0x8000000100012DD0;
        v50._object = 0xE700000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v84);
        v69 = v35;

        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v52 = String._bridgeToObjectiveC()();

        v78 = sub_10000E070;
        v79 = v51;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v70 = &v76;
        v76 = sub_100005480;
        v77 = &unk_100018DF0;
        v53 = _Block_copy(&aBlock);

        v54 = objc_opt_self();
        v55 = [v54 actionWithTitle:v52 style:1 handler:v53];
        _Block_release(v53);

        [v47 addAction:v55];
        v56 = *&v1[v45];
        if (v56)
        {
          v57 = v45;
          v58 = v56;
          v59 = [v69 mainBundle];
          v60._countAndFlagsBits = 0xD00000000000001DLL;
          v85._object = 0x8000000100012E40;
          v61._countAndFlagsBits = 0x6E4F206E727554;
          v60._object = 0x8000000100012E20;
          v85._countAndFlagsBits = 0xD00000000000002FLL;
          v61._object = 0xE700000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v85);

          v62 = swift_allocObject();
          swift_unknownObjectWeakInit();

          v63 = String._bridgeToObjectiveC()();

          v78 = sub_10000E090;
          v79 = v62;
          aBlock = _NSConcreteStackBlock;
          v75 = 1107296256;
          v76 = sub_100005480;
          v77 = &unk_100018E18;
          v64 = _Block_copy(&aBlock);

          v65 = [v54 actionWithTitle:v63 style:0 handler:v64];
          _Block_release(v64);

          [v58 addAction:v65];
          v66 = *&v1[v57];
          if (v66)
          {
            v67 = v66;

            [v1 presentViewController:v67 animated:1 completion:0];

            return;
          }

LABEL_33:
          __break(1u);
          return;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v3 + 16))(&v68 - v7, &v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger], v2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Bluetooth and Wi-Fi enabled, dismissing alert...", v19, 2u);
  }

  (*(v3 + 8))(v8, v2);
  v20 = *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert];
  *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert] = 0;

  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_10000DA58(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, Strong + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger, v2);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Dismiss pressed", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [v11 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10000DC20(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, Strong + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger, v2);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Turn On pressed", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;

    sub_10000BB7C(1);
    sub_10000BEF0(1);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v13 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_10000DE6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKPairingAlertView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DKPairingAlertView(uint64_t a1)
{
  result = qword_10001DB88;
  if (!qword_10001DB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DF84(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10000E038()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E098(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AC0(&qword_10001DB58, &qword_1000110B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v9 = (&async function pointer to dispatch thunk of DockKitCorePairingService.setSetupPayload(uri:) + async function pointer to dispatch thunk of DockKitCorePairingService.setSetupPayload(uri:));
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10000E29C;

  return v9(a5);
}

uint64_t sub_10000E29C()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10000E45C;
  }

  else
  {
    v4 = sub_10000E3F8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10000E3F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000E45C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10000E5D8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000E6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();
  v15 = v13;
  v16 = static MainActor.shared.getter();
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v15;
  (*(v7 + 32))(&v18[v17], v9, v6);
  sub_10000EA9C(0, 0, v12, &unk_100011150, v18);

  return 1;
}

uint64_t sub_10000E8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 40) & ~v8;
  v10 = *(v7 + 64);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v5 + v9, v6);

  return _swift_deallocObject(v5, v9 + v10, v8 | 7);
}

uint64_t sub_10000E9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100002DD0;

  return sub_10000E1CC(a1, v10, v11, v12, v5 + v9);
}

uint64_t sub_10000EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100009628(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000F9A0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000F9A0(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F9A0(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000ED60(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000FA08(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10000FA08(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10000F050(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10000FA08(v3, v5, v2 != 0);
  return v12;
}

id sub_10000EFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000F050(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000F800();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000F800();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void *sub_10000F250(uint64_t a1)
{
  v2 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  result = sub_10000ED60(a1);
  if (result)
  {
    v13 = result;
    v14 = [result URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    (*(v6 + 16))(v9, v11, v5);
    type metadata accessor for MainActor();
    v17 = v15;
    v18 = static MainActor.shared.getter();
    v19 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = v18;
    *(v20 + 3) = &protocol witness table for MainActor;
    *(v20 + 4) = v17;
    (*(v6 + 32))(&v20[v19], v9, v5);
    sub_10000EA9C(0, 0, v4, &unk_100011190, v20);

    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_10000F4F0(uint64_t a1, void *a2)
{
  v3 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v14 = [a2 URLContexts];
    sub_10000F800();
    sub_10000F84C();
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = sub_10000ED60(v15);

    if (v16)
    {
      v17 = [v16 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
      (*(v7 + 16))(v10, v12, v6);
      type metadata accessor for MainActor();
      v20 = v18;
      v21 = static MainActor.shared.getter();
      v22 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v23 = swift_allocObject();
      *(v23 + 2) = v21;
      *(v23 + 3) = &protocol witness table for MainActor;
      *(v23 + 4) = v20;
      (*(v7 + 32))(&v23[v22], v10, v6);
      sub_10000EA9C(0, 0, v5, &unk_100011188, v23);

      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}

unint64_t sub_10000F800()
{
  result = qword_10001DCC8;
  if (!qword_10001DCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001DCC8);
  }

  return result;
}

unint64_t sub_10000F84C()
{
  result = qword_10001DCD0;
  if (!qword_10001DCD0)
  {
    sub_10000F800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCD0);
  }

  return result;
}

uint64_t sub_10000F8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10000A488;

  return sub_10000E1CC(a1, v10, v11, v12, v5 + v9);
}

uint64_t sub_10000F9A0(uint64_t a1)
{
  v2 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FA08(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10000FA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 40) & ~v8;
  v10 = *(v7 + 64);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v5 + v9, v6);

  return _swift_deallocObject(v5, v9 + v10, v8 | 7);
}

uint64_t sub_10000FAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100002DD0;

  return sub_10000E1CC(a1, v10, v11, v12, v5 + v9);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}