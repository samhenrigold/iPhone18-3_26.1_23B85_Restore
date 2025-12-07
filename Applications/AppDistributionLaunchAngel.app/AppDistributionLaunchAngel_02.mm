uint64_t sub_10003FAFC(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10003FB7C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10003FB7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000FBCC(v9, 0), v12 = sub_10003FCD4(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10003FCD4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10003FEF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10003FEF4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10003FEF4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_10003FF8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper];
  v9 = String._bridgeToObjectiveC()();
  if (*&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID + 8])
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  if (*&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID + 8])
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 lockupWithItemID:v9 versionID:v10 distributorID:v11 isForAppStore:a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] delegate:a1];

  v13 = objc_allocWithZone(UIColor);
  v44 = sub_1000618D0;
  v45 = 0;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10004646C;
  v43 = a3;
  v14 = _Block_copy(&aBlock);
  v15 = [v13 initWithDynamicProvider:v14];
  _Block_release(v14);

  [v12 setBackgroundColor:v15];

  [a2 addSubview:v12];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [a2 leadingAnchor];
  v17 = [v12 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-16.0];

  [v18 setActive:1];
  v19 = [a2 trailingAnchor];
  v20 = [v12 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

  [v21 setActive:1];
  v22 = [a2 topAnchor];
  v23 = [v12 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];

  [v24 setActive:1];
  v25 = [a2 bottomAnchor];
  v26 = [v12 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:16.0];

  [v27 setActive:1];
  v28 = [a2 layer];
  [v28 setCornerRadius:20.0];

  v29 = [a2 layer];
  v30 = objc_allocWithZone(UIColor);
  v44 = sub_1000618F4;
  v45 = 0;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10004646C;
  v43 = a4;
  v31 = _Block_copy(&aBlock);
  v32 = [v30 initWithDynamicProvider:v31];
  _Block_release(v31);

  v33 = [v32 CGColor];

  [v29 setBorderColor:v33];
  v34 = [a2 layer];
  [v34 setBorderWidth:1.0];

  v35 = objc_allocWithZone(UIColor);
  v44 = sub_1000618D0;
  v45 = 0;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10004646C;
  v43 = a5;
  v36 = _Block_copy(&aBlock);
  v37 = [v35 initWithDynamicProvider:v36];
  _Block_release(v36);

  [a2 setBackgroundColor:v37];
}

id sub_10004050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_delegate];
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_isIPad;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v3[v7] = v9 == 1;
  v10 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton;
  v11 = &selRef_boldButton;
  v12 = objc_opt_self();
  *&v3[v10] = [v12 boldButton];
  v13 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView;
  *&v3[v13] = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_currentLockup] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp] = 0;
  v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButtonPressed] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_lastProgressUpdate] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken] = 0;
  *(v6 + 1) = a3;
  swift_unknownObjectWeakAssign();
  sub_100041ED0(a1, &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent], type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
  if (*(a1 + *(type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0) + 68)))
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_opt_self();
    v11 = &selRef_linkButton;
  }

  v15 = [v14 *v11];
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_cancelButton] = v15;
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v20.receiver = v3;
  v20.super_class = type metadata accessor for CombinedApprovalAndInstallSheetViewController(0);
  v18 = objc_msgSendSuper2(&v20, "initWithTitle:detailText:symbolName:contentLayout:", v16, v17, 0, 3);

  sub_100041F38(a1, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
  return v18;
}

char *sub_100040764(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v50 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InstallSheetContext.Source();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  *&a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration] = 0;
  v14 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_context;
  v15 = type metadata accessor for InstallSheetContext();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&a3[v14], a1, v15);
  v17 = *(v16 + 56);
  v48 = v15;
  v17(&a3[v14], 0, 1, v15);
  v18 = InstallSheetContext.itemID.getter();
  v19 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID];
  *v19 = v18;
  v19[1] = v20;
  v21 = InstallSheetContext.versionID.getter();
  v22 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID];
  *v22 = v21;
  v22[1] = v23;
  v24 = InstallSheetContext.logKey.getter();
  v25 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_logKey];
  *v25 = v24;
  v25[1] = v26;
  InstallSheetContext.source.getter();
  LOBYTE(v14) = InstallSheetContext.Source.isAppStore.getter();
  v44 = *(v8 + 8);
  v44(v13, v7);
  a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] = v14 & 1;
  v27 = objc_allocWithZone(AppStoreComponentsWrapper);

  v28 = String._bridgeToObjectiveC()();

  v29 = [v27 initWithLogKey:v28];

  *&a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper] = v29;
  InstallSheetContext.source.getter();
  v30 = (*(v8 + 88))(v11, v7);
  if (v30 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    (*(v8 + 96))(v11, v7);
    v31 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
    goto LABEL_3;
  }

  if (v30 == enum case for InstallSheetContext.Source.distributor(_:))
  {
    (*(v8 + 96))(v11, v7);
    v33 = *(v11 + 2);
    v34 = *(v11 + 3);

LABEL_9:
    v39 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
    *v39 = v33;
    v39[1] = v34;
    goto LABEL_10;
  }

  if (v30 == enum case for InstallSheetContext.Source.distributorWithContext(_:))
  {
    (*(v8 + 96))(v11, v7);
    v36 = v45;
    v35 = v46;
    v37 = v47;
    (*(v46 + 32))(v45, v11, v47);
    v33 = InstallSheetContext.Source.DistributorContext.id.getter();
    v34 = v38;
    (*(v35 + 8))(v36, v37);
    goto LABEL_9;
  }

  if (v30 == enum case for InstallSheetContext.Source.web(_:))
  {
    v44(v11, v7);
    goto LABEL_4;
  }

  if (v30 != enum case for InstallSheetContext.Source.webWithContext(_:))
  {
    if (v30 != enum case for InstallSheetContext.Source.appStore(_:))
    {
      v42 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
      *v42 = 0;
      v42[1] = 0;
      v44(v11, v7);
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  (*(v8 + 96))(v11, v7);
  v31 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
LABEL_3:
  (*(*(v31 - 8) + 8))(v11, v31);
LABEL_4:
  v32 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
  *v32 = 0;
  v32[1] = 0;
LABEL_10:
  v51.receiver = a3;
  v51.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v51, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10003FF8C(v50, v40, &unk_10007F6C8, &unk_10007F6F0, &unk_10007F718);
  sub_100045FF4();

  (*(v16 + 8))(a1, v48);
  return v40;
}

uint64_t sub_100040CCC(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v2 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v2 - 8);
  v52 = &v43 - v3;
  v49 = type metadata accessor for InstallSheetContext();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for UITextItem.Content();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UITextItem.content.getter();
  if ((*(v14 + 88))(v16, v13) == enum case for UITextItem.Content.link(_:))
  {
    (*(v14 + 96))(v16, v13);
    v45 = v8;
    v17 = *(v8 + 32);
    v47 = v8 + 32;
    v48 = v12;
    v46 = v17;
    v17(v12, v16, v7);
    v18 = v7;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000105E8(v19, qword_10008C4C0);
    v20 = v50;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v50 = v18;
      v24 = v23;
      v25 = swift_slowAlloc();
      v54 = v25;
      *v24 = 136446210;
      v26 = v49;
      (*(v4 + 16))(v6, v20 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v49);
      v27 = InstallSheetContext.logKey.getter();
      v44 = v20;
      v29 = v28;
      (*(v4 + 8))(v6, v26);
      v30 = sub_10000F78C(v27, v29, &v54);
      v20 = v44;

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] User tapped learn more link", v24, 0xCu);
      sub_10001059C(v25);

      v18 = v50;
    }

    v31 = v48;
    v32 = v45;
    v33 = type metadata accessor for TaskPriority();
    v34 = v52;
    (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
    v35 = v51;
    (*(v32 + 16))(v51, v31, v18);
    type metadata accessor for MainActor();
    v36 = v20;
    v37 = static MainActor.shared.getter();
    v38 = v32;
    v39 = v18;
    v40 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = v37;
    *(v41 + 3) = &protocol witness table for MainActor;
    *(v41 + 4) = v36;
    v46(&v41[v40], v35, v39);
    sub_100007954(0, 0, v34, &unk_100067250, v41);

    (*(v38 + 8))(v31, v39);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }

  return v53;
}

id sub_100041238()
{
  v1 = [v0 closestPositionToPoint:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_msgSend(v0 "tokenizer")];
  swift_unknownObjectRelease();
  if (!v3)
  {

    return 0;
  }

  v4 = [v0 beginningOfDocument];
  v5 = [v3 start];
  v6 = [v0 offsetFromPosition:v4 toPosition:v5];

  result = [v0 attributedText];
  if (result)
  {
    v8 = result;
    v9 = [result attribute:NSLinkAttributeName atIndex:v6 effectiveRange:0];

    v10 = v9 != 0;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_100028608(&v11, v12);
    }

    else
    {

      memset(v12, 0, sizeof(v12));
    }

    sub_100011C14(v12, &qword_100089020, &qword_1000663B0);
    return v10;
  }

  __break(1u);
  return result;
}

id sub_100041418@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_10004144C()
{
  v1 = type metadata accessor for AppLibrary.App.Installation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100041510(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppLibrary.App.Installation() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10003DDAC(a1, a2, v6, v7);
}

uint64_t sub_1000415AC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppLibrary.App.Installation() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001020C;

  return sub_10003DFAC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000416A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000416E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100041718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003D1DC(a1, v4, v5, v6);
}

void (*sub_1000417CC())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_100041708;
}

uint64_t sub_100041830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001020C;

  return sub_10003C458(a1, v4, v5, v7, v6);
}

uint64_t sub_1000418F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003B738(a1, v4, v5, v6);
}

uint64_t sub_1000419A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&unk_100089E30, &qword_100067230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003EAC0(a1, v4, v5, v6);
}

uint64_t sub_100041AE0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100041BB4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000121F4;

  return sub_10003B1A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100041CAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003AEA8(a1, v4, v5, v6);
}

uint64_t sub_100041D60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003AD60(a1, v4, v5, v6);
}

uint64_t sub_100041E14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003A798(a1, v4, v5, v6);
}

uint64_t sub_100041ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10004214C(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for OAuthAuthorizationViewController(0);
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent:0.8];

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v10[4] = sub_100043C88;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10005F9E8;
  v10[3] = &unk_10007F8D0;
  v7 = _Block_copy(v10);
  v8 = v1;
  v9 = v4;

  [v5 animateWithDuration:v7 animations:0.3];
  _Block_release(v7);
}

void sub_1000422D8(char a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OAuthAuthorizationViewController(0);
  v34.receiver = v1;
  v34.super_class = v7;
  objc_msgSendSuper2(&v34, "viewDidAppear:", a1 & 1);
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000105E8(v8, qword_10008C4C0);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v12 = 136315395;
    v13 = OAuthAuthorizationContext.logKey.getter();
    v15 = sub_10000F78C(v13, v14, aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2085;
    OAuthAuthorizationContext.requestURL.getter();
    sub_100043C30(&qword_100089F70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    v19 = sub_10000F78C(v16, v18, aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Activating web authentication request: %{sensitive}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  OAuthAuthorizationContext.requestURL.getter();
  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 callbackWithCustomScheme:v21];

  v23 = swift_allocObject();
  *(v23 + 16) = v9;
  v24 = objc_allocWithZone(ASWebAuthenticationSession);
  v25 = v9;
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  aBlock[4] = sub_100043B50;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000436F0;
  aBlock[3] = &unk_10007F880;
  v29 = _Block_copy(aBlock);
  v30 = [v24 initWithURL:v28 callback:v22 completionHandler:v29];
  _Block_release(v29);

  (*(v4 + 8))(v6, v3);

  [v30 setPrefersEphemeralWebBrowserSession:1];
  [v30 setPresentationContextProvider:v25];
  [v30 start];
}

void sub_100042728(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  type metadata accessor for MainActor();
  v50 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100043BC0(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100043B58(v8);
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000105E8(v16, qword_10008C4C0);
    v17 = a3;
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v20 = 136446466;
      v21 = OAuthAuthorizationContext.logKey.getter();
      v23 = sub_10000F78C(v21, v22, &v52);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      v51 = a2;
      swift_errorRetain();
      sub_1000047BC(&unk_100089F80, &unk_100067360);
      v24 = String.init<A>(describing:)();
      v26 = sub_10000F78C(v24, v25, &v52);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] Authentication failed: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      v27 = _convertErrorToNSError(_:)();
    }

    else
    {
      v27 = 0;
    }

    v46 = [objc_opt_self() responseForError:v27];

    sub_100042FB4(v46);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000105E8(v28, qword_10008C4C0);
    (*(v10 + 16))(v13, v15, v9);
    v29 = a3;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      *v32 = 136446467;
      v48 = v31;
      v33 = OAuthAuthorizationContext.logKey.getter();
      v35 = sub_10000F78C(v33, v34, &v52);
      v47 = v29;
      v36 = v35;

      *(v32 + 4) = v36;
      *(v32 + 12) = 2085;
      sub_100043C30(&qword_100089F70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = *(v10 + 8);
      v40(v13, v9);
      v41 = sub_10000F78C(v37, v39, &v52);

      *(v32 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v48, "[%{public}s] Received authorization %{sensitive}s", v32, 0x16u);
      swift_arrayDestroy();

      v42 = v40;
    }

    else
    {

      v42 = *(v10 + 8);
      v42(v13, v9);
    }

    v43 = [objc_allocWithZone(BSMutableSettings) init];
    URL.absoluteString.getter();
    v44 = String._bridgeToObjectiveC()();

    [v43 setObject:v44 forSetting:2];

    v45 = [objc_opt_self() responseWithInfo:v43];
    sub_100042FB4(v45);

    v42(v15, v9);
  }
}

void sub_100042DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void sub_100042ED0(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_100042FB4(uint64_t a1)
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000105E8(v3, qword_10008C4C0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446210;
    v9 = OAuthAuthorizationContext.logKey.getter();
    v11 = sub_10000F78C(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Completing web authentication request", v7, 0xCu);
    sub_10001059C(v8);
  }

  v12 = OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction;
  v13 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction];
  if (v13)
  {
    v14 = v13;
    if ([v14 canSendResponse])
    {
      [v14 sendResponse:a1];
    }
  }

  v15 = [objc_opt_self() clearColor];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v15;
  v29 = sub_100043AF0;
  v30 = v17;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10005F9E8;
  v28 = &unk_10007F7E0;
  v18 = _Block_copy(&v25);
  v19 = v4;
  v20 = v15;

  [v16 animateWithDuration:v18 animations:0.3];
  _Block_release(v18);

  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v29 = sub_100043B48;
  v30 = v21;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10005F9E8;
  v28 = &unk_10007F830;
  v22 = _Block_copy(&v25);
  v23 = v19;

  [v23 dismissViewControllerAnimated:1 completion:v22];
  _Block_release(v22);
  v24 = *&v4[v12];
  *&v4[v12] = 0;
}

uint64_t sub_10004330C(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction;
  v3 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction);
  if (v3)
  {
    v4 = *(v2 + 8);

    v3(v5);
    sub_10001369C(v3, v4);
  }
}

id sub_100043464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OAuthAuthorizationViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for OAuthAuthorizationViewController(uint64_t a1)
{
  result = qword_100089F00;
  if (!qword_100089F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100043580(uint64_t a1)
{
  result = type metadata accessor for OAuthAuthorizationContext();
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

uint64_t sub_1000436F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100043B58(v8);
}

id sub_100043834(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction;
  *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction] = 0;
  v6 = [a1 actions];
  if (v6)
  {
    sub_10001596C();
    sub_100043C30(&qword_100089370, sub_10001596C, &protocol conformance descriptor for NSObject);
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_10005FA2C(v7);
  }

  v8 = *&v2[v5];
  *&v2[v5] = v6;

  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_sheetContext;
  v10 = type metadata accessor for OAuthAuthorizationContext();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v2[v9], a2, v10);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for OAuthAuthorizationViewController(0);
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  (*(v11 + 8))(a2, v10);
  return v12;
}

