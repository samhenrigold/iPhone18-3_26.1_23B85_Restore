id sub_100001BE0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CameraMainViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100001C8C()
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor:v1];

  [v0 setView:v2];
}

void sub_100001D90(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *&v1[OBJC_IVAR___CameraMainViewController_contentViewController];
  if (v4)
  {
    if (!a1)
    {
      v9 = v4;
      goto LABEL_10;
    }

    sub_100005FF0(0, &qword_100010D08, UIViewController_ptr);
    v28 = v4;
    v3 = v3;
    v5 = sub_100008A74();

    v6 = v28;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  else if (!a1)
  {
    return;
  }

  v7 = v3;
  [v7 willMoveToParentViewController:0];
  [v7 removeFromParentViewController];
  v8 = [v7 view];
  [v8 removeFromSuperview];

  if (!v4)
  {
    return;
  }

  v9 = v4;
LABEL_10:
  [v2 addChildViewController:v9];
  v10 = [v2 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v13 = v12;
  [v11 bounds];
  [v13 setFrame:?];
  [v11 addSubview:v13];
  v29 = objc_opt_self();
  sub_100004F30(&qword_100010C98, &qword_1000094D8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100009430;
  v15 = [v13 leftAnchor];
  v16 = [v11 leftAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v14 + 32) = v17;
  v18 = [v13 topAnchor];
  v19 = [v11 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v14 + 40) = v20;
  v21 = [v11 rightAnchor];
  v22 = [v13 rightAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v14 + 48) = v23;
  v24 = [v11 bottomAnchor];
  v25 = [v13 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v14 + 56) = v26;
  sub_100005FF0(0, &qword_100010D00, NSLayoutConstraint_ptr);
  isa = sub_1000089E4().super.isa;

  [v29 activateConstraints:isa];

  [v9 didMoveToParentViewController:v2];
  v6 = v4;
LABEL_13:
}

void sub_100002190(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CameraMainViewController_contentViewController);
  *(v1 + OBJC_IVAR___CameraMainViewController_contentViewController) = a1;
  v2 = a1;
  sub_100001D90(v3);
}

void sub_1000021F0()
{
  v1 = sub_1000088B4();
  sub_100006280();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100006294();
  v7 = v6 - v5;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 layer];

    if (v10)
    {
      v11 = NSTemporaryDirectory();
      v12 = sub_100008964();
      v14 = v13;

      v27 = v12;
      v28 = v14;

      v29._countAndFlagsBits = 0x2E6172656D61632FLL;
      v29._object = 0xEC00000072616163;
      sub_1000089A4(v29);

      v16 = v12;
      v15 = v28;
      sub_1000088A4();

      v17 = sub_100008894();
      v18 = sub_100008A44();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v27 = v20;
        *v19 = 136446210;
        v21 = sub_1000054B0(v16, v15, &v27);

        *(v19 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Saving layers: %{public}s", v19, 0xCu);
        sub_100005A20(v20);
        sub_1000063D0(v20);
        sub_1000063D0(v19);
      }

      else
      {
      }

      (*(v3 + 8))(v7, v1);
      v22 = v10;
      v23 = NSTemporaryDirectory();
      v24 = sub_100008964();
      v26 = v25;

      v27 = v24;
      v28 = v26;

      v30._countAndFlagsBits = 0x2E6172656D61632FLL;
      v30._object = 0xEC00000072616163;
      sub_1000089A4(v30);

      sub_100008984();

      CAEncodeLayerTreeToFile();
    }
  }

  sub_100006398();
}

uint64_t sub_100002508()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

