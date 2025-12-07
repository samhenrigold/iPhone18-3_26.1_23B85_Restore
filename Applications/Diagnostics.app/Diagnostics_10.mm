void sub_1001172F8(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
  v6 = [*(v2 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView) arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = v7;
  if (v7 >> 62)
  {
    v57 = v7;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v57;
  }

  else
  {
    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15, v8, v9, v10, v11, v12, v13, v14;
  sub_1000E9D04(v5, v16, 1);
  v17 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  if (v17)
  {
    v18 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8];

    v17(v19);
    sub_10003C52C(v17, v18);
  }

  v20 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, a1, a2);
  v22 = v21;
  sub_10004BDE0(5u, v20, v21);
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView];
  sub_10003E110(0, &unk_100202950, UIImage_ptr);
  v31._countAndFlagsBits = 0x7261576465646E65;
  v31._object = 0xEC000000676E696ELL;
  v32.super.isa = UIImage.init(imageLiteralResourceName:)(v31).super.isa;
  v33 = *&v30[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView];
  [v33 alpha];
  if (v34 == 1.0)
  {
    [v33 alpha];
    if (v35 == 1.0)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      v37 = objc_opt_self();
      v62 = sub_10004487C;
      v63 = v36;
      v58 = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100031FA8;
      v61 = &unk_1001C7858;
      v38 = _Block_copy(&v58);
      v39 = v33;

      [v37 animateWithDuration:0x20000 delay:v38 options:0 animations:0.125 completion:0.0];
      _Block_release(v38);
    }
  }

  v40 = *&v30[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  v42 = v30;
  sub_10006D6C4(v40, sub_100119F94, v41);

  v43 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView;
  [*&v42[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView] setImage:v32.super.isa];
  v44 = *&v42[v43];
  [v44 alpha];
  if (v45 == 0.0 && ([v44 alpha], v46 == 0.0))
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v44;
    v48 = objc_opt_self();
    v62 = sub_10003E440;
    v63 = v47;
    v58 = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100031FA8;
    v61 = &unk_1001C7808;
    v49 = _Block_copy(&v58);
    v50 = v44;

    [v48 animateWithDuration:0x10000 delay:v49 options:0 animations:0.375 completion:0.0];
    _Block_release(v49);
  }

  else
  {
  }

  v51 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView];
  [v51 alpha];
  if (v52 == 1.0)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    v54 = objc_opt_self();
    v62 = sub_10004487C;
    v63 = v53;
    v58 = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100031FA8;
    v61 = &unk_1001C77B8;
    v55 = _Block_copy(&v58);
    v56 = v51;

    [v54 animateWithDuration:0x20000 delay:v55 options:0 animations:0.125 completion:0.0];
    _Block_release(v55);
  }
}

double sub_100117874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*&v4[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView])
  {
    return result;
  }

  v89 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v88 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x5452415453, 0xE500000000000000);
  v90 = v10;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a3;
  v11[4] = a4;

  v86 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 1346980691, 0xE400000000000000);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = v4;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10017EC00;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10003DFBC();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v83 = v4;

  sub_1000494C8(0, 0, v15, 0xD000000000000016, 0x8000000100192C40);
  v17 = v16;
  v15, v16, v18, v19, v20, v21, v22, v23;
  sub_10003C49C(&unk_100201C20, qword_100184B00);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10017EC10;
  *(v24 + 32) = v86;
  *(v24 + 40) = v13;
  *(v24 + 48) = 6;
  *(v24 + 56) = sub_10011994C;
  *(v24 + 64) = v14;
  *(v24 + 72) = v88;
  *(v24 + 80) = v90;
  *(v24 + 88) = 4;
  *(v24 + 96) = sub_1001198F8;
  *(v24 + 104) = v11;
  v85 = type metadata accessor for PromptView();
  v25 = objc_allocWithZone(v85);
  v25[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v26 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v27 = objc_allocWithZone(UIStackView);

  v28 = v26;

  *&v25[v26] = [v27 init];
  v87 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v25[v87] = [objc_allocWithZone(UIStackView) init];
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v29 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v30 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v25[v30] = [objc_allocWithZone(UIStackView) init];
  v31 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v25[v31] = [objc_allocWithZone(UIProgressView) init];
  v32 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v25[v32] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v33 = &v25[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v33 = 0;
  v33[1] = 0;
  v25[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v34 = [objc_allocWithZone(UILabel) init];
  v35 = *&v25[v29];
  *&v25[v29] = v34;

  v43 = *&v25[v29];
  if (v43)
  {
    v44 = v43;
    v45 = String._bridgeToObjectiveC()();
    v17, v46, v47, v48, v49, v50, v51, v52;
    [v44 setText:v45];

    if (*(v24 + 16))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17, v36, v37, v38, v39, v40, v41, v42;
    if (*(v24 + 16))
    {
LABEL_4:
      *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v24;
      v60 = [objc_allocWithZone(UIStackView) init];
      *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v60;
      if (v60)
      {
        v61 = v60;
        v62 = objc_opt_self();
        v63 = v61;
        v64 = [v62 sharedApplication];
        v65 = [v64 preferredContentSizeCategory];

        LOBYTE(v64) = UIContentSizeCategory.isAccessibilityCategory.getter();
        [v63 setAxis:v64 & 1];
      }

      goto LABEL_8;
    }
  }

  v24, v53, v54, v55, v56, v57, v58, v59;
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
LABEL_8:
  v25[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 1;
  [*&v25[v28] setSpacing:{10.0, v83}];
  [*&v25[v87] setSpacing:10.0];
  v91.receiver = v25;
  v91.super_class = v85;
  v66 = objc_msgSendSuper2(&v91, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v74 = v66;
  if (!*&v4[v89])
  {
    *&v4[v89] = v66;
    sub_1000EA498(v66, *(v84 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView), 1);
  }

  v90, v67, v68, v69, v70, v71, v72, v73;

  v13, v75, v76, v77, v78, v79, v80, v81;

  return result;
}

uint64_t sub_100117E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    return a3(1);
  }

  return result;
}

void sub_100117EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    a3(0);
    sub_100118EC0();
  }
}

void sub_100117F54(uint64_t a1, uint64_t a2)
{
  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = 0xD000000000000017;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v9 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  v10 = "contentUnavailableView";
  v11 = sub_1001184E8;
  if ((v9 & 1) == 0)
  {
    v12 = sub_100118530;
    if (sub_1000660CC())
    {
      goto LABEL_8;
    }

    v13 = "OPEN_WIFI_SETTINGS";
    if (wapiCapability)
    {
      v13 = "OPEN_WLAN_SETTINGS";
    }

    v10 = v13 - 32;
    v7 = 0xD000000000000012;
    v11 = sub_1000D71E0;
  }

  v12 = v11;
LABEL_8:
  v87 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v7, (v10 | 0x8000000000000000));
  v15 = v14;

  v16 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 1346980691, 0xE400000000000000);
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  if (wapiCapability)
  {
    v20 = 0x5145525F4E414C57;
  }

  else
  {
    v20 = 0x5145525F49464957;
  }

  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10017EC00;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_10003DFBC();
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  swift_bridgeObjectRetain_n();
  v86 = v2;
  v83 = sub_1000494C8(0, 0, v21, v20, 0xED00004445524955);
  v84 = v22;
  v21, v22, v23, v24, v25, v26, v27, v28;
  sub_10003C49C(&unk_100201C20, qword_100184B00);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10017EC10;
  *(v29 + 32) = v87;
  *(v29 + 40) = v15;
  *(v29 + 48) = 7;
  *(v29 + 56) = v12;
  *(v29 + 64) = 0;
  *(v29 + 72) = v16;
  *(v29 + 80) = v18;
  *(v29 + 88) = 7;
  *(v29 + 96) = sub_100119888;
  *(v29 + 104) = v19;
  v85 = type metadata accessor for PromptView();
  v30 = objc_allocWithZone(v85);
  v30[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v31 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v32 = objc_allocWithZone(UIStackView);

  *&v30[v31] = [v32 init];
  v33 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v30[v33] = [objc_allocWithZone(UIStackView) init];
  *&v30[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v34 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v30[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v30[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v35 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v30[v35] = [objc_allocWithZone(UIStackView) init];
  v36 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v30[v36] = [objc_allocWithZone(UIProgressView) init];
  v37 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v30[v37] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v30[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v38 = &v30[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v38 = 0;
  v38[1] = 0;
  v30[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v39 = [objc_allocWithZone(UILabel) init];
  v40 = *&v30[v34];
  *&v30[v34] = v39;

  v48 = *&v30[v34];
  if (!v48)
  {
    v84, v41, v42, v43, v44, v45, v46, v47;
    if (*(v29 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:
    v29, v58, v59, v60, v61, v62, v63, v64;
    *&v30[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
    *&v30[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
    goto LABEL_16;
  }

  v49 = v48;
  v50 = String._bridgeToObjectiveC()();
  v84, v51, v52, v53, v54, v55, v56, v57;
  [v49 setText:v50];

  if (!*(v29 + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  *&v30[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v29;
  v65 = [objc_allocWithZone(UIStackView) init];
  *&v30[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v65;
  [v65 setAxis:1];
LABEL_16:
  v30[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 2;
  [*&v30[v31] setSpacing:{10.0, v83}];
  [*&v30[v33] setSpacing:10.0];
  v88.receiver = v30;
  v88.super_class = v85;
  v66 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v74 = v66;
  v75 = v86;
  if (!*&v86[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView])
  {
    *&v86[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView] = v66;
    sub_1000EA498(v66, *&v75[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView], 1);
  }

  v15, v67, v68, v69, v70, v71, v72, v73;

  v18, v76, v77, v78, v79, v80, v81, v82;
}

double sub_100118538(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v89 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 1346980691, 0xE400000000000000);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v2;
  v8[4] = a1;
  v8[5] = a2;

  v9 = v2;
  v10 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x4C45434E4143, 0xE600000000000000);
  v91 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v9;
  if (a2)
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10017EC00;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10003DFBC();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v14 = v9;

    v84 = sub_1000494C8(0, 0, v13, 0x4955535F50494B53, 0xEA00000000004554);
    v85 = v15;
    v13, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {

    v22 = v9;
    v84 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x4955535F50494B53, 0xEA00000000004554);
    v85 = v23;
  }

  sub_10003C49C(&unk_100201C20, qword_100184B00);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10017EC10;
  *(v24 + 32) = v10;
  *(v24 + 40) = v91;
  *(v24 + 48) = 5;
  *(v24 + 56) = sub_100119840;
  *(v24 + 64) = v12;
  *(v24 + 72) = v89;
  *(v24 + 80) = v7;
  *(v24 + 88) = 6;
  *(v24 + 96) = sub_1001197F4;
  *(v24 + 104) = v8;
  v88 = type metadata accessor for PromptView();
  v25 = objc_allocWithZone(v88);
  v25[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v26 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v27 = objc_allocWithZone(UIStackView);

  v90 = v7;

  v87 = v26;
  *&v25[v26] = [v27 init];
  v86 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v25[v86] = [objc_allocWithZone(UIStackView) init];
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v28 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v29 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v25[v29] = [objc_allocWithZone(UIStackView) init];
  v30 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v25[v30] = [objc_allocWithZone(UIProgressView) init];
  v31 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v25[v31] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v32 = &v25[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v32 = 0;
  v32[1] = 0;
  v25[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v33 = [objc_allocWithZone(UILabel) init];
  v34 = *&v25[v28];
  *&v25[v28] = v33;

  v42 = *&v25[v28];
  if (v42)
  {
    v43 = v42;
    v44 = String._bridgeToObjectiveC()();
    v85, v45, v46, v47, v48, v49, v50, v51;
    [v43 setText:v44];
  }

  else
  {
    v85, v35, v36, v37, v38, v39, v40, v41;
  }

  v59 = v90;
  if (*(v24 + 16))
  {
    *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v24;
    v60 = [objc_allocWithZone(UIStackView) init];
    *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v60;
    if (v60)
    {
      v61 = v60;
      v62 = objc_opt_self();
      v63 = v61;
      v64 = [v62 sharedApplication];
      v65 = [v64 preferredContentSizeCategory];

      LOBYTE(v64) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v59 = v90;
      [v63 setAxis:v64 & 1];
    }
  }

  else
  {
    v24, v52, v53, v54, v55, v56, v57, v58;
    *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
    *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  }

  v25[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 3;
  [*&v25[v87] setSpacing:{10.0, v84}];
  [*&v25[v86] setSpacing:10.0];
  v92.receiver = v25;
  v92.super_class = v88;
  v66 = objc_msgSendSuper2(&v92, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v74 = v66;
  v75 = v9;
  if (!*&v9[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView])
  {
    *&v9[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView] = v66;
    sub_1000EA498(v66, *&v75[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView], 1);
  }

  v59, v67, v68, v69, v70, v71, v72, v73;

  v91, v76, v77, v78, v79, v80, v81, v82;

  return result;
}

double sub_100118B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    return sub_100118C0C(1, a4, a5);
  }

  return result;
}

void sub_100118B9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    sub_100118EC0();
  }
}

double sub_100118C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10017EC00;
      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_10003DFBC();
      *(v6 + 32) = a2;
      *(v6 + 40) = a3;

      v7 = sub_1000494C8(0, 0, v6, 0x474E495050494B53, 0xEE0045544955535FLL);
      v9 = v8;
      v6, v8, v10, v11, v12, v13, v14, v15;
    }

    else
    {
      v7 = sub_1000494C8(a2, 0, &_swiftEmptyArrayStorage, 0x474E495050494B53, 0xEE0045544955535FLL);
      v9 = v16;
    }

    v24 = *(v3 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView);
    if (v24)
    {
      v25 = v24;
      sub_1000A1730(v7, v9);
    }

    v9, v16, v17, v18, v19, v20, v21, v22;
    v26 = *(v3 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
    if (v26)
    {
      v27 = [*(v26 + 40) serialNumber];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
      swift_beginAccess();
      sub_10011972C(v3 + v31, v74);
      if (!v75)
      {
        v30, v32, v33, v34, v35, v36, v37, v38;
        sub_1000A4AFC(v74);
        return result;
      }

      sub_10004476C(v74, v73);
      sub_1000A4AFC(v74);
      v39 = *sub_1000442A0(v73, v73[3]);
      v40 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
      swift_beginAccess();
      v48 = *(v39 + v40);
      if (*(v48 + 16))
      {

        v49 = sub_100064AFC(v28, v30);
        if (v50)
        {
          v57 = *(*(v48 + 56) + 8 * v49);
          swift_unknownObjectRetain();
          v48, v58, v59, v60, v61, v62, v63, v64;
          [v57 idle];
          v30, v65, v66, v67, v68, v69, v70, v71;
          swift_unknownObjectRelease();
          return sub_100044554(v73);
        }

        v30, v50, v51, v52, v53, v54, v55, v56;
        v72 = v48;
      }

      else
      {
        v72 = v30;
      }

      v72, v41, v42, v43, v44, v45, v46, v47;
      return sub_100044554(v73);
    }
  }

  else
  {

    sub_100118EC0();
  }

  return result;
}

void sub_100118EC0()
{
  v1 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
    v8 = v2;
    sub_1000EA498(v3, v8, 1);
    v4 = *(v0 + v1);
    *(v0 + v1) = 0;

    v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
    if (v5 && (*(v5 + 19) & 1) != 0)
    {
      *(v5 + 19) = 0;
      v6 = *(v5 + 80);
      if ((v6 & 8) == 0)
      {
        *(v5 + 80) = v6 | 8;
      }

      sub_1000724B4(v7);
    }

    else
    {
    }
  }
}

double sub_100118FD8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
  if (v1)
  {
    v3 = [*(v1 + 40) serialNumber];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
    swift_beginAccess();
    sub_10011972C(a1 + v7, v51);
    if (!v52)
    {
      v6, v8, v9, v10, v11, v12, v13, v14;
      sub_1000A4AFC(v51);
      return result;
    }

    sub_10004476C(v51, v50);
    sub_1000A4AFC(v51);
    v15 = *sub_1000442A0(v50, v50[3]);
    v16 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    v24 = *(v15 + v16);
    if (*(v24 + 16))
    {

      v25 = sub_100064AFC(v4, v6);
      if (v26)
      {
        v33 = *(*(v24 + 56) + 8 * v25);
        swift_unknownObjectRetain();
        v24, v34, v35, v36, v37, v38, v39, v40;
        [v33 end];
        v6, v41, v42, v43, v44, v45, v46, v47;
        swift_unknownObjectRelease();
        return sub_100044554(v50);
      }

      v6, v26, v27, v28, v29, v30, v31, v32;
      v49 = v24;
    }

    else
    {
      v49 = v6;
    }

    v49, v17, v18, v19, v20, v21, v22, v23;
    return sub_100044554(v50);
  }

  return result;
}

void sub_100119158(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState))
  {
    v1 = objc_allocWithZone(type metadata accessor for HistoryTableViewController());

    v3 = sub_100147538(v2);
    v6 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v3];

    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      [v6 setModalPresentationStyle:2];
    }

    [v6 scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }
}

id sub_10011927C(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  v6 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView;
  type metadata accessor for DeviceInformationView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView;
  type metadata accessor for TestRunnerView();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView] = 0;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
    a3, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v8 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for CardViewSessionCell();
  v16 = objc_msgSendSuper2(&v18, "initWithStyle:reuseIdentifier:", a1, v8);

  return v16;
}

id sub_1001193B0(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView;
  type metadata accessor for DeviceInformationView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView;
  type metadata accessor for TestRunnerView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CardViewSessionCell();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_100119498()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView);
}

id sub_1001194E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardViewSessionCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100119600()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

double sub_100119648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100119668()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1001196C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10003C49C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10011972C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FD060, &qword_10017EEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001197AC()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7, v8);
}

uint64_t sub_100119800()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_100119848()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7, v8);
}