void sub_1000439BC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = [v3 _rootSheetPresentationController];

    if (!v4)
    {
LABEL_11:
      __break(1u);
      return;
    }

    [v4 _setShouldScaleDownBehindDescendantSheets:0];
  }

  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 window];

  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100043AB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043AF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100043B10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043B58(uint64_t a1)
{
  v2 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100043C9C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality:v4];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() interfaceWithIdentifier:v5];

  v7 = [objc_opt_self() protocolForProtocol:&OBJC_PROTOCOL____TtP14MarketplaceKit35AppDistributionLaunchAngelInterface_];
  [v6 setServer:v7];

  [v6 setClientMessagingExpectation:1];
  [a1 setInterface:v6];

  [a1 setInterfaceTarget:*(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel26LaunchAngelServiceDelegate_service)];
  v9[4] = sub_100043E68;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100043F50;
  v9[3] = &unk_10007F970;
  v8 = _Block_copy(v9);
  [a1 setInvalidationHandler:v8];
  _Block_release(v8);
}

void sub_100043E68()
{
  if (qword_100088450 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000105E8(v0, qword_10008C508);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Connection invalidated", v2, 2u);
  }
}

void sub_100043F50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000440B0(void *a1)
{
  v2 = v1;
  if (qword_100088450 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000105E8(v4, qword_10008C508);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28[0] = v9;
    *v8 = 136315138;
    v10 = [v5 remoteToken];
    v11 = [v10 bundleID];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE700000000000000;
      v12 = 0x6E776F6E6B6E75;
    }

    v15 = sub_10000F78C(v12, v14, v28);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received connection from %s", v8, 0xCu);
    sub_10001059C(v9);
  }

  v16 = [v5 remoteProcess];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 hasEntitlement:v17];

  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1000444E4;
    *(v20 + 24) = v19;
    v28[4] = sub_100015DD4;
    v28[5] = v20;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 1107296256;
    v28[2] = sub_100015D04;
    v28[3] = &unk_10007F948;
    v21 = _Block_copy(v28);
    v22 = v2;

    [v5 configureConnection:v21];
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v5 activate];
    }
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Process not entitled, failing", v27, 2u);
    }

    return [v5 invalidate];
  }

  return result;
}

uint64_t sub_1000444AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000444FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004453C()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Running confirmation sheet task", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  v11 = [objc_opt_self() identityOfCurrentProcess];
  *(v0 + 88) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    *(v0 + 96) = [v13 initWithSceneProvidingProcess:v14 configurationIdentifier:v15];

    return _swift_task_switch(sub_100044868, 0, 0);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = *(v19 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey);
      *(v20 + 4) = v22;
      *v21 = v22;
      v23 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] No identity", v20, 0xCu);
      sub_100011C14(v21, &qword_100088FD0, &qword_1000673F0);
    }

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_100044868()
{
  v1 = v0[12];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_10002D514;
  v3 = swift_continuation_init();
  sub_100044918(v3, v2, v1);

  return _swift_continuation_await(v0 + 2);
}

void sub_100044918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v29 = sub_100045CE8;
  v30 = v8;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100043F50;
  v28 = &unk_10007F9E8;
  v9 = _Block_copy(&aBlock);
  v10 = objc_opt_self();

  v11 = [v10 responderWithHandler:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v11];
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066310;
  *(inited + 32) = v12;
  v14 = v12;
  sub_10004DA58(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10001596C();
  sub_100045D08(&qword_100089370, sub_10001596C, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v6 setActions:isa];

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for ConfirmationSheetContext();
  sub_100045D08(&unk_10008A130, &type metadata accessor for ConfirmationSheetContext, &protocol conformance descriptor for ConfirmationSheetContext);
  v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v18 = v17;

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_100065650;
  aBlock = 0x44747865746E6F63;
  v26 = 0xEB00000000617461;
  AnyHashable.init<A>(_:)();
  *(v19 + 96) = &type metadata for Data;
  *(v19 + 72) = v16;
  *(v19 + 80) = v18;
  sub_100015A00(v16, v18);
  sub_100059988(v19);
  swift_setDeallocating();
  sub_100011C14(v19 + 32, &qword_100089010, &qword_1000663A0);
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setUserInfo:v20];

  v21 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v6];
  v22 = *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle);
  *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle) = v21;
  v23 = v21;

  [v23 registerObserver:a2];
  v24 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v23 activateWithContext:v24];

  sub_100015A54(v16, v18);
}

void sub_100044F00(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 info];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 objectForSetting:1];

      if (v9)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33 = v31;
      v34 = v32;
      if (*(&v32 + 1))
      {
        if (swift_dynamicCast())
        {
          v10 = v31;
          if (qword_100088438 != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          sub_1000105E8(v11, qword_10008C4C0);
          v12 = v6;
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *&v33 = v17;
            *v15 = 138412546;
            v18 = *&v12[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
            *(v15 + 4) = v18;
            *v16 = v18;
            *(v15 + 12) = 2080;
            if (v31)
            {
              v19 = 0x656D7269666E6F63;
            }

            else
            {
              v19 = 0x64656C65636E6163;
            }

            if (v31)
            {
              v20 = 0xE900000000000064;
            }

            else
            {
              v20 = 0xE800000000000000;
            }

            v21 = v18;
            v22 = sub_10000F78C(v19, v20, &v33);

            *(v15 + 14) = v22;
            _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Confirmation sheet %s", v15, 0x16u);
            sub_100011C14(v16, &qword_100088FD0, &qword_1000673F0);

            sub_10001059C(v17);
          }

LABEL_26:
          **(*(a3 + 64) + 40) = v10;
          swift_continuation_resume();

          return;
        }

LABEL_21:
        if (qword_100088438 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000105E8(v23, qword_10008C4C0);
        v24 = v6;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = *&v24[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
          *(v27 + 4) = v29;
          *v28 = v29;
          v30 = v29;
          _os_log_impl(&_mh_execute_header, v25, v26, "[%@] No response provided, defaulting to cancel.", v27, 0xCu);
          sub_100011C14(v28, &qword_100088FD0, &qword_1000673F0);
        }

        v10 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    sub_100011C14(&v33, &qword_100089020, &qword_1000663B0);
    goto LABEL_21;
  }
}

uint64_t type metadata accessor for ConfirmationSheetTask(uint64_t a1)
{
  result = qword_10008A120;
  if (!qword_10008A120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045434(uint64_t a1)
{
  result = type metadata accessor for ConfirmationSheetContext();
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

void sub_10004553C()
{
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle);
  if (v2)
  {
    [v2 unregisterObserver:v0];
    v2 = *(v0 + v1);
    if (v2)
    {
      [v2 invalidate];
      v2 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
}

void sub_100045674()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%@] Remote alert did activate", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }
}

void sub_1000457CC()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Remote alert did deactivate", v5, 0xCu);
    sub_100011C14(v6, &qword_100088FD0, &qword_1000673F0);
  }

  sub_10004553C();
}

void sub_10004591C(uint64_t a1)
{
  sub_10004553C();
  if (a1)
  {
    swift_errorRetain();
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000105E8(v3, qword_10008C4C0);
    swift_errorRetain();
    v4 = v1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = v9;
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000F78C(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[%@] Remote alert did invalidate with error: %{public}s", v6, 0x16u);
      sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v8);

      return;
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "[%@] Remote alert did invalidate", v17, 0xCu);
      sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);
    }
  }
}

uint64_t sub_100045C78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045CB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100045D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext();
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2);
  v8 = *(v2 + *(a2 + 20));
  v9 = objc_allocWithZone(type metadata accessor for MiniProductPageView(0));
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = sub_100046A60(v6, v8, v9, ObjectType);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_100045EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100047458(&unk_10008A2D0, &unk_100067508);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100045F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100047458(&unk_10008A2D0, &unk_100067508);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100045FB0(uint64_t a1)
{
  sub_100047458(&unk_10008A2D0, &unk_100067508);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100045FF4()
{
  swift_getObjectType();
  sub_1000047BC(&qword_10008A228, &qword_100067488);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100065650;
  *(v1 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v1 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v2 = UIView.registerForTraitChanges<A>(_:handler:)();

  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration) = v2;

  return swift_unknownObjectRelease();
}

void sub_1000462E4(uint64_t a1)
{
  sub_1000463AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000463AC(uint64_t a1)
{
  if (!qword_10008A1B8)
  {
    type metadata accessor for InstallSheetContext();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10008A1B8);
    }
  }
}

uint64_t sub_100046404(uint64_t a1)
{
  v2 = sub_1000047BC(&unk_100089360, &qword_100066520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10004646C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_1000464D4(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper];
  v5 = String._bridgeToObjectiveC()();
  if (*&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID + 8])
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  if (*&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID + 8])
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 lockupWithItemID:v5 versionID:v6 distributorID:v7 isForAppStore:a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] delegate:a1];

  v9 = objc_allocWithZone(UIColor);
  v38 = sub_1000618D0;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10004646C;
  v37 = &unk_10007FA38;
  v10 = _Block_copy(&aBlock);
  v11 = [v9 initWithDynamicProvider:v10];
  _Block_release(v10);

  [v8 setBackgroundColor:v11];

  [a2 addSubview:v8];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [a2 leadingAnchor];
  v13 = [v8 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-16.0];

  [v14 setActive:1];
  v15 = [a2 trailingAnchor];
  v16 = [v8 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:16.0];

  [v17 setActive:1];
  v18 = [a2 topAnchor];
  v19 = [v8 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-16.0];

  [v20 setActive:1];
  v21 = [a2 bottomAnchor];
  v22 = [v8 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:16.0];

  [v23 setActive:1];
  v24 = [a2 layer];
  [v24 setCornerRadius:20.0];

  v25 = [a2 layer];
  v26 = objc_allocWithZone(UIColor);
  v38 = sub_1000618F4;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10004646C;
  v37 = &unk_10007FA60;
  v27 = _Block_copy(&aBlock);
  v28 = [v26 initWithDynamicProvider:v27];
  _Block_release(v27);

  v29 = [v28 CGColor];

  [v25 setBorderColor:v29];
  v30 = [a2 layer];
  [v30 setBorderWidth:1.0];

  v31 = objc_allocWithZone(UIColor);
  v38 = sub_1000618D0;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10004646C;
  v37 = &unk_10007FA88;
  v32 = _Block_copy(&aBlock);
  v33 = [v31 initWithDynamicProvider:v32];
  _Block_release(v32);

  [a2 setBackgroundColor:v33];
}

char *sub_100046A60(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v53 = a2;
  v54 = a4;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstallSheetContext.Source();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  *&a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration] = 0;
  v15 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_context;
  v16 = type metadata accessor for InstallSheetContext();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&a3[v15], a1, v16);
  v18 = *(v17 + 56);
  v51 = v16;
  v18(&a3[v15], 0, 1, v16);
  v19 = InstallSheetContext.itemID.getter();
  v20 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID];
  *v20 = v19;
  v20[1] = v21;
  v22 = InstallSheetContext.versionID.getter();
  v23 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID];
  *v23 = v22;
  v23[1] = v24;
  v25 = InstallSheetContext.logKey.getter();
  v26 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_logKey];
  *v26 = v25;
  v26[1] = v27;
  InstallSheetContext.source.getter();
  LOBYTE(v15) = InstallSheetContext.Source.isAppStore.getter();
  v47 = *(v9 + 8);
  v47(v14, v8);
  a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] = v15 & 1;
  v28 = objc_allocWithZone(AppStoreComponentsWrapper);

  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 initWithLogKey:v29];

  *&a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper] = v30;
  InstallSheetContext.source.getter();
  v31 = (*(v9 + 88))(v12, v8);
  if (v31 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    (*(v9 + 96))(v12, v8);
    v32 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  }

  else
  {
    if (v31 == enum case for InstallSheetContext.Source.distributor(_:))
    {
      (*(v9 + 96))(v12, v8);
      v34 = *(v12 + 2);
      v35 = *(v12 + 3);

      v36 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
      *v36 = v34;
      v36[1] = v35;
      goto LABEL_9;
    }

    if (v31 == enum case for InstallSheetContext.Source.distributorWithContext(_:))
    {
      (*(v9 + 96))(v12, v8);
      v38 = v48;
      v37 = v49;
      v39 = v50;
      (*(v49 + 32))(v48, v12, v50);
      v40 = InstallSheetContext.Source.DistributorContext.id.getter();
      v42 = v41;
      (*(v37 + 8))(v38, v39);
      v43 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
      *v43 = v40;
      v43[1] = v42;
      goto LABEL_9;
    }

    if (v31 == enum case for InstallSheetContext.Source.web(_:))
    {
      v47(v12, v8);
      goto LABEL_4;
    }

    if (v31 != enum case for InstallSheetContext.Source.webWithContext(_:))
    {
      if (v31 != enum case for InstallSheetContext.Source.appStore(_:))
      {
        v46 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
        *v46 = 0;
        v46[1] = 0;
        v47(v12, v8);
        goto LABEL_9;
      }

      goto LABEL_4;
    }

    (*(v9 + 96))(v12, v8);
    v32 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  }

  (*(*(v32 - 8) + 8))(v12, v32);
LABEL_4:
  v33 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
  *v33 = 0;
  v33[1] = 0;
LABEL_9:
  v55.receiver = a3;
  v55.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v55, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000464D4(v53, v44);
  sub_100045FF4();

  (*(v17 + 8))(a1, v51);
  return v44;
}

uint64_t sub_100046FC0(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 layer];
  v3 = objc_allocWithZone(UIColor);
  v8[4] = sub_1000618F4;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10004646C;
  v8[3] = &unk_10007FA10;
  v4 = _Block_copy(v8);
  v5 = [v3 initWithDynamicProvider:v4];
  _Block_release(v4);

  v6 = [v5 CGColor];

  [v2 setBorderColor:v6];
  [a1 setNeedsDisplay];
}

uint64_t sub_10004715C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100047188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InstallSheetContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100047258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InstallSheetContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100047330(uint64_t a1)
{
  result = type metadata accessor for InstallSheetContext();
  if (v2 <= 0x3F)
  {
    result = sub_1000473B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000473B4()
{
  result = qword_10008A298;
  if (!qword_10008A298)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10008A298);
  }

  return result;
}

