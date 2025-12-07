uint64_t sub_1D5F5A374(uint64_t a1)
{
  result = type metadata accessor for FormatPurchaseData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F5A408(uint64_t a1)
{
  result = type metadata accessor for FeedAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5F5A4B8(uint64_t a1)
{
  result = type metadata accessor for FeedActionInternal(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D5E2B010();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t FormatPoint.description.getter(uint64_t a1)
{
  v1 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v2 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_1D5F5A658(uint64_t a1)
{
  result = sub_1D5F5A680();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F5A680()
{
  result = qword_1EC8815A0;
  if (!qword_1EC8815A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8815A0);
  }

  return result;
}

unint64_t sub_1D5F5A6D4(void *a1)
{
  a1[1] = sub_1D5C7B870();
  a1[2] = sub_1D5F5A70C();
  result = sub_1D5F5A760();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F5A70C()
{
  result = qword_1EDF12820;
  if (!qword_1EDF12820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12820);
  }

  return result;
}

unint64_t sub_1D5F5A760()
{
  result = qword_1EC8815A8;
  if (!qword_1EC8815A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8815A8);
  }

  return result;
}

uint64_t sub_1D5F5A7B4(uint64_t a1)
{
  v1 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v2 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

double sub_1D5F5A858(uint64_t a1)
{
  v3 = sub_1D7261ABC();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D7261B2C();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v6);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7261ACC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D724540C();
  sub_1D724540C();
  v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView);
  sub_1D6BBC3F8();
  v14 = *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView);
  sub_1D6BBC3F8();
  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_changeSetLabel);
  [v15 setAttributedText_];
  if (a1)
  {

    v17 = sub_1D5E2EAA4(17.0);
    [v15 setAttributedText_];

    [v15 sizeToFit];
    *(v13 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 1;
    [*(v13 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView) startAnimating];
    *(v14 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 1;
    [*(v14 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView) startAnimating];
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    (*(v9 + 104))(v12, *MEMORY[0x1E69E7F88], v8);
    v18 = sub_1D72630CC();
    (*(v9 + 8))(v12, v8);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v19;
    aBlock[4] = sub_1D5F5D6CC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_9;
    v21 = _Block_copy(aBlock);

    v22 = v26;
    sub_1D7261AEC();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D5F5D6D4();
    sub_1D5B5BE5C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D5F5D72C();
    v23 = v28;
    v24 = v31;
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v22, v23, v21);
    _Block_release(v21);

    (*(v30 + 8))(v23, v24);
    (*(v27 + 8))(v22, v29);
  }

  return result;
}

void *sub_1D5F5AD14()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager;
  if (*&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_statusView];
    type metadata accessor for DebugFormatNavigationItemManager();
    v4 = swift_allocObject();
    v5 = v3;
    v6 = v0;
    v2 = sub_1D6A13468(v6, v5, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1D5F5ADC0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D5F5AE48()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___dismissBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___dismissBarButtonItem);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v4 style:0 target:v0 action:sel_doDismiss];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_1D5F5AF5C()
{
  v1 = v0;
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 secondarySystemBackgroundColor];
  [v3 setBackgroundColor_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 addSubview_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 addSubview_];

  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    [v12 addSubview_];

    v14 = sub_1D5F5ADC0();
    [v14 _setPrefersNoPlatter_];

    v15 = [v1 navigationItem];
    sub_1D5E42B34();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D72816D0;
    sub_1D5B5A498(0, &qword_1EC88B4C0, 0x1E69DC720);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D72816C0;
    v18 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem];
    *(v17 + 32) = v18;
    v19 = v18;
    v20 = sub_1D726317C();

    *(v16 + 32) = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D72816C0;
    sub_1D5F5AE48();
    *(v21 + 32) = v22;
    v23 = sub_1D726317C();

    *(v16 + 40) = v23;
    v24 = sub_1D726265C();

    [v15 setTrailingItemGroups_];

    v25 = [v1 navigationItem];
    v26 = [v4 secondarySystemBackgroundColor];
    sub_1D71CD7DC(v25, v26);

    v27 = *(*&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_statusView] + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_onTargetTap);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v27;

    v29 = sub_1D725D03C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1D5F5B37C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D5F5B3D0();
  }
}

void sub_1D5F5B3D0()
{
  v0 = MEMORY[0x1E69D6E30];
  sub_1D5F5DB14(0, &qword_1EC881610, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E30]);
  v66 = v1;
  v64 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v65 = &v59 - v3;
  v4 = sub_1D725970C();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F5DB14(0, &unk_1EC890070, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v0);
  v8 = v7;
  v71 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v59 - v10;
  sub_1D5F5D9E4(0, &unk_1EC890040, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment, v0);
  v68 = v11;
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v59 - v14;
  sub_1D5F5D9E4(0, &unk_1EC890050, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget, v0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v59 - v20;
  sub_1D5B5BE5C(0, &unk_1EC8941A0, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6F90]);
  v22 = *(sub_1D72597DC() - 8);
  v61 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1D7273AE0;
  sub_1D5B677A8(0, &qword_1EC88F1B0, &qword_1EC8941B0, MEMORY[0x1E69D6EC8]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7284F00;
  sub_1D5F5D9E4(0, &qword_1EC881618, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget, MEMORY[0x1E69D6E50]);
  v25 = v24;
  if (qword_1EC87D678 != -1)
  {
    swift_once();
  }

  v26 = *MEMORY[0x1E69D6E28];
  (*(v18 + 104))(v21, v26, v17);
  sub_1D5E48934();

  v27 = sub_1D72597AC();
  *(v23 + 56) = v25;
  *(v23 + 64) = sub_1D5F5DA4C(&qword_1EC881620, &qword_1EC881618, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget);
  *(v23 + 32) = v27;
  sub_1D5F5D9E4(0, &unk_1EC8900C0, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment, MEMORY[0x1E69D6E50]);
  v29 = v28;
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  (*(v12 + 104))(v15, v26, v68);
  sub_1D5E4B768();

  v30 = sub_1D72597AC();
  *(v23 + 96) = v29;
  *(v23 + 104) = sub_1D5F5DA4C(&qword_1EC8900D0, &unk_1EC8900C0, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment);
  *(v23 + 72) = v30;
  sub_1D5F5DB14(0, &unk_1EC890080, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
  v32 = v31;
  v33 = v60;
  v34 = v71;
  if (qword_1EC87D698 != -1)
  {
    swift_once();
  }

  v59 = *(v34 + 104);
  v59(v33, v26, v8);

  v35 = sub_1D725978C();
  *(v23 + 136) = v32;
  v36 = sub_1D5F5DAB0(&qword_1EC881628, &unk_1EC890080, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  LODWORD(v71) = v26;
  v37 = v36;
  *(v23 + 144) = v36;
  *(v23 + 112) = v35;
  v38 = v63;
  if (qword_1EC87D6A0 != -1)
  {
    swift_once();
  }

  v39 = v70;
  v40 = *(v69 + 104);
  LODWORD(v69) = *MEMORY[0x1E69D6D78];
  v68 = v40;
  v40(v38);
  v59(v33, v71, v8);

  v41 = sub_1D725979C();
  *(v23 + 176) = v32;
  *(v23 + 184) = v37;
  *(v23 + 152) = v41;
  sub_1D5F5DB14(0, &qword_1EC881630, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
  v43 = v42;
  if (qword_1EC87D680 != -1)
  {
    swift_once();
  }

  v60 = "rmatUploadDiffViewController";
  v68(v38, v69, v39);
  v44 = v65;
  v45 = v66;
  v64 = *(v64 + 104);
  (v64)(v65, v71, v66);

  v46 = sub_1D72597BC();
  *(v23 + 216) = v43;
  v47 = sub_1D5F5DAB0(&qword_1EC8900E0, &qword_1EC881630, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  *(v23 + 224) = v47;
  *(v23 + 192) = v46;
  if (qword_1EC87D688 != -1)
  {
    swift_once();
  }

  v68(v38, v69, v70);
  (v64)(v44, v71, v45);

  v48 = sub_1D72597BC();
  *(v23 + 256) = v43;
  *(v23 + 264) = v47;
  *(v23 + 232) = v48;
  sub_1D72597CC();
  v49 = sub_1D725DFCC();
  swift_allocObject();
  v50 = sub_1D725DFBC();
  v73 = v49;
  v74 = MEMORY[0x1E69D7D00];
  v72 = v50;
  v51 = objc_allocWithZone(sub_1D725E42C());
  v52 = sub_1D725E41C();
  v53 = [objc_allocWithZone(sub_1D725EDBC()) initWithRootViewController_];

  v54 = v53;
  [v54 setModalPresentationStyle_];
  v55 = [v54 popoverPresentationController];
  v56 = v67;
  if (v55)
  {
    v57 = v55;
    [v55 setSourceView_];
  }

  v58 = [v54 popoverPresentationController];

  if (v58)
  {
    [v58 setPermittedArrowDirections_];
  }

  [v56 presentViewController:v54 animated:1 completion:0];
}

void sub_1D5F5BF2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteError);
      if (v4)
      {
        v5 = v4;
        v6 = sub_1D5EE7410(v4);
        v7 = sub_1D5EEAADC(v6);
        v9 = v8;
        v10 = *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_editor];
        v11 = type metadata accessor for DebugFormatErrorViewController();
        v12 = objc_allocWithZone(v11);
        v13 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView;
        v14 = objc_allocWithZone(MEMORY[0x1E69DD020]);

        v15 = v7;

        *&v12[v13] = [v14 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
        v16 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_styler;
        type metadata accessor for DebugFormatStyler();
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        *&v12[v16] = v17;
        *&v12[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_editor] = v10;
        v18 = &v12[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel];
        *v18 = v7;
        *(v18 + 1) = v9;
        v24.receiver = v12;
        v24.super_class = v11;
        v19 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
        v20 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
        [v20 setModalPresentationStyle_];
        v21 = [v20 popoverPresentationController];
        if (v21)
        {
          v22 = v21;
          v23 = sub_1D5F5ADC0();
          [v22 setBarButtonItem_];
        }

        [v20 setPreferredContentSize_];

        [v2 presentViewController:v20 animated:1 completion:0];
      }
    }
  }
}

id sub_1D5F5C1E0()
{
  v1 = v0;
  v67.receiver = v0;
  v67.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v67, sel_viewWillLayoutSubviews);
  sub_1D5F5AD14();
  sub_1D606BFAC();

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v68.origin.x = v5;
  v68.origin.y = v7;
  v68.size.width = v9;
  v68.size.height = v11;
  Width = CGRectGetWidth(v68);
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  [result safeAreaInsets];
  v15 = v14;

  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = result;
  [result safeAreaInsets];
  v18 = v17;

  v19 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView];
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = result;
  [result safeAreaInsets];
  v22 = v21;

  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = result;
  v24 = (Width - v15) * 0.5 + -4.0;
  [result bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v69.origin.x = v26;
  v69.origin.y = v28;
  v69.size.width = v30;
  v69.size.height = v32;
  [v19 setFrame_];
  v33 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffGutterView];
  [v19 frame];
  MaxX = CGRectGetMaxX(v70);
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v35 = result;
  v36 = v18 + 32.0;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v71.origin.x = v38;
  v71.origin.y = v40;
  v71.size.width = v42;
  v71.size.height = v44;
  [v33 setFrame_];
  v45 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffGutterView];
  [v33 frame];
  v46 = CGRectGetMaxX(v72);
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v47 = result;
  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v73.origin.x = v49;
  v73.origin.y = v51;
  v73.size.width = v53;
  v73.size.height = v55;
  [v45 setFrame_];
  v56 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView];
  [v45 frame];
  v57 = CGRectGetMaxX(v74);
  result = [v1 view];
  if (result)
  {
    v58 = result;
    [result bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;

    v75.origin.x = v60;
    v75.origin.y = v62;
    v75.size.width = v64;
    v75.size.height = v66;
    return [v56 setFrame_];
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D5F5C600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7261ABC();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D7261B2C();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDFFCEB0;
  sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  v14 = sub_1D5E2FD70();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D5B7E2C0();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_1D7262EDC();
  sub_1D725C30C("Async creating change set for diff %@", 37, 2, &dword_1D5B42000, v12, v17, v13);

  type metadata accessor for DebugFormatUploadDiffChangeSet();
  swift_allocObject();

  v19 = sub_1D6CA0F94(v18);

  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v20 = sub_1D726308C();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v19;
  aBlock[4] = sub_1D5F5D920;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_11;
  v22 = _Block_copy(aBlock);

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5F5D6D4();
  sub_1D5B5BE5C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5F5D72C();
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v11, v7, v22);
  _Block_release(v22);

  (*(v25 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v24);
}

void sub_1D5F5C9E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDFFCEB0;
  sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  v7 = sub_1D5E2FD70();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D5B7E2C0();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = sub_1D7262EDC();
  sub_1D725C30C("Finished creating change set for diff %@", 40, 2, &dword_1D5B42000, v5, v12, v6);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff))
    {

      v15 = sub_1D5E2FD70();
      v17 = v16;

      v18 = sub_1D5E2FD70();
      if (v17)
      {
        if (v15 == v18 && v17 == v19)
        {

LABEL_13:
          v21 = *&v14[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView];
          *(v21 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 0;
          [*(v21 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView) stopAnimating];
          v22 = *&v14[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView];
          *(v22 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 0;
          [*(v22 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView) stopAnimating];
          sub_1D5F5CCA8(a1, a3);
          v23 = swift_allocObject();
          *(v23 + 16) = v27;
          v24 = sub_1D5E2FD70();
          *(v23 + 56) = v10;
          *(v23 + 64) = v11;
          *(v23 + 32) = v24;
          *(v23 + 40) = v25;
          v26 = sub_1D7262EDC();
          sub_1D725C30C("Finished loading change set for diff %@", 39, 2, &dword_1D5B42000, v5, v26, v23);

          return;
        }

        v20 = sub_1D72646CC();

        if (v20)
        {
          goto LABEL_13;
        }

LABEL_11:

        return;
      }
    }

    else
    {
      sub_1D5E2FD70();
    }

    goto LABEL_11;
  }
}

void sub_1D5F5CCA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v52 = a1;
  sub_1D5B5BE5C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v52 - v11;
  v13 = *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView];
  v15 = a2[2];
  v14 = a2[3];
  v16 = OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion;
  v17 = sub_1D725BD1C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15 + v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v19 = *(v13 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel);
  if (v14 >> 62)
  {
    sub_1D7263BFC();
  }

  v20 = sub_1D6BBD35C(v12);
  [v19 setAttributedText_];

  v21 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet;
  swift_beginAccess();
  *(v13 + v21) = v14;

  v22 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView;
  [*(v13 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView) setContentOffset_];
  [*(v13 + v22) setScrollEnabled_];
  [*(v13 + v22) setScrollEnabled_];
  [*(v13 + v22) reloadData];
  sub_1D5F40BCC(v12);
  v23 = *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView];
  v24 = a2[4];
  sub_1D5D3A874(v15 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersion, v8);
  sub_1D6BBC554(v24, 0, v8);
  sub_1D5F40BCC(v8);
  *(v23 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_delegate + 8) = &off_1F5125828;
  swift_unknownObjectWeakAssign();
  v25 = *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffGutterView];
  v26 = v52;
  *&v25[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_numberOfLines] = *(v52 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localNumberOfLines);
  *&v25[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_changedHunkRanges] = *(v26 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localHunkRanges);

  [*(v13 + v22) contentSize];
  v27 = &v25[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentSize];
  *v27 = v28;
  *(v27 + 1) = v29;
  [v25 setNeedsLayout];
  [*(v13 + v22) adjustedContentInset];
  v30 = &v25[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentInsets];
  *v30 = v31;
  *(v30 + 1) = v32;
  *(v30 + 2) = v33;
  *(v30 + 3) = v34;
  [v25 setNeedsLayout];
  v35 = *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffGutterView];
  *&v35[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_numberOfLines] = *(v26 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteNumberOfLines);
  *&v35[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_changedHunkRanges] = *(v26 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteHunkRanges);

  v36 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView;
  [*(v23 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView) contentSize];
  v37 = &v35[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentSize];
  *v37 = v38;
  *(v37 + 1) = v39;
  [v35 setNeedsLayout];
  [*(v23 + v36) adjustedContentInset];
  v40 = &v35[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentInsets];
  *v40 = v41;
  *(v40 + 1) = v42;
  *(v40 + 2) = v43;
  *(v40 + 3) = v44;
  [v35 setNeedsLayout];
  v45 = [v3 navigationController];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 navigationBar];

    [v47 setNeedsLayout];
  }

  v48 = [v3 view];
  if (v48)
  {
    v49 = v48;
    [v48 setNeedsLayout];

    v50 = [v3 view];
    if (v50)
    {
      v51 = v50;
      [v50 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D5F5D2C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BE5C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - v13;
  if (*&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView] == a1)
  {
    v15 = *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff];
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersions);
      sub_1D5D3A874(v15 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersion, v14);
      (*(v7 + 16))(v10, v15 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion, v6);
      v17 = objc_allocWithZone(type metadata accessor for DebugFormatUploadDiffVersionsViewController(0));

      v18 = sub_1D69BC1D8(v16, v14, v10);
      v19 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
      [v19 setModalPresentationStyle_];
      v20 = [v19 popoverPresentationController];
      if (v20)
      {
        v21 = v20;
        [v20 setSourceItem_];
      }

      [v3 presentViewController:v19 animated:1 completion:0];
    }
  }
}

id sub_1D5F5D528(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager] = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView;
  v8 = type metadata accessor for DebugFormatUploadDiffView();
  v9 = objc_allocWithZone(v8);
  *&v2[v7] = sub_1D6BBC660(0);
  v10 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffGutterView;
  v11 = type metadata accessor for DebugFormatUploadDiffGutterView();
  v12 = objc_allocWithZone(v11);
  *&v2[v10] = sub_1D724552C(0);
  v13 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView;
  v14 = objc_allocWithZone(v8);
  *&v2[v13] = sub_1D6BBC660(1);
  v15 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffGutterView;
  v16 = objc_allocWithZone(v11);
  *&v2[v15] = sub_1D724552C(1);
  v17 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_changeSetLabel;
  sub_1D725D04C();
  *&v2[v17] = sub_1D725D01C();
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___dismissBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_editor] = a1;
  v18 = objc_allocWithZone(type metadata accessor for DebugFormatUploadDiffStatusView());
  v19 = swift_retain_n();
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_statusView] = sub_1D5DEDBE8(v19);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

