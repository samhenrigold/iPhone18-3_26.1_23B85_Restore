void sub_10027EE54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for MultiDeviceTesterViewController();
  objc_msgSendSuper2(&v29, "traitCollectionDidChange:", a1);
  v5 = [*&v2[OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView] arrangedSubviews];
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

LABEL_15:
  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_3:
  v8 = 0;
  v26 = v6 & 0xFFFFFFFFFFFFFF8;
  v27 = v6 & 0xC000000000000001;
  v25 = v6;
  while (1)
  {
    if (v27)
    {
      v9 = sub_100062D50(v8, v6);
    }

    else
    {
      if (v8 >= *(v26 + 16))
      {
        goto LABEL_14;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v28 = v8 + 1;
    v11 = v7;
    type metadata accessor for MultiDeviceTesterViewController.DeviceView();
    v12 = swift_dynamicCastClassUnconditional();
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100EBE270;
    v14 = v10;
    v15 = [v3 view];
    if (!v15)
    {
      break;
    }

    v16 = v3;
    v17 = v15;
    v18 = [v15 traitCollection];

    *(v13 + 32) = v18;
    v19 = v12 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device;
    v20 = *(v12 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device + 80);
    v21 = objc_opt_self();
    *(v13 + 40) = [v21 traitCollectionWithUserInterfaceIdiom:v20];
    *(v13 + 48) = [v21 traitCollectionWithHorizontalSizeClass:*(v19 + 88)];
    sub_100009F78(0, &unk_101183B00, UITraitCollection_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v21 traitCollectionWithTraitsFromCollections:isa];

    [v16 setOverrideTraitCollection:v23 forChildViewController:*(v12 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController)];
    ++v8;
    v7 = v11;
    v24 = v28 == v11;
    v6 = v25;
    v3 = v16;
    if (v24)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_10027F1B4(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for NowPlayingViewController(0));
  v5 = sub_1005CD81C(0, 0, 1);
  v6 = *&v2[OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_scrollView];
  sub_100282B34(a1, v25);
  [v6 frame];
  Height = CGRectGetHeight(v26);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  objc_allocWithZone(type metadata accessor for MultiDeviceTesterViewController.DeviceView());
  v10 = v2;
  sub_10027B2FC(v5, a1, sub_100282C8C, v8, sub_100282C94, v9, Height);
  v12 = v11;
  v13 = UIView.forAutolayout.getter();

  v14 = OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController;
  [v10 addChildViewController:*&v13[OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController]];
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EBE270;
  v16 = [v10 view];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 traitCollection];

    *(v15 + 32) = v18;
    v19 = *(a1 + 80);
    v20 = objc_opt_self();
    *(v15 + 40) = [v20 traitCollectionWithUserInterfaceIdiom:v19];
    *(v15 + 48) = [v20 traitCollectionWithHorizontalSizeClass:*(a1 + 88)];
    sub_100009F78(0, &unk_101183B00, UITraitCollection_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = [v20 traitCollectionWithTraitsFromCollections:isa];

    [v10 setOverrideTraitCollection:v22 forChildViewController:*&v13[v14]];
    [*&v10[OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView] addArrangedSubview:v13];
    v23 = [v10 view];
    if (v23)
    {
      v24 = v23;
      [v23 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10027F4A8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100EBC6B0;
    *(v7 + 56) = sub_100009F78(0, &qword_101183B40, UIImage_ptr);
    *(v7 + 32) = a2;
    v8 = objc_allocWithZone(UIActivityViewController);
    v9 = a2;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v8 initWithActivityItems:isa applicationActivities:0];

    v12 = [v11 popoverPresentationController];
    if (v12)
    {
      v13 = v12;
      [v12 setSourceView:a1];
    }

    [v6 presentViewController:v11 animated:1 completion:0];
  }
}

void sub_10027F608(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v16 = sub_10028309C;
  v17 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10002BC98;
  v15 = &unk_1010A30B0;
  v6 = _Block_copy(&v12);
  v7 = a1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  v16 = sub_1002830B0;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1005C3688;
  v15 = &unk_1010A3100;
  v9 = _Block_copy(&v12);
  v10 = v7;
  v11 = a2;

  [v4 animateWithDuration:v6 animations:v9 completion:0.25];
  _Block_release(v9);
  _Block_release(v6);
}

void sub_10027F7A0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView) arrangedSubviews];
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_14:

    v5 = _swiftEmptyArrayStorage;
LABEL_15:
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *&v28 = v5;
    sub_10010FC20(&qword_1011886E8, &qword_100EC43B8);
    sub_1002830E0(&qword_1011886F0, sub_100282C38, &protocol conformance descriptor for <A> [A]);
    v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v24 = v23;

    v25 = [objc_opt_self() standardUserDefaults];
    *(&v29 + 1) = &type metadata for Data;
    *&v28 = v22;
    *(&v28 + 1) = v24;
    v27[0] = 0xD00000000000001DLL;
    v27[1] = 0x8000000100E42E30;
    sub_10002BC44(v22, v24);
    v26 = sub_100009838();
    NSUserDefaults.subscript.setter(&v28, v27, &type metadata for String, v26);
    sub_10002C064(v22, v24);

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_3:
  v35 = _swiftEmptyArrayStorage;
  sub_10066CA04(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v35;
    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = sub_100062D50(v4, v2); ; i = *(v2 + 8 * v4 + 32))
    {
      v7 = i;
      type metadata accessor for MultiDeviceTesterViewController.DeviceView();
      v8 = swift_dynamicCastClassUnconditional();
      v10 = *(v8 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device + 16);
      v9 = *(v8 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device + 32);
      v28 = *(v8 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device);
      v29 = v10;
      v30 = v9;
      v12 = *(v8 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device + 64);
      v11 = *(v8 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device + 80);
      v13 = *(v8 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device + 48);
      v34 = *(v8 + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device + 96);
      v32 = v12;
      v33 = v11;
      v31 = v13;
      sub_100282B34(&v28, v27);

      v35 = v5;
      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        sub_10066CA04((v14 > 1), v15 + 1, 1);
        v5 = v35;
      }

      v5[2] = v15 + 1;
      v16 = &v5[13 * v15];
      v17 = v28;
      v18 = v30;
      *(v16 + 3) = v29;
      *(v16 + 4) = v18;
      *(v16 + 2) = v17;
      v19 = v31;
      v20 = v32;
      v21 = v33;
      *(v16 + 64) = v34;
      *(v16 + 6) = v20;
      *(v16 + 7) = v21;
      *(v16 + 5) = v19;
      if (v3 - 1 == v4)
      {
        break;
      }

      ++v4;
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    goto LABEL_15;
  }

  __break(1u);

  swift_unexpectedError();
  __break(1u);
}