uint64_t sub_100047458(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MiniProductPageViewWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000474B4()
{
  v1[37] = v0;
  v2 = type metadata accessor for BagLanguageSource();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v3 = type metadata accessor for Bag();
  v1[41] = v3;
  v1[42] = *(v3 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  type metadata accessor for JetPackPath();
  v1[45] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringsBundle();
  v1[46] = v4;
  v1[47] = *(v4 - 8);
  v1[48] = swift_task_alloc();
  v5 = type metadata accessor for InMemoryJetPackResourceBundle();
  v1[49] = v5;
  v1[50] = *(v5 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v6 = type metadata accessor for JetPackSigningPolicy();
  v1[53] = v6;
  v1[54] = *(v6 - 8);
  v1[55] = swift_task_alloc();
  v7 = type metadata accessor for InMemoryJetPackLoader();
  v1[56] = v7;
  v1[57] = *(v7 - 8);
  v1[58] = swift_task_alloc();
  v8 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  v1[59] = v8;
  v1[60] = *(v8 - 8);
  v1[61] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v1[62] = v9;
  v1[63] = *(v9 - 8);
  v1[64] = swift_task_alloc();
  v10 = type metadata accessor for URLJetPackAssetRequest();
  v1[65] = v10;
  v1[66] = *(v10 - 8);
  v1[67] = swift_task_alloc();
  v11 = type metadata accessor for JetPackAsset();
  v1[68] = v11;
  v1[69] = *(v11 - 8);
  v1[70] = swift_task_alloc();
  v12 = type metadata accessor for URLJetPackAssetFetcher();
  v1[71] = v12;
  v1[72] = *(v12 - 8);
  v1[73] = swift_task_alloc();
  type metadata accessor for JetPackAssetSession.Configuration();
  v1[74] = swift_task_alloc();
  sub_1000047BC(&qword_10008A420, &qword_100067650);
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v1[77] = v13;
  v1[78] = *(v13 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();

  return _swift_task_switch(sub_100047A28, v0, 0);
}

uint64_t sub_100047A28()
{
  v44 = v0;
  v1 = v0[37];
  if (!*(v1 + 112))
  {
    v2 = v0[78];
    v3 = v0[77];
    v4 = v0[76];
    v5 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_lastFailedLoadAttempt;
    v0[81] = OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_lastFailedLoadAttempt;
    swift_beginAccess();
    sub_10004A62C(v1 + v5, v4);
    if ((*(v2 + 48))(v4, 1, v3) == 1)
    {
      sub_10004A69C(v0[76]);
LABEL_5:
      if (qword_100088440 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      v0[82] = sub_1000105E8(v13, qword_10008C4D8);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v43[0] = v17;
        *v16 = 136315138;
        sub_10004A774(&qword_100089F70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = sub_10000F78C(v18, v19, v43);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "Loading localization resource bundle from %s", v16, 0xCu);
        sub_10001059C(v17);
      }

      v21 = type metadata accessor for JetPackAssetDiskCache();
      v22 = JetPackAssetDiskCache.__allocating_init()();
      v0[83] = v22;
      v26 = v0[63];
      v25 = v0[64];
      v27 = v0[61];
      v41 = v0[62];
      v28 = v0[60];
      v42 = v0[59];
      v29 = v0[37];
      v43[3] = v21;
      v43[4] = &protocol witness table for JetPackAssetDiskCache;
      v43[0] = v22;

      JetPackAssetSession.Configuration.init(cache:)();
      type metadata accessor for JetPackAssetSession();
      swift_allocObject();
      v0[84] = JetPackAssetSession.init(configuration:)();
      v30 = *(v29 + 120);
      v0[85] = v30;
      v31 = objc_opt_self();
      v32 = objc_opt_self();
      swift_unknownObjectRetain();
      v33 = [v32 currentProcess];
      v34 = [v31 ams_configurationWithProcessInfo:v33 bag:v30];

      URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:)();
      (*(v26 + 16))(v25, v29 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_url, v41);
      (*(v28 + 104))(v27, enum case for JetPackAssetRequestSourcePolicy.standard(_:), v42);
      URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
      v35 = swift_task_alloc();
      v0[86] = v35;
      v36 = sub_10004A774(&qword_10008A428, &type metadata accessor for URLJetPackAssetFetcher, &protocol conformance descriptor for URLJetPackAssetFetcher);
      *v35 = v0;
      v35[1] = sub_10004820C;
      v37 = v0[73];
      v38 = v0[71];
      v39 = v0[70];
      v40 = v0[67];

      return JetPackAssetSession.jetPack<A>(for:fetcher:)(v39, v40, v37, v38, v36);
    }

    v6 = v0[80];
    v7 = v0[79];
    v8 = v0[78];
    v9 = v0[77];
    (*(v8 + 32))(v6, v0[76], v9);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v11 = v10;
    v12 = *(v8 + 8);
    v12(v7, v9);
    v12(v6, v9);
    if (v11 >= 3600.0)
    {
      goto LABEL_5;
    }
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10004820C()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  v3 = v2[67];
  v4 = v2[66];
  v5 = v2[65];
  v6 = v2[37];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1000490EC;
  }

  else
  {
    v7 = sub_100048388;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100048388()
{
  (*(v0[54] + 104))(v0[55], enum case for JetPackSigningPolicy.required(_:), v0[53]);
  v0[5] = type metadata accessor for JetPackManagedKeyProvider();
  v0[6] = &protocol witness table for JetPackManagedKeyProvider;
  sub_1000104C4(v0 + 2);
  JetPackManagedKeyProvider.init()();
  InMemoryJetPackLoader.init(signingPolicy:keyProvider:)();
  JetPackAsset.streamSource.getter();
  v1 = swift_task_alloc();
  v0[88] = v1;
  *v1 = v0;
  v1[1] = sub_10004849C;
  v2 = v0[52];

  return InMemoryJetPackLoader.bundle(from:)(v2, v0 + 7);
}

uint64_t sub_10004849C()
{
  v2 = *v1;
  v2[89] = v0;

  v3 = v2[37];
  sub_10001059C(v2 + 7);
  if (v0)
  {
    v4 = sub_100049468;
  }

  else
  {
    v4 = sub_1000485D4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000485D4()
{
  v66 = v0;
  v1 = *(v0[50] + 16);
  v1(v0[51], v0[52], v0[49]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[49];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v65[0] = v60;
    *v8 = 136315138;
    v9 = JetPackResourceBundle.version.getter();
    v62 = v1;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 48;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE100000000000000;
    }

    v13 = v7;
    v14 = *(v6 + 8);
    v14(v5, v13);
    v15 = v11;
    v1 = v62;
    v16 = sub_10000F78C(v15, v12, v65);

    *(v8 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loaded resource bundle version %s", v8, 0xCu);
    sub_10001059C(v60);
  }

  else
  {

    v17 = v7;
    v14 = *(v6 + 8);
    v14(v5, v17);
  }

  v0[90] = v14;
  v18 = v0[89];
  v19 = v0[52];
  v20 = v0[49];
  v0[15] = v20;
  v0[16] = &protocol witness table for InMemoryJetPackResourceBundle;
  v21 = sub_1000104C4(v0 + 12);
  v1(v21, v19, v20);
  JetPackPath.init(_:)();
  LocalizedStringsBundle.init(resourceBundle:indexPath:)();
  if (v18)
  {
    v22 = v0[72];
    v61 = v0[71];
    v63 = v0[73];
    v23 = v0[69];
    v58 = v0[68];
    v59 = v0[70];
    v24 = v0[57];
    v56 = v0[56];
    v57 = v0[58];
    v25 = v0[52];
    v26 = v0[49];

    v14(v25, v26);
    (*(v24 + 8))(v57, v56);
    (*(v23 + 8))(v59, v58);
    (*(v22 + 8))(v63, v61);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v65[0] = v30;
      *v29 = 136446210;
      swift_getErrorValue();
      v31 = *(v0[34] - 8);
      swift_task_alloc();
      (*(v31 + 16))();
      v32 = String.init<A>(describing:)();
      v34 = v33;

      v35 = sub_10000F78C(v32, v34, v65);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to load localization jetpack: %{public}s", v29, 0xCu);
      sub_10001059C(v30);
    }

    v36 = v0[81];
    v37 = v0[78];
    v38 = v0[77];
    v39 = v0[75];
    v40 = v0[37];
    Date.init()();

    (*(v37 + 56))(v39, 0, 1, v38);
    swift_beginAccess();
    sub_10004A704(v39, v40 + v36);
    swift_endAccess();

    v41 = v0[1];

    return v41();
  }

  else
  {
    v43 = v0[47];
    v64 = v0[48];
    v44 = v0[46];
    v46 = v0[43];
    v45 = v0[44];
    v48 = v0[41];
    v47 = v0[42];
    v50 = v0[39];
    v49 = v0[40];
    v51 = v0[38];
    swift_unknownObjectRetain();
    Bag.init(from:)();
    (*(v47 + 16))(v46, v45, v48);
    BagLanguageSource.init(bag:)();
    type metadata accessor for AppleServicesLocalizer();
    v0[20] = v44;
    v0[21] = &protocol witness table for LocalizedStringsBundle;
    v52 = sub_1000104C4(v0 + 17);
    (*(v43 + 16))(v52, v64, v44);
    v0[25] = v51;
    v0[26] = &protocol witness table for BagLanguageSource;
    v53 = sub_1000104C4(v0 + 22);
    (*(v50 + 16))(v53, v49, v51);
    type metadata accessor for BaseObjectGraph();
    v54 = BaseObjectGraph.__allocating_init(name:_:)();
    v0[91] = v54;
    v55 = swift_task_alloc();
    v0[92] = v55;
    *v55 = v0;
    v55[1] = sub_100048CFC;

    return static AppleServicesLocalizer.fetch(contentsOf:for:asPartOf:)(v0 + 17, v0 + 22, v54);
  }
}

uint64_t sub_100048CFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 744) = v1;

  if (v1)
  {
    v5 = v4[37];

    v6 = sub_10004982C;
  }

  else
  {
    v5 = v4[37];

    v4[94] = a1;
    sub_10001059C(v4 + 22);
    sub_10001059C(v4 + 17);
    v6 = sub_100048E48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100048E48()
{
  v25 = v0[94];
  v19 = v0[90];
  v24 = v0[73];
  v22 = v0[72];
  v23 = v0[71];
  v1 = v0[69];
  v20 = v0[68];
  v21 = v0[70];
  v2 = v0[57];
  v16 = v0[56];
  v17 = v0[58];
  v14 = v0[49];
  v15 = v0[52];
  v3 = v0[47];
  v13 = v0[48];
  v12 = v0[46];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  v18 = v0[37];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v13, v12);
  v19(v15, v14);
  (*(v2 + 8))(v17, v16);
  (*(v1 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  *(v18 + 112) = v25;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000490EC()
{
  v21 = v0;
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = *(v0[34] - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = String.init<A>(describing:)();
    v11 = v10;

    v12 = sub_10000F78C(v9, v11, &v20);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to load localization jetpack: %{public}s", v6, 0xCu);
    sub_10001059C(v7);
  }

  v13 = v0[81];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[75];
  v17 = v0[37];
  Date.init()();

  (*(v14 + 56))(v16, 0, 1, v15);
  swift_beginAccess();
  sub_10004A704(v16, v17 + v13);
  swift_endAccess();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100049468()
{
  v27 = v0;
  v25 = v0[73];
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[57];
  v7 = v0[58];
  v8 = v0[56];

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v25, v2);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = *(v0[34] - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = String.init<A>(describing:)();
    v16 = v15;

    v17 = sub_10000F78C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load localization jetpack: %{public}s", v11, 0xCu);
    sub_10001059C(v12);
  }

  v18 = v0[81];
  v19 = v0[78];
  v20 = v0[77];
  v21 = v0[75];
  v22 = v0[37];
  Date.init()();

  (*(v19 + 56))(v21, 0, 1, v20);
  swift_beginAccess();
  sub_10004A704(v21, v22 + v18);
  swift_endAccess();

  v23 = v0[1];

  return v23();
}

uint64_t sub_10004982C()
{
  v39 = v0;
  v32 = v0[90];
  v37 = v0[73];
  v35 = v0[72];
  v36 = v0[71];
  v1 = v0[69];
  v33 = v0[68];
  v34 = v0[70];
  v2 = v0[57];
  v30 = v0[56];
  v31 = v0[58];
  v28 = v0[49];
  v29 = v0[52];
  v3 = v0[47];
  v27 = v0[48];
  v26 = v0[46];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v27, v26);
  v32(v29, v28);
  (*(v2 + 8))(v31, v30);
  (*(v1 + 8))(v34, v33);
  (*(v35 + 8))(v37, v36);
  sub_10001059C(v0 + 22);
  sub_10001059C(v0 + 17);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = *(v0[34] - 8);
    swift_task_alloc();
    (*(v14 + 16))();
    v15 = String.init<A>(describing:)();
    v17 = v16;

    v18 = sub_10000F78C(v15, v17, &v38);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to load localization jetpack: %{public}s", v12, 0xCu);
    sub_10001059C(v13);
  }

  v19 = v0[81];
  v20 = v0[78];
  v21 = v0[77];
  v22 = v0[75];
  v23 = v0[37];
  Date.init()();

  (*(v20 + 56))(v22, 0, 1, v21);
  swift_beginAccess();
  sub_10004A704(v22, v23 + v19);
  swift_endAccess();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100049C9C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for LocalizerLookupStrategy();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100049D5C, v1, 0);
}

uint64_t sub_100049D5C()
{
  v0[14] = sub_100003A90();
  v0[15] = v1;
  v0[21] = v1;
  v0[22] = sub_100003EFC();
  v0[23] = sub_100003524();
  v0[24] = v2;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100049E0C;

  return sub_1000474B4();
}

uint64_t sub_100049E0C()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100049F1C, v1, 0);
}

void sub_100049F1C()
{
  if (!*(v0[17] + 112))
  {
    v10 = v0[22];

    if (v10)
    {
      v11 = v0[22];
      v14 = *(v11 + 64);
      v13 = v11 + 64;
      v12 = v14;
      v6 = v0[24];
      v15 = -1;
      v16 = -1 << *(v0[22] + 32);
      if (-v16 < 64)
      {
        v15 = ~(-1 << -v16);
      }

      v17 = v15 & v12;
      v18 = (63 - v16) >> 6;
      v57 = v0[22];

      v19 = 0;
      v58 = v0[23];
      while (v17)
      {
        v20 = v6;
        v21 = v19;
LABEL_13:
        v22 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v23 = (v21 << 10) | (16 * v22);
        v24 = (*(v57 + 48) + v23);
        v25 = *v24;
        v26 = v24[1];
        v27 = (*(v57 + 56) + v23);
        v28 = *v27;
        v29 = v27[1];
        v0[2] = v58;
        v0[3] = v20;

        v30._countAndFlagsBits = v25;
        v30._object = v26;
        String.append(_:)(v30);

        v31._countAndFlagsBits = 16448;
        v31._object = 0xE200000000000000;
        String.append(_:)(v31);
        v0[4] = 16448;
        v0[5] = 0xE200000000000000;
        v0[6] = v28;
        v0[7] = v29;
        sub_10000F728();
        v58 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v6 = v32;
      }

      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v18)
        {

          v4 = v58;
          goto LABEL_31;
        }

        v17 = *(v13 + 8 * v21);
        ++v19;
        if (v17)
        {
          v20 = v6;
          v19 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_30:
    v4 = v0[23];
    v6 = v0[24];
    goto LABEL_31;
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  (*(v1 + 104))(v2, enum case for LocalizerLookupStrategy.default(_:), v3);

  v4 = AppleServicesLocalizer.string(forKey:with:using:)();
  v6 = v5;

  (*(v1 + 8))(v2, v3);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = AppleServicesLocalizer.isLocalizedString(_:)(v7);
  v9 = v0[22];
  if (!v8)
  {

    if (v9)
    {
      v33 = v0[22];
      v36 = *(v33 + 64);
      v35 = v33 + 64;
      v34 = v36;
      v6 = v0[24];
      v37 = -1;
      v38 = -1 << *(v0[22] + 32);
      if (-v38 < 64)
      {
        v37 = ~(-1 << -v38);
      }

      v39 = v37 & v34;
      v40 = (63 - v38) >> 6;
      v59 = v0[22];

      v41 = 0;
      v4 = v0[23];
      while (v39)
      {
        v42 = v4;
        v43 = v6;
        v44 = v41;
LABEL_24:
        v45 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v46 = (v44 << 10) | (16 * v45);
        v47 = (*(v59 + 48) + v46);
        v48 = *v47;
        v49 = v47[1];
        v50 = (*(v59 + 56) + v46);
        v51 = *v50;
        v52 = v50[1];
        v0[8] = v42;
        v0[9] = v43;

        v53._countAndFlagsBits = v48;
        v53._object = v49;
        String.append(_:)(v53);

        v54._countAndFlagsBits = 16448;
        v54._object = 0xE200000000000000;
        String.append(_:)(v54);
        v0[10] = 16448;
        v0[11] = 0xE200000000000000;
        v0[12] = v51;
        v0[13] = v52;
        sub_10000F728();
        v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v6 = v55;
      }

      while (1)
      {
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v44 >= v40)
        {

          goto LABEL_31;
        }

        v39 = *(v35 + 8 * v44);
        ++v41;
        if (v39)
        {
          v42 = v4;
          v43 = v6;
          v41 = v44;
          goto LABEL_24;
        }
      }

LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_30;
  }

LABEL_31:

  v56 = v0[1];

  v56(v4, v6);
}

uint64_t sub_10004A3F0()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10004A69C(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_lastFailedLoadAttempt);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LocalizationJetPack(uint64_t a1)
{
  result = qword_10008A318;
  if (!qword_10008A318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A4DC(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10004A5C8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004A5C8(uint64_t a1)
{
  if (!qword_10008A328)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10008A328);
    }
  }
}

uint64_t sub_10004A62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_10008A420, &qword_100067650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A69C(uint64_t a1)
{
  v2 = sub_1000047BC(&qword_10008A420, &qword_100067650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A704(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_10008A420, &qword_100067650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10004A7BC(uint64_t a1, void *a2, void *a3)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1000047BC(&qword_10008A430, &qword_100067668);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_1000047BC(&qword_10008A430, &qword_100067668);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004A86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_1000047BC(&qword_10008A430, &qword_100067668);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10004A93C, 0, 0);
}

uint64_t sub_10004A93C()
{
  v1 = SBSCreateOpenApplicationService();
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[23];
    v4 = v0[24];
    v5 = v0[22];
    v9 = v0[21];
    v8 = String._bridgeToObjectiveC()();
    v0[26] = v8;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10004AB28;
    swift_continuation_init();
    v0[17] = v5;
    v6 = sub_1000104C4(v0 + 14);
    sub_10004C8EC();
    sub_1000047BC(&qword_100088B60, &qword_100065F80);
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v6, v4, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10004A7BC;
    v0[13] = &unk_10007FAB0;
    [v2 openApplication:v8 withOptions:v9 completion:?];
    (*(v3 + 8))(v6, v5);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10004AB28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_10004ACB4;
  }

  else
  {
    v2 = sub_10004AC38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004AC38()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004ACB4(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[25];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_10004AD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 264) = a5;
  *(v5 + 160) = a3;
  *(v5 + 168) = a4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  v6 = type metadata accessor for MarketplaceDisplayOption();
  *(v5 + 176) = v6;
  *(v5 + 184) = *(v6 - 8);
  *(v5 + 192) = swift_task_alloc();
  sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  *(v5 + 200) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v5 + 208) = v7;
  *(v5 + 216) = *(v7 - 8);
  *(v5 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10004AE98, 0, 0);
}

id sub_10004AE98()
{
  v1 = *(v0 + 144) == 0xD000000000000012 && 0x800000010006A6C0 == *(v0 + 152);
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = *(v0 + 200);
    v5 = *(v0 + 160);
    _StringGuts.grow(_:)(36);

    *(v0 + 136) = v5;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x383D746D3FLL;
    v7._object = 0xE500000000000000;
    String.append(_:)(v7);
    URL.init(string:)();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_100011C14(*(v0 + 200), &qword_1000893C0, &unk_1000663F0);
    }

    else
    {
      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v13 = *(v0 + 208);
      URL._bridgeToObjectiveC()(v9);
      v15 = v14;
      [v10 openSensitiveURL:v14 withOptions:0];

      (*(v12 + 8))(v11, v13);
    }

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    v19 = *(v0 + 176);
    v20 = *(v0 + 264);
    *v18 = *(v0 + 160);
    *(v18 + 16) = v20 & 1;
    (*(v17 + 104))(v18, enum case for MarketplaceDisplayOption.productPage(_:), v19);
    type metadata accessor for MarketplaceSceneConnectionOptionDefinition();
    sub_10004C950();
    v21 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)();
    *(v0 + 232) = v21;
    v22 = v21;
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065650;
    *(v0 + 120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 128) = v24;
    AnyHashable.init<A>(_:)();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100066310;
    *(v25 + 32) = v22;
    *(inited + 96) = sub_1000047BC(&qword_10008A448, &qword_100067678);
    *(inited + 72) = v25;
    v26 = v22;
    sub_100059988(inited);
    swift_setDeallocating();
    sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = [objc_opt_self() optionsWithDictionary:isa];
    *(v0 + 240) = v28;

    v29 = swift_task_alloc();
    *(v0 + 248) = v29;
    *v29 = v0;
    v29[1] = sub_10004B360;
    v31 = *(v0 + 144);
    v30 = *(v0 + 152);

    return sub_10004A86C(v31, v30, v28);
  }
}

uint64_t sub_10004B360()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10004B4F8;
  }

  else
  {
    v2 = sub_10004B474;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004B474()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004B4F8()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004B584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for MarketplaceDisplayOption();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for CharacterSet();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_10004B738, 0, 0);
}