unint64_t sub_1D5F5D6D4()
{
  result = qword_1EDF3A8F0;
  if (!qword_1EDF3A8F0)
  {
    sub_1D7261ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A8F0);
  }

  return result;
}

unint64_t sub_1D5F5D72C()
{
  result = qword_1EDF1B560;
  if (!qword_1EDF1B560)
  {
    sub_1D5B5BE5C(255, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B560);
  }

  return result;
}

void sub_1D5F5D7B4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager) = 0;
  v2 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView;
  v5 = type metadata accessor for DebugFormatUploadDiffView();
  v6 = objc_allocWithZone(v5);
  *(v1 + v4) = sub_1D6BBC660(0);
  v7 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffGutterView;
  v8 = type metadata accessor for DebugFormatUploadDiffGutterView();
  v9 = objc_allocWithZone(v8);
  *(v1 + v7) = sub_1D724552C(0);
  v10 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView;
  v11 = objc_allocWithZone(v5);
  *(v1 + v10) = sub_1D6BBC660(1);
  v12 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffGutterView;
  v13 = objc_allocWithZone(v8);
  *(v1 + v12) = sub_1D724552C(1);
  v14 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_changeSetLabel;
  sub_1D725D04C();
  *(v1 + v14) = sub_1D725D01C();
  *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___dismissBarButtonItem) = 0;
  sub_1D726402C();
  __break(1u);
}

unint64_t sub_1D5F5D93C()
{
  result = qword_1EC88DE40;
  if (!qword_1EC88DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DE40);
  }

  return result;
}

unint64_t sub_1D5F5D990()
{
  result = qword_1EC88DE30;
  if (!qword_1EC88DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DE30);
  }

  return result;
}

void sub_1D5F5D9E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D5F5DA4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F5D9E4(255, a2, a3, a4, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F5DAB0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F5DB14(255, a2, a3, a4, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5F5DB14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5F5DB70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F5DBCC()
{
  v1 = sub_1D725ABEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F5DEEC(0, &unk_1EDF17830, sub_1D5F5DEA0, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1D5F5DEEC(0, &qword_1EDF023E0, MEMORY[0x1E69D6430], MEMORY[0x1E69E6F90]);
  sub_1D725A9BC();
  v8 = swift_allocObject();
  v8[1] = xmmword_1D7273AE0;
  v14 = *(v0 + 16);
  v9 = qword_1EDF17C78;
  v10 = v14;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v1, qword_1EDF17C80);
  (*(v2 + 16))(v5, v11, v1);
  sub_1D5F5DEA0();
  sub_1D725BF4C();
  sub_1D725A9AC();
  v14 = v8;
  sub_1D5F5DEEC(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

unint64_t sub_1D5F5DEA0()
{
  result = qword_1EDF1AC30;
  if (!qword_1EDF1AC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AC30);
  }

  return result;
}

void sub_1D5F5DEEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id Fonts.Font.font(size:)(double a1)
{
  v2 = sub_1D726203C();
  v3 = objc_opt_self();
  v4 = [v3 fontWithName:v2 size:a1];

  if (v4)
  {
    return v4;
  }

  v6 = [v3 systemFontOfSize_];

  return v6;
}

id Fonts.Font.scaledFont(size:style:)(uint64_t a1, double a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v4 = sub_1D726203C();
  v5 = objc_opt_self();
  v6 = [v5 fontWithName:v4 size:a2];

  if (!v6)
  {
    v6 = [v5 systemFontOfSize_];
  }

  v7 = [v3 scaledFontForFont_];

  return v7;
}

uint64_t sub_1D5F5E180@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

double sub_1D5F5E1E8(uint64_t *a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  *a2 = v5;
  *a3 = v6;

  return result;
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

double sub_1D5F5E2F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;

  return result;
}

uint64_t FormatTextNodeAlternative.identifier.getter()
{
  v1 = *v0;

  return v1;
}

double FormatTextNodeAlternative.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

double FormatTextNodeAlternative.logic.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);

  return result;
}

uint64_t _s8NewsFeed25FormatTextNodeAlternativeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D72646CC()) && (v10 = v5, v11 = v2, , , v7 = static FormatTextContent.== infix(_:_:)(&v11, &v10), , , (v7))
  {
    v10 = v4;
    v11 = v3;

    v8 = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v11, &v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_1D5F5E500(uint64_t a1)
{
  result = sub_1D5F5E528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F5E528()
{
  result = qword_1EC881658;
  if (!qword_1EC881658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881658);
  }

  return result;
}

unint64_t sub_1D5F5E57C(void *a1)
{
  a1[1] = sub_1D5CE5E78();
  a1[2] = sub_1D5F5E5B4();
  result = sub_1D5F5E608();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F5E5B4()
{
  result = qword_1EDF0BF30;
  if (!qword_1EDF0BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BF30);
  }

  return result;
}

unint64_t sub_1D5F5E608()
{
  result = qword_1EC881660;
  if (!qword_1EC881660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881660);
  }

  return result;
}

uint64_t sub_1D5F5E678(uint64_t a1)
{
  type metadata accessor for DebugFormatLogger();
  v1 = swift_allocObject();
  result = sub_1D5F5E728();
  qword_1EC9BA710 = v1;
  return result;
}

uint64_t sub_1D5F5E6B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F5E728()
{
  v1 = v0;
  v2 = sub_1D726307C();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v16 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v9, v10);
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5B5E158(0, &qword_1EC881668, sub_1D5F5FB64, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v11 = sub_1D725B2FC();
  v12 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  sub_1D5B5E158(0, &unk_1EDF19B40, MEMORY[0x1E69D6388], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  sub_1D725A78C();
  v19 = v13;
  sub_1D5B73710(&qword_1EDF3BDF0, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  sub_1D5B6BD6C(0);
  v14 = MEMORY[0x1E69E6328];
  sub_1D5B73710(&qword_1EDF1B5C0, sub_1D5B6BD6C, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v1 + 32) = sub_1D725A7AC();
  sub_1D5B5DA7C();
  sub_1D7261AEC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5B73710(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D5B631E8(0);
  sub_1D5B73710(&qword_1EDF1AE80, sub_1D5B631E8, v14);
  sub_1D7263B6C();
  (*(v17 + 104))(v16, *MEMORY[0x1E69E8090], v18);
  *(v1 + 40) = sub_1D72630BC();
  return v1;
}

double sub_1D5F5EBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a1;
  v45 = sub_1D7261ABC();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v10);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D7261B2C();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v12);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725891C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v37 - v21;
  v42 = &v37 - v21;
  sub_1D725890C();
  v38 = sub_1D5F5F1C0(a2, a3, a4, a5, v5);
  v24 = v23;
  v40 = *(v5 + 40);
  v25 = v14;
  (*(v15 + 16))(v18, v22, v14);
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = (v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v15 + 32))(v29 + v26, v18, v25);
  v30 = (v29 + v27);
  *v30 = v38;
  v30[1] = v24;
  v31 = v41;
  *(v29 + v28) = v41;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;
  aBlock[4] = sub_1D5F5F790;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_10;
  v32 = _Block_copy(aBlock);
  sub_1D5F5F838(v31);

  v33 = v39;
  sub_1D7261AEC();
  v48 = MEMORY[0x1E69E7CC0];
  sub_1D5B73710(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D5B73908(0);
  sub_1D5B73710(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
  v34 = v43;
  v35 = v45;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v33, v34, v32);
  _Block_release(v32);
  (*(v47 + 8))(v34, v35);
  (*(v44 + 8))(v33, v46);
  (*(v15 + 8))(v42, v25);

  return result;
}

double sub_1D5F5EFFC(uint64_t a1)
{

  sub_1D725B32C();

  return result;
}

double sub_1D5F5F160()
{

  sub_1D725BFFC();

  return result;
}

uint64_t sub_1D5F5F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && ((v10 = CACurrentMediaTime(), sub_1D725A76C(), swift_beginAccess(), v11 = *(a5 + 24), v12 = 0.0, !*(v11 + 16)) || (v13 = sub_1D5B69D90(a1, a2), (v14 & 1) == 0) ? (v15 = 1) : (v15 = 0, v12 = *(*(v11 + 56) + 8 * v13)), swift_endAccess(), swift_beginAccess(), sub_1D607E620(a1, a2), swift_endAccess(), sub_1D725A77C(), (v15 & 1) == 0))
  {
    sub_1D5B5E158(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7270C10;
    v17 = MEMORY[0x1E69E6438];
    *(v16 + 56) = MEMORY[0x1E69E63B0];
    *(v16 + 64) = v17;
    *(v16 + 32) = (v10 - v12) * 1000.0;
    *(v16 + 96) = MEMORY[0x1E69E6158];
    *(v16 + 104) = sub_1D5B7E2C0();
    *(v16 + 72) = a3;
    *(v16 + 80) = a4;

    return sub_1D72620BC();
  }

  else
  {
  }

  return a3;
}

uint64_t sub_1D5F5F398(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_1D7261ABC();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D7261B2C();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D725891C();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a1, v19);
  type metadata accessor for DebugFormatLogEntry(0);
  swift_allocObject();

  sub_1D5F5F838(a4);
  v23 = sub_1D6182BCC(v21, a2, a3, a4);
  sub_1D5F5FB48(a4);
  sub_1D5B5DA7C();
  v24 = sub_1D726308C();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v23;
  aBlock[4] = sub_1D5F5FB5C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_10_0;
  v27 = _Block_copy(aBlock);

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5B73710(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D5B73908(0);
  sub_1D5B73710(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v16, v12, v27);
  _Block_release(v27);

  (*(v30 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v29);
}

uint64_t sub_1D5F5F790()
{
  v1 = *(sub_1D725891C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  return sub_1D5F5F398(v0 + v2, v8, v9, v6, v7);
}

id sub_1D5F5F838(id result)
{
  if (result - 1 >= 4)
  {
    return result;
  }

  return result;
}

double sub_1D5F5F84C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D5E42B34();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D72816C0;
    *(inited + 32) = a2;

    v5 = sub_1D725B30C();
    sub_1D6986C50(inited);
    v5(&v6, 0);
  }

  return result;
}

uint64_t sub_1D5F5F928(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D725895C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    sub_1D725894C();
    a1 = sub_1D725893C();
    v11 = v12;
    (*(v7 + 8))(v10, v6);
  }

  v13 = CACurrentMediaTime();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC9BA710;

  sub_1D725A76C();

  swift_beginAccess();
  if (!*(*(v14 + 24) + 16))
  {
    swift_endAccess();
LABEL_11:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v14 + 24);
    *(v14 + 24) = 0x8000000000000000;
    sub_1D6D78B1C(a1, v11, isUniquelyReferenced_nonNull_native, v13);
    *(v14 + 24) = v19;
    swift_endAccess();
    goto LABEL_12;
  }

  sub_1D5B69D90(a1, v11);
  v16 = v15;
  swift_endAccess();
  if (v16 & 1) == 0 || (a3)
  {
    goto LABEL_11;
  }

LABEL_12:

  sub_1D725A77C();

  return a1;
}

void sub_1D5F5FB48(id a1)
{
  if (a1 - 1 >= 4)
  {
  }
}

unint64_t sub_1D5F5FBB4()
{
  result = qword_1EC881688;
  if (!qword_1EC881688)
  {
    sub_1D5F5FC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881688);
  }

  return result;
}

void sub_1D5F5FC0C()
{
  if (!qword_1EC881690)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881690);
    }
  }
}

unint64_t sub_1D5F5FC5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5F60660(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D5F5FC8C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "unusedProperties";
  v4 = 0xD00000000000001CLL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000028;
    v3 = "duplicateNewsroomIdentifiers";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "bility-news-plus-via-hardware";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_1D5F5FD98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "unusedProperties";
  v4 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD000000000000028;
  }

  if (v2 == 1)
  {
    v6 = "unusedProperties";
  }

  else
  {
    v6 = "duplicateNewsroomIdentifiers";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "bility-news-plus-via-hardware";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000028;
    v3 = "duplicateNewsroomIdentifiers";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "bility-news-plus-via-hardware";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D5F5FE70()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F5FF0C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F5FF94(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5F60040()
{
  result = qword_1EC881698;
  if (!qword_1EC881698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881698);
  }

  return result;
}

unint64_t sub_1D5F60094()
{
  v1 = 0xD000000000000024;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1D5F600EC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5F602A0();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC881670 = result;
  return result;
}

void sub_1D5F602A0()
{
  if (!qword_1EDF45BA8)
  {
    v0 = sub_1D725986C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45BA8);
    }
  }
}

uint64_t sub_1D5F602F8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5F602A0();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC881678 = result;
  return result;
}

uint64_t sub_1D5F604AC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5F602A0();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC881680 = result;
  return result;
}

unint64_t sub_1D5F60660(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5F606AC()
{
  sub_1D72596FC();
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = byte_1F50F7A00[v0 + 32];
    sub_1D72596DC();
    if (v4)
    {
      if (v4 == 1)
      {
        if (qword_1EC87D4A8 == -1)
        {
          goto LABEL_13;
        }

LABEL_9:
        swift_once();
        goto LABEL_13;
      }

      if (qword_1EC87D4B0 != -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1EC87D4A0 != -1)
    {
      goto LABEL_9;
    }

LABEL_13:

    sub_1D72596CC();

    if (v7 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998484(0, *(v1 + 16) + 1, 1);
      }

      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      if (v3 >= v2 >> 1)
      {
        sub_1D6998484((v2 > 1), v3 + 1, 1);
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + v3 + 32) = v4;
    }

    ++v0;
  }

  while (v0 != 3);
  v5 = sub_1D62DCBC0(v1);

  return v5;
}

unint64_t sub_1D5F608B4()
{
  result = qword_1EC8816A0;
  if (!qword_1EC8816A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816A0);
  }

  return result;
}

uint64_t FormatScoreDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatScoreDataVisualization.umcIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatScoreDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatScoreDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

uint64_t FormatScoreDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

double FormatScoreDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

double FormatScoreDataVisualization.traits.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;

  return result;
}

void *FormatScoreDataVisualization.__allocating_init(tagIdentifier:umcIdentifier:selectors:properties:query:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  swift_beginAccess();
  v17[6] = a5;
  swift_beginAccess();
  v17[7] = a6;
  swift_beginAccess();
  v17[8] = a7;
  v17[9] = a8;
  swift_beginAccess();
  v17[10] = a9;
  return v17;
}

void *FormatScoreDataVisualization.init(tagIdentifier:umcIdentifier:selectors:properties:query:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  swift_beginAccess();
  v9[6] = a5;
  swift_beginAccess();
  v9[7] = a6;
  swift_beginAccess();
  v9[8] = a7;
  v9[9] = a8;
  swift_beginAccess();
  v9[10] = a9;
  return v9;
}

