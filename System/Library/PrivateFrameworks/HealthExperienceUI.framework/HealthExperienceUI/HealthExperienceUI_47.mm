void (*sub_1BA405DD4(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

UIImage *DataTypeDetailChartCell.chartImage.getter()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    result = [(UIImage *)result view];
    if (result)
    {
      v3 = result;
      [(UIImage *)result frame];
      v7.width = v4;
      v7.height = v5;
      UIGraphicsBeginImageContextWithOptions(v7, 1, 0.0);
      [(UIImage *)v3 bounds];
      [(UIImage *)v3 drawViewHierarchyInRect:1 afterScreenUpdates:?];
      v6 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();

      return v6;
    }
  }

  return result;
}

uint64_t DataTypeDetailChartCell.chartDataTypeDisplayName.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v7, v28);
  if (v29)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6C3F0, &protocol descriptor for DataTypeDetailChartCellItem);
    if (swift_dynamicCast())
    {
      if (*(&v31 + 1))
      {
        sub_1B9F1134C(&v30, v33);
        v8 = v34;
        v9 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v10 = (*(v9 + 8))(v8, v9);
        v11 = [v10 hk_localizedName];

        if (v11)
        {
          v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        }

        else
        {
          v12 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v33);
        return v12;
      }
    }

    else
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v28, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
  }

  sub_1B9F43A50(&v30, &qword_1EDC6C3E8, &qword_1EDC6C3F0, &protocol descriptor for DataTypeDetailChartCellItem);
  sub_1BA4A3DD8();
  v13 = v1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v2;
    v18 = v17;
    *&v30 = v17;
    *v16 = 136315394;
    v19 = sub_1BA4A85D8();
    v21 = sub_1B9F0B82C(v19, v20, &v30);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_1B9F68124(v1 + v7, v33);
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v22 = sub_1BA4A6808();
    v24 = sub_1B9F0B82C(v22, v23, &v30);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Item kind wrong: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v3 + 8))(v6, v27);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

id DataTypeDetailChartCell.chartOverlayVersion.getter()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 && (v25[1] = &unk_1F388B8A0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    v10 = v7;
    result = [v9 chartOverlayVersion];
    if (result)
    {
      v12 = result;

      return v12;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = v0;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      v26 = v25[0];
      *v16 = 136446466;
      v17 = v13;
      v18 = [v17 description];
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = v20;

      v22 = sub_1B9F0B82C(v19, v21, &v26);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1B9F0B82C(0xD00000000000001ELL, 0x80000001BA507340, &v26);
      _os_log_impl(&dword_1B9F07000, v14, v15, "%{public}s: chartViewController does not conform to %{public}s, cannot provide a meaningful chart overlay version", v16, 0x16u);
      v23 = v25[0];
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v24 = *MEMORY[0x1E69A4098];

    return v24;
  }

  return result;
}

unint64_t sub_1BA40661C()
{
  result = qword_1EDC66CA0;
  if (!qword_1EDC66CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC66CA0);
  }

  return result;
}

unint64_t sub_1BA406908()
{
  result = qword_1EDC66C98;
  if (!qword_1EDC66C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC66C98);
  }

  return result;
}

double sub_1BA40695C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1BA4069D0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA406A30()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA406A7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA406B34()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA406B78(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1BA406C28(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView;
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  *(v4 + 8) = v3;
  v6 = v2;
}

id sub_1BA406C8C()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA406CE0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

id sub_1BA406DA0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA406E30(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController) = a1;
}

void (*sub_1BA406E44(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA406DA0();
  return sub_1BA406E8C;
}

void sub_1BA406E8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController) = v2;
}

id sub_1BA406EA4()
{
  sub_1BA4A6608();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id CameraScannerFlowViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CameraScannerFlowViewController.init()()
{
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView] = 0;
  v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction] = 0;
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___tapToRadarButton] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CameraScannerFlowViewController();
  v2 = objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
  [v2 setModalPresentationStyle_];
  return v2;
}

id CameraScannerFlowViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

double static CameraScannerFlowViewController.cameraScannerFlowDidTapScan(presentingVC:scanner:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  v6 = a2;
  sub_1BA4A2FB8();

  return result;
}

id sub_1BA407100(id result, id a2, uint64_t a3)
{
  if (result == 2)
  {
    return MEMORY[0x1EEE0DB08](a2);
  }

  if (result == 3)
  {
    return [a2 presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

void sub_1BA407138()
{
  v45.receiver = v0;
  v45.super_class = type metadata accessor for CameraScannerFlowViewController();
  objc_msgSendSuper2(&v45, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBlackColor];
  [v2 setBackgroundColor_];

  v4 = sub_1BA406DA0();
  [v0 addChildViewController_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController] view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v6 addSubview_];

  v10 = [*&v0[v7] view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v0 view];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame_];
  v22 = [*&v0[v7] view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  [v22 setAutoresizingMask_];

  v24 = [*&v0[v7] view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  [v24 setAlpha_];

  [*&v0[v7] didMoveToParentViewController_];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  v28 = sub_1BA407920();
  [v27 addSubview_];

  v29 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v46.origin.x = v33;
  v46.origin.y = v35;
  v46.size.width = v37;
  v46.size.height = v39;
  Width = CGRectGetWidth(v46);
  v41 = [v0 view];
  if (v41)
  {
    v42 = v41;
    [v41 safeAreaInsets];
    v44 = v43;

    [v29 setFrame_];
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1BA4075C0(double a1)
{
  v2 = sub_1BA406DA0();
  v3 = [v2 view];

  if (v3)
  {
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA40767C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18.receiver = a1;
  v18.super_class = type metadata accessor for CameraScannerFlowViewController();
  v11 = *a4;
  v12 = v18.receiver;
  objc_msgSendSuper2(&v18, v11, a3);
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v17[4] = a6;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B9F0B040;
  v17[3] = a7;
  v15 = _Block_copy(v17);
  v16 = v12;

  [v13 animateWithDuration:v15 animations:0.45];

  _Block_release(v15);
}

void sub_1BA407798()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for CameraScannerFlowViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v1 = sub_1BA407920();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    Width = CGRectGetWidth(v18);
    v13 = [v0 view];
    if (v13)
    {
      v14 = v13;
      [v13 safeAreaInsets];
      v16 = v15;

      [v1 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BA407920()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  }

  else
  {
    v4 = sub_1BA407984(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA407984(uint64_t a1)
{
  sub_1BA0C6900(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() buttonWithType_];
  [v6 setMaximumContentSizeCategory_];
  [v6 addTarget:a1 action:sel_onClose forControlEvents:64];
  sub_1BA4A78A8();
  v7 = sub_1BA4A6758();
  v8 = [objc_opt_self() systemImageNamed_];

  sub_1BA4A7958();
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = [v10 colorWithAlphaComponent_];

  sub_1BA4A78E8();
  v12 = [v9 blackColor];
  sub_1BA4A78F8();
  v13 = sub_1BA4A79A8();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  sub_1BA4A79D8();
  return v6;
}

void sub_1BA407B6C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton) = a1;
}

void (*sub_1BA407B80(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA407920();
  return sub_1BA407BC8;
}

void sub_1BA407BC8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton) = v2;
}

void sub_1BA407BE0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetWidth(v13);
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 safeAreaInsets];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA407CE8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for CameraScannerLoadingView()) init];
  v3 = sub_1BA0DA694();
  [v3 startAnimating];

  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = v2;
  v6 = v2;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x128))(v6, 1, 0, 0);
}

void sub_1BA407DDC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction;
    swift_beginAccess();
    if ((*(v0 + v6) & 1) == 0)
    {
      *(v0 + v6) = 1;
      v7 = v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView;
      swift_beginAccess();
      v8 = *v7;
      *v7 = v4;
      *(v7 + 1) = v5;
      v9 = v4;

      v10 = *((*v1 & *v0) + 0x130);
      v11 = v9;
      v10();
    }
  }
}

void sub_1BA407F14(void *a1, char a2, void (*a3)(id), uint64_t a4)
{
  [a1 setAlpha_];
  v9 = [v4 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_1BA407920();
  [v10 insertSubview:a1 belowSubview:v11];

  v12 = [v4 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a1 setFrame_];
  [a1 setAutoresizingMask_];
  if (a2)
  {
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    v33 = sub_1BA4094A4;
    v34 = v23;
    v29 = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1B9F0B040;
    v32 = &block_descriptor_15_0;
    v24 = _Block_copy(&v29);
    v25 = a1;

    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;
    v33 = sub_1BA215C60;
    v34 = v26;
    v29 = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1BA40695C;
    v32 = &block_descriptor_21_3;
    v27 = _Block_copy(&v29);
    sub_1B9F0F1B4(a3, a4);

    [v22 animateWithDuration:v24 animations:v27 completion:0.3];
    _Block_release(v27);
    _Block_release(v24);
  }

  else
  {
    v28 = [a1 setAlpha_];
    if (a3)
    {
      a3(v28);
    }
  }
}

void sub_1BA4081C4(void *a1, char a2, void (*a3)(id), uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [a1 view];
  if (v45)
  {
    [v5 addChildViewController_];
    [v45 setAlpha_];
    v16 = [v5 view];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1BA407920();
      [v17 insertSubview:v45 belowSubview:v18];

      [a1 didMoveToParentViewController_];
      v19 = [v5 view];
      if (v19)
      {
        v20 = v19;
        [v19 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        [v45 setFrame_];
        [v45 setAutoresizingMask_];
        if (a2)
        {
          v29 = objc_opt_self();
          v30 = swift_allocObject();
          *(v30 + 16) = v45;
          v50 = sub_1BA1127FC;
          v51 = v30;
          aBlock = MEMORY[0x1E69E9820];
          v47 = 1107296256;
          v48 = sub_1B9F0B040;
          v49 = &block_descriptor_27_3;
          v31 = _Block_copy(&aBlock);
          v32 = v45;

          v33 = swift_allocObject();
          *(v33 + 16) = a3;
          *(v33 + 24) = a4;
          v50 = sub_1BA0CAC90;
          v51 = v33;
          aBlock = MEMORY[0x1E69E9820];
          v47 = 1107296256;
          v48 = sub_1BA40695C;
          v49 = &block_descriptor_33_3;
          v34 = _Block_copy(&aBlock);
          sub_1B9F0F1B4(a3, a4);

          [v29 animateWithDuration:v31 animations:v34 completion:0.3];

          _Block_release(v34);
          _Block_release(v31);
        }

        else
        {
          v42 = [v45 setAlpha_];
          if (a3)
          {
            a3(v42);
          }

          v43 = v45;
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_1BA4A3DF8();
  v35 = sub_1BA4A3E88();
  v36 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v37 = 136315394;
    v39 = sub_1BA4A85D8();
    v41 = sub_1B9F0B82C(v39, v40, &aBlock);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_1B9F0B82C(0xD00000000000003ALL, 0x80000001BA5073C0, &aBlock);
    _os_log_impl(&dword_1B9F07000, v35, v36, "%s.%s Asked to insert a controller without a view", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v38, -1, -1);
    MEMORY[0x1BFAF43A0](v37, -1, -1);
  }

  (*(v11 + 8))(v15, v10);
}

void sub_1BA4086B8(void *a1, char a2, void (*a3)(id), uint64_t a4)
{
  swift_getObjectType();
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 view];
  if (v14)
  {
    v33 = v14;
    if (a2)
    {
      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = v33;
      v38 = sub_1BA408E48;
      v39 = v16;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = sub_1B9F0B040;
      v37 = &block_descriptor_39_1;
      v17 = _Block_copy(&aBlock);
      v18 = v33;

      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = v18;
      v19[4] = a3;
      v19[5] = a4;
      v38 = sub_1BA408E5C;
      v39 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = sub_1BA40695C;
      v37 = &block_descriptor_45_1;
      v20 = _Block_copy(&aBlock);
      v21 = v18;
      v22 = a1;
      sub_1B9F0F1B4(a3, a4);

      [v15 animateWithDuration:v17 animations:v20 completion:0.3];

      _Block_release(v20);
      _Block_release(v17);
    }

    else
    {
      [a1 willMoveToParentViewController_];
      [v33 removeFromSuperview];
      v30 = [a1 removeFromParentViewController];
      if (a3)
      {
        a3(v30);
      }

      v31 = v33;
    }
  }

  else
  {
    sub_1BA4A3DF8();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315394;
      v27 = sub_1BA4A85D8();
      v29 = sub_1B9F0B82C(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1B9F0B82C(0xD00000000000003ALL, 0x80000001BA507400, &aBlock);
      _os_log_impl(&dword_1B9F07000, v23, v24, "%s.%s Asked to remove a controller without a view", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_1BA408AD8()
{
  if (qword_1EDC648D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TapToRadarVisibilityManager(0);
  __swift_project_value_buffer(v0, qword_1EDC648D8);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_1B9F140B4();
    sub_1BA4A1CA8();
    v1 = v3 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id CameraScannerFlowViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CameraScannerFlowViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerFlowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s18HealthExperienceUI31CameraScannerFlowViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___tapToRadarButton) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA408E5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  [v1 willMoveToParentViewController_];
  [v2 removeFromSuperview];
  result = [v1 removeFromParentViewController];
  if (v3)
  {
    return v3(result);
  }

  return result;
}

unint64_t UITableView.ElementKind.rawValue.getter()
{
  v1 = 0x686E6F6974636573;
  v2 = 0x666E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t DiffableTableViewDataSource.__allocating_init(tableView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  *&v6[qword_1EBBF23F0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  return sub_1BA4A4658();
}

uint64_t sub_1BA40964C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EBBF23F0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA4096B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EBBF23F0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

id sub_1BA409818(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v11 = a1;
  sub_1BA409FE8(a4, a5, a6);
  v13 = v12;

  if (v13)
  {
    v14 = sub_1BA4A6758();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t DiffableTableViewDataSource.init(tableView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1EBBF23F0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  return sub_1BA4A4658();
}

id DiffableTableViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiffableTableViewDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA409A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(type metadata accessor for DiffableTableViewDataSource(0));
  *&v3[qword_1EBBF23F0 + 8] = 0;
  swift_unknownObjectWeakInit();
  return sub_1BA4A4658();
}

void UITableView.ElementKind.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1BA4A8108();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_1BA409ADC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA409BB8(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA409C80(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA409D64(unint64_t *a1@<X8>)
{
  v2 = 0xED00007265646165;
  v3 = 0x686E6F6974636573;
  v4 = 0xED00007265746F6FLL;
  v5 = 0x666E6F6974636573;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001BA4E1560;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001BA4E1530;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t UITableView.TextItem.text.getter()
{
  v1 = *v0;

  return v1;
}

void UITableView.TextItem.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t UITableView.TextItem.init(text:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1BA409EA4(uint64_t a1)
{
  v2 = sub_1BA40A5B4();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA409F38(uint64_t a1)
{
  v2 = sub_1BA40A560();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA409F9C(uint64_t a1)
{
  v2 = sub_1BA40A50C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA409FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAEC380](0, a1, v10);
  v13 = v3 + qword_1EBBF23F0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 8))(v12, v7);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
LABEL_9:
    sub_1BA1EAFD0(&v21);
    return 0;
  }

  v15 = *(v13 + 8);
  v24[0] = Strong;
  v24[1] = v15;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_8;
  }

  if (!*(&v22 + 1))
  {
LABEL_8:
    (*(v8 + 8))(v12, v7);
    goto LABEL_9;
  }

  sub_1B9F25598(&v21, v24);
  v16 = v25;
  v17 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v17 + 8))(&v21, a2, a3, v12, v16, v17);
  (*(v8 + 8))(v12, v7);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  if (swift_dynamicCast())
  {
    v18 = v20[1];
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return 0;
}

uint64_t type metadata accessor for DiffableTableViewDataSource(uint64_t a1)
{
  result = qword_1EBBF2408;
  if (!qword_1EBBF2408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA40A2BC()
{
  result = qword_1EBBF23F8;
  if (!qword_1EBBF23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF23F8);
  }

  return result;
}

unint64_t sub_1BA40A314()
{
  result = qword_1EBBF2400;
  if (!qword_1EBBF2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2400);
  }

  return result;
}

unint64_t sub_1BA40A50C()
{
  result = qword_1EBBF2418;
  if (!qword_1EBBF2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2418);
  }

  return result;
}

unint64_t sub_1BA40A560()
{
  result = qword_1EBBF2420;
  if (!qword_1EBBF2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2420);
  }

  return result;
}

unint64_t sub_1BA40A5B4()
{
  result = qword_1EBBF2428;
  if (!qword_1EBBF2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2428);
  }

  return result;
}

uint64_t SnapshotDataSource<>.withCellRegistration(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CellRegistering(0, a3, a5, a4);
  v9 = swift_allocObject();
  swift_unknownObjectRetain();

  CellRegistering.init<>(_:cellRegistrationBlock:)(v5, a1, a2, a4);
  return v9;
}

uint64_t CellRegistering.__allocating_init<>(_:cellRegistrationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  CellRegistering.init<>(_:cellRegistrationBlock:)(a1, a2, a3, a4);
  return v8;
}

uint64_t CellRegistering.identifier.getter()
{
  v0 = sub_1B9F25DF0();

  return v0;
}

uint64_t CellRegistering.wrappedDataSource.getter()
{
  sub_1B9F264D0();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA40A788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t *CellRegistering.init<>(_:cellRegistrationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v5[4] = a1;
  v11 = *(v10 + 88);
  v12 = *(v11 + 8);
  v13 = *(v10 + 80);
  swift_unknownObjectRetain();
  v5[2] = v12(v13, v11);
  v5[3] = v14;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a4;
  v15[4] = v11;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v5[5] = sub_1BA40AC50;
  v5[6] = v15;
  return v5;
}

void *CellRegistering.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t CellRegistering.__deallocating_deinit()
{
  CellRegistering.deinit();

  return swift_deallocClassInstance();
}

uint64_t CellRegistering<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

uint64_t CellRegistering<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(*v4 + 80);
  swift_unknownObjectRetain();
  v9(a1, a2, a3, v10, a4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA40AC50(uint64_t a1)
{
  v3 = v1[6];
  (*(v1[3] + 8))(a1, v1[2]);
  return v3(a1);
}

uint64_t OrganDonationDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_1BA40AD28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;

  return result;
}

uint64_t sub_1BA40AD88()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

double sub_1BA40ADD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;

  return result;
}

double sub_1BA40AE28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 88) = v3;
  *(v4 + 96) = v2;

  return result;
}

uint64_t sub_1BA40AE88()
{
  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

double sub_1BA40AED4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;

  return result;
}

void sub_1BA40AF28(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(type metadata accessor for OrganDonationStatusViewController()) initWithNibName:0 bundle:0];
    [v3 pushViewController:v4 animated:1];
  }
}

void *OrganDonationDataSourceItem.deinit()
{

  return v0;
}

uint64_t OrganDonationDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA40B0D4()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0xD00000000000001CLL;
  v20 = 0x80000001BA5076B0;
  sub_1BA4A1788();
  sub_1BA40B75C(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  (*(v3 + 8))(v6, v2);
  v8 = v20;
  *(v0 + 16) = v19;
  *(v0 + 24) = v8;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_1BA4A1318();
  *(v0 + 40) = v9;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  v19 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v0 + 72) = sub_1BA4A6808();
  *(v0 + 80) = v10;
  sub_1B9F25350();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5460;
  *(v11 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v11 + 40) = v12;
  *(v11 + 48) = 0xD000000000000011;
  *(v11 + 56) = 0x80000001BA507730;
  v13 = sub_1BA4A6AE8();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (v14)
  {
    v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v1 + 88) = v15;
  *(v1 + 96) = v17;
  return v1;
}

uint64_t sub_1BA40B3A4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);

  return v2;
}