uint64_t sub_1001198B8()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_100119904()
{

  return _swift_deallocObject(v0, 48, 7, v1);
}

void sub_100119A08(void *a1, char a2)
{
  if (a2)
  {
    v4 = [a1 imageView];
    if (v4)
    {
      v5 = v4;
      v6 = *&v2[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState];
      if (v6 && *(v6 + 32) == 4)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        v8 = v2;
        v33 = v5;

        v9 = [a1 imageView];
        v35 = v5;
        v36 = v6;
        v37 = 0;
        v38 = 0;
        v39 = sub_100119F74;
        v40 = v7;
        v41 = 1;
        sub_100088E48(0, v9);
      }

      else
      {
        v30 = swift_allocObject();
        *(v30 + 16) = v2;
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        v32 = v2;
        v33 = v5;

        v9 = [a1 imageView];
        v35 = v5;
        v36 = v6;
        v37 = sub_100119E64;
        v38 = v30;
        v39 = sub_100119E6C;
        v40 = v31;
        v41 = 1;
        sub_100088E48(0, v9);
      }
    }
  }

  else
  {
    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if (*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) == 1)
    {
      v10 = *&v2[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState];
      if (v10)
      {
        v11 = [*(v10 + 40) serialNumber];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
        swift_beginAccess();
        sub_10011972C(&v2[v15], &v35);
        if (v38)
        {
          sub_10004476C(&v35, v34);
          sub_1000A4AFC(&v35);
          sub_1000442A0(v34, v34[3]);
          sub_100102FA4(v12, v14, 0);
          v14, v23, v24, v25, v26, v27, v28, v29;
          sub_100044554(v34);
        }

        else
        {
          v14, v16, v17, v18, v19, v20, v21, v22;
          sub_1000A4AFC(&v35);
        }
      }
    }

    else
    {
      sub_10004287C(4, 3);
      if (qword_1001FC6C8 != -1)
      {
        swift_once();
      }

      sub_100066800(2, 1);
    }
  }
}

double sub_100119DA0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState))
  {
    type metadata accessor for CardState();
    swift_allocObject();

    v4 = sub_1000737F8(v3);
    v5 = v4;
    v6 = *(v4 + 24);
    *(v4 + 24) = a1;
    if (v6 != a1)
    {
      v7 = *(v4 + 80);
      if ((v7 & 0x10) == 0)
      {
        *(v4 + 80) = v7 | 0x10;
      }

      sub_1000724B4(v4);
    }

    sub_10007287C(v5);
  }

  return result;
}

void *sub_100119F98(void *a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v5 = [v3 visibleViewController];
    v6 = sub_100119F98(v5);

    return v6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = v1;
    v11 = [v9 selectedViewController];
    if (v11)
    {
      v12 = v11;
      v13 = v11;
      v1 = sub_100119F98(v12);

      return v1;
    }
  }

  v14 = [v1 presentedViewController];
  if (v14)
  {
    v15 = v14;
LABEL_16:
    v33 = v15;
    v1 = sub_100119F98(v15);

    return v1;
  }

  v16 = [v1 childViewControllers];
  sub_100045CC4();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_18:
    v17, v18, v19, v20, v21, v22, v23, v24;
LABEL_19:
    v34 = v1;
    return v1;
  }

LABEL_12:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v17 + 32);
LABEL_15:
    v15 = v25;
    v17, v26, v27, v28, v29, v30, v31, v32;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10011A2A8()
{
  v1 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x4545524741, 0xE500000000000000);
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 setTitle:v4 forState:0];

  [v1 addTarget:v0 action:"didTapAgreeButton" forControlEvents:64];
  v12 = [v0 buttonTray];
  [v12 addButton:v1];

  v13 = [objc_opt_self() linkButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x4545524741534944, 0xE800000000000000);
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v15, v17, v18, v19, v20, v21, v22, v23;
  [v13 setTitle:v16 forState:0];

  [v13 addTarget:v0 action:"didTapDisagreeButton" forControlEvents:64];
  v24 = [v0 buttonTray];
  v33 = v13;
  [v24 addButton:v33];

  v25 = *&v0[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton];
  *&v0[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton] = v33;

  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5 && (v26 = objc_opt_self(), v27 = String._bridgeToObjectiveC()(), v28 = objc_msgSend(v26, "linkWithBundleIdentifier:", v27), v27, v28))
  {
    v29 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    [v28 setAllowsOpeningSafari:v29 ^ 1];
    v30 = [v0 buttonTray];
    v31 = v28;
    [v30 setPrivacyLinkController:v31];

    v32 = v1;
  }

  else
  {
    v32 = v33;
    v33 = v1;
  }
}

void sub_10011A604()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 1;
    sub_100033C7C();
    swift_unknownObjectRelease();
  }

  sub_10003C49C(&qword_1002018D0, &qword_100180840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
  v2 = objc_opt_self();
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  *(inited + 96) = sub_1000BA310();
  *(inited + 72) = isa;
  v4 = sub_1000D57AC(inited);
  swift_setDeallocating();
  sub_100073B40(inited + 32);
  v5 = Dictionary._bridgeToObjectiveC()().super.isa;
  v4, v6, v7, v8, v9, v10, v11, v12;
  [v2 sendAnalyticsWithEvent:11 payloadDict:v5];

  sub_1000EC128(0);
}

void sub_10011A808()
{
  v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton];
    v3 = v2;
    sub_100088E48(0, v2);
  }

  else
  {
    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 >= 6)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(Strong + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 0;
        sub_100033C7C();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1000EC128(1);
      *(swift_allocObject() + 16) = v0;
      v4 = *&v0[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton];
      v5 = v0;
      v6 = v4;
      sub_100088E48(0, v4);
    }
  }

  sub_10003C49C(&qword_1002018D0, &qword_100180840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v9;
  AnyHashable.init<A>(_:)();
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
  v10 = objc_opt_self();
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  *(inited + 96) = sub_1000BA310();
  *(inited + 72) = isa;
  v12 = sub_1000D57AC(inited);
  swift_setDeallocating();
  sub_100073B40(inited + 32);
  v13 = Dictionary._bridgeToObjectiveC()().super.isa;
  v12, v14, v15, v16, v17, v18, v19, v20;
  [v10 sendAnalyticsWithEvent:12 payloadDict:v13];
}

uint64_t sub_10011AB24(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 0;
    sub_100033C7C();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10011AC34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TermsAndConditionsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10011ACD8()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_10011AD18(uint64_t a1, DARootViewController *a2)
{
  v4 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v6, 1, 1, v9);
  v48 = a1;
  v49 = a2;
  v11 = String._bridgeToObjectiveC()();
  v13 = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v10 + 8))(v6, v9);
  }

  v15 = [objc_allocWithZone(IFSymbol) initWithSymbolName:v11 bundleURL:v13];

  v16 = [objc_allocWithZone(IFGraphicSymbolDescriptor) init];
  sub_10003C49C(&unk_1001FF8D8, &qword_100184ED0);
  v17 = swift_allocObject();
  v50 = xmmword_10017EC00;
  *(v17 + 16) = xmmword_10017EC00;
  v18 = [objc_allocWithZone(IFColor) initWithSystemColor:11];
  v19 = sub_10003E110(0, &qword_100201C70, IFColor_ptr);
  *(v17 + 56) = v19;
  *(v17 + 32) = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17, v21, v22, v23, v24, v25, v26, v27;
  [v16 setSymbolColors:isa];

  v28 = swift_allocObject();
  *(v28 + 16) = v50;
  v29 = [objc_allocWithZone(IFColor) initWithSystemColor:7];
  *(v28 + 56) = v19;
  *(v28 + 32) = v29;
  v30 = Array._bridgeToObjectiveC()().super.isa;
  v28, v31, v32, v33, v34, v35, v36, v37;
  [v16 setEnclosureColors:v30];

  [v16 setRenderingMode:3];
  v38 = 85.0;
  if (v8 == 1)
  {
    v38 = 60.0;
  }

  [v16 setSize:{v38, v38}];
  v39 = [v15 imageForGraphicSymbolDescriptor:v16];
  if (!v39)
  {
    v44 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v45 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_100056B7C(v48, v49, &v51);
      _os_log_impl(&_mh_execute_header, v45, v44, "Unable to create image for symbol %s", v46, 0xCu);
      sub_100044554(v47);
    }

    v43 = [objc_allocWithZone(UIImage) init];
    goto LABEL_11;
  }

  v40 = v39;
  result = [v39 CGImage];
  if (result)
  {
    v42 = result;
    v43 = [objc_allocWithZone(UIImage) initWithCGImage:result];

    v15 = v40;
    v16 = v42;
LABEL_11:

    return v43;
  }

  __break(1u);
  return result;
}

id sub_10011B358(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10011B498(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011C920();
  v5 = sub_10011C974();

  return Error<>._code.getter(a1, a2, v4, v5);
}

void sub_10011B4F0(uint64_t a1, DARootViewController *a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_delegate] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_diagnosticManager;
  *&v3[v6] = [objc_allocWithZone(DKDiagnosticManager) init];
  v7 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_connection;
  type metadata accessor for TimberLorryDevelopmentConnection(0);
  swift_allocObject();
  *&v3[v7] = sub_10005EEA4();
  v8 = &v3[OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_ticket];
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_10003C49C(&unk_100201EC0, &unk_100184C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;

  v11 = MobileGestalt_get_current_device();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  v13 = MobileGestalt_copy_deviceClass_obj();

  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v17;
  v18 = MobileGestalt_get_current_device();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  v20 = MobileGestalt_copy_marketingNameString_obj();

  if (v20)
  {
    a2, v21, v22, v23, v24, v25, v26, v27;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(inited + 80) = v28;
    *(inited + 88) = v30;
    v31 = sub_1000D5698(inited);
    swift_setDeallocating();
    sub_10003C49C(&qword_100201D00, &unk_10017F860);
    swift_arrayDestroy();
    v32 = sub_100121EC8(v31);
    v31, v33, v34, v35, v36, v37, v38, v39;
    v40 = objc_allocWithZone(DADeviceState);
    v41 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v32, v43, v44, v45, v46, v47, v48, v49;
    v50 = [v40 initWithSerialNumber:v41 attributes:isa];

    *&v3[OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state] = v50;
    v51.receiver = v3;
    v51.super_class = type metadata accessor for DeviceTimberLorryDevelopment();
    objc_msgSendSuper2(&v51, "init");
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10011B7C4()
{
  v1 = (*(v0 + 272) + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_ticket);
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 280) = v4;
  *v4 = v0;
  v4[1] = sub_10011B880;

  return sub_10005DAF4(v2, v3);
}

uint64_t sub_10011B880(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_10011C06C;
  }

  else
  {
    *(v4 + 296) = a1;
    v5 = sub_10011B9A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10011B9A8()
{
  v1 = v0[37];
  v2 = v0[34];
  sub_10003C49C(&qword_1002018D0, &qword_100180840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  v0[31] = 0x6574656D61726170;
  v0[32] = 0xEA00000000007372;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_10003C49C(&unk_1001FDF60, &qword_10017F870);
  *(inited + 72) = v1;
  v4 = sub_1000D57AC(inited);
  swift_setDeallocating();
  sub_10003DD84(inited + 32, &qword_1001FE6C0, &unk_100180660);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4, v6, v7, v8, v9, v10, v11, v12;
  v13 = [objc_opt_self() diagnosticParametersWithDictionary:isa];
  v0[38] = v13;

  v14 = *(v2 + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_diagnosticManager);
  v0[39] = sub_1000BA310();
  v15 = NSNumber.init(integerLiteral:)(8134).super.super.isa;
  v0[40] = v15;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_10011BC14;
  v16 = swift_continuation_init();
  v0[30] = sub_10003C49C(&qword_100201CF0, &unk_100184C20);
  v0[23] = _NSConcreteStackBlock;
  v0[24] = 1107296256;
  v0[25] = sub_10011C3B8;
  v0[26] = &unk_1001C7970;
  v0[27] = v16;
  [v14 beginDiagnosticWithIdentifier:v15 parameters:v13 completion:v0 + 23];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10011BC14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_10011C208;
  }

  else
  {
    v2 = sub_10011BD24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011BD24()
{
  v1 = *(v0 + 264);

  v2 = [v1 statusCode];
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v5 = *(v0 + 304);
    [*(*(v0 + 272) + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) setPhase:1];
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    if (qword_1001FC7A0 != -1)
    {
      swift_once();
    }

    v7 = qword_10020A4E8;
    v8 = os_log_type_enabled(qword_10020A4E8, v6);
    v9 = *(v0 + 304);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = [v1 statusCode];
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v7, v6, "8134 failed with status code %@", v10, 0xCu);
      sub_10003DD84(v11, &qword_1001FF0C0, &unk_10017ED00);
    }

    sub_10011C864();
    swift_allocError();
    swift_willThrow();

    v13 = static os_log_type_t.error.getter();
    if (qword_1001FC7A0 != -1)
    {
      swift_once();
    }

    v14 = qword_10020A4E8;
    if (os_log_type_enabled(qword_10020A4E8, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v14, v13, "Failed to claim case: %@", v15, 0xCu);
      sub_10003DD84(v16, &qword_1001FF0C0, &unk_10017ED00);
    }

    v18 = *(v0 + 272);
    v19 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state;
    [*(v18 + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) addErrorCode:0 userInfo:0];
    [*(v18 + v19) setPhase:1];
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10011C06C(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_1001FC7A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4E8;
  if (os_log_type_enabled(qword_10020A4E8, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v2, "Failed to claim case: %@", v4, 0xCu);
    sub_10003DD84(v5, &qword_1001FF0C0, &unk_10017ED00);
  }

  v7 = *(v1 + 272);
  v8 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state;
  [*(v7 + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) addErrorCode:0 userInfo:0];
  [*(v7 + v8) setPhase:1];

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_10011C208(uint64_t a1)
{
  v2 = v1[40];
  v3 = v1[38];
  swift_willThrow();

  v4 = static os_log_type_t.error.getter();
  if (qword_1001FC7A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10020A4E8;
  if (os_log_type_enabled(qword_10020A4E8, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v5, v4, "Failed to claim case: %@", v6, 0xCu);
    sub_10003DD84(v7, &qword_1001FF0C0, &unk_10017ED00);
  }

  v9 = v1[34];
  v10 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state;
  [*(v9 + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) addErrorCode:0 userInfo:0];
  [*(v9 + v10) setPhase:1];

  v11 = v1[1];

  return v11();
}

uint64_t sub_10011C3B8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000442A0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10003C49C(&qword_100201C30, &unk_100183150);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_10011C680(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeviceTimberLorryDevelopment();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10011C758()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_10011C798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_10011B7A4(a1, v4, v5, v6);
}

unint64_t sub_10011C864()
{
  result = qword_100201CF8;
  if (!qword_100201CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201CF8);
  }

  return result;
}

unint64_t sub_10011C8CC()
{
  result = qword_100201D08;
  if (!qword_100201D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201D08);
  }

  return result;
}

unint64_t sub_10011C920()
{
  result = qword_100201D10;
  if (!qword_100201D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201D10);
  }

  return result;
}

unint64_t sub_10011C974()
{
  result = qword_100201D18;
  if (!qword_100201D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201D18);
  }

  return result;
}

id sub_10011CAA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTableViewHeaderFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011CB38(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

void sub_10011CD28()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10003E110(0, &qword_1001FD3F0, UIScene_ptr);
  sub_10004A2B8();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v47;
    v3 = v48;
    v5 = v49;
    v6 = v50;
    v7 = v51;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while ([v16 activationState])
      {

        v6 = v14;
        v7 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v16 = v46;
          v14 = v6;
          v15 = v7;
          if (v46)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_10004A320(v4);
      v2, v39, v40, v41, v42, v43, v44, v45;
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (!v24)
      {
      }
    }

    else
    {
LABEL_19:
      sub_10004A320(v4);
      v2, v17, v18, v19, v20, v21, v22, v23;
      v24 = 0;
    }

    v25 = [v24 keyWindow];
    if (v25)
    {
      v26 = v25;
      v27 = objc_opt_self();
      v28 = v26;
      v29 = [v27 currentDevice];
      [v29 orientation];

      v30 = v28;
      [v30 bounds];
      CGRectGetHeight(v52);
      [v30 bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v53.origin.x = v32;
      v53.origin.y = v34;
      v53.size.width = v36;
      v53.size.height = v38;
      CGRectGetWidth(v53);
    }

    else
    {
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double sub_10011D0DC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1 && (sub_10003C49C(&qword_100201430, &qword_100184230), State.wrappedValue.getter(), (v3 & 1) != 0))
  {
    return 48.0;
  }

  else
  {
    return 24.0;
  }
}

double sub_10011D188()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1 && (sub_10003C49C(&qword_100201430, &qword_100184230), State.wrappedValue.getter(), (v4 & 1) != 0))
  {
    return 64.0;
  }

  else
  {
    return 32.0;
  }
}

void sub_10011D234()
{
  sub_10003C49C(&unk_1001FF8D8, &qword_100184ED0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  _StringGuts.grow(_:)(21);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  sub_10003C49C(&qword_100201430, &qword_100184230);
  State.wrappedValue.getter();
  if (v25)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v25)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);
  v9, v11, v12, v13, v14, v15, v16, v17;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x8000000100192F60;
  print(_:separator:terminator:)();
  v0, v18, v19, v20, v21, v22, v23, v24;
}