uint64_t sub_1D5F60E78()
{
  v1 = *v0;
  v2 = 0x746E656449676174;
  v3 = 0x69747265706F7270;
  v4 = 0x7972657571;
  if (v1 != 4)
  {
    v4 = 0x737469617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E656449636D75;
  if (v1 != 1)
  {
    v5 = 0x726F7463656C6573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D5F60F3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F6272C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F60F64(uint64_t a1)
{
  v2 = sub_1D5E1C734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F60FA0(uint64_t a1)
{
  v2 = sub_1D5E1C734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FormatScoreDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatScoreDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void FormatScoreDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5F623D8(0, &qword_1EDF025B0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C734();
  sub_1D7264B5C();
  v19 = 0;
  sub_1D72643FC();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v19 = 1;
    sub_1D72643FC();
    swift_beginAccess();
    if (*(v3[6] + 16))
    {

      sub_1D5E06A44(v11, v10, 2);
    }

    swift_beginAccess();
    v12 = v3[7];
    if (*(v12 + 16))
    {
      v17[0] = 3;
      v18 = v12;
      sub_1D5F62238();
      sub_1D5E4C584();
      sub_1D5E4C5D4();

      sub_1D72647EC();
    }

    swift_beginAccess();
    v13 = v3[8];
    v14 = v3[9];

    sub_1D5EAEEDC(v13, v14, 4);

    swift_beginAccess();
    v15 = v3[10];
    v16 = *(v15 + 16);

    if (v16)
    {
      sub_1D5E06804(v15, v10, 5);
    }

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t FormatScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatScoreDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatScoreDataVisualization.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v50 = v2;
  v51 = v5;
  sub_1D5F622AC(0);
  v44 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E18934(0);
  v47 = v9;
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v13 = v12;
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F623D8(0, &qword_1EDF19BD8, MEMORY[0x1E69E6F48]);
  v18 = v17;
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v42 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C734();
  v22 = v50;
  v23 = v1;
  sub_1D7264B0C();
  if (v22)
  {
    swift_deallocPartialClassInstance();
    v25 = a1;
  }

  else
  {
    LOBYTE(v52) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v24;
    LOBYTE(v52) = 1;
    v1[4] = sub_1D72642BC();
    v1[5] = v27;
    v28 = v21;
    LOBYTE(v52) = 2;
    v29 = sub_1D726434C();
    v50 = v18;
    if (v29)
    {
      v55 = 2;
      sub_1D5F6243C(&qword_1EDF3BE00, 255, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
      v30 = v13;
      sub_1D726431C();
      v31 = v28;
      v32 = sub_1D725A74C();
      (v46[1])(v16, v30);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CD0];
      v31 = v21;
    }

    v3[6] = v32;
    LOBYTE(v52) = 3;
    v33 = sub_1D726434C();
    v46 = a1;
    if (v33)
    {
      v55 = 3;
      sub_1D5F6243C(&qword_1EDF3BD70, 255, sub_1D5E18934, MEMORY[0x1E69D64C8]);
      v34 = v47;
      v35 = v48;
      sub_1D726431C();
      v36 = sub_1D725A74C();
      (*(v43 + 8))(v35, v34);
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    v3[7] = v36;
    v55 = 4;
    if (sub_1D726434C())
    {
      v54 = 4;
      sub_1D726431C();
      v37 = v52;
      v38 = v53;
    }

    else
    {
      v37 = 0;
      v38 = 0xE000000000000000;
    }

    v3[8] = v37;
    v3[9] = v38;
    LOBYTE(v52) = 5;
    if (sub_1D726434C())
    {
      v55 = 5;
      sub_1D5F6243C(&qword_1EC8816A8, 255, sub_1D5F622AC, MEMORY[0x1E69D6380]);
      v39 = v44;
      v40 = v45;
      sub_1D726431C();
      v41 = sub_1D725A74C();
      (*(v42 + 8))(v40, v39);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CD0];
    }

    (*(v49 + 8))(v31, v50);
    v23[10] = v41;
    v25 = v46;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v23;
}

void *sub_1D5F61B38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

NewsFeed::FormatScoreDataVisualizationTrait_optional __swiftcall FormatScoreDataVisualizationTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatScoreDataVisualizationTrait.rawValue.getter()
{
  if (*v0)
  {
    return 0x646165687473616DLL;
  }

  else
  {
    return 0x6465727574616566;
  }
}

uint64_t sub_1D5F61C58(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646165687473616DLL;
  }

  else
  {
    v2 = 0x6465727574616566;
  }

  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

void sub_1D5F61CE0(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D5F61D40(uint64_t *a1@<X8>)
{
  v2 = 0x6465727574616566;
  if (*v1)
  {
    v2 = 0x646165687473616DLL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_1D5F61E28()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F61EA0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F61EFC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t static FormatScoreDataVisualizationTrait.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646165687473616DLL;
  }

  else
  {
    v2 = 0x6465727574616566;
  }

  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D5F61FF8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646165687473616DLL;
  }

  else
  {
    v2 = 0x6465727574616566;
  }

  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D5F62080(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2)
  {
    v4 = 0x646165687473616DLL;
  }

  else
  {
    v4 = 0x6465727574616566;
  }

  if (v3 == v4)
  {
    swift_bridgeObjectRelease_n();
    v5 = 1;
  }

  else
  {
    v6 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1D5F62118(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646165687473616DLL;
  }

  else
  {
    v2 = 0x6465727574616566;
  }

  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D5F621B0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2)
  {
    v4 = 0x646165687473616DLL;
  }

  else
  {
    v4 = 0x6465727574616566;
  }

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

unint64_t sub_1D5F62238()
{
  result = qword_1EC87F9C0;
  if (!qword_1EC87F9C0)
  {
    sub_1D5F623D8(255, &qword_1EDF025B0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F9C0);
  }

  return result;
}

void sub_1D5F622AC(uint64_t a1)
{
  if (!qword_1EDF17F58)
  {
    sub_1D5F62330();
    sub_1D5E1C788();
    sub_1D5F62384();
    v1 = sub_1D725A75C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17F58);
    }
  }
}

unint64_t sub_1D5F62330()
{
  result = qword_1EDF07D50;
  if (!qword_1EDF07D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D50);
  }

  return result;
}

unint64_t sub_1D5F62384()
{
  result = qword_1EDF07D60;
  if (!qword_1EDF07D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D60);
  }

  return result;
}

void sub_1D5F623D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E1C734();
    v7 = a3(a1, &type metadata for FormatScoreDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F6243C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D5F62484(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5F6243C(&qword_1EDF217D0, a2, type metadata accessor for FormatScoreDataVisualization, &protocol conformance descriptor for FormatScoreDataVisualization);
  a1[2] = sub_1D5F6243C(&qword_1EDF0A850, v3, type metadata accessor for FormatScoreDataVisualization, &protocol conformance descriptor for FormatScoreDataVisualization);
  result = sub_1D5F6243C(&qword_1EC8816B0, v4, type metadata accessor for FormatScoreDataVisualization, &protocol conformance descriptor for FormatScoreDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F62554()
{
  result = qword_1EDF07D58;
  if (!qword_1EDF07D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D58);
  }

  return result;
}

unint64_t sub_1D5F62628()
{
  result = qword_1EC8816B8;
  if (!qword_1EC8816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816B8);
  }

  return result;
}

unint64_t sub_1D5F62680()
{
  result = qword_1EDF217D8;
  if (!qword_1EDF217D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217D8);
  }

  return result;
}

unint64_t sub_1D5F626D8()
{
  result = qword_1EDF217E0;
  if (!qword_1EDF217E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217E0);
  }

  return result;
}

uint64_t sub_1D5F6272C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449676174 && a2 == 0xED00007265696669;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656449636D75 && a2 == 0xED00007265696669 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1D5F62940()
{
  result = qword_1EC8816C0;
  if (!qword_1EC8816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816C0);
  }

  return result;
}

uint64_t sub_1D5F62998(uint64_t a1)
{
  v18 = type metadata accessor for FormatInspectionItem(0);
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5446C(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1D5C10B78(v13, v5, type metadata accessor for FormatInspectionItem);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D69972A4((v15 > 1), v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_1D5F77210(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_1D5F62BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D6997338(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1D5B68374(v4, v11);
      sub_1D5B49474(0, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
      sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D6997338((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F62E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v23 = a5;
  sub_1D5F77604(0, a2, a3, a4);
  v22 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699775C(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    do
    {
      sub_1D5F7737C(v16, v13, a2, a3, a4);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699775C((v18 > 1), v19 + 1, 1);
        v15 = v27;
      }

      v25 = v22;
      v26 = v23();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
      sub_1D5F7737C(v13, boxed_opaque_existential_1, a2, a3, a4);
      *(v15 + 16) = v19 + 1;
      sub_1D5B63F14(&v24, v15 + 40 * v19 + 32);
      sub_1D5F77480(v13, a2, a3, a4);
      v16 += v17;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_1D5F62FF8(uint64_t a1)
{
  sub_1D5C2C40C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D699775C(0, v8, 0);
    v9 = v19;
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1D5C10B78(v10, v7, sub_1D5C2C40C);
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D699775C((v12 > 1), v13 + 1, 1);
        v9 = v19;
      }

      v17 = v3;
      v18 = sub_1D5F7730C();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      sub_1D5C10B78(v7, boxed_opaque_existential_1, sub_1D5C2C40C);
      *(v9 + 16) = v13 + 1;
      sub_1D5B63F14(&v16, v9 + 40 * v13 + 32);
      sub_1D5C10CF8(v7, sub_1D5C2C40C);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_1D5F631C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v1, 0);
    v2 = v28;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[7];
      v26 = v4[6];
      v27[0] = v5;
      *(v27 + 9) = *(v4 + 121);
      v6 = v4[3];
      v22 = v4[2];
      v23 = v6;
      v7 = v4[5];
      v24 = v4[4];
      v25 = v7;
      v8 = v4[1];
      v20 = *v4;
      v21 = v8;
      sub_1D5ECF2C4(&v20, &v17);
      v28 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D5BD0BA0((v9 > 1), v10 + 1, 1);
        v2 = v28;
      }

      v18 = &type metadata for FeedIssue;
      v19 = sub_1D5EE5AA4();
      v11 = swift_allocObject();
      *&v17 = v11;
      v12 = v27[0];
      v11[7] = v26;
      v11[8] = v12;
      *(v11 + 137) = *(v27 + 9);
      v13 = v23;
      v11[3] = v22;
      v11[4] = v13;
      v14 = v25;
      v11[5] = v24;
      v11[6] = v14;
      v15 = v21;
      v11[1] = v20;
      v11[2] = v15;
      *(v2 + 16) = v10 + 1;
      sub_1D5B63F14(&v17, v2 + 40 * v10 + 32);
      v4 += 9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F633B0(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v18 = MEMORY[0x1E69E7CC0];
    a2(0, v4, 0);
    v5 = v18;
    a3(0);
    a4(0);
    v10 = a1 + 48;
    do
    {

      swift_dynamicCast();
      v11 = v17;
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        a2(v12 > 1, v13 + 1, 1);
        v11 = v17;
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 24 * v13;
      *(v14 + 32) = v16;
      *(v14 + 40) = v11;
      v10 += 24;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_1D5F634FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D69981B4(0, v1, 0);
    v2 = v23;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v18[0] = *v4;
      v18[1] = v5;
      v6 = v4[3];
      v8 = *v4;
      v7 = v4[1];
      v18[2] = v4[2];
      v18[3] = v6;
      v19 = v8;
      v20 = v7;
      v9 = v4[3];
      v21 = v4[2];
      v22 = v9;
      sub_1D5C10B78(v18, v17, sub_1D5F76F44);
      sub_1D5F76F44();
      sub_1D5F76FA8();
      swift_dynamicCast();
      v21 = v17[2];
      v22 = v17[3];
      v19 = v17[0];
      v20 = v17[1];
      v23 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D69981B4((v10 > 1), v11 + 1, 1);
        v2 = v23;
      }

      *(v2 + 16) = v11 + 1;
      v12 = (v2 + (v11 << 6));
      v13 = v19;
      v14 = v20;
      v15 = v22;
      v12[4] = v21;
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F63640(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D6997338(0, v1, 0);
    v2 = v12;
    sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
    v4 = a1 + 64;
    do
    {

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D6997338((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F63784(uint64_t a1)
{
  v2 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D6998EB8(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1D5C10B78(v9, v6, type metadata accessor for FeedItemSupplementaryAttributes);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D6998EB8((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_1D5C10CB0(&qword_1EDF13408, 255, type metadata accessor for FeedItemSupplementaryAttributes, &protocol conformance descriptor for FeedItemSupplementaryAttributes);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_1D5C10B78(v6, boxed_opaque_existential_1, type metadata accessor for FeedItemSupplementaryAttributes);
      *(v8 + 16) = v12 + 1;
      sub_1D5B63F14(&v15, v8 + 40 * v12 + 32);
      sub_1D5C10CF8(v6, type metadata accessor for FeedItemSupplementaryAttributes);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

char *sub_1D5F6398C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D5B8C520(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1DA6FB460](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D5B8C520((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1D5B7C390(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D5B8C520((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1D5B7C390(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F63B58(uint64_t a1)
{
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D5B8C520(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D5B8C520((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D5B7C390(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_1D5F63CF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BD0BA0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6FB460](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D5BD0BA0((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_1D725CC1C();
        v15 = sub_1D5C10CB0(&qword_1EDF17308, 255, MEMORY[0x1E69D7608], &protocol conformance descriptor for PluginModel);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D5B63F14(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_1D5BD0BA0((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_1D725CC1C();
        v15 = sub_1D5C10CB0(&qword_1EDF17308, 255, MEMORY[0x1E69D7608], &protocol conformance descriptor for PluginModel);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_1D5B63F14(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F63F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1D5F76E40(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D5BD0BA0((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for FeedCatalogItem;
      v10 = sub_1D5F76E9C();
      *&v8 = swift_allocObject();
      sub_1D5F76E40(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1D5B63F14(&v8, v2 + 40 * v6 + 32);
      sub_1D5F76EF0(v11);
      v4 += 288;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F64044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1D5F76D3C(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D5BD0BA0((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for FeedCategory;
      v10 = sub_1D5F76D98();
      *&v8 = swift_allocObject();
      sub_1D5F76D3C(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1D5B63F14(&v8, v2 + 40 * v6 + 32);
      sub_1D5F76DEC(v11);
      v4 += 152;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F64170(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D6997EC0(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *(v4 - 1);
      v13 = *(v4 - 2);
      v8 = *v4;
      v17 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_1D6997EC0((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      v15 = &type metadata for FormatInspectionGroup;
      v16 = &off_1F518B2C0;
      v11 = swift_allocObject();
      *&v14 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v13;
      v11[5] = v7;
      v11[6] = v8;
      *(v2 + 16) = v10 + 1;
      sub_1D5B63F14(&v14, v2 + 40 * v10 + 32);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F642B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D6999478(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D5ECF0E0(v5);
      sub_1D5B5D3A4(0, &qword_1EDF0F198, &type metadata for FormatColorProcessor, MEMORY[0x1E69E6720]);
      swift_dynamicCast();
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D6999478((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 8 * v7 + 32) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1D5F643CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D69995F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1DA6FB460](i, a1);
        type metadata accessor for DebugFormatUploadHiddenViewController();
        sub_1D5F77290();
        swift_dynamicCast();
        v6 = v14;
        v8 = *(v15 + 16);
        v7 = *(v15 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D69995F8((v7 > 1), v8 + 1, 1);
          v6 = v14;
        }

        *(v15 + 16) = v8 + 1;
        *(v15 + 16 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (a1 + 32);
      type metadata accessor for DebugFormatUploadHiddenViewController();
      sub_1D5F77290();
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v11 = v14;
        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D69995F8((v12 > 1), v13 + 1, 1);
          v11 = v14;
        }

        *(v15 + 16) = v13 + 1;
        *(v15 + 16 * v13 + 32) = v11;
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1D5F645A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D6999A38(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69D7CA0];
      do
      {
        MEMORY[0x1DA6FB460](v5, a1);
        sub_1D725D3DC();
        sub_1D5BFB8A8(0, &qword_1EDF3B530, &qword_1EDF3B540, v6);
        swift_dynamicCast();
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D6999A38((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        *(v17 + 16) = v8 + 1;
        v9 = v17 + 40 * v8;
        *(v9 + 64) = v16;
        *(v9 + 32) = v14;
        *(v9 + 48) = v15;
      }

      while (v2 != v5);
    }

    else
    {
      v10 = a1 + 32;
      sub_1D725D3DC();
      sub_1D5BFB8A8(0, &qword_1EDF3B530, &qword_1EDF3B540, MEMORY[0x1E69D7CA0]);
      do
      {

        swift_dynamicCast();
        v12 = *(v17 + 16);
        v11 = *(v17 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1D6999A38((v11 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v13 = v17 + 40 * v12;
        *(v13 + 64) = v16;
        *(v13 + 32) = v14;
        *(v13 + 48) = v15;
        v10 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1D5F647D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D5B8C520(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1DA6FB460](i, a1);
        sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D5B8C520((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1D5B7C390(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D5B8C520((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1D5B7C390(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F649CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D6999A38(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    sub_1D5B5446C(0, &unk_1EDF3B670, MEMORY[0x1E69D7898], MEMORY[0x1E69E6720]);
    sub_1D5BFB8A8(0, &qword_1EDF3B530, &qword_1EDF3B540, MEMORY[0x1E69D7CA0]);
    do
    {
      v4 += 8;

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D6999A38((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F64B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D699A03C(0, v1, 0);
    v2 = v10;
    sub_1D5B5D3A4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D699A03C((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id PuzzleResourceSource.identifier.getter()
{
  sub_1D5B5446C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v30 - v7;
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleResourceSource(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C10B78(v0, v17, type metadata accessor for PuzzleResourceSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = [*v17 identifier];
    v20 = sub_1D726207C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = *v17;
    v22 = *(v17 + 1);
    sub_1D5B4D334(0);
    v24 = *(v23 + 64);
    (*(v10 + 32))(v13, &v17[*(v23 + 48)], v9);
    v25 = MEMORY[0x1E6968FB0];
    sub_1D5F77210(&v17[v24], v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1D7263D4C();

    v32 = 0x752D656C7A7A7570;
    v33 = 0xEB000000002D6C72;
    MEMORY[0x1DA6F9910](v21, v22);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v31 = sub_1D72585AC();
    v26 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v26);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    sub_1D5C00C88(v8, v4, &qword_1EDF45B40, v25);
    if ((*(v10 + 48))(v4, 1, v9) == 1)
    {
      sub_1D5B6EE98(v4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v27 = 0;
    }

    else
    {
      v27 = sub_1D72585AC();
      (*(v10 + 8))(v4, v9);
    }

    v31 = v27;
    v28 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v28);

    v20 = v32;
    sub_1D5B6EE98(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(v10 + 8))(v13, v9);
  }

  return v20;
}

uint64_t PuzzleServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t PuzzleService.puzzle(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F65128, 0, 0);
}

uint64_t sub_1D5F65128()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1D5B5D3A4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  FCCurrentQoSOrUtilityIfMain();
  v4 = FCDispatchQueueForQualityOfService();
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D5F65240;

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v3, 0, v4);
}

uint64_t sub_1D5F65240(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5F653B8, 0, 0);
  }
}

uint64_t sub_1D5F653B8()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1D5F75098();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, *(v0 + 64));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 64) + 32);
    swift_unknownObjectRetain();
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t PuzzleService.puzzles(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F6551C, 0, 0);
}

uint64_t sub_1D5F6551C(uint64_t a1)
{
  FCCurrentQoSOrUtilityIfMain();
  v2 = FCDispatchQueueForQualityOfService();
  v1[4] = v2;
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_1D5F655D0;
  v4 = v1[2];

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v4, 0, v2);
}

uint64_t sub_1D5F655D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5F77B64, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

int *PuzzleService.puzzle(for:puzzleType:puzzleMetadata:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v124 = a2;
  v7 = type metadata accessor for PuzzleMetadata(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725891C();
  v125 = *(v11 - 1);
  v126 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5446C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v119 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v97 - v21;
  v120 = a3;
  v23 = [a3 identifier];
  v24 = sub_1D726207C();
  v26 = v25;

  v27 = (a4 + v7[18]);
  if (v24 == *v27 && v26 == v27[1])
  {

    goto LABEL_11;
  }

  v29 = sub_1D72646CC();

  if (v29)
  {
LABEL_11:
    v45 = *(a4 + v7[20]);
    if (v45 && *(v45 + 16) && (v46 = sub_1D5B69D90(0x7463617265746E69, 0xEF65756C43657669), (v47 & 1) != 0))
    {
      v48 = *(*(v45 + 56) + 8 * v46);
    }

    else
    {
      v48 = sub_1D605A4CC(MEMORY[0x1E69E7CC0]);
    }

    v49 = v125;
    v50 = [objc_msgSend(*(v4 + 160) appConfiguration)];
    swift_unknownObjectRelease();
    v115 = *(v4 + 64);
    v116 = sub_1D726203C();
    if (*(a4 + v7[22] + 8))
    {
      v114 = sub_1D726203C();
    }

    else
    {
      v114 = 0;
    }

    v51 = v126;
    if (*(a4 + v7[19] + 8))
    {
      v113 = sub_1D726203C();
      if (*(a4 + 56))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v113 = 0;
      if (*(a4 + 56))
      {
LABEL_21:
        v112 = sub_1D726203C();
        if (*(a4 + 40))
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }
    }

    v112 = 0;
    if (*(a4 + 40))
    {
LABEL_22:
      v111 = sub_1D726203C();
      if (*(a4 + 8))
      {
LABEL_23:
        v110 = sub_1D726265C();
        goto LABEL_28;
      }

LABEL_27:
      v110 = 0;
LABEL_28:
      v108 = *(a4 + 16);
      sub_1D5C00C88(a4 + v7[17], v22, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      v52 = v49[6];
      v105 = (v49 + 6);
      v104 = v52;
      if (v52(v22, 1, v51) == 1)
      {
        v109 = 0;
      }

      else
      {
        v109 = sub_1D725881C();
        (v49[1])(v22, v51);
      }

      v107 = *(a4 + 81);
      v53 = *(a4 + 64);
      v117 = v50;
      v54 = [v50 difficultyDescriptions];
      sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
      sub_1D5F750EC();
      v55 = sub_1D7261D3C();

      v106 = v53;
      v56 = sub_1D72649CC();
      v57 = v56;
      v58 = *(v55 + 16);
      v118 = v7;
      if (v58 && (sub_1D6D62E90(v56), (v59 & 1) != 0))
      {

        v49 = v125;
        v7 = v118;
      }

      else
      {
      }

      v103 = sub_1D726203C();

      if (*(a4 + 72))
      {
        v102 = sub_1D726265C();
      }

      else
      {
        v102 = 0;
      }

      if (*(a4 + v7[21] + 8))
      {
        v101 = sub_1D726203C();
      }

      else
      {
        v101 = 0;
      }

      sub_1D725890C();
      v125 = sub_1D725881C();
      v98 = v49[1];
      v98(v14, v51);
      if (!*(v48 + 16))
      {
        v121 = 0;
        v122 = 0;
        v123 = 0;
        goto LABEL_56;
      }

      sub_1D5B69D90(1702194275, 0xE400000000000000);
      if (v60)
      {

        v123 = sub_1D726203C();

        if (*(v48 + 16))
        {
LABEL_44:
          sub_1D5B69D90(0x726577736E61, 0xE600000000000000);
          if (v61)
          {

            v121 = sub_1D726203C();

            if (*(v48 + 16))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v121 = 0;
            if (*(v48 + 16))
            {
LABEL_46:
              sub_1D5B69D90(1953393000, 0xE400000000000000);
              if (v62)
              {

                v124 = sub_1D726203C();

                if (*(v48 + 16))
                {
                  goto LABEL_48;
                }
              }

              else
              {
                v124 = 0;
                if (*(v48 + 16))
                {
LABEL_48:
                  sub_1D5B69D90(0x6F69746365726964, 0xE90000000000006ELL);
                  if (v63)
                  {

                    v122 = sub_1D726203C();

                    if (!*(v48 + 16))
                    {
                      goto LABEL_57;
                    }
                  }

                  else
                  {
                    v122 = 0;
                    if (!*(v48 + 16))
                    {
                      goto LABEL_57;
                    }
                  }

                  sub_1D5B69D90(0x7265626D756ELL, 0xE600000000000000);
                  if (v67)
                  {

                    v64 = sub_1D726203C();

                    if (*(a4 + 96))
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_66;
                  }

LABEL_57:

                  v64 = 0;
                  if (*(a4 + 96))
                  {
LABEL_58:
                    v65 = sub_1D726203C();
                    goto LABEL_67;
                  }

LABEL_66:
                  v65 = 0;
LABEL_67:
                  v68 = *(a4 + 24);
                  if (v68)
                  {
                    sub_1D5B7E810(v68);
                    v69 = sub_1D726265C();

                    v70 = *a4;
                    if (*a4)
                    {
LABEL_69:
                      sub_1D5B7E810(v70);
                      v71 = sub_1D726265C();

LABEL_72:
                      v72 = sub_1D726203C();
                      v73 = *(a4 + 80);
                      v74 = v119;
                      sub_1D5C00C88(a4 + v118[16], v119, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                      v75 = v126;
                      if (v104(v74, 1, v126) == 1)
                      {
                        v76 = 0;
                      }

                      else
                      {
                        v76 = sub_1D725881C();
                        v98(v74, v75);
                      }

                      v77 = v120;
                      v126 = v76;
                      v96 = v76;
                      BYTE1(v95) = v73;
                      LOBYTE(v95) = 0;
                      v100 = v72;
                      v93 = v71;
                      v94 = v72;
                      v92 = v69;
                      v99 = v65;
                      v90 = v64;
                      v91 = v65;
                      v78 = v101;
                      v79 = v102;
                      v120 = v71;
                      v80 = v103;
                      LOBYTE(v89) = v107;
                      v81 = v109;
                      v119 = v69;
                      v82 = v110;
                      v83 = v115;
                      v84 = v116;
                      v86 = v113;
                      v85 = v114;
                      v115 = v64;
                      v88 = v111;
                      v87 = v112;
                      v118 = [v83 createPuzzleForPuzzleType:v77 identifier:v116 title:v114 subtitle:v113 puzzleDescription:v112 dataResourceID:v111 authors:v110 behaviorFlags:v108 publishDate:v109 isPaid:v89 difficulty:v106 difficultyDescription:v103 relatedPuzzleIDs:v102 thumbnailLargeURL:v101 loadDate:v125 teaserClue:v123 teaserAnswer:v121 teaserInfo:v124 teaserDirection:v122 teaserNumber:v90 language:v91 blockedStorefrontIDs:v92 allowedStorefrontIDs:v93 minimumNewsVersion:v94 isDeprecated:v95 isDraft:v96 lastModifiedDate:?];

                      return v118;
                    }
                  }

                  else
                  {
                    v69 = 0;
                    v70 = *a4;
                    if (*a4)
                    {
                      goto LABEL_69;
                    }
                  }

                  v71 = 0;
                  goto LABEL_72;
                }
              }

              v122 = 0;
              goto LABEL_57;
            }
          }

          v122 = 0;
LABEL_56:
          v124 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        v123 = 0;
        if (*(v48 + 16))
        {
          goto LABEL_44;
        }
      }

      v121 = 0;
      v122 = 0;
      goto LABEL_56;
    }

LABEL_26:
    v111 = 0;
    if (*(a4 + 8))
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725C42C();
  __swift_project_value_buffer(v30, qword_1EDFFCFA8);
  sub_1D5C10B78(a4, v10, type metadata accessor for PuzzleMetadata);
  v31 = v120;
  swift_unknownObjectRetain();
  v32 = sub_1D725C3FC();
  v33 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v127[0] = v35;
    *v34 = 136315394;
    v36 = [v31 identifier];
    v37 = sub_1D726207C();
    v39 = v38;

    v40 = sub_1D5BC5100(v37, v39, v127);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = &v10[v7[18]];
    v42 = *v41;
    v43 = v41[1];

    sub_1D5C10CF8(v10, type metadata accessor for PuzzleMetadata);
    v44 = sub_1D5BC5100(v42, v43, v127);

    *(v34 + 14) = v44;
    _os_log_impl(&dword_1D5B42000, v32, v33, "Puzzle Service mismatch between provided puzzleTypeID %s and puzzle metadata type ID: %s!  Puzzle will not be created", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v35, -1, -1);
    MEMORY[0x1DA6FD500](v34, -1, -1);
  }

  else
  {

    sub_1D5C10CF8(v10, type metadata accessor for PuzzleMetadata);
  }

  return 0;
}

uint64_t PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 1624) = v3;
  *(v4 + 1576) = a3;
  *(v4 + 1784) = a2;
  *(v4 + 1528) = a1;
  *(v4 + 1672) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F663D0, 0, 0);
}

uint64_t sub_1D5F663D0()
{
  if (qword_1EDF182C8 != -1)
  {
    swift_once();
  }

  if (sub_1D72596AC())
  {
    if (qword_1EC87DCD0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 1624);
    v3 = *(v0 + 1576);
    v4 = *(v0 + 1784);
    v5 = *(v0 + 1528);
    sub_1D5C10CB0(&qword_1EC8816D8, v1, type metadata accessor for PuzzleService, &protocol conformance descriptor for PuzzleService);
    sub_1D725964C();
    v6 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
    *(v0 + 1680) = v6;
    v7 = swift_task_alloc();
    *(v0 + 1688) = v7;
    *(v7 + 16) = v2;
    *(v7 + 24) = v5;
    *(v7 + 32) = v6;
    *(v7 + 40) = v3;
    *(v7 + 48) = v4;
    v8 = swift_task_alloc();
    *(v0 + 1696) = v8;
    sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
    *v8 = v0;
    v8[1] = sub_1D5F66810;

    return MEMORY[0x1EEE6DE38](v0 + 1480, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F752E4, v7, v9);
  }

  else
  {
    v10 = *(v0 + 1624);
    v11 = *(v0 + 1576);
    v12 = *(v0 + 1784);
    v13 = *(v0 + 1528);
    v14 = [objc_msgSend(*(v10 + 160) appConfiguration)];
    *(v0 + 1712) = v14;
    swift_unknownObjectRelease();
    [v14 recentPuzzlesCacheLifetime];
    v16 = v15;
    v17 = objc_opt_self();
    v18 = [v17 cachePolicyWithSoftMaxAge_];
    *(v0 + 1720) = v18;
    [v14 puzzlesCacheLifetime];
    v19 = [v17 cachePolicyWithSoftMaxAge_];
    *(v0 + 1728) = v19;
    v20 = sub_1D5F678F8(v13);
    v22 = v21;
    v23 = swift_allocObject();
    *(v0 + 1736) = v23;
    *(v23 + 16) = v10;
    *(v23 + 24) = v20;
    *(v23 + 32) = v12;
    *(v23 + 40) = v18;
    *(v23 + 48) = v11;

    v24 = v18;
    v25 = v11;
    sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
    swift_asyncLet_begin();
    v26 = swift_allocObject();
    *(v0 + 1744) = v26;
    *(v26 + 16) = v10;
    *(v26 + 24) = v22;
    *(v26 + 32) = v12;
    *(v26 + 40) = v19;
    *(v26 + 48) = v25;

    v27 = v25;
    v28 = v19;
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1336, sub_1D5F66A04, v0 + 1296);
  }
}

uint64_t sub_1D5F66810()
{
  *(*v1 + 1704) = v0;

  if (v0)
  {
    v2 = sub_1D5F66998;
  }

  else
  {

    v2 = sub_1D5F6692C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6692C()
{
  v1 = *(v0 + 1480);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5F66998()
{
  v1 = *(v0 + 1680);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F66A04()
{
  v1[219] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 173, sub_1D5F66C60, v1 + 168);
  }

  else
  {
    v1[220] = v1[167];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 173, sub_1D5F66AB8, v1 + 180);
  }
}

uint64_t sub_1D5F66AB8()
{
  *(v1 + 1768) = v0;
  if (v0)
  {
    v2 = sub_1D5F66D4C;
  }

  else
  {
    v2 = sub_1D5F66AEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F66AEC()
{
  v3 = *(v0 + 1760);

  sub_1D6985708(v1);
  *(v0 + 1776) = v3;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1384, sub_1D5F66B70, v0 + 1584);
}

uint64_t sub_1D5F66BC8()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1712);

  v3 = *(v0 + 1776);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D5F66CB8()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1712);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F66D4C()
{

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1384, sub_1D5F66DB8, v0 + 1488);
}

uint64_t sub_1D5F66E10()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1712);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t PuzzleService.puzzles(for:excludeDrafts:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D5F66EC8, 0, 0);
}

uint64_t sub_1D5F66EC8(uint64_t a1)
{
  FCCurrentQoSOrUtilityIfMain();
  v2 = FCDispatchQueueForQualityOfService();
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_1D5F66F7C;
  v4 = *(v1 + 56);
  v5 = *(v1 + 16);

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v5, v4, v2);
}

uint64_t sub_1D5F66F7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5F670D4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1D5F670D4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzles(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F6715C, 0, 0);
}

uint64_t sub_1D5F6715C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v8 = *(v1 + 24);
  FCCurrentQoSOrUtilityIfMain();
  v3 = FCDispatchQueueForQualityOfService();
  *(v1 + 48) = v3;
  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v8;
  *(v4 + 40) = v3;
  *(v4 + 48) = 0;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  *v5 = v1;
  v5[1] = sub_1D5F672A8;

  return MEMORY[0x1EEE6DE38](v1 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v4, v6);
}

uint64_t sub_1D5F672A8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AD8;
  }

  else
  {

    v2 = sub_1D5F77ACC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t PuzzleService.puzzles(for:excludeDrafts:cachePolicy:callbackQueue:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 80) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F673EC, 0, 0);
}

uint64_t sub_1D5F673EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  *v6 = v0;
  v6[1] = sub_1D5F6751C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v4, v7);
}

uint64_t sub_1D5F6751C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5F77ABC;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t PuzzleService.puzzles(for:excludeDrafts:cachePolicy:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F67660, 0, 0);
}

uint64_t sub_1D5F67660(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 80);
  v9 = *(v1 + 24);
  FCCurrentQoSOrUtilityIfMain();
  v4 = FCDispatchQueueForQualityOfService();
  *(v1 + 48) = v4;
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v9;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v1 + 64) = v6;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  *v6 = v1;
  v6[1] = sub_1D5F672A8;

  return MEMORY[0x1EEE6DE38](v1 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v5, v7);
}

uint64_t PuzzleService.puzzles(for:cachePolicy:callbackQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5F677D4, 0, 0);
}

uint64_t sub_1D5F677D4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  *(v3 + 48) = 0;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  *v5 = v0;
  v5[1] = sub_1D5F6751C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v3, v6);
}

char *sub_1D5F678F8(uint64_t a1)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5446C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v43 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v1 + 64);
    v49 = (v4 + 56);
    v50 = v19;
    v48 = (v4 + 48);
    v45 = (v4 + 32);
    v46 = v15;
    v44 = (v4 + 8);
    v20 = (a1 + 40);
    v21 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
    v53 = v3;
    while (1)
    {
      v26 = *(v20 - 1);
      v25 = *v20;

      v54 = v25;
      v27 = sub_1D726203C();
      v28 = [v50 slowCachedPuzzleForID_];

      if (v28)
      {
        v52 = v18;
        v29 = v26;
        v30 = v21;
        v31 = v10;
        v32 = [v28 publishDate];
        if (v32)
        {
          v33 = v46;
          v34 = v32;
          sub_1D72588BC();

          v35 = 0;
        }

        else
        {
          v35 = 1;
          v33 = v46;
        }

        (*v49)(v33, v35, 1, v3);
        sub_1D5F77210(v33, v17, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        v10 = v31;
        v21 = v30;
        v26 = v29;
        v18 = v52;
      }

      else
      {
        (*v49)(v17, 1, 1, v3);
      }

      sub_1D5C00C88(v17, v10, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      if ((*v48)(v10, 1, v3) == 1)
      {
        sub_1D5B6EE98(v10, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D5B858EC(0, *(v21 + 2) + 1, 1, v21);
        }

        v37 = *(v21 + 2);
        v36 = *(v21 + 3);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v21 = sub_1D5B858EC((v36 > 1), v37 + 1, 1, v21);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        (*v45)(v51, v10, v3);
        sub_1D725887C();
        if (fabs(v39) >= 86400.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1D5B858EC(0, *(v47 + 2) + 1, 1, v47);
          }

          v37 = *(v47 + 2);
          v41 = *(v47 + 3);
          v38 = v37 + 1;
          if (v37 >= v41 >> 1)
          {
            v47 = sub_1D5B858EC((v41 > 1), v37 + 1, 1, v47);
          }

          swift_unknownObjectRelease();
          (*v44)(v51, v53);
          v22 = v47;
          goto LABEL_5;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D5B858EC(0, *(v21 + 2) + 1, 1, v21);
        }

        v37 = *(v21 + 2);
        v40 = *(v21 + 3);
        v38 = v37 + 1;
        if (v37 >= v40 >> 1)
        {
          v21 = sub_1D5B858EC((v40 > 1), v37 + 1, 1, v21);
        }

        swift_unknownObjectRelease();
        (*v44)(v51, v53);
      }

      v22 = v21;
LABEL_5:
      sub_1D5B6EE98(v17, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      *(v22 + 2) = v38;
      v23 = &v22[16 * v37];
      v3 = v53;
      v24 = v54;
      *(v23 + 4) = v26;
      *(v23 + 5) = v24;
      v20 += 2;
      if (!--v18)
      {
        return v21;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  return v21;
}

uint64_t sub_1D5F67E44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 88) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F67E70, 0, 0);
}

uint64_t sub_1D5F67E70()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  *v4 = v0;
  v4[1] = sub_1D5F67F8C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v2, v5);
}

uint64_t sub_1D5F67F8C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AC0;
  }

  else
  {

    v2 = sub_1D5F77B78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F680A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 88) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F680D4, 0, 0);
}

uint64_t sub_1D5F680D4()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  *v4 = v0;
  v4[1] = sub_1D5F681F0;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v2, v5);
}

uint64_t sub_1D5F681F0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D5F6832C;
  }

  else
  {

    v2 = sub_1D5F6830C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6832C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5F68390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v23 = a4;
  v24 = a5;
  sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v23 - v15;
  v17 = *(a2 + 64);
  sub_1D5B7E810(a3);
  v18 = sub_1D726265C();

  (*(v12 + 16))(v16, a1, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v16, v11);
  v21 = v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = a3;
  *(v21 + 8) = a6;
  aBlock[4] = sub_1D5F779C4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5F68BA8;
  aBlock[3] = &block_descriptor_204;
  v22 = _Block_copy(aBlock);

  [v17 fetchPuzzlesForPuzzleIDs:v18 cachePolicy:v23 qualityOfService:25 callbackQueue:v24 completionHandler:v22];
  _Block_release(v22);
}

void sub_1D5F685C8(uint64_t a1, id a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v53 = a2;
    v5 = a2;
LABEL_3:
    sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
    sub_1D726286C();
    return;
  }

  v53 = MEMORY[0x1E69E7CC0];
  v6 = *(a4 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v44 = 0;
  v8 = 0;
  v9 = a4 + 40;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &qword_1EDF3B000;
  v42 = a4 + 40;
  do
  {
    v43 = v10;
    v12 = (v9 + 16 * v8);
    v13 = v8;
    while (1)
    {
      if (v13 >= v6)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_42;
      }

      if (!a1 || !*(a1 + 16))
      {
        goto LABEL_8;
      }

      v14 = *(v12 - 1);
      v15 = *v12;

      v16 = sub_1D5B69D90(v14, v15);
      if (v17)
      {
        break;
      }

LABEL_8:
      ++v13;
      v12 += 2;
      if (v8 == v6)
      {
        v10 = v43;
        goto LABEL_36;
      }
    }

    v18 = *(*(a1 + 56) + 8 * v16);
    if ([swift_unknownObjectRetain() isDeprecated])
    {
      if (qword_1EC87DC80 != -1)
      {
        swift_once();
      }

      if ((sub_1D72596AC() & 1) == 0)
      {
        if (v11[263] != -1)
        {
          swift_once();
        }

        v29 = sub_1D725C42C();
        __swift_project_value_buffer(v29, qword_1EDFFCFA8);
        swift_unknownObjectRetain();
        v30 = sub_1D725C3FC();
        v31 = sub_1D7262EDC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v52 = v50;
          *v32 = 136315138;
          v48 = v31;
          v33 = [v18 identifier];
          v34 = sub_1D726207C();
          bufa = v30;
          v36 = v35;

          v37 = sub_1D5BC5100(v34, v36, &v52);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_1D5B42000, bufa, v48, "PuzzleService encountered deprecated puzzle %s during a batched fetch. This puzzle will be excluded from the fetch result.", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x1DA6FD500](v50, -1, -1);
          v38 = v32;
          v11 = &qword_1EDF3B000;
          MEMORY[0x1DA6FD500](v38, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v44 = 1;
        goto LABEL_8;
      }
    }

    if ((a5 & 1) != 0 && [v18 isDraft])
    {
      if (v11[263] != -1)
      {
        swift_once();
      }

      v19 = sub_1D725C42C();
      __swift_project_value_buffer(v19, qword_1EDFFCFA8);
      swift_unknownObjectRetain();
      v20 = sub_1D725C3FC();
      v21 = sub_1D7262EDC();
      swift_unknownObjectRelease();
      v49 = v21;
      if (os_log_type_enabled(v20, v21))
      {
        buf = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *buf = 136315138;
        v22 = [v18 identifier];
        v23 = v20;
        v24 = v22;
        v25 = sub_1D726207C();
        v27 = v26;

        v28 = sub_1D5BC5100(v25, v27, &v52);

        *(buf + 4) = v28;
        v11 = &qword_1EDF3B000;
        _os_log_impl(&dword_1D5B42000, v23, v49, "PuzzleService encountered draft puzzle %s during a batched fetch. This puzzle will be excluded from the fetch result.", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1DA6FD500](v47, -1, -1);
        MEMORY[0x1DA6FD500](buf, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_8;
    }

    MEMORY[0x1DA6F9CE0](v39);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v10 = v53;
    v9 = v42;
  }

  while (v8 != v6);
LABEL_36:
  if (v6 == 1 && (v44 & 1) != 0)
  {

    sub_1D5F75098();
    v40 = swift_allocError();
    *v41 = 5;
    v53 = v40;
    goto LABEL_3;
  }

LABEL_40:
  v53 = v10;
  sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  sub_1D726287C();
}

uint64_t sub_1D5F68BBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleTypes(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F68C4C, 0, 0);
}

uint64_t sub_1D5F68C4C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
  *v5 = v0;
  v5[1] = sub_1D5F68D70;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001D73C40A0, sub_1D5F77ADC, v4, v6);
}

uint64_t sub_1D5F68D70()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F68E8C;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F68E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleTypes(for:qos:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F68F14, 0, 0);
}

uint64_t sub_1D5F68F14()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = [objc_opt_self() defaultCachePolicy];
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
  *v6 = v0;
  v6[1] = sub_1D5F69060;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000021, 0x80000001D73C40C0, sub_1D5F752E8, v5, v7);
}

uint64_t sub_1D5F69060()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5F691E4;
  }

  else
  {

    v2 = sub_1D5F6917C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6917C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5F691E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleTypes(for:cachePolicy:qos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5F69274, 0, 0);
}

uint64_t sub_1D5F69274()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
  *v4 = v0;
  v4[1] = sub_1D5F693A4;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000021, 0x80000001D73C40C0, sub_1D5F77AB4, v3, v5);
}

uint64_t sub_1D5F693A4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5F694C0;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F694C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5F69524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  v15 = *(a2 + 72);
  sub_1D5B7E810(a3);
  v16 = sub_1D726265C();

  v17 = FCDispatchQueueForQualityOfService();
  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v14, v10);
  aBlock[4] = sub_1D5BAF690;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5BAF50C;
  aBlock[3] = &block_descriptor_192;
  v20 = _Block_copy(aBlock);

  [v15 fetchPuzzleTypesForPuzzleTypeIDs:v16 cachePolicy:v22 qualityOfService:a5 callbackQueue:v17 completionHandler:v20];
  _Block_release(v20);
}

uint64_t PuzzleService.puzzleResource(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1D5B5446C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3[5] = swift_task_alloc();
  v4 = sub_1D72585BC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for PuzzleResourceSource(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5F698A4, 0, 0);
}

uint64_t sub_1D5F698A4()
{
  sub_1D5C10B78(v0[3], v0[10], type metadata accessor for PuzzleResourceSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[10];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *v2;
      v0[17] = *v2;
      v4 = swift_task_alloc();
      v0[18] = v4;
      *v4 = v0;
      v4[1] = sub_1D5F69F50;
      v5 = v0[2];

      return PuzzleService.puzzleResource(puzzle:)(v5, v3);
    }

    else
    {
      v11 = v0[7];
      v10 = v0[8];
      v13 = v0[5];
      v12 = v0[6];
      v15 = *v2;
      v14 = v2[1];
      v0[20] = v14;
      sub_1D5B4D334(0);
      v17 = *(v16 + 64);
      (*(v11 + 32))(v10, v2 + *(v16 + 48), v12);
      sub_1D5F77210(v2 + v17, v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v18 = swift_task_alloc();
      v0[21] = v18;
      *v18 = v0;
      v18[1] = sub_1D5F6A0E8;
      v19 = v0[8];
      v20 = v0[5];
      v21 = v0[2];

      return PuzzleService.puzzleResource(puzzleID:indexFileURL:puzzleDataStoreURL:)(v21, v15, v14, v19, v20);
    }
  }

  else
  {
    v8 = *v2;
    v7 = v2[1];
    v0[11] = v7;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1D5F69B10;

    return PuzzleService.puzzle(for:)(v8, v7);
  }
}

uint64_t sub_1D5F69B10(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v4[16] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D5F69ECC, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[14] = v6;
    *v6 = v5;
    v6[1] = sub_1D5F69CC4;
    v7 = v4[2];

    return PuzzleService.puzzleResource(puzzle:)(v7, a1);
  }
}

uint64_t sub_1D5F69CC4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D5F69E5C;
  }

  else
  {
    v2 = sub_1D5F69DD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F69DD8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F69E5C()
{
  swift_unknownObjectRelease();
  *(v0 + 128) = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D5F69ECC, 0, 0);
}

uint64_t sub_1D5F69ECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F69F50()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D5F6A2DC;
  }

  else
  {
    v2 = sub_1D5F6A064;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6A064()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6A0E8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D5F6A368;
  }

  else
  {
    v2 = sub_1D5F6A218;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6A218()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1D5B6EE98(v0[5], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D5F6A2DC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6A368()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1D5B6EE98(v0[5], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t PuzzleService.puzzleResource(puzzleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1D5F6A4D4;

  return PuzzleService.puzzle(for:)(a2, a3);
}

uint64_t sub_1D5F6A4D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v4 + 48) = v8;
    *v8 = v5;
    v8[1] = sub_1D5F6A650;
    v9 = *(v4 + 16);

    return PuzzleService.puzzleResource(puzzle:)(v9, a1);
  }
}

uint64_t sub_1D5F6A650()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5F6A7C8;
  }

  else
  {
    v2 = sub_1D5F6A764;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6A764()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6A7C8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleResource(puzzle:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for PuzzleResource(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = sub_1D72585BC();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for WebArchive(0);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5F6A95C, 0, 0);
}

uint64_t sub_1D5F6A95C()
{
  v32 = v0;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v7 = [v4 identifier];
    v8 = sub_1D726207C();
    v10 = v9;

    v11 = sub_1D5BC5100(v8, v10, &v31);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleService start fetching puzzle resources for puzzle=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v12 = [*(v0 + 32) dataResourceID];
  if (!v12)
  {
    sub_1D5F75098();
    swift_allocError();
    v24 = 2;
    goto LABEL_11;
  }

  v13 = *(v0 + 32);
  v14 = v12;
  v15 = sub_1D726207C();
  v17 = v16;

  v18 = [objc_msgSend(v13 puzzleType)];
  swift_unknownObjectRelease();
  if (!v18)
  {

    sub_1D5F75098();
    swift_allocError();
    v24 = 1;
    goto LABEL_11;
  }

  v19 = *(v0 + 32);
  v20 = sub_1D726207C();
  v22 = v21;

  *(v0 + 120) = v20;
  *(v0 + 128) = v22;
  if ([v19 isDeprecated])
  {

    sub_1D5F75098();
    swift_allocError();
    v24 = 5;
LABEL_11:
    *v23 = v24;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = *(v0 + 40);
  v28 = v27[13];
  v29 = v27[14];
  __swift_project_boxed_opaque_existential_1(v27 + 10, v28);
  *(v0 + 136) = ResourceServiceType.fetchResource(identifier:)(v15, v17, v28, v29);

  v30 = swift_task_alloc();
  *(v0 + 144) = v30;
  *v30 = v0;
  v30[1] = sub_1D5F6AD3C;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1D5F6AD3C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_1D5F6B590;
  }

  else
  {
    v2 = sub_1D5F6AE80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6AE80()
{
  v10 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[5];
  v0[20] = v0[2];
  v4 = v3[18];
  v5 = v3[19];
  __swift_project_boxed_opaque_existential_1(v3 + 15, v4);
  v9[0] = v2;
  v9[1] = v1;
  v9[2] = 0;
  v9[3] = 0;
  v0[21] = WebArchiveServiceType.resolve(webArchive:)(v9, v4, v5);

  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1D5F6AF80;
  v7 = v0[13];

  return MEMORY[0x1EEE44EE0](v7);
}

uint64_t sub_1D5F6AF80()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D5F6B61C;
  }

  else
  {
    v2 = sub_1D5F6B0B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6B0B4()
{
  v53 = v0;
  v1 = [*(v0 + 160) fileURL];
  v2 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v46 = *(v0 + 160);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v47 = *(v0 + 64);
    log = *(v0 + 56);
    v8 = *(v0 + 48);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = v1;
    sub_1D72584EC();

    v12 = *(v5 + 28);
    v13 = *(v7 + 16);
    v13(&v10[v8[5]], v3 + v12, v6);
    v13(&v10[v8[6]], v4, v6);
    *v10 = v9;
    *&v10[v8[7]] = v46;
    sub_1D5C10B78(v10, v47, type metadata accessor for PuzzleResource);
    sub_1D5C10B78(v10, log, type metadata accessor for PuzzleResource);
    swift_unknownObjectRetain();
    v14 = sub_1D725C3FC();
    v15 = sub_1D7262EDC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 104);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    if (v16)
    {
      loga = v14;
      v23 = *(v0 + 32);
      v45 = *(v0 + 72);
      v24 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52[0] = v48;
      *v24 = 136315650;
      v25 = [v23 identifier];
      v51 = v17;
      v26 = sub_1D726207C();
      v44 = v22;
      v28 = v27;

      v29 = sub_1D5BC5100(v26, v28, v52);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      sub_1D5C10CB0(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v30 = sub_1D72644BC();
      v43 = v15;
      v32 = v31;
      sub_1D5C10CF8(v20, type metadata accessor for PuzzleResource);
      v33 = sub_1D5BC5100(v30, v32, v52);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      v34 = sub_1D72644BC();
      v36 = v35;
      sub_1D5C10CF8(v44, type metadata accessor for PuzzleResource);
      v37 = sub_1D5BC5100(v34, v36, v52);

      *(v24 + 24) = v37;
      _os_log_impl(&dword_1D5B42000, loga, v43, "PuzzleService finished fetching puzzle resources for puzzle=%s with indexFileURL=%s \n dataFileURL=%s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v48, -1, -1);
      MEMORY[0x1DA6FD500](v24, -1, -1);

      (*(v19 + 8))(v18, v45);
      v38 = v51;
    }

    else
    {

      sub_1D5C10CF8(v22, type metadata accessor for PuzzleResource);
      sub_1D5C10CF8(v20, type metadata accessor for PuzzleResource);
      (*(v19 + 8))(v18, v21);
      v38 = v17;
    }

    sub_1D5C10CF8(v38, type metadata accessor for WebArchive);

    v41 = *(v0 + 8);
  }

  else
  {
    v39 = *(v0 + 104);
    sub_1D5F75098();
    swift_allocError();
    *v40 = 4;
    swift_willThrow();

    sub_1D5C10CF8(v39, type metadata accessor for WebArchive);

    v41 = *(v0 + 8);
  }

  return v41();
}

uint64_t sub_1D5F6B590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6B61C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleResource(puzzleID:indexFileURL:puzzleDataStoreURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[229] = v5;
  v6[223] = a5;
  v6[217] = a4;
  v6[211] = a1;
  v9 = sub_1D72583CC();
  v6[235] = v9;
  v6[241] = *(v9 - 8);
  v6[247] = swift_task_alloc();
  sub_1D5B5446C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v6[253] = swift_task_alloc();
  v6[259] = swift_task_alloc();
  v6[265] = swift_task_alloc();
  v6[271] = swift_task_alloc();
  v10 = sub_1D72585BC();
  v6[277] = v10;
  v11 = *(v10 - 8);
  v6[278] = v11;
  v6[279] = *(v11 + 64);
  v6[280] = swift_task_alloc();
  v6[281] = swift_task_alloc();
  v6[282] = swift_task_alloc();
  v6[283] = swift_task_alloc();
  v6[284] = swift_task_alloc();
  v6[285] = swift_task_alloc();
  v6[286] = swift_task_alloc();
  v6[287] = swift_task_alloc();
  v6[288] = swift_task_alloc();
  v6[289] = swift_task_alloc();
  v6[290] = swift_task_alloc();
  v6[291] = swift_task_alloc();
  v6[292] = swift_task_alloc();
  sub_1D5F752F4(0);
  v6[293] = v12;
  v6[294] = swift_task_alloc();
  v6[295] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[296] = v13;
  *v13 = v6;
  v13[1] = sub_1D5F6B9A4;

  return PuzzleService.puzzle(for:)(a2, a3);
}

uint64_t sub_1D5F6B9A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2376) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5F6BC54, 0, 0);
  }
}

uint64_t sub_1D5F6BC54()
{
  v1 = *(v0 + 2336);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  v4 = *(v0 + 1736);
  v5 = [objc_opt_self() sharedSession];
  *(v0 + 2384) = v5;
  v6 = *(v2 + 16);
  *(v0 + 2392) = v6;
  *(v0 + 2400) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = *(v2 + 80);
  *(v0 + 2640) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 2408) = v9;
  *(v9 + 16) = v5;
  v10 = *(v2 + 32);
  *(v0 + 2416) = v10;
  *(v0 + 2424) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v1, v3);
  v11 = v5;
  swift_asyncLet_begin();
  v12 = *(v0 + 2360);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v12, sub_1D5F6BE08, v0 + 1936);
}

uint64_t sub_1D5F6BE08()
{
  *(v1 + 2432) = v0;
  if (v0)
  {
    v2 = sub_1D5F6FA40;
  }

  else
  {
    v2 = sub_1D5F6BEAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6BEAC()
{
  v192 = v0;
  v191[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 2224);
  v2 = *(v0 + 2216);
  v3 = *(v0 + 2168);
  v4 = *(v0 + 2120);
  v5 = *(v0 + 1784);
  (*(v0 + 2392))(*(v0 + 2328), *(v0 + 2360), v2);
  v6 = *(v1 + 56);
  *(v0 + 2440) = v6;
  *(v0 + 2448) = (v1 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 1, 1, v2);
  sub_1D5C00C88(v5, v4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v7 = *(v1 + 48);
  *(v0 + 2456) = v7;
  *(v0 + 2464) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v4, 1, v2) == 1)
  {
    sub_1D5B6EE98(*(v0 + 2120), &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *(v0 + 2488) = 0u;
    v8 = objc_opt_self();
    v9 = [v8 defaultManager];
    *(v0 + 2504) = v9;
    sub_1D725851C();
    v10 = sub_1D726203C();

    v11 = [v9 contentsAtPath_];

    if (v11)
    {
      v12 = sub_1D725867C();
      v14 = v13;

      *(v0 + 2512) = v12;
      *(v0 + 2520) = v14;
      v189 = v12;
      v190 = v14;
      if (sub_1D5F7183C(&unk_1F50F7A78, v12, v14))
      {
        v188 = v9;
        v15 = *(v0 + 2288);
        v175 = v8;
        v16 = *(v0 + 2224);
        v17 = *(v0 + 2216);
        v18 = *(v0 + 1976);
        v19 = *(v0 + 1928);
        v20 = *(v0 + 1880);
        sub_1D72584BC();
        *(v0 + 1336) = 0xD000000000000010;
        *(v0 + 1344) = 0x80000001D73C40F0;
        (*(v19 + 104))(v18, *MEMORY[0x1E6968F58], v20);
        sub_1D5BF4D9C();
        sub_1D725858C();
        (*(v19 + 8))(v18, v20);
        v185 = *(v16 + 8);
        v185(v15, v17);
        sub_1D725849C();
        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 2392);
        v22 = *(v0 + 2296);
        v23 = *(v0 + 2272);
        v24 = *(v0 + 2216);
        v25 = sub_1D725C42C();
        __swift_project_value_buffer(v25, qword_1EDFFCFA8);
        v21(v23, v22, v24);
        v26 = sub_1D725C3FC();
        v27 = sub_1D7262EDC();
        v28 = os_log_type_enabled(v26, v27);
        v29 = *(v0 + 2272);
        v30 = *(v0 + 2216);
        if (v28)
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v191[0] = v32;
          *v31 = 136315138;
          sub_1D5C10CB0(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v33 = sub_1D72644BC();
          v35 = v34;
          v185(v29, v30);
          v36 = sub_1D5BC5100(v33, v35, v191);

          *(v31 + 4) = v36;
          _os_log_impl(&dword_1D5B42000, v26, v27, "Unarchiving puzzle [%s]", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x1DA6FD500](v32, -1, -1);
          MEMORY[0x1DA6FD500](v31, -1, -1);

          v37 = v185;
        }

        else
        {

          v37 = v185;
          v185(v29, v30);
        }

        v9 = v188;
        v84 = *(v0 + 2288);
        v85 = *(v0 + 2216);
        sub_1D725846C();
        sub_1D72584AC();
        v37(v84, v85);
        sub_1D725851C();
        v86 = sub_1D726203C();

        v87 = [v188 fileExistsAtPath_];

        if (v87)
        {
          v88 = sub_1D725844C();
          *(v0 + 1400) = 0;
          v89 = [v188 removeItemAtURL:v88 error:v0 + 1400];

          v90 = *(v0 + 1400);
          if (!v89)
          {
            v136 = *(v0 + 2296);
            v137 = *(v0 + 2280);
            v138 = *(v0 + 2264);
            v139 = *(v0 + 2216);
            v177 = *(v0 + 2168);
            v181 = *(v0 + 2328);
            v140 = v90;
            *(v0 + 2592) = sub_1D725829C();

            swift_willThrow();
            sub_1D5B952F8(v189, v190);

            v37(v138, v139);
            v37(v137, v139);
            v37(v136, v139);
            sub_1D5B6EE98(v177, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            v37(v181, v139);
            v52 = sub_1D5F701B0;
            v53 = *(v0 + 2360);
            v54 = v0 + 16;
            v55 = v0 + 2032;
            goto LABEL_45;
          }

          v91 = v90;
        }

        v92 = sub_1D725844C();
        *(v0 + 1496) = 0;
        v93 = [v188 createDirectoryAtURL:v92 withIntermediateDirectories:0 attributes:0 error:v0 + 1496];

        v94 = *(v0 + 1496);
        if (v93)
        {
          v95 = v94;
          sub_1D725851C();
          v96 = sub_1D726203C();

          v97 = [v188 fileExistsAtPath_];

          if (v97)
          {
            v98 = sub_1D725844C();
            *(v0 + 1352) = 0;
            v99 = [v188 removeItemAtURL:v98 error:v0 + 1352];

            v100 = *(v0 + 1352);
            if (!v99)
            {
              v154 = *(v0 + 2296);
              v155 = *(v0 + 2280);
              v156 = *(v0 + 2264);
              v157 = *(v0 + 2216);
              v179 = *(v0 + 2168);
              v184 = *(v0 + 2328);
              v158 = v100;
              *(v0 + 2608) = sub_1D725829C();

              swift_willThrow();
              sub_1D5B952F8(v189, v190);

              v37(v156, v157);
              v37(v155, v157);
              v37(v154, v157);
              sub_1D5B6EE98(v179, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
              v37(v184, v157);
              v52 = sub_1D5F70690;
              v53 = *(v0 + 2360);
              v54 = v0 + 16;
              v55 = v0 + 1360;
              goto LABEL_45;
            }

            v101 = v100;
          }

          v102 = sub_1D725844C();
          v103 = sub_1D725844C();
          *(v0 + 1448) = 0;
          v104 = [v188 moveItemAtURL:v102 toURL:v103 error:v0 + 1448];

          v105 = *(v0 + 1448);
          if (v104)
          {
            v106 = objc_allocWithZone(MEMORY[0x1E69B68D0]);
            v107 = v105;
            v108 = [v106 init];
            v109 = sub_1D725844C();
            v110 = sub_1D725844C();
            v111 = [v108 unarchive:v109 toLocation:v110];

            v112 = [v175 defaultManager];
            sub_1D72583BC();
            v113 = sub_1D726203C();

            v114 = [v112 fileExistsAtPath_];

            if (v111 && v114)
            {
              v115 = *(v0 + 2416);
              v116 = *(v0 + 2304);
              v117 = *(v0 + 2296);
              v118 = *(v0 + 2280);
              v119 = *(v0 + 2264);
              v120 = *(v0 + 2216);

              v185(v119, v120);
              v185(v117, v120);
              v115(v116, v118, v120);
              v59 = v185;
LABEL_17:
              *(v0 + 2536) = v59;
              v71 = *(v0 + 2456);
              v72 = *(v0 + 2216);
              v73 = *(v0 + 2024);
              sub_1D5C00C88(*(v0 + 2168), v73, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
              if (v71(v73, 1, v72) == 1)
              {
                v74 = *(v0 + 2376);
                sub_1D5B6EE98(*(v0 + 2024), &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
                v75 = [v74 dataResourceID];
                if (v75)
                {
                  v76 = *(v0 + 1832);
                  v77 = v75;
                  v78 = sub_1D726207C();
                  v80 = v79;

                  v81 = v76[13];
                  v82 = v76[14];
                  __swift_project_boxed_opaque_existential_1(v76 + 10, v81);
                  *(v0 + 2544) = ResourceServiceType.fetchResource(identifier:)(v78, v80, v81, v82);

                  v83 = swift_task_alloc();
                  *(v0 + 2552) = v83;
                  *v83 = v0;
                  v83[1] = sub_1D5F6EE58;

                  return MEMORY[0x1EEE44EE0](v0 + 1592);
                }

                v159 = *(v0 + 2328);
                v160 = *(v0 + 2304);
                v161 = *(v0 + 2216);
                v162 = *(v0 + 2168);
                sub_1D5F75098();
                *(v0 + 2576) = swift_allocError();
                *v163 = 2;
                swift_willThrow();
                sub_1D5B952F8(v189, v190);

                v59(v160, v161);
                sub_1D5B6EE98(v162, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
                v59(v159, v161);
                v52 = sub_1D5F6F560;
                v53 = *(v0 + 2360);
                v54 = v0 + 16;
                v55 = v0 + 1504;
              }

              else
              {
                v141 = *(v0 + 2416);
                v142 = *(v0 + 2328);
                v182 = *(v0 + 2304);
                v187 = *(v0 + 2376);
                v143 = *(v0 + 2248);
                v144 = *(v0 + 2216);
                v145 = *(v0 + 2168);
                v178 = *(v0 + 2024);
                v146 = *(v0 + 1688);
                sub_1D5B952F8(v189, v190);

                sub_1D5B6EE98(v145, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
                v59(v142, v144);
                v141(v143, v178, v144);
                v147 = type metadata accessor for PuzzleResource(0);
                v141(&v146[v147[5]], v182, v144);
                v141(&v146[v147[6]], v143, v144);
                *v146 = v187;
                *&v146[v147[7]] = 0;
                swift_unknownObjectRetain();
                v52 = sub_1D5F6EBE0;
                v53 = *(v0 + 2360);
                v54 = v0 + 16;
                v55 = v0 + 1744;
              }

              goto LABEL_45;
            }

            v164 = sub_1D725C3FC();
            v165 = sub_1D7262EBC();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              *v166 = 0;
              _os_log_impl(&dword_1D5B42000, v164, v165, "Failed to decompress archive file", v166, 2u);
              MEMORY[0x1DA6FD500](v166, -1, -1);
            }

            v167 = *(v0 + 2328);
            v168 = *(v0 + 2296);
            v169 = *(v0 + 2280);
            v170 = *(v0 + 2264);
            v171 = *(v0 + 2216);
            v172 = *(v0 + 2168);

            sub_1D5F75098();
            *(v0 + 2528) = swift_allocError();
            *v173 = 3;
            swift_willThrow();

            sub_1D5B952F8(v189, v190);
            v185(v170, v171);
            v185(v169, v171);
            v185(v168, v171);
            sub_1D5B6EE98(v172, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            v185(v167, v171);
            v52 = sub_1D5F6E970;
            v53 = *(v0 + 2360);
            v54 = v0 + 16;
            v55 = v0 + 2128;
          }

          else
          {
            v183 = *(v0 + 2328);
            v148 = *(v0 + 2296);
            v149 = *(v0 + 2280);
            v150 = *(v0 + 2264);
            v151 = *(v0 + 2216);
            v152 = *(v0 + 2168);
            v153 = v105;
            *(v0 + 2616) = sub_1D725829C();

            swift_willThrow();
            sub_1D5B952F8(v189, v190);

            v185(v150, v151);
            v185(v149, v151);
            v185(v148, v151);
            sub_1D5B6EE98(v152, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            v185(v183, v151);
            v52 = sub_1D5F70900;
            v53 = *(v0 + 2360);
            v54 = v0 + 16;
            v55 = v0 + 2080;
          }
        }

        else
        {
          v126 = *(v0 + 2296);
          v127 = *(v0 + 2280);
          v128 = *(v0 + 2264);
          v129 = *(v0 + 2216);
          v176 = *(v0 + 2168);
          v180 = *(v0 + 2328);
          v130 = v94;
          *(v0 + 2600) = sub_1D725829C();

          swift_willThrow();
          sub_1D5B952F8(v189, v190);

          v37(v128, v129);
          v37(v127, v129);
          v37(v126, v129);
          sub_1D5B6EE98(v176, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v37(v180, v129);
          v52 = sub_1D5F70420;
          v53 = *(v0 + 2360);
          v54 = v0 + 16;
          v55 = v0 + 1984;
        }
      }

      else
      {
        v56 = *(v0 + 2288);
        v57 = *(v0 + 2224);
        v58 = *(v0 + 2216);
        sub_1D725846C();
        sub_1D72584AC();
        v59 = *(v57 + 8);
        v59(v56, v58);
        sub_1D725851C();
        v60 = sub_1D726203C();

        v61 = [v9 fileExistsAtPath_];

        if (v61)
        {
          v62 = sub_1D725844C();
          *(v0 + 1544) = 0;
          v63 = [v9 removeItemAtURL:v62 error:v0 + 1544];

          v64 = *(v0 + 1544);
          if (!v63)
          {
            v131 = *(v0 + 2328);
            v132 = *(v0 + 2256);
            v133 = *(v0 + 2216);
            v134 = *(v0 + 2168);
            v135 = v64;
            *(v0 + 2624) = sub_1D725829C();

            swift_willThrow();
            sub_1D5B952F8(v189, v190);

            v59(v132, v133);
            sub_1D5B6EE98(v134, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            v59(v131, v133);
            v52 = sub_1D5F70B70;
            v53 = *(v0 + 2360);
            v54 = v0 + 16;
            v55 = v0 + 1840;
            goto LABEL_45;
          }

          v65 = v64;
        }

        v66 = sub_1D725844C();
        v67 = sub_1D725844C();
        *(v0 + 1640) = 0;
        v68 = [v9 moveItemAtURL:v66 toURL:v67 error:v0 + 1640];

        v69 = *(v0 + 1640);
        if (v68)
        {
          (*(v0 + 2416))(*(v0 + 2304), *(v0 + 2256), *(v0 + 2216));
          v70 = v69;
          goto LABEL_17;
        }

        v121 = *(v0 + 2328);
        v122 = *(v0 + 2256);
        v123 = *(v0 + 2216);
        v124 = *(v0 + 2168);
        v125 = v69;
        *(v0 + 2632) = sub_1D725829C();

        swift_willThrow();
        sub_1D5B952F8(v189, v190);

        v59(v122, v123);
        sub_1D5B6EE98(v124, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v59(v121, v123);
        v52 = sub_1D5F70DE0;
        v53 = *(v0 + 2360);
        v54 = v0 + 16;
        v55 = v0 + 1456;
      }
    }

    else
    {
      v47 = *(v0 + 2328);
      v48 = *(v0 + 2224);
      v49 = *(v0 + 2216);
      v50 = *(v0 + 2168);
      sub_1D5F75098();
      *(v0 + 2584) = swift_allocError();
      *v51 = 3;
      swift_willThrow();

      sub_1D5B6EE98(v50, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v48 + 8))(v47, v49);
      v52 = sub_1D5F6F7D0;
      v53 = *(v0 + 2360);
      v54 = v0 + 16;
      v55 = v0 + 2176;
    }

LABEL_45:

    return MEMORY[0x1EEE6DEB0](v54, v53, v52, v55);
  }

  v38 = *(v0 + 2416);
  v186 = *(v0 + 2392);
  v39 = *(v0 + 2384);
  v40 = *(v0 + 2320);
  v41 = *(v0 + 2312);
  v42 = *(v0 + 2216);
  v43 = (*(v0 + 2640) + 24) & ~*(v0 + 2640);
  v38(v40, *(v0 + 2120), v42);
  v186(v41, v40, v42);
  v44 = swift_allocObject();
  *(v0 + 2472) = v44;
  *(v44 + 16) = v39;
  v38(v44 + v43, v41, v42);
  v45 = v39;
  swift_asyncLet_begin();
  v46 = *(v0 + 2352);

  return MEMORY[0x1EEE6DEC0](v0 + 656, v46, sub_1D5F6D3C8, v0 + 1792);
}

uint64_t sub_1D5F6D3C8()
{
  *(v1 + 2480) = v0;
  if (v0)
  {
    v2 = sub_1D5F6FD2C;
  }

  else
  {
    v2 = sub_1D5F6D46C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6D46C()
{
  v1 = v0[305];
  v2 = v0[299];
  v3 = v0[294];
  v4 = v0[277];
  v5 = v0[271];
  v6 = v0[259];
  v7 = MEMORY[0x1E6968FB0];
  sub_1D5B6EE98(v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v2(v6, v3, v4);
  v1(v6, 0, 1, v4);
  sub_1D5F77210(v6, v5, &qword_1EDF45B40, v7);
  v8 = v0[294];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v8, sub_1D5F6D5A0, v0 + 162);
}

uint64_t sub_1D5F6D5A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6D62C, 0, 0);
}

uint64_t sub_1D5F6D62C()
{
  v175 = v0;
  v174[1] = *MEMORY[0x1E69E9840];
  (*(v0[278] + 8))(v0[290], v0[277]);
  v0[312] = v0[309];
  v0[311] = &unk_1D7285908;
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  v0[313] = v2;
  sub_1D725851C();
  v3 = sub_1D726203C();

  v4 = [v2 contentsAtPath_];

  if (v4)
  {
    v5 = sub_1D725867C();
    v7 = v6;

    v0[314] = v5;
    v0[315] = v7;
    v172 = v5;
    v173 = v7;
    if (sub_1D5F7183C(&unk_1F50F7A78, v5, v7))
    {
      v171 = v2;
      v8 = v0[286];
      v159 = v1;
      v9 = v0[278];
      v10 = v0[277];
      v11 = v0[247];
      v12 = v0[241];
      v13 = v0[235];
      sub_1D72584BC();
      v0[167] = 0xD000000000000010;
      v0[168] = 0x80000001D73C40F0;
      (*(v12 + 104))(v11, *MEMORY[0x1E6968F58], v13);
      sub_1D5BF4D9C();
      sub_1D725858C();
      (*(v12 + 8))(v11, v13);
      v169 = *(v9 + 8);
      v169(v8, v10);
      sub_1D725849C();
      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v14 = v0[299];
      v15 = v0[287];
      v16 = v0[284];
      v17 = v0[277];
      v18 = sub_1D725C42C();
      __swift_project_value_buffer(v18, qword_1EDFFCFA8);
      v14(v16, v15, v17);
      v19 = sub_1D725C3FC();
      v20 = sub_1D7262EDC();
      v21 = os_log_type_enabled(v19, v20);
      v22 = v0[284];
      v23 = v0[277];
      if (v21)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v174[0] = v25;
        *v24 = 136315138;
        sub_1D5C10CB0(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v26 = sub_1D72644BC();
        v28 = v27;
        v169(v22, v23);
        v29 = sub_1D5BC5100(v26, v28, v174);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1D5B42000, v19, v20, "Unarchiving puzzle [%s]", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1DA6FD500](v25, -1, -1);
        MEMORY[0x1DA6FD500](v24, -1, -1);

        v30 = v169;
      }

      else
      {

        v30 = v169;
        v169(v22, v23);
      }

      v2 = v171;
      v68 = v0[286];
      v69 = v0[277];
      sub_1D725846C();
      sub_1D72584AC();
      v30(v68, v69);
      sub_1D725851C();
      v70 = sub_1D726203C();

      v71 = [v171 fileExistsAtPath_];

      if (v71)
      {
        v72 = sub_1D725844C();
        v0[175] = 0;
        v73 = [v171 removeItemAtURL:v72 error:v0 + 175];

        v74 = v0[175];
        if (!v73)
        {
          v120 = v0[287];
          v121 = v0[285];
          v122 = v0[283];
          v123 = v0[277];
          v161 = v0[271];
          v165 = v0[291];
          v124 = v74;
          v0[324] = sub_1D725829C();

          swift_willThrow();
          sub_1D5B952F8(v172, v7);

          v30(v122, v123);
          v30(v121, v123);
          v30(v120, v123);
          sub_1D5B6EE98(v161, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v30(v165, v123);
          v36 = sub_1D5F701B0;
          v37 = v0[295];
          v38 = v0 + 2;
          v39 = v0 + 254;
          goto LABEL_41;
        }

        v75 = v74;
      }

      v76 = sub_1D725844C();
      v0[187] = 0;
      v77 = [v171 createDirectoryAtURL:v76 withIntermediateDirectories:0 attributes:0 error:v0 + 187];

      v78 = v0[187];
      if (!v77)
      {
        v110 = v0[287];
        v111 = v0[285];
        v112 = v0[283];
        v113 = v0[277];
        v160 = v0[271];
        v164 = v0[291];
        v114 = v78;
        v0[325] = sub_1D725829C();

        swift_willThrow();
        sub_1D5B952F8(v172, v7);

        v30(v112, v113);
        v30(v111, v113);
        v30(v110, v113);
        sub_1D5B6EE98(v160, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v30(v164, v113);
        v36 = sub_1D5F70420;
        v37 = v0[295];
        v38 = v0 + 2;
        v39 = v0 + 248;
        goto LABEL_41;
      }

      v79 = v78;
      sub_1D725851C();
      v80 = sub_1D726203C();

      v81 = [v171 fileExistsAtPath_];

      if (v81)
      {
        v82 = sub_1D725844C();
        v0[169] = 0;
        v83 = [v171 removeItemAtURL:v82 error:v0 + 169];

        v84 = v0[169];
        if (!v83)
        {
          v138 = v0[287];
          v139 = v0[285];
          v140 = v0[283];
          v141 = v0[277];
          v163 = v0[271];
          v168 = v0[291];
          v142 = v84;
          v0[326] = sub_1D725829C();

          swift_willThrow();
          sub_1D5B952F8(v172, v7);

          v30(v140, v141);
          v30(v139, v141);
          v30(v138, v141);
          sub_1D5B6EE98(v163, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v30(v168, v141);
          v36 = sub_1D5F70690;
          v37 = v0[295];
          v38 = v0 + 2;
          v39 = v0 + 170;
          goto LABEL_41;
        }

        v85 = v84;
      }

      v86 = sub_1D725844C();
      v87 = sub_1D725844C();
      v0[181] = 0;
      v88 = [v171 moveItemAtURL:v86 toURL:v87 error:v0 + 181];

      v89 = v0[181];
      if (!v88)
      {
        v167 = v0[291];
        v132 = v0[287];
        v133 = v0[285];
        v134 = v0[283];
        v135 = v0[277];
        v136 = v0[271];
        v137 = v89;
        v0[327] = sub_1D725829C();

        swift_willThrow();
        sub_1D5B952F8(v172, v7);

        v169(v134, v135);
        v169(v133, v135);
        v169(v132, v135);
        sub_1D5B6EE98(v136, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v169(v167, v135);
        v36 = sub_1D5F70900;
        v37 = v0[295];
        v38 = v0 + 2;
        v39 = v0 + 260;
        goto LABEL_41;
      }

      v90 = objc_allocWithZone(MEMORY[0x1E69B68D0]);
      v91 = v89;
      v92 = [v90 init];
      v93 = sub_1D725844C();
      v94 = sub_1D725844C();
      v95 = [v92 unarchive:v93 toLocation:v94];

      v96 = [v159 defaultManager];
      sub_1D72583BC();
      v97 = sub_1D726203C();

      v98 = [v96 fileExistsAtPath_];

      if (!v95 || !v98)
      {
        v148 = sub_1D725C3FC();
        v149 = sub_1D7262EBC();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          *v150 = 0;
          _os_log_impl(&dword_1D5B42000, v148, v149, "Failed to decompress archive file", v150, 2u);
          MEMORY[0x1DA6FD500](v150, -1, -1);
        }

        v151 = v0[291];
        v152 = v0[287];
        v153 = v0[285];
        v154 = v0[283];
        v155 = v0[277];
        v156 = v0[271];

        sub_1D5F75098();
        v0[316] = swift_allocError();
        *v157 = 3;
        swift_willThrow();

        sub_1D5B952F8(v172, v7);
        v169(v154, v155);
        v169(v153, v155);
        v169(v152, v155);
        sub_1D5B6EE98(v156, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v169(v151, v155);
        v36 = sub_1D5F6E970;
        v37 = v0[295];
        v38 = v0 + 2;
        v39 = v0 + 266;
        goto LABEL_41;
      }

      v99 = v0[302];
      v100 = v0[288];
      v101 = v0[287];
      v102 = v0[285];
      v103 = v0[283];
      v104 = v0[277];

      v169(v103, v104);
      v169(v101, v104);
      v99(v100, v102, v104);
      v43 = v169;
    }

    else
    {
      v40 = v0[286];
      v41 = v0[278];
      v42 = v0[277];
      sub_1D725846C();
      sub_1D72584AC();
      v43 = *(v41 + 8);
      v43(v40, v42);
      sub_1D725851C();
      v44 = sub_1D726203C();

      v45 = [v2 fileExistsAtPath_];

      if (v45)
      {
        v46 = sub_1D725844C();
        v0[193] = 0;
        v47 = [v2 removeItemAtURL:v46 error:v0 + 193];

        v48 = v0[193];
        if (!v47)
        {
          v115 = v0[291];
          v116 = v0[282];
          v117 = v0[277];
          v118 = v0[271];
          v119 = v48;
          v0[328] = sub_1D725829C();

          swift_willThrow();
          sub_1D5B952F8(v172, v173);

          v43(v116, v117);
          sub_1D5B6EE98(v118, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v43(v115, v117);
          v36 = sub_1D5F70B70;
          v37 = v0[295];
          v38 = v0 + 2;
          v39 = v0 + 230;
          goto LABEL_41;
        }

        v49 = v48;
      }

      v50 = sub_1D725844C();
      v51 = sub_1D725844C();
      v0[205] = 0;
      v52 = [v2 moveItemAtURL:v50 toURL:v51 error:v0 + 205];

      v53 = v0[205];
      if (!v52)
      {
        v105 = v0[291];
        v106 = v0[282];
        v107 = v0[277];
        v108 = v0[271];
        v109 = v53;
        v0[329] = sub_1D725829C();

        swift_willThrow();
        sub_1D5B952F8(v172, v173);

        v43(v106, v107);
        sub_1D5B6EE98(v108, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v43(v105, v107);
        v36 = sub_1D5F70DE0;
        v37 = v0[295];
        v38 = v0 + 2;
        v39 = v0 + 182;
        goto LABEL_41;
      }

      (v0[302])(v0[288], v0[282], v0[277]);
      v54 = v53;
    }

    v0[317] = v43;
    v55 = v0[307];
    v56 = v0[277];
    v57 = v0[253];
    sub_1D5C00C88(v0[271], v57, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v55(v57, 1, v56) == 1)
    {
      v58 = v0[297];
      sub_1D5B6EE98(v0[253], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v59 = [v58 dataResourceID];
      if (v59)
      {
        v60 = v0[229];
        v61 = v59;
        v62 = sub_1D726207C();
        v64 = v63;

        v65 = v60[13];
        v66 = v60[14];
        __swift_project_boxed_opaque_existential_1(v60 + 10, v65);
        v0[318] = ResourceServiceType.fetchResource(identifier:)(v62, v64, v65, v66);

        v67 = swift_task_alloc();
        v0[319] = v67;
        *v67 = v0;
        v67[1] = sub_1D5F6EE58;

        return MEMORY[0x1EEE44EE0](v0 + 199);
      }

      v143 = v0[291];
      v144 = v0[288];
      v145 = v0[277];
      v146 = v0[271];
      sub_1D5F75098();
      v0[322] = swift_allocError();
      *v147 = 2;
      swift_willThrow();
      sub_1D5B952F8(v172, v173);

      v43(v144, v145);
      sub_1D5B6EE98(v146, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v43(v143, v145);
      v36 = sub_1D5F6F560;
      v37 = v0[295];
      v38 = v0 + 2;
      v39 = v0 + 188;
    }

    else
    {
      v125 = v0[302];
      v126 = v0[291];
      v166 = v0[288];
      v170 = v0[297];
      v127 = v0[281];
      v128 = v0[277];
      v129 = v0[271];
      v162 = v0[253];
      v130 = v0[211];
      sub_1D5B952F8(v172, v173);

      sub_1D5B6EE98(v129, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v43(v126, v128);
      v125(v127, v162, v128);
      v131 = type metadata accessor for PuzzleResource(0);
      v125(&v130[v131[5]], v166, v128);
      v125(&v130[v131[6]], v127, v128);
      *v130 = v170;
      *&v130[v131[7]] = 0;
      swift_unknownObjectRetain();
      v36 = sub_1D5F6EBE0;
      v37 = v0[295];
      v38 = v0 + 2;
      v39 = v0 + 218;
    }
  }

  else
  {
    v31 = v0[291];
    v32 = v0[278];
    v33 = v0[277];
    v34 = v0[271];
    sub_1D5F75098();
    v0[323] = swift_allocError();
    *v35 = 3;
    swift_willThrow();

    sub_1D5B6EE98(v34, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(v32 + 8))(v31, v33);
    v36 = sub_1D5F6F7D0;
    v37 = v0[295];
    v38 = v0 + 2;
    v39 = v0 + 272;
  }

LABEL_41:

  return MEMORY[0x1EEE6DEB0](v38, v37, v36, v39);
}

uint64_t sub_1D5F6E970()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6E9FC, 0, 0);
}

uint64_t sub_1D5F6E9FC()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F6EBE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6EC6C, 0, 0);
}

uint64_t sub_1D5F6EC6C()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F6EE58()
{
  *(*v1 + 2560) = v0;

  if (v0)
  {
    v2 = sub_1D5F71050;
  }

  else
  {
    v2 = sub_1D5F6EFB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6EFB8()
{
  v26 = v0[199];
  v1 = [v26 fileURL];
  v25 = v0[317];
  v2 = v0[315];
  v3 = v0[314];
  v4 = v0[313];
  if (v1)
  {
    v23 = v0[302];
    v24 = v0[297];
    v21 = v0[291];
    v22 = v0[288];
    v5 = v0[280];
    v6 = v0[277];
    v7 = v0[271];
    v8 = v0[211];
    v9 = v1;
    sub_1D72584EC();
    sub_1D5B952F8(v3, v2);

    sub_1D5B6EE98(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v25(v21, v6);
    v10 = type metadata accessor for PuzzleResource(0);
    v23(&v8[v10[5]], v22, v6);
    v23(&v8[v10[6]], v5, v6);
    *v8 = v24;
    *&v8[v10[7]] = v26;
    swift_unknownObjectRetain();
    v11 = sub_1D5F6F264;
    v12 = v0[295];
    v13 = v0 + 2;
    v14 = v0 + 212;
  }

  else
  {
    v15 = v0[291];
    v16 = v0[288];
    v17 = v0[277];
    v18 = v0[271];
    sub_1D5F75098();
    v0[321] = swift_allocError();
    *v19 = 4;
    swift_willThrow();
    sub_1D5B952F8(v3, v2);

    v25(v16, v17);
    sub_1D5B6EE98(v18, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v25(v15, v17);
    v11 = sub_1D5F6F2F0;
    v12 = v0[295];
    v13 = v0 + 2;
    v14 = v0 + 206;
  }

  return MEMORY[0x1EEE6DEB0](v13, v12, v11, v14);
}

uint64_t sub_1D5F6F264()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F77AF0, 0, 0);
}

uint64_t sub_1D5F6F2F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6F37C, 0, 0);
}

uint64_t sub_1D5F6F37C()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F6F560()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6F5EC, 0, 0);
}

uint64_t sub_1D5F6F5EC()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F6F7D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6F85C, 0, 0);
}

uint64_t sub_1D5F6F85C()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F6FA40()
{
  v1 = *(v0 + 2360);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1D5F6FAD0, v0 + 1888);
}

uint64_t sub_1D5F6FAD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6FB5C, 0, 0);
}

uint64_t sub_1D5F6FB5C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6FD2C()
{
  v1 = *(v0 + 2352);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1D5F6FDBC, v0 + 1552);
}

uint64_t sub_1D5F6FDBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6FE48, 0, 0);
}

uint64_t sub_1D5F6FE48()
{
  v1 = v0[291];
  v2 = v0[277];
  v3 = v0[271];
  v4 = *(v0[278] + 8);
  v4(v0[290], v2);
  sub_1D5B6EE98(v3, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v4(v1, v2);
  v5 = v0[295];

  return MEMORY[0x1EEE6DEB0](v0 + 2, v5, sub_1D5F6FF48, v0 + 176);
}

uint64_t sub_1D5F6FF48()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6FFD4, 0, 0);
}

uint64_t sub_1D5F6FFD4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F701B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F7023C, 0, 0);
}

uint64_t sub_1D5F7023C()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F70420()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F704AC, 0, 0);
}

uint64_t sub_1D5F704AC()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F70690()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F7071C, 0, 0);
}

uint64_t sub_1D5F7071C()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F70900()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F7098C, 0, 0);
}

uint64_t sub_1D5F7098C()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F70B70()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F70BFC, 0, 0);
}

uint64_t sub_1D5F70BFC()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F70DE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F70E6C, 0, 0);
}

uint64_t sub_1D5F70E6C()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F71050()
{
  v1 = v0[317];
  v2 = v0[313];
  v3 = v0[291];
  v4 = v0[288];
  v5 = v0[277];
  v6 = v0[271];
  sub_1D5B952F8(v0[314], v0[315]);

  v1(v4, v5);
  sub_1D5B6EE98(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v1(v3, v5);
  v7 = v0[295];

  return MEMORY[0x1EEE6DEB0](v0 + 2, v7, sub_1D5F71174, v0 + 200);
}

uint64_t sub_1D5F71174()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F71200, 0, 0);
}

uint64_t sub_1D5F71200()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F713E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D5F714A0;

  return MEMORY[0x1EEDC6280](a1, a3, 0);
}

uint64_t sub_1D5F714A0(uint64_t a1)
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
    *(v4 + 32) = a1;
    sub_1D5F752F4(0);
    *(v4 + 40) = *(v8 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1D5F77AB8, 0, 0);
  }
}

uint64_t sub_1D5F715FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D5F716B8;

  return MEMORY[0x1EEDC6280](a1, a3, 0);
}