uint64_t sub_1BA40B3F4(uint64_t a1, uint64_t a2)
{
  result = sub_1BA40B75C(&qword_1EBBF2430, a2, type metadata accessor for OrganDonationDataSourceItem, &protocol conformance descriptor for OrganDonationDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA40B4A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA40B75C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1BA40B7AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3 || (ObjectType = swift_getObjectType(), (v5 = swift_conformsToProtocol2()) == 0) || (v6 = *(v5 + 16), v7 = v5, v8 = v3, v9 = v6(ObjectType, v7), v8, (v9 & 1) != 0))
  {
    v10 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
    swift_beginAccess();
    v11 = *&v1[v10];
    if (v11 && (v12 = [v11 objectID]) != 0)
    {
      v13 = v12;
      v14 = [v1 viewController];
      if (v14)
      {
        v15 = v14;
        UIViewController.resolvedHealthExperienceStore.getter(&aBlock);

        __swift_project_boxed_opaque_existential_1(&aBlock, v28);
        v16 = sub_1BA4A1B78();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = v13;
        v17[4] = v1;
        v29 = sub_1BA41479C;
        v30 = v17;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1B9F0B040;
        v28 = &block_descriptor_51_0;
        v18 = _Block_copy(&aBlock);
        v19 = v16;
        v20 = v13;
        v21 = v1;

        [v19 performBlock_];
        _Block_release(v18);

        return;
      }
    }

    else
    {
      sub_1BA4A7DF8();

      aBlock = 0xD00000000000001CLL;
      v26 = 0x80000001BA507850;
      v22 = *&v1[v10];
      sub_1BA413EF4(0, &qword_1EBBF24D0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E6720]);
      v23 = v22;
      v24 = sub_1BA4A6808();
      MEMORY[0x1BFAF1350](v24);
    }

    sub_1BA4A8018();
    __break(1u);
  }
}

uint64_t sub_1BA40BADC()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TileHeaderDetailKind(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v10, &v22);
  if (!v23)
  {
    sub_1B9F6F294(&v22, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v22, v24);
  v11 = v25;
  v12 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v12 + 40))(v11, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = *v9;
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 0;
  }

  sub_1B9F6D6D8(0);
  v15 = *(v9 + *(v14 + 48));
  (*(v2 + 32))(v5, v9, v1);
  v16 = sub_1BA4A16B8();
  if (v15)
  {
    if (qword_1EDC6E3F8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v19 = HKMostRecentSampleEndDateText();

  if (v19)
  {
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v20 = 0;
  }

  (*(v2 + 8))(v5, v1);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v20;
}

void *sub_1BA40BDE8()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 isDismissible];
  result = 0;
  if (v8)
  {
    type metadata accessor for DynamicFontLabel();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v10) + 0x68))(*MEMORY[0x1E69DDDC8]);
    (*((*v11 & *v10) + 0x80))(2);
    v12 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
    swift_beginAccess();
    v13 = *&v1[v12];
    v44 = v10;
    v14 = v10;
    [v14 setTextColor_];
    [v14 setTextAlignment_];
    [v14 setAdjustsFontSizeToFitWidth_];
    LODWORD(v15) = 1148846080;
    [v14 setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [v14 setContentCompressionResistancePriority:1 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [v14 setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [v14 setContentHuggingPriority:1 forAxis:v18];
    v19 = *MEMORY[0x1E69DDDC0];
    v20 = objc_opt_self();
    v21 = [v20 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
    v22 = [v21 fontDescriptorWithSymbolicTraits_];

    if (v22)
    {
      v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v24 = v19;
      v25 = sub_1BA4A3E88();
      v26 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v47 = v42;
        *v27 = 136315906;
        v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v43 = v24;
        v30 = sub_1B9F0B82C(v28, v29, &v47);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        v45 = 0;
        v46 = 1;
        sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v31 = sub_1BA4A6808();
        v33 = sub_1B9F0B82C(v31, v32, &v47);

        *(v27 + 14) = v33;
        *(v27 + 22) = 2080;
        LODWORD(v45) = 2;
        type metadata accessor for SymbolicTraits(0);
        v34 = sub_1BA4A6808();
        v36 = sub_1B9F0B82C(v34, v35, &v47);
        v24 = v43;

        *(v27 + 24) = v36;
        *(v27 + 32) = 2112;
        v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v27 + 34) = v37;
        v38 = v41;
        *v41 = v37;
        _os_log_impl(&dword_1B9F07000, v25, v26, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v27, 0x2Au);
        sub_1B9F6F294(v38, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v38, -1, -1);
        v39 = v42;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v39, -1, -1);
        MEMORY[0x1BFAF43A0](v27, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
      v22 = [v20 preferredFontDescriptorWithTextStyle_];
      v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
    }

    v40 = v23;

    [v14 setFont_];
    return v44;
  }

  return result;
}

void *sub_1BA40C378()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v7, v56);
  v8 = v57;
  if (v57)
  {
    v9 = v58;
    v10 = __swift_project_boxed_opaque_existential_1(v56, v57);
    v11 = *(v8 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10, v10);
    v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    sub_1B9F6F294(v56, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v9) = (*(v9 + 48))(v8, v9);
    (*(v11 + 8))(v14, v8);
    if (v9)
    {
      return 0;
    }
  }

  else
  {
    sub_1B9F6F294(v56, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }

  type metadata accessor for DynamicFontLabel();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x68))(*MEMORY[0x1E69DDDC8]);
  (*((*v16 & *v15) + 0x80))(2);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = v15;
  [v19 setTextColor_];
  [v19 setTextAlignment_];
  [v19 setAdjustsFontSizeToFitWidth_];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v19 setContentHuggingPriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v19 setContentHuggingPriority:1 forAxis:v23];
  v24 = *MEMORY[0x1E69DDDC0];
  v25 = objc_opt_self();
  v26 = [v25 preferredFontDescriptorWithTextStyle:v24 compatibleWithTraitCollection:0];
  v27 = [v26 fontDescriptorWithSymbolicTraits_];

  if (v27)
  {
    v28 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v29 = v24;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v32 = 136315906;
      v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v51 = v3;
      v35 = sub_1B9F0B82C(v33, v34, &v55);
      v52 = v29;
      v36 = v35;

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v53 = 0;
      v54 = 1;
      sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v55);

      *(v32 + 14) = v39;
      *(v32 + 22) = 2080;
      LODWORD(v53) = 2;
      type metadata accessor for SymbolicTraits(0);
      v40 = sub_1BA4A6808();
      v42 = sub_1B9F0B82C(v40, v41, &v55);
      v29 = v52;

      *(v32 + 24) = v42;
      *(v32 + 32) = 2112;
      v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v32 + 34) = v43;
      v44 = v49;
      *v49 = v43;
      _os_log_impl(&dword_1B9F07000, v30, v31, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v32, 0x2Au);
      sub_1B9F6F294(v44, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      v45 = v50;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);

      (*(v51 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v27 = [v25 preferredFontDescriptorWithTextStyle_];
    v28 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
  }

  v46 = v28;

  [v19 setFont_];
  return v15;
}

void *DismissibleTile.makeAccessoryLabel()(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 72))())
  {
    return 0;
  }

  type metadata accessor for DynamicFontLabel();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x68))(*MEMORY[0x1E69DDDC8]);
  (*((*v6 & *v5) + 0x80))(2);
  v7 = *(a2 + 8);
  v8 = v5;
  v9 = v7(a1, a2);
  [v8 setTextColor_];

  [v8 setTextAlignment_];
  [v8 setAdjustsFontSizeToFitWidth_];
  LODWORD(v10) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v8 setContentHuggingPriority:1 forAxis:v13];
  v14 = (*(a2 + 64))(a1, a2);
  [v8 setFont_];

  return v5;
}

void sub_1BA40CCC4(uint64_t *a1, void *a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (!v11 || (v12 = [v11 font]) == 0)
  {
    v13 = *MEMORY[0x1E69DDDC0];
    v14 = objc_opt_self();
    v15 = [v14 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
    v16 = [v15 fontDescriptorWithSymbolicTraits_];

    if (v16)
    {
      v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
    }

    else
    {
      v52 = v2;
      sub_1BA4A3DD8();
      v18 = v13;
      v19 = sub_1BA4A3E88();
      v20 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v53 = v49;
        *v21 = 136315906;
        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v50 = v18;
        v24 = sub_1B9F0B82C(v22, v23, &v53);
        v51 = a2;
        v25 = v24;

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        v54 = 0;
        v55 = 1;
        sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v53);

        *(v21 + 14) = v28;
        *(v21 + 22) = 2080;
        LODWORD(v54) = 2;
        type metadata accessor for SymbolicTraits(0);
        v29 = sub_1BA4A6808();
        v31 = sub_1B9F0B82C(v29, v30, &v53);
        v18 = v50;

        *(v21 + 24) = v31;
        a2 = v51;
        *(v21 + 32) = 2112;
        v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v21 + 34) = v32;
        v33 = v20;
        v34 = v48;
        *v48 = v32;
        _os_log_impl(&dword_1B9F07000, v19, v33, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v21, 0x2Au);
        sub_1B9F6F294(v34, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v34, -1, -1);
        v35 = v49;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v35, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      v16 = [v14 preferredFontDescriptorWithTextStyle_];
      v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
      v2 = v52;
    }

    v12 = v17;
  }

  v36 = *a2;
  swift_beginAccess();
  v37 = *(v2 + v36);
  v38 = sub_1BA014D88(v12, v37);

  if (v38)
  {
    v39 = *(v2 + v10);
    if (v39)
    {
      v40 = v39;
      v41 = [v38 imageWithRenderingMode_];
      v42 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      if (![v38 isSymbolImage])
      {
        [v42 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
      }

      [v42 setImage_];
      sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
      v43 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

      [v40 setAttributedText_];
      v44 = *(v2 + v10);
      if (v44)
      {
        v45 = *(v2 + v36);
        v46 = v44;
        v47 = v45;
        [v46 setTextColor_];
      }
    }
  }
}

Swift::Void __swiftcall DismissibleTile.updateAccessoryLabelImage()()
{
  v2 = v1;
  v3 = v0;
  v9 = (*(v1 + 56))();
  if (v9)
  {
    v4 = (*(v2 + 32))(v3, v2);
    if (v4)
    {
      v5 = v4;
      v6 = [v9 imageWithRenderingMode_];
      v7 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      if (([v9 isSymbolImage] & 1) == 0)
      {
        [v7 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
      }

      [v7 setImage_];
      sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
      v8 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

      [v5 setAttributedText_];
    }

    DismissibleTile.updateAccessoryLabelColor()();
  }
}

id DismissibleTile.accessoryImage.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  if (!v4 || (v5 = v4, v6 = [v4 font], v5, !v6))
  {
    v6 = (*(a2 + 64))(a1, a2);
  }

  v7 = (*(a2 + 8))(a1, a2);
  v8 = sub_1BA014D88(v6, v7);

  return v8;
}

BOOL DismissibleTile.isAccessoryTouch(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BA15930C(a1);
  result = 0;
  if (v5)
  {
    v6 = v5;
    v7 = (*(a3 + 32))(a2, a3);
    v8 = sub_1BA2EC9D4(v6, v7, 36.0, 36.0);

    if (v8)
    {
      return 1;
    }
  }

  return result;
}

Swift::Void __swiftcall DismissibleTile.updateColorForStartTouch()()
{
  v3 = v1;
  v4 = v0;
  v5 = [v2 viewController];
  if (v5)
  {
    v6 = v5;
    UIViewController.resolvedPresentation.getter(&v22);

    v7 = v22;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(v3 + 32))(v4, v3);
  if (v8)
  {
    v9 = v8;
    if ((v7 - 6) < 2)
    {
      v16 = objc_opt_self();
      v17 = [v16 systemGray5Color];
      v18 = [v16 tertiarySystemGroupedBackgroundColor];
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = v18;
      v19[4] = 0;
      v19[5] = v17;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v26 = sub_1B9FD7F54;
      v27 = v19;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v15 = &block_descriptor_114;
    }

    else
    {
      if (v7 != 4 && v7 != 12)
      {
        v21 = [objc_opt_self() systemGray5Color];
        goto LABEL_11;
      }

      v10 = objc_opt_self();
      v11 = [v10 systemGray5Color];
      v12 = [v10 systemGray4Color];
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = v12;
      v13[4] = 0;
      v13[5] = v11;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v26 = sub_1B9FE1088;
      v27 = v13;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v15 = &block_descriptor_7_2;
    }

    v24 = sub_1B9F7EBBC;
    v25 = v15;
    v20 = _Block_copy(&v22);
    v21 = [v14 initWithDynamicProvider_];
    _Block_release(v20);

LABEL_11:
    [v9 setTextColor_];
  }
}

Swift::Void __swiftcall DismissibleTile.updateColorForEndTouch()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 32))();
  if (v4)
  {
    v5 = v4;
    v6 = (*(v2 + 8))(v3, v2);
    [v5 setTextColor_];
  }
}

double DismissibleTileHeaderDataSource.headerType.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1BA4C92B0;
  return result;
}

Swift::Void __swiftcall DismissibleTile.updateAccessoryLabelColor()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 32))();
  if (v4)
  {
    v5 = *(v2 + 8);
    v6 = v4;
    v7 = v5(v3, v2);
    [v6 setTextColor_];
  }
}

void sub_1BA40DA28(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA40DA84(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA40DB1C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F6DEE0(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA40DB80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v1 + v3, a1);
}

uint64_t sub_1BA40DBD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA40DC98(uint64_t a1, __n128 a2)
{
  v3 = v2;
  sub_1BA413EF4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16[-v7];
  sub_1B9F6DEE0(a1, v17);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v17, v3 + v9);
  swift_endAccess();
  sub_1BA40ECE8(a1);
  sub_1B9F6DEE0(a1, v17);
  v10 = v18;
  if (v18)
  {
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v11 + 40))(v10, v11);
    v12 = type metadata accessor for TileHeaderDetailKind(0);
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1B9F6F294(v17, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v14 = type metadata accessor for TileHeaderDetailKind(0);
    v13.n128_f64[0] = (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1BA40DEA8(v8, v13);
  return sub_1BA413F58(v8);
}

void sub_1BA40DEA8(uint64_t a1, __n128 a2)
{
  sub_1BA413EF4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  v10 = *MEMORY[0x1E69DDB88];
  [v9 removeObserver:v2 name:*MEMORY[0x1E69DDB88] object:0];

  sub_1B9F73D48(a1, v7);
  v11 = type metadata accessor for TileHeaderDetailKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1BA413F58(v7);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1BA4A1728();
    (*(*(v12 - 8) + 8))(v7, v12);
    v13 = [v8 defaultCenter];
    [v13 addObserver:v2 selector:sel_didReceiveSignificantTimeChangeNotification_ name:v10 object:0];
  }

  else
  {
    sub_1BA414740(v7);
  }
}

uint64_t sub_1BA40E098()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v11 = sub_1BA4A7308();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1BA414738;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_45_2;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1BA413EF4(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_1BA40E350(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = v3;
    sub_1BA40BADC();
    if (v5)
    {
      v6 = sub_1BA4A6758();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText_];
  }
}

double sub_1BA40E4D0(uint64_t a1)
{
  sub_1BA40E5B8();
  sub_1BA40DC98(a1, v2);
  sub_1B9F6DEE0(a1, v8);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 16))(v3, v4);
    v3 = v6;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1B9F6F294(v8, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v5 = 0;
  }

  sub_1BA2D0378(v5, v3);

  return result;
}

id sub_1BA40E5B8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessorySeparator;
  v19 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessorySeparator);
  v9 = v2;
  v10 = v4;
  v11 = v6;
  v12 = v8;
  [v9 removeFromSuperview];
  [v10 removeFromSuperview];
  [v11 removeFromSuperview];
  [v12 removeFromSuperview];
  [v19 removeFromSuperview];
  sub_1B9F6DFCC(0, &unk_1EDC5E200, &qword_1EDC6B4A0, 0x1E69DD250, sub_1B9F0ADF8);
  swift_arrayDestroy();
  v13 = *(v0 + v21);
  *(v0 + v21) = 0;

  v14 = *(v0 + v3);
  *(v0 + v3) = 0;

  v15 = *(v0 + v5);
  *(v0 + v5) = 0;

  v16 = *(v0 + v7);
  *(v0 + v7) = 0;

  v17 = *(v0 + v20);
  *(v0 + v20) = 0;

  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint);
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