id sub_10027FB04(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_devices;
  sub_10010FC20(&qword_101188700, &qword_100EC43C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EC3E00;
  *(v3 + 32) = 0x656E6F685069;
  *(v3 + 40) = 0xE600000000000000;
  sub_10010FC20(&qword_101188708, &qword_100EC43C8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EC3E10;
  *(v4 + 32) = 0x5320656E6F685069;
  *(v4 + 40) = 0xE900000000000045;
  *(v4 + 48) = xmmword_100EC3E20;
  *(v4 + 64) = xmmword_100EC3E30;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *(v4 + 120) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0xD00000000000001BLL;
  *(v4 + 144) = 0x8000000100E42F70;
  *(v4 + 152) = xmmword_100EC3E40;
  *(v4 + 168) = xmmword_100EC3E30;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0;
  *(v4 + 224) = 1;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0xD000000000000019;
  *(v4 + 248) = 0x8000000100E42F90;
  *(v4 + 256) = xmmword_100EC3E50;
  *(v4 + 272) = xmmword_100EC3E60;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0;
  *(v4 + 328) = 1;
  *(v4 + 336) = 0;
  *(v4 + 344) = 0xD000000000000016;
  *(v4 + 352) = 0x8000000100E42FB0;
  *(v4 + 360) = 0x4077700000000000;
  *(v4 + 368) = xmmword_100EC3E70;
  *(v4 + 384) = xmmword_100EC3E80;
  *(v4 + 400) = xmmword_100EC3E90;
  *(v4 + 416) = 0x4043800000000000;
  *(v4 + 424) = 0;
  *(v4 + 432) = 1;
  *(v4 + 440) = 257;
  *(v4 + 448) = 0xD000000000000022;
  *(v4 + 456) = 0x8000000100E42FD0;
  *(v4 + 464) = xmmword_100EC3EA0;
  *(v4 + 480) = xmmword_100EC3EB0;
  *(v4 + 496) = xmmword_100EC3EC0;
  *(v4 + 512) = xmmword_100EC3ED0;
  *(v4 + 528) = xmmword_100EBCEE0;
  *(v4 + 544) = 257;
  strcpy((v4 + 552), "iPhone Xr / 11");
  *(v4 + 567) = -18;
  *(v4 + 568) = 0x4079E00000000000;
  *(v4 + 576) = xmmword_100EC3EE0;
  *(v4 + 592) = xmmword_100EC3E80;
  *(v4 + 608) = xmmword_100EC3E90;
  *(v4 + 624) = 0x4043800000000000;
  *(v4 + 632) = 0;
  *(v4 + 640) = 1;
  *(v4 + 648) = 257;
  *(v4 + 656) = 0xD00000000000001ALL;
  *(v4 + 664) = 0x8000000100E43000;
  *(v4 + 672) = xmmword_100EC3EF0;
  *(v4 + 688) = xmmword_100EC3F00;
  *(v4 + 704) = xmmword_100EC3EC0;
  *(v4 + 720) = xmmword_100EC3ED0;
  *(v4 + 736) = xmmword_100EBCEE0;
  *(v4 + 752) = 257;
  strcpy((v4 + 760), "iPhone 12 / 13");
  *(v4 + 775) = -18;
  *(v4 + 776) = 0x4078600000000000;
  *(v4 + 784) = xmmword_100EC3F10;
  *(v4 + 800) = xmmword_100EC3E80;
  *(v4 + 816) = xmmword_100EC3E90;
  *(v4 + 832) = 0x4047AA3D70A3D70ALL;
  *(v4 + 840) = 0;
  *(v4 + 848) = 1;
  *(v4 + 856) = 257;
  *(v4 + 864) = 0xD00000000000001ALL;
  *(v4 + 872) = 0x8000000100E43020;
  *(v4 + 880) = xmmword_100EC3EA0;
  *(v4 + 896) = xmmword_100EC3F20;
  *(v4 + 912) = xmmword_100EC3EC0;
  *(v4 + 928) = xmmword_100EC3F30;
  *(v4 + 944) = xmmword_100EBCEE0;
  *(v4 + 960) = 257;
  *(v4 + 968) = 0xD000000000000013;
  *(v4 + 976) = 0x8000000100E43040;
  *(v4 + 984) = 0x4077700000000000;
  *(v4 + 992) = xmmword_100EC3F40;
  *(v4 + 1008) = xmmword_100EC3E80;
  *(v4 + 1024) = xmmword_100EC3E90;
  *(v4 + 1040) = 0x4046000000000000;
  *(v4 + 1048) = 0;
  *(v4 + 1056) = 1;
  *(v4 + 1064) = 257;
  *(v4 + 1072) = 0xD00000000000001FLL;
  *(v4 + 1080) = 0x8000000100E43060;
  *(v4 + 1088) = xmmword_100EC3EA0;
  *(v4 + 1104) = xmmword_100EC3F50;
  *(v4 + 1120) = xmmword_100EC3EC0;
  *(v4 + 1136) = xmmword_100EC3F60;
  *(v4 + 1152) = xmmword_100EBCEE0;
  *(v4 + 1168) = 257;
  *(v4 + 1176) = 0xD000000000000016;
  *(v4 + 1184) = 0x8000000100E43080;
  *(v4 + 1192) = 0x407AC00000000000;
  *(v4 + 1200) = xmmword_100EC3F70;
  *(v4 + 1216) = xmmword_100EC3E80;
  *(v4 + 1232) = xmmword_100EC3E90;
  *(v4 + 1248) = 0x404AAA3D70A3D70ALL;
  *(v4 + 1256) = 0;
  *(v4 + 1264) = 1;
  *(v4 + 1272) = 257;
  strcpy((v4 + 1280), "iPhone 14 Pro");
  *(v4 + 1294) = -4864;
  *(v4 + 1296) = xmmword_100EC3F80;
  *(v4 + 1312) = xmmword_100EC3F90;
  *(v4 + 1328) = xmmword_100EC3EC0;
  *(v4 + 1344) = xmmword_100EC3FA0;
  *(v4 + 1360) = xmmword_100EBCEE0;
  *(v4 + 1376) = 257;
  *(v4 + 1384) = 0xD000000000000019;
  *(v4 + 1392) = 0x8000000100E430A0;
  *(v4 + 1400) = 0x4074000000000000;
  *(v4 + 1408) = xmmword_100EC3FB0;
  *(v4 + 1424) = xmmword_100EC3FC0;
  *(v4 + 1440) = xmmword_100EC3FD0;
  *(v4 + 1456) = 0x404655C28F5C28F6;
  *(v4 + 1464) = 0;
  *(v4 + 1472) = 1;
  *(v4 + 1480) = 257;
  *(v4 + 1488) = 0xD000000000000011;
  *(v4 + 1496) = 0x8000000100E430C0;
  *(v4 + 1504) = xmmword_100EC3FE0;
  *(v4 + 1520) = xmmword_100EC3F90;
  *(v4 + 1536) = xmmword_100EC3EC0;
  *(v4 + 1552) = xmmword_100EC3FA0;
  *(v4 + 1568) = xmmword_100EBCEE0;
  *(v4 + 1584) = 257;
  *(v4 + 1592) = 0xD00000000000001DLL;
  *(v4 + 1600) = 0x8000000100E430E0;
  *(v4 + 1608) = 0x4077700000000000;
  *(v4 + 1616) = xmmword_100EC3FF0;
  *(v4 + 1632) = xmmword_100EC4000;
  *(v4 + 1648) = xmmword_100EC4010;
  *(v4 + 1664) = 0x4048000000000000;
  *(v4 + 1672) = 0;
  *(v4 + 1680) = 1;
  *(v4 + 1688) = 257;
  *(v3 + 48) = v4;
  *(v3 + 56) = 0xD000000000000012;
  *(v3 + 64) = 0x8000000100E3C030;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBF880;
  *(v5 + 32) = 0xD00000000000001CLL;
  *(v5 + 40) = 0x8000000100E43100;
  *(v5 + 48) = xmmword_100EC4020;
  *(v5 + 64) = xmmword_100EC4030;
  *(v5 + 80) = xmmword_100EC4040;
  *(v5 + 96) = xmmword_100EC4050;
  *(v5 + 112) = xmmword_100EBC6B0;
  *(v5 + 128) = 256;
  *(v5 + 136) = 0xD000000000000027;
  *(v5 + 144) = 0x8000000100E43120;
  *(v5 + 152) = xmmword_100EC4060;
  *(v5 + 168) = xmmword_100EC4030;
  *(v5 + 184) = xmmword_100EC4040;
  *(v5 + 200) = xmmword_100EC4050;
  *(v5 + 216) = xmmword_100EBC6B0;
  *(v5 + 232) = 256;
  *(v5 + 240) = 0xD000000000000027;
  *(v5 + 248) = 0x8000000100E43150;
  *(v5 + 256) = xmmword_100EC4070;
  *(v5 + 272) = xmmword_100EC4030;
  *(v5 + 288) = xmmword_100EC4040;
  *(v5 + 304) = xmmword_100EC4050;
  *(v5 + 320) = xmmword_100EBC6B0;
  *(v5 + 336) = 256;
  *(v5 + 344) = 0xD000000000000027;
  *(v5 + 352) = 0x8000000100E43180;
  *(v5 + 360) = 0x4077700000000000;
  *(v5 + 368) = xmmword_100EC4080;
  *(v5 + 384) = xmmword_100EC4090;
  *(v5 + 400) = xmmword_100EC40A0;
  *(v5 + 416) = 0x4032000000000000;
  *(v5 + 424) = 1;
  *(v5 + 432) = 1;
  *(v5 + 440) = 256;
  *(v5 + 448) = 0xD00000000000001BLL;
  *(v5 + 456) = 0x8000000100E431B0;
  *(v5 + 464) = xmmword_100EC40B0;
  *(v5 + 480) = xmmword_100EC4030;
  *(v5 + 496) = xmmword_100EC4040;
  *(v5 + 512) = xmmword_100EC4050;
  *(v5 + 528) = xmmword_100EBC6B0;
  *(v5 + 544) = 256;
  *(v5 + 552) = 0xD000000000000026;
  *(v5 + 560) = 0x8000000100E431D0;
  *(v5 + 568) = 0x4083F80000000000;
  *(v5 + 576) = xmmword_100EC40C0;
  *(v5 + 592) = xmmword_100EC4090;
  *(v5 + 608) = xmmword_100EC40A0;
  *(v5 + 624) = 0x4032000000000000;
  *(v5 + 632) = 1;
  *(v5 + 640) = 1;
  *(v5 + 648) = 256;
  *(v5 + 656) = 0xD000000000000026;
  *(v5 + 664) = 0x8000000100E43200;
  *(v5 + 672) = xmmword_100EC40D0;
  *(v5 + 688) = xmmword_100EC4030;
  *(v5 + 704) = xmmword_100EC4040;
  *(v5 + 720) = xmmword_100EC4050;
  v26 = vdupq_n_s64(1uLL);
  *(v5 + 736) = v26;
  *(v5 + 752) = 256;
  *(v3 + 72) = v5;
  *(v3 + 80) = 0xD000000000000021;
  *(v3 + 88) = 0x8000000100E3C000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBF880;
  *(v6 + 32) = 0xD00000000000002BLL;
  *(v6 + 40) = 0x8000000100E43230;
  *(v6 + 48) = xmmword_100EC4020;
  *(v6 + 64) = xmmword_100EC40E0;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = xmmword_100EBC6B0;
  *(v6 + 128) = 256;
  *(v6 + 136) = 0xD000000000000036;
  *(v6 + 144) = 0x8000000100E43260;
  *(v6 + 152) = xmmword_100EC4060;
  *(v6 + 168) = xmmword_100EC40E0;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = xmmword_100EBC6B0;
  *(v6 + 232) = 256;
  *(v6 + 240) = 0xD000000000000036;
  *(v6 + 248) = 0x8000000100E432A0;
  *(v6 + 256) = xmmword_100EC4070;
  *(v6 + 272) = xmmword_100EC40E0;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = xmmword_100EBC6B0;
  *(v6 + 336) = 256;
  *(v6 + 344) = 0xD000000000000036;
  *(v6 + 352) = 0x8000000100E432E0;
  *(v6 + 360) = 0x4077700000000000;
  *(v6 + 368) = xmmword_100EC4080;
  *(v6 + 384) = 0x4034000000000000;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0u;
  *(v6 + 424) = 1;
  *(v6 + 432) = 1;
  *(v6 + 440) = 256;
  *(v6 + 448) = 0xD00000000000002ALL;
  *(v6 + 456) = 0x8000000100E43320;
  *(v6 + 464) = xmmword_100EC40B0;
  *(v6 + 480) = xmmword_100EC40E0;
  *(v6 + 496) = 0u;
  *(v6 + 512) = 0u;
  *(v6 + 528) = xmmword_100EBC6B0;
  *(v6 + 544) = 256;
  *(v6 + 552) = 0xD000000000000035;
  *(v6 + 560) = 0x8000000100E43350;
  *(v6 + 568) = 0x4083F80000000000;
  *(v6 + 576) = xmmword_100EC40C0;
  *(v6 + 592) = 0x4034000000000000;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 1;
  *(v6 + 640) = 1;
  *(v6 + 648) = 256;
  *(v6 + 656) = 0xD000000000000035;
  *(v6 + 664) = 0x8000000100E43390;
  *(v6 + 672) = xmmword_100EC40D0;
  *(v6 + 688) = xmmword_100EC40E0;
  *(v6 + 704) = 0u;
  *(v6 + 720) = 0u;
  *(v6 + 736) = v26;
  *(v6 + 752) = 256;
  *(v3 + 96) = v6;
  *(v3 + 104) = 0xD000000000000012;
  *(v3 + 112) = 0x8000000100E3BFC0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBF880;
  *(v7 + 32) = 0xD00000000000001CLL;
  *(v7 + 40) = 0x8000000100E433D0;
  *(v7 + 48) = xmmword_100EC40F0;
  *(v7 + 64) = xmmword_100EC40E0;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = xmmword_100EBC6B0;
  *(v7 + 128) = 0;
  *(v7 + 129) = 1;
  *(v7 + 136) = 0xD000000000000027;
  *(v7 + 144) = 0x8000000100E433F0;
  *(v7 + 152) = xmmword_100EC4100;
  *(v7 + 168) = xmmword_100EC40E0;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = xmmword_100EBC6B0;
  *(v7 + 232) = 0;
  *(v7 + 233) = 1;
  *(v7 + 240) = 0xD000000000000027;
  *(v7 + 248) = 0x8000000100E43420;
  *(v7 + 256) = xmmword_100EC4110;
  *(v7 + 272) = xmmword_100EC40E0;
  *(v7 + 288) = 0u;
  *(v7 + 304) = 0u;
  *(v7 + 320) = xmmword_100EBC6B0;
  *(v7 + 336) = 256;
  *(v7 + 344) = 0xD000000000000027;
  *(v7 + 352) = 0x8000000100E43450;
  *(v7 + 360) = 0x4074000000000000;
  *(v7 + 368) = xmmword_100EC4120;
  *(v7 + 384) = 0x4034000000000000;
  *(v7 + 392) = 0u;
  *(v7 + 408) = 0u;
  *(v7 + 424) = 1;
  *(v7 + 432) = 1;
  *(v7 + 440) = 256;
  *(v7 + 448) = 0xD00000000000001BLL;
  *(v7 + 456) = 0x8000000100E43480;
  *(v7 + 464) = xmmword_100EC4130;
  *(v7 + 480) = xmmword_100EC40E0;
  *(v7 + 496) = 0u;
  *(v7 + 512) = 0u;
  *(v7 + 528) = xmmword_100EBC6B0;
  *(v7 + 544) = 0;
  *(v7 + 545) = 1;
  *(v7 + 552) = 0xD000000000000026;
  *(v7 + 560) = 0x8000000100E434A0;
  *(v7 + 568) = 0x407F800000000000;
  *(v7 + 576) = xmmword_100EC4140;
  *(v7 + 592) = 0x4034000000000000;
  *(v7 + 600) = 0u;
  *(v7 + 616) = 0u;
  *(v7 + 632) = 1;
  *(v7 + 640) = 1;
  *(v7 + 648) = 0;
  *(v7 + 649) = 1;
  *(v7 + 656) = 0xD000000000000026;
  *(v7 + 664) = 0x8000000100E434D0;
  *(v7 + 672) = xmmword_100EC4150;
  *(v7 + 688) = xmmword_100EC40E0;
  *(v7 + 704) = 0u;
  *(v7 + 720) = 0u;
  *(v7 + 736) = v26;
  *(v7 + 752) = 0;
  *(v7 + 753) = 1;
  *(v3 + 120) = v7;
  strcpy((v3 + 128), "10.2-inch iPad");
  *(v3 + 143) = -18;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBF880;
  *(v8 + 32) = 0xD000000000000018;
  *(v8 + 40) = 0x8000000100E43500;
  *(v8 + 48) = xmmword_100EC4160;
  *(v8 + 64) = xmmword_100EC40E0;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = xmmword_100EBC6B0;
  *(v8 + 128) = 0;
  *(v8 + 129) = 1;
  *(v8 + 136) = 0xD000000000000023;
  *(v8 + 144) = 0x8000000100E43520;
  *(v8 + 152) = xmmword_100EC4170;
  *(v8 + 168) = xmmword_100EC40E0;
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 216) = xmmword_100EBC6B0;
  *(v8 + 232) = 0;
  *(v8 + 233) = 1;
  *(v8 + 240) = 0xD000000000000023;
  *(v8 + 248) = 0x8000000100E43550;
  *(v8 + 256) = xmmword_100EC4180;
  *(v8 + 272) = xmmword_100EC40E0;
  *(v8 + 288) = 0u;
  *(v8 + 304) = 0u;
  *(v8 + 320) = xmmword_100EBC6B0;
  *(v8 + 336) = 256;
  *(v8 + 344) = 0xD000000000000023;
  *(v8 + 352) = 0x8000000100E43580;
  *(v8 + 360) = 0x4074000000000000;
  *(v8 + 368) = xmmword_100EC4120;
  *(v8 + 384) = 0x4034000000000000;
  *(v8 + 392) = 0u;
  *(v8 + 408) = 0u;
  *(v8 + 424) = 1;
  *(v8 + 432) = 1;
  *(v8 + 440) = 256;
  *(v8 + 448) = 0xD000000000000017;
  *(v8 + 456) = 0x8000000100E435B0;
  *(v8 + 464) = xmmword_100EC4190;
  *(v8 + 480) = xmmword_100EC40E0;
  *(v8 + 496) = 0u;
  *(v8 + 512) = 0u;
  *(v8 + 528) = xmmword_100EBC6B0;
  *(v8 + 544) = 0;
  *(v8 + 545) = 1;
  *(v8 + 552) = 0xD000000000000022;
  *(v8 + 560) = 0x8000000100E435D0;
  *(v8 + 568) = 0x407E000000000000;
  *(v8 + 576) = xmmword_100EC41A0;
  *(v8 + 592) = 0x4034000000000000;
  *(v8 + 600) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 1;
  *(v8 + 640) = 1;
  *(v8 + 648) = 0;
  *(v8 + 649) = 1;
  *(v8 + 656) = 0xD000000000000022;
  *(v8 + 664) = 0x8000000100E43600;
  *(v8 + 672) = xmmword_100EC41B0;
  *(v8 + 688) = xmmword_100EC40E0;
  *(v8 + 704) = 0u;
  *(v8 + 720) = 0u;
  *(v8 + 736) = v26;
  *(v8 + 752) = 0;
  *(v8 + 753) = 1;
  *(v3 + 144) = v8;
  *(v3 + 152) = 0xD000000000000010;
  *(v3 + 160) = 0x8000000100E3BFE0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBF880;
  *(v9 + 32) = 0xD00000000000001ALL;
  *(v9 + 40) = 0x8000000100E43630;
  *(v9 + 48) = xmmword_100EC41C0;
  *(v9 + 64) = xmmword_100EC4030;
  *(v9 + 80) = xmmword_100EC4040;
  *(v9 + 96) = xmmword_100EC4050;
  *(v9 + 112) = xmmword_100EBC6B0;
  *(v9 + 128) = 0;
  *(v9 + 129) = 1;
  *(v9 + 136) = 0xD000000000000025;
  *(v9 + 144) = 0x8000000100E43650;
  *(v9 + 152) = xmmword_100EC41D0;
  *(v9 + 168) = xmmword_100EC4030;
  *(v9 + 184) = xmmword_100EC4040;
  *(v9 + 200) = xmmword_100EC4050;
  *(v9 + 216) = xmmword_100EBC6B0;
  *(v9 + 232) = 0;
  *(v9 + 233) = 1;
  *(v9 + 240) = 0xD000000000000025;
  *(v9 + 248) = 0x8000000100E43680;
  *(v9 + 256) = xmmword_100EC41E0;
  *(v9 + 272) = xmmword_100EC4030;
  *(v9 + 288) = xmmword_100EC4040;
  *(v9 + 304) = xmmword_100EC4050;
  *(v9 + 320) = v26;
  *(v9 + 336) = 0;
  *(v9 + 337) = 1;
  *(v9 + 344) = 0xD000000000000025;
  *(v9 + 352) = 0x8000000100E436B0;
  *(v9 + 360) = 0x4077700000000000;
  *(v9 + 368) = xmmword_100EC4120;
  *(v9 + 384) = xmmword_100EC4090;
  *(v9 + 400) = xmmword_100EC40A0;
  *(v9 + 416) = 0x4032000000000000;
  *(v9 + 424) = 1;
  *(v9 + 432) = 1;
  *(v9 + 440) = 0;
  *(v9 + 441) = 1;
  *(v9 + 448) = 0xD000000000000019;
  *(v9 + 456) = 0x8000000100E436E0;
  *(v9 + 464) = xmmword_100EC41F0;
  *(v9 + 480) = xmmword_100EC4030;
  *(v9 + 496) = xmmword_100EC4040;
  *(v9 + 512) = xmmword_100EC4050;
  *(v9 + 528) = xmmword_100EBC6B0;
  *(v9 + 544) = 0;
  *(v9 + 545) = 1;
  *(v9 + 552) = 0xD000000000000024;
  *(v9 + 560) = 0x8000000100E43700;
  *(v9 + 568) = 0x407F800000000000;
  *(v9 + 576) = xmmword_100EC4200;
  *(v9 + 592) = xmmword_100EC4090;
  *(v9 + 608) = xmmword_100EC40A0;
  *(v9 + 624) = 0x4032000000000000;
  *(v9 + 632) = 1;
  *(v9 + 640) = 1;
  *(v9 + 648) = 0;
  *(v9 + 649) = 1;
  *(v9 + 656) = 0xD000000000000024;
  *(v9 + 664) = 0x8000000100E43730;
  *(v9 + 672) = xmmword_100EC4210;
  *(v9 + 688) = xmmword_100EC4030;
  *(v9 + 704) = xmmword_100EC4040;
  *(v9 + 720) = xmmword_100EC4050;
  *(v9 + 736) = v26;
  *(v9 + 752) = 0;
  *(v9 + 753) = 1;
  *(v3 + 168) = v9;
  *(v3 + 176) = 0xD000000000000011;
  *(v3 + 184) = 0x8000000100E3BFA0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBF880;
  *(v10 + 32) = 0xD000000000000020;
  *(v10 + 40) = 0x8000000100E43760;
  *(v10 + 48) = xmmword_100EC4220;
  *(v10 + 64) = xmmword_100EC4030;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = xmmword_100EBC6B0;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0xD000000000000026;
  *(v10 + 144) = 0x8000000100E43790;
  *(v10 + 152) = xmmword_100EC4230;
  *(v10 + 168) = xmmword_100EC4030;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 216) = xmmword_100EBC6B0;
  *(v10 + 232) = 0;
  *(v10 + 240) = 0xD000000000000026;
  *(v10 + 248) = 0x8000000100E437C0;
  *(v10 + 256) = xmmword_100EC4240;
  *(v10 + 272) = xmmword_100EC4030;
  *(v10 + 288) = 0u;
  *(v10 + 304) = 0u;
  *(v10 + 320) = v26;
  *(v10 + 336) = 0;
  *(v10 + 344) = 0xD000000000000026;
  *(v10 + 352) = 0x8000000100E437F0;
  *(v10 + 360) = 0x4074000000000000;
  *(v10 + 368) = xmmword_100EC4250;
  *(v10 + 384) = 0x4038000000000000;
  *(v10 + 392) = 0u;
  *(v10 + 408) = 0u;
  *(v10 + 424) = 1;
  *(v10 + 432) = 1;
  *(v10 + 440) = 0;
  *(v10 + 448) = 0xD00000000000001ALL;
  *(v10 + 456) = 0x8000000100E43820;
  *(v10 + 464) = xmmword_100EC4260;
  *(v10 + 480) = xmmword_100EC4030;
  *(v10 + 496) = 0u;
  *(v10 + 512) = 0u;
  *(v10 + 528) = xmmword_100EBC6B0;
  *(v10 + 544) = 0;
  *(v10 + 552) = 0xD000000000000025;
  *(v10 + 560) = 0x8000000100E43840;
  *(v10 + 568) = 0x407B600000000000;
  *(v10 + 576) = xmmword_100EC4080;
  *(v10 + 592) = 0x4038000000000000;
  *(v10 + 600) = 0u;
  *(v10 + 616) = 0u;
  *(v10 + 632) = 1;
  *(v10 + 640) = 1;
  *(v10 + 648) = 0;
  *(v10 + 656) = 0xD000000000000025;
  *(v10 + 664) = 0x8000000100E43870;
  *(v10 + 672) = xmmword_100EC4270;
  *(v10 + 688) = xmmword_100EC4030;
  *(v10 + 704) = 0u;
  *(v10 + 720) = 0u;
  *(v10 + 736) = v26;
  *(v10 + 752) = 0;
  *(v3 + 192) = v10;
  strcpy((v3 + 200), "8.3-inch iPad");
  *(v3 + 214) = -4864;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBF880;
  *(v11 + 32) = 0xD000000000000017;
  *(v11 + 40) = 0x8000000100E438A0;
  *(v11 + 48) = xmmword_100EC4280;
  *(v11 + 64) = xmmword_100EC4290;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0x4032000000000000;
  *(v11 + 112) = xmmword_100EBC6B0;
  *(v11 + 128) = 0;
  *(v11 + 129) = 1;
  *(v11 + 136) = 0xD000000000000022;
  *(v11 + 144) = 0x8000000100E438C0;
  *(v11 + 152) = xmmword_100EC42A0;
  *(v11 + 168) = xmmword_100EC4290;
  *(v11 + 184) = 0;
  *(v11 + 192) = 0;
  *(v11 + 200) = 0;
  *(v11 + 208) = 0x4032000000000000;
  *(v11 + 216) = xmmword_100EBC6B0;
  *(v11 + 232) = 256;
  *(v11 + 240) = 0xD000000000000022;
  *(v11 + 248) = 0x8000000100E438F0;
  *(v11 + 256) = xmmword_100EC42B0;
  *(v11 + 272) = xmmword_100EC4290;
  *(v11 + 288) = 0;
  *(v11 + 296) = 0;
  *(v11 + 304) = 0;
  *(v11 + 312) = 0x4032000000000000;
  *(v11 + 320) = v26;
  *(v11 + 336) = 256;
  *(v11 + 344) = 0xD000000000000022;
  *(v11 + 352) = 0x8000000100E43920;
  *(v11 + 360) = 0x4077700000000000;
  *(v11 + 368) = xmmword_100EC42C0;
  *(v11 + 400) = 0;
  *(v11 + 408) = 0;
  *(v11 + 384) = 0x4038000000000000;
  *(v11 + 392) = 0;
  *(v11 + 416) = 0x4032000000000000;
  *(v11 + 424) = 1;
  *(v11 + 432) = 1;
  *(v11 + 440) = 0;
  *(v11 + 441) = 1;
  *(v11 + 448) = 0xD000000000000016;
  *(v11 + 456) = 0x8000000100E43950;
  *(v11 + 464) = xmmword_100EC42D0;
  *(v11 + 480) = xmmword_100EC4290;
  *(v11 + 496) = 0;
  *(v11 + 504) = 0;
  *(v11 + 512) = 0;
  *(v11 + 520) = 0x4032000000000000;
  *(v11 + 528) = xmmword_100EBC6B0;
  *(v11 + 544) = 0;
  *(v11 + 545) = 1;
  *(v11 + 552) = 0xD00000000000001ALL;
  *(v11 + 560) = 0x8000000100E43970;
  *(v11 + 568) = 0x4079E00000000000;
  *(v11 + 576) = xmmword_100EC42E0;
  *(v11 + 592) = 0x4038000000000000;
  *(v11 + 616) = 0;
  *(v11 + 608) = 0;
  *(v11 + 600) = 0;
  *(v11 + 624) = 0x4032000000000000;
  *(v11 + 632) = 1;
  *(v11 + 640) = 1;
  *(v11 + 648) = 0;
  *(v11 + 649) = 1;
  *(v11 + 656) = 0xD00000000000001ALL;
  *(v11 + 664) = 0x8000000100E43990;
  *(v11 + 672) = xmmword_100EC42F0;
  *(v11 + 688) = xmmword_100EC4290;
  *(v11 + 704) = 0;
  *(v11 + 712) = 0;
  *(v11 + 720) = 0;
  *(v11 + 728) = 0x4032000000000000;
  *(v11 + 736) = v26;
  *(v11 + 752) = 0;
  *(v11 + 753) = 1;
  *(v3 + 216) = v11;
  v12 = sub_10010C884(v3);
  swift_setDeallocating();
  sub_10010FC20(&qword_101188710, &unk_100EC43D0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v23[v22] = v12;
  v13 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_scrollView;
  v14 = [objc_allocWithZone(UIScrollView) init];
  v15 = UIView.forAutolayout.getter();

  *&v23[v13] = v15;
  v16 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView;
  v17 = [objc_allocWithZone(UIStackView) init];
  v18 = UIView.forAutolayout.getter();

  *&v23[v16] = v18;
  if (a2)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v27.receiver = v23;
  v27.super_class = type metadata accessor for MultiDeviceTesterViewController();
  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", v19, a3);

  return v20;
}

id sub_100280F64(void *a1)
{
  v19 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_devices;
  sub_10010FC20(&qword_101188700, &qword_100EC43C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EC3E00;
  *(v1 + 32) = 0x656E6F685069;
  *(v1 + 40) = 0xE600000000000000;
  sub_10010FC20(&qword_101188708, &qword_100EC43C8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EC3E10;
  *(v2 + 32) = 0x5320656E6F685069;
  *(v2 + 40) = 0xE900000000000045;
  *(v2 + 48) = xmmword_100EC3E20;
  *(v2 + 64) = xmmword_100EC3E30;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 120) = 1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0xD00000000000001BLL;
  *(v2 + 144) = 0x8000000100E42F70;
  *(v2 + 152) = xmmword_100EC3E40;
  *(v2 + 168) = xmmword_100EC3E30;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0;
  *(v2 + 224) = 1;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0xD000000000000019;
  *(v2 + 248) = 0x8000000100E42F90;
  *(v2 + 256) = xmmword_100EC3E50;
  *(v2 + 272) = xmmword_100EC3E60;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0;
  *(v2 + 328) = 1;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0xD000000000000016;
  *(v2 + 352) = 0x8000000100E42FB0;
  *(v2 + 360) = 0x4077700000000000;
  *(v2 + 368) = xmmword_100EC3E70;
  *(v2 + 384) = xmmword_100EC3E80;
  *(v2 + 400) = xmmword_100EC3E90;
  *(v2 + 416) = 0x4043800000000000;
  *(v2 + 424) = 0;
  *(v2 + 432) = 1;
  *(v2 + 440) = 257;
  *(v2 + 448) = 0xD000000000000022;
  *(v2 + 456) = 0x8000000100E42FD0;
  *(v2 + 464) = xmmword_100EC3EA0;
  *(v2 + 480) = xmmword_100EC3EB0;
  *(v2 + 496) = xmmword_100EC3EC0;
  *(v2 + 512) = xmmword_100EC3ED0;
  *(v2 + 528) = xmmword_100EBCEE0;
  *(v2 + 544) = 257;
  strcpy((v2 + 552), "iPhone Xr / 11");
  *(v2 + 567) = -18;
  *(v2 + 568) = 0x4079E00000000000;
  *(v2 + 576) = xmmword_100EC3EE0;
  *(v2 + 592) = xmmword_100EC3E80;
  *(v2 + 608) = xmmword_100EC3E90;
  *(v2 + 624) = 0x4043800000000000;
  *(v2 + 632) = 0;
  *(v2 + 640) = 1;
  *(v2 + 648) = 257;
  *(v2 + 656) = 0xD00000000000001ALL;
  *(v2 + 664) = 0x8000000100E43000;
  *(v2 + 672) = xmmword_100EC3EF0;
  *(v2 + 688) = xmmword_100EC3F00;
  *(v2 + 704) = xmmword_100EC3EC0;
  *(v2 + 720) = xmmword_100EC3ED0;
  *(v2 + 736) = xmmword_100EBCEE0;
  *(v2 + 752) = 257;
  strcpy((v2 + 760), "iPhone 12 / 13");
  *(v2 + 775) = -18;
  *(v2 + 776) = 0x4078600000000000;
  *(v2 + 784) = xmmword_100EC3F10;
  *(v2 + 800) = xmmword_100EC3E80;
  *(v2 + 816) = xmmword_100EC3E90;
  *(v2 + 832) = 0x4047AA3D70A3D70ALL;
  *(v2 + 840) = 0;
  *(v2 + 848) = 1;
  *(v2 + 856) = 257;
  *(v2 + 864) = 0xD00000000000001ALL;
  *(v2 + 872) = 0x8000000100E43020;
  *(v2 + 880) = xmmword_100EC3EA0;
  *(v2 + 896) = xmmword_100EC3F20;
  *(v2 + 912) = xmmword_100EC3EC0;
  *(v2 + 928) = xmmword_100EC3F30;
  *(v2 + 944) = xmmword_100EBCEE0;
  *(v2 + 960) = 257;
  *(v2 + 968) = 0xD000000000000013;
  *(v2 + 976) = 0x8000000100E43040;
  *(v2 + 984) = 0x4077700000000000;
  *(v2 + 992) = xmmword_100EC3F40;
  *(v2 + 1008) = xmmword_100EC3E80;
  *(v2 + 1024) = xmmword_100EC3E90;
  *(v2 + 1040) = 0x4046000000000000;
  *(v2 + 1048) = 0;
  *(v2 + 1056) = 1;
  *(v2 + 1064) = 257;
  *(v2 + 1072) = 0xD00000000000001FLL;
  *(v2 + 1080) = 0x8000000100E43060;
  *(v2 + 1088) = xmmword_100EC3EA0;
  *(v2 + 1104) = xmmword_100EC3F50;
  *(v2 + 1120) = xmmword_100EC3EC0;
  *(v2 + 1136) = xmmword_100EC3F60;
  *(v2 + 1152) = xmmword_100EBCEE0;
  *(v2 + 1168) = 257;
  *(v2 + 1176) = 0xD000000000000016;
  *(v2 + 1184) = 0x8000000100E43080;
  *(v2 + 1192) = 0x407AC00000000000;
  *(v2 + 1200) = xmmword_100EC3F70;
  *(v2 + 1216) = xmmword_100EC3E80;
  *(v2 + 1232) = xmmword_100EC3E90;
  *(v2 + 1248) = 0x404AAA3D70A3D70ALL;
  *(v2 + 1256) = 0;
  *(v2 + 1264) = 1;
  *(v2 + 1272) = 257;
  strcpy((v2 + 1280), "iPhone 14 Pro");
  *(v2 + 1294) = -4864;
  *(v2 + 1296) = xmmword_100EC3F80;
  *(v2 + 1312) = xmmword_100EC3F90;
  *(v2 + 1328) = xmmword_100EC3EC0;
  *(v2 + 1344) = xmmword_100EC3FA0;
  *(v2 + 1360) = xmmword_100EBCEE0;
  *(v2 + 1376) = 257;
  *(v2 + 1384) = 0xD000000000000019;
  *(v2 + 1392) = 0x8000000100E430A0;
  *(v2 + 1400) = 0x4074000000000000;
  *(v2 + 1408) = xmmword_100EC3FB0;
  *(v2 + 1424) = xmmword_100EC3FC0;
  *(v2 + 1440) = xmmword_100EC3FD0;
  *(v2 + 1456) = 0x404655C28F5C28F6;
  *(v2 + 1464) = 0;
  *(v2 + 1472) = 1;
  *(v2 + 1480) = 257;
  *(v2 + 1488) = 0xD000000000000011;
  *(v2 + 1496) = 0x8000000100E430C0;
  *(v2 + 1504) = xmmword_100EC3FE0;
  *(v2 + 1520) = xmmword_100EC3F90;
  *(v2 + 1536) = xmmword_100EC3EC0;
  *(v2 + 1552) = xmmword_100EC3FA0;
  *(v2 + 1568) = xmmword_100EBCEE0;
  *(v2 + 1584) = 257;
  *(v2 + 1592) = 0xD00000000000001DLL;
  *(v2 + 1600) = 0x8000000100E430E0;
  *(v2 + 1608) = 0x4077700000000000;
  *(v2 + 1616) = xmmword_100EC3FF0;
  *(v2 + 1632) = xmmword_100EC4000;
  *(v2 + 1648) = xmmword_100EC4010;
  *(v2 + 1664) = 0x4048000000000000;
  *(v2 + 1672) = 0;
  *(v2 + 1680) = 1;
  *(v2 + 1688) = 257;
  *(v1 + 48) = v2;
  *(v1 + 56) = 0xD000000000000012;
  *(v1 + 64) = 0x8000000100E3C030;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBF880;
  *(v3 + 32) = 0xD00000000000001CLL;
  *(v3 + 40) = 0x8000000100E43100;
  *(v3 + 48) = xmmword_100EC4020;
  *(v3 + 64) = xmmword_100EC4030;
  *(v3 + 80) = xmmword_100EC4040;
  *(v3 + 96) = xmmword_100EC4050;
  *(v3 + 112) = xmmword_100EBC6B0;
  *(v3 + 128) = 256;
  *(v3 + 136) = 0xD000000000000027;
  *(v3 + 144) = 0x8000000100E43120;
  *(v3 + 152) = xmmword_100EC4060;
  *(v3 + 168) = xmmword_100EC4030;
  *(v3 + 184) = xmmword_100EC4040;
  *(v3 + 200) = xmmword_100EC4050;
  *(v3 + 216) = xmmword_100EBC6B0;
  *(v3 + 232) = 256;
  *(v3 + 240) = 0xD000000000000027;
  *(v3 + 248) = 0x8000000100E43150;
  *(v3 + 256) = xmmword_100EC4070;
  *(v3 + 272) = xmmword_100EC4030;
  *(v3 + 288) = xmmword_100EC4040;
  *(v3 + 304) = xmmword_100EC4050;
  *(v3 + 320) = xmmword_100EBC6B0;
  *(v3 + 336) = 256;
  *(v3 + 344) = 0xD000000000000027;
  *(v3 + 352) = 0x8000000100E43180;
  *(v3 + 360) = 0x4077700000000000;
  *(v3 + 368) = xmmword_100EC4080;
  *(v3 + 384) = xmmword_100EC4090;
  *(v3 + 400) = 0x4034000000000000;
  *(v3 + 408) = 0;
  *(v3 + 416) = 0x4032000000000000;
  *(v3 + 424) = 1;
  *(v3 + 432) = 1;
  *(v3 + 440) = 256;
  *(v3 + 448) = 0xD00000000000001BLL;
  *(v3 + 456) = 0x8000000100E431B0;
  *(v3 + 464) = xmmword_100EC40B0;
  *(v3 + 480) = xmmword_100EC4030;
  *(v3 + 496) = xmmword_100EC4040;
  *(v3 + 512) = xmmword_100EC4050;
  *(v3 + 528) = xmmword_100EBC6B0;
  *(v3 + 544) = 256;
  *(v3 + 552) = 0xD000000000000026;
  *(v3 + 560) = 0x8000000100E431D0;
  *(v3 + 568) = 0x4083F80000000000;
  *(v3 + 576) = xmmword_100EC40C0;
  *(v3 + 592) = xmmword_100EC4090;
  *(v3 + 608) = 0x4034000000000000;
  *(v3 + 616) = 0;
  *(v3 + 624) = 0x4032000000000000;
  *(v3 + 632) = 1;
  *(v3 + 640) = 1;
  *(v3 + 648) = 256;
  *(v3 + 656) = 0xD000000000000026;
  *(v3 + 664) = 0x8000000100E43200;
  *(v3 + 672) = xmmword_100EC40D0;
  *(v3 + 688) = xmmword_100EC4030;
  *(v3 + 704) = xmmword_100EC4040;
  *(v3 + 720) = xmmword_100EC4050;
  v22 = vdupq_n_s64(1uLL);
  *(v3 + 736) = v22;
  *(v3 + 752) = 256;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0xD000000000000021;
  *(v1 + 88) = 0x8000000100E3C000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBF880;
  *(v4 + 32) = 0xD00000000000002BLL;
  *(v4 + 40) = 0x8000000100E43230;
  *(v4 + 48) = xmmword_100EC4020;
  *(v4 + 64) = xmmword_100EC40E0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = xmmword_100EBC6B0;
  *(v4 + 128) = 256;
  *(v4 + 136) = 0xD000000000000036;
  *(v4 + 144) = 0x8000000100E43260;
  *(v4 + 152) = xmmword_100EC4060;
  *(v4 + 168) = xmmword_100EC40E0;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = xmmword_100EBC6B0;
  *(v4 + 232) = 256;
  *(v4 + 240) = 0xD000000000000036;
  *(v4 + 248) = 0x8000000100E432A0;
  *(v4 + 256) = xmmword_100EC4070;
  *(v4 + 272) = xmmword_100EC40E0;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 320) = xmmword_100EBC6B0;
  *(v4 + 336) = 256;
  *(v4 + 344) = 0xD000000000000036;
  *(v4 + 352) = 0x8000000100E432E0;
  *(v4 + 360) = 0x4077700000000000;
  *(v4 + 368) = xmmword_100EC4080;
  *(v4 + 384) = 0x4034000000000000;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 1;
  *(v4 + 432) = 1;
  *(v4 + 440) = 256;
  *(v4 + 448) = 0xD00000000000002ALL;
  *(v4 + 456) = 0x8000000100E43320;
  *(v4 + 464) = xmmword_100EC40B0;
  *(v4 + 480) = xmmword_100EC40E0;
  *(v4 + 496) = 0u;
  *(v4 + 512) = 0u;
  *(v4 + 528) = xmmword_100EBC6B0;
  *(v4 + 544) = 256;
  *(v4 + 552) = 0xD000000000000035;
  *(v4 + 560) = 0x8000000100E43350;
  *(v4 + 568) = 0x4083F80000000000;
  *(v4 + 576) = xmmword_100EC40C0;
  *(v4 + 592) = 0x4034000000000000;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 1;
  *(v4 + 640) = 1;
  *(v4 + 648) = 256;
  *(v4 + 656) = 0xD000000000000035;
  *(v4 + 664) = 0x8000000100E43390;
  *(v4 + 672) = xmmword_100EC40D0;
  *(v4 + 688) = xmmword_100EC40E0;
  *(v4 + 704) = 0u;
  *(v4 + 720) = 0u;
  *(v4 + 736) = v22;
  *(v4 + 752) = 256;
  *(v1 + 96) = v4;
  *(v1 + 104) = 0xD000000000000012;
  *(v1 + 112) = 0x8000000100E3BFC0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBF880;
  *(v5 + 32) = 0xD00000000000001CLL;
  *(v5 + 40) = 0x8000000100E433D0;
  *(v5 + 48) = xmmword_100EC40F0;
  *(v5 + 64) = xmmword_100EC40E0;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = xmmword_100EBC6B0;
  *(v5 + 128) = 0;
  *(v5 + 129) = 1;
  *(v5 + 136) = 0xD000000000000027;
  *(v5 + 144) = 0x8000000100E433F0;
  *(v5 + 152) = xmmword_100EC4100;
  *(v5 + 168) = xmmword_100EC40E0;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = xmmword_100EBC6B0;
  *(v5 + 232) = 0;
  *(v5 + 233) = 1;
  *(v5 + 240) = 0xD000000000000027;
  *(v5 + 248) = 0x8000000100E43420;
  *(v5 + 256) = xmmword_100EC4110;
  *(v5 + 272) = xmmword_100EC40E0;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = xmmword_100EBC6B0;
  *(v5 + 336) = 256;
  *(v5 + 344) = 0xD000000000000027;
  *(v5 + 352) = 0x8000000100E43450;
  *(v5 + 360) = 0x4074000000000000;
  *(v5 + 368) = xmmword_100EC4120;
  *(v5 + 384) = 0x4034000000000000;
  *(v5 + 392) = 0u;
  *(v5 + 408) = 0u;
  *(v5 + 424) = 1;
  *(v5 + 432) = 1;
  *(v5 + 440) = 256;
  *(v5 + 448) = 0xD00000000000001BLL;
  *(v5 + 456) = 0x8000000100E43480;
  *(v5 + 464) = xmmword_100EC4130;
  *(v5 + 480) = xmmword_100EC40E0;
  *(v5 + 496) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = xmmword_100EBC6B0;
  *(v5 + 544) = 0;
  *(v5 + 545) = 1;
  *(v5 + 552) = 0xD000000000000026;
  *(v5 + 560) = 0x8000000100E434A0;
  *(v5 + 568) = 0x407F800000000000;
  *(v5 + 576) = xmmword_100EC4140;
  *(v5 + 592) = 0x4034000000000000;
  *(v5 + 600) = 0u;
  *(v5 + 616) = 0u;
  *(v5 + 632) = 1;
  *(v5 + 640) = 1;
  *(v5 + 648) = 0;
  *(v5 + 649) = 1;
  *(v5 + 656) = 0xD000000000000026;
  *(v5 + 664) = 0x8000000100E434D0;
  *(v5 + 672) = xmmword_100EC4150;
  *(v5 + 688) = xmmword_100EC40E0;
  *(v5 + 704) = 0u;
  *(v5 + 720) = 0u;
  *(v5 + 736) = v22;
  *(v5 + 752) = 0;
  *(v5 + 753) = 1;
  *(v1 + 120) = v5;
  strcpy((v1 + 128), "10.2-inch iPad");
  *(v1 + 143) = -18;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBF880;
  *(v6 + 32) = 0xD000000000000018;
  *(v6 + 40) = 0x8000000100E43500;
  *(v6 + 48) = xmmword_100EC4160;
  *(v6 + 64) = xmmword_100EC40E0;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = xmmword_100EBC6B0;
  *(v6 + 128) = 0;
  *(v6 + 129) = 1;
  *(v6 + 136) = 0xD000000000000023;
  *(v6 + 144) = 0x8000000100E43520;
  *(v6 + 152) = xmmword_100EC4170;
  *(v6 + 168) = xmmword_100EC40E0;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = xmmword_100EBC6B0;
  *(v6 + 232) = 0;
  *(v6 + 233) = 1;
  *(v6 + 240) = 0xD000000000000023;
  *(v6 + 248) = 0x8000000100E43550;
  *(v6 + 256) = xmmword_100EC4180;
  *(v6 + 272) = xmmword_100EC40E0;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = xmmword_100EBC6B0;
  *(v6 + 336) = 256;
  *(v6 + 344) = 0xD000000000000023;
  *(v6 + 352) = 0x8000000100E43580;
  *(v6 + 360) = 0x4074000000000000;
  *(v6 + 368) = xmmword_100EC4120;
  *(v6 + 384) = 0x4034000000000000;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0u;
  *(v6 + 424) = 1;
  *(v6 + 432) = 1;
  *(v6 + 440) = 256;
  *(v6 + 448) = 0xD000000000000017;
  *(v6 + 456) = 0x8000000100E435B0;
  *(v6 + 464) = xmmword_100EC4190;
  *(v6 + 480) = xmmword_100EC40E0;
  *(v6 + 496) = 0u;
  *(v6 + 512) = 0u;
  *(v6 + 528) = xmmword_100EBC6B0;
  *(v6 + 544) = 0;
  *(v6 + 545) = 1;
  *(v6 + 552) = 0xD000000000000022;
  *(v6 + 560) = 0x8000000100E435D0;
  *(v6 + 568) = 0x407E000000000000;
  *(v6 + 576) = xmmword_100EC41A0;
  *(v6 + 592) = 0x4034000000000000;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 1;
  *(v6 + 640) = 1;
  *(v6 + 648) = 0;
  *(v6 + 649) = 1;
  *(v6 + 656) = 0xD000000000000022;
  *(v6 + 664) = 0x8000000100E43600;
  *(v6 + 672) = xmmword_100EC41B0;
  *(v6 + 688) = xmmword_100EC40E0;
  *(v6 + 704) = 0u;
  *(v6 + 720) = 0u;
  *(v6 + 736) = v22;
  *(v6 + 752) = 0;
  *(v6 + 753) = 1;
  *(v1 + 144) = v6;
  *(v1 + 152) = 0xD000000000000010;
  *(v1 + 160) = 0x8000000100E3BFE0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBF880;
  *(v7 + 32) = 0xD00000000000001ALL;
  *(v7 + 40) = 0x8000000100E43630;
  *(v7 + 48) = xmmword_100EC41C0;
  *(v7 + 64) = xmmword_100EC4030;
  *(v7 + 80) = xmmword_100EC4040;
  *(v7 + 96) = xmmword_100EC4050;
  *(v7 + 112) = xmmword_100EBC6B0;
  *(v7 + 128) = 0;
  *(v7 + 129) = 1;
  *(v7 + 136) = 0xD000000000000025;
  *(v7 + 144) = 0x8000000100E43650;
  *(v7 + 152) = xmmword_100EC41D0;
  *(v7 + 168) = xmmword_100EC4030;
  *(v7 + 184) = xmmword_100EC4040;
  *(v7 + 200) = xmmword_100EC4050;
  *(v7 + 216) = xmmword_100EBC6B0;
  *(v7 + 232) = 0;
  *(v7 + 233) = 1;
  *(v7 + 240) = 0xD000000000000025;
  *(v7 + 248) = 0x8000000100E43680;
  *(v7 + 256) = xmmword_100EC41E0;
  *(v7 + 272) = xmmword_100EC4030;
  *(v7 + 288) = xmmword_100EC4040;
  *(v7 + 304) = xmmword_100EC4050;
  *(v7 + 320) = v22;
  *(v7 + 336) = 0;
  *(v7 + 337) = 1;
  *(v7 + 344) = 0xD000000000000025;
  *(v7 + 352) = 0x8000000100E436B0;
  *(v7 + 360) = 0x4077700000000000;
  *(v7 + 368) = xmmword_100EC4120;
  *(v7 + 384) = xmmword_100EC4090;
  *(v7 + 400) = xmmword_100EC40A0;
  *(v7 + 416) = 0x4032000000000000;
  *(v7 + 424) = 1;
  *(v7 + 432) = 1;
  *(v7 + 440) = 0;
  *(v7 + 441) = 1;
  *(v7 + 448) = 0xD000000000000019;
  *(v7 + 456) = 0x8000000100E436E0;
  *(v7 + 464) = xmmword_100EC41F0;
  *(v7 + 480) = xmmword_100EC4030;
  *(v7 + 496) = xmmword_100EC4040;
  *(v7 + 512) = xmmword_100EC4050;
  *(v7 + 528) = xmmword_100EBC6B0;
  *(v7 + 544) = 0;
  *(v7 + 545) = 1;
  *(v7 + 552) = 0xD000000000000024;
  *(v7 + 560) = 0x8000000100E43700;
  *(v7 + 568) = 0x407F800000000000;
  *(v7 + 576) = xmmword_100EC4200;
  *(v7 + 592) = xmmword_100EC4090;
  *(v7 + 608) = xmmword_100EC40A0;
  *(v7 + 624) = 0x4032000000000000;
  *(v7 + 632) = 1;
  *(v7 + 640) = 1;
  *(v7 + 648) = 0;
  *(v7 + 649) = 1;
  *(v7 + 656) = 0xD000000000000024;
  *(v7 + 664) = 0x8000000100E43730;
  *(v7 + 672) = xmmword_100EC4210;
  *(v7 + 688) = xmmword_100EC4030;
  *(v7 + 704) = xmmword_100EC4040;
  *(v7 + 720) = xmmword_100EC4050;
  *(v7 + 736) = v22;
  *(v7 + 752) = 0;
  *(v7 + 753) = 1;
  *(v1 + 168) = v7;
  *(v1 + 176) = 0xD000000000000011;
  *(v1 + 184) = 0x8000000100E3BFA0;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBF880;
  *(v8 + 32) = 0xD000000000000020;
  *(v8 + 40) = 0x8000000100E43760;
  *(v8 + 48) = xmmword_100EC4220;
  *(v8 + 64) = xmmword_100EC4030;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = xmmword_100EBC6B0;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0xD000000000000026;
  *(v8 + 144) = 0x8000000100E43790;
  *(v8 + 152) = xmmword_100EC4230;
  *(v8 + 168) = xmmword_100EC4030;
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 216) = xmmword_100EBC6B0;
  *(v8 + 232) = 0;
  *(v8 + 240) = 0xD000000000000026;
  *(v8 + 248) = 0x8000000100E437C0;
  *(v8 + 256) = xmmword_100EC4240;
  *(v8 + 272) = xmmword_100EC4030;
  *(v8 + 288) = 0u;
  *(v8 + 304) = 0u;
  *(v8 + 320) = v22;
  *(v8 + 336) = 0;
  *(v8 + 344) = 0xD000000000000026;
  *(v8 + 352) = 0x8000000100E437F0;
  *(v8 + 360) = 0x4074000000000000;
  *(v8 + 368) = xmmword_100EC4250;
  *(v8 + 384) = 0x4038000000000000;
  *(v8 + 392) = 0u;
  *(v8 + 408) = 0u;
  *(v8 + 424) = 1;
  *(v8 + 432) = 1;
  *(v8 + 440) = 0;
  *(v8 + 448) = 0xD00000000000001ALL;
  *(v8 + 456) = 0x8000000100E43820;
  *(v8 + 464) = xmmword_100EC4260;
  *(v8 + 480) = xmmword_100EC4030;
  *(v8 + 496) = 0u;
  *(v8 + 512) = 0u;
  *(v8 + 528) = xmmword_100EBC6B0;
  *(v8 + 544) = 0;
  *(v8 + 552) = 0xD000000000000025;
  *(v8 + 560) = 0x8000000100E43840;
  *(v8 + 568) = 0x407B600000000000;
  *(v8 + 576) = xmmword_100EC4080;
  *(v8 + 592) = 0x4038000000000000;
  *(v8 + 600) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 1;
  *(v8 + 640) = 1;
  *(v8 + 648) = 0;
  *(v8 + 656) = 0xD000000000000025;
  *(v8 + 664) = 0x8000000100E43870;
  *(v8 + 672) = xmmword_100EC4270;
  *(v8 + 688) = xmmword_100EC4030;
  *(v8 + 704) = 0u;
  *(v8 + 720) = 0u;
  *(v8 + 736) = v22;
  *(v8 + 752) = 0;
  *(v1 + 192) = v8;
  strcpy((v1 + 200), "8.3-inch iPad");
  *(v1 + 214) = -4864;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBF880;
  *(v9 + 32) = 0xD000000000000017;
  *(v9 + 40) = 0x8000000100E438A0;
  *(v9 + 48) = xmmword_100EC4280;
  *(v9 + 64) = xmmword_100EC4290;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0x4032000000000000;
  *(v9 + 112) = xmmword_100EBC6B0;
  *(v9 + 128) = 0;
  *(v9 + 129) = 1;
  *(v9 + 136) = 0xD000000000000022;
  *(v9 + 144) = 0x8000000100E438C0;
  *(v9 + 152) = xmmword_100EC42A0;
  *(v9 + 168) = xmmword_100EC4290;
  *(v9 + 184) = 0;
  *(v9 + 192) = 0;
  *(v9 + 200) = 0;
  *(v9 + 208) = 0x4032000000000000;
  *(v9 + 216) = xmmword_100EBC6B0;
  *(v9 + 232) = 256;
  *(v9 + 240) = 0xD000000000000022;
  *(v9 + 248) = 0x8000000100E438F0;
  *(v9 + 256) = xmmword_100EC42B0;
  *(v9 + 272) = xmmword_100EC4290;
  *(v9 + 288) = 0;
  *(v9 + 296) = 0;
  *(v9 + 304) = 0;
  *(v9 + 312) = 0x4032000000000000;
  *(v9 + 320) = v22;
  *(v9 + 336) = 256;
  *(v9 + 344) = 0xD000000000000022;
  *(v9 + 352) = 0x8000000100E43920;
  *(v9 + 360) = 0x4077700000000000;
  *(v9 + 368) = xmmword_100EC42C0;
  *(v9 + 400) = 0;
  *(v9 + 408) = 0;
  *(v9 + 384) = 0x4038000000000000;
  *(v9 + 392) = 0;
  *(v9 + 416) = 0x4032000000000000;
  *(v9 + 424) = 1;
  *(v9 + 432) = 1;
  *(v9 + 440) = 0;
  *(v9 + 441) = 1;
  *(v9 + 448) = 0xD000000000000016;
  *(v9 + 456) = 0x8000000100E43950;
  *(v9 + 464) = xmmword_100EC42D0;
  *(v9 + 480) = xmmword_100EC4290;
  *(v9 + 496) = 0;
  *(v9 + 504) = 0;
  *(v9 + 512) = 0;
  *(v9 + 520) = 0x4032000000000000;
  *(v9 + 528) = xmmword_100EBC6B0;
  *(v9 + 544) = 0;
  *(v9 + 545) = 1;
  *(v9 + 552) = 0xD00000000000001ALL;
  *(v9 + 560) = 0x8000000100E43970;
  *(v9 + 568) = 0x4079E00000000000;
  *(v9 + 576) = xmmword_100EC42E0;
  *(v9 + 592) = 0x4038000000000000;
  *(v9 + 616) = 0;
  *(v9 + 608) = 0;
  *(v9 + 600) = 0;
  *(v9 + 624) = 0x4032000000000000;
  *(v9 + 632) = 1;
  *(v9 + 640) = 1;
  *(v9 + 648) = 0;
  *(v9 + 649) = 1;
  *(v9 + 656) = 0xD00000000000001ALL;
  *(v9 + 664) = 0x8000000100E43990;
  *(v9 + 672) = xmmword_100EC42F0;
  *(v9 + 688) = xmmword_100EC4290;
  *(v9 + 704) = 0;
  *(v9 + 712) = 0;
  *(v9 + 720) = 0;
  *(v9 + 728) = 0x4032000000000000;
  *(v9 + 736) = v22;
  *(v9 + 752) = 0;
  *(v9 + 753) = 1;
  *(v1 + 216) = v9;
  v10 = sub_10010C884(v1);
  swift_setDeallocating();
  sub_10010FC20(&qword_101188710, &unk_100EC43D0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v20[v19] = v10;
  v11 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_scrollView;
  v12 = [objc_allocWithZone(UIScrollView) init];
  v13 = UIView.forAutolayout.getter();

  *&v20[v11] = v13;
  v14 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView;
  v15 = [objc_allocWithZone(UIStackView) init];
  v16 = UIView.forAutolayout.getter();

  *&v20[v14] = v16;
  v23.receiver = v20;
  v23.super_class = type metadata accessor for MultiDeviceTesterViewController();
  v17 = objc_msgSendSuper2(&v23, "initWithCoder:", a1);

  if (v17)
  {
  }

  return v17;
}

id sub_100282370(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_10028244C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100282478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_1002824C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10028252C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099D38, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

void sub_100282578(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011886A0, &qword_100EC43A8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v29 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100282A8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
  }

  else
  {
    LOBYTE(v39) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v31 = v9;
    type metadata accessor for CGSize(0);
    LOBYTE(v32) = 1;
    sub_100282BF0(&qword_1011886B0, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v39;
    v13 = v40;
    LOBYTE(v32) = 2;
    sub_100282AE0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v39;
    type metadata accessor for UIEdgeInsets(0);
    LOBYTE(v32) = 3;
    sub_100282BF0(&qword_1011886C0, type metadata accessor for UIEdgeInsets, &protocol conformance descriptor for UIEdgeInsets);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v39;
    v16 = v40;
    v17 = v41;
    v18 = v42;
    LOBYTE(v32) = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v39;
    LOBYTE(v39) = 7;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v39) = 8;
    v53 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v39) = 5;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = 6;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    HIDWORD(v29) = v20 & 1;
    v22 = v53 & 1;
    (*(v6 + 8))(v8, v5);
    v23 = v31;
    *&v32 = v31;
    *(&v32 + 1) = v11;
    *&v33 = v12;
    *(&v33 + 1) = v13;
    *&v34 = v14;
    *(&v34 + 1) = v15;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v24 = v30;
    *&v37 = v30;
    *(&v37 + 1) = v21;
    v25 = BYTE4(v29);
    LOBYTE(v38) = BYTE4(v29);
    HIBYTE(v38) = v22;
    sub_100282B34(&v32, &v39);
    sub_10000959C(a1);
    v39 = v23;
    v40 = v11;
    v41 = v12;
    v42 = v13;
    v43 = v14;
    v44 = v15;
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = v19;
    v49 = v24;
    v50 = v21;
    v51 = v25;
    v52 = v22;
    sub_100282B6C(&v39);
    v26 = v37;
    *(a2 + 64) = v36;
    *(a2 + 80) = v26;
    *(a2 + 96) = v38;
    v27 = v33;
    *a2 = v32;
    *(a2 + 16) = v27;
    v28 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v28;
  }
}