id sub_10004B738()
{
  v1 = v0[19] == 0xD000000000000012 && 0x800000010006A6C0 == v0[20];
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v3 = v0[31];
    v2 = v0[32];
    v4 = v0[30];
    v5 = v0[22];
    v0[17] = v0[21];
    v0[18] = v5;
    static CharacterSet.urlQueryAllowed.getter();
    sub_10000F728();
    v6 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
    v8 = v7;
    (*(v3 + 8))(v2, v4);
    if (v8)
    {
      v9 = v0[27];
      v10 = v0[28];
      v11 = v0[26];
      _StringGuts.grow(_:)(34);

      v12._countAndFlagsBits = v6;
      v12._object = v8;
      String.append(_:)(v12);
      URL.init(string:)();

      if ((*(v10 + 48))(v11, 1, v9) == 1)
      {
        v13 = v0[26];

        sub_100011C14(v13, &qword_1000893C0, &unk_1000663F0);
      }

      else
      {
        (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v20 = result;
        v22 = v0[28];
        v21 = v0[29];
        v23 = v0[27];

        URL._bridgeToObjectiveC()(v24);
        v26 = v25;
        [v20 openSensitiveURL:v25 withOptions:0];

        (*(v22 + 8))(v21, v23);
      }
    }

    v27 = v0[1];

    return v27();
  }

  else
  {
    v14 = v0[24];
    v15 = v0[25];
    v17 = v0[22];
    v16 = v0[23];
    *v15 = v0[21];
    v15[1] = v17;
    (*(v14 + 104))(v15, enum case for MarketplaceDisplayOption.searchResults(_:), v16);
    type metadata accessor for MarketplaceSceneConnectionOptionDefinition();
    sub_10004C950();

    v18 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)();
    v0[33] = v18;
    v28 = v18;
    (*(v0[24] + 8))(v0[25], v0[23]);
    sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065650;
    v0[15] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[16] = v30;
    AnyHashable.init<A>(_:)();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100066310;
    *(v31 + 32) = v28;
    *(inited + 96) = sub_1000047BC(&qword_10008A448, &qword_100067678);
    *(inited + 72) = v31;
    v32 = v28;
    sub_100059988(inited);
    swift_setDeallocating();
    sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = [objc_opt_self() optionsWithDictionary:isa];
    v0[34] = v34;

    v35 = swift_task_alloc();
    v0[35] = v35;
    *v35 = v0;
    v35[1] = sub_10004BC48;
    v37 = v0[19];
    v36 = v0[20];

    return sub_10004A86C(v37, v36, v34);
  }
}

uint64_t sub_10004BC48()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_10004BDF4;
  }

  else
  {
    v2 = sub_10004BD5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004BD5C()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004BDF4()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for MarketplaceDisplayOption();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10004BF50, 0, 0);
}

uint64_t sub_10004BF50()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  *v2 = v0[19];
  v2[1] = v4;
  (*(v1 + 104))(v2, enum case for MarketplaceDisplayOption.authentication(_:), v3);
  type metadata accessor for MarketplaceSceneConnectionOptionDefinition();
  sub_10004C950();

  v5 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)();
  v0[24] = v5;
  v6 = v5;
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065650;
  v0[15] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[16] = v8;
  AnyHashable.init<A>(_:)();
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100066310;
  *(v9 + 32) = v6;
  *(inited + 96) = sub_1000047BC(&qword_10008A448, &qword_100067678);
  *(inited + 72) = v9;
  v10 = v6;
  sub_100059988(inited);
  swift_setDeallocating();
  sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() optionsWithDictionary:isa];
  v0[25] = v12;

  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = sub_10004C224;
  v15 = v0[17];
  v14 = v0[18];

  return sub_10004A86C(v15, v14, v12);
}

uint64_t sub_10004C224()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10004C3AC;
  }

  else
  {
    v2 = sub_10004C338;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004C338()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004C3AC()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004C41C(uint64_t a1)
{
  *(v1 + 24) = a1;

  return _swift_task_switch(sub_10004C4AC, 0, 0);
}

uint64_t sub_10004C4AC()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(LSApplicationRecord);
  v0[2] = 0;
  v3 = [v2 initWithStoreItemIdentifier:v1 error:v0 + 2];
  v0[4] = v3;
  v4 = v0[2];
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = [v5 bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v0[5] = v11;
      v12 = swift_task_alloc();
      v0[6] = v12;
      *v12 = v0;
      v12[1] = sub_10004C684;

      return sub_10004A86C(v9, v11, 0);
    }

    v15 = v0[1];
  }

  else
  {
    v14 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_10004C684()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10004C858;
  }

  else
  {
    v2 = sub_10004C7C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004C7C4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004C858()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10004C8EC()
{
  result = qword_10008A438;
  if (!qword_10008A438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008A438);
  }

  return result;
}

unint64_t sub_10004C950()
{
  result = qword_10008A440;
  if (!qword_10008A440)
  {
    type metadata accessor for MarketplaceSceneConnectionOptionDefinition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A440);
  }

  return result;
}

uint64_t sub_10004C9C8()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Running license resolution task", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  v11 = [objc_opt_self() identityOfCurrentProcess];
  v0[3] = v11;
  v12 = v0[2];
  if (v11)
  {
    v13 = v11;
    v14 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v15 = v13;
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 initWithSceneProvidingProcess:v15 configurationIdentifier:v16];
    v0[4] = v17;

    v18 = swift_task_alloc();
    v0[5] = v18;
    *(v18 + 16) = v12;
    *(v18 + 24) = v17;
    v19 = swift_task_alloc();
    v0[6] = v19;
    *v19 = v0;
    v19[1] = sub_10004CD74;

    return withCheckedContinuation<A>(isolation:function:_:)(v19, 0, 0, 0x29286E7572, 0xE500000000000000, sub_10004E748, v18, &type metadata for () + 8);
  }

  else
  {
    v20 = v12;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[2];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = *(v23 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey);
      *(v24 + 4) = v26;
      *v25 = v26;
      v27 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] No identity", v24, 0xCu);
      sub_100011C14(v25, &qword_100088FD0, &qword_1000673F0);
    }

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_10004CD74()
{

  return _swift_task_switch(sub_10004CE8C, 0, 0);
}

uint64_t sub_10004CE8C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10004CEF0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000047BC(&qword_100089A80, &unk_100066A90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30[-v8];
  v10 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v7 + 32))(v12 + v11, v9, v6);
  v35 = sub_10004E820;
  v36 = v12;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100043F50;
  v34 = &unk_10007FB00;
  v13 = _Block_copy(&aBlock);
  v14 = objc_opt_self();
  v15 = a2;
  v16 = [v14 responderWithHandler:v13];
  _Block_release(v13);

  v17 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v16];
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066310;
  *(inited + 32) = v17;
  v19 = v17;
  sub_10004DA58(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10001596C();
  sub_10004E8B8(&qword_100089370, sub_10001596C, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v10 setActions:isa];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for LicenseResolutionContext();
  sub_10004E8B8(&qword_10008A4A8, &type metadata accessor for LicenseResolutionContext, &protocol conformance descriptor for LicenseResolutionContext);
  v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v23 = v22;

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_100065650;
  aBlock = 0x44747865746E6F63;
  v32 = 0xEB00000000617461;
  AnyHashable.init<A>(_:)();
  *(v24 + 96) = &type metadata for Data;
  *(v24 + 72) = v21;
  *(v24 + 80) = v23;
  sub_100015A00(v21, v23);
  sub_100059988(v24);
  swift_setDeallocating();
  sub_100011C14(v24 + 32, &qword_100089010, &qword_1000663A0);
  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setUserInfo:v25];

  v26 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v10];
  v27 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle];
  *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle] = v26;
  v28 = v26;

  [v28 registerObserver:v15];
  v29 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v28 activateWithContext:v29];

  sub_100015A54(v21, v23);
}

uint64_t sub_10004D564(uint64_t a1, void *a2)
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000105E8(v3, qword_10008C4C0);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Dismissing license resolution sheet", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  sub_1000047BC(&qword_100089A80, &unk_100066A90);
  return CheckedContinuation.resume(returning:)();
}