uint64_t sub_1D5F716B8(uint64_t a1)
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
    *(v4 + 32) = a1;
    sub_1D5F752F4(0);
    *(v4 + 40) = *(v8 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1D5F71814, 0, 0);
  }
}

uint64_t sub_1D5F7183C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1D72586BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5E3E824(a2, a3);
  sub_1D72586CC();
  sub_1D5C10CB0(&qword_1EC8817C0, 255, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
  v11 = 0;
  while (1)
  {
    result = sub_1D72639DC();
    if (v16[15])
    {
      result = (*(v7 + 8))(v10, v6);
      v15 = *(a1 + 16);
      if (v15 != v11)
      {
        if (v11 < v15)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    v13 = *(a1 + 16);
    if (v11 == v13)
    {
      (*(v7 + 8))(v10, v6);
      return 1;
    }

    if (v11 >= v13)
    {
      break;
    }

    v14 = *(a1 + 32 + v11++);
    if (v16[14] != v14)
    {
      (*(v7 + 8))(v10, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t PuzzleService.prewarmPuzzleTypeResource(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F71A60, 0, 0);
}

uint64_t sub_1D5F71A60()
{
  v1 = v0[3];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[3];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_1D7263BFC();
  v4 = v0[3];
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v1 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1DA6FB460](v1, v0[3]);
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v1 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v7 + 8 * v1);
        swift_unknownObjectRetain();
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = [v9 engineResourceID];
      if (v10)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v1;
      if (v5 == v3)
      {
        goto LABEL_24;
      }
    }

    v26 = v0;
    v11 = v8;
    v12 = v10;
    v13 = sub_1D726207C();
    v25 = v14;
    swift_unknownObjectRelease();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D5B858EC(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    v17 = v11;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_1D5B858EC((v15 > 1), v16 + 1, 1, v11);
    }

    *(v17 + 2) = v16 + 1;
    v18 = &v17[16 * v16];
    v8 = v17;
    *(v18 + 4) = v13;
    *(v18 + 5) = v25;
    v0 = v26;
  }

  while (v5 != v3);
LABEL_24:
  v20 = v0[4];
  v19 = v0[5];
  v21 = v19[13];
  v22 = v19[14];
  __swift_project_boxed_opaque_existential_1(v19 + 10, v21);
  v0[6] = ResourceServiceType.fetchResources(identifiers:cachePolicy:)(v8, v20, v21, v22);

  v23 = swift_task_alloc();
  v0[7] = v23;
  *v23 = v0;
  v23[1] = sub_1D5F71CCC;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1D5F71CCC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5E792F8;
  }

  else
  {

    v2 = sub_1D5F71DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t PuzzleService.thumbnailSmallUrl(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F71E2C, 0, 0);
}

uint64_t sub_1D5F71E2C()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  sub_1D5B5D3A4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  *v2 = v0;
  v2[1] = sub_1D5F71F50;

  return MEMORY[0x1EEE6DE38](&v0[1], 0, 0, 0xD000000000000017, 0x80000001D73C4110, sub_1D5F75600, v1, v3);
}