unint64_t sub_100282A8C()
{
  result = qword_1011886A8;
  if (!qword_1011886A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011886A8);
  }

  return result;
}

unint64_t sub_100282AE0()
{
  result = qword_1011886B8;
  if (!qword_1011886B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011886B8);
  }

  return result;
}

unint64_t sub_100282B9C()
{
  result = qword_1011886D8;
  if (!qword_1011886D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011886D8);
  }

  return result;
}

uint64_t sub_100282BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100282C38()
{
  result = qword_1011886F8;
  if (!qword_1011886F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011886F8);
  }

  return result;
}

void sub_100282C9C(void *a1)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = NSClassFromString(v4);

  if (v5)
  {
    swift_getObjCClassMetadata();
LABEL_11:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    object_setClass(a1, ObjCClassFromMetadata);
    return;
  }

  swift_getObjectType();
  v6 = swift_getObjCClassFromMetadata();
  v7 = String.utf8CString.getter();
  ClassPair = objc_allocateClassPair(v6, (v7 + 32), 0);

  if (ClassPair)
  {
    ClassPair = swift_getObjCClassMetadata();
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = NSSelectorFromString(v9);

  v11 = String._bridgeToObjectiveC()();
  v12 = NSSelectorFromString(v11);

  if (ClassPair)
  {
    v13 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v13 = 0;
  }

  InstanceMethod = class_getInstanceMethod(v13, v10);
  if (InstanceMethod)
  {
    v11 = InstanceMethod;
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v10;
    v22[4] = sub_100283094;
    v22[5] = v15;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_10027D328;
    v22[3] = &unk_1010A3060;
    v1 = _Block_copy(v22);

    v2 = imp_implementationWithBlock(v1);
    if (ClassPair)
    {
      v16 = swift_getObjCClassFromMetadata();
      TypeEncoding = method_getTypeEncoding(v11);
      class_addMethod(v16, v10, v2, TypeEncoding);
      v18 = method_getTypeEncoding(v11);
      class_replaceMethod(v16, v12, v2, v18);
      _Block_release(v1);
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  v20 = method_getTypeEncoding(v11);
  class_addMethod(0, v10, v2, v20);
  v21 = method_getTypeEncoding(v11);
  class_replaceMethod(0, v12, v2, v21);
  _Block_release(v1);
  __break(1u);
}

double sub_100282F24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100282F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100282FE8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100283044()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t sub_1002830E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011886E8, &qword_100EC43B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100283158()
{
  result = qword_101188720;
  if (!qword_101188720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188720);
  }

  return result;
}

uint64_t sub_1002831C8(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100283398()
{
  result = qword_101188728;
  if (!qword_101188728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188728);
  }

  return result;
}

unint64_t sub_1002833F0()
{
  result = qword_101188730;
  if (!qword_101188730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188730);
  }

  return result;
}

unint64_t sub_100283448()
{
  result = qword_101188738;
  if (!qword_101188738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188738);
  }

  return result;
}

void sub_1002834E4()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v52 = &v50 - v2;
  v3 = type metadata accessor for MCDItemDetailViewController();
  v56.receiver = v0;
  v56.super_class = v3;
  objc_msgSendSuper2(&v56, "viewDidLoad");
  v4 = *&v0[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8];
  ObjectType = swift_getObjectType();
  v6 = v4[9];
  v51 = ObjectType;
  v6(v53, ObjectType, v4);
  v7 = v54;
  v8 = v55;
  sub_10000954C(v53, v54);
  (*(v8 + 40))(v7, v8);
  v9 = String._bridgeToObjectiveC()();

  sub_10000959C(v53);
  [v0 setTitle:v9];

  v10 = [v0 navigationItem];
  v11 = [objc_allocWithZone(UIView) init];
  [v10 setTitleView:v11];

  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  [v13 setBackgroundColor:v15];

  v16 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView;
  [*&v1[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView] setAutoresizingMask:18];
  v17 = *&v1[v16];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v17 setFrame:{v21, v23, v25, v27}];
  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 addSubview:*&v1[v16]];

    v30 = *&v1[v16];
    v31 = [v14 clearColor];
    [v30 setBackgroundColor:v31];

    [*&v1[v16] setDataSource:v1];
    [*&v1[v16] setDelegate:v1];
    [*&v1[v16] _setHeaderAndFooterViewsFloat:0];
    [*&v1[v16] setRemembersLastFocusedIndexPath:1];
    [*&v1[v16] setTableHeaderView:*&v1[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_mediaContainerHeader]];
    [*&v1[v16] setForcesVerticalScrollIndicators:1];
    sub_100283D74();
    v32 = *&v1[v16];
    sub_100009F78(0, &qword_101188930, UITableViewHeaderFooterView_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = v32;
    v35 = String._bridgeToObjectiveC()();
    [v34 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v35];

    v36 = *&v1[v16];
    sub_100009F78(0, &qword_101188938, UITableViewCell_ptr);
    v37 = swift_getObjCClassFromMetadata();
    v38 = v36;
    v39 = String._bridgeToObjectiveC()();
    [v38 registerClass:v37 forCellReuseIdentifier:v39];

    v40 = v4[16];
    v41 = swift_unknownObjectRetain();
    v42 = v51;
    v40(v41, &off_1010A32A8, v51, v4);
    v43 = v4[19];
    v44 = v1;
    v43(v1, v42, v4);
    sub_100284468();
    v45 = type metadata accessor for TaskPriority();
    v46 = v52;
    (*(*(v45 - 8) + 56))(v52, 1, 1, v45);
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = &unk_100EC46A0;
    *(v48 + 24) = v47;
    v49 = static Task<>.delayed(by:priority:task:)(v46, &unk_100EBE9E0, v48, (&type metadata for () + 1), 2.0);

    sub_1000095E8(v46, &unk_101181520, &qword_100EBCC60);
    *&v44[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorLoadingTimeout] = v49;

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100283AC0(uint64_t a1)
{
  *(v1 + 112) = a1;
  type metadata accessor for MainActor();
  *(v1 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100283B58, v3, v2);
}

uint64_t sub_100283B58()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError] = 1;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v4 = v2;
    v5 = sub_10028434C(v3);
    if (v4[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError] == 1)
    {
      v6 = *&v4[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8];
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 112))(ObjectType, v6);
    }

    else
    {
      v8 = 1;
    }

    [v5 setHidden:v8 & 1];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView);
    v11 = v9;
    v12 = v10;

    if (v10)
    {
      [v12 setHidden:0];
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    *&v13[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorLoadingTimeout] = 0;
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_100283D74()
{
  v1 = v0;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v3 = &v29 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 40))(ObjectType, v4);
  v7 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_mediaContainerHeader;
  swift_getKeyPath();
  v35 = v6;
  sub_1002866EC(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  sub_1000089F8(v6 + v8, v3, &unk_101188920, &qword_100EBCC50);
  sub_100261718(v3);

  swift_getKeyPath();
  v34 = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v6 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v10 = *(v6 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8);

  sub_100261EE0(v9, v10);

  v11 = *(*(v1 + v7) + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  v34 = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v6 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  v13 = *(v6 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory + 8);
  swift_getKeyPath();
  v31 = v11;
  v32 = v12;
  v33 = v13;
  v34 = v11;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v34 = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v6 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  v15 = *(v6 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8);

  sub_100262364(v14, v15);

  v30 = v7;
  v16 = *(v1 + v7);
  v17 = v1;
  v18 = *(v16 + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  v34 = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v6 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable);
  if (v19 == *(v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable))
  {
    *(v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = v19;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v29 - 2) = v18;
    *(&v29 - 8) = v19;
    v34 = v18;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v20 = v30;
  v21 = *(v1 + v30);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = &v21[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction];
  v24 = *&v21[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction];
  v25 = *&v21[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction + 8];
  *v23 = sub_100286774;
  v23[1] = v22;
  v26 = v21;

  sub_100020438(v24, v25);

  v27 = *(v17 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView);
  v28 = *(v17 + v20);
  [v27 frame];
  [v28 sizeThatFits:{CGRectGetWidth(v36), 1.79769313e308}];
  [v28 frame];
  [v28 setFrame:?];
}

void sub_1002842F0(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100284718(a1 & 1);
  }
}

id sub_10028434C(__n128 a1)
{
  v2 = type metadata accessor for UIContentUnavailableConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController____lazy_storage___loadingView;
  v7 = *(v1 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController____lazy_storage___loadingView);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController____lazy_storage___loadingView);
  }

  else
  {
    static UIContentUnavailableConfiguration.loading()();
    v9 = UIContentUnavailableConfiguration.makeContentView()();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = *v6;
    *v6 = v9;
    *(v6 + 8) = v11;
    v8 = v9;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

id sub_100284468()
{
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = sub_10028434C(v2);
    [v3 addSubview:v4];

    v5 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController____lazy_storage___loadingView;
    v6 = *&v0[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView];
    v7 = *&v0[OBJC_IVAR____TtC5Music27MCDItemDetailViewController____lazy_storage___loadingView];
    [v6 frame];
    [v7 setFrame:?];

    v8 = *&v0[v5];

    return [v8 setUserInteractionEnabled:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100284538(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v6 = type metadata accessor for UIContentUnavailableConfiguration();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView;
  [*&v4[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView] removeFromSuperview];
  if (!a2)
  {
    v19 = *&v4[v11];
    *&v4[v11] = 0;

    return [*&v4[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView] reloadData];
  }

  static UIContentUnavailableConfiguration.empty()();

  UIContentUnavailableConfiguration.text.setter();
  v12 = UIContentUnavailableConfiguration.makeContentView()();
  v13 = *&v4[v11];
  *&v4[v11] = v12;
  v14 = v12;

  result = [v4 view];
  if (result)
  {
    v16 = result;
    [result addSubview:v14];

    v17 = *&v4[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView];
    v18 = v14;
    [v17 frame];
    [v18 setFrame:?];

    [v18 setHidden:(v4[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError] & 1) == 0];
    (*(v7 + 8))(v10, v6);
    return [*&v4[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView] reloadData];
  }

  __break(1u);
  return result;
}

uint64_t sub_100284718(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v70 = &v56 - v3;
  v61 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v63 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v68 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v5;
  __chkstk_darwin();
  v69 = &v56 - v6;
  v7 = type metadata accessor for MusicPropertySource();
  v59 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v56 - v10;
  sub_10010FC20(&unk_101188910, &qword_100EBE7A0);
  __chkstk_darwin();
  v60 = &v56 - v12;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v71 = &v56 - v13;
  v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v62 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v1 navigationController];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for CarPlayRootNavigationController();
    if (swift_dynamicCastClass())
    {
      sub_1001D3268(0, 1);
    }
  }

  v64 = v1;
  v20 = *&v1[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  v21 = *&v2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8];
  ObjectType = swift_getObjectType();
  v23 = v71;
  (*(v21 + 88))(ObjectType, v21);
  v58 = *(v15 + 48);
  if (v58(v23, 1, v14) == 1)
  {
    (*(v21 + 72))(v78, ObjectType, v21);
    v57 = v14;
    v56 = v15;
    v24 = v7;
    v25 = v79;
    v26 = v80;
    v27 = sub_10000954C(v78, v79);
    v76 = v25;
    v77 = *(v26 + 8);
    v28 = sub_10001C8B8(v75);
    (*(*(v25 - 8) + 16))(v28, v27, v25);
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    (*(v21 + 80))(ObjectType, v21);
    v29 = v59;
    (*(v59 + 104))(v9, enum case for MusicPropertySource.catalog(_:), v24);
    LOBYTE(v27) = static MusicPropertySource.== infix(_:_:)();
    v30 = *(v29 + 8);
    v30(v9, v24);
    v31 = v24;
    v15 = v56;
    v30(v11, v31);
    v32 = type metadata accessor for MusicPlaybackSource();
    v33 = *(v32 - 8);
    v34 = &enum case for MusicPlaybackSource.catalog(_:);
    if ((v27 & 1) == 0)
    {
      v34 = &enum case for MusicPlaybackSource.library(_:);
    }

    v35 = v60;
    (*(*(v32 - 8) + 104))(v60, *v34, v32);
    v36 = v32;
    v14 = v57;
    (*(v33 + 56))(v35, 0, 1, v36);
    v37 = v62;
    v38 = v71;
    MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
    sub_10000959C(v78);
    if (v58(v38, 1, v14) != 1)
    {
      sub_1000095E8(v38, &unk_10118CDB0, &unk_100EC0360);
    }
  }

  else
  {
    v37 = v62;
    (*(v15 + 32))(v62, v23, v14);
  }

  v39 = v63;
  (*(v15 + 16))(v63, v37, v14);
  swift_storeEnumTagMultiPayload();
  (*(v21 + 72))(v75, ObjectType, v21);
  v40 = v14;
  v41 = v76;
  v42 = v77;
  v43 = sub_10000954C(v75, v76);
  v79 = v41;
  v80 = *(*(*(v42 + 8) + 8) + 8);
  v44 = sub_10001C8B8(v78);
  (*(*(v41 - 8) + 16))(v44, v43, v41);
  v45 = *(v21 + 8);
  *(&v73 + 1) = ObjectType;
  v74 = v45;
  *&v72 = v20;
  swift_unknownObjectRetain();
  v46 = v64;
  v47 = v64;
  v48 = v69;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v39, v78, 3, 1, v67 & 1, 0, 0, 1, v69, v46, &v72);
  sub_10000959C(v75);
  v49 = type metadata accessor for TaskPriority();
  v50 = v70;
  (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
  v51 = v68;
  sub_1001DFCE4(v48, v68);
  type metadata accessor for MainActor();
  v52 = static MainActor.shared.getter();
  v53 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v54 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v51, v54 + v53);
  sub_1001F4CB8(0, 0, v50, &unk_100EC45C0, v54);

  sub_100188CDC(v48);
  return (*(v15 + 8))(v37, v40);
}

