uint64_t sub_1000EA788(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1000EA7D8();

  return v3;
}

uint64_t sub_1000EA7D8()
{
  LOBYTE(v1) = 1;
  sub_1000F2D60();
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    sub_100003ABC(&qword_1006035B0, &qword_1004CDAD0);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100007214(&v2, &qword_100605110, &unk_1004CD280);
    return 0;
  }
}

uint64_t sub_1000EA8E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(sub_1000F336C);
  }

  return result;
}

uint64_t sub_1000EA974(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Whitetail.Binding(0, a2);
  v4 = ICUserIdentityStoreDidChangeNotification;
  v5 = objc_opt_self();
  v6 = v4;
  v7.length = [v5 defaultIdentityStore];
  v7.location = v6;
  v67 = &type metadata for NotificationTrigger;
  v68 = &protocol witness table for NotificationTrigger;
  v66 = CFRange.init(_:)(v7);
  v8 = swift_allocObject();
  v60 = v3;
  swift_weakInit();
  v65 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v66, 1, sub_1000F31E0, v8);
  v9 = [objc_opt_self() sharedController];
  v10 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v11.location = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v11.length = v9;
  v12 = CFRange.init(_:)(v11);
  v67 = &type metadata for NotificationTrigger;
  v68 = &protocol witness table for NotificationTrigger;
  v66 = v12;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = v10;
  v63 = v9;
  v64 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v66, 1, sub_1000F31E8, v13);
  v61 = [objc_opt_self() standardUserDefaults];
  sub_100003ABC(&unk_1006035A0, &unk_1004CDAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50D0;
  v16 = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v17.location = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v17.length = v61;
  v18 = CFRange.init(_:)(v17);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v18;
  v19 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
  v20 = CFRange.init(_:)(MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v20;
  v21 = RadioAvailabilityControllerRadioAvailableDidChangeNotification;
  v22 = CFRange.init(_:)(RadioAvailabilityControllerRadioAvailableDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v22;
  v23 = MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification;
  v24 = CFRange.init(_:)(MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification);
  *(inited + 176) = &type metadata for NotificationTrigger;
  *(inited + 184) = &protocol witness table for NotificationTrigger;
  *(inited + 152) = v24;
  v25 = MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification;
  v26 = CFRange.init(_:)(MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification);
  *(inited + 216) = &type metadata for NotificationTrigger;
  *(inited + 224) = &protocol witness table for NotificationTrigger;
  *(inited + 192) = v26;
  v27 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v28 = v16;
  v62 = v61;
  v29 = v19;
  v30 = v21;
  v31 = v23;
  v32 = v25;

  v33 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_1000F31E8, v27);

  sub_100003ABC(&qword_100603C50, &unk_1004CB550);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1004C5130;
  *(v34 + 32) = v65;
  *(v34 + 40) = v64;
  *(v34 + 48) = v33;
  v35 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings;
  swift_beginAccess();

  sub_100022D80(v34);
  swift_endAccess();
  sub_1000F2CF0();
  v37 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0xD000000000000014, 0x80000001004FF550, v36, &type metadata for NSUserDefaults.MobileiPod);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v67 = &type metadata for UserDefaultsKeyValueTrigger;
  v68 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v44 = swift_allocObject();
  v66.location = v44;
  v44[2] = v37;
  v44[3] = v39;
  v44[4] = v41;
  v44[5] = v43;
  v45 = swift_allocObject();
  swift_weakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v66, 1, sub_1000F31E8, v45);
  swift_beginAccess();
  sub_1004BC274();
  if (*((*(v60 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v60 + v35) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();
  v47 = [objc_allocWithZone(type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver(0 v46))];
  v48 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver;
  v49 = *(v60 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver);
  *(v60 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = v47;

  if (*(v60 + v48))
  {
    swift_weakAssign();
  }

  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  v50 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for BagProvider.Observer(0, v51);
  v52 = swift_allocObject();
  swift_weakInit();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  swift_weakAssign();
  v53 = *(v52 + 24);
  v54 = *(v52 + 32);
  *(v52 + 24) = sub_1000F3258;
  *(v52 + 32) = v50;
  swift_retain_n();
  sub_10003CC4C(v53, v54);
  v66.location = 0;
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(sub_1000DF904);
  if (v66.location)
  {
    v55 = v66.location;
    sub_1000ED678(v55, v50);
  }

  else
  {
    sub_1000FAAD0(0);
  }

  *(v60 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = v52;

  v56 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PrivacyAcknowledgementObserver(0, v57);
  swift_allocObject();

  v58 = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_1000F3260, v56);

  *(v60 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = v58;
}

uint64_t sub_1000EB0E8(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    v18[7] = v17;
    v18[0] = v10;
    v18[1] = v11;
    v18[2] = v12;
    v18[3] = v13;
    v6 = sub_1000E9BC8();
    sub_100051DEC(v18);
    sub_100146158(v6);
    v8 = v7;

    v9 = a2(v8);

    return v9;
  }

  return result;
}

uint64_t sub_1000EB22C(uint64_t a1, char a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = v4(a2 & 1, sub_1000F3184, v6);

  return v7;
}

uint64_t sub_1000EB2CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = sub_1004BBC24().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = (*(a2 + 16))(a2, v3.super.isa);

  return v4;
}

__n128 sub_1000EB33C@<Q0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  a2[7] = v11;
  *a2 = v4;
  a2[1] = v5;
  result = v7;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1000EB3F4(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v12[12] = a1[4];
  v12[13] = v7;
  v8 = a1[7];
  v12[14] = a1[6];
  v12[15] = v8;
  v9 = a1[1];
  v12[8] = *a1;
  v12[9] = v9;
  v10 = a1[3];
  v12[10] = a1[2];
  v12[11] = v10;

  sub_1000F2B70(v13, v12);
  return sub_1004B85B4();
}

uint64_t ApplicationCapabilities.Controller.$capabilities.getter()
{
  swift_beginAccess();
  sub_100003ABC(&qword_1006066D0, &unk_1004CD5D8);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t sub_1000EB530(void *a1)
{
  swift_beginAccess();
  sub_100003ABC(&qword_1006066D0, &unk_1004CD5D8);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t sub_1000EB5A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&qword_1006065D0, &qword_1004D3730);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_1006066D0, &unk_1004CD5D8);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

Swift::Void __swiftcall ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = v0;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v3 = &v6[-v2];
  v9 = 0;
  v7 = v0;
  v8 = &v9;
  UnfairLock.locked<A>(_:)(sub_1000F2448);
  if (v9 == 1)
  {
    sub_1004BC484();
    v4 = sub_1004BC4B4();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v1;

    sub_10001F35C(0, 0, v3, &unk_1004CD5F0, v5);

    sub_100007214(v3, &qword_1006014F0, &qword_1004C9B00);
  }
}

uint64_t sub_1000EB8CC()
{
  UnfairLock.locked<A>(_:)(sub_1000F3014);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000EB964(uint64_t a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v4 = v43 - v3;
  v5 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if (*(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) == 1)
  {
    if (qword_1005FFE28 != -1)
    {
      swift_once();
    }

    v6 = sub_1004B80B4();
    sub_100007084(v6, qword_1006032D8);
    v7 = sub_1004B8094();
    v8 = sub_1004BC9A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Needs Network Reachability Update", v9, 2u);
    }

    *(a1 + v5) = 0;
    v10 = [objc_opt_self() sharedCloudController];
    if (v10)
    {
      v11 = v10;
      if ([v10 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = [v11 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v48[4] = v53;
    v48[5] = v54;
    v48[6] = v55;
    v48[7] = v56;
    v48[0] = v49;
    v48[1] = v50;
    v48[2] = v51;
    v48[3] = v52;
    sub_100051DEC(v48);
    v13 = BYTE1(v48[0]);
    v14 = sub_1004B8094();
    v15 = sub_1004BC9A4();
    v16 = os_log_type_enabled(v14, v15);
    if (v12 == v13)
    {
      if (v16)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Network Reachability status does not differ from currently known capabilities.", v42, 2u);
      }
    }

    else
    {
      v57 = v4;
      if (v16)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v43[1] = v1;
        v19 = v18;
        *&v49 = v18;
        *v17 = 136315138;
        if (v12)
        {
          v20 = 0x1000000000000012;
        }

        else
        {
          v20 = 0x1000000000000016;
        }

        v21 = v12;
        if (v12)
        {
          v12 = "Not Reachable 🔌👎";
        }

        else
        {
          v12 = "hangeNotification";
        }

        v22 = sub_100012018(v20, v12 | 0x8000000000000000, &v49);
        LOBYTE(v12) = v21;

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "Updating Network Reachability to: %s", v17, 0xCu);
        sub_100004C6C(v19);
      }

      v23 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v45[4] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v45[5] = v24;
      v25 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v45[6] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v45[7] = v25;
      v26 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v45[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v45[1] = v26;
      v27 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v45[2] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v45[3] = v27;
      *(&v46[4] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 66);
      *(&v46[5] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 82);
      *(&v46[6] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 98);
      v46[7] = v25;
      *(v46 + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 2);
      *(&v46[1] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 18);
      *(&v46[2] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 34);
      *(&v46[3] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 50);
      LOBYTE(v46[0]) = v45[0];
      BYTE1(v46[0]) = v12;
      v28 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v51 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v52 = v28;
      v29 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v49 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v50 = v29;
      v30 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v55 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v56 = v30;
      v31 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v53 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v54 = v31;
      v47[0] = v49;
      v47[1] = v29;
      v47[2] = v51;
      v47[3] = v28;
      v47[4] = v53;
      v47[5] = v31;
      v47[6] = v55;
      v47[7] = v30;
      v32 = v46[0];
      v33 = v46[1];
      v34 = v46[3];
      v23[2] = v46[2];
      v23[3] = v34;
      *v23 = v32;
      v23[1] = v33;
      v35 = v46[4];
      v36 = v46[5];
      v37 = v46[7];
      v23[6] = v46[6];
      v23[7] = v37;
      v23[4] = v35;
      v23[5] = v36;
      sub_1000F2B70(v45, v44);
      sub_1000F2B70(&v49, v44);
      sub_1000F2B70(v46, v44);
      sub_100051DEC(v47);
      sub_1000EC07C(&v49);
      sub_100051DEC(&v49);
      sub_100051DEC(v46);
      v38 = sub_1004BC4B4();
      v39 = v57;
      (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
      sub_1004BC474();

      v40 = sub_1004BC464();
      v41 = swift_allocObject();
      v41[2] = v40;
      v41[3] = &protocol witness table for MainActor;
      v41[4] = a1;
      sub_1000FD6BC(0, 0, v39, &unk_1004CDAA8, v41);
    }
  }
}

uint64_t sub_1000EBEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1000EBF58, v6, v5);
}

uint64_t sub_1000EBF58()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_1005FFE80 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange object:*(v0 + 16)];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE80 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange;
}

uint64_t sub_1000EC07C(unsigned __int8 *a1)
{
  v2 = v1;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v5 = &v32 - v4;
  v6 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v42 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v43 = v6;
  v7 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v44 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v45 = v7;
  v8 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v38 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v39 = v8;
  v9 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v40 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v37 = &_swiftEmptySetSingleton;
  v41 = v9;
  sub_1000F2B70(&v38, &v35);
  if (qword_1005FFF70 != -1)
  {
    swift_once();
  }

  if (static NSUserDefaults.mobileiPod)
  {
    v10 = sub_1000F2CF0();
    v11 = sub_10000E7F4();
    NSUserDefaults.subscript.getter(&v35);
    if (!v36)
    {
      sub_100007214(&v35, &qword_100605110, &unk_1004CD280);
      goto LABEL_15;
    }

    if (swift_dynamicCast() & 1) != 0 && (v34)
    {
      if (v44 > 1u)
      {
        if (v44 == 2)
        {

LABEL_14:
          v36 = &type metadata for Bool;
          LOBYTE(v35) = 0;
          NSUserDefaults.subscript.setter(&v35, v12, &type metadata for NSUserDefaults.MobileiPod, v10, v11);
          goto LABEL_15;
        }

        v33 = v5;
      }

      else
      {
        v33 = v5;
      }

      v13 = sub_1004BD9C4();

      v5 = v33;
      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v38, a1))
  {
    goto LABEL_78;
  }

  if ((v38 ^ *a1))
  {
    if (qword_1005FFE78 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.activeAccountDidChange);
  }

  v14 = v40;
  v15 = sub_1000FE42C(5u, v40) & 1;
  v16 = *(a1 + 4);
  if (v15 != (sub_1000FE42C(5u, v16) & 1))
  {
    if (qword_1005FFE30 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange);
  }

  v17 = sub_1000FE42C(0, v14) & 1;
  if (v17 != (sub_1000FE42C(0, v16) & 1))
  {
    if (qword_1005FFE38 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange);
  }

  v18 = sub_1000FE42C(3u, v14) & 1;
  if (v18 != (sub_1000FE42C(3u, v16) & 1))
  {
    if (qword_1005FFE40 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange);
  }

  v19 = sub_1000FE42C(9u, v14) & 1;
  if (v19 != (sub_1000FE42C(9u, v16) & 1))
  {
    if (qword_1005FFE60 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange);
  }

  v20 = sub_1000FE42C(4u, v14) & 1;
  if (v20 != (sub_1000FE42C(4u, v16) & 1))
  {
    if (qword_1005FFE48 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange);
  }

  v21 = sub_1000FE42C(2u, v14) & 1;
  if (v21 != (sub_1000FE42C(2u, v16) & 1))
  {
    if (qword_1005FFE50 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange);
  }

  v22 = sub_1000FE42C(0xAu, v14) & 1;
  if (v22 != (sub_1000FE42C(0xAu, v16) & 1))
  {
    if (qword_1005FFE58 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.mliEnabledDidChange);
  }

  if ((BYTE1(v38) ^ a1[1]))
  {
    if (qword_1005FFE80 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange);
  }

  if ((BYTE2(v38) ^ a1[2]))
  {
    if (qword_1005FFE90 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange);
  }

  if (v41 != *(a1 + 6))
  {
    if (qword_1005FFE88 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange);
  }

  if ((sub_1000819C4() & 1) == 0)
  {
    if (qword_1005FFE70 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange);
  }

  v23 = v45;
  v24 = *(&v45 + 1);
  v25 = a1[112];
  v26 = *(a1 + 15);
  if ((sub_1000E90C0(*(&v44 + 1), *(a1 + 13)) & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v23 == 7)
  {
    if (v25 != 7)
    {
      goto LABEL_71;
    }
  }

  else if (v25 == 7 || (sub_1000819C8() & 1) == 0)
  {
    goto LABEL_71;
  }

  if ((sub_1000E9340(v24, v26) & 1) == 0)
  {
LABEL_71:
    if (qword_1005FFE68 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.supportedTabsDidChange);
  }

  if (*(&v38 + 1) != *(a1 + 1))
  {
    if (qword_1005FFE98 != -1)
    {
      swift_once();
    }

    sub_100199B94(&v35, static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange);
  }

LABEL_78:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v38, a1))
  {
  }

  else
  {
    v27 = sub_1004BC4B4();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v28 = v37;
    sub_1004BC474();
    sub_1000F2B70(&v38, &v35);

    v29 = sub_1004BC464();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    *(v30 + 32) = v2;
    *(v30 + 104) = v42;
    *(v30 + 120) = v43;
    *(v30 + 136) = v44;
    *(v30 + 152) = v45;
    *(v30 + 40) = v38;
    *(v30 + 56) = v39;
    *(v30 + 72) = v40;
    *(v30 + 88) = v41;
    *(v30 + 168) = v28;
    sub_1000FD6BC(0, 0, v5, &unk_1004CDA70, v30);
  }

  return sub_100051DEC(&v38);
}