id sub_10004D704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LicenseResolutionTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LicenseResolutionTask(uint64_t a1)
{
  result = qword_10008A490;
  if (!qword_10008A490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004D81C(uint64_t a1)
{
  result = type metadata accessor for LicenseResolutionContext();
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

void sub_10004D924()
{
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle);
  if (v2)
  {
    [v2 unregisterObserver:v0];
    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_10004DA58(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000047BC(&qword_10008A4C0, &qword_100067700);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10001596C();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10001596C();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_10004DD24(uint64_t a1)
{
  v2 = type metadata accessor for MetricsFieldInclusionRequest();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000047BC(&qword_10008A4D0, &unk_100067710);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10004E8B8(&qword_10008A4D8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10004E8B8(&unk_10008A4E0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10004E044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000047BC(&qword_10008A4C8, &qword_100067708);
    v2 = static _SetStorage.allocate(capacity:)();
    v3 = v2 + 56;
    while (1)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v5 = result & ~(-1 << *(v2 + 32));
      v6 = v5 >> 6;
      v7 = *(v3 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if ((v8 & v7) == 0)
      {
        *(v3 + 8 * v6) = v8 | v7;
        v9 = *(v2 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v11;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10004E144()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%@] Remote alert did activate", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }
}

void sub_10004E29C()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Remote alert did deactivate", v5, 0xCu);
    sub_100011C14(v6, &qword_100088FD0, &qword_1000673F0);
  }

  sub_10004D924();
}

void sub_10004E3EC(uint64_t a1)
{
  sub_10004D924();
  if (a1)
  {
    swift_errorRetain();
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000105E8(v3, qword_10008C4C0);
    swift_errorRetain();
    v4 = v1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = v9;
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000F78C(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[%@] Remote alert did invalidate with error: %{public}s", v6, 0x16u);
      sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v8);

      return;
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "[%@] Remote alert did invalidate", v17, 0xCu);
      sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);
    }
  }
}

uint64_t sub_10004E750()
{
  v1 = sub_1000047BC(&qword_100089A80, &unk_100066A90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004E820(uint64_t a1)
{
  sub_1000047BC(&qword_100089A80, &unk_100066A90);
  v3 = *(v1 + 16);

  return sub_10004D564(a1, v3);
}

uint64_t sub_10004E8A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004E8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004E914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InstallSheetContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004E9D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InstallSheetContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LocalizedInstallSheetContent(uint64_t a1)
{
  result = qword_10008A548;
  if (!qword_10008A548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004EAC4(uint64_t a1)
{
  result = type metadata accessor for InstallSheetContext();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004EB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[206] = a3;
  v3[205] = a2;
  v3[204] = a1;
  v4 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v3[207] = v4;
  v3[208] = *(v4 - 8);
  v3[209] = swift_task_alloc();
  v5 = type metadata accessor for InstallSheetContext.InstallType();
  v3[210] = v5;
  v3[211] = *(v5 - 8);
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  v3[214] = swift_task_alloc();
  v3[215] = swift_task_alloc();
  v6 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v3[216] = v6;
  v3[217] = *(v6 - 8);
  v3[218] = swift_task_alloc();
  v7 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  v3[219] = v7;
  v3[220] = *(v7 - 8);
  v3[221] = swift_task_alloc();
  v8 = type metadata accessor for InstallSheetContext.Source();
  v3[222] = v8;
  v3[223] = *(v8 - 8);
  v3[224] = swift_task_alloc();

  return _swift_task_switch(sub_10004EDC0, 0, 0);
}

uint64_t sub_10004EDC0()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v3 = *(type metadata accessor for LocalizedInstallSheetContent(0) + 72);
  v4 = type metadata accessor for InstallSheetContext();
  *(v0 + 1800) = v4;
  v5 = *(v4 - 8);
  *(v0 + 1808) = v5;
  (*(v5 + 16))(v2 + v3, v1, v4);
  *(v0 + 16) = 4;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 12;
  v6 = swift_task_alloc();
  *(v0 + 1816) = v6;
  *v6 = v0;
  v6[1] = sub_10004EEE0;

  return sub_100049C9C(v0 + 16);
}

uint64_t sub_10004EEE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1824) = a1;
  *(v3 + 1832) = a2;

  return _swift_task_switch(sub_10004EFE4, 0, 0);
}

uint64_t sub_10004EFE4()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1776);
  String.append(_:)(*(v0 + 1824));
  v4._countAndFlagsBits = 10333;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = InstallSheetContext.learnMoreURL.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  *(v0 + 1840) = 91;
  *(v0 + 1848) = 0xE100000000000000;
  InstallSheetContext.source.getter();
  v7 = (*(v2 + 88))(v1, v3);
  if (v7 != enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    if (v7 == enum case for InstallSheetContext.Source.distributor(_:))
    {
      v16 = *(v0 + 1792);
      v17 = *(v0 + 1784);
      v18 = *(v0 + 1776);

      (*(v17 + 96))(v16, v18);
      v19 = *v16;
      *(v0 + 2032) = *v16;
      v20 = v16[1];
      *(v0 + 2040) = v20;

      *(v0 + 736) = v19;
      *(v0 + 744) = v20;
      *(v0 + 752) = 0u;
      *(v0 + 768) = 1;

      v21 = swift_task_alloc();
      *(v0 + 2048) = v21;
      *v21 = v0;
      v21[1] = sub_100050478;
      v15 = v0 + 736;
      goto LABEL_7;
    }

    if (v7 == enum case for InstallSheetContext.Source.distributorWithContext(_:))
    {
      v22 = *(v0 + 1792);
      v23 = *(v0 + 1784);
      v24 = *(v0 + 1776);
      v25 = *(v0 + 1744);
      v26 = *(v0 + 1736);
      v27 = *(v0 + 1728);

      (*(v23 + 96))(v22, v24);
      (*(v26 + 32))(v25, v22, v27);
      v28 = InstallSheetContext.Source.DistributorContext.name.getter();
      *(v0 + 2120) = v29;
      *(v0 + 576) = v28;
      *(v0 + 584) = v29;
      *(v0 + 592) = 0u;
      *(v0 + 608) = 1;
      v30 = swift_task_alloc();
      *(v0 + 2128) = v30;
      *v30 = v0;
      v30[1] = sub_100050A3C;
      v15 = v0 + 576;
      goto LABEL_7;
    }

    if (v7 == enum case for InstallSheetContext.Source.web(_:))
    {
      v32 = *(v0 + 1792);
      v33 = *(v0 + 1720);
      v34 = *(v0 + 1688);
      v35 = *(v0 + 1680);
      (*(*(v0 + 1784) + 96))(v32, *(v0 + 1776));
      v37 = *v32;
      v36 = v32[1];
      *(v0 + 2248) = v36;
      *(v0 + 2256) = v32[2];
      *(v0 + 2264) = v32[3];
      InstallSheetContext.type.getter();
      v38 = (*(v34 + 88))(v33, v35);
      if (v38 == enum case for InstallSheetContext.InstallType.app(_:))
      {

        *(v0 + 456) = v37;
        *(v0 + 464) = v36;
        *(v0 + 472) = 0;
        *(v0 + 480) = 0;
        *(v0 + 488) = 5;
        v39 = swift_task_alloc();
        *(v0 + 2272) = v39;
        *v39 = v0;
        v39[1] = sub_100051248;
        v15 = v0 + 456;
        goto LABEL_7;
      }

      if (v38 == enum case for InstallSheetContext.InstallType.marketplace(_:))
      {

        *(v0 + 336) = v37;
        *(v0 + 344) = v36;
        *(v0 + 352) = 0;
        *(v0 + 360) = 0;
        *(v0 + 368) = 3;
        v53 = swift_task_alloc();
        *(v0 + 2328) = v53;
        *v53 = v0;
        v53[1] = sub_100051810;
        v15 = v0 + 336;
        goto LABEL_7;
      }
    }

    else
    {
      if (v7 == enum case for InstallSheetContext.Source.webWithContext(_:))
      {
        v40 = *(v0 + 1792);
        v41 = *(v0 + 1712);
        v42 = *(v0 + 1688);
        v43 = *(v0 + 1680);
        v44 = *(v0 + 1672);
        v45 = *(v0 + 1664);
        v46 = *(v0 + 1656);
        (*(*(v0 + 1784) + 96))(v40, *(v0 + 1776));
        (*(v45 + 32))(v44, v40, v46);
        InstallSheetContext.type.getter();
        v47 = (*(v42 + 88))(v41, v43);
        if (v47 == enum case for InstallSheetContext.InstallType.app(_:))
        {

          v48 = InstallSheetContext.Source.WebInstallContext.domain.getter();
          *(v0 + 2384) = v49;
          *(v0 + 176) = v48;
          v50 = v0 + 176;
          *(v0 + 192) = 0;
          *(v0 + 200) = 0;
          *(v0 + 184) = v49;
          *(v0 + 208) = 5;
          v51 = swift_task_alloc();
          *(v0 + 2392) = v51;
          *v51 = v0;
          v52 = sub_100051DCC;
        }

        else
        {
          if (v47 != enum case for InstallSheetContext.InstallType.marketplace(_:))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v55 = InstallSheetContext.Source.WebInstallContext.domain.getter();
          *(v0 + 2456) = v56;
          *(v0 + 56) = v55;
          v50 = v0 + 56;
          *(v0 + 72) = 0;
          *(v0 + 80) = 0;
          *(v0 + 64) = v56;
          *(v0 + 88) = 3;
          v51 = swift_task_alloc();
          *(v0 + 2464) = v51;
          *v51 = v0;
          v52 = sub_100052390;
        }

        v51[1] = v52;
        v15 = v50;
        goto LABEL_7;
      }

      if (v7 == enum case for InstallSheetContext.Source.appStore(_:))
      {

        *(v0 + 1016) = 6;
        *(v0 + 1024) = 0;
        *(v0 + 1040) = 0;
        *(v0 + 1032) = 0;
        *(v0 + 1048) = 12;
        v54 = swift_task_alloc();
        *(v0 + 1856) = v54;
        *v54 = v0;
        v54[1] = sub_10004F770;
        v15 = v0 + 1016;
        goto LABEL_7;
      }
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v8 = *(v0 + 1792);
  v9 = *(v0 + 1784);
  v10 = *(v0 + 1776);
  v11 = *(v0 + 1768);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);

  (*(v9 + 96))(v8, v10);
  (*(v12 + 32))(v11, v8, v13);
  *(v0 + 856) = 6;
  *(v0 + 864) = 0;
  *(v0 + 880) = 0;
  *(v0 + 872) = 0;
  *(v0 + 888) = 12;
  v14 = swift_task_alloc();
  *(v0 + 1928) = v14;
  *v14 = v0;
  v14[1] = sub_10004FCF4;
  v15 = v0 + 856;
LABEL_7:

  return sub_100049C9C(v15);
}

uint64_t sub_10004F770(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1864) = a1;
  *(v3 + 1872) = a2;

  return _swift_task_switch(sub_10004F874, 0, 0);
}

uint64_t sub_10004F874()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1632);
  *v4 = *(v0 + 1864);
  v4[1] = v1;
  *(v0 + 1056) = v3;
  *(v0 + 1064) = v2;
  *(v0 + 1072) = 0u;
  *(v0 + 1088) = 0;
  v5 = swift_task_alloc();
  *(v0 + 1880) = v5;
  *v5 = v0;
  v5[1] = sub_10004F938;

  return sub_100049C9C(v0 + 1056);
}

uint64_t sub_10004F938(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1888) = a1;
  *(v3 + 1896) = a2;

  return _swift_task_switch(sub_10004FA5C, 0, 0);
}

uint64_t sub_10004FA5C()
{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 1888);
  *(v2 + 24) = v1;
  *(v0 + 1096) = 7;
  *(v0 + 1104) = 0;
  *(v0 + 1120) = 0;
  *(v0 + 1112) = 0;
  *(v0 + 1128) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1904) = v3;
  *v3 = v0;
  v3[1] = sub_10004FB20;

  return sub_100049C9C(v0 + 1096);
}

uint64_t sub_10004FB20(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1912) = a1;
  *(v3 + 1920) = a2;

  return _swift_task_switch(sub_10004FC24, 0, 0);
}

uint64_t sub_10004FC24()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 1912);
  *(v2 + 40) = v1;
  v3 = *(v0 + 1632);
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v4 = swift_task_alloc();
  *(v0 + 2560) = v4;
  *v4 = v0;
  v4[1] = sub_100052B5C;

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_10004FCF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1936) = a1;
  *(v3 + 1944) = a2;

  return _swift_task_switch(sub_10004FDF8, 0, 0);
}

uint64_t sub_10004FDF8()
{
  v1 = *(v0 + 1944);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1632);
  *v4 = *(v0 + 1936);
  v4[1] = v1;
  *(v0 + 896) = v3;
  *(v0 + 904) = v2;
  *(v0 + 912) = 0u;
  *(v0 + 928) = 0;
  v5 = swift_task_alloc();
  *(v0 + 1952) = v5;
  *v5 = v0;
  v5[1] = sub_10004FEBC;

  return sub_100049C9C(v0 + 896);
}

uint64_t sub_10004FEBC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1960) = a1;
  *(v3 + 1968) = a2;

  return _swift_task_switch(sub_10004FFE0, 0, 0);
}

uint64_t sub_10004FFE0()
{
  v1 = *(v0 + 1968);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 1960);
  *(v2 + 24) = v1;
  *(v0 + 936) = 7;
  *(v0 + 944) = 0;
  *(v0 + 960) = 0;
  *(v0 + 952) = 0;
  *(v0 + 968) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1976) = v3;
  *v3 = v0;
  v3[1] = sub_1000500A4;

  return sub_100049C9C(v0 + 936);
}

uint64_t sub_1000500A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1984) = a1;
  *(v3 + 1992) = a2;

  return _swift_task_switch(sub_1000501A8, 0, 0);
}

uint64_t sub_1000501A8()
{
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 1984);
  *(v2 + 40) = v1;
  v3 = InstallSheetContext.Source.AppStoreSheetContext.appName.getter();
  *(v0 + 2000) = v4;
  *(v0 + 976) = v3;
  *(v0 + 984) = v4;
  *(v0 + 992) = 0u;
  *(v0 + 1008) = 10;
  v5 = swift_task_alloc();
  *(v0 + 2008) = v5;
  *v5 = v0;
  v5[1] = sub_100050274;

  return sub_100049C9C(v0 + 976);
}

uint64_t sub_100050274(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2016) = a1;
  *(v3 + 2024) = a2;

  return _swift_task_switch(sub_100050398, 0, 0);
}

uint64_t sub_100050398()
{
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v1 = *(v0 + 2024);
  v2 = *(v0 + 1632);
  *(v2 + 192) = *(v0 + 2016);
  *(v2 + 200) = v1;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2560) = v3;
  *v3 = v0;
  v3[1] = sub_100052B5C;

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100050478(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2056) = a1;
  *(v3 + 2064) = a2;

  return _swift_task_switch(sub_10005059C, 0, 0);
}

uint64_t sub_10005059C()
{
  v1 = *(v0 + 2064);
  v2 = *(v0 + 2032);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2056);
  v5[1] = v1;
  *(v0 + 776) = v2;
  *(v0 + 792) = v4;
  *(v0 + 800) = v3;
  *(v0 + 808) = 2;
  v6 = swift_task_alloc();
  *(v0 + 2072) = v6;
  *v6 = v0;
  v6[1] = sub_100050664;

  return sub_100049C9C(v0 + 776);
}

uint64_t sub_100050664(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2080) = a1;
  *(v3 + 2088) = a2;

  return _swift_task_switch(sub_1000507A4, 0, 0);
}

uint64_t sub_1000507A4()
{
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2080);
  *(v2 + 24) = v1;
  *(v0 + 816) = 7;
  *(v0 + 824) = 0;
  *(v0 + 840) = 0;
  *(v0 + 832) = 0;
  *(v0 + 848) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2096) = v3;
  *v3 = v0;
  v3[1] = sub_100050868;

  return sub_100049C9C(v0 + 816);
}

uint64_t sub_100050868(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2104) = a1;
  *(v3 + 2112) = a2;

  return _swift_task_switch(sub_10005096C, 0, 0);
}

uint64_t sub_10005096C()
{
  v1 = *(v0 + 2112);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 2104);
  *(v2 + 40) = v1;
  v3 = *(v0 + 1632);
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v4 = swift_task_alloc();
  *(v0 + 2560) = v4;
  *v4 = v0;
  v4[1] = sub_100052B5C;

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100050A3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2136) = a1;
  *(v3 + 2144) = a2;

  return _swift_task_switch(sub_100050B60, 0, 0);
}

uint64_t sub_100050B60(uint64_t a1)
{
  v2 = *(v1 + 2144);
  v3 = *(v1 + 1848);
  v4 = *(v1 + 1840);
  v5 = *(v1 + 1632);
  *v5 = *(v1 + 2136);
  v5[1] = v2;
  v6 = InstallSheetContext.Source.DistributorContext.name.getter();
  *(v1 + 2152) = v7;
  *(v1 + 616) = v6;
  *(v1 + 624) = v7;
  *(v1 + 632) = v4;
  *(v1 + 640) = v3;
  *(v1 + 648) = 2;
  v8 = swift_task_alloc();
  *(v1 + 2160) = v8;
  *v8 = v1;
  v8[1] = sub_100050C3C;

  return sub_100049C9C(v1 + 616);
}

uint64_t sub_100050C3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2168) = a1;
  *(v3 + 2176) = a2;

  return _swift_task_switch(sub_100050D7C, 0, 0);
}

uint64_t sub_100050D7C()
{
  v1 = *(v0 + 2176);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2168);
  *(v2 + 24) = v1;
  *(v0 + 656) = 7;
  *(v0 + 664) = 0;
  *(v0 + 680) = 0;
  *(v0 + 672) = 0;
  *(v0 + 688) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2184) = v3;
  *v3 = v0;
  v3[1] = sub_100050E40;

  return sub_100049C9C(v0 + 656);
}

uint64_t sub_100050E40(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2192) = a1;
  *(v3 + 2200) = a2;

  return _swift_task_switch(sub_100050F44, 0, 0);
}

uint64_t sub_100050F44()
{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 2192);
  *(v2 + 40) = v1;
  v3 = InstallSheetContext.Source.DistributorContext.appName.getter();
  v5 = v4;
  *(v0 + 2208) = v4;
  v6 = InstallSheetContext.Source.DistributorContext.name.getter();
  *(v0 + 2216) = v7;
  *(v0 + 696) = v3;
  *(v0 + 704) = v5;
  *(v0 + 712) = v6;
  *(v0 + 720) = v7;
  *(v0 + 728) = 8;
  v8 = swift_task_alloc();
  *(v0 + 2224) = v8;
  *v8 = v0;
  v8[1] = sub_100051028;

  return sub_100049C9C(v0 + 696);
}

uint64_t sub_100051028(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2232) = a1;
  *(v3 + 2240) = a2;

  return _swift_task_switch(sub_100051168, 0, 0);
}

uint64_t sub_100051168()
{
  (*(*(v0 + 1736) + 8))(*(v0 + 1744), *(v0 + 1728));
  v1 = *(v0 + 2240);
  v2 = *(v0 + 1632);
  *(v2 + 192) = *(v0 + 2232);
  *(v2 + 200) = v1;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2560) = v3;
  *v3 = v0;
  v3[1] = sub_100052B5C;

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100051248(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2280) = a1;
  *(v3 + 2288) = a2;

  return _swift_task_switch(sub_10005136C, 0, 0);
}

uint64_t sub_10005136C()
{
  v1 = *(v0 + 2288);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2280);
  v5[1] = v1;
  *(v0 + 496) = v2;
  *(v0 + 512) = v4;
  *(v0 + 520) = v3;
  *(v0 + 528) = 6;
  v6 = swift_task_alloc();
  *(v0 + 2296) = v6;
  *v6 = v0;
  v6[1] = sub_100051434;

  return sub_100049C9C(v0 + 496);
}

uint64_t sub_100051434(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2304) = a1;
  *(v3 + 2312) = a2;

  return _swift_task_switch(sub_100051574, 0, 0);
}

uint64_t sub_100051574()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2304);
  *(v2 + 24) = v1;
  *(v0 + 536) = 7;
  *(v0 + 544) = 0;
  *(v0 + 560) = 0;
  *(v0 + 552) = 0;
  *(v0 + 568) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2320) = v3;
  *v3 = v0;
  v3[1] = sub_100051638;

  return sub_100049C9C(v0 + 536);
}

uint64_t sub_100051638(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[192] = v2;
  v3[193] = a1;
  v3[194] = a2;

  return _swift_task_switch(sub_100051740, 0, 0);
}