uint64_t sub_100284FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for PlaybackIntentDescriptor(0);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_1002850D8, v7, v6);
}

uint64_t sub_1002850D8()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1002851AC;
  v2 = *(v0 + 16);

  return PlaybackController.add(_:route:)(v2, 0);
}

uint64_t sub_1002851AC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_10028535C;
  }

  else
  {
    v5 = sub_1002852E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002852E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028535C()
{
  v21 = v0;
  v2 = v0[2];
  v1 = v0[3];

  Logger.init(subsystem:category:)();
  sub_1001DFCE4(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  if (v5)
  {
    v19 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = PlaybackIntentDescriptor.debugDescription.getter();
    v18 = v6;
    v14 = v13;
    sub_100188CDC(v8);
    v15 = sub_1000105AC(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to add playback descriptor to application playback controller: %{public}s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v7 + 8))(v18, v19);
  }

  else
  {

    sub_100188CDC(v8);
    (*(v7 + 8))(v6, v9);
  }

  v16 = v0[1];

  return v16();
}

void sub_10028555C(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  sub_10010FC20(&unk_101188900, &qword_100ED9260);
  __chkstk_darwin();
  v4 = &v13[-v3];
  sub_1000089F8(a1, &v13[-v3], &unk_101188900, &qword_100ED9260);
  v5 = _s14descr101094081C15DataSourceErrorOMa(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v6 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView;
    [*(v1 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView) removeFromSuperview];
    v7 = *(v1 + v6);
    *(v1 + v6) = 0;

    [*(v1 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
  }

  else
  {
    v8 = type metadata accessor for MusicPropertySource();
    v9 = (*(*(v8 - 8) + 88))(v4, v8);
    if (v9 == enum case for MusicPropertySource.catalog(_:) || v9 == enum case for MusicPropertySource.library(_:))
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v10 = String.init(localized:table:bundle:locale:comment:)();
      sub_100284538(v10, v11, v12);
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

id sub_100285980(void *a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v6 = &v20[-1] - v5;
  v7 = *(v2 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 32))(a2, ObjectType, v7);
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();
  v14 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v13];

  if (v14)
  {
    __chkstk_darwin();
    *(&v19 - 2) = v11;
    *(&v19 - 1) = v12;
    v20[3] = sub_10010FC20(&qword_1011888C8, &qword_100EC4568);
    v20[4] = sub_100286450();
    sub_10001C8B8(v20);
    v15 = v14;
    sub_10010FC20(&qword_1011888D8, &unk_100EC4570);
    sub_1002864B4();
    UIHostingConfiguration<>.init(content:)();

    UITableViewHeaderFooterView.contentConfiguration.setter();

    v16 = v15;
    static UIBackgroundConfiguration.clear()();
    v17 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    UITableViewHeaderFooterView.backgroundConfiguration.setter();
  }

  else
  {
  }

  return v14;
}

uint64_t sub_100285BCC@<X0>(uint64_t a3@<X8>)
{
  sub_100009838();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.caption.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10011895C(v4, v6, v8 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10011895C(v9, v11, v13 & 1);

  v21 = *(sub_10010FC20(&qword_1011888F0, &qword_100EC2E88) + 36);
  *(a3 + v21) = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v20;
  LOBYTE(v14) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = sub_10010FC20(&qword_1011888D8, &unk_100EC4570);
  v31 = a3 + *(result + 36);
  *v31 = v14;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

id sub_100286364(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MCDItemDetailViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100286450()
{
  result = qword_1011888D0;
  if (!qword_1011888D0)
  {
    sub_1001109D0(&qword_1011888C8, &qword_100EC4568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011888D0);
  }

  return result;
}

unint64_t sub_1002864B4()
{
  result = qword_1011888E0;
  if (!qword_1011888E0)
  {
    sub_1001109D0(&qword_1011888D8, &unk_100EC4570);
    sub_100286540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011888E0);
  }

  return result;
}

unint64_t sub_100286540()
{
  result = qword_1011888E8;
  if (!qword_1011888E8)
  {
    sub_1001109D0(&qword_1011888F0, &qword_100EC2E88);
    sub_1002866EC(&qword_1011888F8, type metadata accessor for VibrancyModifier, &unk_100EDF894);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011888E8);
  }

  return result;
}

uint64_t sub_1002865FC(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100284FB8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002866EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028677C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_100283AC0(v0);
}

void sub_10028680C()
{
  v1 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView;
  *(v0 + v1) = [objc_allocWithZone(MCDTableView) init];
  *(v0 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorLoadingTimeout) = 0;
  *(v0 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) = 0;
  v2 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_mediaContainerHeader;
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController____lazy_storage___loadingView);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002868EC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002869C4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101188940);
  sub_1000060E4(v0, qword_101188940);
  return static Logger.music(_:)(0x524C746567646957, 0xEE00656863614355);
}

void sub_100286A34()
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v42 = &v41 - v1;
  v44[0] = type metadata accessor for String.Encoding();
  v2 = *(v44[0] - 8);
  __chkstk_darwin();
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v44[7] = *v0;
  v44[8] = v5;
  v6 = v0[3];
  v44[9] = v0[2];
  v44[10] = v6;
  v8 = v0[4];
  v7 = v0[5];
  v43 = v0;
  v44[11] = v8;
  v44[12] = v7;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v9 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 + 1;
  v13 = 16 * v9 + 40;
  while (v9 != 3)
  {
    if (v12 == ++v9)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v14 = v13 + 16;
    v15 = *(&v44[3] + v13);
    v13 += 16;
    if (v15)
    {
      v16 = *(v44 + v14);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100498B7C(0, *(v10 + 2) + 1, 1, v10);
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        v10 = sub_100498B7C((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 2) = v18 + 1;
      v19 = &v10[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_2;
    }
  }

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayDestroy();
  v20 = 0;
  v21 = (v2 + 8);
  v22 = (v10 + 40);
  v23 = -*(v10 + 2);
  v24 = -1;
  while (v23 + v24 != -1)
  {
    if (++v24 >= *(v10 + 2))
    {
      goto LABEL_32;
    }

    v25 = v22 + 2;
    v26 = *v22;
    v44[1] = *(v22 - 1);
    v44[2] = v26;

    static String.Encoding.utf8.getter();
    sub_100009838();
    v27 = StringProtocol.lengthOfBytes(using:)();
    (*v21)(v4, v44[0]);

    v22 = v25;
    v28 = __OFADD__(v20, v27);
    v20 += v27;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  v29 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
  v31 = v42;
  v30 = v43;
  sub_100288264(v43 + *(v29 + 32), v42);
  v32 = type metadata accessor for Date();
  v33 = (*(*(v32 - 8) + 48))(v31, 1, v32) != 1;
  sub_1002882D4(v31);
  v34 = *(v30 + *(v29 + 40));
  if (!v34)
  {
    goto LABEL_25;
  }

  [v34 size];
  v37 = v35 * v36;
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v37 >= 9.22337204e18)
  {
    __break(1u);
LABEL_25:
    v37 = 0.0;
  }

  if ((v37 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v38 = 8 * v33;
  v28 = __OFADD__(v20, v38);
  v39 = v20 + v38;
  if (v28)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = __OFADD__(v39, 2);
  v40 = v39 + 2;
  if (v28)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!__OFADD__(v40, 4 * v37))
  {
    return;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_100286E28@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_100286E44(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = v2;
  return v2;
}

void sub_100286E70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
}

uint64_t (*sub_100286EA8(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 40);
  v4 = *(v2 + v3);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_10028833C;
}

uint64_t sub_100286F04()
{
  v1 = v0;
  v2 = v112;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v99 = &v85 - v3;
  v4 = type metadata accessor for String.Encoding();
  v100 = *(v4 - 8);
  __chkstk_darwin();
  v102 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v101 = *(v0 + 1);
  v114 = v101;
  v7 = v0[3];
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v113 = v6;
  v115 = v7;
  v116 = v8;
  v117 = v9;
  v10 = type metadata accessor for WidgetMusicItem(0);
  v11 = *(v10 + 28);

  v118 = URL.absoluteString.getter();
  v119 = v12;
  v91 = v10;
  v13 = *(v1 + *(v10 + 32));
  if (v13 <= 3)
  {
    if (*(v1 + *(v10 + 32)) > 1u)
    {
      if (v13 == 2)
      {
        v14 = xmmword_100EC4710;
      }

      else
      {
        v14 = xmmword_100EC4700;
      }
    }

    else if (*(v1 + *(v10 + 32)))
    {
      v14 = xmmword_100EC4720;
    }

    else
    {
      v14 = xmmword_100EC46B0;
    }

    goto LABEL_18;
  }

  if (*(v1 + *(v10 + 32)) <= 5u)
  {
    if (v13 == 4)
    {
      v14 = xmmword_100EC46F0;
    }

    else
    {
      v14 = xmmword_100EC46E0;
    }

    goto LABEL_18;
  }

  if (v13 == 6)
  {
    v14 = xmmword_100EC46D0;
    goto LABEL_18;
  }

  if (v13 == 7)
  {
    v14 = xmmword_100EC46C0;
LABEL_18:
    v120 = v14;
    goto LABEL_19;
  }

  v120 = 0uLL;
LABEL_19:
  v15 = (v1 + v91[9]);
  v16 = v15[1];
  v121 = *v15;
  v122 = v16;
  v17 = (v1 + v91[10]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  v123 = v19;
  v124 = v18;
  v20 = (v1 + v91[11]);
  v21 = v20[1];
  v125 = *v20;
  v126 = v21;
  v22 = (v1 + v91[12]);
  v23 = v22[1];
  v94 = v4;
  if (v23)
  {
    v24 = *v22;
  }

  else
  {
    v24 = 0;
  }

  v127 = v24;
  v128 = v23;
  v25 = (v1 + v91[13]);
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
  }

  else
  {
    v27 = 0;
  }

  v129 = v27;
  v130 = v26;
  v28 = (v1 + v91[14]);
  v29 = v28[1];
  v131 = *v28;
  v132 = v29;
  v30 = v91[19];
  v90 = v1;
  v31 = (v1 + v30);
  v32 = v31[1];
  v133 = *v31;
  v134 = v32;

  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
  v35 = 12;
  v36 = v112;
LABEL_29:
  if (v33 <= 0xC)
  {
    v37 = 12;
  }

  else
  {
    v37 = v33;
  }

  v38 = v37 + 1;
  v39 = 16 * v33 + 40;
  v40 = v94;
  while (1)
  {
    if (v33 == 12)
    {
      sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
      swift_arrayDestroy();
      v18 = 0;
      v45 = *(v34 + 2);
      *&v101 = v100 + 8;
      v38 = (v34 + 40);
      v11 = -v45;
      v35 = -1;
      do
      {
        if (v11 + v35 == -1)
        {
          goto LABEL_47;
        }

        if (++v35 >= *(v34 + 2))
        {
          goto LABEL_90;
        }

        v36 = (v38 + 16);
        v33 = *v38;
        v110 = *(v38 - 8);
        v111 = v33;

        v2 = v102;
        static String.Encoding.utf8.getter();
        sub_100009838();
        v16 = StringProtocol.lengthOfBytes(using:)();
        (*v101)(v2, v40);

        v38 = v36;
        v46 = __OFADD__(v18, v16);
        v18 += v16;
      }

      while (!v46);
      __break(1u);
LABEL_47:
      v89 = v18;

      v47 = v90;
      v48 = v91;
      v49 = v99;
      sub_100288264(v90 + v91[17], v99);
      v50 = type metadata accessor for Date();
      v88 = (*(*(v50 - 8) + 48))(v49, 1, v50) != 1;
      sub_1002882D4(v49);
      sub_10010FC20(&qword_101188C28, &qword_100EC4868);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBDC20;
      v52 = v47 + v48[21];
      v2 = *v52;
      v36 = *(v52 + 8);
      v34 = *(v52 + 16);
      LOBYTE(v52) = *(v52 + 24);
      *(inited + 32) = v2;
      *(inited + 40) = v36;
      *(inited + 48) = v34;
      *(inited + 56) = v52;
      v53 = (v47 + v48[22]);
      v11 = v53[1];
      v35 = v53[2];
      LOBYTE(v40) = *(v53 + 24);
      v100 = *v53;
      *(inited + 64) = v100;
      *(inited + 72) = v11;
      *(inited + 80) = v35;
      *(inited + 88) = v40;
      v16 = _swiftEmptyArrayStorage;
      if (v52)
      {
        goto LABEL_50;
      }

      v99 = inited;
      v16 = sub_1004995F4(0, 1, 1, _swiftEmptyArrayStorage);
      v33 = *(v16 + 16);
      v38 = *(v16 + 24);
      v18 = v33 + 1;
      if (v33 < v38 >> 1)
      {
        goto LABEL_49;
      }

      goto LABEL_105;
    }

    if (v38 == ++v33)
    {
      break;
    }

    v41 = v39 + 16;
    v16 = *&v112[v39];
    v39 += 16;
    if (v16)
    {
      v42 = *(&v109[12] + v41);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100498B7C(0, *(v34 + 2) + 1, 1, v34);
      }

      v11 = *(v34 + 2);
      v43 = *(v34 + 3);
      v18 = v11 + 1;
      if (v11 >= v43 >> 1)
      {
        v34 = sub_100498B7C((v43 > 1), v11 + 1, 1, v34);
      }

      *(v34 + 2) = v18;
      v44 = &v34[16 * v11];
      *(v44 + 4) = v42;
      *(v44 + 5) = v16;
      goto LABEL_29;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  do
  {
    __break(1u);
    do
    {
      __break(1u);
LABEL_105:
      v16 = sub_1004995F4((v38 > 1), v18, 1, v16);
LABEL_49:
      *(v16 + 16) = v18;
      v54 = (v16 + 24 * v33);
      v54[4] = v2;
      v54[5] = v36;
      v54[6] = v34;
LABEL_50:

      if (v40)
      {
        v2 = v102;
        v34 = v101;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2 = v102;
        v34 = v101;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_1004995F4(0, *(v16 + 16) + 1, 1, v16);
        }

        v57 = *(v16 + 16);
        v56 = *(v16 + 24);
        if (v57 >= v56 >> 1)
        {
          v16 = sub_1004995F4((v56 > 1), v57 + 1, 1, v16);
        }

        *(v16 + 16) = v57 + 1;
        v58 = (v16 + 24 * v57);
        v58[4] = v100;
        v58[5] = v11;
        v58[6] = v35;
      }

      v18 = *(v16 + 16);

      v38 = (v18 * 24) >> 64;
      v33 = v90;
      if (v38 != (24 * v18) >> 63)
      {
        goto LABEL_94;
      }

      v11 = *(v90 + v91[20]);
      v35 = *(v11 + 16);
      v86 = *(*(v90 + v91[15]) + 16);
      v87 = 24 * v18;
      if (v35)
      {
        v109[0] = _swiftEmptyArrayStorage;
        v16 = v109;
        sub_10066C89C(0, v35, 0);
        v59 = 0;
        v60 = v109[0];
        v61 = (v11 + 72);
        v40 = &type metadata for String;
        v92 = v35;
        v93 = v11;
        while (1)
        {
          v38 = *(v11 + 16);
          if (v59 >= v38)
          {
            goto LABEL_92;
          }

          v96 = v59;
          v97 = v60;
          v62 = *(v61 - 5);
          v63 = *(v61 - 4);
          v64 = *(v61 - 3);
          v65 = *(v61 - 2);
          v66 = *(v61 - 1);
          v67 = *v61;
          v95 = v61;
          v103 = v62;
          v104 = v63;
          v105 = v64;
          v106 = v65;
          v107 = v66;
          v108 = v67;
          swift_bridgeObjectRetain_n();
          v99 = v65;
          swift_bridgeObjectRetain_n();
          v98 = v67;
          swift_bridgeObjectRetain_n();
          v110 = v62;
          v111 = v63;

          static String.Encoding.utf8.getter();
          v36 = sub_100009838();
          v11 = StringProtocol.lengthOfBytes(using:)();
          v18 = *v34;
          v33 = v94;
          (*v34)(v2, v94);
          v100 = v63;

          v35 = v34;
          v110 = v105;
          v111 = v106;

          static String.Encoding.utf8.getter();
          v16 = StringProtocol.lengthOfBytes(using:)();
          (v18)(v2, v33);

          v34 = (v11 + v16);
          if (__OFADD__(v11, v16) || (v11 = v108, v110 = v107, v111 = v108, , static String.Encoding.utf8.getter(), v68 = StringProtocol.lengthOfBytes(using:)(), (v18)(v2, v33), , v46 = __OFADD__(v34, v68), v16 = &v34[v68], v46))
          {
            __break(1u);
            goto LABEL_89;
          }

          swift_arrayDestroy();
          v33 = v16 + 8;
          if (__OFADD__(v16, 8))
          {
            goto LABEL_93;
          }

          v60 = v97;
          v109[0] = v97;
          v70 = v97[2];
          v69 = v97[3];
          v18 = v70 + 1;
          if (v70 >= v69 >> 1)
          {
            v16 = v109;
            sub_10066C89C((v69 > 1), v70 + 1, 1);
            v60 = v109[0];
          }

          v71 = v95;
          v59 = v96 + 1;
          v60[2] = v18;
          v60[v70 + 4] = v33;
          v61 = v71 + 7;
          v35 = v92;
          v11 = v93;
          v2 = v102;
          v34 = v101;
          if (v92 == v59)
          {
            v33 = v90;
            goto LABEL_69;
          }
        }
      }

      v60 = _swiftEmptyArrayStorage;
      v18 = _swiftEmptyArrayStorage[2];
      if (v18)
      {
LABEL_69:
        v16 = 0;
        v38 = 32;
        while (1)
        {
          v72 = *(v60 + v38);
          v46 = __OFADD__(v16, v72);
          v16 += v72;
          if (v46)
          {
            goto LABEL_91;
          }

          v38 += 8;
          if (!--v18)
          {
            goto LABEL_72;
          }
        }
      }

      v16 = 0;
LABEL_72:

      v73 = *(v33 + v91[25]);
      if (!v73)
      {
        goto LABEL_77;
      }

      [v73 size];
      v76 = v74 * v75;
      v38 = *&v76 & 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
    v38 = 0xC3E0000000000001;
    if (v76 <= -9.22337204e18)
    {
      goto LABEL_95;
    }

    if (v76 >= 9.22337204e18)
    {
      __break(1u);
LABEL_77:
      v76 = 0.0;
    }

    v38 = v76;
    if ((v76 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_96;
    }

    v77 = 8 * v88;
    v46 = __OFADD__(v89, v77);
    v78 = v89 + v77;
    if (v46)
    {
      goto LABEL_97;
    }

    v46 = __OFADD__(v78, v87);
    v79 = v78 + v87;
    if (v46)
    {
      goto LABEL_98;
    }

    v46 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (v46)
    {
      goto LABEL_99;
    }

    v46 = __OFADD__(v80, v86 + 1);
    v81 = v80 + v86 + 1;
    if (v46)
    {
      goto LABEL_100;
    }

    v46 = __OFADD__(v81, 8);
    v82 = v81 + 8;
    if (v46)
    {
      goto LABEL_101;
    }

    v46 = __OFADD__(v82, v16);
    v83 = v82 + v16;
    if (v46)
    {
      goto LABEL_102;
    }

    v38 *= 4;
    result = v83 + v38;
  }

  while (__OFADD__(v83, v38));
  return result;
}

uint64_t sub_100287980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_100287994@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *sub_100287A00(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 100));
  v3 = v2;
  return v2;
}

void sub_100287A2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);

  *(v2 + v4) = a1;
}

uint64_t (*sub_100287A64(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 100);
  v4 = *(v2 + v3);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_100287ABC;
}

void sub_100287AC0(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  if (a2)
  {
    v6 = v5;

    *(v3 + v4) = v5;
  }

  else
  {

    *(v3 + v4) = v5;
  }
}

uint64_t *sub_100287B40()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  v6 = *(*v0 + 120);
  v13[0] = v4;
  v13[1] = v3;
  v14 = *(v1 + 96);
  v7 = type metadata accessor for WidgetLRUCache.DiskEntry(0, v13);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 144);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = *(*v0 + 168);
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_100287D60()
{
  sub_100287B40();

  return swift_deallocClassInstance();
}

uint64_t sub_100287DB8()
{
  v1 = v0;
  if (*(v0 + qword_101188970))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  if (qword_10117F498 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101188940);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "WidgetLRUCache deinitialized, memory pressure listener cancelled.", v5, 2u);
  }

  v6 = qword_101188958;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100287F64()
{
  sub_100287DB8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100287FA8(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    v9[0] = v2;
    v9[1] = v3;
    v10 = *(a1 + 96);
    result = type metadata accessor for WidgetLRUCache.DiskEntry(319, v9);
    if (v6 <= 0x3F)
    {
      v12 = *(result - 8) + 64;
      v13 = &value witness table for Builtin.Int64 + 64;
      v14 = &value witness table for Builtin.Int64 + 64;
      result = type metadata accessor for Date();
      if (v7 <= 0x3F)
      {
        v15 = *(result - 8) + 64;
        v16 = &unk_100EC4780;
        v17 = &unk_100EC4780;
        result = type metadata accessor for Optional();
        if (v8 <= 0x3F)
        {
          v18 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_10028816C(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100039B3C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100288264(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002882D4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100288360(uint64_t a1)
{
  result = type metadata accessor for Genre();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Composer();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Artist();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_100288430(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  if (v1 <= 0x3F)
  {
    _s6AlbumsV5ScopeOMa(319);
    if (v2 <= 0x3F)
    {
      sub_10018D5F0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002884E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v39 - v7;
  __chkstk_darwin();
  v10 = &v39 - v9;
  type metadata accessor for MusicLibrary();
  *a3 = static MusicLibrary.shared.getter();
  v11 = _s6AlbumsVMa(0);
  v12 = (a3 + v11[7]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v42 = v11[8];
  *(a3 + v42) = &_swiftEmptySetSingleton;
  sub_10028CC7C(a1, a3 + v11[6], _s6AlbumsV5ScopeOMa);
  *(a3 + 8) = a2;
  v41 = objc_opt_self();
  v13 = [v41 standardUserDefaults];
  sub_10028A3AC();
  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v44);

  v14 = v44;
  if ((v44 & 0xFF00) == 0x200)
  {
    sub_10028CC7C(a1, v10, _s6AlbumsV5ScopeOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_10028CCE4(v10, _s6AlbumsV5ScopeOMa);
        v17 = 67;
      }

      else
      {
        sub_10028CCE4(v10, _s6AlbumsV5ScopeOMa);
        v17 = 68;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        v16 = a1;
        if (EnumCaseMultiPayload == 3)
        {
          v17 = 64;
        }

        else
        {
          v17 = 66;
        }

        v18 = v42;
LABEL_16:
        v23 = sub_10045FDA0(v17);
        if ((v23 & 0xFF00) == 0x200)
        {
          sub_10028CC7C(v16, v8, _s6AlbumsV5ScopeOMa);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 >= 3)
          {
            if (v24 == 3)
            {
              v21 = 0;
LABEL_26:
              v25 = v41;
              v26 = &selRef_objectAtIndexedSubscript_;
              v19 = (a3 + v11[9]);
              *v19 = v21;
              v19[1] = 1;
              v20 = v19 + 1;
              goto LABEL_27;
            }
          }

          else
          {
            sub_10028CCE4(v8, _s6AlbumsV5ScopeOMa);
          }

          v21 = 4;
          goto LABEL_26;
        }

        v19 = (a3 + v11[9]);
        *v19 = v23;
        v19[1] = HIBYTE(v23) & 1;
        v20 = v19 + 1;
        v21 = v23;
        if ((v23 & 0x100) == 0)
        {
          v22 = 0;
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      sub_10028CCE4(v10, _s6AlbumsV5ScopeOMa);
      v17 = 65;
    }

    v18 = v42;
    v16 = a1;
    goto LABEL_16;
  }

  v19 = (a3 + v11[9]);
  *v19 = v44;
  v19[1] = HIBYTE(v14) & 1;
  v20 = v19 + 1;
  v21 = v14;
  if ((v14 & 0x100) == 0)
  {
    v22 = 0;
    v18 = v42;
    v16 = a1;
LABEL_21:
    v25 = v41;
    v26 = &selRef_objectAtIndexedSubscript_;
    goto LABEL_28;
  }

  v18 = v42;
  v16 = a1;
LABEL_22:
  v25 = v41;
  v26 = &selRef_objectAtIndexedSubscript_;
LABEL_27:
  v22 = 256;
LABEL_28:
  sub_100375F10(v22 | v21);
  if ((v27 & 0xFF00) != 0x200)
  {
    v30 = (v27 >> 8) & 1;
    goto LABEL_35;
  }

  v28 = v40;
  sub_10028CC7C(v16, v40, _s6AlbumsV5ScopeOMa);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 >= 3)
  {
    if (v29 == 3)
    {
      LOBYTE(v27) = 0;
      LOBYTE(v30) = 1;
      goto LABEL_35;
    }
  }

  else
  {
    sub_10028CCE4(v28, _s6AlbumsV5ScopeOMa);
  }

  LOBYTE(v30) = 1;
  LOBYTE(v27) = 4;
LABEL_35:
  *v19 = v27;
  *v20 = v30;
  v31 = [v25 v26[462]];
  v32 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
  sub_10028A5BC(0x704F7265746C6946, 0xEC0000006E6F6974);
  sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
  sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v32, &v43);

  v33 = v43;
  if (!v43)
  {
    v34 = sub_10028A7B0();
    v35 = Optional<A>.convertToSet.getter(v34);
    if (v35)
    {
      v33 = v35;
    }

    else
    {
      v33 = &_swiftEmptySetSingleton;
    }
  }

  v36 = sub_10028AAFC();
  v37 = sub_1003AE5C4(v36, v33);

  result = sub_10028CCE4(v16, _s6AlbumsV5ScopeOMa);
  *(a3 + v18) = v37;
  return result;
}

uint64_t sub_100288ABC@<X0>(uint64_t a2@<X8>)
{
  v14[7] = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v14[6] = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14[9] = v14 - v4;
  v14[8] = type metadata accessor for Album();
  __chkstk_darwin();
  v5 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v14[5] = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v14 - v8;
  v10 = sub_10010E83C(&off_1010998F8);
  sub_10028B578(v10, v9);

  MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
  v20[3] = v5;
  v20[4] = sub_10028CD9C();
  v11 = sub_10001C8B8(v20);
  v15 = v6;
  (*(v6 + 16))(v11, v9, v5);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = a2;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v12 - 8) + 56))(v16, 0, 1, v12);
  return (*(v15 + 8))(v9, v5);
}

uint64_t sub_100289108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v13[6] = sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
  __chkstk_darwin();
  v13[7] = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v13[4] = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v13[5] = sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v13[3] = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v6 = v13 - v5;
  v18[3] = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v18[4] = sub_10028CD9C();
  v7 = sub_10001C8B8(v18);
  sub_10028B578(&_swiftEmptySetSingleton, v7);
  sub_10028CE50(a1, v6);
  v8 = type metadata accessor for Album();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  else
  {
    *(&v16 + 1) = v8;
    v17 = &protocol witness table for Album;
    v10 = sub_10001C8B8(&v15);
    (*(v9 + 32))(v10, v6, v8);
  }

  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v11 = type metadata accessor for MusicPlaybackIntentDescriptor();
  return (*(*(v11 - 8) + 56))(v14, 0, 1, v11);
}

double sub_1002897C8(uint64_t a1)
{
  v30 = a1;
  v2 = type metadata accessor for Artist();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Composer();
  v27 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Genre();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v24 - v14;
  v28 = *(_s6AlbumsVMa(0) + 24);
  v29 = v1;
  sub_10028CC7C(v1 + v28, v15, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v21 = v27;
      (*(v27 + 32))(v7, v15, v5);
      swift_getKeyPath();
      sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:contains:)();

      (*(v21 + 8))(v7, v5);
    }

    else
    {
      (*(v9 + 32))(v11, v15, v8);
      swift_getKeyPath();
      sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
      MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

      (*(v9 + 8))(v11, v8);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = v25;
    v19 = v26;
    (*(v25 + 32))(v4, v15, v26);
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    (*(v20 + 8))(v4, v19);
LABEL_9:
    v18 = v28;
    v17 = v29;
    goto LABEL_10;
  }

  v18 = v28;
  v17 = v29;
  if (EnumCaseMultiPayload != 3)
  {
    swift_getKeyPath();
    v31 = 1;
    sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
    MusicLibrarySectionedRequest.filterItems<A>(matching:equalTo:)();
  }

LABEL_10:
  sub_10028CC7C(v17 + v18, v13, _s6AlbumsV5ScopeOMa);
  v22 = swift_getEnumCaseMultiPayload();
  sub_10028CCE4(v13, _s6AlbumsV5ScopeOMa);
  if (v22 != 2)
  {
    swift_getKeyPath();
    v32 = 1;
    sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
    MusicLibrarySectionedRequest<>.includeItems<A>(matching:equalTo:)();
  }

  return result;
}

void sub_100289CA8()
{
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(v0 + *(v1 + 36));
  if (v4 <= 2)
  {
    if (*(v0 + *(v1 + 36)))
    {
      if (v4 == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    swift_getKeyPath();
    sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
LABEL_14:

    swift_getKeyPath();
    goto LABEL_15;
  }

  if (v4 == 3)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    goto LABEL_14;
  }

  if (v4 == 4)
  {
LABEL_7:
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
LABEL_15:
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    return;
  }

LABEL_8:
  v5 = v1;
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.libraryView);
  sub_10028CC7C(v0, v3, _s6AlbumsVMa);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v15[7] = v3[*(v5 + 36)];
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_10028CCE4(v3, _s6AlbumsVMa);
    v14 = sub_1000105AC(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Tried to apply unhandled sortOption=%{public}s to albums request.", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {

    sub_10028CCE4(v3, _s6AlbumsVMa);
  }
}

void sub_10028A010(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for MusicFavoriteStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + *(_s6AlbumsVMa(0) + 32));
  if (*(v6 + 16))
  {
    v20 = v3;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = v6 + 56;
    v9 = -1 << *(v6 + 32);
    v10 = v7 & ~v9;
    if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (!*(*(v6 + 48) + v10) || *(*(v6 + 48) + v10) == 2)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      swift_getKeyPath();
      v13 = v20;
      (*(v20 + 104))(v5, enum case for MusicFavoriteStatus.favorited(_:), v2);
      sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
      sub_10028C564(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus, &protocol conformance descriptor for MusicFavoriteStatus);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      (*(v13 + 8))(v5, v2);
    }

LABEL_11:
    if (*(v6 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(v6 + 32);
      v16 = v14 & ~v15;
      if ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (!*(*(v6 + 48) + v16) || *(*(v6 + 48) + v16) == 1)
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_20;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            return;
          }
        }

LABEL_20:
        sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }
}

uint64_t sub_10028A3AC()
{
  v1 = v0;
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028CC7C(v1, v3, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v5 = 0x8000000100E41720;
      sub_10028CCE4(v3, _s6AlbumsV5ScopeOMa);
      v6 = 0xD000000000000010;
    }

    else
    {
      sub_10028CCE4(v3, _s6AlbumsV5ScopeOMa);
      v5 = 0xED00007365726E65;
      v6 = 0x477972617262694CLL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v6 = 0xD000000000000013;
    v5 = 0x8000000100E41700;
    sub_10028CCE4(v3, _s6AlbumsV5ScopeOMa);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = 0xED0000736D75626CLL;
    v6 = 0x417972617262694CLL;
  }

  else
  {
    v6 = 0xD000000000000013;
    v5 = 0x8000000100E41740;
  }

  v9[0] = v6;
  v9[1] = v5;

  v7._countAndFlagsBits = 0x53746E65746E6F43;
  v7._object = 0xEB0000000074726FLL;
  String.append(_:)(v7);

  return v9[0];
}

uint64_t sub_10028A5BC(uint64_t a1, void *a2)
{
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6AlbumsVMa(0);
  sub_10028CC7C(v2 + *(v7 + 24), v6, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = 0x8000000100E41720;
      sub_10028CCE4(v6, _s6AlbumsV5ScopeOMa);
      v10 = 0xD000000000000010;
    }

    else
    {
      sub_10028CCE4(v6, _s6AlbumsV5ScopeOMa);
      v9 = 0xED00007365726E65;
      v10 = 0x477972617262694CLL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v10 = 0xD000000000000013;
    v9 = 0x8000000100E41700;
    sub_10028CCE4(v6, _s6AlbumsV5ScopeOMa);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v9 = 0xED0000736D75626CLL;
    v10 = 0x417972617262694CLL;
  }

  else
  {
    v10 = 0xD000000000000013;
    v9 = 0x8000000100E41740;
  }

  v13[0] = v10;
  v13[1] = v9;

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);

  return v13[0];
}

uint64_t sub_10028A7B0()
{
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v28 - v3;
  v5 = *(_s6AlbumsVMa(0) + 24);
  sub_10028CC7C(v0 + v5, v4, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = sub_100190B90(v8);
    sub_10028CCE4(v4, _s6AlbumsV5ScopeOMa);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10028CCE4(v4, _s6AlbumsV5ScopeOMa);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    v9 = sub_100190B90(v7);
  }

  if (v9 != 3)
  {
    return v9;
  }

LABEL_13:
  sub_10028CC7C(v0 + v5, v2, _s6AlbumsV5ScopeOMa);
  v10 = swift_getEnumCaseMultiPayload();
  if (v10 <= 2)
  {
    if (v10 >= 2)
    {
      sub_10028CCE4(v2, _s6AlbumsV5ScopeOMa);
      return 3;
    }

    sub_10028CCE4(v2, _s6AlbumsV5ScopeOMa);
LABEL_17:
    v11 = [objc_opt_self() standardUserDefaults];
    Library.SortConfiguration.storageKey.getter(0);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 stringForKey:v12];

    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      v18 = _findStringSwitchCase(cases:string:)(&off_101098E28, v17);

      if (v18 >= 3)
      {
        return 3;
      }

      else
      {
        return v18;
      }
    }

    return 3;
  }

  if (v10 == 3)
  {
    goto LABEL_17;
  }

  v19 = [objc_opt_self() standardUserDefaults];
  Library.SortConfiguration.storageKey.getter(2u);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 stringForKey:v20];

  if (!v21)
  {
    return 3;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  v26 = _findStringSwitchCase(cases:string:)(&off_101098E28, v25);

  if (v26 >= 3)
  {
    return 3;
  }

  else
  {
    return v26;
  }
}