uint64_t *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE78 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.activeAccountDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE30 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE38 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE40 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE60 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE48 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE50 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.mliEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE58 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.mliEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE90 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE88 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE70 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE68 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.supportedTabsDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFE98 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange;
}

uint64_t sub_1000ECEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  sub_1004BC474();
  v6[37] = sub_1004BC464();
  v8 = sub_1004BC3E4();

  return _swift_task_switch(sub_1000ECF64, v8, v7);
}

void sub_1000ECF64()
{
  v35 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  *(v0 + 112) = v2[6];
  *(v0 + 128) = v6;
  *(v0 + 80) = v8;
  *(v0 + 96) = v7;

  sub_1000F2B70(v2, v0 + 144);
  sub_1004B85B4();
  v9 = v1 + 56;
  v10 = -1;
  v11 = -1 << *(v1 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v1 + 56);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  v32 = v1;
  while (v12)
  {
LABEL_10:
    v18 = qword_1005FFE28;
    v19 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_1004B80B4();
    sub_100007084(v20, qword_1006032D8);
    v21 = v19;
    v22 = sub_1004B8094();
    v23 = sub_1004BC9A4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v24 = 136446210;
      *(v0 + 16) = v21;
      type metadata accessor for Name(0);
      v25 = v21;
      v26 = sub_1004BBF04();
      v28 = v13;
      v29 = v9;
      v30 = sub_100012018(v26, v27, &v34);

      *(v24 + 4) = v30;
      v9 = v29;
      v13 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Notifying changes for '%{public}s'", v24, 0xCu);
      sub_100004C6C(v33);

      v1 = v32;
    }

    v12 &= v12 - 1;
    v15 = *(v0 + 272);
    v16 = [objc_opt_self() defaultCenter];
    [v16 postNotificationName:v21 object:v15];
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v14 = v17;
      goto LABEL_10;
    }
  }

  v31 = *(v0 + 8);

  v31();
}

uint64_t sub_1000ED290(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  v3 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
  v4 = *(a1 + 16);
  v5 = v2;

  sub_1000F1A20(v2, v3, v4, v17);
  v6 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v7 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v21 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v22 = v7;
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v23 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v24 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v18[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v18[1] = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v19 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v20 = v10;
  v25[6] = v23;
  v25[7] = v8;
  v25[4] = v21;
  v25[5] = v7;
  v25[2] = v19;
  v25[3] = v10;
  v25[0] = v18[0];
  v25[1] = v9;
  v11 = v17[1];
  *v6 = v17[0];
  v6[1] = v11;
  v12 = v17[7];
  v6[6] = v17[6];
  v6[7] = v12;
  v13 = v17[5];
  v6[4] = v17[4];
  v6[5] = v13;
  v14 = v17[3];
  v6[2] = v17[2];
  v6[3] = v14;
  sub_1000F2B70(v18, v16);
  sub_1000F2B70(v17, v16);
  sub_100051DEC(v25);
  sub_1000EC07C(v18);
  sub_100051DEC(v18);
  return sub_100051DEC(v17);
}

uint64_t sub_1000ED3A0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = [objc_opt_self() defaultIdentityStore];
    v4 = sub_1000ED4E4(v2, v3);
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    if (v6)
    {
      v4 = 0;
      v8 = 0;
      v12[1] = 0;
      v12[2] = 0;
    }

    else
    {
      v8 = &type metadata for UInt64;
    }

    v12[0] = v4;
    v12[3] = v8;
    v11 = 2;
    v9 = sub_1000F2D60();
    v10 = sub_10000E7F4();
    NSUserDefaults.subscript.setter(v12, &v11, &_s3KeyON, v9, v10);

    UnfairLock.locked<A>(_:)(sub_1000F336C);
  }

  return result;
}

id sub_1000ED4E4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() activeAccount];
  v9 = 0;
  v4 = [v2 DSIDForUserIdentity:v3 outError:&v9];

  v5 = v9;
  if (v4)
  {
    v9 = 0;
    v10 = 1;
    v6 = v5;
    sub_1004BDC24();

    return v9;
  }

  else
  {
    v8 = v9;
    sub_1004B69B4();

    swift_willThrow();

    return 0;
  }
}

uint64_t sub_1000ED5F0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(a2);
  }

  return result;
}

void sub_1000ED678(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();

    UnfairLock.locked<A>(_:)(sub_1000F3268);

    UnfairLock.locked<A>(_:)(sub_1000F336C);
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_1004BBE24();
    v5 = [a1 dictionaryForBagKey:v4];

    if (v5 && (v6 = sub_1004BBC44(), v5, sub_10029A9F0(v6), v8 = v7, , v8))
    {
      *(&v13 + 1) = sub_100003ABC(&qword_1006035B0, &qword_1004CDAD0);
      *&v12 = v8;
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v11 = 1;
    v9 = sub_1000F2D60();
    v10 = sub_10000E7F4();
    NSUserDefaults.subscript.setter(&v12, &v11, &_s3KeyON, v9, v10);
  }
}

uint64_t sub_1000ED88C(char a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), sub_1004B85A4(), , , , v18 = v10, v19 = v11, v20 = v12, v21 = v13, v14 = v6, v15 = v7, v16 = v8, v17 = v9, result = sub_100051DEC(&v14), BYTE8(v15) == (a1 & 1)))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = sub_1004B8594();
      *(v5 + 24) = (a1 & 1) == 0;
      v4(&v14, 0);
    }
  }

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

uint64_t ApplicationCapabilities.Controller.updated()(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return _swift_task_switch(sub_1000EDA70, 0, 0);
}

uint64_t sub_1000EDA70()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_1000EDB48;
  v2 = *(v0 + 280);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0x2864657461647075, 0xE900000000000029, sub_1000F2528, v2, &type metadata for ApplicationCapabilities);
}

uint64_t sub_1000EDB48()
{

  return _swift_task_switch(sub_1000EDC44, 0, 0);
}

uint64_t sub_1000EDC44()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  v5 = *(v0 + 192);
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  v7 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v0 + 112) = v7;
  *(v0 + 128) = v6;
  v9 = *(v0 + 208);
  v8 = *(v0 + 224);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  v1[6] = v7;
  v1[7] = v6;
  v1[4] = v9;
  v1[5] = v8;
  v1[2] = v4;
  v1[3] = v5;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1000EDC8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003ABC(&qword_100603558, &unk_1004CDA90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v25 - v7;
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v4 + 16);
  v11(v8, a1, v3);
  v11(v6, v8, v3);
  v12 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  (*(v4 + 32))(v13 + v12, v8, v3);
  v14 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  v16 = v26;
  if (v26)
  {
    sub_1000EE03C(v26, v10);
  }

  else
  {
    type metadata accessor for BagProvider.Observer(0, v15);
    v17 = swift_allocObject();
    v25[1] = v14;
    v18 = v17;
    swift_weakInit();
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    swift_weakAssign();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = sub_1000F2F04;
    v20[3] = v13;
    v20[4] = v19;
    v20[5] = v18;
    v25[0] = 0;
    v21 = *(v18 + 24);
    v22 = *(v18 + 32);
    *(v18 + 24) = sub_1000F2FCC;
    *(v18 + 32) = v20;

    v23 = v22;
    v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10003CC4C(v21, v23);

    __chkstk_darwin();
    v25[-2] = v9;
    v25[-1] = v18;
    UnfairLock.locked<A>(_:)(sub_1000F2FD8);
    sub_1000FAAD0(0);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000EE03C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
    v5 = *(result + 16);
    a1;

    sub_1000F1A20(a1, v4, v5, v6);
    __chkstk_darwin();

    UnfairLock.locked<A>(_:)(sub_1000F2FF4);

    sub_100003ABC(&qword_100603558, &unk_1004CDA90);
    sub_1004BC404();
  }

  return result;
}

uint64_t sub_1000EE1B0(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = a2;

  v7 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v22 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v23 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v25 = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v19[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v19[1] = v10;
  v11 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v20 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v21 = v11;
  v26[6] = v24;
  v26[7] = v9;
  v26[4] = v22;
  v26[5] = v8;
  v26[2] = v20;
  v26[3] = v11;
  v26[0] = v19[0];
  v26[1] = v10;
  v12 = a3[1];
  *v7 = *a3;
  v7[1] = v12;
  v13 = a3[7];
  v7[6] = a3[6];
  v7[7] = v13;
  v14 = a3[5];
  v7[4] = a3[4];
  v7[5] = v14;
  v15 = a3[3];
  v7[2] = a3[2];
  v7[3] = v15;
  v16 = a2;
  sub_1000F2B70(v19, v18);
  sub_1000F2B70(a3, v18);
  sub_100051DEC(v26);
  sub_1000EC07C(v19);
  return sub_100051DEC(v19);
}

uint64_t ApplicationCapabilities.Controller.deinit()
{
  v1 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller__capabilities;
  v2 = sub_100003ABC(&qword_1006066D0, &unk_1004CD5D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v8[3] = v6;
  sub_100051DEC(v8);

  return v0;
}

uint64_t ApplicationCapabilities.Controller.__deallocating_deinit()
{
  ApplicationCapabilities.Controller.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EE40C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1004B8534();
  *a2 = result;
  return result;
}

Swift::Bool __swiftcall ApplicationCapabilities.Tabs.shouldShowLoadingUpsellBanner(for:)(MusicCore::TabIdentifier a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 33);
  v4 = a1;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v11 = 0xE500000000000000;
        v10 = 0x6F69646172;
      }

      else
      {
        if (v5 == 5)
        {
          v10 = 0x686372616573;
        }

        else
        {
          v10 = 0x736F65646976;
        }

        v11 = 0xE600000000000000;
      }
    }

    else
    {
      v6 = v5 - 1;
      v7 = v5 == 0;
      if (*(v3 - 1))
      {
        v8 = 0x6573776F7262;
      }

      else
      {
        v8 = 0x7972617262696CLL;
      }

      if (v7)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (v6 >= 2)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x6F4E6E657473696CLL;
      }

      if (v6 >= 2)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE900000000000077;
      }
    }

    v22 = *v3;
    v12 = 0x736F65646976;
    if (v4 != 5)
    {
      v12 = 0x7473696C79616C70;
    }

    v13 = 0xE900000000000073;
    if (v4 == 5)
    {
      v13 = 0xE600000000000000;
    }

    v14 = 0x686372616573;
    if (v4 == 3)
    {
      v14 = 0x6F69646172;
    }

    v15 = 0xE500000000000000;
    if (v4 != 3)
    {
      v15 = 0xE600000000000000;
    }

    if (v4 <= 4)
    {
      v12 = v14;
      v13 = v15;
    }

    if (v4 == 1)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x6573776F7262;
    }

    if (v4 == 1)
    {
      v17 = 0xE900000000000077;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    if (!v4)
    {
      v16 = 0x7972617262696CLL;
      v17 = 0xE700000000000000;
    }

    v18 = v4 <= 2 ? v16 : v12;
    v19 = v4 <= 2 ? v17 : v13;
    if (v10 == v18 && v11 == v19)
    {
      break;
    }

    v20 = sub_1004BD9C4();

    if (v20)
    {
      return v22;
    }

    v3 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return v22;
}

BOOL sub_1000EE658(_BOOL8 a1, void *a2)
{
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v5 = &v9[-v4];
  if (qword_1005FFF70 != -1)
  {
    swift_once();
  }

  if (!static NSUserDefaults.mobileiPod)
  {
    goto LABEL_10;
  }

  sub_1000F2CF0();
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v10);
  if (!v11)
  {
    sub_100007214(&v10, &qword_100605110, &unk_1004CD280);
LABEL_10:
    a1 = 1;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || v9[15] != 1)
  {
    goto LABEL_10;
  }

  if (a1)
  {
    a1 = [a1 statusType] == 1;
  }

LABEL_11:
  v6 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.applicationScriptURL.getter(v5);

  v7 = sub_1004B6B04();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_100007214(v5, &qword_100600DE0, &unk_1004C66D0);
  if (v6 == 1 && [a2 hasLoadedSubscriptionAvailability])
  {
    return [a2 isSubscriptionAvailable] & a1;
  }

  return a1;
}