uint64_t sub_1D5F71F50()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F68E8C;
  }

  else
  {

    v2 = sub_1D5F7206C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D5F72088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5F77808(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6, v10);
  v12 = *(a2 + 72);
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v11);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_1D5F7793C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6837FA4;
  aBlock[3] = &block_descriptor_182;
  v15 = _Block_copy(aBlock);

  [v12 fetchThumbnailUrlForPuzzle:a3 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1D5F72238(uint64_t a1, uint64_t a2, id a3, __n128 a4)
{
  if (a3)
  {
    v4 = a3;
LABEL_3:
    sub_1D5F77808(0);
    return sub_1D726286C();
  }

  if (!a2)
  {
    sub_1D5F75098();
    swift_allocError();
    *v6 = 2;
    goto LABEL_3;
  }

  sub_1D5F77808(0);

  return sub_1D726287C();
}

uint64_t PuzzleService.thumbnailSmallJSON(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F72308, 0, 0);
}

uint64_t sub_1D5F72308()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1D5B5A498(0, &qword_1EDF04648, 0x1E695DF20);
  *v2 = v0;
  v2[1] = sub_1D5F72418;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000018, 0x80000001D73C4130, sub_1D5F75608, v1, v3);
}

uint64_t sub_1D5F72418()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5F72534;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F72534()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5F72598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5F776F8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6, v10);
  v12 = *(a2 + 72);
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v11);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_1D5F77788;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5F72800;
  aBlock[3] = &block_descriptor_11;
  v15 = _Block_copy(aBlock);

  [v12 fetchThumbnailJSONForPuzzleType:a3 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1D5F72748(uint64_t a1, id a2, __n128 a3)
{
  if (a2)
  {
    v3 = a2;
LABEL_3:
    sub_1D5F776F8(0);
    return sub_1D726286C();
  }

  if (!a1)
  {
    sub_1D5F75098();
    swift_allocError();
    *v5 = 2;
    goto LABEL_3;
  }

  sub_1D7261D2C();
  sub_1D5F776F8(0);
  return sub_1D726287C();
}

double sub_1D5F72800(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D7261D3C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);

  return result;
}