void *sub_10028AAFC()
{
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s6AlbumsVMa(0);
  sub_10028CC7C(v0 + *(v3 + 24), v2, _s6AlbumsV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    if (*(v0 + 8))
    {
      v4 = &off_101098E90;
    }

    else
    {
      v5 = [objc_opt_self() currentDevice];
      v6 = [v5 userInterfaceIdiom];

      v4 = &off_101098E90;
      if (v6 != 6)
      {
        v9[1] = *v0;
        type metadata accessor for MusicLibrary();

        v9[0] = static MusicLibrary.shared.getter();
        sub_10028C564(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
        v7 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v7)
        {
          v4 = &off_101098EB8;
        }
      }
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10028CCE4(v2, _s6AlbumsV5ScopeOMa);
  return v4;
}

void sub_10028ACDC(uint64_t a1)
{
  v2 = a1;
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s6AlbumsVMa(0);
  v6 = (v1 + *(v5 + 36));
  v7 = *v6;
  v8 = v6[1];
  if ((sub_1006B8B0C(*v6, v2) & 1) == 0 || ((((v2 & 0x100) == 0) ^ v8) & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = [v9 standardUserDefaults];
    v17[3] = &_s11ContentSortVN;
    v17[4] = sub_100110448();
    v17[5] = sub_10011049C();
    LOBYTE(v17[0]) = v7;
    BYTE1(v17[0]) = v8;
    v11 = v1;
    sub_10028A5BC(0x53746E65746E6F43, 0xEB0000000074726FLL);
    NSUserDefaults.encodeValue(_:forKey:)(v17);

    sub_10000959C(v17);
    v12 = [v9 standardUserDefaults];
    if (v8)
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_10045E2D4(v13 | v7);
    sub_10028CC7C(v11 + *(v5 + 24), v4, _s6AlbumsV5ScopeOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_10028CCE4(v4, _s6AlbumsV5ScopeOMa);
        v16 = 67;
      }

      else
      {
        sub_10028CCE4(v4, _s6AlbumsV5ScopeOMa);
        v16 = 68;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_10028CCE4(v4, _s6AlbumsV5ScopeOMa);
      v16 = 65;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v16 = 64;
    }

    else
    {
      v16 = 66;
    }

    NSUserDefaults.setSortType(_:for:keyDomain:)(v14, v16, 0, 0);
  }
}

void sub_10028AF58(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Composer();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Genre();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028CC7C(v2, v16, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v10, v16, v7);
      Hasher._combine(_:)(3uLL);
      sub_10028C564(&qword_101188E78, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
      dispatch thunk of Hashable.hash(into:)();
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v12 + 32))(v14, v16, v11);
      Hasher._combine(_:)(2uLL);
      sub_10028C564(&qword_101188E80, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
      dispatch thunk of Hashable.hash(into:)();
      (*(v12 + 8))(v14, v11);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v18 = v21;
    v19 = v22;
    (*(v22 + 32))(v6, v16, v21);
    Hasher._combine(_:)(4uLL);
    sub_10028C564(&qword_101188E70, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v6, v18);
  }

  else
  {
    Hasher._combine(_:)(EnumCaseMultiPayload != 3);
  }
}

uint64_t sub_10028B394@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryAlbumInternalInclusionProperties.isSingleMusicVideo.getter();
  *a2 = result & 1;
  return result;
}

_UNKNOWN **sub_10028B3E0()
{
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s6AlbumsVMa(0);
  sub_10028CC7C(v0 + *(v3 + 24), v2, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_10028CCE4(v2, _s6AlbumsV5ScopeOMa);
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    v5 = static MusicLibrary.== infix(_:_:)();

    v6 = &off_101098B58;
    v7 = &off_101098B30;
  }

  else
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      sub_10028CCE4(v2, _s6AlbumsV5ScopeOMa);
    }

    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    v5 = static MusicLibrary.== infix(_:_:)();

    v6 = &off_101098B08;
    v7 = &off_101098AE0;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

double sub_10028B578@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v4 = type metadata accessor for MusicFavoriteStatus();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin();
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artist();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin();
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Composer();
  v67 = *(v8 - 8);
  v68 = v8;
  __chkstk_darwin();
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Genre();
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin();
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Album();
  type metadata accessor for Track();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v15 = _s6AlbumsVMa(0);
  MusicLibrarySectionedRequest.filterSections<>(text:)();
  swift_getKeyPath();
  MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

  swift_getKeyPath();
  MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

  swift_getKeyPath();
  v69 = a2;
  MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

  sub_10028CC7C(v2 + v15[6], v14, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v19 = v66;
    v20 = v68;
    if (EnumCaseMultiPayload)
    {
      v26 = v67;
      (*(v67 + 32))(v66, v14, v68);
      swift_getKeyPath();
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:contains:)();

      (*(v26 + 8))(v19, v20);
      goto LABEL_10;
    }

    v21 = v64;
    v22 = v12;
    v23 = v14;
    v24 = v65;
    (*(v64 + 32))(v12, v23, v65);
    swift_getKeyPath();
LABEL_8:
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    (*(v21 + 8))(v22, v24);
LABEL_10:
    v18 = v2;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v22 = v61;
    v21 = v62;
    v25 = v14;
    v24 = v63;
    (*(v62 + 32))(v61, v25, v63);
    swift_getKeyPath();
    goto LABEL_8;
  }

  v18 = v2;
  if (EnumCaseMultiPayload != 3)
  {
    swift_getKeyPath();
    LOBYTE(v71[0]) = 1;
    MusicLibrarySectionedRequest.filterSections<A>(matching:equalTo:)();
  }

LABEL_11:
  v27 = *(v18 + v15[9]);
  if (v27 > 2)
  {
    if (v27 == 3)
    {
      swift_getKeyPath();
      MusicLibrarySectionedRequest<>.sortSections<A>(by:ascending:)();

      swift_getKeyPath();
      goto LABEL_20;
    }

    if (v27 != 4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!*(v18 + v15[9]))
    {
      swift_getKeyPath();
      MusicLibrarySectionedRequest.sortSections<A>(by:ascending:)();

      swift_getKeyPath();
      goto LABEL_20;
    }

    if (v27 != 1)
    {
      goto LABEL_21;
    }
  }

  swift_getKeyPath();
LABEL_20:
  MusicLibrarySectionedRequest.sortSections<A>(by:ascending:)();

LABEL_21:
  v28 = *(v18 + v15[8]);
  if (!*(v28 + 16))
  {
    return result;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v29 = Hasher._finalize()();
  v30 = v28 + 56;
  v31 = -1 << *(v28 + 32);
  v32 = v29 & ~v31;
  if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
  {
LABEL_38:
    if (!*(v28 + 16))
    {
      return result;
    }

    goto LABEL_39;
  }

  v33 = ~v31;
  while (!*(*(v28 + 48) + v32) || *(*(v28 + 48) + v32) == 2)
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_30;
    }

    v32 = (v32 + 1) & v33;
    if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