void sub_1BA40E7B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA40E818()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA40E86C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA40E924()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA40E970(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA40EA28()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA40EA74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA40EB2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA40EBE4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA40EC30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA40ECE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6DEE0(a1, v103);
  if (v104)
  {
    sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
    sub_1B9F0D950(0, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource);
    if (swift_dynamicCast())
    {
      if (*(&v106 + 1))
      {
        sub_1B9F1134C(&v105, v108);
        [v2 setUserInteractionEnabled_];
        v10 = v109;
        v9 = v110;
        __swift_project_boxed_opaque_existential_1(v108, v109);
        v11 = (*(*(v9 + 8) + 32))(v10);
        v14 = &selRef_didTapSave_;
        v15 = 0x1FAFC6000;
        v16 = 0x1FAECA000;
        v17 = MEMORY[0x1E69DDD28];
        if (v12)
        {
          v18 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title);
          *v18 = v11;
          v18[1] = v12;

          type metadata accessor for DynamicFontLabel();
          v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          [v19 setNumberOfLines_];
          [v19 setLineBreakMode_];
          [v19 setTranslatesAutoresizingMaskIntoConstraints_];
          LODWORD(v20) = 1148846080;
          [v19 setContentCompressionResistancePriority:1 forAxis:v20];
          LODWORD(v21) = 1148846080;
          [v19 setContentHuggingPriority:1 forAxis:v21];
          v22 = [objc_opt_self() secondaryLabelColor];
          [v19 setTextColor_];

          v23 = sub_1B9F6B774(*v17, *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
          [v19 setFont_];

          [v2 addSubview_];
          v24 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
          swift_beginAccess();
          v25 = *(v2 + v24);
          *(v2 + v24) = v19;
          v14 = 0x1FB2FA000;

          v16 = 0x1FAECA000uLL;
          v15 = 0x1FAFC6000uLL;
        }

        v26 = v15;
        v27 = v16;
        LODWORD(v13) = 1148846080;
        [v2 setContentHuggingPriority:1 forAxis:v13];
        sub_1BA40BADC();
        if (v28)
        {
          type metadata accessor for DynamicFontLabel();
          v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) v14 + 2936];
          [v29 (v26 + 2168)];
          [v29 (v27 + 1466)];
          [v29 setAdjustsFontSizeToFitWidth_];
          v30 = sub_1BA4A6758();

          [v29 setText_];

          v31 = [objc_opt_self() secondaryLabelColor];
          [v29 setTextColor_];

          LODWORD(v32) = 1148846080;
          [v29 setContentHuggingPriority:0 forAxis:v32];
          LODWORD(v33) = 1148846080;
          [v29 setContentCompressionResistancePriority:0 forAxis:v33];
          LODWORD(v34) = 1148846080;
          [v29 setContentCompressionResistancePriority:1 forAxis:v34];
          v35 = sub_1B9F6B774(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DB970], 0, 0, 0, 0, 1);
          [v29 setFont_];

          v36 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
          swift_beginAccess();
          v37 = *(v2 + v36);
          *(v2 + v36) = v29;
        }

        v38 = sub_1BA40C378();
        v39 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
        swift_beginAccess();
        v40 = *(v2 + v39);
        *(v2 + v39) = v38;

        sub_1BA411CB0();
        sub_1B9F6DEE0(a1, &v105);
        v41 = *(&v106 + 1);
        if (*(&v106 + 1))
        {
          v42 = v107;
          __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
          v43 = (*(v42 + 16))(v41, v42);
          v41 = v44;
          __swift_destroy_boxed_opaque_existential_1(&v105);
        }

        else
        {
          sub_1B9F6F294(&v105, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
          v43 = 0;
        }

        sub_1BA2D0378(v43, v41);

        sub_1BA411804();
        v49 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
        swift_beginAccess();
        v50 = *(v2 + v49);
        if (v50)
        {
          v51 = v50;
          sub_1BA40BADC();
          if (v52)
          {
            v53 = sub_1BA4A6758();
          }

          else
          {
            v53 = 0;
          }

          [v51 setText_];
        }

        sub_1BA40CCC4(&OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel, &OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor);
        v102 = MEMORY[0x1E69E7CC0];
        v54 = sub_1BA40FD6C();
        if (v54)
        {
          sub_1B9F73B50(v54);
        }

        v55 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
        swift_beginAccess();
        v56 = *(v2 + v55);
        if (v56)
        {
          v57 = v56;
          v58 = [v57 topAnchor];
          v59 = [v2 safeAreaLayoutGuide];
          v60 = [v59 topAnchor];

          v61 = [v58 constraintEqualToAnchor:v60 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v62 = [v57 leadingAnchor];
          v63 = [v2 safeAreaLayoutGuide];
          v64 = [v63 leadingAnchor];

          v65 = [v62 constraintEqualToAnchor:v64 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v66 = [v2 traitCollection];
          v67 = [v66 preferredContentSizeCategory];

          LOBYTE(v66) = sub_1BA4A74F8();
          if ((v66 & 1) == 0 || !*(v2 + v49))
          {
            v68 = [v57 bottomAnchor];
            v69 = [v2 safeAreaLayoutGuide];
            v70 = [v69 bottomAnchor];

            v71 = [v68 constraintEqualToAnchor:v70 constant:-14.0];
            MEMORY[0x1BFAF1510]();
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          v72 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
          swift_beginAccess();
          if (*(v2 + v72))
          {
          }

          else
          {
            v73 = [v57 trailingAnchor];

            v74 = [v2 safeAreaLayoutGuide];
            v75 = [v74 trailingAnchor];

            v76 = [v73 constraintEqualToAnchor:v75 constant:-16.0];
            MEMORY[0x1BFAF1510]();
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v77 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
        swift_beginAccess();
        v78 = *(v2 + v77);
        if (v78)
        {
          v79 = *(v2 + v55);
          if (v79)
          {
            v80 = v78;
            v81 = v79;
            v82 = [v81 trailingAnchor];
            v83 = [v80 leadingAnchor];
            v84 = [v82 constraintEqualToAnchor:v83 constant:-8.0];

            MEMORY[0x1BFAF1510]();
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          else
          {
            v85 = [v78 bottomAnchor];
            v86 = [v2 safeAreaLayoutGuide];
            v87 = [v86 bottomAnchor];

            v88 = [v85 constraintEqualToAnchor:v87 constant:-14.0];
            MEMORY[0x1BFAF1510]();
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v89 = &selRef_constraintGreaterThanOrEqualToConstant_;
        if (!*(v2 + v55) && !*(v2 + v77))
        {
          v89 = &selRef_constraintEqualToConstant_;
        }

        v90 = [v2 heightAnchor];
        v91 = [v90 *v89];

        v92 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint);
        *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint) = v91;
        v93 = v91;

        MEMORY[0x1BFAF1510]();
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        v94 = sub_1BA4A6BB8();
        (*((*MEMORY[0x1E69E7D40] & *v2) + 0x258))(v94);
        v96 = v109;
        v95 = v110;
        __swift_project_boxed_opaque_existential_1(v108, v109);
        (*(*(v95 + 8) + 32))(v96);
        if (v97)
        {
        }

        else
        {
          v98 = [objc_opt_self() clearColor];
          [v2 setBackgroundColor_];
        }

        sub_1BA411DE0();
        v99 = objc_opt_self();
        sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
        v100 = sub_1BA4A6AE8();

        [v99 activateConstraints_];

        return __swift_destroy_boxed_opaque_existential_1(v108);
      }
    }

    else
    {
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
    }
  }

  else
  {
    sub_1B9F6F294(v103, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v105 = 0u;
    v106 = 0u;
    v107 = 0;
  }

  sub_1B9F6F294(&v105, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
  sub_1BA4A3DD8();
  v45 = sub_1BA4A3E88();
  v46 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1B9F07000, v45, v46, "Incorrect configuration: expecting a DismissibleTileHeaderDataSource", v47, 2u);
    MEMORY[0x1BFAF43A0](v47, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA40FBB4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v12);
  v2 = v13;
  if (v13)
  {
    v3 = v14;
    v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4, v4);
    v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v5 + 16))(v8, v6);
    sub_1B9F6F294(v12, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v9 = (*(v3 + 48))(v2, v3);
    (*(v5 + 8))(v8, v2);
  }

  else
  {
    sub_1B9F6F294(v12, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BA40FD6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v39 = MEMORY[0x1E69E7CC0];
  v4 = v3;
  v5 = sub_1BA4102BC();
  if (v5)
  {
    sub_1B9F73B50(v5);
  }

  v6 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v6], v36);
  v7 = v37;
  if (v37)
  {
    v8 = v38;
    v9 = __swift_project_boxed_opaque_existential_1(v36, v37);
    v10 = *(v7 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9, v9);
    v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v10 + 16))(v13, v11);
    sub_1B9F6F294(v36, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v8) = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v13, v7);
    if ((v8 & 1) == 0)
    {
      v14 = sub_1BA4109E0();
      if (v14)
      {
        sub_1B9F73B50(v14);
      }
    }
  }

  else
  {
    sub_1B9F6F294(v36, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }

  v16 = [v4 topAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v20 = [v4 trailingAnchor];
  v21 = [v1 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v24 = [v4 widthAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor:v25 multiplier:0.37];

  MEMORY[0x1BFAF1510]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v15 = v39;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v28 = *&v1[v27];
  if ((v28 || (v29 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel, swift_beginAccess(), (v28 = *&v1[v29]) != 0)) && (v30 = [v28 heightAnchor]) != 0)
  {
    v31 = v30;
    v32 = [v4 heightAnchor];
    v33 = [v32 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    return v39;
  }

  else
  {
  }

  return v15;
}

uint64_t sub_1BA4102BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    return 0;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v4 = v3;
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1BA4A74F8();
  if (v5)
  {
    v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
    swift_beginAccess();
    v8 = *&v1[v7];
    if (v8)
    {
      v9 = v4;
      v10 = v8;
      [v1 addSubview_];
      v11 = [v9 leadingAnchor];
      v12 = [v1 safeAreaLayoutGuide];
      v13 = [v12 leadingAnchor];

      v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
      MEMORY[0x1BFAF1510]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v15 = [v10 bottomAnchor];
      v16 = [v9 topAnchor];

      v17 = [v15 constraintEqualToAnchor:v16 constant:-8.0];
      MEMORY[0x1BFAF1510]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v18 = [v9 bottomAnchor];

      v19 = [v1 safeAreaLayoutGuide];
      v20 = [v19 bottomAnchor];

      v21 = [v18 constraintEqualToAnchor:v20 constant:-14.0];
      goto LABEL_22;
    }
  }

  v22 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v23 = *&v1[v22];
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v9 = v4;
  v10 = v23;
  [v10 addSubview_];
  v24 = [v9 leadingAnchor];
  v25 = [v10 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v27 = v48;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29)
  {
    v30 = v29;
    v31 = [v9 firstBaselineAnchor];

    v32 = [v30 firstBaselineAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v27 = v48;
  }

  else
  {
  }

  v35 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v35], v45);
  v36 = v46;
  if (!v46)
  {

    sub_1B9F6F294(v45, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    return v27;
  }

  v37 = v47;
  v38 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v39 = *(v36 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38, v38);
  v42 = v45 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  (*(v39 + 16))(v42, v40);
  sub_1B9F6F294(v45, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  LOBYTE(v37) = (*(v37 + 48))(v36, v37);
  (*(v39 + 8))(v42, v36);
  if ((v37 & 1) == 0)
  {

    return v27;
  }

  v18 = [v9 trailingAnchor];

  v20 = [v10 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor_];
LABEL_22:
  v43 = v21;

  MEMORY[0x1BFAF1510]();
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v48;
}

uint64_t sub_1BA4109E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    return 0;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v6 = v3;
  v7 = v5;
  [v7 addSubview_];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (!v9)
  {

    v10 = v6;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = sub_1BA4A74F8();
  if (v11)
  {
LABEL_12:

    v21 = [v6 leadingAnchor];
    v22 = [v7 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v24 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
    swift_beginAccess();
    v25 = *&v1[v24];
    if (v25)
    {
      v26 = v25;

      v27 = [v6 centerYAnchor];
      v28 = [v26 centerYAnchor];
      v29 = [v27 constraintEqualToAnchor_];

      LODWORD(v30) = 1144750080;
      [v29 setPriority_];
      v31 = v29;
      MEMORY[0x1BFAF1510]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v32 = [v6 topAnchor];

      v33 = [v1 layoutMarginsGuide];
      v34 = [v33 topAnchor];

      v35 = [v32 constraintGreaterThanOrEqualToAnchor_];
      MEMORY[0x1BFAF1510]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }

    else
    {

      v36 = [v6 centerYAnchor];
      v37 = [v7 centerYAnchor];
      v38 = [v36 constraintEqualToAnchor_];

      MEMORY[0x1BFAF1510]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }

    goto LABEL_23;
  }

  v13 = [v6 centerYAnchor];
  v14 = v10;
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v17 = [v6 leadingAnchor];

  v18 = [v14 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:13.0];

  MEMORY[0x1BFAF1510]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

LABEL_23:
  v39 = [v6 trailingAnchor];

  v40 = [v7 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:3.0];

  MEMORY[0x1BFAF1510]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v42;
}

void sub_1BA4110C0(void *a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DismissibleTileHeaderView();
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    sub_1BA411274();
    sub_1BA411804();
    v12 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
    swift_beginAccess();
    v13 = *&v1[v12];
    if (v13)
    {
      v14 = v13;
      sub_1BA40BADC();
      if (v15)
      {
        v16 = sub_1BA4A6758();
      }

      else
      {
        v16 = 0;
      }

      [v14 setText_];
    }

    sub_1BA40CCC4(&OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel, &OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor);
    return;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v8 == v9)
  {

    return;
  }

  v11 = sub_1BA4A8338();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_1BA411274()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = MEMORY[0x1E69DDD28];
  if (v7)
  {
    v9 = *MEMORY[0x1E69DDD28];
    v10 = *MEMORY[0x1E69DB980];
    v11 = v7;
    v12 = sub_1B9F6B774(v9, v10, 0, 0, 0, 0, 1);
    [v11 setFont_];
  }

  v13 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14)
  {
    v15 = *v8;
    v16 = *MEMORY[0x1E69DB970];
    v17 = v14;
    v18 = sub_1B9F6B774(v15, v16, 0, 0, 0, 0, 1);
    [v17 setFont_];
  }

  v19 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v20 = *(v0 + v19);
  if (v20)
  {
    v21 = *MEMORY[0x1E69DDDC0];
    v22 = objc_opt_self();
    v23 = v20;
    v24 = [v22 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
    v25 = [v24 fontDescriptorWithSymbolicTraits_];

    if (v25)
    {
      v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v27 = v21;
      v28 = sub_1BA4A3E88();
      v29 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51 = v47;
        *v30 = 136315906;
        v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v33 = sub_1B9F0B82C(v31, v32, &v51);
        v48 = v27;
        v34 = v33;

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        v49 = 0;
        v50 = 1;
        sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v35 = sub_1BA4A6808();
        v37 = sub_1B9F0B82C(v35, v36, &v51);

        *(v30 + 14) = v37;
        *(v30 + 22) = 2080;
        LODWORD(v49) = 2;
        type metadata accessor for SymbolicTraits(0);
        v38 = sub_1BA4A6808();
        v40 = sub_1B9F0B82C(v38, v39, &v51);

        *(v30 + 24) = v40;
        v27 = v48;
        *(v30 + 32) = 2112;
        v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v30 + 34) = v41;
        v42 = v46;
        *v46 = v41;
        _os_log_impl(&dword_1B9F07000, v28, v29, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v30, 0x2Au);
        sub_1B9F6F294(v42, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v42, -1, -1);
        v43 = v47;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v43, -1, -1);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      v25 = [v22 preferredFontDescriptorWithTextStyle_];
      v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
    }

    v44 = v26;

    [v23 setFont_];
  }
}

void sub_1BA411804()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title + 8);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title);
      v5 = v2;

      v6 = sub_1BA4A6758();
      [v5 setAccessibilityLabel_];

      v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
      swift_beginAccess();
      sub_1B9F6DEE0(v0 + v7, &v33);
      v8 = v35;
      if (v35)
      {
        v9 = v36;
        v10 = __swift_project_boxed_opaque_existential_1(&v33, v35);
        v11 = *(v8 - 8);
        v12 = MEMORY[0x1EEE9AC00](v10, v10);
        v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v11 + 16))(v14, v12);
        sub_1B9F6F294(&v33, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
        v15 = (*(v9 + 24))(v8, v9);
        (*(v11 + 8))(v14, v8);
        if (v15)
        {
          v16 = v5;
          v17 = [v16 font];
          if (!v17)
          {
            __break(1u);
            return;
          }

          v18 = v17;
          v19 = [objc_opt_self() configurationWithFont:v17 scale:-1];

          v20 = [v15 imageWithConfiguration_];
          v21 = [v20 imageWithRenderingMode_];
          v22 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
          if (([v20 isSymbolImage] & 1) == 0)
          {
            [v22 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
          }

          [v22 setImage_];
          sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
          v23 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

          v33 = 9011426;
          v34 = 0xA300000000000000;
          v32[1] = v4;
          v32[2] = v3;
          sub_1B9F252FC();
          v24 = sub_1BA4A7B38();
          v26 = v25;

          MEMORY[0x1BFAF1350](v24, v26);

          v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v28 = sub_1BA4A6758();

          v29 = [v27 initWithString_];

          [v23 appendAttributedString_];
          v30 = v23;
          [v16 setAttributedText_];

          goto LABEL_11;
        }
      }

      else
      {
        sub_1B9F6F294(&v33, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      }

      v33 = v4;
      v34 = v3;
      sub_1B9F252FC();
      v31 = v5;
      sub_1BA4A7B38();
      v30 = sub_1BA4A6758();

      [v31 setText_];
LABEL_11:
    }
  }
}

void sub_1BA411CB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  if (*&v0[v1] || (v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel, swift_beginAccess(), *&v0[v2]))
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    LODWORD(v4) = 1148846080;
    [v3 setContentHuggingPriority:1 forAxis:v4];
    LODWORD(v5) = 1148846080;
    [v3 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v3 setContentCompressionResistancePriority:1 forAxis:v6];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    v7 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView;
    swift_beginAccess();
    v8 = *&v0[v7];
    *&v0[v7] = v3;
  }
}