uint64_t sub_1000EE878(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    sub_1004BBE64();
    v4 = sub_1004BBE24();

    LODWORD(v3) = [v3 effectiveBoolValueForSetting:v4];

    v5 = v3 != 2;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (qword_1005FFE18 != -1)
  {
    swift_once();
  }

  v6 = sub_1004BBE24();
  v7 = [a2 dictionaryForBagKey:v6];

  if (v7)
  {

    sub_100009130(0, &qword_100603528, ICUserIdentityStore_ptr);
    v8 = static ICUserIdentityStore.activeAccountDSID.getter();
    if (v8)
    {

      if (v5)
      {
        return 1;
      }
    }
  }

LABEL_11:
  if (qword_1006006D8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 0;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  sub_1000F2D60();
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v11);

  if (!v12)
  {
    sub_100007214(&v11, &qword_100605110, &unk_1004CD280);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1000EEA9C()
{
  v1 = sub_1004BBE24();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = sub_1004BBC44();

  if (!v3)
  {
    goto LABEL_15;
  }

  sub_1004BD3A4();
  if (!*(v3 + 16) || (v4 = sub_100034774(v10), (v5 & 1) == 0))
  {

    sub_10003D090(v10);
LABEL_15:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_16;
  }

  sub_100004DE4(*(v3 + 56) + 32 * v4, &v11);
  sub_10003D090(v10);

  if (!*(&v12 + 1))
  {
LABEL_16:
    sub_100007214(&v11, &qword_100605110, &unk_1004CD280);
LABEL_17:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_18;
  }

  sub_100003ABC(&qword_100602EC8, &qword_1004CD480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_17;
  }

  sub_1004BD3A4();
  if (!*(v6 + 16) || (v7 = sub_100034774(v10), (v8 & 1) == 0))
  {

    sub_10003D090(v10);
    goto LABEL_17;
  }

  sub_100004DE4(*(v6 + 56) + 32 * v7, &v11);
  sub_10003D090(v10);

  if (!*(&v12 + 1))
  {
LABEL_18:
    sub_100007214(&v11, &qword_100605110, &unk_1004CD280);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000EECF0()
{
  v1 = sub_1004BBE24();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = sub_1004BBC44();

  if (!v3)
  {
    goto LABEL_14;
  }

  sub_1004BD3A4();
  if (!*(v3 + 16) || (v4 = sub_100034774(&v10), (v5 & 1) == 0))
  {

    sub_10003D090(&v10);
LABEL_14:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_15;
  }

  sub_100004DE4(*(v3 + 56) + 32 * v4, &v11);
  sub_10003D090(&v10);

  if (!*(&v12 + 1))
  {
LABEL_15:
    sub_100007214(&v11, &qword_100605110, &unk_1004CD280);
LABEL_16:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_17;
  }

  sub_100003ABC(&qword_100602EC8, &qword_1004CD480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  sub_1004BD3A4();
  if (!*(v6 + 16) || (v7 = sub_100034774(&v10), (v8 & 1) == 0))
  {

    sub_10003D090(&v10);
    goto LABEL_16;
  }

  sub_100004DE4(*(v6 + 56) + 32 * v7, &v11);
  sub_10003D090(&v10);

  if (!*(&v12 + 1))
  {
LABEL_17:
    sub_100007214(&v11, &qword_100605110, &unk_1004CD280);
    return 0;
  }

  if (swift_dynamicCast())
  {

    return 1;
  }

  return 0;
}

uint64_t sub_1000EEF40()
{
  result = sub_1004BBE64();
  qword_1006032C0 = result;
  *algn_1006032C8 = v1;
  return result;
}

uint64_t sub_1000EEF70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v5 = *a1;
  sub_1004BD3A4();
  if (!*(v5 + 16) || (v6 = sub_100034774(v28), (v7 & 1) == 0))
  {
    result = sub_10003D090(v28);
LABEL_10:
    *a3 = 512;
    return result;
  }

  sub_100004DE4(*(v5 + 56) + 32 * v6, v29);
  sub_10003D090(v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  result = sub_1000FD344(25705, 0xE200000000000000);
  v31 = result;
  if (result == 7)
  {
    goto LABEL_10;
  }

  sub_1004BD3A4();
  if (*(v5 + 16) && (v9 = sub_100034774(v28), (v10 & 1) != 0))
  {
    sub_100004DE4(*(v5 + 56) + 32 * v9, v29);
    sub_10003D090(v28);
    result = swift_dynamicCast();
    if (result)
    {
      v30 = 18;
LABEL_65:
      if (v30)
      {
        v27 = 256;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_68;
    }
  }

  else
  {
    result = sub_10003D090(v28);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 33);
    while (1)
    {
      v13 = *(v12 - 1);
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v16 = 0x756F795F726F66;
        }

        else
        {
          v16 = 0x6E5F6E657473696CLL;
        }

        if (v13 == 1)
        {
          v17 = 0xE700000000000000;
        }

        else
        {
          v17 = 0xEA0000000000776FLL;
        }

        if (*(v12 - 1))
        {
          v14 = v16;
        }

        else
        {
          v14 = 0x636973756D5F796DLL;
        }

        if (*(v12 - 1))
        {
          v15 = v17;
        }

        else
        {
          v15 = 0xE800000000000000;
        }
      }

      else if (*(v12 - 1) > 4u)
      {
        if (v13 == 5)
        {
          v15 = 0xE600000000000000;
          v14 = 0x686372616573;
        }

        else
        {
          v15 = 0xE500000000000000;
          v14 = 0x6F65646976;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 0x6573776F7262;
        }

        else
        {
          v14 = 0x6F69646172;
        }

        if (v13 == 3)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }
      }

      v30 = *v12;
      v18 = 0x686372616573;
      if (v31 == 5)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v18 = 0x6F65646976;
        v19 = 0xE500000000000000;
      }

      v20 = 0x6573776F7262;
      if (v31 == 3)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v20 = 0x6F69646172;
        v21 = 0xE500000000000000;
      }

      if (v31 <= 4u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v31 == 1)
      {
        v22 = 0x756F795F726F66;
      }

      else
      {
        v22 = 0x6E5F6E657473696CLL;
      }

      if (v31 == 1)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xEA0000000000776FLL;
      }

      if (!v31)
      {
        v22 = 0x636973756D5F796DLL;
        v23 = 0xE800000000000000;
      }

      v24 = v31 <= 2u ? v22 : v18;
      v25 = v31 <= 2u ? v23 : v19;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = sub_1004BD9C4();

      if (v26)
      {
        goto LABEL_65;
      }

      v12 += 2;
      if (!--v11)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

LABEL_63:
  v27 = 0;
LABEL_68:
  *a3 = v27 | v31;
  return result;
}

id sub_1000EF3CC(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    [result unregisterObserver:v2];

    v6.receiver = v2;
    v6.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver(0, v5);
    return objc_msgSendSuper2(&v6, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000EF538(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_weakLoadStrong())
  {
    v7 = a1;
    UnfairLock.locked<A>(_:)(a5);
  }
}

id sub_1000EF5E4()
{
  result = [objc_allocWithZone(RadioAvailabilityController) init];
  qword_1006032D0 = result;
  return result;
}

Swift::Int sub_1000EF624()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000EF6E0(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_1000EF788()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1000EF840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F3310(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000EF870(unint64_t *a1@<X8>)
{
  v2 = "gMusicTabsDictionary";
  v3 = 0xD000000000000025;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000014;
    v2 = "countUniqueIdentifier";
  }

  v4 = 0xD000000000000024;
  if (*v1)
  {
    v5 = "UserRequestedSubscriptionHidden";
  }

  else
  {
    v4 = 0xD00000000000001FLL;
    v5 = "sharePlayTogether";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1000EF8EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006032D8);
  sub_100007084(v2, qword_1006032D8);
  return sub_1004B80A4();
}

NSString sub_1000EF970()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange = result;
  return result;
}

NSString sub_1000EF9CC()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange = result;
  return result;
}

NSString sub_1000EFA28()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange = result;
  return result;
}

NSString sub_1000EFA84()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange = result;
  return result;
}

NSString sub_1000EFAE0()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange = result;
  return result;
}

NSString sub_1000EFB3C()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.mliEnabledDidChange = result;
  return result;
}

NSString sub_1000EFB98()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange = result;
  return result;
}

NSString sub_1000EFBF4()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.supportedTabsDidChange = result;
  return result;
}

NSString sub_1000EFC50()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange = result;
  return result;
}

NSString sub_1000EFCAC()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.activeAccountDidChange = result;
  return result;
}

NSString sub_1000EFD08()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange = result;
  return result;
}

NSString sub_1000EFD64()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange = result;
  return result;
}

NSString sub_1000EFDC0()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange = result;
  return result;
}

NSString sub_1000EFE1C()
{
  result = sub_1004BBE24();
  static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange = result;
  return result;
}

id sub_1000EFE78(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1004BD9C4();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (v10 && (a1[3] == a2[3] && v9 == v10 || (sub_1004BD9C4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || ((a1[24] ^ a2[24]))
  {
    return 0;
  }

  if ((sub_100192A10(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (sub_100192A10(*(a1 + 5), *(a2 + 5)) & 1) == 0 || *(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  v5 = a1;
  v6 = a2;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 7) != *(a2 + 7) || v7 != v10)
    {
      v13 = sub_1004BD9C4();
      v6 = a2;
      v5 = a1;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v9)
  {
    if (!v12)
    {
      return 0;
    }

    if (v8 != v11 || v9 != v12)
    {
      v14 = sub_1004BD9C4();
      v6 = a2;
      v5 = a1;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v15 = *(v5 + 11);
  v16 = *(v6 + 11);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_100009130(0, &qword_100603568, ICMusicSubscriptionStatus_ptr);
    v17 = v16;
    v18 = v15;
    v19 = sub_1004BCFA4();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((sub_1000819C4() & 1) == 0)
  {
    return 0;
  }

  v20 = a1[112];
  v21 = *(a1 + 15);
  v22 = a2[112];
  v23 = *(a2 + 15);
  if ((sub_1000E90C0(*(a1 + 13), *(a2 + 13)) & 1) == 0)
  {
    return 0;
  }

  if (v20 == 7)
  {
    if (v22 != 7)
    {
      return 0;
    }
  }

  else if (v22 == 7 || (sub_1000819C8() & 1) == 0)
  {
    return 0;
  }

  return (sub_1000E9340(v21, v23) & 1) != 0;
}

uint64_t sub_1000F01DC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v34 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  v31 = *(result + 16);
LABEL_3:
  v33 = v4;
  while (v3 < v2)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_63;
    }

    v6 = (v34 + 2 * v3);
    v7 = v6[1];
    ++v3;
    v8 = *v6;
    if (v8 == 2)
    {
      v21 = *(a2 + 32);
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }

      v32 = v6[1];
      sub_1004BDBA4();

      sub_1004BBF84();
      v22 = sub_1004BDBF4();
      v23 = -1 << *(v21 + 32);
      v24 = v22 & ~v23;
      if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = *(*(v21 + 48) + v24);
          if (v26 <= 4)
          {
            if (v26 == 2)
            {
              goto LABEL_57;
            }
          }

          else if (*(*(v21 + 48) + v24) > 7u && v26 == 8 && 0x80000001004FB9A0 == 0x80000001004FB9E0)
          {
LABEL_57:

LABEL_49:

            LOBYTE(v8) = 2;
LABEL_50:
            v2 = v31;
            v4 = v33;
            v7 = v32;
LABEL_51:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_100015060(0, v4[2] + 1, 1);
            }

            v29 = v4[2];
            v28 = v4[3];
            if (v29 >= v28 >> 1)
            {
              result = sub_100015060((v28 > 1), v29 + 1, 1);
            }

            v4[2] = v29 + 1;
            v30 = v4 + 2 * v29;
            v30[32] = v8;
            v30[33] = v7;
            if (v5 == v2)
            {
              return v4;
            }

            goto LABEL_3;
          }

          v27 = sub_1004BD9C4();

          if (v27)
          {
            goto LABEL_49;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else
    {
      if (v8 == 6)
      {
        v15 = *(a2 + 32);
        if (!*(v15 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        sub_1004BDBA4();

        sub_1004BBF84();
        v16 = sub_1004BDBF4();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v15 + 48) + v18) > 2u || !*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 2)
          {
            v20 = sub_1004BD9C4();

            if (v20)
            {
              goto LABEL_48;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_48:

          LOBYTE(v8) = 6;
          goto LABEL_50;
        }
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_51;
        }

        v9 = *(a2 + 32);
        if (!*(v9 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        sub_1004BDBA4();

        sub_1004BBF84();
        v10 = sub_1004BDBF4();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (*(*(v9 + 48) + v12) > 5u || *(*(v9 + 48) + v12) < 4u || *(*(v9 + 48) + v12) == 5)
          {
            v14 = sub_1004BD9C4();

            if (v14)
            {
              goto LABEL_47;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_47:

          LOBYTE(v8) = 4;
          goto LABEL_50;
        }
      }

LABEL_4:
      v2 = v31;
    }

    v4 = v33;
LABEL_6:
    if (v5 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void sub_1000F09FC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_1004BBE24();
    v5 = [v3 numberForBagKey:v4];

    if (v5)
    {
      sub_1004BC6F4();
    }

    v10 = v3;
    v11 = sub_1004BBE24();
    v12 = [v10 stringForBagKey:v11];

    if (v12)
    {
      v8 = sub_1004BBE64();
      v9 = v13;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }

    v14 = v10;
    v15 = sub_1004BBE24();
    v16 = [v14 stringForBagKey:v15];

    if (v16)
    {
      v6 = sub_1004BBE64();
      v7 = v17;
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v6;
  a2[4] = v7;
}

char *sub_1000F0BE8(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v2 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v2)
  {
    v3 = (isUniquelyReferenced_nonNull_native + 32);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100018128(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_100018128((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      v4[v8 + 32] = 0x5040302010100uLL >> (8 * v5);
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v29 = v4;
  if (qword_1005FFF70 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (!static NSUserDefaults.mobileiPod)
    {
      goto LABEL_16;
    }

    sub_1000F2CF0();
    sub_10000E7F4();
    NSUserDefaults.subscript.getter(&v27);
    if (!v28)
    {
      sub_100007214(&v27, &qword_100605110, &unk_1004CD280);
LABEL_16:
      v9 = 1;
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v9 = v26 ^ 1;
LABEL_17:
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 != 1 || (v12 = *(v4 + 2)) == 0)
    {
LABEL_28:
      v15 = *(v4 + 2);
      if (!v15)
      {
        return v4;
      }

      goto LABEL_29;
    }

    v13 = 0;
    while (1)
    {
      if (v13 >= *(v4 + 2))
      {
        goto LABEL_57;
      }

      if (v4[v13 + 32] > 2u && v4[v13 + 32] <= 4u && v4[v13 + 32] != 3)
      {
        break;
      }

      v14 = sub_1004BD9C4();

      if (v14)
      {
        goto LABEL_51;
      }

      if (v12 == ++v13)
      {
        goto LABEL_28;
      }
    }

LABEL_51:
    sub_100032C8C(v13);
    v4 = v29;
    v23 = *(v29 + 2);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    if (!v24 || v23 >= *(v4 + 3) >> 1)
    {
      v4 = sub_100018128(v24, v23 + 1, 1, v4);
      v29 = v4;
    }

    sub_100133234();
    v15 = *(v4 + 2);
    if (!v15)
    {
      return v4;
    }

LABEL_29:
    v16 = (v9 & 1) == 0;
    if (v9)
    {
      v17 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v17 = 0x7972617262696CLL;
    }

    if (v16)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE900000000000077;
    }

    v19 = 0;
    while (v19 < *(v4 + 2))
    {
      v20 = v4[v19 + 32];
      if (v20 > 2)
      {
        goto LABEL_38;
      }

      if (v4[v19 + 32])
      {
        if (v20 != 1)
        {
          goto LABEL_38;
        }

        v22 = 0xE900000000000077;
        if (v17 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v22 = 0xE700000000000000;
        if (v17 != 0x7972617262696CLL)
        {
          goto LABEL_38;
        }
      }

      if (v22 == v18)
      {

LABEL_40:

        return v4;
      }

LABEL_38:
      v21 = sub_1004BD9C4();

      if ((v21 & 1) == 0 && v15 != ++v19)
      {
        continue;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }
}

uint64_t sub_1000F113C(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v3 = 0;
  v29 = a1 + 32;
  v4 = a2 + 56;
  while (*(a2 + 16))
  {
    v5 = *(v29 + v3);
    sub_1004BDBA4();
    ApplicationCapabilities.Service.description.getter();
    sub_1004BBF84();

    v6 = sub_1004BDBF4();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      break;
    }

    v30 = v3 + 1;
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 <= 4)
      {
        v13 = 0x6C6169636F73;
        if (v10 != 3)
        {
          v13 = 0x6F69646172;
        }

        v14 = 0xE600000000000000;
        if (v10 != 3)
        {
          v14 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001004FB9A0;
        }

        v15 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v8))
        {
          v15 = 0x636973756DLL;
        }

        v16 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v8))
        {
          v16 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(a2 + 48) + v8) > 7u)
      {
        if (v10 == 8)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004FB9E0;
        }

        else if (v10 == 9)
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001004FBA00;
        }

        else
        {
          v11 = 0x6C62616E45696C6DLL;
          v12 = 0xEA00000000006465;
        }
      }

      else if (v10 == 5)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656E757469;
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 0x74634170756F7267;
        }

        else
        {
          v11 = 0x746963696C707865;
        }

        if (v10 == 6)
        {
          v12 = 0xED00007974697669;
        }

        else
        {
          v12 = 0xEF746E65746E6F43;
        }
      }

      if (v5 > 4)
      {
        v17 = 0xD000000000000011;
        if (v5 != 9)
        {
          v17 = 0x6C62616E45696C6DLL;
        }

        v18 = 0xEA00000000006465;
        if (v5 == 9)
        {
          v18 = 0x80000001004FBA00;
        }

        if (v5 == 8)
        {
          v17 = 0xD000000000000013;
          v18 = 0x80000001004FB9E0;
        }

        v19 = 0x746963696C707865;
        if (v5 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        v20 = 0xEF746E65746E6F43;
        if (v5 == 6)
        {
          v20 = 0xED00007974697669;
        }

        if (v5 == 5)
        {
          v19 = 0x73656E757469;
          v20 = 0xE600000000000000;
        }

        if (v5 <= 7)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v5 <= 7)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v11 == v21)
        {
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v5 <= 1)
      {
        break;
      }

      v23 = 0x6C6169636F73;
      if (v5 != 3)
      {
        v23 = 0x6F69646172;
      }

      v24 = 0xE600000000000000;
      if (v5 != 3)
      {
        v24 = 0xE500000000000000;
      }

      if (v5 == 2)
      {
        v25 = 0xD000000000000013;
      }

      else
      {
        v25 = v23;
      }

      if (v5 == 2)
      {
        v22 = 0x80000001004FB9A0;
      }

      else
      {
        v22 = v24;
      }

      if (v11 == v25)
      {
        goto LABEL_74;
      }

LABEL_75:
      v26 = sub_1004BD9C4();

      if (v26)
      {
        goto LABEL_80;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      if (v11 == 0x636973756DLL)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    v22 = 0xEB00000000736F65;
    if (v11 != 0x646956636973756DLL)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (v12 != v22)
    {
      goto LABEL_75;
    }

LABEL_80:
    v3 = v30;
    if (v30 == v28)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1000F1578(unsigned __int8 a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_59:
    if (a1 == 2)
    {
      v42 = &off_1005A3AE8;
      sub_100022C94(&off_1005A3B10);
    }

    return;
  }

  v3 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v39 = v3;
  v40 = _swiftEmptyArrayStorage;
  v36 = a1;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    if (*(v40 + 2))
    {
      return;
    }

    goto LABEL_59;
  }

  while (1)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17._rawValue = &off_1005A3C28;
    v43._countAndFlagsBits = v14;
    v43._object = v15;
    v18 = sub_1004BD764(v17, v43);

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v20 = 0x6269726373627573;
        v19 = 0xEA00000000007265;
      }

      else
      {
        if (v18 != 3)
        {
          goto LABEL_35;
        }

        v20 = 0x6275536563696F76;
        v19 = 0xEF72656269726373;
      }
    }

    else if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_35;
      }

      v19 = 0xE700000000000000;
      v20 = 0x63697373616C63;
    }

    else
    {
      v20 = 0x6564696365646E75;
      v19 = 0xE900000000000064;
    }

    v21 = 0x6275536563696F76;
    if (a1 == 2)
    {
      v21 = 0x6269726373627573;
    }

    v22 = 0xEF72656269726373;
    if (a1 == 2)
    {
      v22 = 0xEA00000000007265;
    }

    v23 = 0x6564696365646E75;
    if (a1)
    {
      v23 = 0x63697373616C63;
    }

    v24 = 0xE900000000000064;
    if (a1)
    {
      v24 = 0xE700000000000000;
    }

    v25 = a1 <= 1u ? v23 : v21;
    v26 = a1 <= 1u ? v24 : v22;
    if (v20 == v25 && v19 == v26)
    {
      break;
    }

    v27 = sub_1004BD9C4();

    if (v27)
    {
      goto LABEL_38;
    }

LABEL_35:

    v3 = v39;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

LABEL_38:

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v42 = &off_1005A3AE8;
      sub_100022C94(&off_1005A3B10);
      a1 = v36;
      v28 = v42;
    }

    else
    {
      v28 = &off_1005A3B38;
    }

LABEL_44:
    v38 = v28;
  }

  else
  {
    v38 = &off_1005A3A98;
    if (!a1)
    {
      v28 = &off_1005A3AC0;
      goto LABEL_44;
    }
  }

  v37 = *(v16 + 16);
  if (!v37)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_56:

    goto LABEL_35;
  }

  v29 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (v29 < *(v16 + 16))
  {
    v42 = *(v16 + 32 + 8 * v29);

    sub_1000EEF70(&v42, v38, &v41);

    v31 = v41;
    if ((v41 & 0xFF00) != 0x200)
    {
      v32 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10001813C(0, *(v40 + 2) + 1, 1, v40);
      }

      v33 = v32;
      v34 = *(v32 + 2);
      v40 = v33;
      v35 = *(v33 + 3);
      if (v34 >= v35 >> 1)
      {
        v40 = sub_10001813C((v35 > 1), v34 + 1, 1, v40);
      }

      *(v40 + 2) = v34 + 1;
      v30 = &v40[2 * v34];
      v30[32] = v31;
      v30[33] = HIBYTE(v31) & 1;
      a1 = v36;
    }

    if (v37 == ++v29)
    {
      goto LABEL_56;
    }
  }