void sub_10011D368(char a1)
{
  sub_10003C49C(&qword_100201430, &qword_100184230);
  State.wrappedValue.setter();
  sub_10011D234();
}

void sub_10011D3D8()
{
  if (*(v0 + 104))
  {
    sub_10003C49C(&qword_100201430, &qword_100184230);
    State.wrappedValue.getter();
  }

  else
  {
    v1 = *(v0 + 96);
    v2 = v1 > 0x18;
    v3 = (1 << v1) & 0x1010100;
    if (!v2 && v3 != 0)
    {
      v5 = [objc_opt_self() sharedApplication];
      v6 = [v5 connectedScenes];

      sub_10003E110(0, &qword_1001FD3F0, UIScene_ptr);
      sub_10004A2B8();
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v7 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v8 = v42;
        v9 = v41;
        v10 = v43;
        v11 = v44;
        v12 = v45;
      }

      else
      {
        v13 = -1 << *(v7 + 32);
        v8 = v7 + 56;
        v10 = ~v13;
        v14 = -v13;
        if (v14 < 64)
        {
          v15 = ~(-1 << v14);
        }

        else
        {
          v15 = -1;
        }

        v12 = v15 & *(v7 + 56);

        v11 = 0;
        v9 = v7;
      }

      v39 = v10;
      v16 = (v10 + 64) >> 6;
      if (v9 < 0)
      {
        goto LABEL_20;
      }

LABEL_14:
      v17 = v11;
      v18 = v12;
      v19 = v11;
      if (v12)
      {
LABEL_18:
        v20 = (v18 - 1) & v18;
        v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
        if (v21)
        {
          while ([v21 activationState])
          {

            v11 = v19;
            v12 = v20;
            if ((v9 & 0x8000000000000000) == 0)
            {
              goto LABEL_14;
            }

LABEL_20:
            if (__CocoaSet.Iterator.next()())
            {
              swift_dynamicCast();
              v21 = v40;
              v19 = v11;
              v20 = v12;
              if (v40)
              {
                continue;
              }
            }

            goto LABEL_25;
          }

          sub_10004A320(v9);
          v7, v32, v33, v34, v35, v36, v37, v38;
          objc_opt_self();
          v29 = swift_dynamicCastObjCClass();
          if (!v29)
          {
          }
        }

        else
        {
LABEL_25:
          sub_10004A320(v9);
          v7, v22, v23, v24, v25, v26, v27, v28;
          v29 = 0;
        }

        v30 = [v29 keyWindow];
        if (v30)
        {
          v31 = v30;
          [v31 safeAreaInsets];
        }
      }

      else
      {
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v16)
          {
            goto LABEL_25;
          }

          v18 = *(v8 + 8 * v19);
          ++v17;
          if (v18)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }
    }
  }
}

id sub_10011D73C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  [v3 setContentMode:2];
  LODWORD(v4) = 1132068864;
  [v3 setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v3 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1132068864;
  result = [v3 setContentCompressionResistancePriority:0 forAxis:v7];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
  return result;
}