LABEL_30:
  if (!v70[2] || (v35 = v70, Hasher.init(_seed:)(), String.hash(into:)(), v36 = Hasher._finalize()(), v37 = v35 + 7, v38 = -1 << *(v35 + 32), v39 = v36 & ~v38, ((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v39) & 1) == 0))
  {
LABEL_37:
    swift_getKeyPath();
    v43 = v59;
    v42 = v60;
    v44 = v58;
    (*(v59 + 104))(v58, enum case for MusicFavoriteStatus.favorited(_:), v60);
    sub_10028C564(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus, &protocol conformance descriptor for MusicFavoriteStatus);
    MusicLibrarySectionedRequest<>.filterSections<A>(matching:equalTo:)();

    (*(v43 + 8))(v44, v42);
    goto LABEL_38;
  }

  v40 = ~v38;
  while (!*(v70[6] + v39) || *(v70[6] + v39) == 2)
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_38;
    }

    v39 = (v39 + 1) & v40;
    if (((*(v37 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (*(v28 + 16))
  {
LABEL_39:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v45 = Hasher._finalize()();
    v46 = -1 << *(v28 + 32);
    v47 = v45 & ~v46;
    if ((*(v30 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
    {
      v48 = ~v46;
      while (!*(*(v28 + 48) + v47) || *(*(v28 + 48) + v47) == 1)
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v49)
        {
          goto LABEL_47;
        }

        v47 = (v47 + 1) & v48;
        if (((*(v30 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
        {
          return result;
        }
      }

LABEL_47:
      if (v70[2] && (v50 = v70, Hasher.init(_seed:)(), String.hash(into:)(), v51 = Hasher._finalize()(), v52 = v50 + 7, v53 = -1 << *(v50 + 32), v54 = v51 & ~v53, ((*(v50 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54) & 1) != 0))
      {
        v55 = ~v53;
        while (!*(v70[6] + v54) || *(v70[6] + v54) == 1)
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v56)
          {
            return result;
          }

          v54 = (v54 + 1) & v55;
          if (((*(v52 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
LABEL_55:
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }

  return result;
}

uint64_t sub_10028C0A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

void sub_10028C0F0(__int128 *a1)
{
  type metadata accessor for MusicLibrary();
  sub_10028C564(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 8));
  v3 = _s6AlbumsVMa(0);
  sub_10028AF58(a1);
  String.hash(into:)();
  sub_10010B100(a1, *(v1 + *(v3 + 32)));
  v4 = *(v1 + *(v3 + 36) + 1);
  String.hash(into:)();

  Hasher._combine(_:)(v4);
}

void sub_10028C30C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TitledSection();
  type metadata accessor for Album();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*(v2 + *(a1 + 28)));
  sub_1002897C8(a2);
  sub_100289CA8();

  sub_10028A010(a2);
}

Swift::Int sub_10028C40C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10028C470(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_10028C50C(uint64_t a1)
{
  result = sub_10028C564(&qword_101188E58, _s6AlbumsVMa, &unk_100EC48AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028C564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028C5F4(uint64_t a1, char *a2)
{
  v40 = a1;
  v41 = a2;
  v2 = type metadata accessor for Artist();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin();
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Composer();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Genre();
  v37 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v34 - v12;
  __chkstk_darwin();
  v15 = &v34 - v14;
  sub_10010FC20(&qword_101188E68, &qword_100EC4970);
  __chkstk_darwin();
  v17 = &v34 - v16;
  v19 = *(v18 + 56);
  sub_10028CC7C(v40, &v34 - v16, _s6AlbumsV5ScopeOMa);
  sub_10028CC7C(v41, &v17[v19], _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = v9;
    v22 = v37;
    v21 = v38;
    v23 = v39;
    if (EnumCaseMultiPayload)
    {
      sub_10028CC7C(v17, v13, _s6AlbumsV5ScopeOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v21 + 8))(v13, v23);
        goto LABEL_17;
      }

      (*(v21 + 32))(v6, &v17[v19], v23);
      v27 = static Composer.== infix(_:_:)();
      v29 = *(v21 + 8);
      v29(v6, v23);
      v29(v13, v23);
    }

    else
    {
      sub_10028CC7C(v17, v15, _s6AlbumsV5ScopeOMa);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v22 + 8))(v15, v7);
        goto LABEL_17;
      }

      v30 = v22;
      v31 = v41;
      (*(v22 + 32))(v41, &v17[v19], v7);
      v27 = static Genre.== infix(_:_:)();
      v32 = *(v30 + 8);
      v32(v31, v7);
      v32(v15, v7);
    }

LABEL_19:
    sub_10028CCE4(v17, _s6AlbumsV5ScopeOMa);
    return v27 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10028CC7C(v17, v11, _s6AlbumsV5ScopeOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v35 + 8))(v11, v36);
      goto LABEL_17;
    }

    v25 = v34;
    v24 = v35;
    v26 = v36;
    (*(v35 + 32))(v34, &v17[v19], v36);
    v27 = static Artist.== infix(_:_:)();
    v28 = *(v24 + 8);
    v28(v25, v26);
    v28(v11, v26);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_1000095E8(v17, &qword_101188E68, &qword_100EC4970);
    v27 = 0;
    return v27 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_10028CCE4(v17, _s6AlbumsV5ScopeOMa);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_10028CB8C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicLibrary();
  if (static MusicLibrary.== infix(_:_:)() & 1) != 0 && *(a1 + 8) == *(a2 + 8) && (v4 = _s6AlbumsVMa(0), (sub_10028C5F4(a1 + v4[6], (a2 + v4[6]))) && ((v5 = v4[7], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10018FCA0(*(a1 + v4[8]), *(a2 + v4[8]))))
  {
    v10 = v4[9];
    v11 = (a1 + v10);
    v12 = *(a1 + v10 + 1);
    v13 = (a2 + v10);
    v14 = v13[1];
    v15 = sub_1006B8B0C(*v11, *v13) & (v12 ^ v14 ^ 1);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10028CC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028CCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10028CD44@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

unint64_t sub_10028CD9C()
{
  result = qword_101188E90;
  if (!qword_101188E90)
  {
    sub_1001109D0(&qword_101188E88, &unk_100ECBD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188E90);
  }

  return result;
}

uint64_t sub_10028CE00(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

uint64_t sub_10028CE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184730, &unk_100ECB920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028CEC0(uint64_t result)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 80);

    v2(v1, v3);

    return sub_100020438(v2, v4);
  }

  return result;
}

uint64_t sub_10028CF38(uint64_t result, char a2)
{
  v3 = *(v2 + 88);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 96);

    v3(a2 & 1, v5);

    return sub_100020438(v3, v6);
  }

  return result;
}

uint64_t sub_10028CFB0()
{

  sub_100020438(*(v0 + 56), *(v0 + 64));
  sub_100020438(*(v0 + 72), *(v0 + 80));
  sub_100020438(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_10028D034()
{

  sub_100020438(*(v0 + 40), *(v0 + 48));
  sub_100020438(*(v0 + 56), *(v0 + 64));
  sub_100020438(*(v0 + 72), *(v0 + 80));
  sub_100020438(*(v0 + 88), *(v0 + 96));
  sub_100020438(*(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t sub_10028D084()
{
  sub_10028D034();

  return swift_deallocClassInstance();
}

void sub_10028D0DC(uint64_t a1, char a2)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  v2 = 0;
  v21 = a1 + 32;
  v25 = (a1 + 40);
  while (1)
  {
    v22 = v2;
    v3 = (v21 + 16 * v2);
    v4 = *v3;
    v5 = v3[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    v9 = v8;
    if (v8 >> 62)
    {
      break;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_3:
    v2 = v22 + 1;
    swift_unknownObjectRelease();

    if (v22 + 1 == v29)
    {
      return;
    }
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_3;
  }

LABEL_6:
  v11 = 0;
  v27 = v10;
  v28 = v9 & 0xC000000000000001;
  v23 = v9 + 32;
  v24 = v9 & 0xFFFFFFFFFFFFFF8;
  v26 = v9;
LABEL_9:
  if (v28)
  {
    v12 = sub_1007E9564(v11, v9);
    v13 = __OFADD__(v11, 1);
    v14 = v11 + 1;
    if (v13)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (v11 >= *(v24 + 16))
  {
    goto LABEL_27;
  }

  v12 = *(v23 + 8 * v11);

  v13 = __OFADD__(v11, 1);
  v14 = v11 + 1;
  if (!v13)
  {
LABEL_15:
    v30 = v14;
    v15 = v25;
    v16 = v29;
    while (1)
    {
      if (*(v15 - 1) != v4)
      {
        v17 = *v15;
        v18 = swift_getObjectType();
        v19 = *(v17 + 16);
        swift_unknownObjectRetain();
        v20 = v19(v12, a2 & 1, v18, v17);
        if (v20)
        {
          *(v20 + 40) = v12;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          swift_unknownObjectRelease();
LABEL_8:
          v9 = v26;
          v11 = v30;
          if (v30 == v27)
          {
            goto LABEL_3;
          }

          goto LABEL_9;
        }

        swift_unknownObjectRelease();
      }

      v15 += 2;
      if (!--v16)
      {

        goto LABEL_8;
      }
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_10028D3E8(uint64_t a1)
{
  sub_10028D558(319, &qword_1011891E8, &type metadata accessor for MusicFavoriteStatus, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10028D4F4(319);
    if (v2 <= 0x3F)
    {
      sub_10028D558(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10028D4F4(uint64_t a1)
{
  if (!qword_1011891F0)
  {
    sub_1001109D0(&unk_1011891F8, qword_100EDB130);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1011891F0);
    }
  }
}

void sub_10028D558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10028D5BC@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = _s5TitleV5SpecsVMa(0);
  __chkstk_darwin();
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v23[-v11];
  v13 = v2 + *(_s5TitleVMa(0) + 24);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v18 = sub_10027AC30(v14, 0, v17);
    (*(v5 + 8))(v7, v4, v18);
    LOBYTE(v14) = v23[15];
  }

  if (v14 == 2 || (v14 & 1) == 0)
  {
    if (qword_10117F4A0 != -1)
    {
      swift_once();
    }

    v19 = qword_101189150;
  }

  else
  {
    if (qword_10117F4A8 != -1)
    {
      swift_once();
    }

    v19 = qword_101189168;
  }

  v20 = sub_1000060E4(v8, v19);
  sub_10028EC34(v20, v10);
  sub_10028ED38(v10, v12);
  v21 = type metadata accessor for Font.TextStyle();
  return (*(*(v21 - 8) + 32))(a1, v12, v21);
}

uint64_t sub_10028D86C@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v2 + *(_s5TitleVMa(0) + 24);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v13 = sub_10027AC30(v9, 0, v12);
    (*(v5 + 8))(v7, v4, v13);
    LOBYTE(v9) = v18[15];
  }

  if (v9 == 2 || (v9 & 1) == 0)
  {
    if (qword_10117F4A0 != -1)
    {
      swift_once();
    }

    v14 = qword_101189150;
  }

  else
  {
    if (qword_10117F4A8 != -1)
    {
      swift_once();
    }

    v14 = qword_101189168;
  }

  v15 = _s5TitleV5SpecsVMa(0);
  v16 = sub_1000060E4(v15, v14);
  return sub_10028EC34(v16, a1);
}

uint64_t sub_10028DA68@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v56 = &v52 - v2;
  v55 = _s5TitleV5SpecsVMa(0) - 8;
  __chkstk_darwin();
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10010FC20(&qword_101189238, &qword_100EC4D68);
  __chkstk_darwin();
  v53 = &v52 - v5;
  v61 = sub_10010FC20(&qword_101189240, &qword_100EC4D70);
  __chkstk_darwin();
  v54 = &v52 - v6;
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v8 = &v52 - v7;
  v9 = _s5TitleVMa(0);
  sub_10028E5F4(v1 + *(v9 + 20), v8);
  LOBYTE(v8) = TextBadge.init(for:)(v8);
  sub_10028DFF4(&v63);
  TextBadge.view(favoriteBadgeConfiguration:)(&v63, v8, v10);
  v12 = v11;
  v58 = v13;
  v59 = v11;
  v14 = v13;
  v16 = v15;
  v60 = v15;
  v18 = v17;
  sub_10028E664(&v63);
  v52 = v1;
  v19 = *v1;
  v20 = v1[1];
  *&v63 = v19;
  *(&v63 + 1) = v20;
  sub_100009838();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  *&v63 = v21;
  *(&v63 + 1) = v22;
  v25 = v24 & 1;
  LOBYTE(v64) = v24 & 1;
  *(&v64 + 1) = v26;
  v27 = v16 & 1;
  v28 = v53;
  View.textSuffix(_:)(v12, v14, v27, v18, &type metadata for Text, &protocol witness table for Text, v53);
  sub_10011895C(v21, v23, v25);

  LODWORD(v21) = static HierarchicalShapeStyle.primary.getter();
  *(v28 + *(sub_10010FC20(&qword_101189248, &qword_100EC4D78) + 36)) = v21;
  sub_10028D86C(v4);
  v29 = type metadata accessor for Font.Design();
  v30 = v56;
  (*(*(v29 - 8) + 56))(v56, 1, 1, v29);
  v31 = v55;
  v32 = static Font.system(_:design:weight:)();
  sub_10028E6B8(v30);
  sub_10028E720(v4);
  KeyPath = swift_getKeyPath();
  v34 = (v28 + *(v57 + 36));
  *v34 = KeyPath;
  v34[1] = v32;
  sub_10028D86C(v4);
  sub_10028E720(v4);
  sub_10028E77C();
  v35 = v54;
  View.fontWeight(_:)();
  sub_1000095E8(v28, &qword_101189238, &qword_100EC4D68);
  v36 = (v35 + *(sub_10010FC20(&qword_101189280, &unk_100EC4DC8) + 36));
  v37 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v38 = enum case for Image.Scale.small(_:);
  v39 = type metadata accessor for Image.Scale();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  sub_10028D86C(v4);
  LOBYTE(v36) = v4[*(v31 + 32)];
  sub_10028E720(v4);
  v40 = swift_getKeyPath();
  v41 = v35 + *(sub_10010FC20(&qword_101189288, &qword_100EC4E38) + 36);
  *v41 = v40;
  *(v41 + 8) = v36;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v42 = v61;
  v43 = (v35 + *(v61 + 36));
  v44 = v64;
  *v43 = v63;
  v43[1] = v44;
  v43[2] = v65;
  v45 = AccessibilityIdentifier.containerDetailHeaderTitle.unsafeMutableAddressor();
  v46 = *v45;
  v47 = v45[1];
  v48 = v45[2];
  v49 = v45[3];
  v50 = sub_10028E9FC();

  View.accessibilityIdentifier(_:)(v46, v47, v48, v49, v42, v50);

  sub_10011895C(v59, v58, v60 & 1);

  return sub_1000095E8(v35, &qword_101189240, &qword_100EC4D70);
}

uint64_t sub_10028DFF4@<X0>(void *x8_0@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 6)
  {
    v10 = v2 + *(_s5TitleVMa(0) + 24);
    v11 = *v10;
    if (*(v10 + 8) != 1)
    {

      v12 = static os_log_type_t.fault.getter();
      v13 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v15 = sub_10027AC30(v11, 0, v14);
      (*(v5 + 8))(v7, v4, v15);
    }
  }

  sub_10028EC98();
  v16 = static UIFont.preferredFont(forTextStyle:weight:)();
  v17 = [objc_opt_self() configurationWithFont:v16 scale:1];

  v21 = &_s5TitleV23FavoriteBadgeShapeStyleVN;
  v22 = sub_10028ECE4();
  return FavoriteBadgeConfiguration.init(symbolConfiguration:foregroundStyle:)(v17, &v20, x8_0);
}

uint64_t sub_10028E2CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10028EF5C();
  *a1 = result;
  return result;
}

uint64_t sub_10028E2F4()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s5TitleV5SpecsVMa(0);
  sub_100006080(v4, qword_101189150);
  v5 = sub_1000060E4(v4, qword_101189150);
  (*(v1 + 104))(v3, enum case for Font.TextStyle.title2(_:), v0);
  static Font.Weight.bold.getter();
  v7 = v6;
  result = (*(v1 + 32))(v5, v3, v0);
  *(v5 + *(v4 + 20)) = v7;
  *(v5 + *(v4 + 24)) = 1;
  return result;
}

uint64_t sub_10028E430(__n128 a1)
{
  v1 = _s5TitleV5SpecsVMa(0);
  sub_100006080(v1, qword_101189168);
  v2 = sub_1000060E4(v1, qword_101189168);
  return sub_10028E47C(v2);
}

uint64_t sub_10028E47C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = type metadata accessor for Font.TextStyle();
  v5 = &enum case for Font.TextStyle.largeTitle(_:);
  if (v3 != 6)
  {
    v5 = &enum case for Font.TextStyle.title2(_:);
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  static Font.Weight.bold.getter();
  v7 = v6;
  result = _s5TitleV5SpecsVMa(0);
  *(a1 + *(result + 20)) = v7;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_10028E560(uint64_t a1)
{
  result = sub_10028EF14(&qword_101189230, _s5TitleVMa, &unk_100EC4D0C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028E5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028E6B8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028E720(uint64_t a1)
{
  v2 = _s5TitleV5SpecsVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10028E77C()
{
  result = qword_101189250;
  if (!qword_101189250)
  {
    sub_1001109D0(&qword_101189238, &qword_100EC4D68);
    sub_10028E834();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189250);
  }

  return result;
}

unint64_t sub_10028E834()
{
  result = qword_101189258;
  if (!qword_101189258)
  {
    sub_1001109D0(&qword_101189248, &qword_100EC4D78);
    sub_1001109D0(&qword_101189260, &qword_100EC4DB0);
    sub_1001109D0(&qword_101189268, &qword_100EC4DB8);
    swift_getOpaqueTypeConformance2();
    sub_1001109D0(&qword_101189270, &qword_100EC4DC0);
    sub_100020674(&qword_101189278, &qword_101189270, &qword_100EC4DC0, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189258);
  }

  return result;
}

unint64_t sub_10028E9FC()
{
  result = qword_101189290;
  if (!qword_101189290)
  {
    sub_1001109D0(&qword_101189240, &qword_100EC4D70);
    sub_10028EA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189290);
  }

  return result;
}

unint64_t sub_10028EA88()
{
  result = qword_101189298;
  if (!qword_101189298)
  {
    sub_1001109D0(&qword_101189288, &qword_100EC4E38);
    sub_10028EB40();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189298);
  }

  return result;
}

unint64_t sub_10028EB40()
{
  result = qword_1011892A0;
  if (!qword_1011892A0)
  {
    sub_1001109D0(&qword_101189280, &unk_100EC4DC8);
    sub_1001109D0(&qword_101189238, &qword_100EC4D68);
    sub_10028E77C();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0, &qword_100EC0AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011892A0);
  }

  return result;
}

uint64_t sub_10028EC34(uint64_t a1, uint64_t a2)
{
  v4 = _s5TitleV5SpecsVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10028EC98()
{
  result = qword_101183A00;
  if (!qword_101183A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101183A00);
  }

  return result;
}

unint64_t sub_10028ECE4()
{
  result = qword_1011892A8;
  if (!qword_1011892A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011892A8);
  }

  return result;
}

uint64_t sub_10028ED38(uint64_t a1, uint64_t a2)
{
  v4 = _s5TitleV5SpecsVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028EDD4(uint64_t a1)
{
  result = type metadata accessor for Font.TextStyle();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10028EE58()
{
  result = qword_101189348;
  if (!qword_101189348)
  {
    sub_1001109D0(&qword_101189350, &qword_100EC4E78);
    sub_10028E9FC();
    sub_10028EF14(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189348);
  }

  return result;
}

uint64_t sub_10028EF14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028EF5C()
{
  v0 = type metadata accessor for BlendMode();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  sub_10028F250();
  EnvironmentValues.subscript.getter();
  if ((v18[0] & 0xFE) == 2)
  {
    v16 = type metadata accessor for TintShapeStyle();
    v17 = &protocol witness table for TintShapeStyle;
    sub_10001C8B8(&v15);
    TintShapeStyle.init()();
  }

  else
  {
    if (v18[0])
    {
      v6 = &enum case for BlendMode.plusDarker(_:);
    }

    else
    {
      v6 = &enum case for BlendMode.plusLighter(_:);
    }

    (*(v1 + 104))(v3, *v6, v0);
    (*(v1 + 32))(v5, v3, v0);
    v7 = static HierarchicalShapeStyle.secondary.getter();
    v8 = sub_10010FC20(&qword_101189360, &qword_100EC4ED0);
    v16 = v8;
    v17 = sub_100020674(&qword_101189368, &qword_101189360, &qword_100EC4ED0, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
    v9 = sub_10001C8B8(&v15);
    (*(v1 + 16))(v9 + *(v8 + 36), v5, v0);
    *v9 = v7;
    (*(v1 + 8))(v5, v0);
  }

  sub_100188D80(&v15, v18);
  sub_10000954C(v18, v18[3]);
  v10 = __chkstk_darwin();
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = AnyShapeStyle.init<A>(_:)();
  sub_10000959C(v18);
  return v13;
}

unint64_t sub_10028F250()
{
  result = qword_101189358;
  if (!qword_101189358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189358);
  }

  return result;
}

void sub_10028F2A4()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.08];

  qword_101218930 = v1;
}

void sub_10028F310()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  if (v1 == 6)
  {
    v3 = [v2 whiteColor];
  }

  else
  {
    v4 = [v2 labelColor];
    v3 = [v4 colorWithAlphaComponent:0.45];
  }

  qword_101218938 = v3;
}

id sub_10028F3D8()
{
  result = [objc_opt_self() labelColor];
  qword_101218940 = result;
  return result;
}

void sub_10028F414()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_10028F4DC;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003640C;
  v3[3] = &unk_1010A3558;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_101218948 = v2;
}

id sub_10028F4DC(void *a1)
{
  v2 = [objc_opt_self() labelColor];
  v3 = [a1 accessibilityContrast];
  v4 = 0.08;
  if (v3 == 1)
  {
    v4 = 0.15;
  }

  v5 = [v2 colorWithAlphaComponent:v4];

  return v5;
}

uint64_t sub_10028F570()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  sub_100006080(v0, qword_101218950);
  v1 = sub_1000060E4(v0, qword_101218950);
  v2 = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id sub_10028F61C(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory);
  *(v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory) = result;
  if (result == 2)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else if (v2 != 2 && ((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  v3 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton;
  [*(v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton) setHidden:result == 2];
  v4 = *(v1 + v3);

  return [v4 setNeedsUpdateConfiguration];
}

char *sub_10028F6BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView;
  *&v5[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_backdropView;
  v12 = objc_allocWithZone(type metadata accessor for BackdropView());
  *&v5[v11] = sub_100453A34();
  v13 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButton;
  *&v5[v13] = [objc_allocWithZone(UIButton) init];
  v14 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButton;
  *&v5[v14] = [objc_allocWithZone(UIButton) init];
  v15 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButton;
  *&v5[v15] = [objc_allocWithZone(UIButton) init];
  v16 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton;
  *&v5[v16] = [objc_allocWithZone(UIButton) init];
  v17 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton;
  *&v5[v17] = [objc_allocWithZone(UIButton) init];
  v18 = &v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
  *v19 = 0;
  v19[8] = 1;
  v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState] = 2;
  v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory] = 2;
  v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive] = 2;
  v20 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionStyle;
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter();

  *&v5[v20] = v22;
  v23 = &v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButtonAction];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButtonAction];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButtonAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButtonAction];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v5[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButtonAction];
  v28 = type metadata accessor for NowPlayingQueueControlsView();
  *v27 = 0;
  v27[1] = 0;
  v97.receiver = v5;
  v97.super_class = v28;
  v29 = objc_msgSendSuper2(&v97, "initWithFrame:", a1, a2, a3, a4);
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v30 = static UIFont.preferredFont(forTextStyle:weight:)();
  v31 = objc_opt_self();
  v32 = [v31 configurationWithFont:v30];

  v33 = [v31 configurationWithScale:2];
  v34 = [v32 configurationByApplyingConfiguration:v33];

  v35 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButton;
  v36 = *&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButton];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v34;
  v95 = sub_100293124;
  v96 = v38;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_10027D328;
  v94 = &unk_1010A35D0;
  v39 = _Block_copy(&aBlock);
  v40 = v36;
  v41 = v34;

  [v40 setConfigurationUpdateHandler:v39];
  _Block_release(v39);

  v42 = *&v29[v35];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = sub_100009F78(0, &qword_101183A18, UIButton_ptr);
  v45 = v42;
  ControlEventHandling<>.on(_:handler:)(64, sub_10029312C, v43, v44);

  [*&v29[v35] setNeedsUpdateConfiguration];
  v46 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButton;
  v47 = *&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButton];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v41;
  v95 = sub_100293150;
  v96 = v49;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_10027D328;
  v94 = &unk_1010A3620;
  v50 = _Block_copy(&aBlock);
  v51 = v41;
  v52 = v47;

  [v52 setConfigurationUpdateHandler:v50];
  _Block_release(v50);

  v53 = *&v29[v46];
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = v53;
  ControlEventHandling<>.on(_:handler:)(64, sub_100293158, v54, v44);

  v89 = v46;
  [*&v29[v46] setNeedsUpdateConfiguration];
  v56 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButton;
  v57 = *&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButton];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = v51;
  v95 = sub_10029317C;
  v96 = v59;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_10027D328;
  v94 = &unk_1010A3670;
  v60 = _Block_copy(&aBlock);
  v90 = v51;
  v61 = v57;

  [v61 setConfigurationUpdateHandler:v60];
  _Block_release(v60);

  v62 = *&v29[v56];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v62;
  v65 = v44;
  ControlEventHandling<>.on(_:handler:)(64, sub_100293184, v63, v44);

  v88 = v56;
  [*&v29[v56] setNeedsUpdateConfiguration];
  LOBYTE(aBlock) = 3;
  v66 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v66))
  {
    v67 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton;
    [*&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton] setHidden:1];
    v68 = *&v29[v67];
    v69 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v90;
    v95 = sub_100293228;
    v96 = v70;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_10027D328;
    v94 = &unk_1010A36E8;
    v71 = _Block_copy(&aBlock);
    v72 = v90;
    v73 = v68;

    [v73 setConfigurationUpdateHandler:v71];
    _Block_release(v71);

    v74 = *&v29[v67];
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = v74;
    ControlEventHandling<>.on(_:handler:)(64, sub_100293230, v75, v44);

    [*&v29[v67] setNeedsUpdateConfiguration];
  }

  v77 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v77))
  {
    v78 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton;
    v79 = *&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton];
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = sub_1002931FC;
    v96 = v80;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_10027D328;
    v94 = &unk_1010A3698;
    v81 = _Block_copy(&aBlock);
    v82 = v79;

    [v82 setConfigurationUpdateHandler:v81];
    _Block_release(v81);

    v83 = *&v29[v78];
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v85 = v83;

    ControlEventHandling<>.on(_:handler:)(64, sub_100293204, v84, v65);

    [*&v29[v78] setNeedsUpdateConfiguration];
  }

  else
  {
  }

  v86 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView;
  [*&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView] setSpacing:13.0];
  [*&v29[v86] setAxis:0];
  [*&v29[v86] setDistribution:1];
  [v29 directionalLayoutMargins];
  [v29 setDirectionalLayoutMargins:0.0];
  [v29 directionalLayoutMargins];
  [v29 setDirectionalLayoutMargins:?];

  [*&v29[v86] addArrangedSubview:*&v29[v89]];
  [*&v29[v86] addArrangedSubview:*&v29[v88]];
  [*&v29[v86] addArrangedSubview:*&v29[v35]];
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v77))
  {
    [*&v29[v86] addArrangedSubview:*&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton]];
  }

  LOBYTE(aBlock) = 3;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v66))
  {
    [*&v29[v86] addArrangedSubview:*&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton]];
  }

  [v29 addSubview:*&v29[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_backdropView]];
  [v29 addSubview:*&v29[v86]];

  return v29;
}

_BYTE *sub_100290224(void *a1, uint64_t a2, void *a3)
{
  v54 = a1;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v5 = &v51 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v6 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin();
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v51 = v5;
    static UIButton.Configuration.plain()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() systemImageNamed:v15];

    UIButton.Configuration.image.setter();
    v17 = a3;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    if (qword_10117F4D0 != -1)
    {
      swift_once();
    }

    v18 = sub_1000060E4(v6, qword_101218950);
    (*(v7 + 16))(v9, v18, v6);
    UIButton.Configuration.cornerStyle.setter();
    v19 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState;
    v20 = v14[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState];
    if (v20 == 2 || (v20 & 1) == 0)
    {
      v21 = v54;
      if (qword_10117F4B0 != -1)
      {
        swift_once();
      }

      v22 = &qword_101218930;
    }

    else
    {
      v21 = v54;
      if (qword_10117F4B8 != -1)
      {
        swift_once();
      }

      v22 = &qword_101218938;
    }

    v23 = *v22;
    v24 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v24(v55, 0);
    v25 = [v21 imageView];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 superview];

      if (v27)
      {
        v28 = [v27 layer];

        [v28 setAllowsGroupBlending:0];
      }
    }

    v29 = v14[v19];
    if (v29 == 2 || (v29 & 1) == 0)
    {
      v36 = [v21 imageView];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 layer];

        [v38 setCompositingFilter:0];
      }

      if (v14[v19] == 2)
      {
        if (qword_10117F4C8 != -1)
        {
          swift_once();
        }

        v39 = &qword_101218948;
      }

      else
      {
        if (qword_10117F4C0 != -1)
        {
          swift_once();
        }

        v39 = &qword_101218940;
      }

      v40 = *v39;
      UIButton.Configuration.baseForegroundColor.setter();
    }

    else
    {
      v30 = [v14 traitCollection];
      v31 = [v30 userInterfaceIdiom];

      if (v31 != 6)
      {
        v32 = [v21 imageView];
        if (v32)
        {
          v33 = v32;
          v34 = [v32 layer];

          [v34 setCompositingFilter:kCAFilterDestOut];
        }
      }

      v35 = [objc_opt_self() blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v41 = String._bridgeToObjectiveC()();

    [v21 setAccessibilityValue:v41];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v42 = String._bridgeToObjectiveC()();

    [v21 setAccessibilityLabel:v42];

    v43 = AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor();
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    v47 = v43[3];
    sub_100009F78(0, &qword_101183A18, UIButton_ptr);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v44, v45, v46, v47);
    v48 = v51;
    v49 = v52;
    v50 = v53;
    (*(v52 + 16))(v51, v12, v53);
    (*(v49 + 56))(v48, 0, 1, v50);
    UIButton.configuration.setter();

    return (*(v49 + 8))(v12, v50);
  }

  return result;
}

char *sub_1002909DC(void *a1, uint64_t a2, void *a3)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v6 = v53 - v5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v53[1] = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v8 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIButton.Configuration();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin();
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v53[0] = v6;
    static UIButton.Configuration.plain()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() systemImageNamed:v17];

    UIButton.Configuration.image.setter();
    v19 = a3;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    if (qword_10117F4D0 != -1)
    {
      swift_once();
    }

    v20 = sub_1000060E4(v8, qword_101218950);
    (*(v9 + 16))(v11, v20, v8);
    UIButton.Configuration.cornerStyle.setter();
    v21 = [a1 imageView];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 superview];

      if (v23)
      {
        v24 = [v23 layer];

        [v24 setAllowsGroupBlending:0];
      }
    }

    if (v16[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType + 8])
    {
      v25 = [a1 imageView];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 layer];

        [v27 setCompositingFilter:0];
      }

      if (qword_10117F4C8 != -1)
      {
        swift_once();
      }

      v28 = qword_101218948;
    }

    else
    {
      if ((*&v16[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType] - 1) <= 1)
      {
        v29 = [v16 traitCollection];
        v30 = [v29 userInterfaceIdiom];

        if (v30 != 6)
        {
          v31 = [a1 imageView];
          if (v31)
          {
            v32 = v31;
            v33 = [v31 layer];

            [v33 setCompositingFilter:kCAFilterDestOut];
          }
        }

        v34 = [objc_opt_self() blackColor];
        UIButton.Configuration.baseForegroundColor.setter();
        if (qword_10117F4B8 != -1)
        {
          swift_once();
        }

        v35 = qword_101218938;
        v36 = UIButton.Configuration.background.modify();
        UIBackgroundConfiguration.backgroundColor.setter();
        v36(v56, 0);
        goto LABEL_28;
      }

      v37 = [a1 imageView];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 layer];

        [v39 setCompositingFilter:0];
      }

      if (qword_10117F4C0 != -1)
      {
        swift_once();
      }

      v28 = qword_101218940;
    }

    v40 = v28;
    UIButton.Configuration.baseForegroundColor.setter();
    if (qword_10117F4B0 != -1)
    {
      swift_once();
    }

    v41 = qword_101218930;
    v42 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v42(v56, 0);