LABEL_63:
  __break(1u);
}

id sub_1000F1A20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = objc_opt_self();
  result = [v6 sharedCloudController];
  if (result)
  {
    v8 = result;
    v9 = [result hasProperNetworkConditionsToShowCloudMedia];

    *(&v88 + 1) = v9;
    *(&v88 + 1) = 0;
    *&v89 = 0;
    *&v90 = &_swiftEmptySetSingleton;
    *(&v90 + 1) = &_swiftEmptySetSingleton;
    *v91 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v91[8], 0, 32);
    v10 = objc_opt_self();
    v11 = [v10 sharedController];
    v12 = [v11 musicSubscriptionStatus];

    v13 = 1;
    LOBYTE(v92) = 1;
    *(&v92 + 1) = sub_1000F0BE8(_swiftEmptyArrayStorage, v14);
    LOBYTE(v93) = v15;
    *(&v93 + 1) = v16;
    v17 = [v10 sharedController];
    v18 = [objc_opt_self() sharedConnection];
    v75 = [v6 sharedCloudController];
    v77 = v17;
    v19 = [v17 musicSubscriptionStatus];
    v20 = v19;
    if (v19)
    {
      v74 = 2 * ([v19 capabilities] & 1);
    }

    else
    {
      v74 = 0;
    }

    v21 = [objc_opt_self() defaultIdentityStore];
    sub_1000ED4E4(v21, v22);
    v24 = v23;

    LOBYTE(v88) = (v24 & 1) == 0;
    if (v20)
    {
      v25 = v20;
      *&v89 = [v25 statusType];
      v26 = [v25 capabilities];

      *(&v88 + 1) = v26;
      v13 = (v26 & 1) == 0;
    }

    v27 = [objc_opt_self() sharedPrivacyInfo];
    v28 = [v27 privacyAcknowledgementRequiredForMusic];

    BYTE8(v89) = v28 ^ 1;
    v29 = v77;
    if (sub_1000EE658(v20, v77))
    {
      sub_1001994AC(v87, 2);
    }

    if (qword_1005FFE20 != -1)
    {
      swift_once();
    }

    if ([qword_1006032D0 isRadioAvailable])
    {
      sub_1001994AC(v87, 4);
    }

    if (sub_1000EE878(v18, a1))
    {
      sub_1001994AC(v87, 3);
    }

    if (a1)
    {
      v30 = sub_1004BBE24();
      v31 = [a1 BOOLValueForBagKey:v30];

      if (v31)
      {
        sub_1001994AC(v87, 9);
      }
    }

    if (v18)
    {
      sub_1004BBE64();
      v32 = sub_1004BBE24();

      v33 = [v18 effectiveBoolValueForSetting:v32];

      if (v33 != 2)
      {
        sub_1001994AC(v87, 6);
      }

      sub_1004BBE64();
      v34 = sub_1004BBE24();

      v35 = [v18 effectiveBoolValueForSetting:v34];

      if (v35 != 2)
      {
        sub_1001994AC(v87, 0);
      }

      sub_1004BBE64();
      v36 = sub_1004BBE24();

      v37 = [v18 effectiveBoolValueForSetting:v36];

      if (v37 != 2)
      {
        sub_1001994AC(v87, 1);
      }

      sub_1004BBE64();
      v38 = sub_1004BBE24();

      v39 = [v18 effectiveBoolValueForSetting:v38];

      if (v39 != 2)
      {
        sub_1001994AC(v87, 5);
      }

      *&v91[40] = v20;
      v40 = v20;

      sub_1004BBE64();
      v41 = sub_1004BBE24();

      v42 = [v18 effectiveBoolValueForSetting:v41];

      if (v42 != 2)
      {
        sub_1001994AC(v87, 8);
      }

      sub_1004BBE64();
      v43 = sub_1004BBE24();

      v44 = [v18 isBoolSettingLockedDownByRestrictions:v43];

      v29 = v77;
      if (v44)
      {
        sub_1001994AC(v87, 7);
      }
    }

    else
    {
      *&v91[40] = v20;
      v45 = v20;
    }

    v46 = v90;
    sub_100003ABC(&unk_100603510, &unk_1004CDA80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    *(inited + 32) = 2;
    LOBYTE(v46) = sub_1000F113C(inited, v46);
    swift_setDeallocating();
    if (v46)
    {
      LOBYTE(v92) = v74;
      if (v20)
      {
        v48 = v20;
        if ([v48 statusType] == 3)
        {
          if (qword_1005FFE28 != -1)
          {
            swift_once();
          }

          v49 = sub_1004B80B4();
          sub_100007084(v49, qword_1006032D8);
          v50 = sub_1004B8094();
          v51 = sub_1004BC994();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&_mh_execute_header, v50, v51, "Unexpectedly found a Voice subscriber! 😡", v52, 2u);
            v29 = v77;
          }
        }
      }
    }

    else
    {
      v74 = 1;
    }

    if (a1)
    {
      v53 = v13;
    }

    else
    {
      v53 = 1;
    }

    if ((v53 & 1) == 0)
    {
      v54 = sub_1000EEA9C();
      if (v54 != 2 && (v54 & 1) != 0)
      {
        v55 = sub_1000EECF0();
        if (v55 != 2 && (v55 & 1) != 0)
        {
          sub_1001994AC(v87, 10);
        }
      }
    }

    v56 = v75;
    if (v75)
    {
      v57 = v75;
      if ([v57 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        v58 = 0;
      }

      else
      {
        v58 = [v57 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      v58 = 0;
    }

    BYTE1(v88) = v58;
    BYTE2(v88) = [v29 isCloudLibraryEnabled];
    v59 = a1;
    sub_1000F09FC(a1, v91);
    if (a3)
    {
      *&v87[0] = &off_1005A3CA8;
      sub_100022C94(&off_1005A3CD0);
      v60 = *&v87[0];
    }

    else
    {
      v61 = *(a2 + 16);
      __chkstk_darwin();
      os_unfair_lock_lock((v61 + 44));
      sub_1000F2D44((v61 + 16), v87);
      os_unfair_lock_unlock((v61 + 44));
      if (*&v87[0])
      {
        sub_1000F1578(v74, *&v87[0]);
        v60 = v62;

        v56 = v75;
      }

      else
      {
        v56 = v75;
        if (v74)
        {
          if (v74 == 1)
          {
            v60 = &off_1005A3A98;
          }

          else
          {
            *&v87[0] = &off_1005A3AE8;
            sub_100022C94(&off_1005A3B10);
            v60 = *&v87[0];
          }
        }

        else
        {
          v60 = &off_1005A3AC0;
        }
      }
    }

    v63 = sub_1000F01DC(v60, &v88);

    v65 = sub_1000F0BE8(v63, v64);
    LOBYTE(v63) = v66;
    v68 = v67;

    *(&v92 + 1) = v65;
    LOBYTE(v93) = v63;
    *(&v93 + 1) = v68;
    v83 = *&v91[16];
    v84 = *&v91[32];
    v79 = v88;
    v80 = v89;
    v81 = v90;
    v82 = *v91;
    v85 = v92;
    v86 = v93;
    v87[6] = v92;
    v87[7] = v93;
    v87[2] = v90;
    v87[3] = *v91;
    v87[0] = v88;
    v87[1] = v89;
    v87[4] = *&v91[16];
    v87[5] = *&v91[32];
    sub_1000F2B70(&v79, &v78);
    result = sub_100051DEC(v87);
    v69 = v84;
    a4[4] = v83;
    a4[5] = v69;
    v70 = v86;
    a4[6] = v85;
    a4[7] = v70;
    v71 = v80;
    *a4 = v79;
    a4[1] = v71;
    v72 = v82;
    a4[2] = v81;
    a4[3] = v72;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A4C20;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A4D48;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_1000F2448()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if ((*(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) & 1) == 0)
  {
    **(v0 + 24) = 1;
    *(v1 + v2) = 1;
  }
}

uint64_t sub_1000F2474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1000EB8AC(a1, v4, v5, v6);
}

unint64_t sub_1000F2534()
{
  result = qword_100603348;
  if (!qword_100603348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603348);
  }

  return result;
}

unint64_t sub_1000F258C()
{
  result = qword_100603350;
  if (!qword_100603350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603350);
  }

  return result;
}

__n128 sub_1000F25E8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1000F260C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F2654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Service(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F2814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000F2870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1000F28F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F293C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for ApplicationCapabilities.Controller(uint64_t a1)
{
  result = qword_100603390;
  if (!qword_100603390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F29E0(uint64_t a1)
{
  sub_1000F2AC0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000F2AC0()
{
  if (!qword_1006033A0)
  {
    v0 = sub_1004B85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1006033A0);
    }
  }
}

uint64_t sub_1000F2BA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000F2C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[21];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_1000ECEC8(a1, v4, v5, v6, (v1 + 5), v7);
}

unint64_t sub_1000F2CF0()
{
  result = qword_100603508;
  if (!qword_100603508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603508);
  }

  return result;
}

unint64_t sub_1000F2D60()
{
  result = qword_100603520;
  if (!qword_100603520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603520);
  }

  return result;
}

uint64_t sub_1000F2DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F2DFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000F2E34()
{
  v1 = sub_100003ABC(&qword_100603558, &unk_1004CDA90);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000F2F04(void *a1)
{
  sub_100003ABC(&qword_100603558, &unk_1004CDA90);
  v3 = *(v1 + 16);

  return sub_1000EE03C(a1, v3);
}

uint64_t sub_1000F2F84()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3030()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000F3070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1000EBEC0(a1, v4, v5, v6);
}

uint64_t sub_1000F3134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F314C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_1000F318C()
{
  result = qword_100603580;
  if (!qword_100603580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603580);
  }

  return result;
}

uint64_t sub_1000F3218()
{

  return swift_deallocObject();
}

id sub_1000F3268()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = v2;

  return v2;
}

unint64_t sub_1000F32BC()
{
  result = qword_1006035B8;
  if (!qword_1006035B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006035B8);
  }

  return result;
}

unint64_t sub_1000F3310(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A4DC8;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000F33C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BackgroundFetchManager(a1, a2);
  result = swift_initStaticObject();
  static BackgroundFetchManager.shared = result;
  return result;
}

uint64_t *BackgroundFetchManager.shared.unsafeMutableAddressor()
{
  if (qword_1005FFEA0 != -1)
  {
    swift_once();
  }

  return &static BackgroundFetchManager.shared;
}

uint64_t BackgroundFetchManager.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000F3CFC(a1, a2);
  if (*(v6 + 16) && (v7 = sub_1000346D4(a1, a2), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , *(v9 + 16)) && (v10 = sub_1000346D4(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    sub_100004DE4(*(v9 + 56) + 32 * v10, v14);

    if (swift_dynamicCast())
    {
      sub_1004B6AC4();
    }
  }

  else
  {
  }

  v13 = sub_1004B6B04();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

void (*BackgroundFetchManager.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = a3;
  v6 = *(*(sub_100003ABC(&qword_100600DE0, &unk_1004C66D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v6);
    v7 = malloc(v6);
  }

  a1[3] = v7;
  BackgroundFetchManager.subscript.getter(a2, a3, v7);
  return sub_1000F3660;
}

void sub_1000F3660(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_1000C8C40(a1[3], v2);

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v2, v5, v4);
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v3, v5, v4);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall BackgroundFetchManager.removeAll()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1004BBE24();
  [v0 removeObjectForKey:v1];
}

void sub_1000F379C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), int a4, int a5, int a6, dispatch_group_t group)
{
  if (a3)
  {
    a3(a1, a2);
  }

  if (a2)
  {
    __chkstk_darwin();
    swift_errorRetain();
    UnfairLock.locked<A>(_:)(sub_1000F5190);
  }

  dispatch_group_leave(group);
}