uint64_t sub_1BA411DE0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v25);
  if (!v26)
  {
    sub_1B9F6F294(v25, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    return sub_1B9F6F294(&v22, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
  }

  sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  sub_1B9F0D950(0, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    return sub_1B9F6F294(&v22, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
  }

  if (!*(&v23 + 1))
  {
    return sub_1B9F6F294(&v22, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
  }

  v2 = v0;
  sub_1B9F1134C(&v22, v25);
  v3 = v26;
  v4 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  if ((*(v4 + 32))(v3, v4))
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v6 = [objc_opt_self() opaqueSeparatorColor];
    [v5 setBackgroundColor_];

    [v2 addSubview_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = objc_opt_self();
    sub_1B9F109F8();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5890;
    v9 = [v5 leadingAnchor];
    v10 = [v2 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v11;
    v12 = [v5 trailingAnchor];
    v13 = [v2 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v8 + 40) = v14;
    v15 = [v5 bottomAnchor];
    v16 = [v2 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v8 + 48) = v17;
    v18 = [v5 heightAnchor];
    v19 = [v18 constraintEqualToConstant_];

    *(v8 + 56) = v19;
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v20 = sub_1BA4A6AE8();

    [v7 activateConstraints_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

id sub_1BA4121D8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v2], v38);
  if (!v39)
  {
    sub_1B9F6F294(v38, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    goto LABEL_16;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  sub_1B9F0D950(0, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_16;
  }

  if (!*(&v41 + 1))
  {
LABEL_16:
    sub_1B9F6F294(&v40, &qword_1EBBF2470, &qword_1EDC6BE28, &protocol descriptor for DismissibleTileHeaderDataSource, sub_1B9F0D950);
    goto LABEL_17;
  }

  sub_1B9F1134C(&v40, v43);
  v3 = v44;
  v4 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v5 = (*(v4 + 16))(v3, v4);
  if (v5)
  {
    v6 = v5;
    [v1 setBackgroundColor_];
    v7 = v44;
    v8 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v9 = (*(v8 + 24))(v7, v8);
    if (!v9)
    {
      v9 = [objc_opt_self() secondaryLabelColor];
    }

    v10 = v9;
    v11 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
    swift_beginAccess();
    v12 = *&v1[v11];
    *&v1[v11] = v10;
    v13 = v10;

    v14 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
    swift_beginAccess();
    v15 = *&v1[v14];
    if (v15)
    {
      [v15 setTextColor_];
    }

    v16 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
    swift_beginAccess();
    v17 = *&v1[v16];
    if (v17)
    {
      [v17 setTextColor_];
    }

    v18 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
    swift_beginAccess();
    v19 = *&v1[v18];
    if (v19)
    {
      v20 = *&v1[v11];
      v21 = v19;
      v22 = v20;
      [v21 setTextColor_];
    }

    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_17:
  v24 = objc_opt_self();
  v25 = [v24 clearColor];
  [v1 setBackgroundColor_];

  v26 = [v24 tertiaryLabelColor];
  v27 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  swift_beginAccess();
  v28 = *&v1[v27];
  *&v1[v27] = v26;

  v29 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel;
  swift_beginAccess();
  v30 = *&v1[v29];
  if (v30)
  {
    v31 = v30;
    v32 = [v24 secondaryLabelColor];
    [v31 setTextColor_];
  }

  v33 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel;
  swift_beginAccess();
  v34 = *&v1[v33];
  if (v34)
  {
    v35 = v34;
    v36 = [v24 secondaryLabelColor];
    [v35 setTextColor_];
  }

  v37 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  result = *&v1[v37];
  if (result)
  {
    return [result setTextColor_];
  }

  return result;
}

void sub_1BA412670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA15930C(a1);
  if (v4 && (v5 = v4, v6 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel, swift_beginAccess(), v7 = *&v2[v6], v8 = v7, LOBYTE(v7) = sub_1BA2EC9D4(v5, v7, 36.0, 36.0), v8, v5, (v7 & 1) != 0))
  {
    sub_1BA3E2640();
  }

  else
  {
    sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
    sub_1BA3955EC();
    v9 = sub_1BA4A6D68();
    v10.receiver = v2;
    v10.super_class = type metadata accessor for DismissibleTileHeaderView();
    objc_msgSendSuper2(&v10, sel_touchesBegan_withEvent_, v9, a2);
  }
}

void sub_1BA412780(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  v5 = sub_1BA4A6D68();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DismissibleTileHeaderView();
  objc_msgSendSuper2(&v15, sel_touchesEnded_withEvent_, v5, a2);

  v6 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
    swift_beginAccess();
    [v7 setTextColor_];
  }

  v9 = sub_1BA15930C(a1);
  if (v9)
  {
    v10 = v9;
    v11 = *&v2[v6];
    v12 = v11;
    LOBYTE(v11) = sub_1BA2EC9D4(v10, v11, 36.0, 36.0);

    if (v11)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_1BA40B7AC();
      }
    }
  }
}

double sub_1BA4128F8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  v8 = sub_1BA4A6D78();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

id DismissibleTileHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DismissibleTileHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  *&v4[v10] = [objc_opt_self() tertiaryLabelColor];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessorySeparator] = 0;
  v11 = &v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_minimumViewHeight] = 0x4040800000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToTop] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToBottom] = 0x402C000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToDismiss] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailToTitle] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dismissToTop] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailToDismiss] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dismissToTrailing] = 0x4008000000000000;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for DismissibleTileHeaderView();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id DismissibleTileHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DismissibleTileHeaderView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_heightConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dataSource];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
  *&v1[v4] = [objc_opt_self() tertiaryLabelColor];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailContainerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessorySeparator] = 0;
  v5 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_title];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_minimumViewHeight] = 0x4040800000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToTop] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToBottom] = 0x402C000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_titleToDismiss] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailToTitle] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dismissToTop] = 0x402A000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_detailToDismiss] = 0x402A000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_dismissToTrailing] = 0x4008000000000000;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DismissibleTileHeaderView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id DismissibleTileHeaderView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DismissibleTileHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_1BA413068(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA413158(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA4131B8(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_chromeHostView;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA413254(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v4, v6).n128_u64[0];
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 objectWithID_];
  sub_1BA4A27B8();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    [v11 setHideInDiscover_];
    v24 = 0;
    if ([a1 save_])
    {
      v12 = v24;
      sub_1BA413598();
    }

    else
    {
      v19 = v24;
      v20 = sub_1BA4A1488();

      swift_willThrow();
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v24 = 0xD000000000000023;
      v25 = 0x80000001BA4E6390;
      v23[1] = v20;
      v21 = v20;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v22 = sub_1BA4A6828();
      MEMORY[0x1BFAF1350](v22);

      sub_1BA4A8018();
      __break(1u);
    }
  }

  else
  {

    sub_1BA4A3DD8();
    v13 = a2;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1B9F07000, v14, v15, "Background context could not find object with id: '%@'", v16, 0xCu);
      sub_1B9F6F294(v17, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_1BA413598()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A6478();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33[1] = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v3;
    v20 = v19;
    v39 = v19;
    aBlock[0] = ObjectType;
    *v18 = 136446210;
    swift_getMetatypeMetadata();
    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v39);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1B9F07000, v15, v16, "[%{public}s]: Dismiss occurred; updating Summary feed", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v24 = v20;
    v3 = v34;
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_1B9F0ADF8(0, &qword_1EDC6B5F0, 0x1E696ADC8);
  v25 = sub_1BA4A7198();
  v26 = objc_allocWithZone(sub_1BA4A3518());
  v27 = sub_1BA4A3508();
  [v25 addOperation_];

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v28 = sub_1BA4A7308();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BA4147A8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_57;
  v30 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1BA413EF4(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v31 = v37;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v9, v31, v30);
  _Block_release(v30);

  (*(v38 + 8))(v31, v3);
  return (*(v35 + 8))(v9, v36);
}

void sub_1BA413A40(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    v3 = Strong;
    swift_beginAccess();
    v4 = *&v3[v2];
    v5 = v4;

    if (v4)
    {
      ObjectType = swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (v7)
      {
        (*(v7 + 8))(ObjectType, v7);
      }
    }
  }
}

id _s18HealthExperienceUI15DismissibleTilePAAE13accessoryFontSo6UIFontCvg_0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x1E69DDDC0];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:0];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];

    return v9;
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = v5;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v14 = 136315906;
      v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v17 = sub_1B9F0B82C(v15, v16, &v34);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v32 = 0;
      v33 = 1;
      sub_1BA413EF4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v34);

      *(v14 + 14) = v20;
      *(v14 + 22) = 2080;
      LODWORD(v32) = 2;
      type metadata accessor for SymbolicTraits(0);
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v34);

      *(v14 + 24) = v23;
      *(v14 + 32) = 2112;
      v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v14 + 34) = v24;
      v25 = v30;
      *v30 = v24;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v14, 0x2Au);
      sub_1B9F6F294(v25, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v27 = [v6 preferredFontDescriptorWithTextStyle_];
    v28 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];

    return v28;
  }
}

void sub_1BA413EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA413F58(uint64_t a1)
{
  sub_1BA413EF4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA414740(uint64_t a1)
{
  v2 = type metadata accessor for TileHeaderDetailKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PDFChartBorderStyle.init(color:lineWidth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

void PDFChart.render(context:document:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 CGContext];
  UIGraphicsPushContext(v8);

  v9 = [a1 CGContext];
  CGContextSaveGState(v9);

  v10 = _s18HealthExperienceUI8PDFChartPAAE22boundingRectForContent2inSo6CGRectVAA10PDFBuilderC8DocumentC_tF_0(a2, a3, a4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [a1 CGContext];
  v34.origin.x = v10;
  v34.origin.y = v12;
  v34.size.width = v14;
  v34.size.height = v16;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  MinY = CGRectGetMinY(v35);
  CGContextTranslateCTM(v17, MinX, MinY);

  v20 = [a1 CGContext];
  if (*(a2 + 96) == 1)
  {
    v21 = sub_1BA4A63E8();
  }

  else
  {
    v21 = sub_1BA4A63D8();
  }

  sub_1BA414A60(v20, v21, v22, a3, a4, v10, v12, v14, v16);

  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  Height = CGRectGetHeight(v36);
  v37.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  v27 = v37.size.height;
  v28 = CGRectGetMinX(v37) + 0.0;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = v27;
  v29 = Height + CGRectGetMinY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = v27;
  v30 = CGRectGetWidth(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = v27;
  v31 = CGRectGetHeight(v40);
  *(a2 + 168) = v28;
  *(a2 + 176) = v29;
  *(a2 + 184) = v30;
  *(a2 + 192) = v31 - Height;
  *(a2 + 200) = 0;
  v32 = [a1 CGContext];
  CGContextRestoreGState(v32);

  UIGraphicsPopContext();
}

uint64_t sub_1BA414A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v56 = a2;
  v57 = a3;
  v58 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v18 = &v45 - v17;
  sub_1BA4151C4(255);
  v20 = v19;
  v47 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = AssociatedConformanceWitness;
  v22 = sub_1BA415224();
  v66 = AssociatedTypeWitness;
  v67 = v20;
  v68 = AssociatedConformanceWitness;
  v69 = v22;
  v49 = MEMORY[0x1E695B398];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v24);
  v26 = &v45 - v25;
  v51 = sub_1BA4A5418();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v27);
  v50 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v45 = &v45 - v31;
  v32 = sub_1BA4A5718();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v54 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  sub_1BA4A5708();
  v46 = sub_1BA4A53D8();
  (*(a5 + 32))(a4, a5);
  v34 = swift_allocObject();
  *(v34 + 16) = a6;
  *(v34 + 24) = a7;
  *(v34 + 32) = a8;
  *(v34 + 40) = a9;
  *(v34 + 48) = 0x403C000000000000;
  v35 = swift_checkMetadataState();
  v36 = v48;
  sub_1BA4A5E68();

  (*(v55 + 8))(v18, AssociatedTypeWitness);
  v66 = AssociatedTypeWitness;
  v67 = v35;
  v68 = v36;
  v69 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v45;
  sub_1BA4A5FD8();
  (*(v52 + 8))(v26, OpaqueTypeMetadata2);
  v64 = OpaqueTypeConformance2;
  v65 = MEMORY[0x1E697E040];
  v39 = v51;
  swift_getWitnessTable();
  sub_1BA4A52A8();
  v40 = v53;
  v41 = v50;
  (*(v53 + 16))(v50, v38, v39);
  MEMORY[0x1BFAEFCD0](v41);
  v59 = v46;
  v60 = a6;
  v61 = a7;
  v62 = a8;
  v63 = a9;
  sub_1BA4A5288();
  sub_1B9FDC500(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RBDisplayListRenderKey(0);
  sub_1BA415418(&qword_1EBBE9410, type metadata accessor for RBDisplayListRenderKey, &unk_1BA4B4F30);
  v42 = sub_1BA4A6618();

  v43 = v54;
  [v54 renderInContext:v58 options:v42];

  return (*(v40 + 8))(v38, v39);
}

double sub_1BA41504C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA4A63C8();
  sub_1BA4A5278();
  v6 = sub_1BA4A49A8();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  sub_1BA4151C4(0);
  v8 = (a2 + *(v7 + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

void sub_1BA4151C4(uint64_t a1)
{
  if (!qword_1EBBF24D8)
  {
    sub_1BA4A49A8();
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF24D8);
    }
  }
}

unint64_t sub_1BA415224()
{
  result = qword_1EBBF24E0;
  if (!qword_1EBBF24E0)
  {
    sub_1BA4151C4(255);
    sub_1BA415418(&qword_1EBBF24E8, MEMORY[0x1E695B190], MEMORY[0x1E695B188]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF24E0);
  }

  return result;
}

double sub_1BA41533C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = PDFBuilder.Document.drawingContext.getter();
  (*(a3 + 40))(a2, a3, v6);
  (*(a3 + 48))(a2, a3);
  MinX = CGRectGetMinX(*(a1 + 168));
  CGRectGetMinY(*(a1 + 168));
  return MinX;
}

uint64_t sub_1BA415418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA415460(CGContext *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  CGContextScaleCTM(a1, 1.0, -1.0);
  CGContextTranslateCTM(a1, 0.0, -v3);
  return v4(a1);
}

uint64_t sub_1BA4154C8()
{
  v1 = v0;
  v2 = sub_1BA4A3A28();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69A38E8])
  {
    (*(v3 + 8))(v7, v2);
    return 0x656972616D6D7553;
  }

  if (v8 == *MEMORY[0x1E69A38F8])
  {
    (*(v3 + 8))(v7, v2);
    return 0x655268746C616548;
  }

  if (v8 == *MEMORY[0x1E69A38F0])
  {
    (*(v3 + 8))(v7, v2);
    return 0xD000000000000018;
  }

  if (v8 == *MEMORY[0x1E69A3900])
  {
    (*(v3 + 8))(v7, v2);
  }

  else if (v8 != *MEMORY[0x1E69A3908])
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000019, 0x80000001BA5079C0);
    sub_1BA4A7FB8();
    result = sub_1BA4A8018();
    __break(1u);
    return result;
  }

  return 0xD00000000000001ALL;
}