double sub_10011D808@<D0>(uint64_t a1@<X0>, void **a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[2];
  v4[5] = v2[3];
  v4[6] = v6;
  v4[7] = v7;
  *(v4 + 121) = *(v2 + 89);
  v9 = *v2;
  v10 = v2[1];
  v4[1] = v5;
  v4[2] = v9;
  v4[3] = v10;
  v4[4] = v8;
  (*(*(a1 - 8) + 16))(&v43, v2, a1);
  v34 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = sub_10003C4E4(&qword_100201DC8, &unk_100184E80);
  v12 = sub_10003C4E4(&qword_1001FF2A0, &qword_100181AE0);
  sub_10003C4E4(&qword_100201DD0, &qword_100184E90);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  v13 = type metadata accessor for ModifiedContent();
  v41 = sub_100120E30();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v43 = v13;
  v44 = &type metadata for Int;
  v45 = v14;
  v46 = &protocol witness table for Int;
  swift_getOpaqueTypeMetadata2();
  v15 = type metadata accessor for ModifiedContent();
  v16 = sub_10009DB54();
  v43 = v12;
  v44 = &type metadata for Int;
  v45 = v15;
  v46 = v16;
  v47 = &protocol witness table for Int;
  v17 = type metadata accessor for ForEach();
  v43 = v13;
  v44 = &type metadata for Int;
  v45 = v14;
  v46 = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = &protocol witness table for _OffsetEffect;
  v38 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v43 = &type metadata for Int;
  v44 = v17;
  v45 = &protocol witness table for Int;
  v46 = v18;
  v19 = type metadata accessor for TabView();
  v20 = type metadata accessor for PageTabViewStyle();
  v21 = swift_getWitnessTable();
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = &protocol witness table for PageTabViewStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = &protocol witness table for PageTabViewStyle;
  v23 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  v44 = &type metadata for Int;
  v45 = v23;
  v46 = &protocol witness table for Int;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = sub_10005C71C(&qword_100201E10, &qword_100201DC8, &unk_100184E80, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v43 = OpaqueTypeMetadata2;
  v44 = &type metadata for Int;
  v45 = v23;
  v46 = &protocol witness table for Int;
  v26 = swift_getOpaqueTypeConformance2();
  v43 = v11;
  v44 = v24;
  v45 = v25;
  v46 = v26;
  v27 = type metadata accessor for SubscriptionView();
  v28 = sub_10012102C(&qword_100201E18, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v29 = swift_getWitnessTable();
  v43 = v34;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  type metadata accessor for SubscriptionView();
  swift_getWitnessTable();
  v36 = GeometryReader.init(content:)();
  v37 = v30;
  v31 = type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  v32 = *(*(v31 - 8) + 16);
  v32(&v43, &v36, v31);

  v36 = v43;
  v37 = v44;
  v32(a2, &v36, v31);

  return result;
}

uint64_t sub_10011DDB4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v107 = a4;
  v112 = a3;
  v106 = a1;
  v110 = a5;
  v113 = type metadata accessor for NSNotificationCenter.Publisher();
  v109 = *(v113 - 8);
  __chkstk_darwin(v113);
  v108 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageTabViewStyle.IndexDisplayMode();
  __chkstk_darwin(v7 - 8);
  v104 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageTabViewStyle();
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v103 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10003C4E4(&qword_1001FF2A0, &qword_100181AE0);
  sub_10003C4E4(&qword_100201DD0, &qword_100184E90);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  v12 = type metadata accessor for ModifiedContent();
  v13 = sub_100120E30();
  WitnessTable = swift_getWitnessTable();
  v126 = v13;
  v127 = WitnessTable;
  v15 = swift_getWitnessTable();
  *&v118 = v12;
  *(&v118 + 1) = &type metadata for Int;
  v119 = v15;
  v120 = &protocol witness table for Int;
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for ModifiedContent();
  v17 = sub_10009DB54();
  *&v118 = v11;
  *(&v118 + 1) = &type metadata for Int;
  v119 = v16;
  v120 = v17;
  v121 = &protocol witness table for Int;
  v18 = type metadata accessor for ForEach();
  *&v118 = v12;
  *(&v118 + 1) = &type metadata for Int;
  v119 = v15;
  v120 = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = &protocol witness table for _OffsetEffect;
  v123 = swift_getWitnessTable();
  v85 = v18;
  v84 = swift_getWitnessTable();
  *&v118 = &type metadata for Int;
  *(&v118 + 1) = v18;
  v119 = &protocol witness table for Int;
  v120 = v84;
  v19 = type metadata accessor for TabView();
  v87 = *(v19 - 8);
  __chkstk_darwin(v19);
  v82 = &v76 - v20;
  v21 = swift_getWitnessTable();
  *&v118 = v19;
  v78 = v19;
  v77 = v9;
  *(&v118 + 1) = v9;
  v119 = v21;
  v22 = v21;
  v79 = v21;
  v120 = &protocol witness table for PageTabViewStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v111 = &v76 - v24;
  *&v118 = v19;
  *(&v118 + 1) = v9;
  v119 = v22;
  v120 = &protocol witness table for PageTabViewStyle;
  v25 = swift_getOpaqueTypeConformance2();
  *&v118 = OpaqueTypeMetadata2;
  v80 = OpaqueTypeMetadata2;
  *(&v118 + 1) = &type metadata for Int;
  v119 = v25;
  v81 = v25;
  v120 = &protocol witness table for Int;
  v26 = swift_getOpaqueTypeMetadata2();
  v88 = v26;
  v100 = *(v26 - 8);
  __chkstk_darwin(v26);
  v83 = &v76 - v27;
  v28 = sub_10003C4E4(&qword_100201DC8, &unk_100184E80);
  v91 = v28;
  v29 = sub_10005C71C(&qword_100201E10, &qword_100201DC8, &unk_100184E80, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v90 = v29;
  *&v118 = OpaqueTypeMetadata2;
  *(&v118 + 1) = &type metadata for Int;
  v119 = v25;
  v120 = &protocol witness table for Int;
  v89 = swift_getOpaqueTypeConformance2();
  *&v118 = v28;
  *(&v118 + 1) = v26;
  v119 = v29;
  v120 = v89;
  v30 = type metadata accessor for SubscriptionView();
  v96 = v30;
  v102 = *(v30 - 8);
  __chkstk_darwin(v30);
  v86 = &v76 - v31;
  v32 = sub_10012102C(&qword_100201E18, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v98 = v32;
  v101 = &protocol conformance descriptor for SubscriptionView<A, B>;
  v97 = swift_getWitnessTable();
  *&v118 = v113;
  *(&v118 + 1) = v30;
  v119 = v32;
  v120 = v97;
  v94 = type metadata accessor for SubscriptionView();
  v99 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v95 = &v76 - v35;
  v128 = *(a2 + 40);
  v122 = *(a2 + 40);
  sub_10003C49C(&qword_100201E20, &qword_100184EB8);
  State.projectedValue.getter();
  v36 = v112;
  v114 = v112;
  v37 = v107;
  v115 = v107;
  v116 = a2;
  v117 = v106;
  v38 = v82;
  TabView.init(selection:content:)();
  static PageTabViewStyle.IndexDisplayMode.automatic.getter();
  v39 = v103;
  PageTabViewStyle.init(indexDisplayMode:)();
  v40 = v78;
  v41 = v77;
  View.tabViewStyle<A>(_:)();
  (*(v105 + 8))(v39, v41);
  (*(v87 + 8))(v38, v40);
  v118 = v128;
  State.wrappedValue.getter();
  v42 = swift_allocObject();
  *(v42 + 16) = v36;
  *(v42 + 24) = v37;
  v43 = v37;
  v44 = a2[5];
  *(v42 + 96) = a2[4];
  *(v42 + 112) = v44;
  *(v42 + 121) = *(a2 + 89);
  v45 = a2[1];
  *(v42 + 32) = *a2;
  *(v42 + 48) = v45;
  v46 = a2[3];
  *(v42 + 64) = a2[2];
  *(v42 + 80) = v46;
  v48 = type metadata accessor for SelfServiceInstructionsPagerView(0, v36, v37, v47);
  v49 = *(v48 - 8);
  v50 = *(v49 + 16);
  v105 = v49 + 16;
  v106 = v48;
  v50(&v118, a2, v48);
  v51 = v83;
  v52 = v80;
  v53 = v111;
  View.onChange<A>(of:initial:_:)();

  (*(v93 + 8))(v53, v52);
  v118 = *(a2 + 24);
  sub_10003C49C(&qword_100201E28, &unk_100184EC0);
  State.wrappedValue.getter();
  v54 = swift_allocObject();
  *(v54 + 16) = v36;
  *(v54 + 24) = v43;
  v55 = a2[5];
  *(v54 + 96) = a2[4];
  *(v54 + 112) = v55;
  *(v54 + 121) = *(a2 + 89);
  v56 = a2[1];
  *(v54 + 32) = *a2;
  *(v54 + 48) = v56;
  v57 = a2[3];
  *(v54 + 64) = a2[2];
  *(v54 + 80) = v57;
  v50(&v118, a2, v48);
  v58 = v86;
  v59 = v88;
  View.onReceive<A>(_:perform:)();

  (*(v100 + 8))(v51, v59);
  v60 = [objc_opt_self() defaultCenter];
  v61 = v108;
  NSNotificationCenter.publisher(for:object:)();

  v62 = swift_allocObject();
  *(v62 + 16) = v112;
  *(v62 + 24) = v43;
  v63 = a2[5];
  *(v62 + 96) = a2[4];
  *(v62 + 112) = v63;
  *(v62 + 121) = *(a2 + 89);
  v64 = a2[1];
  *(v62 + 32) = *a2;
  *(v62 + 48) = v64;
  v65 = a2[3];
  *(v62 + 64) = a2[2];
  *(v62 + 80) = v65;
  v50(&v118, a2, v106);
  v66 = v92;
  v67 = v61;
  v68 = v96;
  v69 = v113;
  View.onReceive<A>(_:perform:)();

  (*(v109 + 8))(v67, v69);
  (*(v102 + 8))(v58, v68);
  v70 = v94;
  swift_getWitnessTable();
  v71 = v99;
  v72 = *(v99 + 16);
  v73 = v95;
  v72(v95, v66, v70);
  v74 = *(v71 + 8);
  v74(v66, v70);
  v72(v110, v73, v70);
  return (v74)(v73, v70);
}

uint64_t sub_10011ED08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v45 = a4;
  v42 = a2;
  v44 = type metadata accessor for GeometryProxy();
  v43 = *(v44 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v44);
  v9 = sub_10003C4E4(&qword_1001FF2A0, &qword_100181AE0);
  sub_10003C4E4(&qword_100201DD0, &qword_100184E90);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  v10 = type metadata accessor for ModifiedContent();
  v58 = sub_100120E30();
  WitnessTable = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v11 = type metadata accessor for ModifiedContent();
  v46 = v9;
  v51 = v9;
  v52 = &type metadata for Int;
  v53 = v11;
  v54 = sub_10009DB54();
  v38 = v54;
  v55 = &protocol witness table for Int;
  v12 = type metadata accessor for ForEach();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v37 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v16 = *(a1 + 88);
  v47 = a5;
  v41 = v10;
  v40 = v35 - v17;
  v39 = v11;
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v56 = 0;
    v57 = result;
    v35[1] = swift_getKeyPath();
    v19 = v43;
    v20 = v44;
    (*(v43 + 16))(v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v44);
    v21 = (*(v19 + 80) + 137) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    v23 = a3;
    v24 = v45;
    *(v22 + 24) = v45;
    v25 = *(a1 + 80);
    *(v22 + 96) = *(a1 + 64);
    *(v22 + 112) = v25;
    *(v22 + 121) = *(a1 + 89);
    v26 = *(a1 + 16);
    *(v22 + 32) = *a1;
    *(v22 + 48) = v26;
    v27 = *(a1 + 48);
    *(v22 + 64) = *(a1 + 32);
    *(v22 + 80) = v27;
    (*(v19 + 32))(v22 + v21, v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    v29 = type metadata accessor for SelfServiceInstructionsPagerView(0, v23, v24, v28);
    (*(*(v29 - 8) + 16))(&v51, a1, v29);
    v51 = v41;
    v52 = &type metadata for Int;
    v53 = v36;
    v54 = &protocol witness table for Int;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v50 = &protocol witness table for _OffsetEffect;
    v34 = swift_getWitnessTable();
    v30 = v37;
    ForEach<>.init(_:id:content:)();
    v48 = v34;
    swift_getWitnessTable();
    v31 = *(v13 + 16);
    v32 = v40;
    v31(v40, v30, v12);
    v33 = *(v13 + 8);
    v33(v30, v12);
    v31(v47, v32, v12);
    return (v33)(v32, v12);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011F330@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a3;
  v87 = sub_10003C49C(&qword_100201DE8, &qword_100184E98);
  __chkstk_darwin(v87);
  v12 = &v73 - v11;
  v13 = sub_10003C49C(&qword_100201DD0, &qword_100184E90);
  __chkstk_darwin(v13);
  v95 = &v73 - v14;
  v98 = a4;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v15 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v93 = v15;
  v91 = WitnessTable;
  type metadata accessor for _OverlayModifier();
  v96 = v13;
  v17 = type metadata accessor for ModifiedContent();
  v94 = *(v17 - 8);
  __chkstk_darwin(v17);
  p_opt_inst_meths = (&v73 - v18);
  v20 = sub_100120E30();
  v21 = swift_getWitnessTable();
  v82 = v20;
  v106[3] = v20;
  v106[4] = v21;
  v22 = swift_getWitnessTable();
  *&v107 = v17;
  *(&v107 + 1) = &type metadata for Int;
  v86 = v22;
  v108 = v22;
  v109 = &protocol witness table for Int;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v83 = &v73 - v24;
  v89 = v25;
  v26 = type metadata accessor for ModifiedContent();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  __chkstk_darwin(v28);
  v29 = *a1;
  v30 = *(a2 + 88);
  v97 = a6;
  v92 = v31;
  v90 = p_opt_inst_meths;
  v85 = &v73 - v32;
  v84 = v33;
  v80 = v29;
  if ((v30 & 0xC000000000000001) == 0)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v29 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v30 + 8 * v29 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_9;
  }

  v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v36 = v34;
  v79 = a5;
  v37 = type metadata accessor for SelfServiceInstructionsPagerView(0, v98, a5, v35);
  sub_10011D73C(v36, v106);

  v76 = v106[0];
  v75 = v106[1];
  v74 = v106[2];
  v112 = *(a2 + 56);
  v107 = *(a2 + 56);
  sub_10003C49C(&qword_100201430, &qword_100184230);
  State.wrappedValue.getter();
  v38 = LOBYTE(v101[0]);
  GeometryProxy.size.getter();
  p_opt_inst_meths = &OBJC_PROTOCOL___DKAssetResponder.opt_inst_meths;
  if (v38 != 1)
  {
    sub_10011D0DC();
    a5 = v37;
    goto LABEL_9;
  }

  sub_10011D188();
  a5 = v37;
  if (qword_1001FC828 != -1)
  {
    goto LABEL_17;
  }

LABEL_9:
  v107 = v112;
  State.wrappedValue.getter();
  v39 = LOBYTE(v101[0]);
  GeometryProxy.size.getter();
  v78 = v17;
  v77 = v27;
  v73 = a5;
  if (v39 == 1)
  {
    sub_10011D188();
  }

  else
  {
    sub_10011D0DC();
    if (p_opt_inst_meths[261] != -1)
    {
      swift_once();
    }
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v40 = v107;
  v41 = v108;
  v42 = v110;
  v43 = v111;
  v105 = BYTE8(v107);
  v103 = v109;
  v44 = *(a2 + 8);
  v45 = &v12[*(v87 + 36)];
  v46 = *(type metadata accessor for RoundedRectangle() + 20);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v48 = type metadata accessor for RoundedCornerStyle();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  *v45 = v44;
  *(v45 + 1) = v44;
  *&v45[*(sub_10003C49C(&qword_100200048, &qword_100186120) + 36)] = 256;
  v49 = v75;
  *v12 = v76;
  *(v12 + 1) = v49;
  *(v12 + 2) = v74;
  *(v12 + 3) = v40;
  v12[32] = v105;
  *(v12 + 33) = *v104;
  *(v12 + 9) = *&v104[3];
  *(v12 + 5) = v41;
  v12[48] = v103;
  *(v12 + 49) = *v102;
  *(v12 + 13) = *&v102[3];
  *(v12 + 7) = v42;
  *(v12 + 8) = v43;
  v50 = static Alignment.center.getter();
  v52 = v51;
  v53 = v95;
  v54 = &v95[*(v96 + 36)];
  v55 = v98;
  v56 = v79;
  sub_10011FDEC(a2, v54);
  v57 = (v54 + *(sub_10003C49C(&qword_100201E08, &qword_100184EB0) + 36));
  *v57 = v50;
  v57[1] = v52;
  v58 = sub_100121354(v12, v53);
  __chkstk_darwin(v58);
  *(&v73 - 4) = v55;
  *(&v73 - 3) = v56;
  v59 = v80;
  *(&v73 - 2) = a2;
  *(&v73 - 1) = v59;
  static Alignment.center.getter();
  v60 = v90;
  View.overlay<A>(alignment:content:)();
  sub_1001213D0(v53);
  v101[0] = v59;
  v61 = v83;
  v62 = v78;
  v63 = v86;
  sub_10002E3B4(v101, 1, v78, &type metadata for Int, v86);
  (*(v94 + 8))(v60, v62);
  sub_10011D3D8();
  sub_10011D3D8();
  v101[0] = v62;
  v101[1] = &type metadata for Int;
  v101[2] = v63;
  v101[3] = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v84;
  v66 = v89;
  View.offset(x:y:)();
  (*(v88 + 8))(v61, v66);
  v99 = OpaqueTypeConformance2;
  v100 = &protocol witness table for _OffsetEffect;
  v67 = v92;
  swift_getWitnessTable();
  v68 = v77;
  v69 = *(v77 + 16);
  v70 = v85;
  v69(v85, v65, v67);
  v71 = *(v68 + 8);
  v71(v65, v67);
  v69(v97, v70, v67);
  return (v71)(v70, v67);
}

uint64_t sub_10011FDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v9 = *(v8 + 28);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v6[v9], v10, v11);
  *v6 = v7;
  *(v6 + 1) = v7;
  v12 = static Color.black.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100121450(v6, a2);
  v13 = *&v24 * 0.5;
  v14 = a2 + *(sub_10003C49C(&qword_100201E48, &qword_100184F08) + 68);
  sub_100121450(v6, v14);
  *(v14 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v13;
  v15 = v14 + *(sub_10003C49C(&qword_100201E50, &qword_100184F10) + 36);
  v16 = v25;
  *v15 = v24;
  *(v15 + 16) = v16;
  *(v15 + 32) = v26;
  v17 = sub_10003C49C(&qword_100201E58, &qword_100184F18);
  *(v14 + *(v17 + 52)) = v12;
  *(v14 + *(v17 + 56)) = 256;
  v18 = static Alignment.center.getter();
  v20 = v19;
  sub_1001214B4(v6);
  result = sub_10003C49C(&unk_100201E60, &unk_100184F20);
  v22 = (v14 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_10011FFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v20 = a5;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for VStack();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  static HorizontalAlignment.trailing.getter();
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v12, v9);
  v17 = *(v10 + 8);
  v17(v12, v9);
  v16(v20, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_10012021C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for HStack();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v20 - v14;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a1;
  v20[7] = a2;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  v17 = *(v10 + 16);
  v17(v15, v12, v9);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v22 = 0;
  v23 = 1;
  v24[0] = &v22;
  v17(v12, v15, v9);
  v24[1] = v12;
  v21[0] = &type metadata for Spacer;
  v21[1] = v9;
  v20[8] = &protocol witness table for Spacer;
  v20[9] = WitnessTable;
  sub_10011CB38(v24, 2uLL, v21);
  v18(v15, v9);
  return (v18)(v12, v9);
}

uint64_t sub_10012047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v18 - v11;
  (*(v13 + 72))(v14, v10);
  v15 = *(v6 + 16);
  v15(v12, v8, a3);
  v16 = *(v6 + 8);
  v16(v8, a3);
  v15(v8, v12, a3);
  v20 = 0;
  v21 = 1;
  v22[0] = v8;
  v22[1] = &v20;
  v19[0] = a3;
  v19[1] = &type metadata for Spacer;
  v18[0] = a4;
  v18[1] = &protocol witness table for Spacer;
  sub_10011CB38(v22, 2uLL, v19);
  v16(v12, a3);
  return (v16)(v8, a3);
}

uint64_t sub_100120628()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FF698, &qword_100181EA0);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  sub_10003E110(0, &qword_100201E38, NSTimer_ptr);
  v5 = [objc_opt_self() mainRunLoop];
  v6 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_10003DD84(v4, &qword_1001FF698, &qword_100181EA0);
  *&v11 = v7;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_10012102C(&qword_100201E40, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v8 = ConnectablePublisher.autoconnect()();

  v11 = *(v1 + 24);
  v10[1] = v8;
  sub_10003C49C(&qword_100201E28, &unk_100184EC0);
  return State.wrappedValue.setter();
}

double sub_100120818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_100120888()
{
  v1 = v0;
  v9 = *(v0 + 40);
  v10 = v9;
  v11 = *(&v9 + 1);
  sub_100121160(&v11, &v8);
  sub_10003C49C(&qword_100201E20, &qword_100184EB8);
  v2 = &v9;
  State.wrappedValue.getter();
  v3 = (v8 + 1);
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = v10;
    State.wrappedValue.getter();
    v2 = v8;
    v4 = *(v1 + 88);
    if (!(v4 >> 62))
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
LABEL_4:
  if (v2 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v9 = v10;
  v8 = v6;
  State.wrappedValue.setter();
  return sub_10003DD84(&v10, &qword_100201E20, &qword_100184EB8);
}

void sub_10012098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 104))
  {
    v39 = a3;
    v40 = a4;
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 connectedScenes];

    sub_10003E110(0, &qword_1001FD3F0, UIScene_ptr);
    sub_10004A2B8();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v6 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v8 = v42;
      v7 = v43;
      v10 = v44;
      v9 = v45;
      v11 = v46;
    }

    else
    {
      v12 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v10 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v6 + 56);

      v9 = 0;
      v8 = v6;
    }

    v15 = (v10 + 64) >> 6;
    if (v8 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v16 = v9;
    v17 = v11;
    v18 = v9;
    if (v11)
    {
LABEL_13:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (v20)
      {
        while ([v20 activationState])
        {

          v9 = v18;
          v11 = v19;
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          if (__CocoaSet.Iterator.next()())
          {
            swift_dynamicCast();
            v20 = v41;
            v18 = v9;
            v19 = v11;
            if (v41)
            {
              continue;
            }
          }

          goto LABEL_20;
        }

        sub_10004A320(v8);
        v6, v28, v29, v30, v31, v32, v33, v34;
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v36 = [v35 effectiveGeometry];
          v37 = [v36 interfaceOrientation];

          LOBYTE(v36) = sub_1000FD35C(v37);
          type metadata accessor for SelfServiceInstructionsPagerView(0, v39, v40, v38);
          sub_10011D368(v36);
        }
      }

      else
      {
LABEL_20:
        sub_10004A320(v8);
        v6, v21, v22, v23, v24, v25, v26, v27;
      }
    }

    else
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          goto LABEL_20;
        }

        v17 = *(v7 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100120CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100120CF4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100120D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100120D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100120E30()
{
  result = qword_100201DD8;
  if (!qword_100201DD8)
  {
    sub_10003C4E4(&qword_100201DD0, &qword_100184E90);
    sub_100120EE8();
    sub_10005C71C(&qword_100201E00, &qword_100201E08, &qword_100184EB0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201DD8);
  }

  return result;
}

unint64_t sub_100120EE8()
{
  result = qword_100201DE0;
  if (!qword_100201DE0)
  {
    sub_10003C4E4(&qword_100201DE8, &qword_100184E98);
    sub_100120FA0();
    sub_10005C71C(&qword_1002000B0, &qword_100200048, &qword_100186120, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201DE0);
  }

  return result;
}

unint64_t sub_100120FA0()
{
  result = qword_100201DF0;
  if (!qword_100201DF0)
  {
    sub_10003C4E4(&qword_100201DF8, &unk_100184EA0);
    sub_10005C6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201DF0);
  }

  return result;
}