uint64_t PuzzleService.prewarmPuzzleResource(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F728CC, 0, 0);
}

uint64_t sub_1D5F728CC()
{
  v1 = v0[3];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[3];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_1D7263BFC();
  v4 = v0[3];
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v1 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1DA6FB460](v1, v0[3]);
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v1 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v7 + 8 * v1);
        swift_unknownObjectRetain();
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = [v9 dataResourceID];
      if (v10)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v1;
      if (v5 == v3)
      {
        goto LABEL_24;
      }
    }

    v25 = v0;
    v11 = v8;
    v12 = v10;
    v13 = sub_1D726207C();
    v24 = v14;
    swift_unknownObjectRelease();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D5B858EC(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    v17 = v11;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_1D5B858EC((v15 > 1), v16 + 1, 1, v11);
    }

    *(v17 + 2) = v16 + 1;
    v18 = &v17[16 * v16];
    v8 = v17;
    *(v18 + 4) = v13;
    *(v18 + 5) = v24;
    v0 = v25;
  }

  while (v5 != v3);
LABEL_24:
  v19 = v0[4];
  v20 = v19[13];
  v21 = v19[14];
  __swift_project_boxed_opaque_existential_1(v19 + 10, v20);
  v0[5] = ResourceServiceType.fetchResources(identifiers:)(v8, v20, v21);

  v22 = swift_task_alloc();
  v0[6] = v22;
  *v22 = v0;
  v22[1] = sub_1D5F72B34;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1D5F72B34()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5E6E770;
  }

  else
  {

    v2 = sub_1D5F77B68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t PuzzleService.latestPublishedPuzzleIDs(for:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_1D7258C2C();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_1D5B5446C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_1D725891C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5F72E4C, 0, 0);
}