void *sub_1BA415798(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1BA4A1B68();
  sub_1BA4A3358();
  type metadata accessor for SharingEntryProfileInformationDataSource(0);
  swift_allocObject();
  v11 = sub_1BA19BEB8(v10, v9, 0, 0, 0, 0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v3;
  sub_1BA012F10(0);
  swift_allocObject();
  v13 = a2;
  v14 = sub_1BA271888(v11, sub_1BA416F04, v12, 0);

  v15 = swift_allocObject();
  v15[2] = sub_1BA415ECC;
  v15[3] = 0;
  v15[4] = v14;
  sub_1BA012E68(0);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v18 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v17 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  *(v16 + 24) = v18;
  *(v16 + 32) = v17;
  *(v16 + 40) = 0;
  *(v16 + 48) = sub_1BA416F0C;
  *(v16 + 56) = v15;
  sub_1BA416F2C(0, &unk_1EDC69060, sub_1BA012E68, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
  v19 = swift_allocObject();
  v19[4] = v16;
  v19[5] = sub_1BA415FD8;
  v19[6] = 0;
  v19[2] = v18;
  v19[3] = v17;
  swift_bridgeObjectRetain_n();

  return v19;
}

uint64_t sub_1BA415A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41[1] = a4;
  v42 = sub_1BA4A3EA8();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA071250(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A33C8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v41 - v21;
  sub_1B9F0A534(a1, v45);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  v23 = swift_dynamicCast();
  v24 = *(v15 + 56);
  if (v23)
  {
    v24(v13, 0, 1, v14);
    (*(v15 + 32))(v22, v13, v14);
    if (sub_1BA4A3388())
    {
      v25 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
      sub_1B9F28360(0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1BA4B5480;
      (*(v15 + 16))(v18, v22, v14);
      *(v26 + 56) = &type metadata for SummarySharingPausedItem;
      *(v26 + 64) = sub_1BA13F7F0();
      v27 = swift_allocObject();
      *(v26 + 32) = v27;
      v28 = v25;
      SummarySharingPausedItem.init(profileInformation:summarySharingEntryStore:)(v18, v28, (v27 + 16));

      (*(v15 + 8))(v22, v14);
      return v26;
    }

    (*(v15 + 8))(v22, v14);
  }

  else
  {
    v24(v13, 1, 1, v14);
    sub_1BA416F98(v13, sub_1BA071250);
    sub_1BA4A3DD8();
    sub_1B9F0A534(a1, v45);
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315394;
      v34 = sub_1BA4A85D8();
      v36 = sub_1B9F0B82C(v34, v35, &v44);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      sub_1B9F0A534(v45, v43);
      v37 = sub_1BA4A6808();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_1(v45);
      v40 = sub_1B9F0B82C(v37, v39, &v44);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[%s)]: Unexpected type returned from mapped data source: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v45);
    }

    (*(v6 + 8))(v9, v42);
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1BA415ECC()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D2B0;
  v14[5] = *&qword_1EDC6D2C0;
  v14[6] = xmmword_1EDC6D2D0;
  v14[7] = unk_1EDC6D2E0;
  v14[0] = xmmword_1EDC6D270;
  v14[1] = *&qword_1EDC6D280;
  v14[2] = xmmword_1EDC6D290;
  v14[3] = *&qword_1EDC6D2A0;
  v4 = xmmword_1EDC6D270;
  v5 = qword_1EDC6D280;
  v0 = *algn_1EDC6D288;
  v2 = xmmword_1EDC6D290;
  v1 = qword_1EDC6D2A0;
  v9 = *(&xmmword_1EDC6D2B0 + 8);
  v10 = unk_1EDC6D2C8;
  v11 = *(&xmmword_1EDC6D2D0 + 8);
  v12 = qword_1EDC6D2E8;
  v8 = *algn_1EDC6D2A8;
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1BA0117AC();
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

double sub_1BA41602C()
{

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_1BA4160AC()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1BA4161BC()
{
  sub_1BA4160AC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingRelationshipDetailsDataSource(uint64_t a1)
{
  result = qword_1EBBF25A8;
  if (!qword_1EBBF25A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BA4162C8()
{
  if (qword_1EBBE8960 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBF2560;
  v0 = *algn_1EBBF2568;
  v2 = qword_1EBBE8968;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBF2570;
  v3 = *algn_1EBBF2578;
  v5 = qword_1EBBE8970;
  swift_bridgeObjectRetain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBBF2580;
  v6 = *algn_1EBBF2588;
  v8 = qword_1EBBE8978;

  if (v8 != -1)
  {
    swift_once();
  }

  *&xmmword_1EBBF24F0 = v1;
  *(&xmmword_1EBBF24F0 + 1) = v0;
  qword_1EBBF2500 = v4;
  unk_1EBBF2508 = v3;
  *&xmmword_1EBBF2510 = v4;
  *(&xmmword_1EBBF2510 + 1) = v3;
  qword_1EBBF2520 = v7;
  unk_1EBBF2528 = v6;
  xmmword_1EBBF2530 = xmmword_1EBBF2590;
  qword_1EBBF2540 = sub_1BA416448;
  unk_1EBBF2548 = 0;

  return result;
}

uint64_t sub_1BA41645C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2550 = result;
  *algn_1EBBF2558 = v1;
  return result;
}

uint64_t sub_1BA41651C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2560 = result;
  *algn_1EBBF2568 = v1;
  return result;
}

uint64_t sub_1BA4165E0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2570 = result;
  *algn_1EBBF2578 = v1;
  return result;
}

uint64_t sub_1BA4166A0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2580 = result;
  *algn_1EBBF2588 = v1;
  return result;
}

uint64_t sub_1BA416760()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  *&xmmword_1EBBF2590 = result;
  *(&xmmword_1EBBF2590 + 1) = v1;
  return result;
}

uint64_t sub_1BA416814(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v65 = *v4;
  v61 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v61, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A33C8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_stopSharingDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_stopSharingDataSource) = 0;
  v57 = v14;
  v19 = *(v14 + 16);
  v62 = v14 + 16;
  v63 = v19;
  v60 = a1;
  (v19)(v18, a1, v13, v16);
  type metadata accessor for SummarySharingProfileHeaderDataSource(0);
  swift_allocObject();
  v20 = sub_1BA452614(v18);
  *&v67 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_profileHeaderDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_profileHeaderDataSource) = v20;
  sub_1B9F0A534(a3, &v79);
  type metadata accessor for SummarySharingPreviewButtonDataSource(0);
  swift_allocObject();
  v21 = a4;
  v22 = sub_1BA093594(&v79, v21);

  v66 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_previewDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_previewDataSource) = v22;
  v23 = sub_1BA415798(a3, v21);
  v24 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_isPausedDataSource);
  *v24 = v23;
  *(v24 + 1) = &protocol witness table for CellRegistering<A>;
  v65 = v24;
  sub_1B9F0A534(a3, &v79);
  sub_1BA416EA0(a2, v12);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SummarySharingAlertsSelectionDataSource(0);
  swift_allocObject();
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1BA16AC90(&v79, MEMORY[0x1E69E7CC0], v12, 1);
  v64 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_alertsDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_alertsDataSource) = v26;
  v58 = a3;
  sub_1B9F0A534(a3, v77);
  v59 = a2;
  sub_1BA416EA0(a2, v12);
  v27 = &v79;
  swift_storeEnumTagMultiPayload();
  v79 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v82, 0, sizeof(v82));
  v80 = 0u;
  v81 = 0u;
  swift_allocObject();
  v28 = v21;
  v29 = v60;
  v30 = sub_1BA3094BC(v77, v28, v25, 1, 0, v12, v25, 0, 0, &v79, 1u);

  v31 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_topicsDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_topicsDataSource) = v30;
  v78[3] = v13;
  v78[4] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
  v61 = v13;
  v63(boxed_opaque_existential_1, v29, v13);
  v33 = qword_1EBBE8958;
  v34 = v28;
  if (v33 != -1)
  {
LABEL_21:
    swift_once();
  }

  v35 = qword_1EBBF2550;
  v36 = *algn_1EBBF2558;
  v37 = qword_1EBBE8950;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = *&qword_1EBBF2520;
  *(v27 + 2) = xmmword_1EBBF2510;
  *(v27 + 3) = v38;
  v39 = *&qword_1EBBF2540;
  *(v27 + 4) = xmmword_1EBBF2530;
  *(v27 + 5) = v39;
  v40 = *&qword_1EBBF2500;
  *v27 = xmmword_1EBBF24F0;
  *(v27 + 1) = v40;
  v41 = objc_opt_self();
  sub_1BA0711AC(&v79, v77);
  v42 = [v41 secondarySystemBackgroundColor];
  type metadata accessor for EndSharingRelationshipDataSource(0);
  swift_allocObject();
  v43 = sub_1BA0700CC(v34, v78, 0, 0, v35, v36, v42, &v79);
  v44 = v68;
  *(v5 + v68) = v43;

  v45 = &protocol witness table for MutableArrayDataSource;
  v34 = v69;
  v69[0] = *(v5 + v67);
  v69[1] = &protocol witness table for MutableArrayDataSource;
  v69[2] = *(v5 + v66);
  v69[3] = &protocol witness table for MutableArrayDataSource;
  v67 = *v65;
  v70 = v67;
  v27 = *(v5 + v64);
  v71 = v27;
  v72 = &protocol witness table for MutableArrayDataSource;
  v31 = *(v5 + v31);
  v73 = v31;
  v74 = &protocol witness table for MutableArrayDataSource;
  if (!*(v5 + v44))
  {
    v45 = 0;
  }

  v75 = *(v5 + v44);
  v76 = v45;

  swift_unknownObjectRetain();

  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
LABEL_7:
  if (v46 <= 6)
  {
    v48 = 6;
  }

  else
  {
    v48 = v46;
  }

  v49 = v48 + 1;
  v50 = &v69[2 * v46];
  while (v46 != 6)
  {
    if (v49 == ++v46)
    {
      __break(1u);
      goto LABEL_21;
    }

    v51 = v50 + 2;
    v52 = *v50;
    v50 += 2;
    if (v52)
    {
      v27 = *(v51 - 1);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_1B9F1E00C();
        v77[0] = v47;
      }

      v31 = *(v47 + 16);
      if (v31 >= *(v47 + 24) >> 1)
      {
        v47 = sub_1B9F1E00C();
        v77[0] = v47;
      }

      ObjectType = swift_getObjectType();
      sub_1BA1BA008(v31, v52, v77, ObjectType, v27);
      goto LABEL_7;
    }
  }

  sub_1BA281AC0(0);
  swift_arrayDestroy();
  v55 = CompoundSectionedDataSource.init(_:)(v47);
  __swift_destroy_boxed_opaque_existential_1(v58);
  sub_1BA416F98(v59, type metadata accessor for SummarySharingRelationshipManagementContext);
  (*(v57 + 8))(v29, v61);
  return v55;
}

uint64_t sub_1BA416EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingRelationshipManagementContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA416F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BA416F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1BA417058()
{

  return result;
}

uint64_t sub_1BA4170A8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA417198()
{
  sub_1BA4170A8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppsAndReSearchSectionDataSource(uint64_t a1)
{
  result = qword_1EDC630B8;
  if (!qword_1EDC630B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA4172BC(void *a1)
{
  v2 = v1;
  v32 = sub_1BA4A1798();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_researchStudiesItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_researchStudiesItem) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_appSourcesItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_appSourcesItem) = 0;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI32AppsAndReSearchSectionDataSource_healthStore) = a1;
  v10 = a1;
  v11 = [v10 profileIdentifier];
  v12 = [v11 type];

  if (v12 == 4)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = type metadata accessor for AppSourcesDataSourceItem();
    swift_allocObject();
    v15 = sub_1BA19F130(v10);
    *(v2 + v9) = v15;

    v13 = sub_1BA27EFB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1BA27EFB4((v16 > 1), v17 + 1, 1, v13);
    }

    v34 = v14;
    v35 = sub_1BA4176B4(&qword_1EDC66638, type metadata accessor for AppSourcesDataSourceItem, &protocol conformance descriptor for AppSourcesDataSourceItem);
    *&v33 = v15;
    v13[2] = v17 + 1;
    sub_1B9F25598(&v33, &v13[5 * v17 + 4]);
  }

  v18 = [v10 profileIdentifier];
  v19 = [v18 type];

  if (v19 == 1)
  {
    v20 = type metadata accessor for ResearchStudySourcesDataSourceItem();
    swift_allocObject();
    v21 = sub_1BA395684(v10);
    *(v2 + v8) = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1BA27EFB4(0, v13[2] + 1, 1, v13);
    }

    v23 = v13[2];
    v22 = v13[3];
    if (v23 >= v22 >> 1)
    {
      v13 = sub_1BA27EFB4((v22 > 1), v23 + 1, 1, v13);
    }

    v34 = v20;
    v35 = sub_1BA4176B4(&qword_1EDC61AC0, type metadata accessor for ResearchStudySourcesDataSourceItem, &protocol conformance descriptor for ResearchStudySourcesDataSourceItem);
    *&v33 = v21;
    v13[2] = v23 + 1;
    sub_1B9F25598(&v33, &v13[5 * v23 + 4]);
  }

  v24 = sub_1B9FE4F98(v13);

  sub_1BA4A1788();
  v25 = sub_1BA4A1748();
  v27 = v26;
  (*(v4 + 8))(v7, v32);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v29 = Array<A>.identifierToIndexDict()(v28);

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v24;
  *(inited + 56) = v29;
  *(inited + 64) = v25;
  *(inited + 72) = v27;
  return sub_1B9F1DAFC(inited, 1, sub_1B9F5AEA0, 0);
}

uint64_t sub_1BA4176B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1BA4176FC()
{
  v1 = objc_allocWithZone(MEMORY[0x1E6978028]);
  v2 = sub_1BA4A15F8();
  v3 = [v1 initWithData_];

  if (v3)
  {
    [v3 setDelegate_];
  }

  type metadata accessor for PDFImagePreviews();
  v4 = swift_allocObject();
  v4[6] = 0;
  v4[2] = 20;
  v4[3] = v3;
  v5 = MEMORY[0x1E69E6530];
  v6 = sub_1BA4A6B98();
  *(v6 + 16) = 20;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *(v6 + 32) = v7;
  *(v6 + 48) = v7;
  *(v6 + 64) = v7;
  *(v6 + 80) = v7;
  *(v6 + 96) = v7;
  *(v6 + 112) = v7;
  *(v6 + 128) = v7;
  *(v6 + 144) = v7;
  *(v6 + 160) = v7;
  *(v6 + 176) = v7;
  v4[5] = v6;
  v8 = sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
  v4[4] = MEMORY[0x1BFAF1080](20, v5, v8, MEMORY[0x1E69E6540]);
  return v4;
}

id sub_1BA4179A0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:a1 action:sel_didTapCancel_];
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B9FD0;
  v4 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0x6C65636E6143;
  *(v3 + 56) = 0xE600000000000000;
  *(v3 + 64) = 0x6E6F74747542;
  *(v3 + 72) = 0xE600000000000000;
  v6 = v2;

  v7 = sub_1BA4A6AE8();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  [v6 setAccessibilityIdentifier_];
  return v6;
}

id sub_1BA417AE8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1BA417B4C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:a1 action:sel_didTapSave_];
  [v2 setEnabled_];
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B9FD0;
  v4 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0x6572616853;
  *(v3 + 56) = 0xE500000000000000;
  *(v3 + 64) = 0x6E6F74747542;
  *(v3 + 72) = 0xE600000000000000;
  v6 = v2;

  v7 = sub_1BA4A6AE8();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  [v6 setAccessibilityIdentifier_];
  return v6;
}

id sub_1BA417C88()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for PDFContentSizedTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setScrollEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1BA417D38()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = v0;
    v5 = sub_1BA41903C();
    v6 = objc_allocWithZone(type metadata accessor for PDFPreviewCollectionView());
    v7 = PDFPreviewCollectionView.init(layout:)(v5);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setShowsHorizontalScrollIndicator_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1BA417DE4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA417E7C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints);
  }

  else
  {
    sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B7510;
    v3 = sub_1BA417D38();
    v4 = [v3 topAnchor];

    v5 = sub_1BA417C88();
    v6 = [v5 bottomAnchor];

    v7 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding;
    v8 = [v4 constraintEqualToAnchor:v6 constant:*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding)];

    *(v2 + 32) = v8;
    v9 = sub_1BA417DE4();
    v10 = [v9 bottomAnchor];

    v11 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView) bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:*(v0 + v7)];

    *(v2 + 40) = v12;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1BA418014()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint);
  }

  else
  {
    v4 = sub_1BA417D38();
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void PDFAsyncConfigurationViewController.init(dataSource:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_tableCellIdentifier];
  *v3 = 1819043139;
  *(v3 + 1) = 0xE400000000000000;
  v4 = sub_1BA4A6AE8();
  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (v5)
  {
    v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier];
    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;

    *v6 = v7;
    v6[1] = v9;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___cancelBarButtonItem] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___actionBarButtonItem] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding] = 0x403E000000000000;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint] = 0;
    v10 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
    *v10 = 0;
    v10[8] = -1;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask] = 0;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_previewDataSource] = [objc_allocWithZone(type metadata accessor for PDFPreviewDataSource()) init];
    sub_1B9F0A534(a1, &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource]);
    v11.receiver = v1;
    v11.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
    objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __break(1u);
  }
}

id PDFAsyncConfigurationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PDFAsyncConfigurationViewController.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask])
  {

    sub_1BA4A6C98();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA418578()
{
  v1 = v0;
  v64.receiver = v0;
  v64.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  [v0 setTitle_];

  v3 = [v0 navigationItem];
  v4 = sub_1BA417980();
  [v3 setLeftBarButtonItem_];

  v5 = [v1 navigationItem];
  v6 = sub_1BA417AC8();
  [v5 setRightBarButtonItem_];

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = sub_1BA417C88();
  [v10 setDelegate_];

  v11 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView;
  [*&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView] setDataSource_];
  v12 = *&v1[v11];
  sub_1B9F0ADF8(0, &unk_1EBBEBD60, 0x1E69DD028);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v12;
  v15 = sub_1BA4A6758();
  [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v15];

  v16 = *&v1[v11];
  v17 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v18 = v16;
  v19 = [v17 initWithFrame_];
  [v18 setTableFooterView_];

  [*&v1[v11] setSectionFooterHeight_];
  v20 = sub_1BA417D38();
  [v20 setDataSource_];

  v21 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView;
  v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView];
  v23 = objc_allocWithZone(MEMORY[0x1E69DCD80]);
  v24 = v22;
  v25 = [v23 initWithTarget:v1 action:sel_didPinchPDF_];
  [v24 addGestureRecognizer_];

  v26 = *&v1[v21];
  v27 = sub_1BA19CEC8();
  [v26 setBackgroundView_];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v29 = v28;
  v30 = sub_1BA417DE4();
  [v29 addSubview_];

  v31 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView] addSubview_];
  v63 = v21;
  [*&v1[v31] addSubview_];
  v32 = *&v1[v31];
  v33 = [v1 view];
  [v32 hk:v33 alignConstraintsWithView:?];

  v34 = objc_opt_self();
  sub_1BA417E7C();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v35 = sub_1BA4A6AE8();

  [v34 activateConstraints_];

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4BBC90;
  v37 = [*&v1[v11] topAnchor];
  v38 = [*&v1[v31] topAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v36 + 32) = v39;
  v40 = [*&v1[v11] leadingAnchor];
  v41 = [*&v1[v31] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v36 + 40) = v42;
  v43 = [*&v1[v11] widthAnchor];
  v44 = [v1 &selRef_textFieldShouldBeginEditing_];
  if (!v44)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v45 = v44;
  v46 = [v44 widthAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  *(v36 + 48) = v47;
  v48 = [*&v1[v11] trailingAnchor];
  v49 = [*&v1[v31] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v36 + 56) = v50;
  v51 = [*&v1[v63] leadingAnchor];
  v52 = [*&v1[v31] leadingAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v36 + 64) = v53;
  v54 = [*&v1[v63] widthAnchor];
  v55 = [v1 view];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 widthAnchor];

    v58 = [v54 constraintEqualToAnchor_];
    *(v36 + 72) = v58;
    *(v36 + 80) = sub_1BA418014();
    v59 = [*&v1[v63] trailingAnchor];
    v60 = [*&v1[v31] trailingAnchor];
    v61 = [v59 constraintEqualToAnchor_];

    *(v36 + 88) = v61;
    v62 = sub_1BA4A6AE8();

    [v34 activateConstraints_];

    sub_1BA419C08();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1BA418DE4()
{
  v1 = sub_1BA41903C();
  v2 = sub_1BA417D38();
  [v2 setCollectionViewLayout:v1 animated:0];

  [v1 itemSize];
  v4 = v3;
  v5 = sub_1BA418014();
  [v5 setConstant_];

  v6 = sub_1BA417DE4();
  v7 = [v6 safeAreaLayoutGuide];

  [v7 layoutFrame];
  Height = CGRectGetHeight(v23);
  v9 = sub_1BA417C88();
  [v9 contentSize];
  v11 = v10;

  v12 = (Height - v11 - v4) * 0.5;
  if (v12 <= 30.0)
  {
    v12 = 30.0;
  }

  v13 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding;
  if (v12 != *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding])
  {
    v21 = v7;
    *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding] = v12;
    v14 = sub_1BA417E7C();
    v15 = v14;
    if (v14 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1BFAF2860](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v18 setConstant_];

        ++v17;
        if (v20 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    v7 = v21;
  }

  v22.receiver = v0;
  v22.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLayoutSubviews);
}