uint64_t sub_100051740()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 1544);
  *(v2 + 40) = v1;
  v3 = *(v0 + 1632);
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v4 = swift_task_alloc();
  *(v0 + 2560) = v4;
  *v4 = v0;
  v4[1] = sub_100052B5C;

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100051810(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2336) = a1;
  *(v3 + 2344) = a2;

  return _swift_task_switch(sub_100051934, 0, 0);
}

uint64_t sub_100051934()
{
  v1 = *(v0 + 2344);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2336);
  v5[1] = v1;
  *(v0 + 376) = v2;
  *(v0 + 392) = v4;
  *(v0 + 400) = v3;
  *(v0 + 408) = 4;
  v6 = swift_task_alloc();
  *(v0 + 2352) = v6;
  *v6 = v0;
  v6[1] = sub_1000519F8;

  return sub_100049C9C(v0 + 376);
}

uint64_t sub_1000519F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2360) = a1;
  *(v3 + 2368) = a2;

  return _swift_task_switch(sub_100051B38, 0, 0);
}

uint64_t sub_100051B38()
{
  v1 = *(v0 + 2368);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2360);
  *(v2 + 24) = v1;
  *(v0 + 416) = 8;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2376) = v3;
  *v3 = v0;
  v3[1] = sub_100051BF4;

  return sub_100049C9C(v0 + 416);
}

uint64_t sub_100051BF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[195] = v2;
  v3[196] = a1;
  v3[197] = a2;

  return _swift_task_switch(sub_100051CFC, 0, 0);
}

uint64_t sub_100051CFC()
{
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 1568);
  *(v2 + 40) = v1;
  v3 = *(v0 + 1632);
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v4 = swift_task_alloc();
  *(v0 + 2560) = v4;
  *v4 = v0;
  v4[1] = sub_100052B5C;

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100051DCC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2400) = a1;
  *(v3 + 2408) = a2;

  return _swift_task_switch(sub_100051EF0, 0, 0);
}

uint64_t sub_100051EF0(uint64_t a1)
{
  v2 = *(v1 + 2408);
  v3 = *(v1 + 1848);
  v4 = *(v1 + 1840);
  v5 = *(v1 + 1632);
  *v5 = *(v1 + 2400);
  v5[1] = v2;
  v6 = InstallSheetContext.Source.WebInstallContext.developerName.getter();
  *(v1 + 2416) = v7;
  *(v1 + 216) = v6;
  *(v1 + 224) = v7;
  *(v1 + 232) = v4;
  *(v1 + 240) = v3;
  *(v1 + 248) = 6;
  v8 = swift_task_alloc();
  *(v1 + 2424) = v8;
  *v8 = v1;
  v8[1] = sub_100051FC8;

  return sub_100049C9C(v1 + 216);
}

uint64_t sub_100051FC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2432) = a1;
  *(v3 + 2440) = a2;

  return _swift_task_switch(sub_100052108, 0, 0);
}

uint64_t sub_100052108()
{
  v1 = *(v0 + 2440);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2432);
  *(v2 + 24) = v1;
  *(v0 + 256) = 7;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 288) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2448) = v3;
  *v3 = v0;
  v3[1] = sub_1000521C4;

  return sub_100049C9C(v0 + 256);
}

uint64_t sub_1000521C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[198] = v2;
  v3[199] = a1;
  v3[200] = a2;

  return _swift_task_switch(sub_1000522CC, 0, 0);
}

uint64_t sub_1000522CC(uint64_t a1)
{
  v2 = *(v1 + 1600);
  v3 = *(v1 + 1632);
  *(v3 + 32) = *(v1 + 1592);
  *(v3 + 40) = v2;
  v4 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  *(v1 + 2528) = v5;
  *(v1 + 296) = v4;
  *(v1 + 304) = v5;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 328) = 9;
  v6 = swift_task_alloc();
  *(v1 + 2536) = v6;
  *v6 = v1;
  v6[1] = sub_100052958;

  return sub_100049C9C(v1 + 296);
}

uint64_t sub_100052390(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2472) = a1;
  *(v3 + 2480) = a2;

  return _swift_task_switch(sub_1000524B4, 0, 0);
}

uint64_t sub_1000524B4(uint64_t a1)
{
  v2 = *(v1 + 2480);
  v3 = *(v1 + 1848);
  v4 = *(v1 + 1840);
  v5 = *(v1 + 1632);
  *v5 = *(v1 + 2472);
  v5[1] = v2;
  v6 = InstallSheetContext.Source.WebInstallContext.developerName.getter();
  *(v1 + 2488) = v7;
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  *(v1 + 112) = v4;
  *(v1 + 120) = v3;
  *(v1 + 128) = 4;
  v8 = swift_task_alloc();
  *(v1 + 2496) = v8;
  *v8 = v1;
  v8[1] = sub_10005258C;

  return sub_100049C9C(v1 + 96);
}

uint64_t sub_10005258C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2504) = a1;
  *(v3 + 2512) = a2;

  return _swift_task_switch(sub_1000526CC, 0, 0);
}

uint64_t sub_1000526CC()
{
  v1 = *(v0 + 2512);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2504);
  *(v2 + 24) = v1;
  *(v0 + 136) = 8;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 144) = 0;
  *(v0 + 168) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2520) = v3;
  *v3 = v0;
  v3[1] = sub_10005278C;

  return sub_100049C9C(v0 + 136);
}

uint64_t sub_10005278C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[201] = v2;
  v3[202] = a1;
  v3[203] = a2;

  return _swift_task_switch(sub_100052894, 0, 0);
}

uint64_t sub_100052894(uint64_t a1)
{
  v2 = *(v1 + 1624);
  v3 = *(v1 + 1632);
  *(v3 + 32) = *(v1 + 1616);
  *(v3 + 40) = v2;
  v4 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  *(v1 + 2528) = v5;
  *(v1 + 296) = v4;
  *(v1 + 304) = v5;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 328) = 9;
  v6 = swift_task_alloc();
  *(v1 + 2536) = v6;
  *v6 = v1;
  v6[1] = sub_100052958;

  return sub_100049C9C(v1 + 296);
}

uint64_t sub_100052958(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2544) = a1;
  *(v3 + 2552) = a2;

  return _swift_task_switch(sub_100052A7C, 0, 0);
}

uint64_t sub_100052A7C()
{
  (*(*(v0 + 1664) + 8))(*(v0 + 1672), *(v0 + 1656));
  v1 = *(v0 + 2552);
  v2 = *(v0 + 1632);
  *(v2 + 192) = *(v0 + 2544);
  *(v2 + 200) = v1;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2560) = v3;
  *v3 = v0;
  v3[1] = sub_100052B5C;

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100052B5C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2568) = a1;
  *(v3 + 2576) = a2;

  return _swift_task_switch(sub_100052C60, 0, 0);
}

uint64_t sub_100052C60()
{
  v1 = *(v0 + 2576);
  v2 = *(v0 + 1632);
  *(v2 + 48) = *(v0 + 2568);
  *(v2 + 56) = v1;
  *(v0 + 1176) = 10;
  *(v0 + 1184) = 0;
  *(v0 + 1200) = 0;
  *(v0 + 1192) = 0;
  *(v0 + 1208) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2584) = v3;
  *v3 = v0;
  v3[1] = sub_100052D24;

  return sub_100049C9C(v0 + 1176);
}

uint64_t sub_100052D24(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2592) = a1;
  *(v3 + 2600) = a2;

  return _swift_task_switch(sub_100052E28, 0, 0);
}

uint64_t sub_100052E28()
{
  v1 = *(v0 + 2600);
  v2 = *(v0 + 1632);
  *(v2 + 64) = *(v0 + 2592);
  *(v2 + 72) = v1;
  *(v0 + 1216) = 11;
  *(v0 + 1224) = 0;
  *(v0 + 1240) = 0;
  *(v0 + 1232) = 0;
  *(v0 + 1248) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2608) = v3;
  *v3 = v0;
  v3[1] = sub_100052EEC;

  return sub_100049C9C(v0 + 1216);
}

uint64_t sub_100052EEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2616) = a1;
  *(v3 + 2624) = a2;

  return _swift_task_switch(sub_100052FF0, 0, 0);
}

uint64_t sub_100052FF0()
{
  v1 = *(v0 + 2624);
  v2 = *(v0 + 1632);
  *(v2 + 80) = *(v0 + 2616);
  *(v2 + 88) = v1;
  *(v0 + 1256) = 2;
  *(v0 + 1264) = 0;
  *(v0 + 1280) = 0;
  *(v0 + 1272) = 0;
  *(v0 + 1288) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2632) = v3;
  *v3 = v0;
  v3[1] = sub_1000530B4;

  return sub_100049C9C(v0 + 1256);
}

uint64_t sub_1000530B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2640) = a1;
  *(v3 + 2648) = a2;

  return _swift_task_switch(sub_1000531B8, 0, 0);
}

uint64_t sub_1000531B8()
{
  v1 = *(v0 + 2648);
  v2 = *(v0 + 1632);
  *(v2 + 96) = *(v0 + 2640);
  *(v2 + 104) = v1;
  *(v0 + 1296) = 12;
  *(v0 + 1304) = 0;
  *(v0 + 1320) = 0;
  *(v0 + 1312) = 0;
  *(v0 + 1328) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2656) = v3;
  *v3 = v0;
  v3[1] = sub_100053278;

  return sub_100049C9C(v0 + 1296);
}

uint64_t sub_100053278(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2664) = a1;
  *(v3 + 2672) = a2;

  return _swift_task_switch(sub_10005337C, 0, 0);
}

uint64_t sub_10005337C(uint64_t a1)
{
  v2 = *(v1 + 2672);
  v3 = *(v1 + 1704);
  v4 = *(v1 + 1696);
  v5 = *(v1 + 1688);
  v6 = *(v1 + 1680);
  v7 = *(v1 + 1632);
  *(v7 + 112) = *(v1 + 2664);
  *(v7 + 120) = v2;
  InstallSheetContext.type.getter();
  *(v1 + 52) = enum case for InstallSheetContext.InstallType.marketplace(_:);
  v8 = *(v5 + 104);
  *(v1 + 2680) = v8;
  *(v1 + 2688) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v4);
  v9 = static InstallSheetContext.InstallType.== infix(_:_:)();
  *(v1 + 49) = v9 & 1;
  v10 = *(v5 + 8);
  *(v1 + 2696) = v10;
  *(v1 + 2704) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v9)
  {
    v11 = 14;
  }

  else
  {
    v11 = 13;
  }

  v10(v4, v6);
  v10(v3, v6);
  *(v1 + 1336) = v11;
  *(v1 + 1344) = 0;
  *(v1 + 1360) = 0;
  *(v1 + 1352) = 0;
  *(v1 + 1368) = 12;
  v12 = swift_task_alloc();
  *(v1 + 2712) = v12;
  *v12 = v1;
  v12[1] = sub_1000534FC;

  return sub_100049C9C(v1 + 1336);
}

uint64_t sub_1000534FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 49))
  {
    v4 = 14;
  }

  else
  {
    v4 = 13;
  }

  *(v3 + 2720) = a1;
  *(v3 + 2728) = a2;

  sub_100018FBC(v4, 0, 0, 0, 0xCu);

  return _swift_task_switch(sub_10005362C, 0, 0);
}

uint64_t sub_10005362C()
{
  v1 = *(v0 + 2728);
  v2 = *(v0 + 1632);
  *(v2 + 128) = *(v0 + 2720);
  *(v2 + 136) = v1;
  *(v0 + 1376) = 15;
  *(v0 + 1384) = 0;
  *(v0 + 1400) = 0;
  *(v0 + 1392) = 0;
  *(v0 + 1408) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2736) = v3;
  *v3 = v0;
  v3[1] = sub_1000536F0;

  return sub_100049C9C(v0 + 1376);
}

uint64_t sub_1000536F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2744) = a1;
  *(v3 + 2752) = a2;

  return _swift_task_switch(sub_1000537F4, 0, 0);
}

uint64_t sub_1000537F4(uint64_t a1)
{
  v2 = *(v1 + 2752);
  v3 = *(v1 + 2696);
  v4 = *(v1 + 2680);
  v5 = *(v1 + 52);
  v6 = *(v1 + 1704);
  v7 = *(v1 + 1696);
  v8 = *(v1 + 1680);
  v9 = *(v1 + 1632);
  *(v9 + 144) = *(v1 + 2744);
  *(v9 + 152) = v2;
  InstallSheetContext.type.getter();
  v4(v7, v5, v8);
  v10 = static InstallSheetContext.InstallType.== infix(_:_:)();
  *(v1 + 50) = v10 & 1;
  if (v10)
  {
    v11 = 17;
  }

  else
  {
    v11 = 16;
  }

  v3(v7, v8);
  v3(v6, v8);
  *(v1 + 1416) = v11;
  *(v1 + 1424) = 0;
  *(v1 + 1440) = 0;
  *(v1 + 1432) = 0;
  *(v1 + 1448) = 12;
  v12 = swift_task_alloc();
  *(v1 + 2760) = v12;
  *v12 = v1;
  v12[1] = sub_100053944;

  return sub_100049C9C(v1 + 1416);
}

uint64_t sub_100053944(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 50))
  {
    v4 = 17;
  }

  else
  {
    v4 = 16;
  }

  *(v3 + 2768) = a1;
  *(v3 + 2776) = a2;

  sub_100018FBC(v4, 0, 0, 0, 0xCu);

  return _swift_task_switch(sub_100053A74, 0, 0);
}

uint64_t sub_100053A74()
{
  v1 = *(v0 + 2776);
  v2 = *(v0 + 1632);
  *(v2 + 160) = *(v0 + 2768);
  *(v2 + 168) = v1;
  *(v0 + 1456) = 18;
  *(v0 + 1464) = 0;
  *(v0 + 1480) = 0;
  *(v0 + 1472) = 0;
  *(v0 + 1488) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2784) = v3;
  *v3 = v0;
  v3[1] = sub_100053B38;

  return sub_100049C9C(v0 + 1456);
}

uint64_t sub_100053B38(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2792) = a1;
  *(v3 + 2800) = a2;

  return _swift_task_switch(sub_100053C3C, 0, 0);
}

uint64_t sub_100053C3C()
{
  v1 = *(v0 + 2800);
  v2 = *(v0 + 1632);
  *(v2 + 176) = *(v0 + 2792);
  *(v2 + 184) = v1;
  *(v0 + 1496) = 5;
  *(v0 + 1504) = 0;
  *(v0 + 1520) = 0;
  *(v0 + 1512) = 0;
  *(v0 + 1528) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2808) = v3;
  *v3 = v0;
  v3[1] = sub_100053D00;

  return sub_100049C9C(v0 + 1496);
}

uint64_t sub_100053D00(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2816) = a1;
  *(v3 + 2824) = a2;

  return _swift_task_switch(sub_100053E04, 0, 0);
}