uint64_t sub_1000F3870(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10001856C(0, v4[2] + 1, 1, v4);
    *a1 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10001856C((v6 > 1), v7 + 1, 1, v4);
    *a1 = v4;
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  swift_endAccess();
  return swift_errorRetain();
}

uint64_t sub_1000F394C(uint64_t a1, uint64_t a2, void (*a3)())
{
  sub_100003ABC(&qword_100603668, &qword_1004CDBC8);
  UnfairLock.locked<A>(_:)(sub_1000F5134);
  a3();
}

void sub_1000F39E4()
{
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  v0 = v3;
  if (v3 && (sub_1000F3AE0(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x4122750000000000;
  }

  qword_1006035C0 = v2;
  byte_1006035C8 = v1;
}

uint64_t sub_1000F3AE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 valueForBagKey:ICURLBagKeyMusicCommon])
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v10[0] = v11;
  v10[1] = v12;
  if (!*(&v12 + 1))
  {
    result = sub_100007214(v10, &qword_100605110, &unk_1004CD280);
    goto LABEL_16;
  }

  sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 16) || (v4 = sub_1000346D4(0xD00000000000001ELL, 0x80000001004FF5E0), (v5 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100004DE4(*(v11 + 56) + 32 * v4, v10);

  sub_100003ABC(&qword_100602EC8, &qword_1004CD480);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    *a2 = 0;
    v9 = 1;
    goto LABEL_17;
  }

  v6 = v11;
  sub_1004BD3A4();
  if (!*(v6 + 16) || (v7 = sub_100034774(v10), (v8 & 1) == 0))
  {

    result = sub_10003D090(v10);
    goto LABEL_16;
  }

  sub_100004DE4(*(v6 + 56) + 32 * v7, &v11);
  sub_10003D090(v10);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  v9 = result ^ 1;
LABEL_17:
  *(a2 + 8) = v9;
  return result;
}

unint64_t sub_1000F3CFC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1004BBE24();
  v4 = [v2 dictionaryForKey:v3];

  if (v4)
  {
    v5 = sub_1004BBC44();

    sub_10029ACAC(v5);
    v7 = v6;

    if (v7)
    {
      return v7;
    }
  }

  else
  {
  }

  v9 = sub_10003D5AC(_swiftEmptyArrayStorage);

  return v9;
}