id sub_1BA41903C()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;

    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v25.origin.x = v7;
    v25.origin.y = v9;
    v25.size.width = v11;
    v25.size.height = v13;
    v14 = round(CGRectGetHeight(v25) * 0.5);
    v15 = round(v14 / 1.375);
    v16 = round((v4 - v15) * 0.5);
    v17 = round(v4 + -30.0);
    v18 = v4 + -30.0 < v15;
    if (v4 + -30.0 >= v15)
    {
      v19 = v16;
    }

    else
    {
      v19 = 15.0;
    }

    if (v18)
    {
      v20 = v17 * 1.375;
    }

    else
    {
      v20 = v14;
    }

    if (v18)
    {
      v21 = v17;
    }

    else
    {
      v21 = v15;
    }

    v22 = type metadata accessor for PDFCollectionViewLayout();
    v24.receiver = objc_allocWithZone(v22);
    v24.super_class = v22;
    v23 = objc_msgSendSuper2(&v24, sel_init);
    [v23 setScrollDirection_];
    [v23 setMinimumLineSpacing_];
    [v23 setItemSize_];
    [v23 setSectionInset_];

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BA419254(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v84 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v84 - v16;
  v18 = sub_1BA4A3C98();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state + 8];
  if (v22 == 255 || (v22 & 1) != 0)
  {
    sub_1BA4A3E08();
    v23 = v2;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = v5;
      v28 = swift_slowAlloc();
      v90 = v28;
      *v26 = 136446210;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v90);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1B9F07000, v24, v25, "[%{public}s]: No PDF data generated", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);

      (*(v6 + 8))(v9, v27);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return result;
  }

  v86 = a1;
  v87 = v5;
  v88 = v22;
  v33 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  v34 = objc_allocWithZone(MEMORY[0x1E6978028]);
  sub_1BA41E7E0(v33);
  v35 = sub_1BA4A15F8();
  v36 = [v34 initWithData_];

  if (!v36 || ([v36 setDelegate_], v37 = objc_msgSend(v36, sel_dataRepresentation), v36, !v37))
  {
    sub_1BA4A3E08();
    v52 = v2;
    v53 = sub_1BA4A3E88();
    v54 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v90 = v56;
      *v55 = 136446210;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v57 = sub_1BA4A6808();
      v59 = sub_1B9F0B82C(v57, v58, &v90);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_1B9F07000, v53, v54, "[%{public}s]: No PDF document generated", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1BFAF43A0](v56, -1, -1);
      MEMORY[0x1BFAF43A0](v55, -1, -1);

      sub_1BA41E7EC(v33, v88);
    }

    else
    {
      sub_1BA41E7EC(v33, v88);
    }

    v60 = *(v6 + 8);
    v61 = v13;
    goto LABEL_17;
  }

  v38 = sub_1BA4A1608();
  v40 = v39;

  v41 = *&v33[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename];
  v42 = *&v33[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename + 8];

  sub_1B9F206D4(v38, v40);
  sub_1BA4A3C78();
  v43 = objc_allocWithZone(type metadata accessor for ShareFileActivityItemSource(0));
  v44 = ShareFileActivityItemSource.init(data:filename:contentType:)(v38, v40, v41, v42, v21);
  if (!v44)
  {
    sub_1BA4A3E08();
    v62 = v2;
    v63 = sub_1BA4A3E88();
    v64 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v90 = v66;
      *v65 = 136446210;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v67 = sub_1BA4A6808();
      v86 = v40;
      v69 = sub_1B9F0B82C(v67, v68, &v90);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_1B9F07000, v63, v64, "[%{public}s]: Unable to instantiate activity item source", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1BFAF43A0](v66, -1, -1);
      MEMORY[0x1BFAF43A0](v65, -1, -1);

      sub_1BA41E7EC(v33, v88);
      sub_1B9F2BB4C(v38, v86);
    }

    else
    {
      sub_1B9F2BB4C(v38, v40);
      sub_1BA41E7EC(v33, v88);
    }

    v60 = *(v6 + 8);
    v61 = v17;
LABEL_17:
    v60(v61, v87);
    return result;
  }

  v45 = v44;
  v46 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24];
  v47 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource], v46);
  (*(v47 + 64))(&v90, v46, v47);
  if (!v94)
  {
    v70 = v45;
    sub_1BA41DD7C(v86, v70, v2);
    sub_1B9F2BB4C(v38, v40);

    sub_1BA41E7EC(v33, v88);
    return result;
  }

  v48 = v92;
  v84[0] = v93;
  v87 = v91;
  if (!v91)
  {
    v71 = v45;
    v50 = 0;
    if (v48)
    {
      goto LABEL_12;
    }

LABEL_24:
    v51 = 0;
    goto LABEL_25;
  }

  v49 = v45;
  v50 = sub_1BA4A6758();
  if (!v48)
  {
    goto LABEL_24;
  }

LABEL_12:
  v51 = sub_1BA4A6758();
LABEL_25:
  v84[1] = v48;
  v85 = v33;
  v72 = [objc_opt_self() alertControllerWithTitle:v50 message:v51 preferredStyle:{1, v84[0]}];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v73 = sub_1BA4A6758();

  v74 = objc_opt_self();
  v75 = [v74 actionWithTitle:v73 style:1 handler:0];

  [v72 addAction_];
  [v72 setPreferredAction_];
  v76 = swift_allocObject();
  v77 = v86;
  v76[2] = v2;
  v76[3] = v77;
  v76[4] = v45;
  v78 = v45;
  v79 = v2;
  v80 = v77;
  v81 = sub_1BA4A6758();
  aBlock[4] = sub_1BA41E81C;
  aBlock[5] = v76;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_68_1;
  v82 = _Block_copy(aBlock);

  v83 = [v74 actionWithTitle:v81 style:0 handler:v82];
  _Block_release(v82);

  [v72 addAction_];
  [v79 presentViewController:v72 animated:1 completion:0];

  sub_1B9F2BB4C(v38, v40);
  sub_1BA41E7EC(v85, v88);

  return result;
}

double sub_1BA419C08()
{
  v1 = v0;
  sub_1B9F0AAD0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask])
  {

    sub_1BA4A6C98();
  }

  v7 = sub_1BA417C88();
  [v7 reloadData];

  v8 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  *v8 = 0;
  v10 = v8[8];
  v8[8] = -1;
  sub_1BA41E7EC(v9, v10);
  sub_1BA41B478();
  v11 = sub_1BA4A6C88();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1BA4A6C68();
  v12 = v1;
  v13 = sub_1BA4A6C58();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  *&v1[v6] = sub_1BA0BF220(0, 0, v5, &unk_1BA4DA920, v14);

  return result;
}

uint64_t sub_1BA419DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_1BA4A7F78();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_1BA4A6C68();
  v4[15] = sub_1BA4A6C58();
  v8 = sub_1BA4A6C28();
  v4[16] = v8;
  v4[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BA419F48, v8, v7);
}

uint64_t sub_1BA419F48()
{
  v1 = (v0[7] + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 40))(v2, v3);
  if (v4)
  {
    if (sub_1BA4A6CA8())
    {

      v5 = v0[1];

      return v5();
    }

    else
    {
      v11 = swift_task_alloc();
      v0[20] = v11;
      *v11 = v0;
      v11[1] = sub_1BA41A5F4;

      return sub_1BA41AA30();
    }
  }

  else
  {
    v7 = sub_1BA4A85A8();
    v9 = v8;
    sub_1BA4A83E8();
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_1BA41A128;

    return sub_1BA41D8C4(v7, v9, 0, 0, 1);
  }
}

uint64_t sub_1BA41A128()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1BA41A3A4;
  }

  else
  {
    v8 = sub_1BA41A2C0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BA41A2C0(uint64_t a1)
{
  if (sub_1BA4A6CA8())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 160) = v4;
    *v4 = v1;
    v4[1] = sub_1BA41A5F4;

    return sub_1BA41AA30();
  }
}

uint64_t sub_1BA41A3A4()
{
  v25 = v0;
  v1 = v0[19];

  if ((sub_1BA4A6CA8() & 1) == 0)
  {
    v2 = v0[7];
    sub_1BA4A3E08();
    v3 = v2;
    v4 = v1;
    v5 = sub_1BA4A3E88();
    v6 = sub_1BA4A6FA8();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v23 = v0[11];
      v11 = v0[8];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136446466;
      v0[5] = v11;
      swift_getMetatypeMetadata();
      v14 = sub_1BA4A6808();
      v16 = sub_1B9F0B82C(v14, v15, &v24);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_1BA4A8418();
      v19 = sub_1B9F0B82C(v17, v18, &v24);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v5, v6, "[%{public}s]: Error generating PDF: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);

      (*(v9 + 8))(v23, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v20 = v1;
    sub_1BA41B194(v1, 1);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BA41A5F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v1)
  {
    v7 = sub_1BA41A7E0;
  }

  else
  {
    v7 = sub_1BA41A738;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BA41A738()
{

  v1 = sub_1BA4A6CA8();
  v2 = *(v0 + 168);
  if ((v1 & 1) == 0)
  {
    v3 = v2;
    sub_1BA41B194(v2, 0);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BA41A7E0()
{
  v25 = v0;
  v1 = v0[22];

  if ((sub_1BA4A6CA8() & 1) == 0)
  {
    v2 = v0[7];
    sub_1BA4A3E08();
    v3 = v2;
    v4 = v1;
    v5 = sub_1BA4A3E88();
    v6 = sub_1BA4A6FA8();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v23 = v0[11];
      v11 = v0[8];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136446466;
      v0[5] = v11;
      swift_getMetatypeMetadata();
      v14 = sub_1BA4A6808();
      v16 = sub_1B9F0B82C(v14, v15, &v24);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_1BA4A8418();
      v19 = sub_1B9F0B82C(v17, v18, &v24);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v5, v6, "[%{public}s]: Error generating PDF: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);

      (*(v9 + 8))(v23, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v20 = v1;
    sub_1BA41B194(v1, 1);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BA41AA30()
{
  v1[19] = v0;
  sub_1BA4A6C68();
  v1[20] = sub_1BA4A6C58();
  v3 = sub_1BA4A6C28();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BA41AAC8, v3, v2);
}

uint64_t sub_1BA41AAC8()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource;
  v0[23] = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  (*(v4 + 48))(v3, v4);
  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_1BA41ABC4;

  return PDFConfigurable.generatePDFData()(v6, v5);
}

uint64_t sub_1BA41ABC4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;

  v6 = v4[22];
  v7 = v4[21];
  if (v2)
  {
    v8 = sub_1BA41B0A8;
  }

  else
  {
    v8 = sub_1BA41AD0C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BA41AD0C()
{
  v1 = (v0[19] + v0[23]);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 56))(v2, v3);
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_1BA41AE6C;

  return v8(v4, v5);
}

uint64_t sub_1BA41AE6C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 232) = v2;

  if (v2)
  {
    v7 = v6[21];
    v8 = v6[22];
    v9 = sub_1BA41B114;
  }

  else
  {
    v6[30] = a2;
    v6[31] = a1;
    v7 = v6[21];
    v8 = v6[22];
    v9 = sub_1BA41AFA0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BA41AFA0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_1B9F0A534(v0 + 16, v0 + 96);
  v5 = type metadata accessor for PDFAsyncConfigurationViewController.PDFGeneratedResult();
  v6 = objc_allocWithZone(v5);
  sub_1B9F0A534(v0 + 96, &v6[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_configuration]);
  v7 = &v6[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_pdfData];
  *v7 = v4;
  *(v7 + 1) = v3;
  v8 = &v6[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename];
  *v8 = v1;
  *(v8 + 1) = v2;
  *(v0 + 136) = v6;
  *(v0 + 144) = v5;
  v9 = objc_msgSendSuper2((v0 + 136), sel_init);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1BA41B0A8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA41B114()
{
  sub_1B9F2BB4C(v0[25], v0[26]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];

  return v1();
}

void sub_1BA41B194(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = ~a2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  v13 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
  *v12 = a1;
  v14 = v12[8];
  v12[8] = v3;
  sub_1BA41E7EC(v13, v14);
  if (v5)
  {
    if (v3)
    {
      sub_1BA41E804(a1, v3);
      sub_1BA41E804(a1, v3);
      sub_1BA41E7E0(a1);
      sub_1BA4A3E08();
      sub_1BA41E804(a1, v3);
      v26[1] = v2;
      v15 = v2;
      v16 = sub_1BA4A3E88();
      v17 = sub_1BA4A6FC8();

      sub_1BA41E7EC(a1, v3);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v26[0] = swift_slowAlloc();
        v27 = ObjectType;
        v28 = v26[0];
        *v18 = 136446466;
        swift_getMetatypeMetadata();
        v19 = sub_1BA4A6808();
        v21 = sub_1B9F0B82C(v19, v20, &v28);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2080;
        swift_getErrorValue();
        v22 = sub_1BA4A8418();
        v24 = sub_1B9F0B82C(v22, v23, &v28);

        *(v18 + 14) = v24;
        _os_log_impl(&dword_1B9F07000, v16, v17, "[%{public}s]: No PDF data generated error: %s", v18, 0x16u);
        v25 = v26[0];
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v25, -1, -1);
        MEMORY[0x1BFAF43A0](v18, -1, -1);

        sub_1BA41E7EC(a1, v3);
        sub_1BA41E7EC(a1, v3);
      }

      else
      {
        sub_1BA41E7EC(a1, v3);
        sub_1BA41E7EC(a1, v3);
      }

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      sub_1BA41E7E0(a1);
    }
  }

  sub_1BA41B478();
}

void sub_1BA41B478()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state + 8);
  if (v2 == 255)
  {
    v12 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_previewDataSource);
    type metadata accessor for PDFImagePreviews();
    v13 = swift_allocObject();
    *(v13 + 48) = 0;
    *(v13 + 16) = xmmword_1BA4C2AD0;
    v14 = MEMORY[0x1E69E6530];
    v15 = sub_1BA4A6B98();
    *(v15 + 16) = 20;
    *&v16 = -1;
    *(&v16 + 1) = -1;
    *(v15 + 32) = v16;
    *(v15 + 48) = v16;
    *(v15 + 64) = v16;
    *(v15 + 80) = v16;
    *(v15 + 96) = v16;
    *(v15 + 112) = v16;
    *(v15 + 128) = v16;
    *(v15 + 144) = v16;
    *(v15 + 160) = v16;
    *(v15 + 176) = v16;
    *(v13 + 40) = v15;
    v17 = sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
    *(v13 + 32) = MEMORY[0x1BFAF1080](20, v14, v17, MEMORY[0x1E69E6540]);
    *(v12 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) = v13;

    v18 = sub_1BA417AC8();
    [v18 setEnabled_];

    v10 = sub_1BA417D38();
    v11 = sub_1BA19CEC8();
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_previewDataSource);
    type metadata accessor for PDFImagePreviews();
    v4 = swift_allocObject();
    *(v4 + 48) = 0;
    *(v4 + 16) = xmmword_1BA4C2AD0;
    v5 = MEMORY[0x1E69E6530];
    v6 = sub_1BA4A6B98();
    *(v6 + 16) = 20;
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *(v6 + 32) = v7;
    *(v6 + 48) = v7;
    *(v6 + 64) = v7;
    *(v6 + 80) = v7;
    *(v6 + 96) = v7;
    *(v6 + 112) = v7;
    *(v6 + 128) = v7;
    *(v6 + 144) = v7;
    *(v6 + 160) = v7;
    *(v6 + 176) = v7;
    *(v4 + 40) = v6;
    v8 = sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
    *(v4 + 32) = MEMORY[0x1BFAF1080](20, v5, v8, MEMORY[0x1E69E6540]);
    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) = v4;

    v9 = sub_1BA417AC8();
    [v9 setEnabled_];

    v10 = sub_1BA417D38();
    v11 = sub_1BA19CCA0();
LABEL_5:
    v19 = v11;
    [v10 setBackgroundView_];

    goto LABEL_7;
  }

  v20 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state);
  v21 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_previewDataSource);
  sub_1BA41E7E0(v20);
  *(v21 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) = sub_1BA4176FC();

  v22 = sub_1BA417AC8();
  [v22 setEnabled_];

  v23 = sub_1BA417D38();
  [v23 setBackgroundView_];

  v24 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView;
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView) reloadData];
  [*(v1 + v24) setContentOffset:1 animated:{0.0, 0.0}];
  sub_1BA41E7EC(v20, v2);
LABEL_7:
  v25 = sub_1BA417D38();
  [v25 reloadData];
}

id PDFAsyncConfigurationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Int __swiftcall PDFAsyncConfigurationViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v3 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24);
  v4 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource), v3);
  return (*(v4 + 8))(v3, v4);
}

id PDFAsyncConfigurationViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v3 = sub_1BA4A4428();
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A6758();
  v8 = sub_1BA4A18F8();
  v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:v8];

  v10 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24);
  v11 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource), v10);
  v12 = sub_1BA4A1938();
  (*(v11 + 24))(v57, v12, v10, v11);
  v13 = v58;
  v14 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v15 = (*(v14 + 8))(v13, v14);
  v17 = v16;
  sub_1BA4A4418();

  sub_1BA4A43B8();
  v18 = v58;
  v19 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (*(v19 + 16))(v18, v19);
  sub_1BA4A41A8();
  v20 = objc_opt_self();
  v21 = [v20 labelColor];
  v22 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v22(&v53, 0);
  v23 = v48;
  v24 = [v20 secondaryLabelColor];
  v25 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v25(&v53, 0);
  v55 = v3;
  v56 = MEMORY[0x1E69DC110];
  v26 = __swift_allocate_boxed_opaque_existential_1(&v53);
  (*(v23 + 16))(v26, v6, v3);
  MEMORY[0x1BFAF1B80](&v53);
  v27 = v58;
  v28 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v29 = (*(v28 + 24))(v27, v28);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  [v9 setSelectionStyle_];
  v32 = v58;
  v33 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v34 = (*(v33 + 32))(v32, v33);
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  [v9 setAccessoryType_];
  if (v17)
  {
    v53 = v15;
    v54 = v17;
    v51 = 32;
    v52 = 0xE100000000000000;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1B9F252FC();
    v37 = MEMORY[0x1E69E6158];
    v38 = sub_1BA4A7B58();
    v40 = v39;

    sub_1B9F1C048(0, &qword_1EDC6E330, v37);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1BA4B5460;
    *(v41 + 32) = 0xD000000000000015;
    *(v41 + 40) = 0x80000001BA507C00;
    v53 = v38;
    v54 = v40;
    v42 = v9;

    MEMORY[0x1BFAF1350](1819043139, 0xE400000000000000);

    v43 = v54;
    *(v41 + 48) = v53;
    *(v41 + 56) = v43;
    v44 = sub_1BA4A6AE8();

    v45 = HKUIJoinStringsForAutomationIdentifier();

    [v42 setAccessibilityIdentifier_];
  }

  (*(v23 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v9;
}

double PDFAsyncConfigurationViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v3 = sub_1BA4A18F8();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24);
  v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource), v4);
  v6 = sub_1BA4A1938();
  (*(v5 + 32))(v6, v4, v5);

  return sub_1BA419C08();
}