uint64_t sub_1D5F72E4C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = [objc_msgSend(*(v2 + 160) appConfiguration)];
  *(v0 + 264) = v3;
  swift_unknownObjectRelease();
  [v3 recentPuzzlesCacheLifetime];
  v4 = [v1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *(v0 + 272) = v5;
  *(v0 + 280) = v7;
  *(v0 + 288) = *(v2 + 168);
  sub_1D725A76C();
  swift_beginAccess();
  v8 = *(v2 + 176);
  if (*(v8 + 16) && (v9 = sub_1D5B69D90(v5, v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 120);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v12 + 184);
  if (*(v13 + 16) && (v14 = sub_1D5B69D90(v5, v7), (v15 & 1) != 0))
  {
    (*(*(v0 + 208) + 16))(*(v0 + 192), *(v13 + 56) + *(*(v0 + 208) + 72) * v14, *(v0 + 200));
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = *(v0 + 192);
  v20 = *(v17 + 56);
  *(v0 + 296) = v20;
  v20(v19, v16, 1, v18);
  swift_endAccess();
  v21 = *(v17 + 48);
  *(v0 + 304) = v21;
  *(v0 + 312) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v19, 1, v18) == 1)
  {
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    sub_1D72587BC();
    if (v21(v23, 1, v22) != 1)
    {
      sub_1D5B6EE98(*(v0 + 192), &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(*(v0 + 208) + 32))(*(v0 + 256), *(v0 + 192), *(v0 + 200));
  }

  sub_1D725A77C();
  if (v11)
  {
    v62 = v11;
    v24 = *(v0 + 248);
    v25 = *(v0 + 240);
    v27 = *(v0 + 200);
    v26 = *(v0 + 208);
    sub_1D725880C();
    sub_1D72588CC();
    v28 = sub_1D725882C();
    v29 = *(v26 + 8);
    v29(v25, v27);
    v29(v24, v27);
    if (v28)
    {
      v29(*(v0 + 256), *(v0 + 200));

LABEL_24:

      v54 = *(v0 + 8);

      return v54(v62);
    }
  }

  v30 = [*(v0 + 112) latestPuzzleIDs];
  if (!v30)
  {
    v43 = *(v0 + 256);
    v44 = *(v0 + 200);
    v45 = *(v0 + 208);

    (*(v45 + 8))(v43, v44);
    v62 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v31 = *(v0 + 200);
  v32 = *(v0 + 208);
  v33 = *(v0 + 184);
  v34 = v30;
  v35 = sub_1D726267C();

  *(v0 + 320) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v33, 1, 1, v31);
  sub_1D7258BCC();
  if (!v35[2])
  {

    v56 = *(v0 + 296);
    v46 = *(v0 + 272);
    v47 = *(v0 + 280);
    v61 = *(v0 + 256);
    v48 = *(v0 + 208);
    v55 = *(v0 + 200);
    v59 = *(v0 + 264);
    v60 = *(v0 + 184);
    v49 = *(v0 + 152);
    v50 = *(v0 + 136);
    v57 = *(v0 + 128);
    v58 = *(v0 + 144);
    v51 = *(v0 + 120);
    sub_1D725A76C();
    swift_beginAccess();

    v52 = MEMORY[0x1E69E7CC0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v52;
    v63 = *(v51 + 176);
    *(v51 + 176) = 0x8000000000000000;
    sub_1D6D77254(v52, v46, v47, isUniquelyReferenced_nonNull_native);

    *(v51 + 176) = v63;
    swift_endAccess();
    sub_1D72588CC();
    v56(v49, 0, 1, v55);
    swift_beginAccess();
    sub_1D6D60620(v49, v46, v47);
    swift_endAccess();
    sub_1D725A77C();

    (*(v50 + 8))(v58, v57);
    sub_1D5B6EE98(v60, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    (*(v48 + 8))(v61, v55);
    goto LABEL_24;
  }

  v36 = MEMORY[0x1E69E7CC0];
  *(v0 + 336) = v35;
  *(v0 + 344) = v36;
  *(v0 + 328) = v35 + 2;
  v38 = v35[4];
  v37 = v35[5];
  sub_1D5B5D3A4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  *(v0 + 352) = v39;
  *(v39 + 16) = xmmword_1D7273AE0;
  *(v39 + 32) = v38;
  *(v39 + 40) = v37;

  FCCurrentQoSOrUtilityIfMain();
  v40 = FCDispatchQueueForQualityOfService();
  *(v0 + 360) = v40;
  v41 = swift_task_alloc();
  *(v0 + 368) = v41;
  *v41 = v0;
  v41[1] = sub_1D5F73558;

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v39, 0, v40);
}

uint64_t sub_1D5F73558(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  if (v1)
  {

    v5 = sub_1D5F73EA8;
  }

  else
  {
    v5 = sub_1D5F736C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5F736C8()
{
  v3 = *(v1 + 376);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_29;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6FB460](0, *(v1 + 376));
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_36:
      result = sub_1D5B858EC(0, *(v2 + 16) + 1, 1, v2);
      v2 = result;
      goto LABEL_16;
    }

    v4 = *(*(v1 + 376) + 32);
    swift_unknownObjectRetain();
  }

  v5 = [v4 publishDate];
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_30:

    v51 = *(v1 + 344);
    goto LABEL_31;
  }

  v6 = *(v1 + 304);
  v8 = *(v1 + 224);
  v7 = *(v1 + 232);
  v9 = *(v1 + 200);
  v10 = *(v1 + 208);
  v11 = *(v1 + 184);
  v12 = *(v1 + 168);
  v13 = v5;
  sub_1D72588BC();

  v14 = *(v10 + 32);
  v14(v7, v8, v9);
  sub_1D5F77210(v11, v12, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v66 = v14;
  if (v6(v12, 1, v9) == 1)
  {
    v15 = *(v1 + 304);
    v16 = *(v1 + 200);
    v17 = *(v1 + 168);
    (*(*(v1 + 208) + 16))(*(v1 + 176), *(v1 + 232), v16);
    if (v15(v17, 1, v16) != 1)
    {
      sub_1D5B6EE98(*(v1 + 168), &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    v14(*(v1 + 176), *(v1 + 168), *(v1 + 200));
  }

  v18 = *(v1 + 304);
  v19 = *(v1 + 200);
  v21 = *(v1 + 176);
  v20 = *(v1 + 184);
  v22 = *(v1 + 160);
  (*(v1 + 296))(v21, 0, 1, v19);
  v23 = MEMORY[0x1E6969530];
  sub_1D5F77210(v21, v20, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5C00C88(v20, v22, &qword_1EDF45B00, v23);
  if (v18(v22, 1, v19) == 1)
  {
    v24 = *(v1 + 160);
    (*(*(v1 + 208) + 8))(*(v1 + 232), *(v1 + 200));
    swift_unknownObjectRelease();
    sub_1D5B6EE98(v24, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    goto LABEL_30;
  }

  v66(*(v1 + 216), *(v1 + 160), *(v1 + 200));
  if ((sub_1D7258BBC() & 1) == 0)
  {
    v46 = *(v1 + 232);
    v47 = *(v1 + 208);
    v48 = *(v1 + 216);
    v49 = *(v1 + 200);
    swift_unknownObjectRelease();
    v50 = *(v47 + 8);
    v50(v48, v49);
    v50(v46, v49);
    goto LABEL_30;
  }

  v25 = [v4 identifier];
  v3 = sub_1D726207C();
  v0 = v26;

  result = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v1 + 344);
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  v29 = *(v2 + 16);
  v28 = *(v2 + 24);
  if (v29 >= v28 >> 1)
  {
    result = sub_1D5B858EC((v28 > 1), v29 + 1, 1, v2);
    v2 = result;
  }

  v30 = *(v1 + 328);
  *(v2 + 16) = v29 + 1;
  v31 = v2 + 16 * v29;
  *(v31 + 32) = v3;
  *(v31 + 40) = v0;
  v32 = *v30;
  if (!*v30)
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v1 + 336);
  if (!isUniquelyReferenced_nonNull_native || (v32 - 1) > *(v34 + 3) >> 1)
  {
    v34 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v32, 1, *(v1 + 336));
  }

  v35 = *(v1 + 232);
  v36 = *(v1 + 208);
  v37 = *(v1 + 216);
  v38 = *(v1 + 200);
  sub_1D5BFB68C((v34 + 32));
  v39 = *(v34 + 2);
  memmove(v34 + 32, v34 + 48, 16 * v39 - 16);
  *(v34 + 2) = v39 - 1;
  swift_unknownObjectRelease();
  v40 = *(v36 + 8);
  v40(v37, v38);
  v40(v35, v38);
  if (!*(v34 + 2))
  {

    v51 = v2;
LABEL_31:
    v61 = *(v1 + 296);
    v52 = *(v1 + 272);
    v53 = *(v1 + 280);
    v67 = *(v1 + 256);
    v54 = *(v1 + 208);
    v60 = *(v1 + 200);
    v64 = *(v1 + 264);
    v65 = *(v1 + 184);
    v55 = *(v1 + 152);
    v56 = *(v1 + 136);
    v62 = *(v1 + 128);
    v63 = *(v1 + 144);
    v57 = *(v1 + 120);
    sub_1D725A76C();
    swift_beginAccess();

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v57 + 176);
    *(v57 + 176) = 0x8000000000000000;
    sub_1D6D77254(v51, v52, v53, v58);

    *(v57 + 176) = v68;
    swift_endAccess();
    sub_1D72588CC();
    v61(v55, 0, 1, v60);
    swift_beginAccess();
    sub_1D6D60620(v55, v52, v53);
    swift_endAccess();
    sub_1D725A77C();

    (*(v56 + 8))(v63, v62);
    sub_1D5B6EE98(v65, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    (*(v54 + 8))(v67, v60);

    v59 = *(v1 + 8);

    return v59(v51);
  }

  *(v1 + 336) = v34;
  *(v1 + 344) = v2;
  *(v1 + 328) = v34 + 16;
  v42 = *(v34 + 4);
  v41 = *(v34 + 5);
  sub_1D5B5D3A4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v1 + 352) = v43;
  *(v43 + 16) = xmmword_1D7273AE0;
  *(v43 + 32) = v42;
  *(v43 + 40) = v41;

  FCCurrentQoSOrUtilityIfMain();
  v44 = FCDispatchQueueForQualityOfService();
  *(v1 + 360) = v44;
  v45 = swift_task_alloc();
  *(v1 + 368) = v45;
  *v45 = v1;
  v45[1] = sub_1D5F73558;

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v43, 0, v44);
}