LABEL_28:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v43 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityValue:v43];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v44 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityLabel:v44];

    v45 = AccessibilityIdentifier.nowPlayingShuffleButton.unsafeMutableAddressor();
    v46 = *v45;
    v47 = v45[1];
    v48 = v45[2];
    v49 = v45[3];
    sub_100009F78(0, &qword_101183A18, UIButton_ptr);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v46, v47, v48, v49);
    v51 = v54;
    v50 = v55;
    v52 = v53[0];
    (*(v54 + 16))(v53[0], v14, v55);
    (*(v51 + 56))(v52, 0, 1, v50);
    UIButton.configuration.setter();

    return (*(v51 + 8))(v14, v50);
  }

  return result;
}

char *sub_100291210(void *a1, uint64_t a2, void *a3)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v6 = &v54 - v5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v8 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIButton.Configuration();
  v59 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v55 = v12;
    static UIButton.Configuration.plain()();
    v56 = v6;
    v57 = v16;
    v17 = &v16[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
    v18 = String._bridgeToObjectiveC()();

    v19 = [objc_opt_self() systemImageNamed:v18];

    UIButton.Configuration.image.setter();
    v20 = a3;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    if (qword_10117F4D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1000060E4(v8, qword_101218950);
    (*(v9 + 16))(v11, v21, v8);
    UIButton.Configuration.cornerStyle.setter();
    v22 = [a1 imageView];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 superview];

      if (v24)
      {
        v25 = [v24 layer];

        [v25 setAllowsGroupBlending:0];
      }
    }

    if (v17[8])
    {
      v26 = [a1 imageView];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 layer];

        [v28 setCompositingFilter:0];
      }

      v29 = v55;
      if (qword_10117F4C8 != -1)
      {
        swift_once();
      }

      v30 = qword_101218948;
    }

    else
    {
      if ((*v17 - 1) <= 1)
      {
        v31 = [v57 traitCollection];
        v32 = [v31 userInterfaceIdiom];

        if (v32 != 6)
        {
          v33 = [a1 imageView];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 layer];

            [v35 setCompositingFilter:kCAFilterDestOut];
          }
        }

        v36 = [objc_opt_self() blackColor];
        UIButton.Configuration.baseForegroundColor.setter();
        if (qword_10117F4B8 != -1)
        {
          swift_once();
        }

        v37 = qword_101218938;
        v38 = UIButton.Configuration.background.modify();
        UIBackgroundConfiguration.backgroundColor.setter();
        v38(v60, 0);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v45 = String._bridgeToObjectiveC()();
        v29 = v55;
        goto LABEL_28;
      }

      v39 = [a1 imageView];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 layer];

        [v41 setCompositingFilter:0];
      }

      v29 = v55;
      if (qword_10117F4C0 != -1)
      {
        swift_once();
      }

      v30 = qword_101218940;
    }

    v42 = v30;
    UIButton.Configuration.baseForegroundColor.setter();
    if (qword_10117F4B0 != -1)
    {
      swift_once();
    }

    v43 = qword_101218930;
    v44 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v44(v60, 0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v45 = String._bridgeToObjectiveC()();
LABEL_28:

    [a1 setAccessibilityValue:v45];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v46 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityLabel:v46];

    v47 = AccessibilityIdentifier.nowPlayingRepeatButton.unsafeMutableAddressor();
    v48 = *v47;
    v49 = v47[1];
    v50 = v47[2];
    v51 = v47[3];
    sub_100009F78(0, &qword_101183A18, UIButton_ptr);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v48, v49, v50, v51);
    v52 = v59;
    v53 = v56;
    (*(v59 + 16))(v56, v14, v29);
    (*(v52 + 56))(v53, 0, 1, v29);
    UIButton.configuration.setter();

    return (*(v52 + 8))(v14, v29);
  }

  return result;
}

unsigned __int8 *sub_100291AE8(void *a1, uint64_t a2, void *a3)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v6 = &v45 - v5;
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v47 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v45 = v11;
    v46 = v6;
    static UIButton.Configuration.plain()();
    v16 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory;
    v17 = v15[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory];
    if (v17 == 2 || (v17 & 1) == 0)
    {
      v18 = a1;
    }

    else
    {
      v18 = a1;
    }

    v19 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() systemImageNamed:v19];

    UIButton.Configuration.image.setter();
    v21 = a3;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    if (qword_10117F4D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1000060E4(v7, qword_101218950);
    (*(v8 + 16))(v10, v22, v7);
    UIButton.Configuration.cornerStyle.setter();
    v23 = v18;
    v24 = [v18 imageView];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 superview];

      if (v26)
      {
        v27 = [v26 layer];

        [v27 setAllowsGroupBlending:0];
      }
    }

    v28 = v15[v16];
    v29 = v46;
    if (v28 == 2 || (v28 & 1) == 0)
    {
      v37 = [v23 imageView];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 layer];

        [v39 setCompositingFilter:0];
      }

      if (qword_10117F4C0 != -1)
      {
        swift_once();
      }

      v40 = qword_101218940;
      UIButton.Configuration.baseForegroundColor.setter();
      if (qword_10117F4B0 != -1)
      {
        swift_once();
      }

      v36 = qword_101218930;
    }

    else
    {
      v30 = [v15 traitCollection];
      v31 = [v30 userInterfaceIdiom];

      if (v31 != 6)
      {
        v32 = [v23 imageView];
        if (v32)
        {
          v33 = v32;
          v34 = [v32 layer];

          [v34 setCompositingFilter:kCAFilterDestOut];
        }
      }

      v35 = [objc_opt_self() blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
      if (qword_10117F4B8 != -1)
      {
        swift_once();
      }

      v36 = qword_101218938;
    }

    v41 = v36;
    v42 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v42(v48, 0);
    v43 = v47;
    v44 = v45;
    (*(v47 + 16))(v29, v13, v45);
    (*(v43 + 56))(v29, 0, 1, v44);
    UIButton.configuration.setter();

    return (*(v43 + 8))(v13, v44);
  }

  return result;
}

_BYTE *sub_1002920AC(void *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v4 = v53 - v3;
  v5 = type metadata accessor for AutomationSemantics();
  v60 = *(v5 - 8);
  __chkstk_darwin();
  v59 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v56 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v8 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIButton.Configuration();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin();
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    static UIButton.Configuration.plain()();
    v53[1] = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionStyle;
    v54 = v5;
    v17 = *&v16[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionStyle];
    v55 = a1;
    if (v17 <= 1)
    {
      v18 = String._bridgeToObjectiveC()();
      v19 = [objc_opt_self() imageNamed:v18];
    }

    UIButton.Configuration.image.setter();
    sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    v20 = static UIFont.preferredFont(forTextStyle:weight:)();
    v21 = objc_opt_self();
    v22 = [v21 configurationWithFont:v20];

    v23 = [v21 configurationWithScale:2];
    v24 = [v22 configurationByApplyingConfiguration:v23];

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    if (qword_10117F4D0 != -1)
    {
      swift_once();
    }

    v25 = sub_1000060E4(v8, qword_101218950);
    (*(v9 + 16))(v11, v25, v8);
    UIButton.Configuration.cornerStyle.setter();
    v26 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive;
    v27 = v16[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive];
    if (v27 == 2 || (v27 & 1) == 0)
    {
      if (qword_10117F4B0 != -1)
      {
        swift_once();
      }

      v28 = &qword_101218930;
    }

    else
    {
      if (qword_10117F4B8 != -1)
      {
        swift_once();
      }

      v28 = &qword_101218938;
    }

    v29 = *v28;
    v30 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v30(v61, 0);
    v31 = v55;
    v32 = [v55 imageView];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 superview];

      if (v34)
      {
        v35 = [v34 layer];

        [v35 setAllowsGroupBlending:0];
      }
    }

    v36 = v16[v26];
    if (v36 == 2 || (v36 & 1) == 0)
    {
      v43 = [v31 imageView];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 layer];

        [v45 setCompositingFilter:0];
      }

      if (v16[v26] == 2)
      {
        if (qword_10117F4C8 != -1)
        {
          swift_once();
        }

        v46 = &qword_101218948;
      }

      else
      {
        if (qword_10117F4C0 != -1)
        {
          swift_once();
        }

        v46 = &qword_101218940;
      }

      v47 = *v46;
      UIButton.Configuration.baseForegroundColor.setter();
      String.LocalizationValue.init(stringLiteral:)();
    }

    else
    {
      v37 = [v16 traitCollection];
      v38 = [v37 userInterfaceIdiom];

      if (v38 != 6)
      {
        v39 = [v31 imageView];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 layer];

          [v41 setCompositingFilter:kCAFilterDestOut];
        }
      }

      v42 = [objc_opt_self() blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
      String.LocalizationValue.init(stringLiteral:)();
    }

    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v48 = String._bridgeToObjectiveC()();

    [v31 setAccessibilityValue:v48];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v49 = String._bridgeToObjectiveC()();

    [v31 setAccessibilityLabel:v49];

    memset(v61, 0, sizeof(v61));
    v50 = v59;
    static AutomationSemantics.nowPlaying(name:id:)();
    sub_100011DF0(v61);
    UIView.setAutomationSemantics(_:)();
    (*(v60 + 8))(v50, v54);
    v52 = v57;
    v51 = v58;
    (*(v57 + 16))(v4, v14, v58);
    (*(v52 + 56))(v4, 0, 1, v51);
    UIButton.configuration.setter();

    return (*(v52 + 8))(v14, v51);
  }

  return result;
}

void sub_100292AB0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = (Strong + *a3);
    v6 = *v5;
    v7 = v5[1];
    v8 = Strong;
    sub_100030444(*v5, v7);

    if (v6)
    {
      v6();
      sub_100020438(v6, v7);
    }
  }
}

void sub_100292B88()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for NowPlayingQueueControlsView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_backdropView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView;
  v3 = *&v0[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView];
  v4 = [v0 layoutMarginsGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
  v13 = *&v0[v2];
  v14 = qword_10117F4D8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  [v15 frame];
  [v15 setFrame:?];
}

id sub_100292D7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingQueueControlsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100292ED4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton);
  v2 = v1;
  return v1;
}

void sub_100292F08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView;
  *(v1 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_backdropView;
  v4 = objc_allocWithZone(type metadata accessor for BackdropView());
  *(v1 + v3) = sub_100453A34();
  v5 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButton;
  *(v1 + v5) = [objc_allocWithZone(UIButton) init];
  v6 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButton;
  *(v1 + v6) = [objc_allocWithZone(UIButton) init];
  v7 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButton;
  *(v1 + v7) = [objc_allocWithZone(UIButton) init];
  v8 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton;
  *(v1 + v8) = [objc_allocWithZone(UIButton) init];
  v9 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton;
  *(v1 + v9) = [objc_allocWithZone(UIButton) init];
  v10 = v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState) = 2;
  *(v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory) = 2;
  *(v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive) = 2;
  v12 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionStyle;
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter();

  *(v1 + v12) = v14;
  v15 = (v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButtonAction);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButtonAction);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButtonAction);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButtonAction);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButtonAction);
  *v19 = 0;
  v19[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1002931A8()
{
  result = qword_10118ABD0;
  if (!qword_10118ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ABD0);
  }

  return result;
}

void sub_1002932C4(uint64_t a1)
{
  type metadata accessor for MusicPin();
  if (v1 <= 0x3F)
  {
    sub_10002EF7C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002933B0(uint64_t a1)
{
  result = type metadata accessor for DragDropPins.Origin(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10029344C(uint64_t a1)
{
  result = type metadata accessor for MusicPin();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100293500(uint64_t a1)
{
  result = sub_100293558(&qword_1011895E0, type metadata accessor for DragDropPins.Origin, &unk_100EC4F74);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100293558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002935A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for DragDropPins.Origin(0);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for MusicPin();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100293704, 0, 0);
}

uint64_t sub_100293704()
{
  v1 = v0[3];
  if (!*(v1 + 16))
  {
LABEL_4:
    v14 = v0[2];
    v15 = type metadata accessor for Notice(0);
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

    v16 = v0[1];

    return v16();
  }

  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v25 = v0[5];
  v9 = v0[4];
  v10 = *(type metadata accessor for DragDropPins(0) - 8);
  sub_1002942FC(v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v7);
  v11 = *(v4 + 32);
  v11(v3, v7, v5);
  v11(v2, v3, v5);
  v0[13] = type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  dispatch thunk of MusicLibraryPinsObserver.pins.getter();

  v12 = sub_1003FC8E4(v9);
  LOBYTE(v2) = v13;
  v0[14] = v12;
  (*(v8 + 8))(v6, v25);
  if (v2)
  {
    (*(v0[10] + 8))(v0[12], v0[9]);
    goto LABEL_4;
  }

  v18 = v0[4];
  v19 = (v18 + *(type metadata accessor for DragDropPins.Destination(0) + 20));
  if (*v19)
  {
    v26 = (*v19 + **v19);
    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_100293A94;
    v21 = v0[12];

    return v26(v21);
  }

  else
  {
    v0[16] = static MusicLibrary.shared.getter();
    v22 = swift_task_alloc();
    v0[17] = v22;
    *v22 = v0;
    v22[1] = sub_100293C3C;
    v23 = v0[14];
    v24 = v0[12];

    return MusicLibrary.movePin(_:position:)(v24, v23);
  }
}

uint64_t sub_100293A94()
{

  return _swift_task_switch(sub_100293B90, 0, 0);
}

uint64_t sub_100293B90(uint64_t a1)
{
  v1[16] = static MusicLibrary.shared.getter();
  v2 = swift_task_alloc();
  v1[17] = v2;
  *v2 = v1;
  v2[1] = sub_100293C3C;
  v3 = v1[14];
  v4 = v1[12];

  return MusicLibrary.movePin(_:position:)(v4, v3);
}

uint64_t sub_100293C3C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100293E5C;
  }

  else
  {
    v2 = sub_100293D6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100293D6C()
{
  (*(v0[10] + 8))(v0[12], v0[9]);
  v1 = v0[2];
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100293E5C()
{
  (*(v0[10] + 8))(v0[12], v0[9]);

  v1 = v0[1];

  return v1();
}

id sub_100293F00()
{
  v0 = objc_allocWithZone(UICollectionViewDropProposal);

  return [v0 initWithDropOperation:3 intent:1];
}

uint64_t sub_100293F40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1002935A0(a1, a2);
}

Swift::Int sub_100293FE8()
{
  Hasher.init(_seed:)();
  MusicPin.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100294044(uint64_t a1)
{
  MusicPin.id.getter();
  String.hash(into:)();

  return result;
}

Swift::Int sub_100294094(uint64_t a1)
{
  Hasher.init(_seed:)();
  MusicPin.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002940EC(uint64_t a1)
{
  v1 = MusicPin.id.getter();
  v3 = v2;
  if (v1 == MusicPin.id.getter() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100294208(uint64_t a1)
{
  result = sub_100293558(&qword_101189630, type metadata accessor for DragDropPins.Destination, &unk_100EC4FF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002942FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropPins.Origin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100294370(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_text];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_label;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = UIView.forAutolayout.getter();

  v14._object = 0x8000000100E44020;
  v14._countAndFlagsBits = 0xD000000000000029;
  v76 = AccessibilityIdentifier.init(name:)(v14);
  v15 = UIView.withAccessibilityIdentifier(_:)(v76.rawValue._countAndFlagsBits, v76.rawValue._object, v76.name._countAndFlagsBits, v76.name._object);

  *&v5[v11] = v15;
  v75.receiver = v5;
  v75.super_class = type metadata accessor for NowPlayingQueueRemainingSongsCell();
  v16 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  v17._countAndFlagsBits = 0xD000000000000023;
  v17._object = 0x8000000100E44080;
  v77 = AccessibilityIdentifier.init(name:)(v17);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v77.rawValue._countAndFlagsBits, v77.rawValue._object, v77.name._countAndFlagsBits, v77.name._object);
  v18 = v16;
  v19 = [v18 layer];
  [v19 setAllowsGroupBlending:0];

  v20 = [objc_allocWithZone(UIColor) initWithWhite:0.45 alpha:1.0];
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v21 = qword_101218F90;
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() imageNamed:v22 inBundle:v21];

  v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];
  v25 = UIView.forAutolayout.getter();

  v26._object = 0x8000000100E440D0;
  v26._countAndFlagsBits = 0xD000000000000029;
  v78 = AccessibilityIdentifier.init(name:)(v26);
  v27 = UIView.withAccessibilityIdentifier(_:)(v78.rawValue._countAndFlagsBits, v78.rawValue._object, v78.name._countAndFlagsBits, v78.name._object);

  v28 = v20;
  [v27 setTintColor:v28];
  v29 = OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_label;
  v30 = *&v18[OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_label];
  [v30 setTextColor:v28];

  v74 = v28;
  v31 = *&v18[v29];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 preferredFontForTextStyle:UIFontTextStyleBody];
  [v33 setFont:v34];

  v35 = [v18 contentView];
  v36 = v27;
  [v35 addSubview:v36];

  v37 = [v18 contentView];
  [v37 addSubview:*&v18[v29]];

  v38 = [v18 traitCollection];
  v73 = sub_100050078();
  v39 = UITraitCollection.subscript.getter();

  v40 = [v18 contentView];
  v41 = [v40 layer];

  if (v39)
  {
    v42 = kCAFilterPlusL;
  }

  else
  {
    v42 = 0;
  }

  [v41 setCompositingFilter:v42];

  swift_unknownObjectRelease();
  v71 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100EBEE80;
  v44 = [v36 leadingAnchor];

  v45 = [v18 layoutMarginsGuide];
  v46 = [v45 leadingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46];
  *(v43 + 32) = v47;
  v48 = [v36 widthAnchor];

  v49 = [v36 heightAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v43 + 40) = v50;
  v51 = [v36 heightAnchor];

  if (qword_10117F850 != -1)
  {
    swift_once();
  }

  v52 = [v51 constraintEqualToConstant:{*&qword_101218F38, v71}];

  *(v43 + 48) = v52;
  v53 = [v36 centerYAnchor];

  v54 = [v18 contentView];
  v55 = [v54 centerYAnchor];

  v56 = [v53 constraintEqualToAnchor:v55];
  *(v43 + 56) = v56;
  v57 = [*&v18[v29] centerYAnchor];
  v58 = [v18 contentView];

  v59 = [v58 centerYAnchor];
  v60 = [v57 constraintEqualToAnchor:v59];

  *(v43 + 64) = v60;
  v61 = [*&v18[v29] leadingAnchor];
  v62 = [v36 trailingAnchor];

  if (qword_10117F860 != -1)
  {
    swift_once();
  }

  v63 = [v61 constraintEqualToAnchor:v62 constant:*&qword_101218F48];

  *(v43 + 72) = v63;
  v64 = [*&v18[v29] trailingAnchor];
  v65 = [v18 layoutMarginsGuide];

  v66 = [v65 trailingAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];

  *(v43 + 80) = v67;
  sub_100294F58();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v72 activateConstraints:isa];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_100EBC6B0;
  *(v69 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v69 + 40) = v73;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v18;
}

id sub_100294CCC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingQueueRemainingSongsCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100294D78(void *a1)
{
  v2 = [a1 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v4 = [a1 contentView];
  v5 = [v4 layer];

  if (v3)
  {
    v6 = kCAFilterPlusL;
  }

  else
  {
    v6 = 0;
  }

  [v5 setCompositingFilter:v6];

  swift_unknownObjectRelease();
  return result;
}

void sub_100294E5C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_label;
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = UIView.forAutolayout.getter();

  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x8000000100E44020;
  v8 = AccessibilityIdentifier.init(name:)(v6);
  v7 = UIView.withAccessibilityIdentifier(_:)(v8.rawValue._countAndFlagsBits, v8.rawValue._object, v8.name._countAndFlagsBits, v8.name._object);

  *(v1 + v3) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100294F58()
{
  result = qword_1011838A0;
  if (!qword_1011838A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011838A0);
  }

  return result;
}

void sub_100294FA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_label);
  sub_100009F78(0, &unk_101189D70, NSAttributedString_ptr);
  v2 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_text);
  v3 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_text + 8);
  v4 = v1;

  v5._countAndFlagsBits = v2;
  v5._object = v3;
  String.append(_:)(v5);

  sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = NSFontAttributeName;
  v7 = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v8 = NSFontAttributeName;
  v9 = static UIFont.preferredFont(forTextStyle:weight:)();
  *(inited + 64) = v7;
  *(inited + 40) = v9;
  v10 = sub_10010BA14(inited);
  swift_setDeallocating();
  sub_10029593C(inited + 32);
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  *(v13 + 32) = v8;
  v14 = static UIFont.preferredFont(forTextStyle:weight:)();
  *(v13 + 64) = v7;
  *(v13 + 40) = v14;
  LOBYTE(v7) = sub_10010BA14(v13);
  swift_setDeallocating();
  sub_10029593C(v13 + 32);
  v15._countAndFlagsBits = 0x6C6F626D79737B7BLL;
  v15._object = 0xEB00000000207D7DLL;
  v16._countAndFlagsBits = 0x6C6F626D79737B7BLL;
  v16._object = 0xEA00000000007D7DLL;
  v19.value.super.isa = v12;
  v19.is_nil = v7;
  isa = NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(v15, v10, v16, v19, v17).super.isa;
  [v4 setAttributedText:isa];
}

char *sub_100295214(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_text];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_label;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = UIView.forAutolayout.getter();

  v14 = UIView.forAutolayout.getter();
  v15._object = 0x8000000100E44130;
  v15._countAndFlagsBits = 0xD00000000000001BLL;
  v42 = AccessibilityIdentifier.init(name:)(v15);
  v16 = UIView.withAccessibilityIdentifier(_:)(v42.rawValue._countAndFlagsBits, v42.rawValue._object, v42.name._countAndFlagsBits, v42.name._object);

  *&v5[v11] = v16;
  v41.receiver = v5;
  v41.super_class = type metadata accessor for NowPlayingQueueRepeatCell();
  v17 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  v18._object = 0x8000000100E44130;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v43 = AccessibilityIdentifier.init(name:)(v18);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v43.rawValue._countAndFlagsBits, v43.rawValue._object, v43.name._countAndFlagsBits, v43.name._object);
  v19 = v17;
  v20 = [v19 layer];
  [v20 setAllowsGroupBlending:0];

  v21 = OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_label;
  [*&v19[OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_label] setNumberOfLines:0];
  [*&v19[v21] setTextAlignment:1];
  v22 = [v19 contentView];
  [v22 addSubview:*&v19[v21]];

  sub_1002956E0();
  v23 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBE270;
  v25 = [*&v19[v21] leadingAnchor];
  v26 = [v19 layoutMarginsGuide];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27];
  *(v24 + 32) = v28;
  v29 = [*&v19[v21] trailingAnchor];
  v30 = [v19 layoutMarginsGuide];

  v31 = [v30 trailingAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];

  *(v24 + 40) = v32;
  v33 = [*&v19[v21] centerYAnchor];
  v34 = [v19 contentView];

  v35 = [v34 centerYAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];

  *(v24 + 48) = v36;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100EBC6B0;
  v39 = sub_100050078();
  *(v38 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v38 + 40) = v39;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v19;
}

double sub_1002956E0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  if (v3)
  {
    v4 = [objc_allocWithZone(UIColor) initWithWhite:0.45 alpha:1.0];
  }

  else
  {
    v4 = [objc_opt_self() secondaryLabelColor];
  }

  v5 = v4;
  [*&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_label] setTextColor:v4];
  v6 = [v1 contentView];
  v7 = [v6 layer];

  v8 = [v1 traitCollection];
  v9 = UITraitCollection.subscript.getter();

  if (v9)
  {
    v10 = kCAFilterPlusL;
  }

  else
  {
    v10 = 0;
  }

  [v7 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return result;
}