void sub_1BA41C144(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1BA4A3EA8();
  v10 = *(v125 - 1);
  MEMORY[0x1EEE9AC00](v125, v11);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v118 - v16;
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v118 - v21;
  v23 = [a1 state];
  if ((v23 - 4) < 2)
  {
    sub_1BA4A3E08();
    v100 = v2;
    v101 = sub_1BA4A3E88();
    v102 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v126 = ObjectType;
      v127 = v104;
      *v103 = 136446210;
      swift_getMetatypeMetadata();
      v105 = sub_1BA4A6808();
      v107 = sub_1B9F0B82C(v105, v106, &v127);

      *(v103 + 4) = v107;
      _os_log_impl(&dword_1B9F07000, v101, v102, "[%{public}s]: PDF zoom gesture failed or was cancelled", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x1BFAF43A0](v104, -1, -1);
      MEMORY[0x1BFAF43A0](v103, -1, -1);
    }

    (*(v10 + 8))(v17, v125);
LABEL_22:
    sub_1BA41CB94();
    return;
  }

  if (v23 == 3)
  {
    sub_1BA4A3E08();
    v108 = v2;
    v109 = sub_1BA4A3E88();
    v110 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v126 = ObjectType;
      v127 = v112;
      *v111 = 136446210;
      swift_getMetatypeMetadata();
      v113 = sub_1BA4A6808();
      v115 = sub_1B9F0B82C(v113, v114, &v127);

      *(v111 + 4) = v115;
      _os_log_impl(&dword_1B9F07000, v109, v110, "[%{public}s]: PDF zoom gesture ended", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x1BFAF43A0](v112, -1, -1);
      MEMORY[0x1BFAF43A0](v111, -1, -1);
    }

    (*(v10 + 8))(v13, v125);
    [a1 scale];
    if (v116 > 1.2)
    {
      sub_1BA41CC40();
      return;
    }

    goto LABEL_22;
  }

  if (v23 == 1)
  {
    v123 = v6;
    sub_1BA4A3E08();
    v24 = v2;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();
    v124 = v24;

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v122 = v5;
      v28 = v27;
      v29 = swift_slowAlloc();
      v126 = ObjectType;
      v127 = v29;
      *v28 = 136446210;
      swift_getMetatypeMetadata();
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v127);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%{public}s]: PDF zoom gesture began", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      v33 = v28;
      v5 = v122;
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    (*(v10 + 8))(v22, v125);
    v34 = v124;
    v35 = sub_1BA417D38();
    v36 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView;
    [a1 locationInView_];
    v37 = [v35 indexPathForItemAtPoint_];

    if (v37)
    {
      sub_1BA4A1918();

      v38 = *&v34[v36];
      v39 = sub_1BA4A18F8();
      v40 = [v38 cellForItemAtIndexPath_];

      v41 = v123;
      if (v40)
      {
        type metadata accessor for PDFImageCell();
        v42 = swift_dynamicCastClass();
        if (v42)
        {
          v122 = v5;
          v43 = *(v42 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView);
          v44 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView;
          v45 = *&v34[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView];
          *&v34[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView] = v43;
          v46 = v43;

          v47 = [v34 view];
          if (v47)
          {
            v48 = v47;
            [v47 bounds];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;

            v57 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
            v58 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView;
            v59 = *&v34[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView];
            *&v34[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView] = v57;

            v60 = [v46 image];
            v61 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

            v62 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView;
            v63 = *&v34[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView];
            *&v34[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView] = v61;

            v64 = v46;
            v65 = [v64 window];
            if (!v65)
            {
LABEL_34:

              sub_1BA41CB94();
              goto LABEL_35;
            }

            v66 = v65;
            v67 = [v64 superview];
            if (!v67)
            {
LABEL_33:

              goto LABEL_34;
            }

            v125 = v67;
            v68 = [v34 view];
            if (v68)
            {
              v69 = v68;
              v70 = [v68 superview];

              if (v70)
              {
                v121 = v70;
                v71 = v124;
                v72 = *&v124[v58];
                if (v72)
                {
                  v73 = *&v124[v44];
                  if (v73)
                  {
                    v74 = *&v124[v62];
                    if (v74)
                    {
                      v119 = v74;
                      v75 = v73;
                      v76 = v71;
                      v77 = v72;
                      v120 = v75;
                      [v75 setAlpha_];
                      v78 = [v76 view];
                      if (v78)
                      {
                        v79 = v78;
                        [v78 frame];
                        v81 = v80;
                        v83 = v82;

                        [v121 convertPoint:v66 toCoordinateSpace:{v81, v83}];
                        v85 = v84;
                        v87 = v86;
                        [v77 frame];
                        [v77 setFrame_];
                        v88 = [objc_opt_self() whiteColor];
                        [v77 setBackgroundColor_];

                        [v77 setAlpha_];
                        v89 = [v77 layer];
                        [v89 setCornerRadius_];

                        [v77 setClipsToBounds_];
                        [v66 addSubview_];
                        [v66 bringSubviewToFront_];
                        v90 = v119;
                        [v64 bounds];
                        [v90 bounds];
                        [v90 setBounds_];
                        [v64 frame];
                        v92 = v91;
                        v94 = v93;

                        v95 = v125;
                        [v125 convertPoint:v66 toCoordinateSpace:{v92, v94}];
                        v97 = v96;
                        v99 = v98;
                        [v90 frame];
                        [v90 setFrame_];

                        [v66 addSubview_];
                        [v66 bringSubviewToFront_];

LABEL_35:
                        (*(v123 + 8))(v9, v122);
                        return;
                      }

                      goto LABEL_38;
                    }
                  }
                }

                v66 = v125;
                v117 = v121;
              }

              else
              {
                v117 = v125;
              }

              v66 = v117;
              goto LABEL_33;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }
      }

      (*(v41 + 8))(v9, v5);
    }
  }
}

void sub_1BA41CB94()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView);
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView) removeFromSuperview];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView;
  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView);
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;

  v8 = *(v0 + v4);
  *(v0 + v4) = 0;
}

void sub_1BA41CC40()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView] = 0;
  *&v0[v2] = 0;
  v6 = *&v0[v4];
  *&v0[v4] = 0;
  v17 = v5;

  v18 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v23 = sub_1BA41E7BC;
  v24 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B9F0B040;
  v22 = &block_descriptor_115;
  v8 = _Block_copy(&aBlock);
  v9 = v1;
  v10 = v3;

  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v5;
  v11[4] = v1;
  v11[5] = v3;
  v23 = sub_1BA41E7C4;
  v24 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1BA40695C;
  v22 = &block_descriptor_53_0;
  v12 = _Block_copy(&aBlock);
  v13 = v17;
  v14 = v10;
  v15 = v9;
  v16 = v0;

  [v18 animateWithDuration:0x10000 delay:v8 options:v12 animations:0.3 completion:0.0];
  _Block_release(v12);
  _Block_release(v8);
}

id sub_1BA41CEC0(id result, void *a2)
{
  if (result)
  {
    result = [result setAlpha_];
  }

  if (a2)
  {
    CGAffineTransformMakeScale(&v3, 2.0, 2.0);
    [a2 setTransform_];
    return [a2 setAlpha_];
  }

  return result;
}

uint64_t sub_1BA41CF44(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v32 = sub_1BA4A6478();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A64C8();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A64E8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v30 - v22;
  sub_1BA41D354();
  if (a3)
  {
    [a3 setAlpha_];
  }

  if (a4)
  {
    [a4 removeFromSuperview];
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v24 = sub_1BA4A7308();
  sub_1BA4A64D8();
  sub_1BA4A6518();
  v31 = *(v16 + 8);
  v31(v19, v15);
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  aBlock[4] = sub_1BA41E7D0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_59_1;
  v26 = _Block_copy(aBlock);
  v27 = a5;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AFF0(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F0AAD0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v28 = v32;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1CD0](v23, v14, v10, v26);
  _Block_release(v26);

  (*(v35 + 8))(v10, v28);
  (*(v33 + 8))(v14, v34);
  return (v31)(v23, v15);
}

void sub_1BA41D354()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state + 8];
  if (v8 == 255 || (v8 & 1) != 0)
  {
    sub_1BA4A3E08();
    v9 = v1;
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31[0] = v13;
      *v12 = 136446210;
      v31[5] = ObjectType;
      swift_getMetatypeMetadata();
      v14 = sub_1BA4A6808();
      v16 = sub_1B9F0B82C(v14, v15, v31);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s]: PDF result not found when presenting preview", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state];
    v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 24];
    v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource], v18);
    v20 = *(v19 + 16);
    sub_1BA41E7E0(v17);
    v21 = v20(v18, v19);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = *&v17[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename];
    v26 = *&v17[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_filename + 8];
    sub_1B9F0A534(&v17[OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_configuration], v31);
    v27 = objc_allocWithZone(type metadata accessor for PDFAsyncViewController());

    v28 = sub_1BA41E130(v23, v24, v25, v26, v31, v27);
    v29 = [v1 navigationController];
    if (v29)
    {
      v30 = v29;
      [v29 pushViewController:v28 animated:0];

      sub_1BA41E7EC(v17, v8);
    }

    else
    {

      sub_1BA41E7EC(v17, v8);
    }
  }
}

id sub_1BA41D884(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA41D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BA4A7F68();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BA41D9C4, 0, 0);
}

uint64_t sub_1BA41D9C4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BA4A7F78();
  v5 = sub_1B9F0AFF0(&qword_1EBBF26D8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1BA4A83C8();
  sub_1B9F0AFF0(&unk_1EBBF26E0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1BA4A7F88();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BA41DB54;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BA41DB54()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BA41DD10, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1BA41DD10()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1BA41DD7C(uint64_t a1, void *a2, void *a3)
{
  sub_1B9F1C048(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = swift_getObjectType();
  *(v6 + 32) = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v8 = a2;
  v9 = sub_1BA4A6AE8();

  v15 = [v7 initWithActivityItems:v9 applicationActivities:0];

  sub_1B9F0AAD0(0, &qword_1EBBEE848, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5480;
  v11 = *MEMORY[0x1E69CDAA8];
  *(v10 + 32) = *MEMORY[0x1E69CDAA8];
  type metadata accessor for ActivityType(0);
  v12 = v11;
  v13 = sub_1BA4A6AE8();

  [v15 setExcludedActivityTypes_];

  v14 = [v15 popoverPresentationController];
  [v14 setSourceItem_];

  [a3 presentViewController:v15 animated:1 completion:0];
}

void sub_1BA41DF54(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B9F1C048(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = swift_getObjectType();
  *(v6 + 32) = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  swift_unknownObjectRetain();
  v8 = sub_1BA4A6AE8();

  v14 = [v7 initWithActivityItems:v8 applicationActivities:0];

  sub_1B9F0AAD0(0, &qword_1EBBEE848, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  v10 = *MEMORY[0x1E69CDAA8];
  *(v9 + 32) = *MEMORY[0x1E69CDAA8];
  type metadata accessor for ActivityType(0);
  v11 = v10;
  v12 = sub_1BA4A6AE8();

  [v14 setExcludedActivityTypes_];

  v13 = [v14 popoverPresentationController];
  [v13 setSourceItem_];

  [a3 presentViewController:v14 animated:1 completion:0];
}

char *sub_1BA41E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v39 = sub_1BA4A3EA8();
  v10 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v11);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = &type metadata for PDFStaticFileNameProvider;
  v42[4] = &protocol witness table for PDFStaticFileNameProvider;
  v42[0] = a3;
  v42[1] = a4;
  v14 = &a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource] = 0;
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner] = 0;
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView] = 0;
  sub_1B9F0A534(a5, &a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_configuration]);
  sub_1B9F0A534(v42, &a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pdfFileNameProvider]);
  v15 = a5[3];
  v16 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v15);
  (*(v16 + 8))(v40, v15, v16);
  *&a6[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat] = *&v40[0];
  v17 = type metadata accessor for PDFAsyncViewController();
  v41.receiver = a6;
  v41.super_class = v17;
  v18 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0, ObjectType);
  v19 = sub_1BA4A6758();

  [v18 setTitle_];

  v20 = a5[3];
  v21 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v20);
  (*(v21 + 24))(v40, v20, v21);
  v22 = &v18[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  v23 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  v24 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 8];
  v25 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 16];
  v26 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 24];
  v27 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 32];
  v28 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 40];
  v29 = v40[1];
  *v22 = v40[0];
  *(v22 + 1) = v29;
  *(v22 + 2) = v40[2];
  sub_1BA213AD8(v23, v24, v25, v26, v27, v28);
  sub_1BA4A3E08();
  v30 = sub_1BA4A3E88();
  v31 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v40[0] = v33;
    *v32 = 136446210;
    nullsub_1();
    v34 = sub_1BA4A85D8();
    v36 = sub_1B9F0B82C(v34, v35, v40);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1B9F07000, v30, v31, "[%{public}s] Initialized", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1BFAF43A0](v33, -1, -1);
    MEMORY[0x1BFAF43A0](v32, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v13, v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v18;
}

void _s18HealthExperienceUI35PDFAsyncConfigurationViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_tableCellIdentifier);
  *v1 = 1819043139;
  v1[1] = 0xE400000000000000;
  v2 = sub_1BA4A6AE8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (!v3)
  {
    __break(1u);
  }

  v4 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_baseIdentifier);
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  *v4 = v5;
  v4[1] = v7;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___cancelBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___actionBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___tableView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchAnimationView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pinchedPageImageView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_pdfPadding) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfPaddingConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController____lazy_storage___pdfHeightConstraint) = 0;
  v8 = v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_state;
  *v8 = 0;
  *(v8 + 8) = -1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI35PDFAsyncConfigurationViewControllerC5State33_41892A8E3AE85A20C0CA0B347A3001CALLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA41E6F0(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA41E738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
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
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1BA41E780(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

void sub_1BA41E7EC(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BA336520(a1);
  }
}

id sub_1BA41E804(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1BA41E7E0(a1);
  }

  return a1;
}

uint64_t sub_1BA41E828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA419DEC(a1, v4, v5, v6);
}

void sub_1BA41E95C(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(v3 + 16))
  {
    v6 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a3);
    if (a1)
    {
      v7 = v6;
      [a2 updateChartSummaryTrendModel_viewController_];
      v6 = v7;
    }
  }
}

void DataTypeDetailChartCellItem.updateInteractiveChart(chartViewController:chartFactory:chartContext:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 32))(a4, a5);
  if (v8)
  {
    v9 = v8;
    v10 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a3);

    if (a1)
    {
      [a2 updateChartSummaryTrendModel:v10 viewController:a1];
    }
  }
}

uint64_t DataTypeDetailChartCellItem.isDifferent(from:)(void *a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v6 = a3[1](a2, a3);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
  v10 = sub_1BA4A7798();

  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
  }

  v11 = a3[2](a2, a3);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  if (!v13)
  {
    if (!v17)
    {
      goto LABEL_14;
    }

LABEL_11:

LABEL_20:
    v26 = 1;
    return v26 & 1;
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  if (v11 == v16 && v13 == v17)
  {
  }

  else
  {
    v19 = sub_1BA4A8338();

    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_14:
  v20 = a3[4](a2, a3);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = (*(v22 + 32))(v21, v22);
  v24 = v23;
  if (!v20)
  {
    if (!v23)
    {
      v26 = 0;
      return v26 & 1;
    }

    goto LABEL_20;
  }

  if (!v23)
  {

    goto LABEL_20;
  }

  sub_1B9F0ADF8(0, &qword_1EBBF2DA0, 0x1E69A4140);
  v25 = sub_1BA4A7798();

  v26 = v25 ^ 1;
  return v26 & 1;
}

id DataTypeDetailChartCellItem.createInteractiveChart(chartFactory:chartContext:summaryTrendModel:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a1;
  v49 = a3;
  sub_1B9F0CC94(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v42 = &v40 - v11;
  sub_1B9F0CC94(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v40 - v14;
  v16 = sub_1BA4A1728();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v43 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v40 - v22;
  v44 = sub_1BA4A0FA8();
  v24 = *(v44 - 8);
  v26 = MEMORY[0x1EEE9AC00](v44, v25);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a5 + 8);
  v45 = a4;
  v46 = v5;
  v47 = a5;
  v30 = v29(a4, a5, v26);
  v31 = [v30 identifier];

  if (v31)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = sub_1BA4A6758();

    if (a2)
    {
LABEL_3:
      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
      {
        v32 = 0;
      }

      else
      {
        v32 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
      }

      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue))
      {
        v41 = 0x2000;
      }

      else
      {
        v41 = 0;
      }

      sub_1BA41F398(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v15, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_1BA41F33C(v15, &qword_1EDC6E440, MEMORY[0x1E6969530]);
        v33 = v42;
        sub_1BA41F398(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v42, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
        v34 = v44;
        if ((*(v24 + 48))(v33, 1, v44) == 1)
        {
          v35 = v41;
          goto LABEL_15;
        }

        (*(v24 + 32))(v28, v33, v34);
      }

      else
      {
        (*(v17 + 32))(v23, v15, v16);
        (*(v17 + 16))(v43, v23, v16);
        sub_1BA4A0F78();
        (*(v17 + 8))(v23, v16);
        v34 = v44;
      }

      v35 = v41;
      goto LABEL_19;
    }
  }

  (*(v17 + 56))(v15, 1, 1, v16);
  sub_1BA41F33C(v15, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v33 = v42;
  v34 = v44;
  (*(v24 + 56))(v42, 1, 1, v44);
  v35 = 0;
  v32 = 0;
LABEL_15:
  sub_1BA41F33C(v33, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  sub_1BA4A1718();
  sub_1BA4A0F78();
LABEL_19:
  v36 = sub_1BA4A0F28();
  v37 = (*(v47 + 24))(v45);
  v38 = [v48 interactiveChartForTypeIdentifier:v31 preferredOverlay:v32 chartOptions:v35 displayDateInterval:v36 restorationUserActivity:v37 chartSummaryTrendModel:v49];

  (*(v24 + 8))(v28, v34);
  return v38;
}

void sub_1BA41F2B0(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    v6 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a3);
    if (a1)
    {
      v7 = v6;
      [a2 updateChartSummaryTrendModel_viewController_];
      v6 = v7;
    }
  }
}