uint64_t _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v7 = &v28 - v6;
  v8 = sub_1004B6B04();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C8C40(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v12 = sub_100007214(v7, &qword_100600DE0, &unk_1004C66D0);
    v29 = sub_1000F3CFC(v12, v13);
    sub_100210408(a2, a3);

    v14 = [objc_opt_self() standardUserDefaults];
    sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
    isa = sub_1004BBC24().super.isa;

    v16 = sub_1004BBE24();
    [v14 setObject:isa forKey:v16];

    return sub_100007214(a1, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    *(inited + 32) = 7107189;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = sub_1004B6A04();
    *(inited + 56) = v19;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 1702125924;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 120) = sub_1004B6CD4();
    sub_1000133B0((inited + 96));
    sub_1004B6CC4();
    v20 = sub_10003C58C(inited);
    swift_setDeallocating();
    sub_100003ABC(&qword_100601C08, &qword_1004C95C0);
    v21 = swift_arrayDestroy();
    v23 = sub_1000F3CFC(v21, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v23;
    sub_100038568(v20, a2, a3, isUniquelyReferenced_nonNull_native);

    v25 = [objc_opt_self() standardUserDefaults];
    sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
    v26 = sub_1004BBC24().super.isa;

    v27 = sub_1004BBE24();
    [v25 setObject:v26 forKey:v27];

    sub_100007214(a1, &qword_100600DE0, &unk_1004C66D0);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = a5;
  v95 = a4;
  v78 = a3;
  v77 = a2;
  v101 = a1;
  v5 = sub_1004BA8F4();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin();
  v99 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1004BA924();
  v98 = *(v100 - 8);
  __chkstk_darwin();
  v97 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1004B64E4();
  v8 = *(v76 - 8);
  __chkstk_darwin();
  v82 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v90 = v70 - v10;
  v91 = sub_1004B6CD4();
  v11 = *(v91 - 8);
  __chkstk_darwin();
  v84 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = v70 - v13;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v107 = v70 - v14;
  v104 = sub_1004B6B04();
  v15 = *(v104 - 8);
  __chkstk_darwin();
  v81 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v70 - v17;
  v106 = dispatch_group_create();
  type metadata accessor for UnfairLock(0, v18);
  swift_allocObject();
  v105 = UnfairLock.init()();
  v19 = swift_allocObject();
  v21 = v19;
  *(v19 + 16) = _swiftEmptyArrayStorage;
  if (qword_1005FFEA8 != -1)
  {
LABEL_30:
    v19 = swift_once();
  }

  v22 = *&qword_1006035C0;
  v23 = sub_1000F3CFC(v19, v20);
  v24 = v23;
  v25 = 0;
  v26 = v23 + 64;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v23 + 64);
  v30 = (v27 + 63) >> 6;
  v93 = (v15 + 6);
  v89 = (v15 + 4);
  v88 = (v11 + 7);
  v86 = (v11 + 6);
  v83 = (v11 + 4);
  ++v11;
  v87 = (v15 + 1);
  v80 = (v15 + 2);
  v79 = "com.apple.mobileipod";
  v15 = &v110;
  v75 = (v8 + 8);
  v8 = v107;
  while (1)
  {
    while (1)
    {
      do
      {
        if (!v29)
        {
          while (1)
          {
            v31 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v31 >= v30)
            {

              v63 = swift_allocObject();
              v63[2] = v105;
              v63[3] = v21;
              v64 = v96;
              v63[4] = v95;
              v63[5] = v64;
              v112 = sub_1000F50D0;
              v113 = v63;
              aBlock = _NSConcreteStackBlock;
              v109 = 1107296256;
              v110 = sub_1000D6C80;
              v111 = &unk_1005B07C8;
              v65 = _Block_copy(&aBlock);

              v66 = v97;
              sub_1004BA914();
              v114 = _swiftEmptyArrayStorage;
              sub_1000F50DC();
              sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
              sub_1000E6118();
              v67 = v99;
              v68 = v103;
              sub_1004BD2D4();
              v69 = v106;
              sub_1004BCAE4();
              _Block_release(v65);

              (*(v102 + 8))(v67, v68);
              (*(v98 + 8))(v66, v100);
            }

            v29 = *(v26 + 8 * v31);
            ++v25;
            if (v29)
            {
              v25 = v31;
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_11:
        v32 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v33 = *(*(v24 + 56) + ((v25 << 9) | (8 * v32)));
      }

      while (!*(v33 + 16));

      v34 = sub_1000346D4(7107189, 0xE300000000000000);
      if (v35)
      {
        sub_100004DE4(*(v33 + 56) + 32 * v34, &aBlock);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v92 = v15;
    sub_1004B6AC4();

    v36 = v104;
    if ((*v93)(v8, 1, v104) == 1)
    {

      v37 = v8;
      v38 = &qword_100600DE0;
      v39 = &unk_1004C66D0;
      goto LABEL_22;
    }

    (*v89)(v94, v8, v36);
    v40 = v90;
    if (!*(v33 + 16) || (v41 = sub_1000346D4(1702125924, 0xE400000000000000), (v42 & 1) == 0))
    {

      (*v87)(v94, v104);
      (*v88)(v40, 1, 1, v91);
LABEL_21:
      v37 = v40;
      v38 = &qword_100603110;
      v39 = &qword_1004CD2B0;
LABEL_22:
      sub_100007214(v37, v38, v39);
      goto LABEL_23;
    }

    sub_100004DE4(*(v33 + 56) + 32 * v41, &aBlock);

    v43 = v91;
    v44 = swift_dynamicCast();
    (*v88)(v40, v44 ^ 1u, 1, v43);
    if ((*v86)(v40, 1, v43) == 1)
    {
      (*v87)(v94, v104);
      v8 = v107;
      goto LABEL_21;
    }

    (*v83)(v85, v40, v43);
    v45 = v84;
    sub_1004B6CC4();
    sub_1004B6C04();
    v47 = v46;
    v48 = v45;
    v49 = *v11;
    (*v11)(v48, v43);
    if (v47 < v22)
    {
      break;
    }

    v49(v85, v43);
    (*v87)(v94, v104);
    v8 = v107;
LABEL_23:
    v15 = v92;
  }

  v74 = v49;
  (*v80)(v81, v94, v104);
  sub_1004B64C4();
  v116._object = (v79 | 0x8000000000000000);
  v115._countAndFlagsBits = 1702195828;
  v115._object = 0xE400000000000000;
  v116._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1004B64D4(v115, v116);
  v50 = objc_allocWithZone(ICMusicKitRequestContext);
  v112 = sub_100134E98;
  v113 = 0;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_10011FE68;
  v111 = &unk_1005B0728;
  v51 = _Block_copy(&aBlock);
  v52 = [v50 initWithBlock:v51];
  _Block_release(v51);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    v73 = objc_allocWithZone(ICMusicKitURLRequest);
    v54 = sub_1004B64B4();
    v73 = [v73 initWithURLRequest:v54 requestContext:v52];

    dispatch_group_enter(v106);
    v72 = [objc_opt_self() highPrioritySession];
    v55 = swift_allocObject();
    v56 = v77;
    v57 = v78;
    v55[2] = v77;
    v55[3] = v57;
    v58 = v106;
    v55[4] = v105;
    v55[5] = v21;
    v55[6] = v58;
    v112 = sub_1000F5078;
    v113 = v55;
    aBlock = _NSConcreteStackBlock;
    v109 = 1107296256;
    v110 = sub_1000E26FC;
    v111 = &unk_1005B0778;
    v71 = _Block_copy(&aBlock);
    v70[1] = v113;
    sub_10002F518(v56, v57);

    v59 = v58;

    v60 = v72;
    v61 = v73;
    v62 = v71;
    [v72 enqueueDataRequest:v73 withCompletionHandler:v71];
    _Block_release(v62);

    (*v75)(v82, v76);
    v74(v85, v91);
    (*v87)(v94, v104);
    v8 = v107;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F4FD0()
{

  return swift_deallocObject();
}

uint64_t sub_1000F5008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F5020()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000F5088()
{

  return swift_deallocObject();
}

unint64_t sub_1000F50DC()
{
  result = qword_100606F40;
  if (!qword_100606F40)
  {
    sub_1004BA8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606F40);
  }

  return result;
}

double sub_1000F5134@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;

  return result;
}

id sub_1000F51BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BackgroundRefreshController(a1, a2);
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  result = [objc_allocWithZone(ICCloudClient) init];
  v2[4] = result;
  static BackgroundRefreshController.shared = v2;
  return result;
}

uint64_t *BackgroundRefreshController.shared.unsafeMutableAddressor()
{
  if (qword_1005FFEB0 != -1)
  {
    swift_once();
  }

  return &static BackgroundRefreshController.shared;
}

uint64_t static BackgroundRefreshController.shared.getter()
{
  if (qword_1005FFEB0 != -1)
  {
    swift_once();
  }
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_10002F518(v1, *(v0 + 24));
  return v1;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_10003CC4C(v5, v6);
}

Swift::Void __swiftcall BackgroundRefreshController.registerAllTasks()()
{
  v0 = sub_1004BC9A4();
  sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C50A0;
  *(v1 + 56) = &type metadata for String;
  v2 = sub_1000D60C4();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0xD00000000000002FLL;
  *(v1 + 40) = 0x80000001004FF660;
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  v3 = sub_1004BD144();
  sub_1004B7F84(v0, &_mh_execute_header, v3, "BackgroundRefreshController: REGISTER TASK: %@", 46, 2, v1);

  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_1004BBE24();
  aBlock[4] = sub_1000F5658;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C81CC;
  aBlock[3] = &unk_1005B07F0;
  v7 = _Block_copy(aBlock);
  [v5 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v7];
  _Block_release(v7);

  v8 = sub_1004BC9A4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C50A0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v2;
  *(v9 + 32) = 0xD000000000000041;
  *(v9 + 40) = 0x80000001004FF6F0;
  v10 = sub_1004BD144();
  sub_1004B7F84(v8, &_mh_execute_header, v10, "BackgroundRefreshController: CANCEL DEPRECATED TASK: %@", 55, 2, v9);

  v11 = [v4 sharedScheduler];
  v12 = sub_1004BBE24();
  [v11 cancelTaskRequestWithIdentifier:v12];
}

uint64_t sub_1000F5658(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFEB0 != -1)
  {
    swift_once();
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  return sub_1000F56D8(v2);
}

uint64_t sub_1000F56D8(void *a1)
{
  v3 = *v1;
  v4 = sub_1004BC9A4();
  sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C50A0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000D60C4();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x80000001004FF660;
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  v6 = sub_1004BD144();
  sub_1004B7F84(v4, &_mh_execute_header, v6, "BackgroundRefreshController: EXECUTING REFRESH SUBTASKS: %@", 59, 2, v5);

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v3;
  v8 = a1;
  sub_1000F6E54(sub_1000F9760, v7);
}

uint64_t sub_1000F5848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall BackgroundRefreshController.scheduleAllTasks()()
{
  v72 = *v0;
  v78 = sub_1004BA8F4();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v75 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1004BA924();
  v74 = *(v76 - 8);
  __chkstk_darwin();
  v73 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v96 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v71 - v4;
  v5 = sub_1004B6CD4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v71 - v8;
  __chkstk_darwin();
  v94 = &v71 - v9;
  __chkstk_darwin();
  v93 = &v71 - v10;
  __chkstk_darwin();
  v100 = &v71 - v11;
  __chkstk_darwin();
  v92 = &v71 - v12;
  __chkstk_darwin();
  v91 = &v71 - v13;
  __chkstk_darwin();
  v15 = &v71 - v14;
  __chkstk_darwin();
  v17 = (&v71 - v16);
  if (qword_1005FFEC0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v18 = off_100603678;
    sub_1004B6BF4();
    v83 = v6;
    v19 = *(v6 + 16);
    v82 = v17;
    v80 = v6 + 16;
    v79 = v19;
    v19(v15, v17, v5);
    v97 = v18;
    v84 = v18[2];
    if (v84)
    {
      v90 = objc_opt_self();
      v89 = (v83 + 56);
      v20 = (v83 + 48);
      v17 = (v83 + 8);
      v21 = v97 + 49;
      v98 = (v83 + 32);
      v87 = (v83 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v22 = v84;
      v88 = (v83 + 48);
      do
      {
        v99 = v22;
        v33 = *v21;
        v34 = [v90 standardUserDefaults];
        LOBYTE(v101) = v33;
        sub_1000F8B10();
        sub_10000E7F4();
        NSUserDefaults.subscript.getter(&aBlock);

        if (v104)
        {
          v35 = v95;
          v36 = swift_dynamicCast();
          (*v89)(v35, v36 ^ 1u, 1, v5);
        }

        else
        {
          sub_100007214(&aBlock, &qword_100605110, &unk_1004CD280);
          v35 = v95;
          (*v89)(v95, 1, 1, v5);
        }

        v37 = v96;
        sub_1000F8B64(v35, v96);
        v38 = *v20;
        if ((*v20)(v37, 1, v5) == 1)
        {
          v86 = v21;
          v39 = v93;
          sub_1004B6CC4();
          v40 = v38(v37, 1, v5);
          v21 = v86;
          if (v40 != 1)
          {
            sub_100007214(v37, &qword_100603110, &qword_1004CD2B0);
          }
        }

        else
        {
          v39 = v93;
          (*v98)(v93, v37, v5);
        }

        sub_100007214(v35, &qword_100603110, &qword_1004CD2B0);
        sub_1004B6C64();
        Kind = v17->Kind;
        (v17->Kind)(v39, v5);
        v42 = v94;
        sub_1004B6CC4();
        if (sub_1004B6C54())
        {
          v23 = v85;
          sub_1004B6C64();
          Kind(v42, v5);
          v24 = v100;
          Kind(v100, v5);
          v25 = *v98;
          (*v98)(v24, v23, v5);
        }

        else
        {
          Kind(v42, v5);
          v25 = *v98;
        }

        v26 = v99;
        v21 += 24;
        v27 = v92;
        v25(v92, v100, v5);
        sub_1000F968C(&qword_1006036B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v28 = sub_1004BBD54();
        v29 = (v28 & 1) == 0;
        if (v28)
        {
          v30 = v15;
        }

        else
        {
          v30 = v27;
        }

        if (v29)
        {
          v31 = v15;
        }

        else
        {
          v31 = v27;
        }

        Kind(v30, v5);
        v32 = v91;
        v25(v91, v31, v5);
        v25(v15, v32, v5);
        v22 = v26 - 1;
        v20 = v88;
      }

      while (v22);
    }

    v99 = swift_allocBox();
    v44 = v43;
    v6 = v83;
    v98 = *(v83 + 8);
    (v98)(v82, v5);
    v45 = *(v6 + 32);
    v100 = v44;
    v45(v44, v15, v5);
    if (!v84)
    {
LABEL_37:
      v51 = 0;
      goto LABEL_38;
    }

    if (v97[2])
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v46 = 0;
  v6 = 0;
  v47 = v97 + 50;
  v48 = v84 - 1;
  v17 = &type metadata for BackgroundTaskConfiguration.UserDefaultsKey;
  v15 = &type metadata for Bool;
  while ((v46 & 1) != 0)
  {
    if (v48 == v6)
    {
      goto LABEL_36;
    }

    v46 = 1;
LABEL_25:
    ++v6;
    v47 += 24;
    if (v6 >= v97[2])
    {
      goto LABEL_44;
    }
  }

  v49 = *v47;
  v50 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v101) = v49;
  sub_1000F8B10();
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&aBlock);

  if (!v104)
  {
    sub_100007214(&aBlock, &qword_100605110, &unk_1004CD280);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v46 = 0;
    v51 = 0;
    if (v48 == v6)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v46 = v101;
  if (v48 != v6)
  {
    goto LABEL_25;
  }

  if ((v101 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  v52 = v85;
  sub_1004B6CC4();
  (*(v83 + 40))(v100, v52, v5);
  v51 = 1;
LABEL_38:
  v53 = v85;
  v54 = v79;
  v79(v85, v100, v5);
  v55 = v81;
  sub_1004B6BF4();
  v56 = sub_1004B6C54();
  v57 = v98;
  (v98)(v55, v5);
  (v57)(v53, v5);
  if (v51 & 1) != 0 || (v56)
  {
    v58 = objc_allocWithZone(BGAppRefreshTaskRequest);
    v59 = sub_1004BBE24();
    v60 = [v58 initWithIdentifier:v59];

    v61 = v85;
    v54(v85, v100, v5);
    v62 = v60;
    isa = sub_1004B6C34().super.isa;
    (v57)(v61, v5);
    [v62 setEarliestBeginDate:isa];

    if (qword_1005FFEB8 != -1)
    {
      swift_once();
    }

    v64 = swift_allocObject();
    v65 = v99;
    *(v64 + 16) = v62;
    *(v64 + 24) = v65;
    *(v64 + 32) = v51;
    *(v64 + 40) = v72;
    v105 = sub_1000F8C14;
    v106 = v64;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v103 = sub_1000D6C80;
    v104 = &unk_1005B0840;
    v66 = _Block_copy(&aBlock);
    v67 = v62;

    v68 = v73;
    sub_1004BA914();
    v101 = _swiftEmptyArrayStorage;
    sub_1000F968C(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
    sub_1000F96D4(&qword_100606F50, &unk_100604C00, &qword_1004CDBC0);
    v69 = v75;
    v70 = v78;
    sub_1004BD2D4();
    sub_1004BCB54();
    _Block_release(v66);

    (*(v77 + 8))(v69, v70);
    (*(v74 + 8))(v68, v76);
  }
}

void sub_1000F653C(void *a1, uint64_t a2, int a3)
{
  v42 = a3;
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  v9 = sub_1004BC9A4();
  v41 = sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
  v10 = swift_allocObject();
  v40 = xmmword_1004C50C0;
  *(v10 + 16) = xmmword_1004C50C0;
  v11 = [a1 identifier];
  v12 = sub_1004BBE64();
  v14 = v13;

  *(v10 + 56) = &type metadata for String;
  v15 = sub_1000D60C4();
  *(v10 + 64) = v15;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_1004B6C84();
  v17 = v16;
  v18 = v16;
  (*(v5 + 8))(v7, v4);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v17 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  *(v10 + 96) = &type metadata for Int;
  *(v10 + 104) = &protocol witness table for Int;
  *(v10 + 72) = v17;
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  v19 = sub_1004BD144();
  sub_1004B7F84(v9, &_mh_execute_header, v19, "BackgroundRefreshController: SCHEDULING TASK: %@ EARLIEST BEGIN DATE %{time_t}d", 79, 2, v10);

  v20 = objc_opt_self();
  v21 = [v20 sharedScheduler];
  v43 = 0;
  v22 = [v21 submitTaskRequest:a1 error:&v43];

  if (v22)
  {
    v23 = v43;
    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v24 = v43;
    v25 = sub_1004B69B4();

    swift_willThrow();
    v26 = sub_1004BC984();
    v27 = swift_allocObject();
    *(v27 + 16) = v40;
    v28 = [a1 identifier];
    v29 = sub_1004BBE64();
    v31 = v30;

    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v15;
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    v43 = v25;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v32 = sub_1004BBF04();
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v15;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;
    v34 = sub_1004BD144();
    sub_1004B7F84(v26, &_mh_execute_header, v34, "BackgroundRefreshController: SCHEDULING TASK: %@ ERROR %@", 57, 2, v27);

    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  v35 = sub_1004BC9A4();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1004C50A0;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v15;
  *(v36 + 32) = 0xD00000000000002FLL;
  *(v36 + 40) = 0x80000001004FF660;
  v37 = sub_1004BD144();
  sub_1004B7F84(v35, &_mh_execute_header, v37, "BackgroundRefreshController: FORCING TASK: %@", 45, 2, v36);

  v38 = [v20 sharedScheduler];
  v39 = sub_1004BBE24();
  [v38 _simulateLaunchForTaskWithIdentifier:v39];
}

uint64_t sub_1000F6A10(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1004BA8F4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BA924();
  v10 = *(v18 - 8);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFEB8 != -1)
  {
    swift_once();
  }

  v17[1] = qword_100603670;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_1000F99FC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005B0B08;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  sub_1004BA914();
  v19 = _swiftEmptyArrayStorage;
  sub_1000F968C(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000F96D4(&qword_100606F50, &unk_100604C00, &qword_1004CDBC0);
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_1000F6D10(void *a1, char a2)
{
  if (a2)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  [a1 setTaskCompletedWithSuccess:a2 & 1];
  v4 = sub_1004BC984();
  sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C50C0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_1000D60C4();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x80000001004FF660;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 64) = v6;
  *(v5 + 72) = v2;
  *(v5 + 80) = v3;
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  v7 = sub_1004BD144();
  sub_1004B7F84(v4, &_mh_execute_header, v7, "BackgroundRefreshController: COMPLETED REFRESH SUBTASKS: %@ SUCCESS: %@", 71, 2, v5);
}

uint64_t sub_1000F6E54(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  v2 = sub_1004BA8F4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BA924();
  v62 = *(v5 - 8);
  __chkstk_darwin();
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v77 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  v10 = sub_1004B6CD4();
  v67 = *(v10 - 8);
  __chkstk_darwin();
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v58 - v12;
  __chkstk_darwin();
  v75 = &v58 - v13;
  __chkstk_darwin();
  v74 = &v58 - v14;
  __chkstk_darwin();
  v73 = &v58 - v15;
  __chkstk_darwin();
  v78 = &v58 - v16;
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v96[4] = v92;
  v96[5] = v93;
  v97 = v94;
  v98 = v95;
  v96[0] = v88;
  v96[1] = v89;
  v96[2] = v90;
  v96[3] = v91;
  sub_100051DEC(v96);
  v65 = v3;
  v66 = v2;
  v64 = v5;
  if (v97 == 2)
  {
    v84 = 1;
  }

  else
  {
    v84 = sub_1004BD9C4();
  }

  sub_1004B6CC4();
  v80 = dispatch_group_create();
  v81 = swift_allocObject();
  *(v81 + 16) = 1;
  type metadata accessor for UnfairLock(0, v17);
  swift_allocObject();
  v79 = UnfairLock.init()();
  if (qword_1005FFEC0 != -1)
  {
    swift_once();
  }

  v18 = off_100603678;
  v19 = *(off_100603678 + 2);
  if (v19)
  {
    v86 = objc_opt_self();
    v71 = (v67 + 48);
    v72 = (v67 + 56);
    v20 = v18 + 50;
    v82 = (v67 + 32);
    v83 = v9;
    v69 = (v67 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v70 = (v67 + 8);
    do
    {
      v85 = *(v20 - 18);
      v24 = *v20;
      if (v84 & 1 | ((*(v20 - 17) & 1) == 0))
      {
        v25 = *(v20 - 10);
        v26 = *(v20 - 1);
        v27 = [v86 standardUserDefaults];
        LOBYTE(v87) = v26;
        sub_1000F8B10();
        sub_10000E7F4();
        NSUserDefaults.subscript.getter(&v88);

        if (*(&v89 + 1))
        {
          v28 = swift_dynamicCast();
          (*v72)(v9, v28 ^ 1u, 1, v10);
        }

        else
        {
          sub_100007214(&v88, &qword_100605110, &unk_1004CD280);
          (*v72)(v9, 1, 1, v10);
        }

        v30 = v77;
        v31 = v71;
        sub_1000F8B64(v9, v77);
        v32 = *v31;
        if ((*v31)(v30, 1, v10) == 1)
        {
          v33 = v75;
          sub_1004B6CC4();
          if (v32(v30, 1, v10) != 1)
          {
            sub_100007214(v30, &qword_100603110, &qword_1004CD2B0);
          }
        }

        else
        {
          v33 = v75;
          (*v82)(v75, v30, v10);
        }

        sub_100007214(v9, &qword_100603110, &qword_1004CD2B0);
        v34 = v74;
        sub_1004B6C64();
        v35 = *v70;
        (*v70)(v33, v10);
        v36 = v76;
        sub_1004B6CC4();
        if (sub_1004B6C54())
        {
          v37 = v68;
          sub_1004B6C64();
          v35(v36, v10);
          v35(v34, v10);
          v38 = *v82;
          (*v82)(v34, v37, v10);
        }

        else
        {
          v35(v36, v10);
          v38 = *v82;
        }

        v39 = v73;
        v38(v73, v34, v10);
        sub_1000F968C(&qword_1006036B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v40 = sub_1004BBD54();
        v35(v39, v10);
        v29 = (v25 > 0.0) & ~v40;
      }

      else
      {
        v29 = 0;
      }

      v41 = [v86 standardUserDefaults];
      LOBYTE(v87) = v24;
      v42 = sub_1000F8B10();
      v43 = sub_10000E7F4();
      NSUserDefaults.subscript.getter(&v88);

      if (*(&v89 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v87)
        {
          v44 = [v86 standardUserDefaults];
          *(&v89 + 1) = &type metadata for Bool;
          LOBYTE(v88) = 0;
          LOBYTE(v87) = v24;
          NSUserDefaults.subscript.setter(&v88, &v87, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v42, v43);

LABEL_32:
          v45 = v80;
          dispatch_group_enter(v80);
          if (v85)
          {
            v21 = swift_allocObject();
            v22 = v81;
            v21[2] = v79;
            v21[3] = v22;
            v21[4] = v45;

            v23 = v45;
            sub_1000F7EC4(sub_1000F9848, v21);
          }

          else
          {
            v46 = swift_allocObject();
            v47 = v81;
            v46[2] = v79;
            v46[3] = v47;
            v46[4] = v45;

            v48 = v45;
            sub_1000F7B5C(sub_1000F9B3C, v46);
          }

          goto LABEL_12;
        }
      }

      else
      {
        sub_100007214(&v88, &qword_100605110, &unk_1004CD280);
      }

      if (v29)
      {
        goto LABEL_32;
      }

LABEL_12:
      v20 += 24;
      --v19;
      v9 = v83;
    }

    while (v19);
  }

  if (qword_1005FFEB8 != -1)
  {
    swift_once();
  }

  v86 = qword_100603670;
  v49 = swift_allocObject();
  v50 = v81;
  v49[2] = v79;
  v49[3] = v50;
  v51 = v60;
  v49[4] = v59;
  v49[5] = v51;
  *&v90 = sub_1000F97C8;
  *(&v90 + 1) = v49;
  *&v88 = _NSConcreteStackBlock;
  *(&v88 + 1) = 1107296256;
  *&v89 = sub_1000D6C80;
  *(&v89 + 1) = &unk_1005B09F0;
  v52 = _Block_copy(&v88);

  v53 = v61;
  sub_1004BA914();
  v87 = _swiftEmptyArrayStorage;
  sub_1000F968C(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000F96D4(&qword_100606F50, &unk_100604C00, &qword_1004CDBC0);
  v54 = v63;
  v55 = v66;
  sub_1004BD2D4();
  v56 = v80;
  sub_1004BCAE4();
  _Block_release(v52);

  (*(v65 + 8))(v54, v55);
  (*(v62 + 8))(v53, v64);
  (*(v67 + 8))(v78, v10);
}

uint64_t sub_1000F7AEC(_BYTE *a1, char a2)
{
  swift_beginAccess();
  v4 = *a1 & a2;
  result = swift_beginAccess();
  *a1 = v4 & 1;
  return result;
}

void sub_1000F7B5C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_1004B6CD4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFEC8 != -1)
  {
    swift_once();
  }

  v7 = word_100603680;
  v8 = HIBYTE(word_100603680);
  v9 = qword_100603688;
  v10 = word_100603690;
  v11 = HIBYTE(word_100603690);
  HIDWORD(v26) = byte_100603692;
  sub_1004B6CC4();
  v12 = [objc_opt_self() standardUserDefaults];
  v30 = v3;
  v13 = sub_1000133B0(aBlock);
  (*(v4 + 16))(v13, v6, v3);
  v33 = v11;
  v14 = sub_1000F8B10();
  v15 = sub_10000E7F4();
  NSUserDefaults.subscript.setter(aBlock, &v33, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v14, v15);

  (*(v4 + 8))(v6, v3);
  v16 = sub_1004BC9A4();
  sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
  v17 = swift_allocObject();
  v18 = v17;
  *(v17 + 16) = xmmword_1004C50A0;
  v19 = "updateSubscribedPlaylists";
  if (v7)
  {
    v20 = 0xD000000000000018;
  }

  else
  {
    v20 = 0xD000000000000019;
  }

  if (!v7)
  {
    v19 = "allowsPumpkinContent";
  }

  v21 = v19 | 0x8000000000000000;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_1000D60C4();
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  v22 = sub_1004BD144();
  sub_1004B7F84(v16, &_mh_execute_header, v22, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v18);

  v23 = *(v27 + 32);
  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  *(v24 + 17) = v8;
  *(v24 + 24) = v9;
  *(v24 + 32) = v10;
  *(v24 + 33) = v11;
  *(v24 + 34) = BYTE4(v26);
  *(v24 + 40) = v28;
  *(v24 + 48) = a2;
  v31 = sub_1000F98D4;
  v32 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001460EC;
  v30 = &unk_1005B0A90;
  v25 = _Block_copy(aBlock);

  [v23 updatePinnedSubscribedPlaylistsWithCompletion:v25];
  _Block_release(v25);
}

uint64_t sub_1000F7EC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v5 = sub_1004B6CD4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFED0 != -1)
  {
    swift_once();
  }

  v9 = word_100603698;
  v10 = qword_1006036A0;
  v29 = byte_1006036A8;
  v30 = HIBYTE(word_100603698);
  v11 = byte_1006036A9;
  v12 = byte_1006036AA;
  sub_1004B6CC4();
  v13 = [objc_opt_self() standardUserDefaults];
  v33[3] = v5;
  v14 = sub_1000133B0(v33);
  (*(v6 + 16))(v14, v8, v5);
  v32 = v11;
  v15 = sub_1000F8B10();
  v16 = sub_10000E7F4();
  NSUserDefaults.subscript.setter(v33, &v32, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v15, v16);

  (*(v6 + 8))(v8, v5);
  v17 = sub_1004BC9A4();
  sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_1004C50A0;
  v20 = "updateSubscribedPlaylists";
  if (v9)
  {
    v21 = 0xD000000000000018;
  }

  else
  {
    v21 = 0xD000000000000019;
  }

  if (!v9)
  {
    v20 = "allowsPumpkinContent";
  }

  v22 = v20 | 0x8000000000000000;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_1000D60C4();
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  v23 = sub_1004BD144();
  sub_1004B7F84(v17, &_mh_execute_header, v23, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v19);

  if (qword_1005FFEB8 != -1)
  {
    swift_once();
  }

  v24 = qword_100603670;
  v25 = swift_allocObject();
  *(v25 + 16) = v9;
  v26 = v29;
  *(v25 + 17) = v30;
  *(v25 + 24) = v10;
  *(v25 + 32) = v26;
  *(v25 + 33) = v11;
  *(v25 + 34) = v12;
  *(v25 + 40) = v31;
  *(v25 + 48) = a2;

  _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(v24, sub_1000F98EC, v3, sub_1000F98F4, v25);
}

uint64_t sub_1000F8228(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v7 = 0xD000000000000018;
  if (a1)
  {
    swift_errorRetain();
    v8 = sub_1004BC984();
    sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_1004C50C0;
    v11 = "updateSubscribedPlaylists";
    if ((a2 & 1) == 0)
    {
      v7 = 0xD000000000000019;
      v11 = "allowsPumpkinContent";
    }

    v12 = v11 | 0x8000000000000000;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_1000D60C4();
    v10[8] = v13;
    v10[4] = v7;
    v10[5] = v12;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v14 = sub_1004BBF04();
    v10[12] = &type metadata for String;
    v10[13] = v13;
    v10[9] = v14;
    v10[10] = v15;
    sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
    v16 = sub_1004BD144();
    sub_1004B7F84(v8, &_mh_execute_header, v16, "BackgroundRefreshController: COMPLETED SUBTASK: %@ ERROR %@", 59, 2, v10);
  }

  else
  {
    v17 = sub_1004BC984();
    sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
    v18 = swift_allocObject();
    v19 = v18;
    *(v18 + 16) = xmmword_1004C50A0;
    v20 = "updateSubscribedPlaylists";
    v21 = (a2 & 1) == 0;
    if (a2)
    {
      v22 = 0xD000000000000018;
    }

    else
    {
      v22 = 0xD000000000000019;
    }

    if (v21)
    {
      v20 = "allowsPumpkinContent";
    }

    v23 = v20 | 0x8000000000000000;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000D60C4();
    *(v19 + 32) = v22;
    *(v19 + 40) = v23;
    sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
    v24 = sub_1004BD144();
    sub_1004B7F84(v17, &_mh_execute_header, v24, "BackgroundRefreshController: COMPLETED SUBTASK: %@ SUCCESS", 58, 2, v19);
  }

  return a4(a1 == 0);
}

uint64_t sub_1000F8488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {

    v6(a1);
  }

  return result;
}

uint64_t sub_1000F84F8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v6 = sub_1004BC9A4();
  sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_1004C50A0;
  v9 = "updateSubscribedPlaylists";
  if (a2)
  {
    v10 = 0xD000000000000018;
  }

  else
  {
    v10 = 0xD000000000000019;
  }

  if ((a2 & 1) == 0)
  {
    v9 = "allowsPumpkinContent";
  }

  v11 = v9 | 0x8000000000000000;
  *(v7 + 56) = &type metadata for String;
  v12 = sub_1000D60C4();
  v8[8] = v12;
  v8[4] = v10;
  v8[5] = v11;
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  v13 = sub_1004BD144();
  sub_1004B7F84(v6, &_mh_execute_header, v13, "BackgroundRefreshController: COMPLETED SUBTASK: %@", 50, 2, v8);

  v23 = *(a1 + 16);
  if (v23)
  {
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    do
    {
      v14 += 8;
      swift_errorRetain();
      v16 = sub_1004BC984();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1004C50C0;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = v12;
      *(v17 + 32) = v10;
      *(v17 + 40) = v11;
      swift_errorRetain();
      sub_100003ABC(&qword_100604C30, &qword_1004C8490);
      v18 = sub_1004BBF04();
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v12;
      *(v17 + 72) = v18;
      *(v17 + 80) = v19;
      v20 = sub_1004BD144();
      sub_1004B7F84(v16, &_mh_execute_header, v20, "BackgroundRefreshController: ERROR EXECUTING SUBTASK: %@ ERROR %@", 65, 2, v17);

      --v15;
    }

    while (v15);
  }

  return a4(v23 == 0);
}

uint64_t sub_1000F8720()
{
  v5 = sub_1004BCB34();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BCAF4();
  __chkstk_darwin();
  sub_1004BA924();
  __chkstk_darwin();
  v4[1] = sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  sub_1004BA914();
  v6 = _swiftEmptyArrayStorage;
  sub_1000F968C(&qword_100603770, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003ABC(&qword_100603778, &qword_1004CDD68);
  sub_1000F96D4(&qword_100603780, &qword_100603778, &qword_1004CDD68);
  sub_1004BD2D4();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  result = sub_1004BCB74();
  qword_100603670 = result;
  return result;
}

uint64_t BackgroundRefreshController.deinit()
{
  sub_10003CC4C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t BackgroundRefreshController.__deallocating_deinit()
{
  sub_10003CC4C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double sub_1000F89E8()
{
  sub_100003ABC(&qword_100603788, &qword_1004CDD70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50C0;
  if (qword_1005FFEC8 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v1 = HIBYTE(word_100603680);
  v2 = qword_100603688;
  v3 = word_100603690;
  v4 = *(&word_100603690 + 1);
  *(v0 + 32) = word_100603680;
  *(v0 + 33) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 49) = v4;
  if (qword_1005FFED0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v5 = HIBYTE(word_100603698);
  result = *&qword_1006036A0;
  v7 = byte_1006036A8;
  v8 = *&byte_1006036A9;
  *(v0 + 56) = word_100603698;
  *(v0 + 57) = v5;
  *(v0 + 64) = result;
  *(v0 + 72) = v7;
  *(v0 + 73) = v8;
  off_100603678 = v0;
  return result;
}

unint64_t sub_1000F8B10()
{
  result = qword_1006036B0;
  if (!qword_1006036B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006036B0);
  }

  return result;
}

uint64_t sub_1000F8B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F8BD4()
{

  return swift_deallocObject();
}

uint64_t sub_1000F8C48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F8C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F8CF0()
{
  result = qword_100603768;
  if (!qword_100603768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603768);
  }

  return result;
}

void sub_1000F8D44()
{
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_1000F3384);

  word_100603680 = 256;
  qword_100603688 = 0x40E5180000000000;
  word_100603690 = 257;
  byte_100603692 = 0;
}

void sub_1000F8E24()
{
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  v0 = v3;
  if (v3 && (sub_1000F8F30(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x40D5180000000000;
  }

  word_100603698 = 257;
  qword_1006036A0 = v2;
  byte_1006036A8 = v1;
  *&byte_1006036A9 = 515;
}

void sub_1000F8F30(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BBE24();
  v5 = [a1 dictionaryForBagKey:v4];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = sub_1004BBC44();

  sub_10029A734(v6);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_12;
  }

  if (!*(v8 + 16))
  {
    goto LABEL_11;
  }

  v9 = sub_1000346D4(0xD00000000000001ELL, 0x80000001004FF5E0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_100004DE4(*(v8 + 56) + 32 * v9, v16);

  sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a2 = 0;
    v14 = 1;
    goto LABEL_13;
  }

  if (!*(v15 + 16) || (v11 = sub_1000346D4(0xD00000000000001DLL, 0x80000001004FF8A0), (v12 & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_100004DE4(*(v15 + 56) + 32 * v11, v16);

  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    *a2 = 0;
  }

  v14 = v13 ^ 1;
LABEL_13:
  *(a2 + 8) = v14;
}

uint64_t sub_1000F90EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "allowsPumpkinContent";
  }

  else
  {
    v4 = "updateSubscribedPlaylists";
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*a2)
  {
    v6 = "updateSubscribedPlaylists";
  }

  else
  {
    v6 = "allowsPumpkinContent";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_1000F9194()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000F9210(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_1000F9278()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000F92F0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A4E48;
  v8._object = v3;
  v5 = sub_1004BD764(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000F9350(unint64_t *a1@<X8>)
{
  v2 = "updateSubscribedPlaylists";
  v3 = 0xD000000000000018;
  if (!*v1)
  {
    v3 = 0xD000000000000019;
    v2 = "allowsPumpkinContent";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int sub_1000F9398()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000F944C(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_1000F94EC()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1000F959C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F9640(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000F95CC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "ribedPlaylistsDate";
  if (v2 == 2)
  {
    v4 = 0xD000000000000028;
  }

  else
  {
    v4 = 0xD000000000000027;
  }

  if (v2 != 2)
  {
    v3 = "efreshServerLandingPages";
  }

  v5 = 0xD000000000000032;
  if (*v1)
  {
    v6 = "efreshPinnedSubscribedPlaylists";
  }

  else
  {
    v5 = 0xD00000000000002FLL;
    v6 = "updateServerLandingPages";
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v4;
    v7 = v3;
  }

  *a1 = v5;
  a1[1] = v7 | 0x8000000000000000;
}

unint64_t sub_1000F9640(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A4E98;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000F968C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F96D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F9728()
{

  return swift_deallocObject();
}

uint64_t sub_1000F9780()
{

  return swift_deallocObject();
}

uint64_t sub_1000F97C8()
{
  v1 = *(v0 + 32);
  UnfairLock.locked<A>(_:)(sub_1000F996C);
  return v1(v3);
}

uint64_t sub_1000F9854()
{

  return swift_deallocObject();
}

uint64_t sub_1000F989C()
{

  return swift_deallocObject();
}

uint64_t sub_1000F990C(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, __n128), __n128 a3)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  a3.n128_u64[0] = *(v3 + 24);
  return a2(a1, v4 | *(v3 + 16), *(v3 + 32) | (*(v3 + 33) << 8) | (*(v3 + 34) << 16), *(v3 + 40), *(v3 + 48), a3);
}

uint64_t sub_1000F996C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  *a1 = *v3;
  return result;
}

uint64_t sub_1000F99C4()
{

  return swift_deallocObject();
}

__n128 initializeBufferWithCopyOfBuffer for BackgroundTaskConfiguration(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000F9AD0()
{
  result = qword_100603790[0];
  if (!qword_100603790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100603790);
  }

  return result;
}

uint64_t BagControlledValue.init(fallback:reader:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a1;
  v6 = sub_1004BD174();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(a3 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  v15 = v22;
  if (!v22)
  {
    goto LABEL_6;
  }

  v20(v22);

  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    *(a4 + *(type metadata accessor for BagControlledValue(0, a3, v13, v14) + 28)) = 1;
    return (*(v10 + 32))(a4, v21, a3);
  }

  (*(v10 + 8))(v21, a3);
  v17 = *(v10 + 32);
  v17(v12, v9, a3);
  *(a4 + *(type metadata accessor for BagControlledValue(0, a3, v18, v19) + 28)) = 0;
  return (v17)(a4, v12, a3);
}

Swift::Int sub_1000F9E34()
{
  sub_1004BDBA4();
  LaunchURL.Resolver.PerformOption.hash(into:)(v2, *v0);
  return sub_1004BDBF4();
}

uint64_t sub_1000F9EB0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for BagControlledValue.Source(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F9F3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
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
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
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

unsigned int *sub_1000FA0A4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t *BagProvider.shared.unsafeMutableAddressor()
{
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  return &static BagProvider.shared;
}

uint64_t BagProvider.createObserver(handler:)(void (*a1)(void), uint64_t a2)
{
  type metadata accessor for BagProvider.Observer(a1, a2);
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  swift_weakAssign();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;

  sub_10003CC4C(v5, v6);
  UnfairLock.locked<A>(_:)(sub_1000DF904);
  sub_1000FAAD0(0);
  return v4;
}

uint64_t BagProvider.bag.getter()
{
  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_1000FAD50);
  return v1;
}

void BagProvider.getBag(completion:)(void (*a1)(), uint64_t a2)
{
  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_1000FCDEC);
  if (v11)
  {
    a1();
  }

  else
  {
    type metadata accessor for BagProvider.Observer(v4, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    swift_weakAssign();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    v8[5] = v6;
    v9 = *(v6 + 24);
    v10 = *(v6 + 32);
    *(v6 + 24) = sub_1000F2FCC;
    *(v6 + 32) = v8;

    sub_10003CC4C(v9, v10);

    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_1000F2FD8);
    sub_1000FAAD0(0);
  }
}

void sub_1000FA68C()
{
  if (qword_1005FFF78 != -1)
  {
    swift_once();
  }

  v0 = static ICClientInfo.music;
  type metadata accessor for BagProvider(0);
  swift_allocObject();
  v1 = v0;
  v2 = sub_1000FC4E8(v1);

  static BagProvider.shared = v2;
}

uint64_t static BagProvider.shared.getter()
{
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }
}

_BYTE *sub_1000FA798@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  v3 = &result[OBJC_IVAR____TtC9MusicCore11BagProvider_result];
  if (result[OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8] == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1000FA7F4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __chkstk_darwin();
    sub_100003ABC(&unk_100603B90, &qword_1004CE670);
    UnfairLock.locked<A>(_:)(sub_1000FC390);
  }

  return result;
}

uint64_t sub_1000FA8EC@<X0>(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (!result)
  {
    goto LABEL_6;
  }

  v8 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  v9 = sub_1000FC840((v7 + v8), a2);
  if (!v3)
  {
    v10 = v9;

    v11 = *(v7 + v8);
    if (v11 >> 62)
    {
      v12 = sub_1004BD6A4();
      if (v12 >= v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= v10)
      {
LABEL_5:
        sub_10003E2D4(v10, v12);
        swift_endAccess();

LABEL_6:
        *a3 = v7 == 0;
        return result;
      }
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1000FAA10(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  sub_1004BC274();
  if (*((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  return swift_endAccess();
}

void sub_1000FAAD0(char a1)
{
  v2 = v1;
  UnfairLock.locked<A>(_:)(sub_1000FCA68);
  if (LOBYTE(aBlock[0]) == 1)
  {
    UnfairLock.locked<A>(_:)(sub_1000FCAA0);
    v4 = [objc_opt_self() activeAccount];
    v5 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v4 clientInfo:*(v1 + 16)];

    v6 = [objc_opt_self() sharedBagProvider];
    aBlock[4] = sub_1000FCAB4;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E26FC;
    aBlock[3] = &unk_1005B0DF0;
    v7 = _Block_copy(aBlock);

    [v6 getBagForRequestContext:v5 forceRefetch:a1 & 1 withCompletionHandler:v7];
    _Block_release(v7);
  }
}

void sub_1000FAC90(uint64_t a1, uint64_t a2, void **a3)
{
  swift_beginAccess();
  v6 = sub_100003ABC(&qword_100603B88, &unk_1004CE020);
  WeakArray.append(_:)(a2, v6);
  swift_endAccess();
  v7 = 0;
  v8 = (a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v7 = *v8;
    v9 = *v8;
  }

  v10 = *a3;
  *a3 = v7;
}

id sub_1000FAD50@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1000FADAC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000FADE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000FAE34@<X0>(uint64_t a1@<X8>)
{
  sub_100003ABC(&qword_1006038C0, qword_1004D72F0);
  __chkstk_darwin();
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost;
  swift_beginAccess();
  sub_1000FCB6C(v1 + v7, v6);
  v8 = type metadata accessor for Signpost(0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_1000FCCB0(v6, a1);
  }

  sub_1000FC008(v6);
  if (qword_1005FFF20 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.musicBag;

  Signpost.init(name:object:log:)("Bag", 3, 2, v10, a1);
  sub_1000FCBDC(a1, v4);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_1000FCC40(v4, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_1000FB040(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000FB098();
  }

  return result;
}

void sub_1000FB098()
{
  UnfairLock.locked<A>(_:)(sub_1000FCD1C);

  if (v4 == 1)
  {
    UnfairLock.locked<A>(_:)(sub_1000FCD60);
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_1000FCDD4);

    v0 = sub_1004B8094();
    v1 = sub_1004BC9A4();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, v1, "Notification triggered to update bag: storefrontChanged", v2, 2u);
    }

    sub_1000FAAD0(1);
  }
}

void sub_1000FB234(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + OBJC_IVAR____TtC9MusicCore11BagProvider_lock);
  UnfairLock.locked<A>(_:)(sub_1000FCAD4);
  if (v27)
  {
    sub_1000FAAD0(1);
    v9 = sub_1000FCDBC;
LABEL_19:
    UnfairLock.locked<A>(_:)(v9);
    return;
  }

  v10 = a1;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    swift_errorRetain();
    v10 = sub_1004B69A4();

    v11 = v10;
  }

  v27 = _swiftEmptyArrayStorage;
  __chkstk_darwin();
  *(&v23 - 4) = a3;
  *(&v23 - 3) = v10;
  LOBYTE(v21) = v12;
  BYTE1(v21) = 1;
  v22 = &v27;
  v13 = a1;
  UnfairLock.locked<A>(_:)(sub_1000FCAE8);
  if (!a1)
  {
    goto LABEL_18;
  }

  v14 = v27;
  if (v27 >> 62)
  {
    v15 = sub_1004BD6A4();
    if (!v15)
    {
LABEL_18:

      sub_1000FAE34(v7);
      Signpost.end(dso:)(&_mh_execute_header);

      sub_1000FCB00(v7);
      v9 = sub_1000FCB5C;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v25 = v7;
  v26 = v8;
  if (v15 >= 1)
  {
    v24 = v10;
    v16 = v10;
    v17 = 0;
    while ((v14 & 0xC000000000000001) == 0)
    {
      v18 = *(v14 + 8 * v17 + 32);

      v19 = *(v18 + 24);
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_11:
      ++v17;

      if (v15 == v17)
      {

        v7 = v25;
        v10 = v24;
        goto LABEL_18;
      }
    }

    v18 = sub_1004BD484();
    v19 = *(v18 + 24);
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_16:
    v20 = *(v18 + 32);

    v19(v16);
    sub_10003CC4C(v19, v20);
    goto LABEL_11;
  }

  __break(1u);
LABEL_23:
  LODWORD(v22) = 0;
  v21 = 149;
  sub_1004BD624();
  __break(1u);
}

uint64_t sub_1000FB580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = sub_100003ABC(&qword_100603B88, &unk_1004CE020);
  WeakArray.remove(_:)(a2, v3);
  return swift_endAccess();
}

void sub_1000FB604()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) != 1)
    {
      return;
    }

    v3 = v2;
    v4 = sub_1004B8094();
    v5 = sub_1004BC9A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully loaded a bag from iTunesCloud", v6, 2u);
    }

    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v7;
    sub_1000FBAC8(Strong, v10);
  }

  else
  {
    v3 = v2;
    v11 = sub_1004B8094();
    v12 = sub_1004BC984();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = [v3 code];
      _os_log_impl(&_mh_execute_header, v11, v12, "Error retrieving bag: %ld", v13, 0xCu);
    }

    v14 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    v15 = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v14;
    sub_1000FBAC8(v15, v16);
  }
}

void sub_1000FB824(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v7 = a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  v8 = *(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  *v7 = a2;
  *(v7 + 8) = a3;
  v9 = a2;

  sub_1000FB604();
  if (a4)
  {
    v10 = swift_beginAccess();
    v12 = type metadata accessor for BagProvider.Observer(v10, v11);

    v16 = WeakArray.allElements.getter(v13, v12, v14, v15);

    swift_beginAccess();

    sub_100022FD4(v17);
    *a5 = v16;
  }
}

uint64_t BagProvider.Observer.deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_1000FB9DC);
  }

  swift_weakDestroy();
  sub_10003CC4C(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t BagProvider.Observer.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_1000FCDA4);
  }

  swift_weakDestroy();
  sub_10003CC4C(*(v0 + 24), *(v0 + 32));
  return swift_deallocClassInstance();
}

void sub_1000FBAC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1004B80B4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v22 - v9;
  Strong = swift_weakLoadStrong();
  if (!a1)
  {
    if (!Strong)
    {
      return;
    }

LABEL_7:
    if (swift_weakLoadStrong())
    {

      v13 = swift_weakLoadStrong();
      if (v13)
      {
        (*(v6 + 16))(v10, v13 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v5);

        v14 = sub_1004B8094();
        v15 = sub_1004BC9A4();
        if (!os_log_type_enabled(v14, v15))
        {
          v17 = &selRef_registerObserver_;
          goto LABEL_19;
        }

        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Beginning observation to retry loading bag", v16, 2u);
        v17 = &selRef_registerObserver_;
LABEL_14:

LABEL_19:

        (*(v6 + 8))(v10, v5);
        goto LABEL_20;
      }

      v17 = &selRef_registerObserver_;
    }

    else
    {
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        (*(v6 + 16))(v8, v18 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v5);

        v14 = sub_1004B8094();
        v19 = sub_1004BC9A4();
        if (!os_log_type_enabled(v14, v19))
        {
          v17 = &selRef_unregisterObserver_;
          v10 = v8;
          goto LABEL_19;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v14, v19, "Stopping observation to retry loading bag", v20, 2u);
        v17 = &selRef_unregisterObserver_;
        v10 = v8;
        goto LABEL_14;
      }

      v17 = &selRef_unregisterObserver_;
    }

LABEL_20:
    v21 = [objc_opt_self() sharedMonitor];
    [v21 *v17];

    return;
  }

  if (!Strong)
  {
    goto LABEL_7;
  }

  v12 = Strong;

  if (v12 != a1)
  {
    goto LABEL_7;
  }
}

id sub_1000FBEAC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BagProvider.Retry(0, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t BagProvider.deinit()
{
  sub_1000FC008(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost);

  v1 = OBJC_IVAR____TtC9MusicCore11BagProvider_logger;
  v2 = sub_1004B80B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1000FC008(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006038C0, qword_1004D72F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BagProvider.__deallocating_deinit()
{
  BagProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BagProvider(uint64_t a1)
{
  result = qword_100603930;
  if (!qword_100603930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FC11C(uint64_t a1)
{
  sub_1000FC230(319);
  if (v1 <= 0x3F)
  {
    sub_1004B80B4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000FC230(uint64_t a1)
{
  if (!qword_100603940)
  {
    type metadata accessor for Signpost(255);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_100603940);
    }
  }
}

uint64_t sub_1000FC2AC(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s7PurposeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s7PurposeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1000FC368(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

NSString sub_1000FC3AC()
{
  result = sub_1004BBE24();
  qword_1006038A0 = result;
  return result;
}

unint64_t sub_1000FC3E4(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_1004BD6A4();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = sub_1004BD484();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_1000FC4E8(void *a1)
{
  v2 = v1;
  type metadata accessor for Signpost(0);
  v4 = __chkstk_darwin();
  v6 = &v29[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 56))(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_bindings) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  type metadata accessor for UnfairLock(0, v9);
  swift_allocObject();
  v10 = UnfairLock.init()();
  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers) = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC9MusicCore11BagProvider_durableObservers;
  v13 = type metadata accessor for BagProvider.Observer(v10, v12);
  *(v2 + v11) = WeakArray.init(_:)(_swiftEmptyArrayStorage, v13);
  if (qword_1005FFF20 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.musicBag;
  sub_1004B80C4();
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_isFetching) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_deferReload) = 0;
  v15 = OBJC_IVAR____TtC9MusicCore11BagProvider_retry;
  *(v2 + v15) = [objc_allocWithZone(type metadata accessor for BagProvider.Retry(0 v16))];
  *(v2 + 16) = a1;
  v17 = v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  *v17 = 0;
  *(v17 + 8) = 2;
  v18 = a1;
  sub_1000FAE34(v6);
  Signpost.begin(dso:)(&_mh_execute_header);
  sub_1000FCB00(v6);
  sub_1000FAAD0(0);
  type metadata accessor for Whitetail.Binding(0, v19);
  if (qword_1005FFEE0 != -1)
  {
    swift_once();
  }

  v21 = qword_1006038A0;
  v22 = qword_1006038A0;
  location = CFRange.init(_:)(*(&v20 - 1)).location;
  v29[3] = &type metadata for DistributedNotificationTrigger;
  v29[4] = &protocol witness table for DistributedNotificationTrigger;
  v29[0] = location;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v21;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v29, 0, sub_1000FCD14, v24);
  v26 = OBJC_IVAR____TtC9MusicCore11BagProvider_bindings;
  swift_beginAccess();

  sub_1004BC274();
  if (*((*(v2 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v26) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();

  return v2;
}

uint64_t sub_1000FC840(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1000FC3E4(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1004BD6A4();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1004BD6A4())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = sub_1004BD484();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = sub_1004BD484();
        v14 = sub_1004BD484();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_10003B19C(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_10003B19C(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_1004BD6A4();
}

uint64_t sub_1000FCABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FCB00(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FCB6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1006038C0, qword_1004D72F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FCBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FCC40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1006038C0, qword_1004D72F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FCCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000FCD1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TabIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7972617262696CLL;
  v2 = 0x736F65646976;
  if (a1 != 5)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0x6F69646172;
  if (a1 != 3)
  {
    v3 = 0x686372616573;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6F4E6E657473696CLL;
  if (a1 != 1)
  {
    v4 = 0x6573776F7262;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000FCEF0(uint64_t a1)
{
  sub_1004BBF84();
}

unint64_t sub_1000FCFFC@<X0>(Swift::String *a1@<X0>, MusicCore::TabIdentifier_optional *a2@<X8>)
{
  result = _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1000FD02C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0xE600000000000000;
  v6 = 0x736F65646976;
  if (v2 != 5)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xE900000000000073;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69646172;
  result = 0x686372616573;
  if (v2 != 3)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE900000000000077;
  v11 = 0x6F4E6E657473696CLL;
  if (v2 != 1)
  {
    v11 = 0x6573776F7262;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000FD134(uint64_t a1)
{
  sub_1004BBF84();
}

unint64_t sub_1000FD240@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FD344(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000FD270(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x636973756D5F796DLL;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (v2 != 5)
  {
    v6 = 0x6F65646976;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6573776F7262;
  if (v2 != 3)
  {
    v8 = 0x6F69646172;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x756F795F726F66;
  if (v2 != 1)
  {
    v10 = 0x6E5F6E657473696CLL;
    v9 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1000FD344(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A3B60;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A4F18;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000FD3E0()
{
  result = qword_100603BA0;
  if (!qword_100603BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603BA0);
  }

  return result;
}

unint64_t sub_1000FD438()
{
  result = qword_100603BA8;
  if (!qword_100603BA8)
  {
    sub_100003B68(&qword_100603BB0, &qword_1004CE0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603BA8);
  }

  return result;
}

unint64_t sub_1000FD4A0()
{
  result = qword_100603BB8;
  if (!qword_100603BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603BB8);
  }

  return result;
}

uint64_t _s5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FD660()
{
  result = qword_100603BC0;
  if (!qword_100603BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603BC0);
  }

  return result;
}

uint64_t sub_1000FD6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_1006014F0, &qword_1004C9B00);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_1006014F0, &qword_1004C9B00);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);

      return v22;
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

  sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000FD9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_1006014F0, &qword_1004C9B00);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_1006014F0, &qword_1004C9B00);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);

      return v22;
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

  sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000FDCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_1006014F0, &qword_1004C9B00);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_1006014F0, &qword_1004C9B00);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100003ABC(&unk_100603E98, &qword_1004CE650);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);

      return v21;
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

  sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100003ABC(&unk_100603E98, &qword_1004CE650);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000FDFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_1006014F0, &qword_1004C9B00);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_1006014F0, &qword_1004C9B00);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100003ABC(&unk_100603B90, &qword_1004CE670);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);

      return v21;
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

  sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100003ABC(&unk_100603B90, &qword_1004CE670);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000FE2DC(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1004BDBA4(), ActionType.rawValue.getter(a1), sub_1004BBF84(), , v4 = sub_1004BDBF4(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = ActionType.rawValue.getter(*(*(a2 + 48) + v6));
      v10 = v9;
      if (v8 == ActionType.rawValue.getter(a1) && v10 == v11)
      {
        break;
      }

      v13 = sub_1004BD9C4();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1000FE42C(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1004BDBA4(), ApplicationCapabilities.Service.rawValue.getter(), sub_1004BBF84(), , v4 = sub_1004BDBF4(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0x646956636973756DLL;
    v29 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004FB9A0;
        }

        v13 = *(*(a2 + 48) + v6) ? v7 : 0x636973756DLL;
        v14 = *(*(a2 + 48) + v6) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v10 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      else if (*(*(a2 + 48) + v6) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001004FB9E0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001004FBA00;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a1 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a1 == 9)
      {
        v16 = 0x80000001004FBA00;
      }

      if (a1 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001004FB9E0;
      }

      v17 = 0x746963696C707865;
      if (a1 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a1 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a1 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a1 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a1 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a1 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004FB9A0;
      }

      if (a1)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a1)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a1 <= 4u ? v19 : v15;
      v24 = a1 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = v7;
      v27 = sub_1004BD9C4();

      if ((v27 & 1) == 0)
      {
        v6 = (v25 + 1) & v30;
        a1 = v29;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}