uint64_t sub_1D5F73EA8()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[26];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[18];
  v8 = v0[16];
  v7 = v0[17];

  (*(v7 + 8))(v6, v8);
  sub_1D5B6EE98(v5, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t PuzzleService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PuzzleService.__deallocating_deinit()
{
  PuzzleService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F740D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return PuzzleService.prewarmPuzzleTypeResource(for:cachePolicy:)(a1, a2);
}

uint64_t sub_1D5F74178(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return PuzzleService.prewarmPuzzleResource(for:)(a1);
}

uint64_t sub_1D5F74210(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return PuzzleService.puzzleResource(from:)(a1, a2);
}

uint64_t sub_1D5F742BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzle(for:)(a1, a2);
}

uint64_t sub_1D5F74388(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F6551C, 0, 0);
}

uint64_t sub_1D5F743AC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1D5F743D4, 0, 0);
}

uint64_t sub_1D5F743D4(uint64_t a1)
{
  FCCurrentQoSOrUtilityIfMain();
  v2 = FCDispatchQueueForQualityOfService();
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_1D5F655D0;
  v4 = *(v1 + 56);
  v5 = *(v1 + 16);

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v5, v4, v2);
}

uint64_t sub_1D5F74488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzles(for:cachePolicy:)(a1, a2);
}

uint64_t sub_1D5F74530(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzles(for:excludeDrafts:cachePolicy:)(a1, a2, a3);
}

uint64_t sub_1D5F745E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D5F677D4, 0, 0);
}

uint64_t sub_1D5F74608(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(a1, a2, a3);
}

uint64_t sub_1D5F746B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = *v4;
  *(v5 + 40) = a4;
  *(v5 + 48) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1D5F673EC, 0, 0);
}

uint64_t sub_1D5F746E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzleTypes(for:qos:)(a1, a2);
}

uint64_t sub_1D5F7478C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D5F747B4, 0, 0);
}

uint64_t sub_1D5F747B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
  *v5 = v0;
  v5[1] = sub_1D5F748D8;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001D73C40A0, sub_1D5F77ADC, v4, v6);
}

uint64_t sub_1D5F748D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AC4;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F749F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D5F74A1C, 0, 0);
}

uint64_t sub_1D5F74A1C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
  *v4 = v0;
  v4[1] = sub_1D5F6751C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000021, 0x80000001D73C40C0, sub_1D5F77AB4, v3, v5);
}

uint64_t sub_1D5F74B4C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F74B70, 0, 0);
}

uint64_t sub_1D5F74B70()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1D5B5A498(0, &qword_1EDF04648, 0x1E695DF20);
  *v2 = v0;
  v2[1] = sub_1D5F74C80;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000018, 0x80000001D73C4130, sub_1D5F77B70, v1, v3);
}

uint64_t sub_1D5F74C80()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AC8;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F74D9C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F74DC0, 0, 0);
}

uint64_t sub_1D5F74DC0()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  sub_1D5B5D3A4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  *v2 = v0;
  v2[1] = sub_1D5F74EE4;

  return MEMORY[0x1EEE6DE38](&v0[1], 0, 0, 0xD000000000000017, 0x80000001D73C4110, sub_1D5F77B6C, v1, v3);
}

uint64_t sub_1D5F74EE4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AC4;
  }

  else
  {

    v2 = sub_1D5F77AD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F75000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5BAF844;

  return PuzzleService.latestPublishedPuzzleIDs(for:)(a1);
}

unint64_t sub_1D5F75098()
{
  result = qword_1EC8816C8;
  if (!qword_1EC8816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816C8);
  }

  return result;
}

unint64_t sub_1D5F750EC()
{
  result = qword_1EC8816D0;
  if (!qword_1EC8816D0)
  {
    sub_1D5B5A498(255, &qword_1EDF1A660, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816D0);
  }

  return result;
}

uint64_t sub_1D5F75154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D5F67E44(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1D5F7521C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D5F680A8(a1, v4, v5, v6, v8, v7);
}

void sub_1D5F752F4(uint64_t a1)
{
  if (!qword_1EC881748)
  {
    sub_1D72585BC();
    sub_1D5B5A498(255, &unk_1EC881750, 0x1E696AF70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881748);
    }
  }
}

uint64_t sub_1D5F75374(uint64_t a1)
{
  v4 = *(sub_1D72585BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D5F713E4(a1, v6, v1 + v5);
}

uint64_t objectdestroy_57Tm()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5F7551C(uint64_t a1)
{
  v4 = *(sub_1D72585BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D5F715FC(a1, v6, v1 + v5);
}

unint64_t sub_1D5F75614()
{
  result = qword_1EC881760;
  if (!qword_1EC881760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881760);
  }

  return result;
}

uint64_t dispatch thunk of PuzzleServiceType.prewarmPuzzleTypeResource(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.prewarmPuzzleResource(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleResource(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzle(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5F77AD4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:excludeDrafts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:excludeDrafts:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5F77AD4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:cachePolicy:callbackQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5F77AD4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:excludeDrafts:callbackQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 88) + **(a5 + 88));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5F77AD4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:excludeDrafts:cachePolicy:callbackQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 96) + **(a6 + 96));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D5F77AD4;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleTypes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5F77AD4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleTypes(for:qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 112) + **(a4 + 112));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleTypes(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 120) + **(a4 + 120));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleTypes(for:cachePolicy:qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 128) + **(a5 + 128));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5F77AD4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleServiceType.thumbnailSmallJSON(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5F77AD4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleServiceType.thumbnailSmallUrl(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5F76AE0;

  return v9(a1, a2, a3);
}

uint64_t sub_1D5F76AE0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of PuzzleServiceType.latestPublishedPuzzleIDs(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5E97EA8;

  return v9(a1, a2, a3);
}

unint64_t sub_1D5F76D98()
{
  result = qword_1EDF12C40;
  if (!qword_1EDF12C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12C40);
  }

  return result;
}

unint64_t sub_1D5F76E9C()
{
  result = qword_1EC881768;
  if (!qword_1EC881768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881768);
  }

  return result;
}

void sub_1D5F76F44()
{
  if (!qword_1EC88ED20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88ED20);
    }
  }
}

void sub_1D5F76FA8()
{
  if (!qword_1EC881770)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881770);
    }
  }
}

void sub_1D5F77008(uint64_t a1)
{
  if (!qword_1EC881778)
  {
    sub_1D5B5446C(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881778);
    }
  }
}

void sub_1D5F770A4(uint64_t a1)
{
  if (!qword_1EC881788)
  {
    sub_1D5B5446C(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881788);
    }
  }
}

void sub_1D5F7713C(uint64_t a1)
{
  if (!qword_1EC881790)
  {
    sub_1D5B81B04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881790);
    }
  }
}