uint64_t sub_1BA41F33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0CC94(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA41F398(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0CC94(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA41F498(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA41F534();
  return sub_1B9F445EC(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

void sub_1BA41F534()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v7], v31);
  if (v32)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC69320, &protocol descriptor for EmptyStateItem);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1))
      {
        sub_1B9F1134C(&v33, v36);
        v8 = v37;
        v9 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        (*(v9 + 8))(v8, v9);
        v11 = v10;
        v12 = sub_1BA41FEA0();
        if (v11)
        {
          v13 = sub_1BA4A6758();
        }

        else
        {
          v13 = 0;
        }

        [v12 setText_];

        v24 = v37;
        v25 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v26 = (*(v25 + 32))(v24, v25);
        v27 = sub_1BA420320();
        v28 = v27;
        v29 = &selRef_startAnimating;
        if ((v26 & 1) == 0)
        {
          v29 = &selRef_stopAnimating;
        }

        [v27 *v29];

        [*&v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner] setHidden_];
        __swift_destroy_boxed_opaque_existential_1(v36);
        return;
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    sub_1B9F445EC(v31, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  sub_1B9F445EC(&v33, &qword_1EBBF2710, &qword_1EDC69320, &protocol descriptor for EmptyStateItem, sub_1B9F0D950);
  sub_1BA4A3DD8();
  v14 = v1;
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v33 = v18;
    *v17 = 136315138;
    sub_1B9F68124(&v1[v7], v36);
    sub_1B9F0D718(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, &v33);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1B9F07000, v15, v16, "Unexpected item received in EmptyStateCellView: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v22 = sub_1BA41FEA0();
  v23 = sub_1BA4A6758();
  [v22 setText_];
}

uint64_t sub_1BA41F98C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA41F9E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA41F534();
  return sub_1B9F445EC(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

void (*sub_1BA41FA7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA41FAE0;
}

void sub_1BA41FAE0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA41F534();
  }
}

void sub_1BA41FB14(uint64_t *a2@<X8>)
{
  v3 = sub_1BA41FEA0();
  v4 = [v3 text];

  if (v4)
  {
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1BA41FB8C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = sub_1BA41FEA0();
  if (v1)
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

uint64_t sub_1BA41FC10(uint64_t a1)
{
  v1 = sub_1BA41FEA0();
  v2 = [v1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v3;
}

void sub_1BA41FC84(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA41FEA0();
  if (a2)
  {
    v4 = sub_1BA4A6758();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

void (*sub_1BA41FD10(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = sub_1BA41FEA0();
  v4 = [v3 text];

  if (v4)
  {
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1BA41FDA4;
}

void sub_1BA41FDA4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1[2] + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label);
  if (a2)
  {
    v5 = v3;
    if (v2)
    {

      v4 = sub_1BA4A6758();
    }

    else
    {
      v4 = 0;
    }

    [v5 setText_];
  }

  else
  {
    v5 = v3;
    if (v2)
    {
      v4 = sub_1BA4A6758();

      [v5 setText_];
    }

    else
    {
      v4 = 0;
      [v5 setText_];
    }
  }
}

id sub_1BA41FEA0()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label);
  }

  else
  {
    v41 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v11 = [objc_opt_self() secondaryLabelColor];
    [v10 setTextColor_];

    v12 = *MEMORY[0x1E69DDCF8];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v17;
        v23 = sub_1B9F0B82C(v21, v22, &v44);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1BA1508E8(0);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v44);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        LODWORD(v42) = 0;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v44);
        v17 = v39;

        *(v20 + 24) = v29;
        *(v20 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v30;
        v31 = v37;
        *v37 = v30;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F445EC(v31, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v2 + 8))(v6, v41);
      v0 = v40;
      v33 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    [v10 setNumberOfLines_];
    [v10 setTextAlignment_];
    [v10 setAdjustsFontForContentSizeCategory_];
    v34 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v35 = v8;
  return v9;
}

id sub_1BA420320()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA420398(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner) = a1;
}

void (*sub_1BA4203AC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA420320();
  return sub_1BA4203F4;
}

void sub_1BA4203F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner) = v2;
}

id sub_1BA42040C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView);
  }

  else
  {
    v4 = sub_1BA420470();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA420470()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v2 = 4.0;
  if (IsLargerThanSizeCategory)
  {
    v2 = 16.0;
  }

  [v0 setSpacing_];
  [v0 setAxis_];
  [v0 setAlignment_];
  v3 = sub_1BA420320();
  [v0 addArrangedSubview_];

  v4 = sub_1BA41FEA0();
  [v0 addArrangedSubview_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1BA420624(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EmptyStateCellView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1BA4206F0()
{
  v1 = sub_1BA42040C();
  [v0 addSubview_];

  v2 = objc_opt_self();
  sub_1B9F109F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4C27A0;
  v4 = [v0 heightAnchor];
  v5 = [v4 constraintGreaterThanOrEqualToConstant_];

  *(v3 + 32) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView] bottomAnchor];
  v8 = [v0 layoutMarginsGuide];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:-8.0];
  *(v3 + 40) = v10;
  v11 = [*&v0[v6] topAnchor];
  v12 = [v0 layoutMarginsGuide];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:8.0];
  *(v3 + 48) = v14;
  v15 = [*&v0[v6] centerXAnchor];
  v16 = [v0 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v3 + 56) = v17;
  v18 = [*&v0[v6] centerYAnchor];
  v19 = [v0 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v3 + 64) = v20;
  v21 = [*&v0[v6] leadingAnchor];
  v22 = [v0 layoutMarginsGuide];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintGreaterThanOrEqualToAnchor:v23 constant:16.0];
  *(v3 + 72) = v24;
  v25 = [*&v0[v6] trailingAnchor];
  v26 = [v0 layoutMarginsGuide];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintLessThanOrEqualToAnchor:v27 constant:-16.0];
  *(v3 + 80) = v28;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v29 = sub_1BA4A6AE8();

  [v2 activateConstraints_];

  return sub_1BA420B18();
}

id sub_1BA420B18()
{
  v1 = sub_1BA42040C();
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v3 = 4.0;
  if (IsLargerThanSizeCategory)
  {
    v3 = 16.0;
  }

  [v1 setSpacing_];

  v4 = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v5 = sub_1BA420320();
  v6 = v5;
  if (v4)
  {
    v7 = 101;
  }

  else
  {
    v7 = 100;
  }

  [v5 setActivityIndicatorViewStyle_];

  v8 = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView);

  return [v9 setAxis_];
}

id EmptyStateCellView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmptyStateCellView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ExportDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExportDataSourceItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void *sub_1BA420FA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0xD000000000000015;
  v22 = 0x80000001BA508050;
  sub_1BA4A1788();
  sub_1BA42173C(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v9);

  (*(v5 + 8))(v8, v4);
  v10 = v22;
  v1[2] = v21;
  v1[3] = v10;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v1[4] = sub_1BA4A1318();
  v1[5] = v11;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v21 = type metadata accessor for ProfileButtonCell();
  sub_1BA071208();
  v1[9] = sub_1BA4A6808();
  v1[10] = v12;
  sub_1B9F25350();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v13 + 40) = v14;
  *(v13 + 48) = 0xD000000000000013;
  *(v13 + 56) = 0x80000001BA508100;
  v15 = sub_1BA4A6AE8();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v2[11] = v17;
  v2[12] = v19;
  v2[13] = a1;
  return v2;
}

void sub_1BA421294(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 104) viewControllerFactory];
  [v5 createAndStartExportForViewController:a2 shareSheetSourceView:a1];
}

uint64_t ExportDataSourceItem.deinit()
{

  return v0;
}

uint64_t ExportDataSourceItem.__deallocating_deinit()
{
  ExportDataSourceItem.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA4213FC(uint64_t a1, uint64_t a2)
{
  v5 = [*(*v2 + 104) viewControllerFactory];
  [v5 createAndStartExportForViewController:a2 shareSheetSourceView:a1];
}

uint64_t sub_1BA421484(uint64_t a1, uint64_t a2)
{
  result = sub_1BA42173C(&qword_1EBBF2718, a2, type metadata accessor for ExportDataSourceItem, &protocol conformance descriptor for ExportDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA4214DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA421540(uint64_t a1, uint64_t a2)
{
  result = sub_1BA42173C(&qword_1EBBF2720, a2, type metadata accessor for ExportDataSourceItem, &protocol conformance descriptor for ExportDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA42173C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1BA421784()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 1, 0, 1);
    v6 = [objc_opt_self() configurationWithFont:v5 scale:1];
    v7 = sub_1BA4A6758();
    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    [v4 setImage_];
    v9 = [objc_opt_self() tertiaryLabelColor];
    [v4 setTintColor_];

    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_1BA421938()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView);
  }

  else
  {
    v4 = v0;
    v5 = sub_1BA421784();
    v6 = objc_allocWithZone(type metadata accessor for CellWithAccessoryView());
    v7 = sub_1BA33F3C8(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1BA421A08(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {

    MEMORY[0x1BFAF1350](0x736F6C637369442ELL, 0xEB00000000657275);
    v3 = a1;
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);

  v7 = v6(v3, v4);
  v8 = (*((*v5 & *v2) + 0x80))(v7);
  if (v8)
  {
    v9 = v8;
    v10.value._countAndFlagsBits = v3;
    v10.value._object = v4;
    v11 = v9;
    CellWithAccessoryView.updateAutomationIdentifiers(with:)(v10);
  }

  else
  {
    __break(1u);
  }
}

id DisclosureCellViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DisclosureCellViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView] = 0;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v4;
  v9.super_class = type metadata accessor for DisclosureCellViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id DisclosureCellViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DisclosureCellViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DisclosureCellViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1BA421E94()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView);
}

id DisclosureCellViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisclosureCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static UIImageSymbolConfiguration.sidebarSymbolConfig.getter()
{
  if (qword_1EDC5E2E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E2E8;

  return v1;
}

uint64_t sub_1BA421FC8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA422050();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA422050()
{
  sub_1B9F65DE4(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A4428();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v10, v31);
  if (v32)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBF2748, &protocol descriptor for SidebarSectionedDataSourceItem);
    if (swift_dynamicCast())
    {
      if (*(&v29 + 1))
      {
        sub_1B9F1134C(&v28, v31);
        sub_1BA4A43A8();
        v11 = v32;
        v12 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        (*(v12 + 40))(v11, v12);
        sub_1BA4A43D8();
        v13 = v32;
        v14 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        (*(v14 + 16))(v13, v14);
        sub_1BA4A43B8();
        v15 = sub_1BA4A42D8();
        sub_1BA4A42A8();
        v15(&v28, 0);
        *(&v29 + 1) = v5;
        v30 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
        (*(v6 + 16))(boxed_opaque_existential_1, v9, v5);
        MEMORY[0x1BFAF1EF0](&v28);
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
        strcpy(&v28, ".SidebarItem.");
        HIWORD(v28) = -4864;
        v20 = v32;
        v21 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v22 = (*(v21 + 16))(v20, v21);
        MEMORY[0x1BFAF1350](v22);

        v23 = v28;
        *&v28 = v17;
        *(&v28 + 1) = v19;

        MEMORY[0x1BFAF1350](v23, *(&v23 + 1));

        v24 = sub_1BA4A6758();

        [v0 setAccessibilityIdentifier_];

        sub_1BA4A4158();
        v25 = sub_1BA4A4168();
        (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
        MEMORY[0x1BFAF1F10](v4);
        (*(v6 + 8))(v9, v5);
        return __swift_destroy_boxed_opaque_existential_1(v31);
      }
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v31, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
  }

  return sub_1B9F43A50(&v28, &qword_1EBBF2740, &qword_1EBBF2748, &protocol descriptor for SidebarSectionedDataSourceItem);
}

uint64_t sub_1BA422494@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA4224EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA422050();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA422570(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA4225D4;
}

uint64_t sub_1BA4225D4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA422050();
  }

  return result;
}

id SidebarListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SidebarListCell.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item];
  v11 = type metadata accessor for SidebarListCell();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v13.receiver = v5;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

id SidebarListCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SidebarListCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI15SidebarListCell_item];
  v4 = type metadata accessor for SidebarListCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id SidebarListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA422A14(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1B9F2A568(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1BA42525C(v4);
  *a1 = v2;
}

uint64_t sub_1BA422A8C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  inited = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI31UninstalledAppSourcesDataSource_healthStore) = a1;
  v57 = inited;
  if (!(a2 >> 62))
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v60 = MEMORY[0x1E69E7CC0];
      v11 = a1;
      sub_1BA4A7F08();
      if ((v10 & 0x8000000000000000) == 0)
      {
        v53 = a1;
        v54 = v6;
        v55 = v5;
        v56 = v2;
        v12 = 0;
        v59 = (a2 & 0xC000000000000001);
        *&v58 = a2;
        do
        {
          v28 = v10;
          if (v59)
          {
            v13 = MEMORY[0x1BFAF2860](v12, a2);
          }

          else
          {
            v13 = *(a2 + 8 * v12 + 32);
          }

          v14 = v13;
          ++v12;
          type metadata accessor for AppSourcesItem();
          v15 = swift_allocObject();
          *(v15 + 40) = v11;
          *(v15 + 48) = v14;
          *(v15 + 32) = 0;
          v16 = v11;
          v17 = v14;
          v18 = [v17 source];
          v19 = [v18 name];

          v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v22 = v21;

          *(v15 + 56) = v20;
          *(v15 + 64) = v22;
          v23 = [v17 source];
          v24 = [v23 bundleIdentifier];

          v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v27 = v26;

          *(v15 + 16) = v25;
          *(v15 + 24) = v27;
          sub_1BA4A7ED8();
          sub_1BA4A7F18();
          sub_1BA4A7F28();
          sub_1BA4A7EE8();
          v10 = v28;
          a2 = v58;
        }

        while (v28 != v12);

        v29 = v60;
        v5 = v55;
        v6 = v54;
        inited = v57;
        a1 = v53;
        goto LABEL_10;
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_14:
    v59 = a1;

    sub_1B9FF6758();
    inited = swift_initStackObject();
    v58 = xmmword_1BA4B5480;
    *(inited + 1) = xmmword_1BA4B5480;
    sub_1B9F1B378(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = v58;
    if (qword_1EBBE8998 == -1)
    {
LABEL_15:
      v40 = qword_1EBBF2770;
      v39 = *algn_1EBBF2778;
      v41 = type metadata accessor for EmptyIconSourcesItem();
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      v43 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

      v44 = [v43 init];
      *(v42 + 40) = v39;
      *(v42 + 48) = v44;
      *(v42 + 32) = v40;
      *(v42 + 56) = 0;
      *(a1 + 56) = v41;
      *(a1 + 64) = sub_1BA4261F4(&qword_1EBBEA740, type metadata accessor for EmptyIconSourcesItem, &protocol conformance descriptor for EmptyIconSourcesItem);
      *(a1 + 32) = v42;
      v45 = v57;
      sub_1BA4A1788();
      v46 = sub_1BA4A1748();
      v48 = v47;
      (*(v6 + 8))(v45, v5);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v50 = Array<A>.identifierToIndexDict()(v49);

      *(inited + 4) = 0;
      *(inited + 5) = 0;
      *(inited + 6) = a1;
      *(inited + 7) = v50;
      *(inited + 8) = v46;
      *(inited + 9) = v48;
      v37 = sub_1B9F1DAFC(inited, 1, sub_1BA426600, 0);

      return v37;
    }

LABEL_18:
    swift_once();
    goto LABEL_15;
  }

  if (!sub_1BA4A7CC8())
  {
    goto LABEL_14;
  }

  v10 = sub_1BA4A7CC8();
  if (v10)
  {
    goto LABEL_3;
  }

  v38 = a1;

  v29 = MEMORY[0x1E69E7CC0];
LABEL_10:
  sub_1B9FF6758();
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1BA4B5480;
  v31 = sub_1B9FE4FAC(v29);

  sub_1BA4A1788();
  v32 = sub_1BA4A1748();
  v34 = v33;
  (*(v6 + 8))(inited, v5);
  v35 = MEMORY[0x1E69E7CC0];
  *(v30 + 48) = MEMORY[0x1E69E7CC0];
  *(v30 + 56) = sub_1B9F1C5F0(v35);
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;

  *(v30 + 48) = v31;
  v36 = Array<A>.identifierToIndexDict()(v31);

  *(v30 + 56) = v36;
  *(v30 + 64) = v32;
  *(v30 + 72) = v34;
  v37 = sub_1B9F1DAFC(v30, 1, sub_1BA426600, 0);

  return v37;
}

void *sub_1BA423090(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBBE8850 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EBBF0B98);
  sub_1B9F37E38(v8, v7);
  v7[6] = 0x4034000000000000;
  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA4263C4(v7, type metadata accessor for ListLayoutConfiguration);
  return v9;
}

uint64_t sub_1BA4231FC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1BA423308(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBBE8850 != -1)
  {
    v10 = v5;
    swift_once();
    v5 = v10;
  }

  __swift_project_value_buffer(v5, qword_1EBBF0B98);
  ListLayoutConfiguration.withFooter.getter(v7);
  *(v7 + 6) = 0x4034000000000000;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA4263C4(v7, type metadata accessor for ListLayoutConfiguration);
  return v8;
}

id sub_1BA423408()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    v17[1] = v2;
    *v10 = 136446210;
    swift_getMetatypeMetadata();
    v12 = sub_1BA4A6808();
    v14 = sub_1B9F0B82C(v12, v13, v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%{public}s] Starting sourceListDataSource fetch", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v15 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_sourceListDataSource);
  [v15 setShouldFetchAppIcons_];
  [v15 setShouldFetchPurposeStrings_];
  [v15 setShouldIncludeSpecialSources_];
  [v15 setDeliverUpdates_];
  [v15 fetchSources];
  return [v15 registerObserver_];
}

void sub_1BA423660(void *a1)
{
  v3 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v33 - v11;
  sub_1BA4A3D88();
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v8;
    v36 = v4;
    v34 = v5;
    v17 = v16;
    v37 = v16;
    v38 = v3;
    *v15 = 136446210;
    swift_getMetatypeMetadata();
    v18 = sub_1BA4A6808();
    v20 = a1;
    v21 = sub_1B9F0B82C(v18, v19, &v37);

    *(v15 + 4) = v21;
    a1 = v20;
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%{public}s] Received callback for sourceListDataSource fetch", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v22 = v17;
    v5 = v34;
    v8 = v35;
    v4 = v36;
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
  }

  v23 = *(v5 + 8);
  v23(v12, v4);
  v24 = [a1 sources];
  if (v24)
  {
    v25 = v24;
    sub_1BA423A04(v24);
  }

  else
  {
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      v38 = v3;
      *v28 = 136446210;
      swift_getMetatypeMetadata();
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v37);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%{public}s] App data sources did not get fetched", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    v23(v8, v4);
  }
}