uint64_t sub_100053E04()
{
  v1 = v0[353];
  v2 = v0[352];
  v3 = v0[226];
  v4 = v0[225];
  v5 = v0[205];
  v6 = v0[204];

  (*(v3 + 8))(v5, v4);
  *(v6 + 208) = v2;
  *(v6 + 216) = v1;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100053F24()
{
  v0 = type metadata accessor for InstallSheetContext.Source();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalizedInstallSheetContent(0);
  InstallSheetContext.source.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
    (*(*(v5 - 8) + 8))(v3, v5);
    return 1;
  }

  if (v4 == enum case for InstallSheetContext.Source.distributor(_:))
  {
    goto LABEL_4;
  }

  if (v4 == enum case for InstallSheetContext.Source.distributorWithContext(_:))
  {
    (*(v1 + 96))(v3, v0);
    v7 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
    goto LABEL_7;
  }

  if (v4 != enum case for InstallSheetContext.Source.web(_:))
  {
    if (v4 != enum case for InstallSheetContext.Source.webWithContext(_:))
    {
      if (v4 == enum case for InstallSheetContext.Source.appStore(_:))
      {
        return 1;
      }

      goto LABEL_4;
    }

    (*(v1 + 96))(v3, v0);
    v7 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
LABEL_7:
    (*(*(v7 - 8) + 8))(v3, v7);
    return 0;
  }

LABEL_4:
  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_100054164@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InstallSheetContext.Source();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalizedInstallSheetContent(0);
  InstallSheetContext.source.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    InstallSheetContext.Source.AppStoreSheetContext.iconURL.getter();
    return (*(v8 + 8))(v10, v7);
  }

  v17 = v25;
  if (v15 == enum case for InstallSheetContext.Source.distributor(_:))
  {
    goto LABEL_5;
  }

  if (v15 != enum case for InstallSheetContext.Source.distributorWithContext(_:))
  {
    if (v15 != enum case for InstallSheetContext.Source.web(_:))
    {
      if (v15 == enum case for InstallSheetContext.Source.webWithContext(_:))
      {
        (*(v12 + 96))(v14, v11);
        v21 = v22;
        v20 = v23;
        (*(v22 + 32))(v3, v14, v23);
        InstallSheetContext.Source.WebInstallContext.iconURL.getter();
        return (*(v21 + 8))(v3, v20);
      }

      if (v15 != enum case for InstallSheetContext.Source.appStore(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_6:
      v18 = type metadata accessor for URL();
      return (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    }

LABEL_5:
    (*(v12 + 8))(v14, v11);
    goto LABEL_6;
  }

  (*(v12 + 96))(v14, v11);
  v19 = v24;
  (*(v24 + 32))(v6, v14, v4);
  InstallSheetContext.Source.DistributorContext.iconURL.getter();
  return (*(v19 + 8))(v6, v4);
}

uint64_t sub_100054600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10005595C(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000559CC(v10);
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

      sub_1000559CC(a3);

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

  sub_1000559CC(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10005486C()
{
  result = os_transaction_get_description();
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

uint64_t sub_10005489C()
{
  v2 = v0;
  v3 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_1000047BC(&qword_10008A6C8, &qword_1000677F0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - v12;
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = *(v2 + 16);
  swift_unknownObjectRetain();
  v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  timestamp = os_transaction_get_timestamp();
  if (v17 < timestamp)
  {
    __break(1u);
  }

  else
  {
    v1 = timestamp;
    v50 = v10;
    v53 = v5;
    v10 = objc_opt_self();
    v19 = [v10 nanoseconds];
    sub_100055810();
    Measurement.init(value:unit:)();
    if (qword_100088440 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_1000105E8(v20, qword_10008C4D8);
  (*(v7 + 16))(v13, v15, v6);
  swift_unknownObjectRetain();
  v21 = v13;
  v22 = v6;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v49 = v24;
  v25 = os_log_type_enabled(v23, v24);
  v51 = v1;
  v52 = v15;
  if (v25)
  {
    v47 = v23;
    v48 = v2;
    v26 = v21;
    v27 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54 = v46;
    *v27 = 33555202;
    *(v27 + 4) = v1;
    *(v27 + 6) = 2080;
    swift_unknownObjectRetain();
    if (os_transaction_get_description())
    {
      v28 = String.init(cString:)();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v32 = sub_10000F78C(v28, v30, &v54);

    *(v27 + 8) = v32;
    *(v27 + 16) = 2080;
    v33 = [v10 milliseconds];
    v34 = v50;
    Measurement<>.converted(to:)();

    v35 = Measurement<>.formatted()();
    v37 = v36;
    v31 = *(v7 + 8);
    v31(v34, v22);
    v31(v26, v22);
    v38 = sub_10000F78C(v35, v37, &v54);

    *(v27 + 18) = v38;
    v39 = v47;
    _os_log_impl(&_mh_execute_header, v47, v49, "[TXN%hx] 🐏 Ending transaction (%s) (%s)", v27, 0x1Au);
    swift_arrayDestroy();

    v2 = v48;
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v21, v22);
  }

  v40 = type metadata accessor for TaskPriority();
  v41 = v53;
  (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v43 = v51;
  v42[4] = v16;
  v42[5] = v43;
  swift_unknownObjectRetain();
  sub_100054600(0xD000000000000019, 0x800000010006A830, v41, &unk_100067800, v42);
  swift_unknownObjectRelease();

  v31(v52, v22);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100054DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100054E90, 0, 0);
}

uint64_t sub_100054E90()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100054F5C;

  return sub_100055358(0xB469471F80140000, 0, 0, 0, 1);
}

uint64_t sub_100054F5C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10005528C;
  }

  else
  {
    v5 = sub_1000550CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000550CC()
{
  v14 = v0;
  if (qword_100088440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4D8);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 33554946;
    *(v5 + 4) = v4;
    *(v5 + 6) = 2080;
    description = os_transaction_get_description();
    if (description)
    {
      description = String.init(cString:)();
      v9 = v8;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    v10 = sub_10000F78C(description, v9, &v13);

    *(v5 + 8) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TXN%hx] 🐏 Releasing transaction (%s)", v5, 0x10u);
    sub_10001059C(v6);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10005528C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000552F0()
{
  sub_10005489C();

  return swift_deallocClassInstance();
}

uint64_t sub_100055358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100055458, 0, 0);
}

uint64_t sub_100055458()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100055A34(&qword_10008A6D8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100055A34(&unk_10008A6E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000555E8;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000555E8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000557A4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000557A4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100055810()
{
  result = qword_10008A6D0;
  if (!qword_10008A6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008A6D0);
  }

  return result;
}

uint64_t sub_10005585C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005589C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001020C;

  return sub_100054DD0(a1, v4, v5, v7, v6);
}

uint64_t sub_10005595C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000559CC(uint64_t a1)
{
  v2 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100055A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100055AFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_1000295D4(v5, a2);
  sub_1000105E8(v5, a2);
  return Logger.init(subsystem:category:)();
}

id sub_100055B78(uint64_t a1)
{

  v1 = String._bridgeToObjectiveC()();

  return v1;
}

id sub_100055C40()
{
  ObjectType = swift_getObjectType();
  swift_stdlib_random();
  v7 = 5129543;
  v8 = 0xE300000000000000;
  v6 = 0;
  sub_100055D00();
  v2._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v2);

  v3 = &v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
  *v3 = 5129543;
  *(v3 + 1) = 0xE300000000000000;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

unint64_t sub_100055D00()
{
  result = qword_10008A720;
  if (!qword_10008A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A720);
  }

  return result;
}

uint64_t sub_100055D70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MetricsPipeline();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MetricsData.Configuration();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100055ED8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MetricsPipeline();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for MetricsData.Configuration();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for InstallConfirmationAppStoreMetrics(uint64_t a1)
{
  result = qword_10008A780;
  if (!qword_10008A780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100056074(uint64_t a1)
{
  type metadata accessor for MetricsPipeline();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsData.Configuration();
    if (v2 <= 0x3F)
    {
      type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
      if (v3 <= 0x3F)
      {
        sub_100056128();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100056128()
{
  if (!qword_10008A790)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10008A790);
    }
  }
}

uint64_t sub_10005618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a1;
  v86 = type metadata accessor for MetricsPipeline.Configuration();
  v81 = *(v86 - 8);
  v5 = __chkstk_darwin(v86);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for Bag();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  v11 = *(v83 + 24);
  v12 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = a3;
  (*(v76 + 16))(a3 + v11, a2);
  v78 = a2;
  v14 = InstallSheetContext.Source.AppStoreSheetContext.metricsFieldData.getter();
  if (v15 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v16 = v14;
  v17 = v15;
  v18 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v88 = 0;
  v20 = [v18 JSONObjectWithData:isa options:0 error:&v88];

  if (!v20)
  {
    v24 = v88;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005A554(v16, v17);

LABEL_7:
    v23 = sub_100059AC4(&_swiftEmptyArrayStorage);
    goto LABEL_8;
  }

  v21 = v88;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000047BC(&qword_10008A800, &qword_1000678C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10005A554(v16, v17);
    goto LABEL_7;
  }

  v22 = sub_10005A030(v87, &off_10007E458);

  sub_10005A554(v16, v17);
  swift_arrayDestroy();
  v23 = v22;
LABEL_8:
  *(v13 + *(v83 + 28)) = v23;
  v73 = v13;
  v75 = "pStoreMetrics.swift";
  v25 = type metadata accessor for AMSMetricsEventRecorder();
  v26 = v85;
  v27 = *(v84 + 16);
  v28 = v82;
  v27(v10, v82, v85);
  v29 = AMSMetricsEventRecorder.__allocating_init(bag:defaultTopic:)();
  v27(v10, v28, v26);
  v89 = &type metadata for InstallConfirmationAppStoreMetrics.Linter;
  v90 = sub_10005A500();
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  v89 = v25;
  v90 = &protocol witness table for AMSMetricsEventRecorder;
  v74 = v29;
  v88 = v29;

  MetricsPipeline.Configuration.withRecorder(_:)();
  (*(v81 + 8))(v7, v86);
  sub_10001059C(&v88);
  MetricsPipeline.init(from:)();
  sub_1000047BC(&qword_10008A7E8, &qword_1000678B0);
  v30 = sub_1000047BC(&qword_10008A7F0, &qword_1000678B8);
  v31 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
  v79 = *(*(v30 - 8) + 72);
  v32 = v79;
  v33 = swift_allocObject();
  v72 = v33;
  *(v33 + 16) = xmmword_100067830;
  v34 = v33 + v31;
  v80 = v34;
  v66 = v30;
  v35 = *(v30 + 48);
  static MetricsEventType.click.getter();
  *(v34 + v35) = &_swiftEmptySetSingleton;
  v36 = v34 + v32;
  *&v68 = *(v30 + 48);
  static MetricsEventType.page.getter();
  v37 = sub_1000047BC(&qword_10008A7F8, &qword_1000678C0);
  v65 = type metadata accessor for MetricsFieldInclusionRequest();
  v86 = *(v65 - 8);
  v38 = *(v86 + 72);
  v39 = *(v86 + 80);
  v40 = (v39 + 32) & ~v39;
  v71 = 3 * v38;
  v69 = 2 * v38;
  v64 = v39;
  v81 = v37;
  v41 = swift_allocObject();
  v70 = xmmword_100066A20;
  *(v41 + 16) = xmmword_100066A20;
  static MetricsFieldInclusionRequest.pageFields.getter();
  static MetricsFieldInclusionRequest.pageReferrer.getter();
  static MetricsFieldInclusionRequest.crossfireReferral.getter();
  v42 = sub_10004DD24(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v36 + v68) = v42;
  v43 = v79;
  v63 = 2 * v79;
  v44 = v80;
  v45 = v66;
  v62 = *(v66 + 48);
  static MetricsEventType.search.getter();
  v46 = swift_allocObject();
  v68 = xmmword_100065650;
  *(v46 + 16) = xmmword_100065650;
  static MetricsFieldInclusionRequest.pageReferrer.getter();
  v47 = sub_10004DD24(v46);
  swift_setDeallocating();
  v48 = *(v86 + 8);
  v86 += 8;
  v67 = v48;
  v49 = v65;
  v48(v46 + v40, v65);
  swift_deallocClassInstance();
  *(v44 + 2 * v43 + v62) = v47;
  v50 = v44 + v63 + v43;
  v51 = *(v45 + 48);
  static MetricsEventType.impressions.getter();
  v52 = swift_allocObject();
  *(v52 + 16) = v70;
  static MetricsFieldInclusionRequest.impressions.getter();
  static MetricsFieldInclusionRequest.pageFields.getter();
  static MetricsFieldInclusionRequest.pageReferrer.getter();
  v53 = sub_10004DD24(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v50 + v51) = v53;
  v54 = v79;
  v55 = v80;
  v56 = *(v45 + 48);
  static MetricsEventType.media.getter();
  *(v55 + 4 * v54 + v56) = &_swiftEmptySetSingleton;
  v57 = v55 + 5 * v54;
  v58 = *(v45 + 48);
  static MetricsEventType.pageRender.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = v68;
  static MetricsFieldInclusionRequest.pageFields.getter();
  v60 = sub_10004DD24(v59);
  swift_setDeallocating();
  v67(v59 + v40, v49);
  swift_deallocClassInstance();
  *(v57 + v58) = v60;
  sub_100059BF4(v72, &qword_10008A7F0, &qword_1000678B8, &qword_10008A828, &qword_1000678E0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100059BF4(&_swiftEmptyArrayStorage, &qword_10008A808, &qword_1000678D0, &qword_10008A810, &qword_1000678D8);
  MetricsData.Configuration.init(defaultTopic:defaultIncludingFields:defaultExcludingFields:shouldFlush:)();

  (*(v76 + 8))(v78, v77);
  return (*(v84 + 8))(v82, v85);
}

uint64_t sub_100056B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[42] = v17;
  v9[43] = v8;
  v9[40] = a7;
  v9[41] = a8;
  v9[38] = a5;
  v9[39] = a6;
  v9[36] = a3;
  v9[37] = a4;
  v9[34] = a1;
  v9[35] = a2;
  v10 = type metadata accessor for MetricsFieldsContext();
  v9[44] = v10;
  v9[45] = *(v10 - 8);
  v9[46] = swift_task_alloc();
  v11 = type metadata accessor for LintedMetricsEvent();
  v9[47] = v11;
  v9[48] = *(v11 - 8);
  v9[49] = swift_task_alloc();
  v12 = type metadata accessor for MetricsData();
  v9[50] = v12;
  v9[51] = *(v12 - 8);
  v9[52] = swift_task_alloc();
  type metadata accessor for MainActor();
  v9[53] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[54] = v14;
  v9[55] = v13;

  return _swift_task_switch(sub_100056CF0, v14, v13);
}

uint64_t sub_100056CF0()
{
  v23 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v2 + *(type metadata accessor for InstallConfirmationAppStoreMetrics(0) + 28));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v1;
  sub_10005A1F0(v3, sub_100059298, 0, isUniquelyReferenced_nonNull_native, &v22, 71);

  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);
  v9 = v22;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  sub_100028608((v0 + 16), (v0 + 48));

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v9;
  sub_1000592E4((v0 + 48), 0x79546E6F69746361, 0xEA00000000006570, v10);
  v11 = v22;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  sub_100028608((v0 + 80), (v0 + 112));

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v11;
  sub_1000592E4((v0 + 112), 0x644965676170, 0xE600000000000000, v12);
  v13 = v22;
  *(v0 + 168) = &type metadata for String;
  *(v0 + 144) = 0x6C61646F4DLL;
  *(v0 + 152) = 0xE500000000000000;
  sub_100028608((v0 + 144), (v0 + 176));
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v13;
  sub_1000592E4((v0 + 176), 0x7073694465676170, 0xEF6570795479616CLL, v14);
  v15 = v22;
  *(v0 + 232) = &type metadata for String;
  *(v0 + 208) = 0x6174736E49707041;
  *(v0 + 216) = 0xEA00000000006C6CLL;
  sub_100028608((v0 + 208), (v0 + 240));
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v15;
  sub_1000592E4((v0 + 240), 0x6570795465676170, 0xE800000000000000, v16);
  static MetricsData.makeMetricsClickData(targetID:targetType:fields:configuration:)();

  MetricsFieldsContext.init()();
  v17 = swift_task_alloc();
  *(v0 + 448) = v17;
  *v17 = v0;
  v17[1] = sub_100057034;
  v18 = *(v0 + 416);
  v19 = *(v0 + 392);
  v20 = *(v0 + 368);

  return MetricsPipeline.process(_:using:)(v19, v18, v20);
}

uint64_t sub_100057034()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    (*(v2[45] + 8))(v2[46], v2[44]);
    v3 = v2[54];
    v4 = v2[55];
    v5 = sub_10005723C;
  }

  else
  {
    v7 = v2[48];
    v6 = v2[49];
    v8 = v2[47];
    (*(v2[45] + 8))(v2[46], v2[44]);
    (*(v7 + 8))(v6, v8);
    v3 = v2[54];
    v4 = v2[55];
    v5 = sub_10005719C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005719C()
{

  (*(v0[51] + 8))(v0[52], v0[50]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005723C()
{

  if (qword_100088448 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error recording button click: %{public}@", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }

  else
  {
  }

  (*(v0[51] + 8))(v0[52], v0[50]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100057420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = type metadata accessor for MetricsFieldsContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for LintedMetricsEvent();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  type metadata accessor for JSONContext();
  v5[35] = swift_task_alloc();
  type metadata accessor for JSONObject();
  v5[36] = swift_task_alloc();
  v8 = type metadata accessor for JSNetworkPerformanceMetrics();
  v5[37] = v8;
  v5[38] = *(v8 - 8);
  v5[39] = swift_task_alloc();
  v9 = type metadata accessor for MetricsData();
  v5[40] = v9;
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[43] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[44] = v11;
  v5[45] = v10;

  return _swift_task_switch(sub_100057688, v11, v10);
}

uint64_t sub_100057688()
{
  v20 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v18 = v0[37];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  sub_1000047BC(&qword_100089500, &qword_100066630);
  inited = swift_initStackObject();
  *(inited + 32) = 0x644965676170;
  *(inited + 16) = xmmword_100066A20;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6570795465676170;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v5;
  *(inited + 104) = v3;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x7073694465676170;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0xEF6570795479616CLL;
  *(inited + 144) = 0x6C61646F4DLL;
  *(inited + 152) = 0xE500000000000000;

  v9 = sub_100059AC4(inited);
  swift_setDeallocating();
  sub_1000047BC(&qword_100089508, &qword_100066638);
  swift_arrayDestroy();
  v10 = *(v4 + *(type metadata accessor for InstallConfirmationAppStoreMetrics(0) + 28));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = v9;
  sub_10005A1F0(v10, sub_100059298, 0, isUniquelyReferenced_nonNull_native, v19, 89);

  v12 = sub_100059988(&_swiftEmptyArrayStorage);
  v19[3] = sub_1000047BC(&qword_100089A88, &unk_100067870);
  v19[0] = v12;
  JSONObject.init(wrapping:)();
  JSONContext.init()();
  JSNetworkPerformanceMetrics.init(deserializing:using:)();
  static MetricsData.makeMetricsPageData(fields:timingMetrics:configuration:)();

  (*(v2 + 8))(v1, v18);
  MetricsFieldsContext.init()();
  v13 = swift_task_alloc();
  v0[46] = v13;
  *v13 = v0;
  v13[1] = sub_100057970;
  v14 = v0[42];
  v15 = v0[34];
  v16 = v0[31];

  return MetricsPipeline.process(_:using:)(v15, v14, v16);
}

uint64_t sub_100057970()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    (*(v2[30] + 8))(v2[31], v2[29]);
    v3 = v2[44];
    v4 = v2[45];
    v5 = sub_100057BA0;
  }

  else
  {
    v7 = v2[33];
    v6 = v2[34];
    v8 = v2[32];
    (*(v2[30] + 8))(v2[31], v2[29]);
    (*(v7 + 8))(v6, v8);
    v3 = v2[44];
    v4 = v2[45];
    v5 = sub_100057AD8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100057AD8()
{

  (*(v0[41] + 8))(v0[42], v0[40]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100057BA0()
{

  if (qword_100088448 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error recording page event: %{public}@", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }

  else
  {
  }

  (*(v0[41] + 8))(v0[42], v0[40]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100057DA4(uint64_t a1)
{
  v1 = type metadata accessor for LintedMetricsEvent();
  __chkstk_darwin(v1 - 8);
  sub_1000047BC(&qword_10008A830, &qword_100067918);

  LintedMetricsEvent.init(fields:issues:)();
  return Promise.__allocating_init(value:)();
}

unint64_t sub_100057E50(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100057F90(a1, a2, v4);
}

unint64_t sub_100057EC8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100058048(a1, v4);
}

unint64_t sub_100057F0C(uint64_t a1)
{
  type metadata accessor for MetricsEventType();
  sub_10005A5C0(&qword_10008A818, &protocol conformance descriptor for MetricsEventType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100058110(a1, v2);
}

unint64_t sub_100057F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100058048(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10005A49C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001E2FC(v8);
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

unint64_t sub_100058110(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for MetricsEventType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10005A5C0(&qword_10008A820, &protocol conformance descriptor for MetricsEventType);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void sub_1000582BC()
{
  v1 = v0;
  sub_1000047BC(&qword_100089028, &qword_1000663B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_100058434()
{
  v1 = v0;
  sub_1000047BC(&qword_10008A7D0, &qword_100067890);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100010538(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100028608(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void *sub_1000585D8()
{
  v1 = v0;
  sub_1000047BC(&qword_10008A7C8, &unk_100067880);
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
        sub_10005A49C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100010538(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100028608(v22, (*(v4 + 56) + v17));
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

Swift::Int sub_10005877C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000047BC(&qword_100089028, &qword_1000663B8);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100058A3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000047BC(&qword_10008A7D0, &qword_100067890);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100028608(v24, v34);
      }

      else
      {
        sub_100010538(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100028608(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100058CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000047BC(&qword_10008A7C8, &unk_100067880);
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
        sub_100028608((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10005A49C(v23, &v36);
        sub_100010538(*(v5 + 56) + 32 * v22, v35);
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
      result = sub_100028608(v35, (*(v7 + 56) + 32 * v15));
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

unint64_t *sub_100058FAC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100059DD4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100059048(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000047BC(&qword_10008A7D0, &qword_100067890);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_100010538(v17 + 32 * v16, v33);
    sub_100028608(v33, v32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_100028608(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_100059298@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_100010538((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_1000592E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057E50(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100058434();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100058A3C(v16, a4 & 1);
    v11 = sub_100057E50(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10001059C(v22);

    sub_100028608(a1, v22);
  }

  else
  {
    sub_100059580(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100059434(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100057EC8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000585D8();
      goto LABEL_7;
    }

    sub_100058CF4(v13, a3 & 1);
    v19 = sub_100057EC8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10005A49C(a2, v21);
      return sub_1000595EC(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10001059C(v17);

  return sub_100028608(a1, v17);
}

_OWORD *sub_100059580(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100028608(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_1000595EC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100028608(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100059668(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_100059714(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100010538(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_100028608(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_100011C14(v20, &qword_10008A7D8, &qword_100067898);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_100059874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000047BC(&qword_100089028, &qword_1000663B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100057E50(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100059988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000047BC(&qword_10008A7C8, &unk_100067880);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010668(v4, v13, &qword_100089010, &qword_1000663A0);
      result = sub_100057EC8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100028608(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100059AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000047BC(&qword_10008A7D0, &qword_100067890);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010668(v4, &v13, &qword_100089508, &qword_100066638);
      v5 = v13;
      v6 = v14;
      result = sub_100057E50(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100028608(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100059BF4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_1000047BC(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_1000047BC(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_100010668(v16, v12, a2, v27);
      result = sub_100057F0C(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for MetricsEventType();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t *sub_100059DD4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a4;
  v30 = a3;
  v25 = a2;
  v26 = result;
  v27 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v35 = v5;
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v17 = v14 | (v6 << 6);
    v18 = *(v30 + 56);
    v19 = (*(v30 + 48) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    v28 = v17;
    sub_100010538(v18 + 32 * v17, v34);
    v32[0] = v20;
    v32[1] = v21;
    sub_100010538(v34, &v33);
    type metadata accessor for MainActor();
    swift_bridgeObjectRetain_n();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v31[0] = v20;
    v31[1] = v21;
    __chkstk_darwin(isCurrentExecutor);
    v24[2] = v31;
    v12 = v35;
    v13 = sub_100059668(sub_10005A568, v24, v29);
    v5 = v12;

    sub_100011C14(v32, &qword_10008A7D8, &qword_100067898);
    sub_10001059C(v34);

    if (v13)
    {
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_100059048(v26, v25, v27, v30);
      }
    }
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_100059048(v26, v25, v27, v30);
    }

    v16 = *(v7 + 8 * v6);
    ++v15;
    if (v16)
    {
      v35 = v5;
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10005A030(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_100058FAC(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100059DD4((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10005A1F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v45 = a6;
  v8 = -1 << *(a1 + 32);
  v9 = ~v8;
  v10 = *(a1 + 64);
  v11 = -v8;
  v38 = a1;
  v39 = a1 + 64;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v40 = v9;
  v41 = 0;
  v42 = v12 & v10;
  v43 = a2;
  v44 = a3;

  sub_100059714(&v36);
  v13 = *(&v36 + 1);
  if (!*(&v36 + 1))
  {
LABEL_19:
    sub_10005A4F8(v38);
  }

  while (1)
  {
    v15 = v36;
    sub_100028608(&v37, v35);
    v16 = *a5;
    v17 = sub_100057E50(v15, v13);
    v19 = *(v16 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (*(v16 + 24) < v22)
    {
      sub_100058A3C(v22, a4 & 1);
      v17 = sub_100057E50(v15, v13);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v23)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v27 = v17;
    sub_100058434();
    v17 = v27;
    if (v23)
    {
LABEL_14:
      v25 = *a5;
      v26 = v17;
      sub_100010538(*(*a5 + 56) + 32 * v17, v33);
      type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_100010538(v33, v34);

      sub_10001059C(v33);
      sub_10001059C(v35);

      v14 = (*(v25 + 56) + 32 * v26);
      sub_10001059C(v14);
      sub_100028608(v34, v14);
      goto LABEL_7;
    }

LABEL_17:
    v28 = *a5;
    *(*a5 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v29 = (v28[6] + 16 * v17);
    *v29 = v15;
    v29[1] = v13;
    sub_100028608(v35, (v28[7] + 32 * v17));
    v30 = v28[2];
    v21 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v28[2] = v31;
LABEL_7:
    sub_100059714(&v36);
    v13 = *(&v36 + 1);
    a4 = 1;
    if (!*(&v36 + 1))
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10005A500()
{
  result = qword_10008A7E0;
  if (!qword_10008A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A7E0);
  }

  return result;
}

uint64_t sub_10005A554(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100015A54(result, a2);
  }

  return result;
}

uint64_t sub_10005A568(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10005A5C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MetricsEventType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_10005A614()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10005A688()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005A6DC@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10007E510, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_10005A764()
{
  result = qword_10008A838;
  if (!qword_10008A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A838);
  }

  return result;
}

uint64_t sub_10005A7B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_10005A49C(*(a2 + 48) + 40 * v5, v9);
      v7 = static AnyHashable.== infix(_:_:)();
      sub_10001E2FC(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_10005A890(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1000047BC(&qword_100089590, &unk_100067A90);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000047BC(&qword_100089590, &unk_100067A90);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10005AA10(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for InstallSheetConfirmationView(0);
  __chkstk_darwin(v4);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for InstallConfirmationViewController(0);
  v36.receiver = v2;
  v36.super_class = v7;
  objc_msgSendSuper2(&v36, "viewDidAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationHostingController;
  if (*&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationHostingController])
  {
    return;
  }

  sub_10005F5D4(&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent], v6 + *(v4 + 20));
  v9 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationViewModel];
  *v6 = swift_getKeyPath();
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  swift_storeEnumTagMultiPayload();
  v10 = v6 + *(v4 + 24);
  *v10 = sub_10005F640;
  *(v10 + 1) = v9;
  v10[16] = 0;
  v11 = objc_allocWithZone(sub_1000047BC(&qword_10008A8B8, &qword_100067B20));

  v12 = UIHostingController.init(rootView:)();
  v13 = *(v9 + 16);
  *(v9 + 16) = v12;
  v14 = v12;

  *(v9 + 32) = &off_10007FC28;
  swift_unknownObjectWeakAssign();
  v15 = [v2 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 window];

  Height = 0.0;
  if (v17)
  {
    v19 = [v17 windowScene];

    if (v19)
    {
      v17 = [v19 screen];

      if (v17)
      {
        [v17 bounds];
        Width = CGRectGetWidth(v37);
        [v17 bounds];
        Height = CGRectGetHeight(v38);
        goto LABEL_9;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  Width = 0.0;
LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = Height < Width;

  static Published.subscript.setter();
  v21 = [v2 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 window];

  if (v23)
  {
    v24 = [v23 _rootSheetPresentationController];

    if (v24)
    {
      [v24 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  v25 = [objc_opt_self() blackColor];
  v26 = v25;
  v27 = 0.8;
  if (v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_isIPad])
  {
    v27 = 0.4;
  }

  v28 = [v25 colorWithAlphaComponent:v27];

  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = v2;
  *(v30 + 24) = v28;
  aBlock[4] = sub_10005F9D8;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005F9E8;
  aBlock[3] = &unk_10007FD68;
  v31 = _Block_copy(aBlock);
  v32 = v2;
  v33 = v28;

  [v29 animateWithDuration:v31 animations:0.3];
  _Block_release(v31);

  [v14 setModalPresentationStyle:2];
  [v32 presentViewController:v14 animated:1 completion:0];

  v34 = *&v2[v8];
  *&v2[v8] = v12;
}

uint64_t sub_10005B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 226) = a5;
  *(v5 + 16) = a4;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  v7 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  v8 = type metadata accessor for InstallSheetContext.Source();
  *(v5 + 72) = v8;
  *(v5 + 80) = *(v8 - 8);
  *(v5 + 88) = swift_task_alloc();
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  *(v5 + 96) = swift_task_alloc();
  v9 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  *(v5 + 104) = v9;
  *(v5 + 112) = *(v9 - 8);
  *(v5 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 128) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 136) = v11;
  *(v5 + 144) = v10;

  return _swift_task_switch(sub_10005B3C4, v11, v10);
}

uint64_t sub_10005B3C4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_100010668(*(v0 + 16) + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100011C14(*(v0 + 96), &qword_100089388, &qword_100067A70);
    v4 = *(v0 + 16) + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent;
    if (sub_100053F24())
    {
      v6 = *(v0 + 80);
      v5 = *(v0 + 88);
      v7 = *(v0 + 72);
      type metadata accessor for LocalizedInstallSheetContent(0);
      InstallSheetContext.source.getter();
      v8 = (*(v6 + 88))(v5, v7);
      if (v8 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
      {
        v9 = *(v0 + 88);
        v10 = *(v0 + 64);
        v11 = *(v0 + 48);
        v12 = *(v0 + 56);
        (*(*(v0 + 80) + 96))(v9, *(v0 + 72));
        (*(v12 + 32))(v10, v9, v11);
        LOBYTE(v9) = InstallSheetContext.Source.AppStoreSheetContext.showBiometrics.getter();
        (*(v12 + 8))(v10, v11);
        if (v9)
        {
          goto LABEL_16;
        }

LABEL_14:
        v32 = *(v0 + 226);
LABEL_21:

        sub_10005D158(v32);

        v34 = *(v0 + 8);

        return v34();
      }

      if (v8 == enum case for InstallSheetContext.Source.appStore(_:))
      {
        if ((InstallSheetContext.showBiometricsForAppStoreInstall.getter() & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      }
    }

LABEL_16:
    if (*(v0 + 226) == 1)
    {
      v33 = swift_task_alloc();
      *(v0 + 208) = v33;
      *v33 = v0;
      v33[1] = sub_10005BDC4;

      return sub_10005D5C0(v4);
    }

    v32 = 0;
    goto LABEL_21;
  }

  v13 = *(v0 + 226);
  sub_100022268(*(v0 + 96), *(v0 + 120));
  type metadata accessor for LocalizedInstallSheetContent(0);
  v14 = InstallSheetContext.itemID.getter();
  v16 = v15;
  *(v0 + 152) = v15;
  if (v13 == 1)
  {
    v17 = InstallSheetContext.itemID.getter();
    v19 = v18;
    *(v0 + 160) = v18;
    v20 = InstallSheetContext.Source.AppStoreSheetContext.installType.getter();
    v22 = v21;
    *(v0 + 168) = v21;
    *(v0 + 176) = sub_100059AC4(&_swiftEmptyArrayStorage);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_10005B860;
    v24 = v14;
    v25 = v16;
    v26 = v17;
    v27 = v19;
    v28 = v20;
    v29 = v22;
  }

  else
  {
    *(v0 + 192) = sub_100059AC4(&_swiftEmptyArrayStorage);
    v30 = swift_task_alloc();
    *(v0 + 200) = v30;
    *v30 = v0;
    v30[1] = sub_10005BC64;
    v28 = 0x7373696D736964;
    v24 = 0x6C65636E6143;
    v25 = 0xE600000000000000;
    v26 = v14;
    v27 = v16;
    v29 = 0xE700000000000000;
  }

  return sub_100056B2C(v24, v25, v26, v27, v28, v29, 0x6E6F74747562, 0xE600000000000000);
}