uint64_t sub_10012102C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001210BC()
{

  *(v0 + 120), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 137, 7, v8);
}

uint64_t sub_100121160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201E30, qword_100184ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001211D0()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 137) & ~v3;
  v5 = *(v2 + 64);

  *(v0 + 120), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7, v13);
}

uint64_t sub_1001212BC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for GeometryProxy() - 8);
  v8 = v2 + ((*(v7 + 80) + 137) & ~*(v7 + 80));

  return sub_10011F330(a1, v2 + 32, v8, v5, v6, a2);
}

uint64_t sub_100121354(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201DE8, &qword_100184E98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001213D0(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_100201DD0, &qword_100184E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100121450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001214B4(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100121510(uint64_t *a1)
{
  type metadata accessor for NSNotificationCenter.Publisher();
  sub_10003C4E4(&qword_100201DC8, &unk_100184E80);
  sub_10003C4E4(&qword_1001FF2A0, &qword_100181AE0);
  sub_10003C4E4(&qword_100201DD0, &qword_100184E90);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  sub_100120E30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  sub_10009DB54();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for TabView();
  type metadata accessor for PageTabViewStyle();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10005C71C(&qword_100201E10, &qword_100201DC8, &unk_100184E80, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for SubscriptionView();
  sub_10012102C(&qword_100201E18, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  swift_getWitnessTable();
  type metadata accessor for SubscriptionView();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  return swift_getWitnessTable();
}

uint64_t sub_1001219AC(unsigned __int8 a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xEF6C6562614C6275;
  v9 = 0x487972616D697270;
  v10 = a1;
  v11 = 0x614C72656B6E6974;
  v12 = 0xEB000000006C6562;
  if (a1 == 4)
  {
    v11 = 0x487972616D697270;
    v12 = 0xEF6C6562614C6275;
  }

  if (a1 == 3)
  {
    v13 = 0xD00000000000001BLL;
  }

  else
  {
    v13 = v11;
  }

  if (a1 == 3)
  {
    v12 = 0x8000000100188950;
  }

  v14 = 0x80000001001888F0;
  v15 = 0x8000000100188910;
  if (a1 == 1)
  {
    v16 = 0xD000000000000010;
  }

  else
  {
    v16 = 0xD000000000000011;
  }

  if (a1 != 1)
  {
    v15 = 0x8000000100188930;
  }

  if (a1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0xD000000000000010;
  }

  if (v10)
  {
    v14 = v15;
  }

  if (v10 <= 2)
  {
    v18 = v14;
  }

  else
  {
    v17 = v13;
    v18 = v12;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0x8000000100188950;
      v9 = 0xD00000000000001BLL;
    }

    else if (a2 != 4)
    {
      v9 = 0x614C72656B6E6974;
      v8 = 0xEB000000006C6562;
      if (v17 != 0x614C72656B6E6974)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (v17 != v9)
    {
LABEL_37:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_38;
    }
  }

  else
  {
    if (!a2)
    {
      v8 = 0x80000001001888F0;
LABEL_30:
      v9 = 0xD000000000000010;
      if (v17 != 0xD000000000000010)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v8 = 0x8000000100188910;
      goto LABEL_30;
    }

    v8 = 0x8000000100188930;
    v9 = 0xD000000000000011;
    if (v17 != 0xD000000000000011)
    {
      goto LABEL_37;
    }
  }

LABEL_34:
  if (v18 != v8)
  {
    goto LABEL_37;
  }

  v19 = 1;
LABEL_38:
  v18, a2, v9, v16, a5, a6, a7, a8;
  v8, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_100121B60(char a1, char a2)
{
  if (qword_100185118[a1] == qword_100185118[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_100121BC8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = 0xEF6C6562614C6275;
  if (a1 != 4)
  {
    v2 = 0xEB000000006C6562;
  }

  if (a1 == 3)
  {
    v2 = 0x8000000100188950;
  }

  v3 = 0x80000001001888F0;
  v4 = 0x8000000100188910;
  if (a1 != 1)
  {
    v4 = 0x8000000100188930;
  }

  if (a1)
  {
    v3 = v4;
  }

  if (a1 <= 2u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

Swift::Int sub_100121CF8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  v3 = 0xEF6C6562614C6275;
  if (a2 != 4)
  {
    v3 = 0xEB000000006C6562;
  }

  if (a2 == 3)
  {
    v3 = 0x8000000100188950;
  }

  v4 = 0x80000001001888F0;
  v5 = 0x8000000100188910;
  if (a2 != 1)
  {
    v5 = 0x8000000100188930;
  }

  if (a2)
  {
    v4 = v5;
  }

  if (a2 <= 2u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

BOOL sub_100121E24(uint64_t a1, uint64_t a2)
{
  if (qword_1001FC830 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v3 = qword_100201E70;
  v4 = sub_100150974(a1, qword_100201E70);
  if (v5)
  {
    return 0;
  }

  v7 = v4;
  v8 = sub_100150974(a2, v3);
  return (v9 & 1) != 0 || v7 < v8;
}

unint64_t sub_100121EC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10003C49C(&qword_100201F00, &qword_100185000);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (*(a1 + 48) + ((v13 << 10) | (16 * v14)));
        v17 = *v15;
        v16 = v15[1];

        swift_dynamicCast();
        sub_100049EFC(&v29, v31);
        sub_100049EFC(v31, v32);
        sub_100049EFC(v32, &v30);
        result = sub_100064AFC(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;
          v10, v18, v19, v20, v21, v22, v23, v24;
          v12 = (v2[7] + 32 * v11);
          sub_100044554(v12);
          result = sub_100049EFC(&v30, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v25 = (v2[6] + 16 * result);
          *v25 = v17;
          v25[1] = v16;
          result = sub_100049EFC(&v30, (v2[7] + 32 * result));
          v26 = v2[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_21;
          }

          v2[2] = v28;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100122120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10003C49C(&unk_100201ED0, &qword_100184FF8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        sub_10003C49C(&unk_1001FD010, &unk_10017EED0);
        swift_dynamicCast();
        result = sub_100064AFC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v16;
          v9[1] = v15;
          v11 = result;
          v10, v17, v18, v19, v20, v21, v22, v23;
          *(v2[7] + 8 * v11) = v28;
          result = swift_unknownObjectRelease();
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v24 = (v2[6] + 16 * result);
          *v24 = v16;
          v24[1] = v15;
          *(v2[7] + 8 * result) = v28;
          v25 = v2[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_21;
          }

          v2[2] = v27;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10012235C(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xEF6C6562614C6275;
  if (v2 != 4)
  {
    v3 = 0xEB000000006C6562;
  }

  if (v2 == 3)
  {
    v3 = 0x8000000100188950;
  }

  v4 = 0x80000001001888F0;
  v5 = 0x8000000100188910;
  if (v2 != 1)
  {
    v5 = 0x8000000100188930;
  }

  if (*v1)
  {
    v4 = v5;
  }

  if (*v1 <= 2u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  String.hash(into:)();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

unint64_t sub_10012247C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001253E8(*a1);
  *a2 = result;
  return result;
}

void sub_1001224AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6C6562614C6275;
  v4 = 0x487972616D697270;
  if (v2 != 4)
  {
    v4 = 0x614C72656B6E6974;
    v3 = 0xEB000000006C6562;
  }

  if (v2 == 3)
  {
    v4 = 0xD00000000000001BLL;
    v3 = 0x8000000100188950;
  }

  v5 = 0xD000000000000010;
  v6 = 0x80000001001888F0;
  v7 = 0xD000000000000010;
  v8 = 0x8000000100188910;
  if (v2 != 1)
  {
    v7 = 0xD000000000000011;
    v8 = 0x8000000100188930;
  }

  if (*v1)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_100122594(uint64_t a1)
{
  v3 = type metadata accessor for TargetDevice();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_10003C49C(&qword_100201B80, qword_100184A68);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100044704(v1 + v13, v12, &qword_1001FFE10, qword_100181340);
  sub_100044704(a1, &v12[v14], &qword_1001FFE10, qword_100181340);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_10003DD84(v12, &qword_1001FFE10, qword_100181340);
      return;
    }

    goto LABEL_6;
  }

  sub_100044704(v12, v8, &qword_1001FFE10, qword_100181340);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_10003DD84(v12, &qword_100201B80, qword_100184A68);
LABEL_7:
    sub_100122E00();
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_1001251D8(&qword_100201EE0, &type metadata accessor for TargetDevice, &protocol conformance descriptor for TargetDevice);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_10003DD84(v12, &qword_1001FFE10, qword_100181340);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1001229B0()
{
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView;
  v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView);
  *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView) = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v4 setAxis:0];

  v5 = *(v0 + v2);
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v5 setAlignment:3];
  v6 = *(v0 + v2);
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v6 setSpacing:0.0];
  v7 = [objc_allocWithZone(UIImageView) init];
  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView);
  *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView) = v7;

  v9 = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView;
  v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView);
  *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView) = v9;
  v12 = v9;

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v12 setAxis:1];

  v13 = *(v0 + v10);
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v13 setSpacing:2.0];
}

void sub_100122AFC()
{
  v1 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView;
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017EDA0;
  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = [v6 widthAnchor];
  v8 = [v7 constraintEqualToConstant:*&v0[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 40]];

  *(v5 + 32) = v8;
  v9 = *&v0[v1];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = [v9 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  v13 = *&v0[v1];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = [v13 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v5 + 48) = v16;
  v17 = *&v0[v1];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = [v17 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v5 + 56) = v20;
  v21 = *&v0[v1];
  if (!v21)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v22 = objc_opt_self();
  v23 = [v21 heightAnchor];
  v24 = [v0 heightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v5 + 64) = v25;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5, v26, v27, v28, v29, v30, v31, v32;
  [v22 activateConstraints:isa];
}

void sub_100122E00()
{
  v1 = type metadata accessor for TargetDevice.Status();
  v270 = *(v1 - 8);
  v271 = v1;
  __chkstk_darwin(v1);
  v269 = &v268 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v3 - 8);
  v277 = (&v268 - v4);
  v5 = type metadata accessor for TargetDevice();
  v274 = *(v5 - 8);
  v275 = v5;
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v268 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = v0;
  v272 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView;
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView];
  if (!v9)
  {
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v10 = [v9 subviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v276 = v8;
  if (v11 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v21 = *(v11 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v21 removeFromSuperview];

      ++v20;
      if (v23 == i)
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
  v11, v12, v13, v14, v15, v16, v17, v18;
  v24 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView;
  v25 = *&v278[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView];
  if (!v25)
  {
    goto LABEL_168;
  }

  v26 = [v25 subviews];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v273 = v24;
  if (v27 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v36 = 0;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v37 = *(v27 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v37 removeFromSuperview];

      ++v36;
      if (v39 == j)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
  v27, v28, v29, v30, v31, v32, v33, v34;
  v40 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView;
  v41 = v278;
  v42 = *&v278[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView];
  if (!v42)
  {
    goto LABEL_169;
  }

  [v42 setImage:0];
  v43 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
  swift_beginAccess();
  v44 = &v41[v43];
  v45 = v277;
  sub_100044704(v44, v277, &qword_1001FFE10, qword_100181340);
  v46 = v274;
  v47 = v45;
  v48 = v275;
  if ((*(v274 + 48))(v47, 1, v275) == 1)
  {
    sub_10003DD84(v277, &qword_1001FFE10, qword_100181340);
    return;
  }

  (*(v46 + 32))(v276, v277, v48);
  v49 = v272;
  v50 = *&v272[v41];
  if (!v50)
  {
    goto LABEL_170;
  }

  if (!*&v41[v40])
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  [v50 addArrangedSubview:?];
  v51 = *&v49[v41];
  v52 = v276;
  if (!v51)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v53 = v273;
  if (!*&v41[v273])
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v54 = v41;
  [v51 addArrangedSubview:?];
  v55 = [objc_opt_self() sharedInstance];
  v56 = sub_1001242CC();
  sub_10003C49C(&unk_1001FD010, &unk_10017EED0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v56, v58, v59, v60, v61, v62, v63, v64;
  v65 = swift_allocObject();
  *(v65 + 16) = v54;
  aBlock[4] = sub_10012491C;
  aBlock[5] = v65;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072168;
  aBlock[3] = &unk_1001C7C28;
  v66 = _Block_copy(aBlock);
  v67 = v54;

  [v55 deviceImageViewForDeviceStateAttributes:isa completion:v66];
  _Block_release(v66);

  v68 = [objc_allocWithZone(UILabel) init];
  TargetDevice.userAssignedName.getter();
  v70 = v69;
  v71 = String._bridgeToObjectiveC()();
  v70, v72, v73, v74, v75, v76, v77, v78;
  [v68 setText:v71];

  v79 = &v67[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
  [v68 setFont:*&v67[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 8]];
  [v68 setTextColor:v79[2]];
  v80 = *&v54[v53];
  if (!v80)
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v272 = v68;
  [v80 addArrangedSubview:v68];
  v81 = *v79;
  v82 = *(*v79 + 16);
  v277 = v79;
  if (!v82)
  {
    goto LABEL_61;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v83 = Hasher._finalize()();
  v91 = -1 << *(v81 + 32);
  v92 = v83 & ~v91;
  if (((*(v81 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
  {
    v81, v84, v85, v86, v87, v88, v89, v90;
    goto LABEL_61;
  }

  v93 = ~v91;
  while (1)
  {
    v94 = *(*(v81 + 48) + v92);
    if (v94 > 2)
    {
      if (v94 == 3)
      {
        v95 = 0x8000000100188950;
      }

      else if (v94 == 4)
      {
        v95 = 0xEF6C6562614C6275;
      }

      else
      {
        v95 = 0xEB000000006C6562;
      }

      goto LABEL_53;
    }

    if (*(*(v81 + 48) + v92))
    {
      v95 = 0x8000000100188910;
      if (v94 != 1)
      {
        v95 = 0x8000000100188930;
        goto LABEL_53;
      }
    }

    else
    {
      v95 = 0x80000001001888F0;
    }

    if (0x8000000100188910 == v95)
    {
      break;
    }

LABEL_53:
    v96 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v95, v97, v98, v99, v100, v101, v102, v103;
    if (v96)
    {
      v104 = v81;
      goto LABEL_59;
    }

    v92 = (v92 + 1) & v93;
    if (((*(v81 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
    {
      v81, v84, v85, v86, v87, v88, v89, v90;
      v52 = v276;
      v79 = v277;
      goto LABEL_61;
    }
  }

  v81, v84, v85, v86, v87, v88, v89, v90;
  v104 = v95;
LABEL_59:
  v104, v84, v85, v86, v87, v88, v89, v90;
  v105 = [objc_allocWithZone(UILabel) init];
  v52 = v276;
  TargetDevice.deviceClass.getter();
  v107 = v106;
  v108 = String._bridgeToObjectiveC()();
  v107, v109, v110, v111, v112, v113, v114, v115;
  [v105 setText:v108];

  v79 = v277;
  [v105 setFont:v277[3]];
  [v105 setTextColor:v79[4]];
  v116 = *&v278[v273];
  if (!v116)
  {
    goto LABEL_175;
  }

  [v116 addArrangedSubview:v105];

LABEL_61:
  v117 = *v79;
  if (!*(*v79 + 16))
  {
    goto LABEL_89;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v118 = Hasher._finalize()();
  v126 = -1 << *(v117 + 32);
  v127 = v118 & ~v126;
  if (((*(v117 + 56 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
  {
    v117, v119, v120, v121, v122, v123, v124, v125;
    goto LABEL_89;
  }

  v128 = ~v126;
  while (2)
  {
    v129 = *(*(v117 + 48) + v127);
    if (v129 > 2)
    {
      if (v129 == 3)
      {
        v130 = 0x8000000100188950;
      }

      else if (v129 == 4)
      {
        v130 = 0xEF6C6562614C6275;
      }

      else
      {
        v130 = 0xEB000000006C6562;
      }

      goto LABEL_78;
    }

    if (*(*(v117 + 48) + v127))
    {
      if (v129 == 1)
      {
        v130 = 0x8000000100188910;
        goto LABEL_74;
      }

      v130 = 0x8000000100188930;
LABEL_78:
      v131 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v130, v132, v133, v134, v135, v136, v137, v138;
      if (v131)
      {
        v139 = v117;
        goto LABEL_84;
      }

      v127 = (v127 + 1) & v128;
      if (((*(v117 + 56 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
      {
        v117, v119, v120, v121, v122, v123, v124, v125;
        v52 = v276;
        v79 = v277;
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  v130 = 0x80000001001888F0;
LABEL_74:
  if (0x80000001001888F0 != v130)
  {
    goto LABEL_78;
  }

  v117, v119, v120, v121, v122, v123, v124, v125;
  v139 = v130;
LABEL_84:
  v139, v119, v120, v121, v122, v123, v124, v125;
  v140 = [objc_allocWithZone(UILabel) init];
  v52 = v276;
  TargetDevice.marketingName.getter();
  v79 = v277;
  if (v141)
  {
    v142 = v141;
    v143 = String._bridgeToObjectiveC()();
    v142, v144, v145, v146, v147, v148, v149, v150;
  }

  else
  {
    v143 = 0;
  }

  [v140 setText:v143];

  [v140 setFont:v79[3]];
  [v140 setTextColor:v79[4]];
  v151 = *&v278[v273];
  if (!v151)
  {
    goto LABEL_176;
  }

  [v151 addArrangedSubview:v140];

LABEL_89:
  v152 = *v79;
  if (!*(*v79 + 16))
  {
    goto LABEL_121;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v153 = Hasher._finalize()();
  v161 = -1 << *(v152 + 32);
  v162 = v153 & ~v161;
  if (((*(v152 + 56 + ((v162 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v162) & 1) == 0)
  {
    v152, v154, v155, v156, v157, v158, v159, v160;
    goto LABEL_121;
  }

  v163 = ~v161;
  while (2)
  {
    v164 = *(*(v152 + 48) + v162);
    if (v164 > 2)
    {
      if (v164 == 3)
      {
        v165 = 0x8000000100188950;
      }

      else if (v164 == 4)
      {
        v165 = 0xEF6C6562614C6275;
      }

      else
      {
        v165 = 0xEB000000006C6562;
      }

LABEL_104:
      v166 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v165, v167, v168, v169, v170, v171, v172, v173;
      if (v166)
      {
        goto LABEL_109;
      }

      v162 = (v162 + 1) & v163;
      if (((*(v152 + 56 + ((v162 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v162) & 1) == 0)
      {
        v152, v154, v155, v156, v157, v158, v159, v160;
        v52 = v276;
        v79 = v277;
        goto LABEL_121;
      }

      continue;
    }

    break;
  }

  if (!*(*(v152 + 48) + v162))
  {
    v165 = 0x80000001001888F0;
    goto LABEL_104;
  }

  if (v164 == 1)
  {
    v165 = 0x8000000100188910;
    goto LABEL_104;
  }

  v152, v154, v155, v156, v157, v158, v159, v160;
  v152 = 0x8000000100188930;
LABEL_109:
  v152, v154, v155, v156, v157, v158, v159, v160;
  v174 = [objc_allocWithZone(UILabel) init];
  v175 = v269;
  v52 = v276;
  TargetDevice.status.getter();
  v177 = v270;
  v176 = v271;
  v178 = (*(v270 + 88))(v175, v271);
  v79 = v277;
  if (v178 == enum case for TargetDevice.Status.ready(_:))
  {
    v179 = 0;
    goto LABEL_119;
  }

  if (v178 == enum case for TargetDevice.Status.waiting(_:))
  {
    v180 = 0x495443454E4E4F43;
    v181 = 0xEA0000000000474ELL;
    goto LABEL_118;
  }

  if (v178 == enum case for TargetDevice.Status.unavailable(_:))
  {
    v180 = 0x414C494156414E55;
    v182 = 4541506;
LABEL_117:
    v181 = (v182 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
LABEL_118:
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v180, v181);
    v184 = v183;
    v179 = String._bridgeToObjectiveC()();
    v184, v185, v186, v187, v188, v189, v190, v191;
  }

  else
  {
    if (v178 == enum case for TargetDevice.Status.unsupported(_:))
    {
      v180 = 0x524F505055534E55;
      v182 = 4474196;
      goto LABEL_117;
    }

    (*(v177 + 8))(v175, v176);
    v179 = 0;
  }

LABEL_119:
  [v174 setText:v179];

  [v174 setFont:v79[3]];
  [v174 setTextColor:v79[4]];
  v192 = *&v278[v273];
  if (!v192)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  [v192 addArrangedSubview:v174];

LABEL_121:
  v193 = *v79;
  if (!*(*v79 + 16))
  {
    goto LABEL_142;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v194 = Hasher._finalize()();
  v202 = -1 << *(v193 + 32);
  v203 = v194 & ~v202;
  if (((*(v193 + 56 + ((v203 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v203) & 1) == 0)
  {
    v193, v195, v196, v197, v198, v199, v200, v201;
    goto LABEL_142;
  }

  v204 = ~v202;
  while (2)
  {
    v205 = *(*(v193 + 48) + v203);
    if (v205 <= 2)
    {
      if (*(*(v193 + 48) + v203))
      {
        if (v205 == 1)
        {
          v206 = 0x8000000100188910;
        }

        else
        {
          v206 = 0x8000000100188930;
        }
      }

      else
      {
        v206 = 0x80000001001888F0;
      }

LABEL_134:
      v207 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v206, v208, v209, v210, v211, v212, v213, v214;
      if (v207)
      {
        goto LABEL_139;
      }

      v203 = (v203 + 1) & v204;
      if (((*(v193 + 56 + ((v203 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v203) & 1) == 0)
      {
        v193, v195, v196, v197, v198, v199, v200, v201;
        v52 = v276;
        v79 = v277;
        goto LABEL_142;
      }

      continue;
    }

    break;
  }

  v206 = 0xEF6C6562614C6275;
  if (v205 == 4)
  {
    goto LABEL_134;
  }

  if (v205 == 5)
  {
    v206 = 0xEB000000006C6562;
    goto LABEL_134;
  }

  v193, v195, v196, v197, v198, v199, v200, v201;
  v193 = 0x8000000100188950;
LABEL_139:
  v193, v195, v196, v197, v198, v199, v200, v201;
  v52 = v276;
  v215 = TargetDevice.isLocal.getter();
  v79 = v277;
  if (v215)
  {
    v216 = [objc_allocWithZone(UILabel) init];
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000025, 0x8000000100193030);
    v218 = v217;
    v219 = String._bridgeToObjectiveC()();
    v218, v220, v221, v222, v223, v224, v225, v226;
    [v216 setText:v219];

    [v216 setFont:v79[3]];
    v227 = [objc_opt_self() secondaryLabelColor];
    [v216 setTextColor:v227];

    v228 = *&v278[v273];
    if (v228)
    {
      [v228 addArrangedSubview:v216];

      goto LABEL_142;
    }

LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

LABEL_142:
  v229 = *v79;
  if (!*(*v79 + 16))
  {
LABEL_160:

    (*(v274 + 8))(v52, v275);
    return;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v230 = Hasher._finalize()();
  v238 = -1 << *(v229 + 32);
  v239 = v230 & ~v238;
  if (((*(v229 + 56 + ((v239 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v239) & 1) == 0)
  {
    v229, v231, v232, v233, v234, v235, v236, v237;
    goto LABEL_160;
  }

  v240 = ~v238;
  while (1)
  {
    v241 = *(*(v229 + 48) + v239);
    if (v241 > 2)
    {
      break;
    }

    if (*(*(v229 + 48) + v239))
    {
      if (v241 == 1)
      {
        v242 = 0x8000000100188910;
      }

      else
      {
        v242 = 0x8000000100188930;
      }
    }

    else
    {
      v242 = 0x80000001001888F0;
    }

LABEL_156:
    v243 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v242, v244, v245, v246, v247, v248, v249, v250;
    if (v243)
    {
      goto LABEL_162;
    }

    v239 = (v239 + 1) & v240;
    if (((*(v229 + 56 + ((v239 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v239) & 1) == 0)
    {
      v229, v231, v232, v233, v234, v235, v236, v237;

      (*(v274 + 8))(v276, v275);
      return;
    }
  }

  if (v241 == 3)
  {
    v242 = 0x8000000100188950;
    goto LABEL_156;
  }

  v242 = 0xEB000000006C6562;
  if (v241 == 5)
  {
    goto LABEL_156;
  }

  v229, v231, v232, v233, v234, v235, v236, v237;
  v229 = 0xEF6C6562614C6275;
LABEL_162:
  v229, v231, v232, v233, v234, v235, v236, v237;
  v251 = v276;
  v252 = TargetDevice.isPrimaryHomeHub.getter();
  v253 = v273;
  v254 = v277;
  if (v252)
  {
    v255 = [objc_allocWithZone(UILabel) init];
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002ELL, 0x8000000100193000);
    v257 = v256;
    v258 = String._bridgeToObjectiveC()();
    v257, v259, v260, v261, v262, v263, v264, v265;
    [v255 setText:v258];

    [v255 setFont:*(v254 + 24)];
    v266 = [objc_opt_self() secondaryLabelColor];
    [v255 setTextColor:v266];

    v267 = *&v278[v253];
    if (v267)
    {
      [v267 addArrangedSubview:v255];

      (*(v274 + 8))(v251, v275);
      return;
    }

LABEL_179:
    __break(1u);
  }

  else
  {
    (*(v274 + 8))(v251, v275);
  }
}

unint64_t sub_1001242CC()
{
  sub_10003C49C(&unk_100201EC0, &unk_100184C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001845E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = TargetDevice.deviceClass.getter();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = TargetDevice.userAssignedName.getter();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = TargetDevice.productType.getter();
  *(inited + 120) = v6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v7;
  *(inited + 144) = TargetDevice.deviceClass.getter();
  *(inited + 152) = v8;
  v9 = sub_1000D5698(inited);
  swift_setDeallocating();
  sub_10003C49C(&qword_100201D00, &unk_10017F860);
  swift_arrayDestroy();
  v10 = TargetDevice.deviceColor.getter();
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v14 = TargetDevice.enclosureColor.getter();
    if (v15)
    {
      v22 = v14;
      v23 = v15;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10014240C(v13, v12, v24, v26, isUniquelyReferenced_nonNull_native);
      v26, v28, v29, v30, v31, v32, v33, v34;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10013C284(v22, v23, v35, v36);
    }

    else
    {
      v12, 0, v16, v17, v18, v19, v20, v21;
    }
  }

  v37 = sub_100122120(v9);
  v9, v38, v39, v40, v41, v42, v43, v44;
  return v37;
}

void sub_1001244B0(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView;
  v6 = *(a2 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView);
  if (!v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v7 = v4;
  v13 = a1;
  v8 = v6;
  v9 = [v7 image];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 imageWithAlignmentRectInsets:{0.0, -*(a2 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 64), 0.0, -*(a2 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 64)}];
  }

  else
  {
    v11 = 0;
  }

  [v8 setImage:v11];

  v12 = *(a2 + v5);
  if (!v12)
  {
    goto LABEL_12;
  }

  [v12 setContentMode:1];
}

id sub_100124628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TargetDeviceDescriptionView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TargetDeviceDescriptionView(uint64_t a1)
{
  result = qword_100201EA0;
  if (!qword_100201EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100124770(uint64_t a1)
{
  sub_1000CC568(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 sub_100124818(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10012483C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100124884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001248E4()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_100124924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10012493C()
{
  sub_10003C49C(&unk_1001FDEA0, &qword_1001824E0);
  v0 = type metadata accessor for TargetDevice.DeviceType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100184F30;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for TargetDevice.DeviceType.iOS(_:), v0);
  v6(v5 + v2, enum case for TargetDevice.DeviceType.reality(_:), v0);
  v6(v5 + 2 * v2, enum case for TargetDevice.DeviceType.mac(_:), v0);
  v6(v5 + 3 * v2, enum case for TargetDevice.DeviceType.watch(_:), v0);
  v6(v5 + 4 * v2, enum case for TargetDevice.DeviceType.appleTV(_:), v0);
  v6(v5 + 5 * v2, enum case for TargetDevice.DeviceType.audioAccessory(_:), v0);
  result = (v6)(v5 + 6 * v2, enum case for TargetDevice.DeviceType.unknown(_:), v0);
  qword_100201E70 = v4;
  return result;
}

uint64_t sub_100124B0C()
{
  v0 = type metadata accessor for TargetDevice.DeviceType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v50 - v5;
  v7 = TargetDevice.isLocal.getter();
  v8 = TargetDevice.isLocal.getter();
  if ((v7 & 1) == 0)
  {
    if (v8)
    {
      v9 = 0;
      return v9 & 1;
    }

LABEL_6:
    TargetDevice.deviceType.getter();
    TargetDevice.deviceType.getter();
    if (qword_1001FC830 != -1)
    {
      swift_once();
    }

    v10 = qword_100201E70;
    v11 = sub_100150974(v6, qword_100201E70);
    if ((v12 & 1) == 0)
    {
      v13 = v11;
      v14 = sub_100150974(v3, v10);
      if (v15)
      {
        goto LABEL_11;
      }

      if (v13 != v14)
      {
        v9 = v13 < v14;
        goto LABEL_19;
      }

      if (TargetDevice.isPrimaryHomeHub.getter())
      {
LABEL_11:
        v9 = 1;
        goto LABEL_19;
      }

      if ((TargetDevice.isPrimaryHomeHub.getter() & 1) == 0)
      {
        v16 = TargetDevice.userAssignedName.getter();
        v18 = v17;
        v20 = TargetDevice.userAssignedName.getter();
        v26 = v19;
        if (v16 == v20 && v18 == v19)
        {
          v18, v19, v20, v21, v22, v23, v24, v25;
          v26, v27, v28, v29, v30, v31, v32, v33;
          v9 = 0;
        }

        else
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18, v36, v37, v38, v39, v40, v41, v42;
          v26, v43, v44, v45, v46, v47, v48, v49;
        }

        goto LABEL_19;
      }
    }

    v9 = 0;
LABEL_19:
    v34 = *(v1 + 8);
    v34(v3, v0);
    v34(v6, v0);
    return v9 & 1;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = 1;
  return v9 & 1;
}

BOOL sub_100124D70(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v67 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  __chkstk_darwin(v67);
  v64 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v64 - v5;
  v6 = type metadata accessor for TargetDevice.DeviceType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v69 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v64 - v10;
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  static TargetDevice.DeviceType.current.getter();
  sub_1001251D8(&qword_1001FFDE8, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
  v68 = a1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v7 + 8);
  v14(v13, v6);
  v15 = v73;
  v16 = v72;
  static TargetDevice.DeviceType.current.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v65 = v14;
  v14(v13, v6);
  if (v15 != v16)
  {
    if (v73 == v72)
    {
      return 0;
    }

LABEL_6:
    v18 = v66;
    sub_100044704(v68, v66, &unk_100201EF0, &qword_100182338);
    v19 = v67;
    *(v18 + *(v67 + 48)), v20, v21, v22, v23, v24, v25, v26;
    v27 = *(v7 + 32);
    v28 = v70;
    v27(v70, v18, v6);
    sub_100044704(v71, v18, &unk_100201EF0, &qword_100182338);
    *(v18 + *(v19 + 48)), v29, v30, v31, v32, v33, v34, v35;
    v36 = v69;
    v27(v69, v18, v6);
    if (qword_1001FC830 != -1)
    {
      swift_once();
    }

    v37 = qword_100201E70;
    v38 = sub_100150974(v28, qword_100201E70);
    if (v39)
    {
      v17 = 0;
    }

    else
    {
      v40 = v38;
      v41 = sub_100150974(v36, v37);
      if (v42)
      {
        v17 = 1;
      }

      else
      {
        if (v40 == v41)
        {
          sub_100044704(v68, v18, &unk_100201EF0, &qword_100182338);
          v43 = *(v18 + *(v19 + 48));
          v44 = *(v43 + 16);
          v43, v45, v46, v47, v48, v49, v50, v51;
          v52 = v64;
          v36 = v69;
          sub_100044704(v71, v64, &unk_100201EF0, &qword_100182338);
          v53 = *(v52 + *(v19 + 48));
          v54 = *(v53 + 16);
          v53, v55, v56, v57, v58, v59, v60, v61;
          v17 = v44 < v54;
          v62 = v65;
          v65(v52, v6);
          v62(v18, v6);
LABEL_16:
          v62(v36, v6);
          v62(v70, v6);
          return v17;
        }

        v17 = v40 < v41;
      }
    }

    v62 = v65;
    goto LABEL_16;
  }

  if (v73 == v72)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1001251D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TargetDeviceDescriptionView.DeviceLabelTraits(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetDeviceDescriptionView.DeviceLabelTraits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100125394()
{
  result = qword_100201F08;
  if (!qword_100201F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201F08);
  }

  return result;
}

unint64_t sub_1001253E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BE100, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100125460(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10012C004(v2, *(a1 + 36), 0, a1);
  sub_100078568(v4, v5);
  return v4;
}

uint64_t sub_1001254DC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000B2714(v6, v8, 1, v10, v11, v12, v13, v14);
    if (v9)
    {
LABEL_3:
      sub_1000B2714(v3, v5, (v2 != 0), v15, v16, v17, v18, v19);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == (1 << *(a1 + 32)))
    {
      goto LABEL_3;
    }
  }

  sub_10012B2D4(v3, v5, v2 != 0, a1);
  v22 = v21;
  sub_1000B2714(v3, v5, (v2 != 0), v23, v24, v25, v26, v27);
  return v22;
}

uint64_t sub_100125624@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = _HashTable.startBucket.getter();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    a2(v8, *(a1 + 36), 0, a1);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_100125720(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000B2714(v10, v12, 1, v14, v15, v16, v17, v18);
    if (v13)
    {
LABEL_3:
      sub_1000B2714(v7, v9, (v6 != 0), v19, v20, v21, v22, v23);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == (1 << *(a1 + 32)))
    {
      goto LABEL_3;
    }
  }

  sub_10012B670(v7, v9, v6 != 0, a1, a2, a3);
  v26 = v25;
  sub_1000B2714(v7, v9, (v6 != 0), v27, v28, v29, v30, v31);
  return v26;
}

uint64_t sub_100125854(int a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v43 = a5;
  v44 = a4;
  v37 = a3;
  v38 = a1;
  v36 = a2;
  v7 = sub_10003C49C(&qword_1001FCE90, &unk_100185140);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v17 - 8);
  v42 = v17;
  __chkstk_darwin(v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v39 = *(v20 - 8);
  v40 = v20;
  __chkstk_darwin(v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = sub_100066608();
  v24 = [v23 presentedViewController];

  if (v24)
  {
    sub_10003E110(0, &qword_1001FCE88, NSObject_ptr);
    if (static NSObject.== infix(_:_:)())
    {
      sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
      v25 = static OS_dispatch_queue.main.getter();
      v26 = swift_allocObject();
      *(v26 + 16) = v36;
      *(v26 + 24) = v37 & 1;
      *(v26 + 32) = v6;
      *(v26 + 40) = v38 & 1;
      v27 = v43;
      v28 = v44;
      *(v26 + 48) = v44;
      *(v26 + 56) = v27;
      aBlock[4] = sub_10012C5A8;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C7F00;
      v29 = _Block_copy(aBlock);
      v30 = v6;
      sub_10003E418(v28, v27);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10012BDA0(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
      sub_1000446A0();
      v31 = v42;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v41 + 8))(v19, v31);
      (*(v39 + 8))(v22, v40);
      return swift_endAccess();
    }
  }

  if (v44)
  {
    v44();
  }

  v32 = v6;

  v34 = sub_10012BA70(v33, v32);

  sub_100125624(v34, sub_10012B22C, type metadata accessor for ModalPresentationCoordinator.QueueEntry, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10012BE34(v12);
  }

  else
  {
    sub_10003DBF4(v12, v16);
    sub_100127920(v16, v9);
    sub_10012BE34(v9);
    sub_10003DC58(v16);
  }

  return swift_endAccess();
}

void sub_100125DD8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v43 = *(v10 - 8);
  __chkstk_darwin(v10);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v3 & 1) == 0)
  {
    v13 = v11;
    v14 = a2;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v16 = qword_10020A4F8;
    *(v15 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    *(v15 + 64) = sub_1000516BC();
    *(v15 + 32) = v16;
    v17 = v16;
    v18 = static OS_os_log.default.getter();
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("## Pausing presentation coordinator", 35, 2, &_mh_execute_header, v18, v19, v15);
    v15, v20, v21, v22, v23, v24, v25, v26;

    *v3 = 1;
    v27 = sub_100066608();
    v44 = [v27 presentedViewController];

    if (v44)
    {
      v28 = v7;
      v29 = v14;
      v30 = a1;
      v31 = v13;
      v32 = v6;
      v33 = v9;
      v34 = sub_100066608();
      v35 = [v34 presentedViewController];

      if (v35)
      {
        sub_10003E110(0, &qword_1001FCE88, NSObject_ptr);
        if (static NSObject.== infix(_:_:)())
        {
          sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
          v41 = static OS_dispatch_queue.main.getter();
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          *(v36 + 24) = 1;
          *(v36 + 32) = v44;
          *(v36 + 40) = 0;
          *(v36 + 48) = v30;
          *(v36 + 56) = v29;
          aBlock[4] = sub_10012BD84;
          aBlock[5] = v36;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100031FA8;
          aBlock[3] = &unk_1001C7E10;
          v37 = _Block_copy(aBlock);
          v44 = v44;
          sub_10003E418(v30, v29);

          v38 = v42;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_10012BDA0(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
          sub_1000446A0();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v39 = v41;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v37);

          (*(v28 + 8))(v33, v32);
          (*(v43 + 8))(v38, v31);
          return;
        }
      }

      if (v30)
      {
        v30();
      }

      v40 = v44;
    }
  }
}

uint64_t sub_1001262B0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v1 - 8);
  __chkstk_darwin(v1);
  v60 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10003C49C(&qword_1001FCE90, &unk_100185140);
  __chkstk_darwin(v4 - 8);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v51 - v7;
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = &v51 - v15;
  __chkstk_darwin(v16);
  v18 = (&v51 - v17);
  sub_1001273C0(*(v0 + 8), v10);
  v56 = v12;
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    return sub_10012BE34(v10);
  }

  v52 = v1;
  sub_10003DBF4(v10, v18);
  v21 = sub_100066608();
  v22 = [v21 presentedViewController];

  if (v22)
  {
  }

  else if ((*v0 & 1) == 0)
  {
    v24 = v18;
    v25 = *v18;

    v27 = sub_10012BA70(v26, v25);

    v28 = v55;
    sub_100125624(v27, sub_10012B22C, type metadata accessor for ModalPresentationCoordinator.QueueEntry, v55);

    if (v19(v28, 1, v11) == 1)
    {
      sub_10012BE34(v28);
    }

    else
    {
      v29 = v53;
      sub_10003DBF4(v28, v53);
      v30 = v54;
      sub_100127920(v29, v54);
      sub_10012BE34(v30);
      sub_10003DC58(v29);
    }

    v31 = v52;
    if (*(v24 + 8) == 1)
    {
      v32 = v24 + *(v11 + 44);
      if ((*(v32 + 32) & 1) == 0)
      {
        v34 = *(v32 + 16);
        v33 = *(v32 + 24);
        v36 = *v32;
        v35 = *(v32 + 8);
        v37 = [v25 popoverPresentationController];
        [v37 setSourceRect:{v36, v35, v34, v33}];

        v38 = [v25 popoverPresentationController];
        if (v38)
        {
          v39 = v38;
          [v38 setPermittedArrowDirections:3];
        }
      }

      v40 = [v25 popoverPresentationController];
      if (v40)
      {
        v41 = v40;
        v42 = sub_100066608();
        v43 = [v42 view];

        [v41 setSourceView:v43];
      }
    }

    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v44 = static OS_dispatch_queue.main.getter();
    v45 = v57;
    sub_10010EDC4(v24, v57);
    v46 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v47 = swift_allocObject();
    sub_10003DBF4(v45, v47 + v46);
    aBlock[4] = sub_10012BFA4;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C7E88;
    v48 = _Block_copy(aBlock);

    v49 = v58;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10012BDA0(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    v50 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v62 + 8))(v50, v31);
    (*(v59 + 8))(v49, v61);
    v23 = v24;
    return sub_10003DC58(v23);
  }

  v23 = v18;
  return sub_10003DC58(v23);
}

uint64_t sub_100126A54(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v30 - v15);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = &v13[v11[9]];
  *v13 = v5;
  v13[8] = a5;
  *(v13 + 2) = a1;
  v18 = v5;
  Date.init()();
  v13[v11[8]] = a2 & 1;
  *v17 = 0;
  v17[8] = 1;
  v19 = [v18 popoverPresentationController];
  v20 = v19;
  if (v19)
  {
    [v19 sourceRect];
    v31 = v21;
    v32 = v22;
    v30 = v23;
    v33 = v24;

    *&v26 = v30;
    *&v25 = v31;
    *(&v25 + 1) = v32;
    *(&v26 + 1) = v33;
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v27 = &v13[v11[10]];
  v28 = &v13[v11[11]];
  *v28 = v25;
  *(v28 + 1) = v26;
  v28[32] = v20 == 0;
  *v27 = a3;
  *(v27 + 1) = a4;
  sub_10003DBF4(v13, v16);
  sub_10003E418(a3, a4);
  sub_100127134(v16);
  sub_10003DC58(v16);
  return swift_endAccess();
}

unint64_t *sub_100126D24@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void *sub_100126D40@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100126D60()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 16));
  type metadata accessor for Date();
  sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100126E24(uint64_t a1)
{
  NSObject.hash(into:)();
  Hasher._combine(_:)(*(v1 + 8));
  Hasher._combine(_:)(*(v1 + 16));
  type metadata accessor for Date();
  sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100126EC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(*(v1 + 8));
  Hasher._combine(_:)(*(v1 + 16));
  type metadata accessor for Date();
  sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100126F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 != v4)
  {
    return v4 & (v3 ^ 1u);
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6 == v7)
  {
    return static Date.< infix(_:_:)();
  }

  else
  {
    return v6 < v7;
  }
}

BOOL sub_100126FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  if (v3 == v4)
  {
    v6 = *(a2 + 16);
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
      v5 = static Date.< infix(_:_:)();
    }

    else
    {
      v5 = v6 < v7;
    }
  }

  else
  {
    v5 = v4 & (v3 ^ 1);
  }

  return (v5 & 1) == 0;
}

BOOL sub_100127034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 == v4)
  {
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    if (v6 == v7)
    {
      v5 = static Date.< infix(_:_:)();
    }

    else
    {
      v5 = v6 < v7;
    }
  }

  else
  {
    v5 = v4 & (v3 ^ 1);
  }

  return (v5 & 1) == 0;
}

uint64_t sub_100127098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  if (v3 != v4)
  {
    return v4 & (v3 ^ 1u);
  }

  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  if (v6 == v7)
  {
    return static Date.< infix(_:_:)();
  }

  else
  {
    return v6 < v7;
  }
}

uint64_t sub_1001270E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return static Date.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

void sub_100127134(id *a1)
{
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v21[-v7];
  v9 = sub_10003C49C(&qword_1001FCE90, &unk_100185140);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  v12 = *a1;

  v14 = sub_10012BA70(v13, v12);

  sub_100125624(v14, sub_10012B22C, type metadata accessor for ModalPresentationCoordinator.QueueEntry, v11);

  LODWORD(v2) = (*(v3 + 48))(v11, 1, v2);
  sub_10012BE34(v11);
  if (v2 == 1)
  {
    v15 = sub_100066608();
    v16 = [v15 presentedViewController];

    if (!v16 || (sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr), v17 = v12, v18 = static NSObject.== infix(_:_:)(), v16, v17, (v18 & 1) == 0))
    {
      sub_10010EDC4(a1, v5);
      sub_1001088BC(v8, v5);
      sub_10003DC58(v8);
      v19 = sub_100066608();
      v20 = [v19 presentedViewController];

      if (v20)
      {
      }

      else
      {
        sub_1001262B0();
      }
    }
  }
}

uint64_t sub_1001273C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  __chkstk_darwin(v42);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  if (v19)
  {
    v41 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = *(a1 + 48);
    v40 = v13;
    v27 = *(v13 + 72);
    sub_10010EDC4(v26 + v27 * v21, v11);
    sub_10003DBF4(v11, v16);

    v29 = v42;
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_12:
    while (1)
    {
      v30 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v30 >= v23)
      {

        v36 = v41;
        sub_10003DBF4(v16, v41);
        return (*(v40 + 56))(v36, 0, 1, v29);
      }

      v22 = *(a1 + 56 + 8 * v30);
      ++v20;
      if (v22)
      {
        v20 = v30;
        while (1)
        {
LABEL_16:
          while (1)
          {
            v31 = __clz(__rbit64(v22));
            v22 &= v22 - 1;
            sub_10010EDC4(*(a1 + 48) + (v31 | (v20 << 6)) * v27, v5);
            sub_10003DBF4(v5, v8);
            v32 = v16[8];
            v33 = v8[8];
            if (v32 == v33)
            {
              break;
            }

            if (v33 & (v32 ^ 1))
            {
              goto LABEL_23;
            }

LABEL_11:
            result = sub_10003DC58(v8);
            if (!v22)
            {
              goto LABEL_12;
            }
          }

          v34 = *(v16 + 2);
          v35 = *(v8 + 2);
          if (v34 == v35)
          {
            if (static Date.< infix(_:_:)())
            {
              goto LABEL_23;
            }

            goto LABEL_11;
          }

          if (v34 >= v35)
          {
            goto LABEL_11;
          }

LABEL_23:
          sub_10003DC58(v16);
          result = sub_10003DBF4(v8, v16);
          if (!v22)
          {
            goto LABEL_12;
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 64 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v41 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v37 = *(v13 + 56);
    v38 = v42;

    return v37(a2, 1, 1, v38, v14);
  }

  return result;
}

void sub_100127704(id *a1)
{
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v3 = a1 + v2[9];
  if ((v3[8] & 1) == 0)
  {
    [*a1 setModalTransitionStyle:*v3];
  }

  v4 = sub_100066608();
  v5 = *a1;
  v6 = *(a1 + v2[8]);
  v7 = (a1 + v2[10]);
  if (*v7)
  {
    v8 = v7[1];
    v10[4] = *v7;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100031FA8;
    v10[3] = &unk_1001C7EB0;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [v4 presentViewController:v5 animated:v6 completion:v9];
  _Block_release(v9);
}

void sub_10012782C(uint64_t a1, char a2, id a3, char a4, void *a5, uint64_t a6)
{
  if ((a2 & 1) == 0)
  {
    [a3 setModalTransitionStyle:a1];
  }

  v9 = sub_100066608();
  if (a5)
  {
    v10[4] = a5;
    v10[5] = a6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100031FA8;
    v10[3] = &unk_1001C7E38;
    a5 = _Block_copy(v10);
  }

  [v9 dismissViewControllerAnimated:a4 & 1 completion:a5];
  _Block_release(a5);
}

uint64_t sub_100127920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v7 = *v2;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v8 = *(a1 + 8);
  Hasher._combine(_:)(*(a1 + 8));
  v9 = *(a1 + 16);
  Hasher._combine(_:)(v9);
  v28 = v4;
  v10 = *(v4 + 28);
  type metadata accessor for Date();
  sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = v10;
  v27 = a1;
  dispatch thunk of Hashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return (*(v25 + 56))(v24, 1, 1, v28);
  }

  v14 = ~v12;
  v15 = *(v25 + 72);
  while (1)
  {
    sub_10010EDC4(*(v7 + 48) + v15 * v13, v6);
    if (v8 == v6[8] && *(v6 + 2) == v9)
    {
      break;
    }

    sub_10003DC58(v6);
LABEL_4:
    v13 = (v13 + 1) & v14;
    if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return (*(v25 + 56))(v24, 1, 1, v28);
    }
  }

  v16 = static Date.== infix(_:_:)();
  sub_10003DC58(v6);
  if ((v16 & 1) == 0)
  {
    goto LABEL_4;
  }

  v17 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v17;
  v29 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100128580();
    v19 = v29;
  }

  v20 = v24;
  sub_10003DBF4(*(v19 + 48) + v15 * v13, v24);
  sub_100129798(v13);
  *v17 = v29;
  return (*(v25 + 56))(v20, 0, 1, v28);
}

uint64_t sub_100127BBC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v14 = sub_1001291C4(v4, v5, v8, v9, v10, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13;
    return 0;
  }

  v23 = v1;
  sub_10003E110(0, &qword_100202990, NSError_ptr);
  v24 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = static NSObject.== infix(_:_:)();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v33 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100128764();
    v31 = v33;
  }

  v32 = *(*(v31 + 48) + 8 * v26);
  sub_100129AA8(v26);
  result = v32;
  *v23 = v33;
  return result;
}

uint64_t sub_100127D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TargetDevice.DeviceType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10012BDA0(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10012BDA0(&qword_1001FDEB0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100128F8C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100129C48(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_100127FFC(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      sub_1000681EC(*(v4 + 48) + 40 * v7, v14);
      v9 = static AnyHashable.== infix(_:_:)();
      sub_10003DB48(v14);
      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v14[0] = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001288B4();
      v11 = v14[0];
    }

    v12 = *(v11 + 48) + 40 * v7;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v12 + 32);
    sub_100129F50(v7);
    *v2 = v14[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_100128134(const char *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v13 = sub_10012932C(v4, a1, v7, v8, v9, v10, v11, v12);
      v3, v14, v15, v16, v17, v18, v19, v20;
      return v13;
    }

    v3, v6, v7, v8, v9, v10, v11, v12;
    return 0;
  }

  Hasher.init(_seed:)();
  v22 = *&a1[OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator];
  v23 = *&a1[OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8];
  String.hash(into:)();
  v24 = Hasher._finalize()();
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = (*(*(v3 + 48) + 8 * v26) + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    v29 = *v28 == v22 && v28[1] == v23;
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v1;
  v33 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100128BB0(&qword_100201A00, &unk_100185150);
    v31 = v33;
  }

  v32 = *(*(v31 + 48) + 8 * v26);
  sub_10012A108(v26);
  result = v32;
  *v1 = v33;
  return result;
}

uint64_t sub_1001282FC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v13 = sub_1001294BC(v4, a1, v7, v8, v9, v10, v11, v12);
      v3, v14, v15, v16, v17, v18, v19, v20;
      return v13;
    }

    v3, v6, v7, v8, v9, v10, v11, v12;
    return 0;
  }

  v78 = v1;
  Hasher.init(_seed:)();
  v79 = *(a1 + 40);
  v22 = [v79 serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  String.hash(into:)();
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = Hasher._finalize()();
  v33 = -1 << *(v3 + 32);
  v34 = v32 & ~v33;
  if (((*(v3 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
  {
    return 0;
  }

  v35 = ~v33;
  while (1)
  {
    v36 = *(*(*(v3 + 48) + 8 * v34) + 40);

    v37 = [v36 serialNumber];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = [v79 serialNumber];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (v38 == v42 && v40 == v44)
    {
      break;
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v40, v47, v48, v49, v50, v51, v52, v53;
    v44, v54, v55, v56, v57, v58, v59, v60;
    if (v46)
    {
      goto LABEL_19;
    }

    v34 = (v34 + 1) & v35;
    if (((*(v3 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      return 0;
    }
  }

  v40, v61, v62, v63, v64, v65, v66, v67;
  v44, v68, v69, v70, v71, v72, v73, v74;
LABEL_19:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v78;
  v80 = *v78;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100128BB0(&qword_100201A18, &qword_1001847E0);
    v76 = v80;
  }

  v77 = *(*(v76 + 48) + 8 * v34);
  sub_10012A2E0(v34);
  result = v77;
  *v78 = v80;
  return result;
}

void sub_100128580()
{
  v1 = v0;
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C49C(&qword_100201A28, &qword_1001847E8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10010EDC4(*(v6 + 48) + v21, v5);
        sub_10003DBF4(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100128764()
{
  v1 = v0;
  sub_10003C49C(&qword_100201A30, &unk_1001847F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1001288B4()
{
  v1 = v0;
  sub_10003C49C(&unk_100202980, &qword_100184810);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_1000681EC(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_100128A40()
{
  v1 = v0;
  sub_10003C49C(&qword_100201A38, &unk_100185160);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_100078568(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_100128BB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10003C49C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_100128CF0()
{
  v1 = v0;
  sub_10003C49C(&qword_100201A40, &unk_100184800);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_100128E4C()
{
  v1 = v0;
  sub_10003C49C(&qword_100201A48, &qword_100185170);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_100128F8C()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C49C(&qword_100201F10, &qword_100185178);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

uint64_t sub_1001291C4(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8;
  v10 = __CocoaSet.count.getter();
  v11 = swift_unknownObjectRetain();
  v12 = sub_100108050(v11, v10);
  v22 = v12;
  v13 = *(v12 + 40);

  v14 = NSObject._rawHashValue(seed:)(v13);
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    sub_10003E110(0, &qword_100202990, NSError_ptr);
    while (1)
    {
      v18 = *(*(v12 + 48) + 8 * v16);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v20 = *(*(v12 + 48) + 8 * v16);
  sub_100129AA8(v16);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v9 = v22;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012932C(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  *v9, a2, a3, a4, a5, a6, a7, a8;
  v11 = __CocoaSet.count.getter();
  v12 = swift_unknownObjectRetain();
  v13 = sub_100108240(v12, v11);
  v25 = v13;
  Hasher.init(_seed:)();
  v14 = *&a2[OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator];
  v15 = *&a2[OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8];

  String.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v13 + 32);
  v18 = v16 & ~v17;
  if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    while (1)
    {
      v20 = (*(*(v13 + 48) + 8 * v18) + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
      v21 = *v20 == v14 && v20[1] == v15;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v22 = *(*(v13 + 48) + 8 * v18);
  sub_10012A108(v18);
  v23 = v14 == *(v22 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator) && v15 == *(v22 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8);
  if (v23 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v9 = v25;
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001294BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *v8, a2, a3, a4, a5, a6, a7, a8;
  v11 = __CocoaSet.count.getter();
  v12 = swift_unknownObjectRetain();
  v13 = sub_10010844C(v12, v11);
  v107 = v13;
  Hasher.init(_seed:)();
  v14 = *(a2 + 40);

  v15 = [v14 serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  String.hash(into:)();
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = Hasher._finalize()();
  v26 = -1 << *(v13 + 32);
  v27 = v25 & ~v26;
  if ((*(v13 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
  {
    v28 = ~v26;
    while (1)
    {
      v29 = *(*(*(v13 + 48) + 8 * v27) + 40);

      v30 = [v29 serialNumber];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v32;

      v33 = [v14 serialNumber];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v35;

      if (v31 == v34 && v17 == v9)
      {
        break;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17, v38, v39, v40, v41, v42, v43, v44;
      v9, v45, v46, v47, v48, v49, v50, v51;
      if (v37)
      {

        goto LABEL_12;
      }

      v27 = (v27 + 1) & v28;
      if (((*(v13 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v17, v52, v53, v54, v55, v56, v57, v58;
  v9, v59, v60, v61, v62, v63, v64, v65;
LABEL_12:
  v66 = *(*(v13 + 48) + 8 * v27);
  sub_10012A2E0(v27);
  v67 = [v14 serialNumber];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v71 = [*(v66 + 40) serialNumber];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  if (v68 == v72 && v70 == v74)
  {
    goto LABEL_18;
  }

  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v70, v84, v85, v86, v87, v88, v89, v90;
  v74, v91, v92, v93, v94, v95, v96, v97;
  if ((v83 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    v70, v75, v76, v77, v78, v79, v80, v81;
    v74, v98, v99, v100, v101, v102, v103, v104;
  }

  *v106 = v107;
  return v66;
}

void sub_100129798(int64_t a1)
{
  v26 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v25 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      v13 = v10;
      do
      {
        v14 = v7;
        v15 = v12;
        v16 = v12 * v9;
        sub_10010EDC4(*(v6 + 48) + v12 * v9, v5);
        Hasher.init(_seed:)();
        v17 = v13;
        NSObject.hash(into:)();
        Hasher._combine(_:)(v5[8]);
        Hasher._combine(_:)(*(v5 + 2));
        type metadata accessor for Date();
        sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        dispatch thunk of Hashable.hash(into:)();
        v18 = Hasher._finalize()();
        sub_10003DC58(v5);
        v19 = v18 & v17;
        v13 = v17;
        if (a1 >= v25)
        {
          if (v19 < v25)
          {
            v12 = v15;
            goto LABEL_5;
          }

          v12 = v15;
          if (a1 < v19)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v15;
          if (v19 < v25 && a1 < v19)
          {
            goto LABEL_5;
          }
        }

        v20 = v12 * a1;
        if (v12 * a1 < v16 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v16 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v20 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v13;
        v7 = v14;
      }

      while (((*(v14 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }
}

void sub_100129AA8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_100129C48(int64_t a1)
{
  v3 = type metadata accessor for TargetDevice.DeviceType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_10012BDA0(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_100129F50(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1000681EC(*(v3 + 48) + 40 * v6, v22);
        v12 = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
        sub_10003DB48(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_10012A108(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_10012A2E0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        v11 = *(v10 + 40);

        v12 = [v11 serialNumber];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        String.hash(into:)();
        v14, v15, v16, v17, v18, v19, v20, v21;
        v22 = Hasher._finalize()();

        v23 = v22 & v7;
        if (v2 >= v9)
        {
          if (v23 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v23 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v23)
        {
LABEL_11:
          v24 = *(v3 + 48);
          v25 = (v24 + 8 * v2);
          v26 = (v24 + 8 * v6);
          if (v2 != v6 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }
}

Swift::Int sub_10012A4E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10003C49C(&qword_100201A28, &qword_1001847E8);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v31 + 72);
    sub_10010EDC4(v19 + v33 * (v16 | (v14 << 6)), v10);
    Hasher.init(_seed:)();
    NSObject.hash(into:)();
    Hasher._combine(_:)(v10[8]);
    Hasher._combine(_:)(*(v10 + 2));
    type metadata accessor for Date();
    sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v30;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v30;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_10003DBF4(v10, *(v11 + 48) + v23 * v33);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
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

Swift::Int sub_10012A804(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10003C49C(&qword_100201A30, &unk_1001847F0);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10012A9F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10003C49C(&qword_100201A38, &unk_100185160);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    Hasher.init(_seed:)();
    if (v17 >= 9)
    {

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(qword_1001853F0[v17]);
      sub_100078568(v18, v17);
    }

    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10012AC48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for TargetDevice.DeviceType();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10003C49C(&qword_100201F10, &qword_100185178);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10012BDA0(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

Swift::Int sub_10012AF70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10003C49C(&unk_100202980, &qword_100184810);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_1000681EC(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
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

unint64_t *sub_10012B194(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_10012B888(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_10012B22C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for ModalPresentationCoordinator.QueueEntry(0) - 8) + 72) * result;

  return sub_10010EDC4(v6, a4);
}

void sub_10012B2D4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for CardState();
      swift_dynamicCast();
      return;
    }

    goto LABEL_27;
  }

  if (a3)
  {
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for CardState();
    swift_dynamicCast();
    Hasher.init(_seed:)();
    v8 = [*(v57 + 40) serialNumber];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v9;

    String.hash(into:)();
    v4, v10, v11, v12, v13, v14, v15, v16;
    v17 = Hasher._finalize()();
    v18 = -1 << *(a4 + 32);
    a1 = v17 & ~v18;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v19 = ~v18;
      do
      {
        v20 = *(*(*(a4 + 48) + 8 * a1) + 40);

        v21 = [v20 serialNumber];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v23;

        v24 = [*(v57 + 40) serialNumber];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v26;

        if (v22 == v25 && v4 == v5)
        {
          goto LABEL_20;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4, v29, v30, v31, v32, v33, v34, v35;
        v5, v36, v37, v38, v39, v40, v41, v42;
        if (v28)
        {

          goto LABEL_22;
        }

        a1 = (a1 + 1) & v19;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_25;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_20:

    v4, v43, v44, v45, v46, v47, v48, v49;
    v5, v50, v51, v52, v53, v54, v55, v56;
  }

LABEL_22:
}

uint64_t sub_10012B5B0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for TargetDevice.DeviceType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_10012B670(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10003E110(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10003E110(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
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

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void sub_10012B888(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v23 = a4;
  v21 = a1;
  v5 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_10010EDC4(*(a3 + 48) + *(v6 + 72) * v17, v8);
    sub_10003E110(0, &qword_1001FCE88, NSObject_ptr);
    v18 = static NSObject.== infix(_:_:)();
    sub_10003DC58(v8);
    if (v18)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:

        sub_10012A4E0(v21, v20, v22, a3);
        return;
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_15;
    }

    v16 = *(a3 + 56 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int sub_10012BA70(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v30 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v27 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v27;
  v11 = a2;
  v12 = v11;
  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26[1] = v26;
    v26[2] = v3;
    __chkstk_darwin(v11);
    v28 = v26 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v10);
    v29 = 0;
    v10 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v3 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v10 << 6);
      sub_10010EDC4(*(a1 + 48) + *(v30 + 72) * v19, v8);
      sub_10003E110(0, &qword_1001FCE88, NSObject_ptr);
      v20 = static NSObject.== infix(_:_:)();
      sub_10003DC58(v8);
      if (v20)
      {
        *&v28[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_10012A4E0(v28, v27, v29, a1);

          return v22;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v3)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v12;
  v22 = sub_10012B194(v24, v27, a1, v25);

  return v22;
}

double sub_10012BD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10012BDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ModalPresentationCoordinator.QueueEntry(uint64_t a1)
{
  result = qword_100201F70;
  if (!qword_100201F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}