id sub_100295870(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingQueueRepeatCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10029593C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101180420, &unk_100EDEFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002959A4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_label;
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = UIView.forAutolayout.getter();

  v6 = UIView.forAutolayout.getter();
  v7._object = 0x8000000100E44130;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v9 = AccessibilityIdentifier.init(name:)(v7);
  v8 = UIView.withAccessibilityIdentifier(_:)(v9.rawValue._countAndFlagsBits, v9.rawValue._object, v9.name._countAndFlagsBits, v9.name._object);

  *(v1 + v3) = v8;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100295AB0(double a1, double a2, double a3, double a4)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v84[0] = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v11 = v84 - v10;
  v12 = type metadata accessor for NowPlayingQueueAddCell();
  v85.receiver = v4;
  v85.super_class = v12;
  v13 = objc_msgSendSuper2(&v85, "initWithFrame:", a1, a2, a3, a4);
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x8000000100E441E0;
  v86 = AccessibilityIdentifier.init(name:)(v14);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v86.rawValue._countAndFlagsBits, v86.rawValue._object, v86.name._countAndFlagsBits, v86.name._object);
  v15 = [v13 layer];
  [v15 setAllowsGroupBlending:0];

  v16 = v13;
  v17 = [v16 layer];
  [v17 setAllowsGroupOpacity:0];

  v18 = [objc_allocWithZone(UIView) init];
  v19 = UIView.forAutolayout.getter();

  v20 = objc_opt_self();
  v21 = [v20 labelColor];
  v22 = [v21 colorWithAlphaComponent:0.08];

  [v19 setBackgroundColor:v22];
  v23 = [v20 labelColor];
  v24 = [v23 colorWithAlphaComponent:0.08];

  UIView.Border.init(thickness:color:)();
  UIView.border.setter(v26, v25 & 1, v27);
  v28 = UIView.Corner.small.unsafeMutableAddressor();
  v29 = type metadata accessor for UIView.Corner();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v11, v28, v29);
  (*(v30 + 56))(v11, 0, 1, v29);
  UIView.corner.setter();
  v31 = String._bridgeToObjectiveC()();
  v32 = [objc_opt_self() systemImageNamed:v31];

  v33 = [objc_allocWithZone(UIImageView) initWithImage:v32];
  v34 = UIView.forAutolayout.getter();

  v35._object = 0x8000000100E44200;
  v35._countAndFlagsBits = 0xD00000000000001ELL;
  v87 = AccessibilityIdentifier.init(name:)(v35);
  v36 = UIView.withAccessibilityIdentifier(_:)(v87.rawValue._countAndFlagsBits, v87.rawValue._object, v87.name._countAndFlagsBits, v87.name._object);

  v37 = [v20 labelColor];
  [v36 setTintColor:v37];

  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v38 = static UIFont.preferredFont(forTextStyle:weight:)();
  v39 = [objc_opt_self() configurationWithFont:v38];

  [v36 setPreferredSymbolConfiguration:v39];
  v40 = v36;
  [v19 addSubview:v40];
  v41 = [objc_allocWithZone(UILabel) init];
  v42 = UIView.forAutolayout.getter();

  v43._object = 0x8000000100E44220;
  v43._countAndFlagsBits = 0xD00000000000001ELL;
  v88 = AccessibilityIdentifier.init(name:)(v43);
  v44 = UIView.withAccessibilityIdentifier(_:)(v88.rawValue._countAndFlagsBits, v88.rawValue._object, v88.name._countAndFlagsBits, v88.name._object);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v45 = String._bridgeToObjectiveC()();

  [v44 setText:v45];

  v46 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v44 setFont:v46];

  v47 = [v20 labelColor];
  [v44 setTextColor:v47];

  v48 = [v16 contentView];
  [v48 addSubview:v19];

  v49 = [v16 contentView];
  v50 = v44;
  [v49 addSubview:v50];

  sub_1002967B8();
  v84[0] = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100EBEE90;
  v52 = [v19 leadingAnchor];
  v53 = [v16 layoutMarginsGuide];
  v54 = [v53 leadingAnchor];

  v55 = [v52 constraintEqualToAnchor:v54];
  *(v51 + 32) = v55;
  v56 = [v19 widthAnchor];
  v57 = [v19 heightAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v51 + 40) = v58;
  v59 = [v19 heightAnchor];
  if (qword_10117F850 != -1)
  {
    swift_once();
  }

  v60 = [v59 constraintEqualToConstant:*&qword_101218F38];

  *(v51 + 48) = v60;
  v61 = [v19 centerYAnchor];
  v62 = [v16 contentView];
  v63 = [v62 centerYAnchor];

  v64 = [v61 constraintEqualToAnchor:v63];
  *(v51 + 56) = v64;
  v65 = [v40 centerYAnchor];

  v66 = [v19 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v51 + 64) = v67;
  v68 = [v40 centerXAnchor];

  v69 = [v19 centerXAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v51 + 72) = v70;
  v71 = [v50 centerYAnchor];

  v72 = [v16 contentView];
  v73 = [v72 centerYAnchor];

  v74 = [v71 constraintEqualToAnchor:v73];
  *(v51 + 80) = v74;
  v75 = [v50 leadingAnchor];

  v76 = [v19 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:12.0];

  *(v51 + 88) = v77;
  v78 = [v50 trailingAnchor];

  v79 = [v16 layoutMarginsGuide];
  v80 = [v79 trailingAnchor];

  v81 = [v78 constraintEqualToAnchor:v80];
  *(v51 + 96) = v81;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v84[0] activateConstraints:isa];

  return v16;
}

double sub_100296680(uint64_t a1, __n128 a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NowPlayingQueueAddCell();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  sub_100050078();
  v5 = UITraitCollection.subscript.getter();

  if (!a1 || (UITraitCollection.subscript.getter() & 1) != (v5 & 1))
  {
    return sub_1002967B8();
  }

  return result;
}

double sub_1002967B8()
{
  v1 = [v0 contentView];
  v2 = [v1 layer];

  v3 = [v0 traitCollection];
  sub_100050078();
  LOBYTE(v1) = UITraitCollection.subscript.getter();

  if (v1)
  {
    v4 = kCAFilterPlusL;
  }

  else
  {
    v4 = 0;
  }

  [v2 setCompositingFilter:v4];

  swift_unknownObjectRelease();
  return result;
}

id sub_10029689C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingQueueAddCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_1002968F4()
{
  ObjectType = swift_getObjectType();
  v78 = sub_10010FC20(&qword_101189790, &qword_100EC5128);
  v76 = *(v78 - 8);
  __chkstk_darwin();
  v74 = &v59 - v2;
  v77 = sub_10010FC20(&qword_101189798, &qword_100EC5130);
  v75 = *(v77 - 8);
  __chkstk_darwin();
  v73 = &v59 - v3;
  v81 = sub_10010FC20(&qword_1011897A0, &qword_100EC5138);
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v79 = &v59 - v4;
  v5 = sub_10010FC20(&qword_1011897A8, &qword_100EC5140);
  v83 = *(v5 - 8);
  v84 = v5;
  __chkstk_darwin();
  v82 = &v59 - v6;
  v65 = sub_10010FC20(&qword_1011897B0, &qword_100EC5148);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v59 - v7;
  v68 = sub_10010FC20(&qword_1011897B8, &qword_100EC5150);
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = &v59 - v8;
  v71 = sub_10010FC20(&unk_1011897C0, &qword_100EC5158);
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v69 = &v59 - v9;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v72 = &v59 - v10;
  v11 = sub_10010FC20(&qword_1011897D0, &qword_100EC9750);
  v12 = *(v11 - 8);
  v97 = v11;
  v98 = v12;
  __chkstk_darwin();
  v14 = &v59 - v13;
  v15 = sub_10010FC20(&qword_1011897D8, &qword_100EC5160);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v59 - v17;
  v92 = sub_10010FC20(&qword_1011897E0, &qword_100EC5168);
  v19 = *(v92 - 8);
  __chkstk_darwin();
  v21 = &v59 - v20;
  v22 = sub_10010FC20(&qword_1011897E8, &qword_100EC5170);
  v86 = *(v22 - 1);
  v87 = v22;
  __chkstk_darwin();
  v24 = &v59 - v23;
  v61 = sub_10010FC20(&unk_1011897F0, &qword_100EC5178);
  v60 = *(v61 - 8);
  *&v25 = __chkstk_darwin().n128_u64[0];
  v59 = &v59 - v26;
  *&v0[OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v27 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_observers] = v27;
  v100.receiver = v0;
  v100.super_class = ObjectType;
  v85 = objc_msgSendSuper2(&v100, "init", v25, v59);
  v96 = ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  ApplicationCapabilities.Controller.$capabilities.getter();

  swift_getKeyPath();
  v95 = sub_100020674(&qword_101182BB0, &qword_1011897D0, &qword_100EC9750, &protocol conformance descriptor for Published<A>.Publisher);
  v28 = v97;
  Publisher.map<A>(_:)();

  v29 = *(v98 + 8);
  v98 += 8;
  v94 = v29;
  v29(v14, v28);
  type metadata accessor for MusicCarPlayUserSubscriptionState(0);
  v93 = &protocol conformance descriptor for Publishers.MapKeyPath<A, B>;
  sub_100020674(&qword_101189800, &qword_1011897D8, &qword_100EC5160, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  Publisher.map<A>(_:)();
  (*(v16 + 8))(v18, v15);
  v62 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_100020674(&qword_101189808, &qword_1011897E0, &qword_100EC5168, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10029916C(&unk_101189810, type metadata accessor for MusicCarPlayUserSubscriptionState, &unk_100EBC2F0);
  v30 = v92;
  Publisher<>.removeDuplicates()();
  (*(v19 + 8))(v21, v30);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  v99 = v31;
  v91 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = *(v91 - 8);
  v90 = *(v32 + 56);
  v92 = v32 + 56;
  v33 = v72;
  v90(v72, 1, 1, v91);
  v89 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100020674(&unk_101189820, &qword_1011897E8, &qword_100EC5170, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v88 = sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v34 = v59;
  v35 = v87;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v33, &qword_101182140, &unk_100EBD2A0);

  v86[1](v24, v35);
  swift_getKeyPath();
  v87 = objc_opt_self();
  v36 = [v87 sharedController];
  v99 = v36;
  v86 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_101189830, &unk_1011897F0, &qword_100EC5178, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v37 = v61;
  Publisher<>.assign<A>(to:on:)();

  (*(v60 + 8))(v34, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  ApplicationCapabilities.Controller.$capabilities.getter();

  swift_getKeyPath();
  v38 = v63;
  v39 = v97;
  Publisher.map<A>(_:)();

  v94(v14, v39);
  sub_100020674(&unk_101189838, &qword_1011897B0, &qword_100EC5148, v93);
  sub_10029916C(&qword_1011807C0, type metadata accessor for ICMusicSubscriptionStatusCapabilities, &unk_100EBC2C8);
  v40 = v66;
  v41 = v65;
  Publisher<>.removeDuplicates()();
  (*(v64 + 8))(v38, v41);
  v42 = static OS_dispatch_queue.main.getter();
  v99 = v42;
  v90(v33, 1, 1, v91);
  sub_100020674(&qword_101189848, &qword_1011897B8, &qword_100EC5150, v89);
  v43 = v69;
  v44 = v68;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v33, &qword_101182140, &unk_100EBD2A0);

  (*(v67 + 8))(v40, v44);
  swift_getKeyPath();
  v45 = [v87 sharedController];
  v99 = v45;
  sub_100020674(&qword_101189850, &unk_1011897C0, &qword_100EC5158, v86);
  v46 = v71;
  Publisher<>.assign<A>(to:on:)();

  (*(v70 + 8))(v43, v46);
  v47 = v85;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  ApplicationCapabilities.Controller.$capabilities.getter();

  swift_getKeyPath();
  v48 = v74;
  Publisher.map<A>(_:)();

  v94(v14, v39);
  sub_100020674(&qword_101189858, &qword_101189790, &qword_100EC5128, v93);
  v49 = v73;
  v50 = v78;
  Publisher.map<A>(_:)();
  (*(v76 + 8))(v48, v50);
  sub_100020674(&qword_101189860, &qword_101189798, &qword_100EC5130, v62);
  v51 = v79;
  v52 = v77;
  Publisher<>.removeDuplicates()();
  (*(v75 + 8))(v49, v52);
  v53 = static OS_dispatch_queue.main.getter();
  v99 = v53;
  v90(v33, 1, 1, v91);
  sub_100020674(&qword_101189868, &qword_1011897A0, &qword_100EC5138, v89);
  v54 = v82;
  v55 = v81;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v33, &qword_101182140, &unk_100EBD2A0);

  (*(v80 + 8))(v51, v55);
  swift_getKeyPath();
  v56 = [v87 sharedController];
  v99 = v56;
  sub_100020674(&unk_101189870, &qword_1011897A8, &qword_100EC5140, v86);
  v57 = v84;
  Publisher<>.assign<A>(to:on:)();

  (*(v83 + 8))(v54, v57);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v47;
}

uint64_t sub_100297A48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10048BBDC(4, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100297D1C(id *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100297E8C(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  __chkstk_darwin();
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v62 - v5;
  sub_10010FC20(&qword_101189768, &qword_100EC5108);
  __chkstk_darwin();
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v62 - v7;
  v8 = type metadata accessor for URLComponents();
  v69 = *(v8 - 8);
  __chkstk_darwin();
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin();
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101189770, &qword_100EC5110);
  __chkstk_darwin();
  v14 = &v62 - v13;
  v15 = sub_10010FC20(&qword_101189778, &qword_100EC5118);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v20 = &v62 - v19;
  v73 = a1;
  v21 = sub_10010FC20(&qword_101189780, &qword_100EC5120);
  v22 = sub_100020674(&qword_101189788, &qword_101189780, &qword_100EC5120, &protocol conformance descriptor for Set<A>);
  v23 = Sequence.firstNonNilWithOriginal<A>(_:)(sub_100297D1C, 0, v21, v8, v22);
  if ((*(v16 + 48))(v14, 1, v15, v23) == 1)
  {
    v24 = &qword_101189770;
    v25 = &qword_100EC5110;
    v26 = v14;
LABEL_15:
    sub_1000095E8(v26, v24, v25);
    return 2;
  }

  sub_1002990FC(v14, v20);
  sub_1000089F8(v20, v18, &qword_101189778, &qword_100EC5118);
  v27 = *v18;
  v28 = *(v15 + 48);
  v29 = [*v18 URL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = URL.pathComponents.getter();
  (*(v67 + 1))(v12, v68);
  v31 = v69;
  v32 = v69 + 8;
  v33 = v18 + v28;
  v34 = *(v69 + 1);
  v34(v33, v8);
  sub_1000089F8(v20, v18, &qword_101189778, &qword_100EC5118);

  v35 = v70;
  (*(v31 + 32))(v70, v18 + *(v15 + 48), v8);
  if (!*(v30 + 16))
  {

    v34(v35, v8);
    v24 = &qword_101189778;
    v25 = &qword_100EC5118;
    v26 = v20;
    goto LABEL_15;
  }

  v69 = v20;

  v36._object = 0x8000000100E442B0;
  v36._countAndFlagsBits = 0xD000000000000010;
  if (!String.hasPrefix(_:)(v36))
  {
    v51._countAndFlagsBits = 0x73676E6974746573;
    v51._object = 0xE800000000000000;
    v52 = String.hasPrefix(_:)(v51);

    v34(v35, v8);
    sub_1000095E8(v69, &qword_101189778, &qword_100EC5118);
    if (v52)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  result = URLComponents.queryItems.getter();
  if (!result)
  {
    v34(v35, v8);
    v53 = v69;
    goto LABEL_32;
  }

  v38 = result;
  v62 = v34;
  v67 = v32;
  v68 = v8;
  v39 = *(result + 16);
  v40 = v71;
  v41 = v72;
  v42 = v66;
  if (!v39)
  {
LABEL_13:

    v47 = 1;
    v48 = v68;
    v49 = v70;
    v50 = v65;
LABEL_24:
    v54 = v69;
    v55 = v64;
    (*(v41 + 56))(v50, v47, 1, v40);
    sub_1000089F8(v50, v55, &qword_101189768, &qword_100EC5108);
    if ((*(v41 + 48))(v55, 1, v40) == 1)
    {
      sub_1000095E8(v50, &qword_101189768, &qword_100EC5108);
      v62(v49, v48);
    }

    else
    {
      v56 = v63;
      (*(v41 + 32))(v63, v55, v40);
      v57 = v41;
      URLQueryItem.value.getter();
      v59 = v58;
      (*(v57 + 8))(v56, v40);
      sub_1000095E8(v50, &qword_101189768, &qword_100EC5108);
      v60 = v62;
      if (v59)
      {

        v61 = String.BOOLValue.getter();
        swift_bridgeObjectRelease_n();
        v60(v49, v48);
        sub_1000095E8(v54, &qword_101189778, &qword_100EC5118);
        if (v61)
        {
          return 256;
        }

        else
        {
          return 0;
        }
      }

      v62(v49, v48);
    }

    v53 = v54;
LABEL_32:
    sub_1000095E8(v53, &qword_101189778, &qword_100EC5118);
    return 0;
  }

  v43 = 0;
  v44 = (v72 + 8);
  while (v43 < *(v38 + 16))
  {
    (*(v41 + 16))(v42, v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v43, v40);
    if (URLQueryItem.name.getter() == 0x646574616D696E61 && v45 == 0xE800000000000000)
    {

LABEL_23:

      v41 = v72;
      v50 = v65;
      (*(v72 + 32))(v65, v42, v40);
      v47 = 0;
      v48 = v68;
      v49 = v70;
      goto LABEL_24;
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      v40 = v71;
      goto LABEL_23;
    }

    ++v43;
    v40 = v71;
    result = (*v44)(v42, v71);
    v41 = v72;
    if (v39 == v43)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_100298794(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CPUIWindow();
    v6 = a1;
    v7 = CPUIWindow.__allocating_init(windowScene:)();
    v8 = [objc_allocWithZone(type metadata accessor for CarPlayRootNavigationController()) init];
    v9 = [a2 URLContexts];
    sub_100009F78(0, &qword_101189758, UIOpenURLContext_ptr);
    sub_10001C070(&qword_101189760, &qword_101189758, UIOpenURLContext_ptr, &protocol conformance descriptor for NSObject);
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = sub_100297E8C(v10);

    if (v11 != 2)
    {
      sub_1001D3268(v11 & 1, HIBYTE(v11) & 1);
    }

    v12 = v7;
    [v12 setRootViewController:v8];
    [v12 makeKeyAndVisible];
    v13 = String._bridgeToObjectiveC()();
    [v12 setAccessibilityIdentifier:v13];

    v14 = *(v3 + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window) = v12;
  }
}

void sub_100298990(uint64_t a1)
{
  v2 = sub_100297E8C(a1);
  if (v2 != 2)
  {
    v3 = v2;
    v4 = *(v1 + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window);
    if (v4)
    {
      v5 = [v4 rootViewController];
      if (v5)
      {
        v6 = v5;
        type metadata accessor for CarPlayRootNavigationController();
        if (swift_dynamicCastClass())
        {
          sub_1001D3268(v3 & 1, HIBYTE(v3) & 1);
        }
      }
    }
  }
}

void sub_100298A40(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.scenes.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = [v7 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1000105AC(v13, v15, &v20);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "CarPlay scene will enter foreground %{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  (*(v3 + 8))(v5, v2);
  v17 = [objc_opt_self() sharedCloudController];
  if (v17)
  {
    v18 = v17;
    [v17 becomeActive];
  }

  else
  {
    __break(1u);
  }
}

void sub_100298C70(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.scenes.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39[0] = v11;
    *v10 = 136446210;
    v12 = [v7 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1000105AC(v13, v15, v39);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "CarPlay scene did enter background %{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  (*(v3 + 8))(v5, v2);
  BackgroundRefreshController.shared.unsafeMutableAddressor();

  BackgroundRefreshController.scheduleAllTasks()();

  v17 = [objc_opt_self() sharedApplication];
  v18 = [v17 connectedScenes];

  v19 = sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_10001C070(&qword_101183DE0, &qword_1011839F0, UIScene_ptr, &protocol conformance descriptor for NSObject);
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v37[2] = v19;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v22 = v39[0];
    v21 = v39[1];
    v23 = v39[2];
    v24 = v39[3];
    v25 = v39[4];
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v21 = v20 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 56);

    v24 = 0;
    v22 = v20;
  }

  v37[1] = v23;
  v29 = (v23 + 64) >> 6;
  while (v22 < 0)
  {
    v33 = __CocoaSet.Iterator.next()();
    if (!v33)
    {
      goto LABEL_21;
    }

    v37[3] = v33;
    swift_dynamicCast();
    v32 = v38;
    if (!v38)
    {
      goto LABEL_21;
    }

LABEL_19:
    v34 = [v32 activationState];

    if (!v34)
    {
      sub_10005C9F8(v22);

      return;
    }
  }

  v30 = v24;
  v31 = v25;
  if (!v25)
  {
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v29)
      {
        goto LABEL_21;
      }

      v31 = *(v21 + 8 * v24);
      ++v30;
      if (v31)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  v25 = (v31 - 1) & v31;
  v32 = *(*(v22 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v31)))));
  if (v32)
  {
    goto LABEL_19;
  }

LABEL_21:
  sub_10005C9F8(v22);

  v35 = [objc_opt_self() sharedCloudController];
  if (v35)
  {
    v36 = v35;
    [v35 resignActive];

    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1002990FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101189778, &qword_100EC5118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029916C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002991D8()
{
  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    return 0;
  }

  sub_100009838();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 97;
    }
  }

  else
  {
    sub_1000095E8(&v1, &unk_101183F30, qword_100EBF960);
  }

  return 1;
}

uint64_t MPCPlayerResponseItem.supportsLyrics.getter()
{
  result = [v0 metadataObject];
  if (result)
  {
    v2 = result;
    v3 = [result innermostModelObject];

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = v4;
    type metadata accessor for LyricsLoader();
    if ((static LyricsLoader.supportsLyrics(for:)(v5) & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = [objc_opt_self() sharedMonitor];
    v7 = [v6 isRemoteServerLikelyReachable];

    if (v7)
    {

      return 1;
    }

    v8 = [v5 lyrics];
    if (v8 && (v9 = v8, v10 = [v8 text], v9, v10))
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      return v14 != 0;
    }

    else
    {
LABEL_11:

      return 0;
    }
  }

  return result;
}

void sub_10029948C()
{
  v1 = v0;
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  __chkstk_darwin();
  v3 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v81 - v4;
  __chkstk_darwin();
  v7 = &v81 - v6;
  __chkstk_darwin();
  v9 = &v81 - v8;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = &v81 - v10;
  v12 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v13 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (v13)
  {
    v85 = v5;
    v14 = v13;
    v15 = [v14 tracklist];
    v16 = [v15 playingItem];

    v87 = v16;
    if (v16)
    {
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      *(&v89 + 1) = &type metadata for Player.VocalsCommand.Prepare;
      *&v90 = &protocol witness table for Player.VocalsCommand.Prepare;
      v17 = (*(*qword_101218AC8 + 760))(&v88);
      sub_10000959C(&v88);
      if (v17)
      {
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
        type metadata accessor for MainActor();
        v19 = v1;
        v20 = static MainActor.shared.getter();
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = &protocol witness table for MainActor;
        v21[4] = v19;
        sub_10086E658(0, 0, v11, &unk_100EC5518, v21);
      }

      sub_1002A6BD4();
      sub_1002AA8E0();
      v22 = [v87 metadataObject];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 innermostModelObject];

        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (!v22)
        {

          v22 = 0;
        }
      }

      v25 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
      *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song] = v22;
      v26 = v22;
      sub_1002A05E0(v25);

      v86 = v14;
      v27 = [v14 tracklist];
      MPCPlayerResponseTracklist.currentPlayEvent.getter();
      v29 = v28;

      v30 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_modelPlayEvent];
      *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_modelPlayEvent] = v29;

      v31 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
      v32 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
      if (v32)
      {
        v33 = v32;
        v34 = [v87 nowPlayingAudioFormat];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 isSpatialized];
        }

        else
        {
          v36 = 0;
        }

        (*((swift_isaMask & *v33) + 0x180))(v36);

        v39 = *&v1[v31];
        if (v39)
        {
          v40 = v39;
          if ([v86 state] == 5)
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(&v88 + 1) = 0;
            *&v89 = 0;
          }

          else
          {
            [v87 duration];
            type metadata accessor for MPCPlayerItemDurationSnapshot(0);
            v42 = v44;
            v41 = swift_allocObject();
            v45 = v89;
            *(v41 + 16) = v88;
            *(v41 + 32) = v45;
            *(v41 + 48) = v90;
            *(v41 + 64) = v91;
            v43 = &protocol witness table for MPCPlayerItemDurationSnapshot;
          }

          *&v88 = v41;
          *(&v89 + 1) = v42;
          *&v90 = v43;
          (*((swift_isaMask & *v40) + 0x240))(&v88);

          v46 = *&v1[v12];
          if (v46)
          {
            v47 = [v46 tracklist];
            v48 = [v47 vocalsControlCommand];

            if (v48)
            {
              v49 = [v48 isActive];
              swift_unknownObjectRelease();
              if (v49)
              {
                v50 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
                if (v50)
                {
                  v51 = *(*v50 + 312);
                  v52 = *v50 + 312;

                  v83 = v52;
                  v84 = v51;
                  (v51)(v53);
                  v54 = type metadata accessor for Lyrics.Transliteration(0);
                  v55 = *(*(v54 - 8) + 48);
                  if (v55(v9, 1, v54) == 1)
                  {

                    v56 = v9;
LABEL_33:
                    sub_1000095E8(v56, &unk_101189A00, &unk_100EC5500);
                    goto LABEL_34;
                  }

                  v82 = v55;
                  sub_1000095E8(v9, &unk_101189A00, &unk_100EC5500);
                  v57 = *&v1[v31];
                  if (!v57)
                  {
LABEL_51:
                    __break(1u);
LABEL_52:
                    __break(1u);
                    return;
                  }

                  v81 = *((swift_isaMask & *v57) + 0x3B8);
                  v58 = v57;
                  v81();

                  if (v82(v7, 1, v54) != 1)
                  {

                    v56 = v7;
                    goto LABEL_33;
                  }

                  sub_1000095E8(v7, &unk_101189A00, &unk_100EC5500);
                  v59 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                  v60 = v59(2);

                  if ((v60 & 1) == 0)
                  {
                    v77 = *&v1[v31];
                    v79 = v85;
                    v78 = v86;
                    if (v77)
                    {
                      v80 = v77;
                      v84();
                      (*((swift_isaMask & *v80) + 0x3C0))(v79);

                      sub_1002A24D0();
                      sub_1002A5A68(5);

                      return;
                    }

                    goto LABEL_52;
                  }
                }
              }
            }
          }

LABEL_34:
          v61 = *&v1[v31];
          if (v61)
          {
            v62 = *((swift_isaMask & *v61) + 0x3B8);
            v63 = v61;
            v62();

            v64 = type metadata accessor for Lyrics.Transliteration(0);
            v65 = *(v64 - 8);
            if ((*(v65 + 48))(v3, 1, v64) == 1)
            {

              sub_1000095E8(v3, &unk_101189A00, &unk_100EC5500);
              return;
            }

            sub_1000095E8(v3, &unk_101189A00, &unk_100EC5500);
            v66 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

            v67 = v66(1);

            if (v67)
            {

              return;
            }

            v68 = *&v1[v12];
            v69 = v86;
            if (v68)
            {
              v70 = [v68 tracklist];
              v71 = [v70 vocalsControlCommand];

              if (v71)
              {
                v72 = [v71 isActive];
                swift_unknownObjectRelease();
                if (v72)
                {
                  goto LABEL_44;
                }
              }
            }

            v73 = *&v1[v31];
            if (v73)
            {
              v74 = v85;
              (*(v65 + 56))(v85, 1, 1, v64);
              v75 = *((swift_isaMask & *v73) + 0x3C0);
              v76 = v73;
              v75(v74);

              sub_1002A24D0();
LABEL_44:

              return;
            }

            goto LABEL_50;
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_49;
    }
  }

  v87 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  v37 = v87;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song] = 0;
  sub_1002A05E0(v37);
  v38 = v87;
}