void sub_1000025C8(char a1)
{
  v2 = v1;
  v4 = sub_1000088C4();
  sub_100006280();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100006294();
  v10 = v9 - v8;
  v11 = sub_1000088E4();
  sub_100006280();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100006294();
  v17 = v16 - v15;
  if (a1)
  {
    sub_100005FF0(0, &qword_100010CE0, OS_dispatch_queue_ptr);
    v18 = sub_100008A54();
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    sub_1000062A4(v19);
    sub_1000062C8(COERCE_DOUBLE(1107296256));
    aBlock[2] = v20;
    aBlock[3] = &unk_10000C8D0;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    sub_1000088D4();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000062E0();
    sub_100005EFC(v23, v24, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004F30(&qword_100010CF0, &qword_100009508);
    sub_100005F44();
    sub_100008A94();
    sub_100008A64();
    _Block_release(v21);

    (*(v6 + 8))(v10, v4);
    (*(v13 + 8))(v17, v11);
  }

  sub_100006398();
}

char *sub_100002828(char *result)
{
  if (*&result[OBJC_IVAR___CameraMainViewController_contentViewController])
  {
    type metadata accessor for CameraViewController();
    result = swift_dynamicCastClass();
    if (result)
    {
      v1 = *&result[OBJC_IVAR____TtC16ContinuityCamera20CameraViewController_cameraPicker];

      return [v1 takePicture];
    }
  }

  return result;
}

uint64_t sub_1000028A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1000029A0()
{
  if (*&v0[OBJC_IVAR___CameraMainViewController_contentViewController])
  {
    return [v0 setWantsVolumeButtonEvents:1];
  }

  return result;
}

id sub_100002A10(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___CameraMainViewController_contentViewController] = 0;
  if (a2)
  {
    v5 = sub_100008934();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for CameraMainViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100002AFC(void *a1)
{
  *&v1[OBJC_IVAR___CameraMainViewController_contentViewController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CameraMainViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_100002BBC(void *a1)
{
  v3 = sub_1000088C4();
  sub_100006280();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100006294();
  v9 = v8 - v7;
  v10 = sub_1000088E4();
  sub_100006280();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100006294();
  v16 = v15 - v14;
  if (sub_100005E9C())
  {
    if (!sub_100005EA8())
    {
      sub_100005FF0(0, &qword_100010CE0, OS_dispatch_queue_ptr);
      v31 = sub_100008A54();
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      *(v23 + 24) = v1;
      sub_1000062A4(v23);
      sub_1000062C8(COERCE_DOUBLE(1107296256));
      aBlock[2] = v24;
      aBlock[3] = &unk_10000C880;
      v25 = _Block_copy(aBlock);
      v26 = a1;
      v27 = v1;

      sub_1000088D4();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_1000062E0();
      sub_100005EFC(v28, v29, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100004F30(&qword_100010CF0, &qword_100009508);
      sub_100005F44();
      sub_100008A94();
      sub_100008A64();
      _Block_release(v25);

      (*(v5 + 8))(v9, v3);
      (*(v12 + 8))(v16, v10);
      sub_100006398();
      return;
    }

    sub_100005FF0(0, &qword_100010C90, NSError_ptr);
    sub_100008964();
    sub_100006314();
    v19 = -104;
  }

  else
  {
    sub_100005FF0(0, &qword_100010C90, NSError_ptr);
    sub_100008964();
    sub_100006314();
    v19 = -103;
  }

  v20 = sub_1000063B0(v17, v18, v19);
  v30 = sub_100008794();

  [a1 setError:v30];
  sub_100006398();
}

void sub_100002F10(void *a1, uint64_t a2)
{
  if (![a1 message])
  {
    __break(1u);
    return;
  }

  v3 = SidecarMessageGetServiceName();
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = sub_100008964();
  v6 = v5;
  if (v4 == sub_100008964() && v6 == v7)
  {

    goto LABEL_20;
  }

  v9 = sub_100008B34();

  if (v9)
  {
LABEL_20:

    type metadata accessor for CameraViewController();
    v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v26[OBJC_IVAR____TtC16ContinuityCamera20CameraViewController_delegate + 8] = &off_10000C7F0;
LABEL_24:
    swift_unknownObjectWeakAssign();
    v28 = v26;
    sub_100002190(v26);
    goto LABEL_25;
  }

  v10 = sub_100008964();
  v12 = v11;
  if (v10 == sub_100008964() && v12 == v13)
  {

    goto LABEL_22;
  }

  v15 = sub_100008B34();
  v16 = v3;

  if (v15)
  {
LABEL_22:

    goto LABEL_23;
  }

  v17 = sub_100008964();
  v19 = v18;
  if (v17 == sub_100008964() && v19 == v20)
  {

    goto LABEL_23;
  }

  v22 = sub_100008B34();

  if (v22)
  {
LABEL_23:
    type metadata accessor for DocumentScannerViewController();
    v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_24;
  }

LABEL_18:
  sub_100005FF0(0, &qword_100010C90, NSError_ptr);
  v23 = sub_100008964();
  LOBYTE(v27) = 2;
  v25 = sub_100004C10(v23, v24, -103, 0, 0, 0);
  v28 = sub_100008794();

  [a1 setError:{v28, v27, 135}];
LABEL_25:
}

void sub_100003290(uint64_t a1, void *a2)
{
  v4 = sub_1000088B4();
  sub_100006280();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100006294();
  v10 = v9 - v8;
  v11 = sub_100008874();
  sub_100006280();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100006294();
  v17 = v16 - v15;
  v18 = [v2 request];
  if (v18)
  {
    v19 = v18;
    sub_100008844();
    v20 = sub_100008834();
    v76 = v21;
    v73 = *(v13 + 8);
    v73(v17, v11);
    v75 = v11;
    v74 = v17;
    if ([v19 message])
    {
      v22 = SidecarMessageGetDefaults();
      if (v22)
      {
        v23 = v22;
        v72 = v20;
        sub_100008904();

        sub_1000088A4();

        v24 = sub_100008894();
        v25 = sub_100008A44();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v77[0] = v27;
          *v26 = 136446210;
          v28 = sub_100008914();
          v30 = sub_1000054B0(v28, v29, v77);

          *(v26 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v24, v25, "Defaults: %{public}s", v26, 0xCu);
          sub_100005A20(v27);
          sub_1000063D0(v27);
          sub_1000063D0(v26);
        }

        (*(v6 + 8))(v10, v4);
        v78[0] = 0xD00000000000001CLL;
        v78[1] = 0x800000010000A260;
        sub_100008AC4();
        sub_100006324();
        sub_100004FD0(v77);
        if (v79)
        {
          swift_dynamicCast();
        }

        else
        {
          sub_100005D48(v78, &qword_100010ED0, &qword_1000094E0);
        }

        v20 = v72;
        sub_100008AC4();
        sub_100006324();
        v56 = sub_100004FD0(v77);
        if (!v79)
        {
          sub_100005D48(v78, &qword_100010ED0, &qword_1000094E0);
          goto LABEL_26;
        }

        if ((sub_100006378(v56, v57, v58, &type metadata for String) & 1) == 0)
        {
          goto LABEL_26;
        }

        v59 = sub_100008974();
        v61 = v60;
        v62 = v59 == 0x6C616E696769726FLL && v60 == 0xE800000000000000;
        if (v62 || (v63 = v59, (sub_1000062F8(0x6C616E696769726FLL, 0xE800000000000000) & 1) != 0))
        {

          [a2 size];
          goto LABEL_26;
        }

        v67 = v63 == 0x6C6C616D73 && v61 == 0xE500000000000000;
        if (v67 || (sub_1000062F8(0x6C6C616D73, 0xE500000000000000) & 1) != 0 || (v63 == 0x6D756964656DLL ? (v68 = v61 == 0xE600000000000000) : (v68 = 0), v68 || (sub_1000062F8(0x6D756964656DLL, 0xE600000000000000) & 1) != 0))
        {

          goto LABEL_26;
        }

        if (v63 == 0x656772616CLL && v61 == 0xE500000000000000)
        {
        }

        else
        {
          v70 = sub_1000062F8(0x656772616CLL, 0xE500000000000000);

          if ((v70 & 1) == 0)
          {
            v71 = sub_100008934();

            CGSizeFromString(v71);

LABEL_26:
            sub_100008AC4();
            sub_100006324();

            swift_unknownObjectRelease();
            v64 = sub_100004FD0(v77);
            if (v79)
            {
              if (sub_100006378(v64, v65, v66, &type metadata for String))
              {

                v20 = 0xD000000000000019;
                v76 = 0x800000010000A2A0;
              }
            }

            else
            {
              sub_100005D48(v78, &qword_100010ED0, &qword_1000094E0);
            }

            goto LABEL_12;
          }
        }

        goto LABEL_26;
      }

      swift_unknownObjectRelease();
    }

LABEL_12:
    v31 = sub_100008934();
    v32 = sub_100006364();
    v37 = sub_100003B90(v33, v34, v35, v36, v32);
    v39 = v38;

    if (v39 >> 60 == 15 && (sub_100008844(), sub_100008834(), v73(v74, v75), v40 = sub_100008934(), , v41 = sub_100006364(), v37 = sub_100003B90(v42, v43, v44, v45, v41), v39 = v46, v40, v39 >> 60 == 15))
    {

      sub_100005FF0(0, &qword_100010C90, NSError_ptr);
      sub_100008964();
      sub_100006314();
      v49 = sub_1000063B0(v47, v48, -1011);
      v50 = sub_100008794();

      [v19 setError:v50];
    }

    else
    {
      v51 = objc_allocWithZone(SidecarItem);
      sub_100004ED8(v37, v39);
      v52 = sub_100004E34(v37, v39, v20, v76);
      sub_100004F30(&qword_100010C98, &qword_1000094D8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100009440;
      *(v53 + 32) = v52;
      sub_100005FF0(0, &unk_100010CA0, SidecarItem_ptr);
      v54 = v52;
      isa = sub_1000089E4().super.isa;

      [v19 sendItems:isa];

      sub_100004F78(v37, v39);
    }

    return;
  }

  [v2 completeRequest:0];
}

uint64_t sub_100003B90(void *a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v10 = a1;
  v11 = v5;
  v12 = sub_100004634(a2, a3, a4 & 1, 1.0);
  v14 = v13;
  v15 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v15 setOpaque:0];
  [v11 scale];
  [v15 setScale:?];
  v16 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v15 format:{v12, v14}];
  v19[2] = v11;
  *&v19[3] = v12;
  *&v19[4] = v14;
  v17 = sub_100004718(v10, sub_100005D04, v19, a5);

  return v17;
}

void sub_100003CD4(uint64_t a1, void *a2)
{
  v4 = [v2 request];
  if (v4)
  {
    v22 = v4;
    if ([v4 message])
    {
      v5 = SidecarMessageGetServiceName();
      if (v5)
      {
        v6 = v5;
        v7 = sub_100008964();
        v9 = v8;
        v10 = sub_100008964();
        if (v7 == v10 && v9 == v11)
        {
        }

        else
        {
          v13 = sub_100006340(v10);

          if ((v13 & 1) == 0)
          {
            v14 = sub_100008964();
            v16 = v15;
            v17 = sub_100008964();
            if (v14 == v17 && v16 == v18)
            {
            }

            else
            {
              v20 = sub_100006340(v17);

              if ((v20 & 1) == 0)
              {
                [v2 completeRequest:0];
LABEL_23:

                swift_unknownObjectRelease();

                return;
              }
            }

            sub_1000042D8(a2);
LABEL_22:
            sub_100005FF0(0, &unk_100010CA0, SidecarItem_ptr);
            isa = sub_1000089E4().super.isa;

            [v22 sendItems:isa];

            goto LABEL_23;
          }
        }

        sub_100003F0C(a2);
        goto LABEL_22;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  [v2 completeRequest:0];
}

unint64_t sub_100003F0C(void *a1)
{
  v34 = sub_100008874();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000087C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &_swiftEmptyArrayStorage;
  result = [a1 pageCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (!result)
    {
      return &_swiftEmptyArrayStorage;
    }

    v10 = 0;
    v35 = (v5 + 8);
    v30 = (v2 + 8);
    v11 = &_swiftEmptyArrayStorage;
    v12 = &CameraMainViewController__metaData;
    v31 = v7;
    v32 = v4;
    do
    {
      v13 = [a1 v12[18].ivars];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 objectAtIndexedSubscript:v10];

        sub_100008A84();
        swift_unknownObjectRelease();
        sub_100005FF0(0, &qword_100010CD8, ICDocCamDocumentInfo_ptr);
        if (swift_dynamicCast())
        {
          v16 = v36;
          sub_100005E0C(v36);
          if (v17)
          {
            v18 = sub_100008934();

            v19 = [a1 getImageURL:v18];

            sub_1000087B4();
            v20 = sub_1000087D4();
            v22 = v21;
            sub_100004ED8(v20, v21);
            v23 = v33;
            sub_100008844();
            v24 = sub_100008834();
            v26 = v25;
            (*v30)(v23, v34);
            v27 = objc_allocWithZone(SidecarItem);
            v28 = sub_100004E34(v20, v22, v24, v26);
            sub_1000089D4();
            if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1000089F4();
            }

            sub_100008A04();

            sub_100004F78(v20, v22);
            (*v35)(v31, v32);
            v11 = v37;
          }

          else
          {
          }

          v12 = &CameraMainViewController__metaData;
        }
      }

      ++v10;
    }

    while (v9 != v10);
    return v11;
  }

  return result;
}

void *sub_1000042D8(void *a1)
{
  v2 = sub_1000088B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = 0;
  v6 = [a1 archivedDataWithError:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = sub_1000087F4();
    v10 = v9;

    v11 = objc_allocWithZone(SidecarItem);
    sub_100004ED8(v8, v10);
    v12 = sub_100004E34(v8, v10, 0xD000000000000025, 0x800000010000A2F0);
    sub_100004F30(&qword_100010C98, &qword_1000094D8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100009440;
    *(v13 + 32) = v12;
    sub_100004F78(v8, v10);
  }

  else
  {
    v14 = v7;
    v15 = sub_1000087A4();

    swift_willThrow();
    v16 = sub_1000088A4();
    __chkstk_darwin(v16);
    *&v18[-16] = v15;
    sub_1000063E8(sub_10000459C, 0, sub_100005E70);
    (*(v3 + 8))(v5, v2);

    return &_swiftEmptyArrayStorage;
  }

  return v13;
}

double sub_100004634(uint64_t a1, uint64_t a2, char a3, double a4)
{
  [v4 size];
  v10 = v9;
  v12 = v11;
  if ((a3 & 1) == 0)
  {
    [v4 scale];
    v14 = a4 / v13;
    v15 = v14 * *&a1;
    v16 = v14 * *&a2;
    v17 = (v12 >= v10) ^ (v16 < v15);
    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = v16;
    }

    if (!v17)
    {
      v16 = v15;
    }

    v19 = v16 / v12;
    if (v18 / v10 <= 1.0 || v19 <= 1.0)
    {
      if (v19 >= v18 / v10)
      {
        v19 = v18 / v10;
      }

      return floor(v10 * v19);
    }
  }

  return v10;
}

uint64_t sub_100004718(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v9 = sub_100004F30(&qword_100010CC0, &qword_1000094F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_100008874();
  sub_100006280();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  sub_100008964();
  sub_100008884();
  if (sub_100005D20(v11, 1, v12) == 1)
  {
    sub_100005D48(v11, &qword_100010CC0, &qword_1000094F8);
    return 0;
  }

  (*(v14 + 32))(v20, v11, v12);
  sub_100008854();
  v21 = sub_100008864();
  v22 = *(v14 + 8);
  v22(v18, v12);
  if ((v21 & 1) == 0)
  {
LABEL_10:
    v22(v20, v12);
    return 0;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  aBlock[4] = sub_100005DB8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004BC4;
  aBlock[3] = &unk_10000C830;
  v24 = _Block_copy(aBlock);

  v25 = [v5 imageWithActions:v24];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    v27 = [objc_allocWithZone(NSMutableData) init];
    sub_100004F30(&qword_100010CC8, &qword_100009500);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100009450;
    *(inited + 32) = kCGImageDestinationLossyCompressionQuality;
    *(inited + 40) = a4;
    type metadata accessor for CFString(0);
    sub_100005EFC(&qword_100010CD0, type metadata accessor for CFString, &unk_100009758);
    v29 = kCGImageDestinationLossyCompressionQuality;
    sub_100008924();
    isa = sub_1000088F4().super.isa;

    v31 = v27;
    sub_100008834();
    v32 = sub_100008934();

    v33 = isa;
    v34 = CGImageDestinationCreateWithData(v31, v32, 1uLL, v33);

    if (v34)
    {
      v35 = [v25 CGImage];
      if (v35)
      {
        v36 = v35;
        CGImageDestinationAddImage(v34, v35, v33);

        CGImageDestinationFinalize(v34);
        v37 = v31;
        v41 = v22;
        v38 = v37;
        v39 = sub_1000087F4();

        v41(v20, v12);
        return v39;
      }
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_100004BC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_100004C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100008924();
  if (a5)
  {
    v9 = sub_100008964();
    v11 = v10;
    v30 = &type metadata for String;
    *&v29 = a4;
    *(&v29 + 1) = a5;
    sub_100005B40(&v29, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100005B50(v26, v9, v11, isUniquelyReferenced_nonNull_native);
  }

  if (a6)
  {
    v13 = sub_100008964();
    v15 = v14;
    swift_getErrorValue();
    v16 = v27;
    v17 = v28;
    v30 = v28;
    v18 = sub_100005AE0(&v29);
    (*(*(v17 - 1) + 16))(v18, v16, v17);
    sub_100005B40(&v29, v26);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_100005B50(v26, v13, v15, v19);
  }

  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_100008934();

  isa = sub_1000088F4().super.isa;

  v23 = [v20 initWithDomain:v21 code:a3 userInfo:isa];

  return v23;
}

id sub_100004E34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000087E4().super.isa;
    sub_100005ACC(a1, a2);
  }

  v8 = sub_100008934();

  v9 = [v4 initWithData:isa type:v8];

  return v9;
}

uint64_t sub_100004ED8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100004F30(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004F78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100005028(uint64_t a1, id *a2)
{
  result = sub_100008944();
  *a2 = 0;
  return result;
}

uint64_t sub_1000050A0(uint64_t a1, id *a2)
{
  v3 = sub_100008954();
  *a2 = 0;
  return v3 & 1;
}

Swift::Int sub_1000051C4(uint64_t a1, uint64_t a2)
{
  sub_100008B54();
  swift_getWitnessTable();
  sub_100008814();
  return sub_100008B64();
}

NSString sub_10000523C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100006238(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000526C(uint64_t a1, uint64_t a2)
{
  sub_100008964();
  v2 = sub_1000089C4();

  return v2;
}

uint64_t sub_1000052AC(uint64_t a1, uint64_t a2)
{
  sub_100008964();
  sub_100008994();
}

uint64_t sub_100005308(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_100005380@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100008934();

  *a2 = v3;
  return result;
}

uint64_t sub_1000053C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_100007B40(*v2, a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000053F4(uint64_t a1)
{
  v2 = sub_100005EFC(&qword_100010D40, type metadata accessor for InfoKey, &unk_100009714);
  v3 = sub_100005EFC(&qword_100010D48, type metadata accessor for InfoKey, &unk_100009668);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_1000054B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005574(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100005A6C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100005A20(v11);
  return v7;
}

unint64_t sub_100005574(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100005674(a5, a6);
    *a1 = v9;
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
    result = sub_100008AE4();
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

char *sub_100005674(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000056C0(a1, a2);
  sub_1000057D8(&off_10000C7C8);
  return v3;
}

char *sub_1000056C0(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1000089B4())
  {
    result = sub_1000058BC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100008AD4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_100008AE4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000057D8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10000592C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000058BC(uint64_t a1, uint64_t a2)
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

  sub_100004F30(&qword_100010CB0, &qword_1000094E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000592C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004F30(&qword_100010CB0, &qword_1000094E8);
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

uint64_t sub_100005A20(void *a1)
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

uint64_t sub_100005A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005ACC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004F78(result, a2);
  }

  return result;
}

uint64_t *sub_100005AE0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_100005B40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_100005B50(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007B44(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100004F30(&qword_100010CB8, &qword_1000094F0);
  if (!sub_100008AF4(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100007B44(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_100008B44();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_100005A20(v21);

    return sub_100005B40(a1, v21);
  }

  else
  {
    sub_100005C98(v16, a2, a3, a1, v20);
  }
}

_OWORD *sub_100005C98(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100005B40(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100005D48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004F30(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E0C(void *a1)
{
  v1 = [a1 croppedAndFilteredImageUUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100008964();

  return v3;
}

uint64_t sub_100005E70()
{
  v1 = *(v0 + 16);
  swift_errorRetain();
  return v1;
}

uint64_t sub_100005EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100005F44()
{
  result = qword_100010CF8;
  if (!qword_100010CF8)
  {
    sub_100005FA8(&qword_100010CF0, &qword_100009508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010CF8);
  }

  return result;
}

uint64_t sub_100005FA8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005FF0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100006030()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006084(uint64_t a1, unint64_t *a2, uint64_t a3)
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

NSString sub_100006238(uint64_t a1, uint64_t a2)
{
  sub_100008964();
  v2 = sub_100008934();

  return v2;
}

uint64_t sub_1000062A4(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000062F8(uint64_t a1, uint64_t a2)
{

  return sub_100008B34();
}

double sub_100006324()
{

  return sub_100006878(v0, (v1 - 152), v1 - 192);
}

uint64_t sub_100006340(uint64_t a1)
{

  return sub_100008B34();
}

uint64_t sub_100006378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id sub_1000063B0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100004C10(a1, a2, a3, 0, 0, 0);
}

uint64_t sub_1000063D0(uint64_t a1)
{
}

void sub_1000063E8(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v4 = sub_100008794();

  v5 = [v4 localizedDescription];
  v6 = sub_100008964();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v33 = v4;

    v13 = sub_100008894();
    v14 = sub_100008A34();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136446979;
      v16 = sub_1000054B0(v11, v12, &v34);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;
      v17 = [v33 domain];
      v18 = sub_100008964();
      v20 = v19;

      v21 = sub_1000054B0(v18, v20, &v34);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2048;
      v22 = [v33 code];

      *(v15 + 24) = v22;
      *(v15 + 32) = 2081;
      v23 = sub_1000054B0(v6, v8, &v34);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    v33 = v4;

    v13 = sub_100008894();
    v24 = sub_100008A34();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v25 = 136446723;
      v26 = [v33 domain];
      v27 = sub_100008964();
      v29 = v28;

      v30 = sub_1000054B0(v27, v29, &v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = [v33 code];

      *(v25 + 14) = v31;
      *(v25 + 22) = 2081;
      v32 = sub_1000054B0(v6, v8, &v34);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v13, v24, "%{public}s (%ld) %{private}s", v25, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t sub_1000067F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100008964();
  v4 = v3;
  if (v2 == sub_100008964() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100008B34();
  }

  return v7 & 1;
}

double sub_100006878@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_100007BBC(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100005A6C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1000068DC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_100007C00(a3, a1), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100005A6C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id sub_100006940()
{
  v1 = sub_100008874();
  sub_100008098();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100006294();
  v7 = v6 - v5;
  v8 = type metadata accessor for CameraPicker();
  v31.receiver = v0;
  v31.super_class = v8;
  result = objc_msgSendSuper2(&v31, "init");
  if (result)
  {
    v10 = result;
    isa = sub_100008A14().super.super.isa;
    v30.receiver = v10;
    v30.super_class = v8;
    objc_msgSendSuper2(&v30, "_setValue:forProperty:", isa, _UIImagePickerControllerAllowAnySuperview);

    v29.receiver = v10;
    v29.super_class = v8;
    objc_msgSendSuper2(&v29, "setSourceType:", 1);

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = [v12 objectForKey:_UIImagePickerControllerCameraDevice];
    if (v13)
    {
      sub_100008A84();
      v13 = swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      if (sub_1000080C0(v13, v14, v15, &type metadata for Int))
      {
        [v10 setCameraDevice:v24];
      }
    }

    else
    {
      sub_100007A64(&v27);
    }

    v16 = [v12 objectForKey:_UIImagePickerControllerCameraFlashMode];
    if (v16)
    {
      sub_100008A84();
      v16 = swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      if (sub_1000080C0(v16, v17, v18, &type metadata for Int))
      {
        [v10 setCameraFlashMode:v24];
      }
    }

    else
    {
      sub_100007A64(&v27);
    }

    sub_100004F30(&unk_100010EF0, &unk_100009800);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100009450;
    sub_100008854();
    v20 = sub_100008834();
    v22 = v21;
    (*(v3 + 8))(v7, v1);
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = sub_1000089E4().super.isa;

    [v10 setMediaTypes:v23];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100006CCC(uint64_t a1, uint64_t a2, NSString a3)
{
  v7 = sub_100008964();
  if (!a3)
  {

    goto LABEL_9;
  }

  if (v7 != a2 || v8 != a3)
  {
    v10 = sub_100008B34();

    if (v10)
    {
      goto LABEL_11;
    }

LABEL_9:
    sub_100007FE0(a1, v24);
    goto LABEL_12;
  }

LABEL_11:
  isa = sub_100008A24().super.super.isa;
  v24[3] = sub_100005FF0(0, &qword_100010EE8, NSNumber_ptr);
  v24[0] = isa;
LABEL_12:
  sub_100007FE0(v24, v22);
  v12 = v23;
  if (!v23)
  {
    v19 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100008050(v22, v23);
  sub_100008098();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100006294();
  v18 = v17 - v16;
  (*(v14 + 16))(v17 - v16);
  v19 = sub_100008B24();
  (*(v14 + 8))(v18, v12);
  sub_100005A20(v22);
  if (a3)
  {
LABEL_14:
    a3 = sub_100008934();
  }

LABEL_15:
  v21.receiver = v3;
  v21.super_class = type metadata accessor for CameraPicker();
  objc_msgSendSuper2(&v21, "_setValue:forProperty:", v19, a3);
  swift_unknownObjectRelease();

  return sub_100007A64(v24);
}

id sub_100006FE0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CameraPicker();
  return objc_msgSendSuper2(&v3, "setSourceType:", 1);
}

void sub_100007020(uint64_t a1)
{
  v2 = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CameraPicker();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", v2 & 1);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = [v1 cameraDevice];
  [v3 setInteger:v4 forKey:_UIImagePickerControllerCameraDevice];
  v5 = [v1 cameraFlashMode];
  [v3 setInteger:v5 forKey:_UIImagePickerControllerCameraFlashMode];
  [v3 synchronize];
}

BOOL sub_1000071CC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

void sub_100007230(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CameraViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v2 = *&v1[OBJC_IVAR____TtC16ContinuityCamera20CameraViewController_cameraPicker];
  [v2 setDelegate:v1];
  [v1 addChildViewController:v2];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v1 view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame:{v8, v10, v12, v14}];
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    [v15 addSubview:v4];

    [v2 didMoveToParentViewController:v1];
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100007440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000088B4();
  sub_100008098();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100006294();
  v11 = v10 - v9;
  sub_1000068DC(a2, &v17, UIImagePickerControllerOriginalImage);
  if (v18)
  {
    sub_100005FF0(0, &unk_100010ED8, UIImage_ptr);
    if (swift_dynamicCast())
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {

        return;
      }

      sub_100003290(v3, v16);

      goto LABEL_10;
    }
  }

  else
  {
    sub_100007A64(&v17);
  }

  sub_1000088A4();
  v12 = sub_100008894();
  v13 = sub_100008A34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "no image from UIImagePickerController", v14, 2u);
  }

  (*(v7 + 8))(v11, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong completeRequest:1];
LABEL_10:
    swift_unknownObjectRelease();
  }
}

void *sub_1000076DC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result completeRequest:1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000077A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC16ContinuityCamera20CameraViewController_cameraPicker;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for CameraPicker()) init];
  *&v3[OBJC_IVAR____TtC16ContinuityCamera20CameraViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = sub_100008934();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for CameraViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1000078CC(void *a1)
{
  v3 = OBJC_IVAR____TtC16ContinuityCamera20CameraViewController_cameraPicker;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CameraPicker()) init];
  *&v1[OBJC_IVAR____TtC16ContinuityCamera20CameraViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CameraViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1000079B4(uint64_t (*a1)(void), SEL *a2)
{
  v5.receiver = v2;
  v5.super_class = a1();
  return objc_msgSendSuper2(&v5, *a2);
}

uint64_t sub_100007A64(uint64_t a1)
{
  v2 = sub_100004F30(&qword_100010ED0, &qword_1000094E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_100007ACC(uint64_t a1, uint64_t a2)
{
  sub_100008964();
  sub_100008B54();
  sub_100008994();
  v2 = sub_100008B64();

  return v2;
}

unint64_t sub_100007B44(uint64_t a1, uint64_t a2)
{
  sub_100008B54();
  sub_100008994();
  v4 = sub_100008B64();

  return sub_100007C94(a1, a2, v4);
}

unint64_t sub_100007BBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008AA4(*(v2 + 40));

  return sub_100007D48(a1, v4);
}

unint64_t sub_100007C00(uint64_t a1, uint64_t a2)
{
  sub_100008964();
  sub_100008B54();
  sub_100008994();
  v3 = sub_100008B64();

  return sub_100007E68(a1, v3);
}

unint64_t sub_100007C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100008B34() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100007D48(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100007E0C(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100008AB4();
    sub_100004FD0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100007E68(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_100008964();
    v7 = v6;
    if (v5 == sub_100008964() && v7 == v8)
    {

      return i;
    }

    v10 = sub_100008B34();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_100007F60()
{
  result = qword_100010D40;
  if (!qword_100010D40)
  {
    type metadata accessor for InfoKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010D40);
  }

  return result;
}

uint64_t sub_100007FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F30(&qword_100010ED0, &qword_1000094E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100008050(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000080C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id sub_1000080F0(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for DocumentScannerViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v2 = *&v1[OBJC_IVAR____TtC16ContinuityCamera29DocumentScannerViewController_documentCamera];
  [v2 setDelegate:v1];
  [v1 addChildViewController:v2];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [result bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame:{v7, v9, v11, v13}];
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  result = [v2 view];
  if (result)
  {
    v15 = result;
    [v14 addSubview:result];

    return [v2 didMoveToParentViewController:v1];
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1000082C0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector:"documentCameraViewController:didFinishWithScan:"])
    {
      [v5 documentCameraViewController:a1 didFinishWithScan:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1000083D0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector:"documentCameraViewControllerDidCancel:"])
    {
      [v3 documentCameraViewControllerDidCancel:a1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000084C4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16ContinuityCamera29DocumentScannerViewController_documentCamera;
  *&v3[v6] = [objc_allocWithZone(VNDocumentCameraViewController) init];
  if (a2)
  {
    v7 = sub_100008934();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for DocumentScannerViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1000085F0(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC16ContinuityCamera29DocumentScannerViewController_documentCamera;
  *&v1[v3] = [objc_allocWithZone(VNDocumentCameraViewController) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DocumentScannerViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1000086B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DocumentScannerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

CGSize CGSizeFromString(NSString *string)
{
  v3 = _CGSizeFromString(string);
  height = v3.height;
  width = v3.width;
  result.height = height;
  result.width = width;
  return result;
}