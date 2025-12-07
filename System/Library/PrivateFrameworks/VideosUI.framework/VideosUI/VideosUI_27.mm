uint64_t sub_1E3833060(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1E38330E4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  OUTLINED_FUNCTION_3_0(v8, v12);
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1E3833198()
{
  v1 = OBJC_IVAR___VUIASCAppInstallerViewController_forceDSIDless;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E38331D8(char a1)
{
  v3 = OBJC_IVAR___VUIASCAppInstallerViewController_forceDSIDless;
  result = OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR___VUIASCAppInstallerViewController_forceDSIDless, v5);
  *(v1 + v3) = a1;
  return result;
}

void *AppInstallerViewController.__allocating_init(title:subtitle:request:forceDSIDless:onFlowComplete:)()
{
  OUTLINED_FUNCTION_4_46();
  v1 = objc_allocWithZone(v0);
  return AppInstallerViewController.init(title:subtitle:request:forceDSIDless:onFlowComplete:)();
}

void *AppInstallerViewController.init(title:subtitle:request:forceDSIDless:onFlowComplete:)()
{
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_25();
  v10 = [v8 v9];
  sub_1E3835BB4(v7, v6, v10);
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v12 + 240))(v5, v4);
  v13 = *((*v11 & *v10) + 0x108);
  v14 = v3;
  v13(v3);

  v15 = OBJC_IVAR___VUIASCAppInstallerViewController_forceDSIDless;
  OUTLINED_FUNCTION_3_0(v10 + OBJC_IVAR___VUIASCAppInstallerViewController_forceDSIDless, v25);
  *(v10 + v15) = v2;
  v16 = (v10 + OBJC_IVAR___VUIASCAppInstallerViewController_onFlowComplete);
  OUTLINED_FUNCTION_3_0(v10 + OBJC_IVAR___VUIASCAppInstallerViewController_onFlowComplete, &v24);
  v17 = *v16;
  v18 = v16[1];
  *v16 = v1;
  v16[1] = v0;
  v19 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF604(v19, v20);
  sub_1E34AF594(v17, v18);

  v21 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF594(v21, v22);
  return v10;
}

id AppInstallerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AppInstallerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___VUIASCAppInstallerViewController_previousState] = 0;
  v5 = &v3[OBJC_IVAR___VUIASCAppInstallerViewController_onFlowComplete];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR___VUIASCAppInstallerViewController_onAppInstall];
  *v6 = 0;
  *(v6 + 1) = 0;
  OUTLINED_FUNCTION_14_36(&OBJC_IVAR___VUIASCAppInstallerViewController_previousState);
  if (v7)
  {
    v8 = sub_1E4205ED4();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for AppInstallerViewController();
  v9 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v8, a3);

  v10 = v9;
  sub_1E3834A38(v10);

  return v10;
}

void sub_1E38336C8()
{
  *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController_previousState) = 0;
  v1 = (v0 + OBJC_IVAR___VUIASCAppInstallerViewController_onFlowComplete);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___VUIASCAppInstallerViewController_onAppInstall);
  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_14_36(&OBJC_IVAR___VUIASCAppInstallerViewController_previousState);
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3833780()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 288))();

  return sub_1E3835C3C(v1);
}

void sub_1E38337DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v3 += 36;
  v4 = *v3;
  v5 = (*v3)();
  if (a2)
  {

    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText_];

  v7 = v4();

  [v7 setHidden_];
}

uint64_t sub_1E38338EC(uint64_t *a1)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 288))();
  *a1 = sub_1E3835C3C(v4);
  a1[1] = v5;
  return OUTLINED_FUNCTION_116();
}

void sub_1E3833968(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_13_8();
    sub_1E38337DC(v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_13_8();
    sub_1E38337DC(v4, v5);
  }
}

id sub_1E38339D4()
{
  v0 = sub_1E3834E3C();
  v1 = [v0 request];

  return v1;
}

void sub_1E3833A18(void *a1)
{
  v2 = sub_1E3834E3C();
  [v2 setRequest_];
}

uint64_t sub_1E3833A70(void *a1)
{
  a1[1] = v1;
  v3 = sub_1E3834E3C();
  v4 = [v3 request];

  *a1 = v4;
  return OUTLINED_FUNCTION_116();
}

void sub_1E3833ADC(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView) setRequest_];
}

Swift::Void __swiftcall AppInstallerViewController.viewDidLoad()()
{
  v1 = v0;
  v151.receiver = v0;
  v151.super_class = type metadata accessor for AppInstallerViewController();
  objc_msgSendSuper2(&v151, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429DCC0;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  v150 = v2;
  v148 = v3;
  v5 = OUTLINED_FUNCTION_19_23();
  if (!v5)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = v5;
  for (i = 0; i != 2; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](i, inited);
    }

    else
    {
      if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v8 = *(inited + 8 * i + 32);
    }

    v9 = v8;
    [v6 addLayoutGuide_];
  }

  swift_setDeallocating();
  sub_1E377D458();

  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1E429DCC0;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x120);
  *(v10 + 32) = v12();
  v149 = *((*v11 & *v1) + 0x150);
  *(v10 + 40) = v149();
  v13 = [v1 0x1FB648AF8];
  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = v13;
  for (j = 0; j != 2; ++j)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1E6911E60](j, v10);
    }

    else
    {
      if (j >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v10 + 8 * j + 32);
    }

    v17 = v16;
    [v14 addSubview_];
  }

  swift_setDeallocating();
  sub_1E377D458();

  v18 = v12();
  LODWORD(v19) = 1144750080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];

  v20 = v149();
  LODWORD(v21) = 1144750080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v21];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E42A17F0;
  v23 = [v150 topAnchor];
  v24 = OUTLINED_FUNCTION_19_23();
  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 topAnchor];
  v28 = OUTLINED_FUNCTION_3_42();
  v30 = [v28 v29];

  *(v22 + 32) = v30;
  v31 = [v150 leadingAnchor];
  v32 = OUTLINED_FUNCTION_19_23();
  if (!v32)
  {
    goto LABEL_33;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 leadingAnchor];
  v36 = OUTLINED_FUNCTION_3_42();
  v38 = [v36 v37];

  *(v22 + 40) = v38;
  v39 = [v150 trailingAnchor];
  v40 = OUTLINED_FUNCTION_19_23();
  if (!v40)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v41 = v40;
  v42 = [v40 safeAreaLayoutGuide];

  v43 = [v42 trailingAnchor];
  v44 = OUTLINED_FUNCTION_3_42();
  v46 = [v44 v45];

  *(v22 + 48) = v46;
  v47 = v12();
  v48 = [v47 topAnchor];

  v49 = [v150 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v22 + 56) = v50;
  v51 = v12();
  v52 = [v51 leadingAnchor];

  v53 = [v1 view];
  if (!v53)
  {
    goto LABEL_35;
  }

  v54 = v53;
  v55 = [v53 readableContentGuide];

  v56 = [v55 leadingAnchor];
  v57 = OUTLINED_FUNCTION_3_42();
  v59 = [v57 v58];

  *(v22 + 64) = v59;
  v60 = v12();
  v61 = [v60 trailingAnchor];

  v62 = [v1 view];
  if (!v62)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v63 = v62;
  v64 = [v62 readableContentGuide];

  v65 = [v64 trailingAnchor];
  v66 = OUTLINED_FUNCTION_3_42();
  v68 = [v66 v67];

  *(v22 + 72) = v68;
  v69 = v12();
  v70 = [v69 bottomAnchor];

  v71 = v149();
  v72 = [v71 topAnchor];

  v73 = [v70 constraintEqualToAnchor:v72 constant:-16.0];
  *(v22 + 80) = v73;
  v74 = v149();
  v75 = [v74 topAnchor];

  v76 = v12();
  v77 = [v76 bottomAnchor];

  v78 = [v75 constraintEqualToAnchor:v77 constant:16.0];
  *(v22 + 88) = v78;
  v79 = v149();
  v80 = [v79 leadingAnchor];

  v81 = OUTLINED_FUNCTION_15_39();
  if (!v81)
  {
    goto LABEL_37;
  }

  v82 = v81;
  v83 = [v81 readableContentGuide];

  v84 = [v83 leadingAnchor];
  v85 = OUTLINED_FUNCTION_3_42();
  v87 = [v85 v86];

  *(v22 + 96) = v87;
  v88 = v149();
  v89 = [v88 trailingAnchor];

  v90 = OUTLINED_FUNCTION_15_39();
  if (!v90)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v91 = v90;
  v92 = [v90 readableContentGuide];

  v93 = [v92 trailingAnchor];
  v94 = OUTLINED_FUNCTION_3_42();
  v96 = [v94 v95];

  *(v22 + 104) = v96;
  v97 = v149();
  v98 = [v97 bottomAnchor];

  v99 = [v148 topAnchor];
  v100 = [v98 constraintEqualToAnchor_];

  *(v22 + 112) = v100;
  v101 = [v148 bottomAnchor];
  v102 = OUTLINED_FUNCTION_15_39();
  if (!v102)
  {
    goto LABEL_39;
  }

  v103 = v102;
  v104 = [v102 safeAreaLayoutGuide];

  v105 = [v104 &selRef_catchUpToLiveViewControllerWithIndex_playable_segments_metadataViewModels_nextToken_ + 5];
  v106 = OUTLINED_FUNCTION_3_42();
  v108 = [v106 v107];

  *(v22 + 120) = v108;
  v109 = [v148 leadingAnchor];
  v110 = OUTLINED_FUNCTION_15_39();
  if (!v110)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v111 = v110;
  v112 = [v110 safeAreaLayoutGuide];

  v113 = [v112 leadingAnchor];
  v114 = OUTLINED_FUNCTION_3_42();
  v116 = [v114 v115];

  *(v22 + 128) = v116;
  v117 = [v148 trailingAnchor];
  v118 = OUTLINED_FUNCTION_15_39();
  if (!v118)
  {
    goto LABEL_41;
  }

  v119 = v118;
  v147 = objc_opt_self();
  v120 = [v119 safeAreaLayoutGuide];

  v121 = [v120 trailingAnchor];
  v122 = [v117 constraintEqualToAnchor_];

  *(v22 + 136) = v122;
  v123 = [v150 heightAnchor];
  v124 = [v148 heightAnchor];
  v125 = [v123 &selRef_disableBackgroundMediaPlayback + 5];

  *(v22 + 144) = v125;
  v126 = sub_1E3834E3C();
  v127 = [v126 topAnchor];

  v128 = v149();
  v129 = [v128 topAnchor];

  v130 = [v127 constraintEqualToAnchor:v129 constant:16.0];
  *(v22 + 152) = v130;
  v131 = OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView;
  v132 = [*(v1 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView) bottomAnchor];
  v133 = v149();
  v134 = [v133 bottomAnchor];

  v135 = [v132 constraintEqualToAnchor:v134 constant:-16.0];
  *(v22 + 160) = v135;
  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  v136 = sub_1E42062A4();

  [v147 activateConstraints_];

  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1E429DCC0;
  v138 = [*(v1 + v131) leadingAnchor];
  v139 = v149();
  v140 = [v139 leadingAnchor];

  v141 = [v138 constraintEqualToAnchor_];
  *(v137 + 32) = v141;
  v142 = [*(v1 + v131) trailingAnchor];
  v143 = v149();
  v144 = [v143 trailingAnchor];

  v145 = [v142 constraintEqualToAnchor_];
  *(v137 + 40) = v145;
  v146 = sub_1E42062A4();

  [v147 activateConstraints_];
}

void sub_1E3834A38(uint64_t a1)
{
  v2 = v1;
  if (sub_1E39DFFC8())
  {
    sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
    v3 = sub_1E3834BC8();
    v14 = type metadata accessor for AppInstallerViewController();
    v13[0] = v2;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v4 = v2;
    v5 = sub_1E3835830(v3, 0, v13, sel_handleCancel);
  }

  else
  {
    v6 = [objc_allocWithZone(VUILocalizationManager) init];
    v7 = sub_1E3741090(0xD00000000000001ELL, 0x80000001E425F750, v6);
    v9 = v8;

    v14 = type metadata accessor for AppInstallerViewController();
    v13[0] = v2;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v10 = v2;
    v5 = sub_1E3835998(v7, v9, 2, v13, sel_handleCancel);
  }

  v11 = v5;
  v12 = [v2 navigationItem];
  [v12 setRightBarButtonItem:v11 animated:0];
}

id sub_1E3834BC8()
{
  v0 = sub_1E4205ED4();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

id sub_1E3834C2C()
{
  v1 = OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setNumberOfLines_];
    [v4 setTextAlignment_];
    [v4 setTextColor_];
    [v4 setLineBreakMode_];
    v5 = [objc_opt_self() systemFontOfSize_];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
    v7 = [v6 scaledFontForFont_];

    [v4 setFont_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setMaximumContentSizeCategory_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1E3834DE8(id *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3834C2C();
  return OUTLINED_FUNCTION_116();
}

id sub_1E3834E3C()
{
  v1 = OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView;
  v2 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(MEMORY[0x1E698B3C8]), sel_initWithFrame_);
    [v4 setAutomaticallyPresentsProductDetails_];
    v5 = v4;
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setMaximumContentSizeCategory_];

    [v5 setSize_];
    [v5 setDelegate_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3834F2C()
{
  v1 = OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___ascContainerView;
  v2 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___ascContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___ascContainerView);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1E3834E3C();
    [v4 addSubview_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1E3834FE0(id *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3834F2C();
  return OUTLINED_FUNCTION_116();
}

void sub_1E3835034()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_4_0();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_1E3835E64;
    v24 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v21 = v4;
    v22 = &block_descriptor_12;
    v5 = _Block_copy(&aBlock);

    [v2 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }

  v6 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  aBlock = sub_1E4205F14();
  v20 = v8;
  v9 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_12_36(aBlock);
  v10 = sub_1E4205F14();
  *(inited + 96) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  aBlock = sub_1E4205F14();
  v20 = v12;
  OUTLINED_FUNCTION_12_36(aBlock);
  v13 = sub_1E4205F14();
  *(inited + 168) = v9;
  *(inited + 144) = v13;
  *(inited + 152) = v14;
  aBlock = sub_1E4205F14();
  v20 = v15;
  OUTLINED_FUNCTION_12_36(aBlock);
  v16 = sub_1E4205F14();
  *(inited + 240) = v9;
  *(inited + 216) = v16;
  *(inited + 224) = v17;
  sub_1E4205CB4();
  v18 = sub_1E4205C44();

  [v6 recordClick_];
}

void AppInstallerViewController.lockupView(_:appStateDidChange:)(uint64_t a1, void *a2)
{
  v3 = OBJC_IVAR___VUIASCAppInstallerViewController_previousState;
  if (*&v2[OBJC_IVAR___VUIASCAppInstallerViewController_previousState])
  {
    v4 = sub_1E4205F14();
    v6 = v5;
    if (v4 == sub_1E4205F14() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_1E42079A4();

      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (*&v2[v3])
    {
      v11 = *MEMORY[0x1E698B2B0];
      v12 = sub_1E4205F14();
      v14 = v13;
      if (v12 == sub_1E4205F14() && v14 == v15)
      {
      }

      else
      {
        v17 = sub_1E42079A4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_4_0();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      v42 = sub_1E3835CAC;
      v43 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      OUTLINED_FUNCTION_0_48();
      v40 = v19;
      v41 = &block_descriptor_15;
      v20 = _Block_copy(&aBlock);
      v21 = v2;

      [v21 dismissViewControllerAnimated:1 completion:v20];
      _Block_release(v20);
      v22 = [objc_opt_self() sharedInstance];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BD0;
      aBlock = sub_1E4205F14();
      v39 = v24;
      v25 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_11_36();
      v26 = sub_1E4205F14();
      *(inited + 96) = v25;
      *(inited + 72) = v26;
      *(inited + 80) = v27;
      aBlock = sub_1E4205F14();
      v39 = v28;
      OUTLINED_FUNCTION_11_36();
      v29 = sub_1E4205F14();
      *(inited + 168) = v25;
      *(inited + 144) = v29;
      *(inited + 152) = v30;
      aBlock = sub_1E4205F14();
      v39 = v31;
      OUTLINED_FUNCTION_11_36();
      v32 = sub_1E4205F14();
      *(inited + 240) = v25;
      *(inited + 216) = v32;
      *(inited + 224) = v33;
      sub_1E4205CB4();
      v34 = sub_1E4205C44();

      [v22 recordClick_];
    }

LABEL_21:
    v35 = *&v2[v3];
    *&v2[v3] = a2;
    v36 = a2;

    return;
  }

  *&v2[OBJC_IVAR___VUIASCAppInstallerViewController_previousState] = a2;

  v10 = a2;
}

id AppInstallerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInstallerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3835830(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a3[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v12 = *(v9 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_1E4207994();
    (*(v12 + 8))(v15, v9);
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 initWithImage:a1 style:a2 target:v16 action:a4];

  swift_unknownObjectRelease();
  return v17;
}

id sub_1E3835998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_1E4207994();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 initWithTitle:v10 style:a3 target:v17 action:a5];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1E3835B1C(uint64_t a1)
{
  sub_1E3835E20(&unk_1ECF36D50, &unk_1E42A193C);
  sub_1E3835E20(&unk_1ECF2B900, &unk_1E42A18DC);

  return sub_1E4207764();
}

void sub_1E3835BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setTitle_];
}

uint64_t sub_1E3835C3C(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

void (*sub_1E3835CAC())(void)
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 184))();
  if (result)
  {
    v3 = result;
    v4 = v2;
    result();

    return sub_1E34AF594(v3, v4);
  }

  return result;
}

void type metadata accessor for ASCAppState()
{
  if (!qword_1ECF36D30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF36D30);
    }
  }
}

uint64_t sub_1E3835E20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASCAppState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3835E64()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA0))();

    if (v2)
    {
      v2(0);
      v3 = OUTLINED_FUNCTION_13_8();
      sub_1E34AF594(v3, v4);
    }
  }
}

uint64_t sub_1E3835F40()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FED54();
  *(v0 + 24) = sub_1E41FED34();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_33(v1);

  return MEMORY[0x1EEE435A8](v2, 0);
}

uint64_t sub_1E3835FE4()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v5 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E383612C, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t sub_1E383612C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3836208(uint64_t a1, const void *a2)
{
  v4 = sub_1E41FDDF4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  sub_1E41FDDA4();
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1E3836320;

  return static VUINetworkManagerProxy.execute(request:)(v5);
}

uint64_t sub_1E3836320()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v8 = *v1;
  *v7 = *v1;

  v9 = v5[5];
  (*(v5[3] + 8))(v5[4], v5[2]);
  if (v2)
  {
    v10 = sub_1E41FE264();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, v4, 0);
    _Block_release(v9);
  }

  v11 = v8[1];

  return v11();
}

double sub_1E38364EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1E42A1A18;
  v9[5] = v8;
  sub_1E3836FEC(0, 0, v6, &unk_1E42A1A28, v9);

  return result;
}

uint64_t sub_1E3836610()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FED54();
  *(v0 + 24) = sub_1E41FED34();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_33(v1);

  return MEMORY[0x1EEE43598](v2);
}

uint64_t sub_1E38366B0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3836830(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1E41FDDF4();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_1E41FDDA4();
  v8 = a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1E3836958;

  return VUINetworkManagerProxy.cancel(request:)(v7);
}

uint64_t sub_1E3836958()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = v1[2];
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  (*(v4 + 8))(v3, v5);
  v2[2](v2);
  _Block_release(v2);

  OUTLINED_FUNCTION_54();

  return v9();
}

id VUINetworkManagerProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUINetworkManagerProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUINetworkManagerProxy();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUINetworkManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUINetworkManagerProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3836BCC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_52(v1);

  return v4(v3);
}

uint64_t sub_1E3836C60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1E327C238;

  return v6();
}

uint64_t sub_1E3836D48()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_0(v4);
  *v5 = v6;
  v5[1] = sub_1E327C238;

  return sub_1E3836C60(v1, v2, v3);
}

uint64_t sub_1E3836E00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1E3286A7C;

  return v7();
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E3836F28()
{
  OUTLINED_FUNCTION_134();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30_0(v6);
  *v7 = v8;
  v7[1] = sub_1E327C238;

  return sub_1E3836E00(v2, v3, v4, v5);
}

uint64_t sub_1E3836FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1E325A828(a3, v22 - v10);
  v12 = sub_1E4206474();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1E325A8C0(v11);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1E42063B4();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1E4205FB4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1E325A8C0(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325A8C0(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1E3837288()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3837320()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_52(v1);

  return v4(v3);
}

void sub_1E38373B4()
{
  v49 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons;
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons);
  v2 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v55 = 0;
  v56 = 1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);

  v51 = v0;
  v5 = 0;
  v50 = v3(v4);
  v6 = (v50 + 80);
  while (1)
  {
    v7 = *(v50 + 16);
    if (v5 == v7)
    {
      break;
    }

    if (v5 >= v7)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v52 = v6;
    v53 = v5;
    v9 = *(v6 - 1);
    v8 = *v6;
    v11 = *(v6 - 3);
    v10 = *(v6 - 2);
    v13 = *(v6 - 5);
    v12 = *(v6 - 4);
    *&v60 = *(v6 - 6);
    *(&v60 + 1) = v13;
    v61 = v12;
    v62 = v11;
    v63 = v10;
    v64 = v9;
    v65 = v8;
    v66[0] = v60;
    v14 = *((*MEMORY[0x1E69E7D40] & *v51) + 0xC0);
    sub_1E383A1D0(v66, aBlock);

    v14(&v58, v15);
    v17 = v58;
    v16 = v59;
    if (!v59)
    {
      OUTLINED_FUNCTION_13_45(v58, 0);
      sub_1E3782C70(v66);
      v21 = v53;
      goto LABEL_14;
    }

    v18 = v66[0];

    OUTLINED_FUNCTION_13_45(v17, v16);
    if (v18 == v17 && v16 == *(&v18 + 1))
    {

      sub_1E3782C70(v66);
      v21 = v53;
LABEL_13:
      v55 = v21;
      v56 = 0;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_11_6();
    v20 = sub_1E42079A4();

    sub_1E3782C70(v66);
    v21 = v53;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_14:
    v22 = v1 >> 62;
    if (v1 >> 62)
    {
      if (!sub_1E4207384())
      {
LABEL_52:
        v38 = sub_1E38398F4(&v60);
        sub_1E3839C28(&v60);
        v37 = v38;
        [v37 addTarget:v51 action:sel_categoryButtonTapped_ forControlEvents:64];
        [v51 addSubview_];
        v25 = v37;
        goto LABEL_53;
      }
    }

    else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    v23 = v1 & 0xC000000000000001;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1E6911E60](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v24 = *(v1 + 32);
    }

    v25 = v24;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v22)
    {
      if (!sub_1E4207384())
      {
        goto LABEL_73;
      }

      if (!sub_1E4207384())
      {
        goto LABEL_74;
      }

      if (!v23)
      {
        v30 = v25;
LABEL_31:
        if (!sub_1E4207384())
        {
          goto LABEL_77;
        }

        if (sub_1E4207384() < 1)
        {
          goto LABEL_76;
        }

        v29 = sub_1E4207384();
        goto LABEL_34;
      }
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      if (!v23)
      {
        v27 = v24;
        goto LABEL_28;
      }
    }

    v28 = v25;
    MEMORY[0x1E6911E60](0, v1);
    swift_unknownObjectRelease();
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v22)
    {
      goto LABEL_31;
    }

    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_77;
    }

LABEL_28:
    v29 = *(v26 + 16);
    if (!v29)
    {
      goto LABEL_75;
    }

LABEL_34:
    v31 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_69;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v22)
    {
      v33 = 0;
    }

    else
    {
      v33 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v33 != 1 || (v34 = v1 & 0xFFFFFFFFFFFFFF8, v31 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v22)
      {
        sub_1E4207384();
      }

      v1 = sub_1E4207514();
      v34 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v1 >> 62)
    {
      v35 = sub_1E4207384();
    }

    else
    {
      v35 = *(v34 + 16);
    }

    if (__OFSUB__(v35, 1))
    {
      goto LABEL_70;
    }

    memmove((v34 + 32), (v34 + 40), 8 * (v35 - 1));
    if (v1 >> 62)
    {
      v36 = sub_1E4207384();
    }

    else
    {
      v36 = *(v34 + 16);
    }

    if (__OFSUB__(v36, 1))
    {
      goto LABEL_71;
    }

    *(v34 + 16) = v36 - 1;
    v37 = sub_1E4205ED4();
    sub_1E3839C28(&v60);
    [v25 setTitle:v37 forState:0];
LABEL_53:

    MEMORY[0x1E6910BF0]();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();

    v2 = v57;
    v6 = v52 + 7;
    v5 = v21 + 1;
  }

  v39 = sub_1E32AE9B0(v1);
  if (v39)
  {
    v40 = v39;
    if (v39 < 1)
    {
      goto LABEL_79;
    }

    for (i = 0; i != v40; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1E6911E60](i, v1);
      }

      else
      {
        v42 = *(v1 + 8 * i + 32);
      }

      v43 = v42;
      [v42 removeFromSuperview];
    }
  }

  *(v51 + v49) = v2;

  v44 = objc_opt_self();
  OUTLINED_FUNCTION_2_4();
  v45 = swift_allocObject();
  *(v45 + 16) = v51;
  *(v45 + 24) = &v55;
  OUTLINED_FUNCTION_2_4();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1E383A22C;
  *(v46 + 24) = v45;
  aBlock[4] = sub_1E37D1918;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3839B50;
  aBlock[3] = &block_descriptor_48;
  v47 = _Block_copy(aBlock);
  v48 = v51;

  [v44 performWithoutAnimation_];
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if ((v47 & 1) == 0)
  {
    return;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

uint64_t sub_1E3837A54()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

void sub_1E3837A98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_categories;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_categories, v4);
  *(v1 + v3) = a1;

  sub_1E38373B4();
}

void (*sub_1E3837AEC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3837B40;
}

void sub_1E3837B40(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E38373B4();
  }
}

uint64_t sub_1E3837B74()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectionHandler);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;
  sub_1E34AF604(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E3837BCC(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectionHandler);
  OUTLINED_FUNCTION_3_0(v5, v6);
  v7 = *v2;
  v8 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return sub_1E34AF594(v7, v8);
}

void sub_1E3837C6C(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  sub_1E3837D00(v3, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
}

void sub_1E3837D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1E3837D64(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory);
  OUTLINED_FUNCTION_3_0(v3, v4);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = *(a1 + 48);
  return sub_1E3837DC8(v5, v6);
}

uint64_t sub_1E3837DC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_1E3837E2C()
{
  v1 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setBackgroundColor_];
    [v4 setHidden_];
    [v4 setClipsToBounds_];
    [v0 addSubview_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3837EF8()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69DDC50];
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = v4;
  LOBYTE(v4) = sub_1E4206C94();

  if (v4)
  {

    v5 = v2;
  }

  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B988, &unk_1E42A1A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v9 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40, &unk_1E4298B00);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1E4297BE0;
  v11 = *MEMORY[0x1E69DB990];
  *(v10 + 32) = *MEMORY[0x1E69DB990];
  *(v10 + 40) = *MEMORY[0x1E69DB980];
  type metadata accessor for TraitKey(0);
  type metadata accessor for Weight(0);
  OUTLINED_FUNCTION_1_72();
  sub_1E3839C7C(v12, v13, &unk_1E4298E20);
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = sub_1E4205CB4();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50, &qword_1E4298EA0);
  *(inited + 40) = v17;
  type metadata accessor for AttributeName(0);
  OUTLINED_FUNCTION_0_49();
  sub_1E3839C7C(v18, v19, &unk_1E4299268);
  sub_1E4205CB4();
  v20 = sub_1E4205C44();

  v21 = [v14 fontDescriptorByAddingAttributes_];

  v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  return v22;
}

id sub_1E38381E8()
{
  *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_categories] = MEMORY[0x1E69E7CC0];
  v1 = &v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectionHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 6) = 0;
  OUTLINED_FUNCTION_7_55(&OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds, 0);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CategoryFilterBar();
  v3 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setShowsHorizontalScrollIndicator_];
  [v3 setShowsVerticalScrollIndicator_];
  [v3 setAlwaysBounceHorizontal_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E4297BE0;
  *(v4 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0, 0x1E69DF7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v5 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9[4] = sub_1E3838428;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E3790FBC;
  v9[3] = &block_descriptor_16;
  v7 = _Block_copy(v9);

  [v3 vui:v5 registerForTraitChanges:v7 withHandler:?];
  _Block_release(v7);

  return v3;
}

void sub_1E3838428()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3838474();
  }
}

void sub_1E3838474()
{
  v1 = v0;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_needsButtonsLayout;
  if ((v1[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_needsButtonsLayout] & 1) == 0)
  {
    v12 = *&v1[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons];
    if (v12 >> 62)
    {
      if (!sub_1E4207384())
      {
        return;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v1[v11] = 1;
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v13 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    aBlock[4] = sub_1E3839E00;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v15;
    aBlock[3] = &block_descriptor_38;
    v16 = _Block_copy(aBlock);
    v17 = v1;

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E3839C7C(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v10, v4, v16);
    _Block_release(v16);

    v18 = OUTLINED_FUNCTION_11_6();
    v19(v18);
    (*(v7 + 8))(v10, v5);
  }
}

void sub_1E3838780()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_categories) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectionHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  OUTLINED_FUNCTION_7_55(&OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds, 0);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3838848()
{
  v1 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons);
  if (v2 >> 62)
  {
    if (!sub_1E4207384())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = *(v0 + v1);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x1E6911E60](0, v3);

    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_6:
    [v4 frame];
    CGRectGetHeight(v5);

    return;
  }

  __break(1u);
}

void sub_1E3838974()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CategoryFilterBar();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v7 = &v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds];
  if (*&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds + 16] != v1 || *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds + 24] != v2)
  {
    v9 = v1;
    v10 = v2;
    type metadata accessor for LayoutGrid();
    v13.origin.x = OUTLINED_FUNCTION_6();
    Width = CGRectGetWidth(v13);
    sub_1E3A258E4(Width);
    [v0 setContentInset_];
    sub_1E3838474();
    *v7 = v4;
    *(v7 + 1) = v6;
    v7[2] = v9;
    v7[3] = v10;
  }
}

void sub_1E3838A90(unint64_t a1, char a2, char a3)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = v4 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v63 = a1;
  if (a2)
  {
    v67 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    goto LABEL_8;
  }

  v9 = a1;
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(v10 + 16) <= v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v11 = (v10 + 56 * v9);
  v12 = v11[4];
  v13 = v11[5];
  v14 = v11[7];
  v71 = v11[6];
  v15 = v11[9];
  v73 = v11[8];
  v16 = v11[10];

  v72 = v14;

  v74 = v15;

  OUTLINED_FUNCTION_25();
  a1 = sub_1E3837DC8(v17, v18);
  v67 = v16;
  v70 = v12;
  if (v13)
  {
    v69 = v13;

    v64 = 0;
    v19 = v12;
    goto LABEL_9;
  }

  v69 = 0;
LABEL_8:
  v19 = 0;
  v64 = 1;
LABEL_9:
  v68 = v4;
  (*((*v7 & *v4) + 0xC0))(&v76, a1);
  v20 = v76;
  v21 = v77;
  if (v77)
  {

    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  sub_1E3837DC8(v20, v21);
  v23 = v69;
  if (!v69)
  {
    v24 = v67;
    if (!v21)
    {
LABEL_35:
      sub_1E3837DC8(v70, v23);
      return;
    }

LABEL_21:

    goto LABEL_22;
  }

  v24 = v67;
  if (!v21)
  {
    goto LABEL_21;
  }

  if (v69 == v21 && v19 == v22)
  {

    goto LABEL_35;
  }

  v26 = sub_1E42079A4();

  if (v26)
  {
    goto LABEL_35;
  }

LABEL_22:
  v27 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedButton;
  v28 = *(v68 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedButton);
  v29 = (v68 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory);
  OUTLINED_FUNCTION_3_0(v68 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory, v75);
  v61 = v29[1];
  v62 = *v29;
  v60 = v28;
  *v29 = v70;
  v29[1] = v69;
  v29[2] = v71;
  v29[3] = v72;
  v29[4] = v73;
  v29[5] = v74;
  v29[6] = v24;
  v59 = v28;
  sub_1E3837D00(v70, v69, v71, v72, v73, v74, v24);
  v4 = v68;
  sub_1E3837DC8(v62, v61);
  v30 = 0;
  v7 = &unk_1E429A000;
  v6 = a3;
  if (a2)
  {
    goto LABEL_30;
  }

  v5 = v27;
  v3 = *(v68 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons);
  v8 = v63;
  sub_1E34AF4E4(v63, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) == 0)
  {
    v31 = *(v3 + 8 * v63 + 32);
    goto LABEL_25;
  }

LABEL_38:

  v31 = MEMORY[0x1E6911E60](v8, v3);

LABEL_25:
  v32 = MEMORY[0x1E69E7D40];
  [v31 frame];
  OUTLINED_FUNCTION_3();

  v33 = (*((*v32 & *v4) + 0x90))();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (*(v33 + 16) <= v8)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v34 = v33 + 56 * v8;
  v35 = *(v34 + 32);
  v36 = *(v34 + 48);
  v37 = *(v34 + 64);
  v82 = *(v34 + 80);
  v80 = v36;
  v81 = v37;
  v79 = v35;
  sub_1E3839BCC(&v79, aBlock);

  v38 = sub_1E38398F4(&v79);
  sub_1E3839C28(&v79);
  v30 = v38;
  [v30 setOverrideUserInterfaceStyle_];
  v39 = sub_1E3837E2C();
  v40 = OUTLINED_FUNCTION_6();
  [v41 v42];
  OUTLINED_FUNCTION_3();

  v43 = OUTLINED_FUNCTION_6();
  [v44 v45];

  [v30 setAccessibilityElementsHidden_];
  [*(v4 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView) addSubview_];
  if ((v6 & 1) == 0 || (v46 = objc_opt_self(), OUTLINED_FUNCTION_4_0(), v47 = swift_allocObject(), *(v47 + 16) = v30, OUTLINED_FUNCTION_2_4(), v48 = swift_allocObject(), *(v48 + 16) = sub_1E3839CC4, *(v48 + 24) = v47, aBlock[4] = sub_1E379E500, aBlock[5] = v48, aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = v7[375], aBlock[2] = sub_1E3839B50, aBlock[3] = &block_descriptor_32_0, v49 = _Block_copy(aBlock), v50 = v30, , , v4 = v68, [v46 performWithoutAnimation_], _Block_release(v49), LOBYTE(v49) = swift_isEscapingClosureAtFileLocation(), , , (v49 & 1) == 0))
  {
    v27 = v5;
LABEL_30:
    v51 = *(v4 + v27);
    *(v4 + v27) = v30;

    v52 = sub_1E3837E2C();
    [v52 setHidden_];

    if (v6)
    {
      v53 = objc_opt_self();
      OUTLINED_FUNCTION_2_4();
      v54 = swift_allocObject();
      *(v54 + 16) = v4;
      *(v54 + 24) = v60;
      *&v81 = sub_1E3839B78;
      *(&v81 + 1) = v54;
      *&v79 = MEMORY[0x1E69E9820];
      *(&v79 + 1) = v7[375];
      OUTLINED_FUNCTION_14_1();
      *&v80 = v55;
      *(&v80 + 1) = &block_descriptor_6_0;
      v56 = _Block_copy(&v79);
      v57 = v59;
      v58 = v4;

      [v53 animateWithDuration:2 delay:v56 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.8 completion:1.0];

      _Block_release(v56);
      v23 = v69;
    }

    else
    {
      sub_1E38391D4();
      v23 = v69;
      if (v60)
      {
        [v59 removeFromSuperview];
      }
    }

    goto LABEL_35;
  }

LABEL_41:
  __break(1u);
}

void *sub_1E38391D4()
{
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  result = (*(v4 + 192))(&v34);
  v6 = v35;
  if (v35)
  {
    v7 = v34;
    OUTLINED_FUNCTION_6_41();
    (*(v8 + 144))();
    OUTLINED_FUNCTION_17_27();
    while (1)
    {
      if (v1 == v3)
      {

        return sub_1E3839D98(&v34);
      }

      v9 = *(v2 - 1) == v7 && v6 == *v2;
      if (v9 || (sub_1E42079A4() & 1) != 0)
      {
        break;
      }

      ++v3;
      v2 += 7;
    }

    sub_1E3839D98(&v34);
    v10 = *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons];
    OUTLINED_FUNCTION_19_24();
    if (v7)
    {

      v11 = MEMORY[0x1E6911E60](v3, v10);
    }

    else
    {
      v11 = *(v10 + 8 * v3 + 32);
    }

    [v11 frame];
    OUTLINED_FUNCTION_3();

    v12 = sub_1E3837E2C();
    v13 = OUTLINED_FUNCTION_6();
    [v14 v15];

    v16 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView;
    v17 = [*&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView] layer];
    [*&v0[v16] frame];
    [v17 setCornerRadius_];

    v18 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedButton;
    v19 = *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedButton];
    if (v19)
    {
      v20 = *&v0[v16];
      v21 = v19;
      v22 = OUTLINED_FUNCTION_6();
      [v23 v24];
      [v21 setFrame_];

      v25 = *&v0[v18];
      if (v25)
      {
        v26 = [v25 titleLabel];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1E3837EF8();
          [v27 setFont_];
        }

        v29 = *&v0[v18];
        if (v29)
        {
          v30 = objc_opt_self();
          v31 = v29;
          v32 = [v30 whiteColor];
          [v31 setTitleColor:v32 forState:0];

          v33 = *&v0[v18];
          if (v33)
          {
            [v33 layoutIfNeeded];
          }
        }
      }
    }

    return [v0 bringSubviewToFront_];
  }

  return result;
}

uint64_t sub_1E38394BC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons);

  sub_1E3839680(a1, v3);
  v5 = v4;
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_22();
    v10 = *(v9 + 144);
    v11 = *(v10() + 16);

    if (v5 < v11)
    {
      [a1 setSelected:1 animated:0];
      OUTLINED_FUNCTION_8_22();
      v13 = (*(v12 + 168))();
      if (v13)
      {
        v15 = v13;
        v16 = v14;
        result = v10();
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *(result + 16))
        {
          v17 = result + 56 * v5;
          v18 = *(v17 + 32);
          v19 = *(v17 + 48);
          v20 = *(v17 + 64);
          v24 = *(v17 + 80);
          v23[1] = v19;
          v23[2] = v20;
          v23[0] = v18;
          sub_1E3839BCC(v23, v22);

          v15(v23);
          sub_1E34AF594(v15, v16);
          sub_1E3839C28(v23);
          goto LABEL_7;
        }

        __break(1u);
        return result;
      }

LABEL_7:
      OUTLINED_FUNCTION_8_22();
      return (*(v21 + 344))(v5, 0, 1);
    }
  }

  return result;
}

void sub_1E3839680(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1E3280A90(0, &qword_1ECF2B990, 0x1E69DC738);
    v7 = sub_1E4206F64();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

id sub_1E3839824()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryFilterBar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E38398F4(void *a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  sub_1E3839CD4(a1[2], a1[3], 0, v2);
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E3837EF8();
    [v4 setFont_];
  }

  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v6 whiteColor];
  v9 = sub_1E3E5F2F8(v7, v8);

  v10 = OUTLINED_FUNCTION_9_34();
  [v10 v11];

  v12 = [v6 whiteColor];
  v13 = OUTLINED_FUNCTION_9_34();
  [v13 v14];

  v15 = [v6 whiteColor];
  v16 = OUTLINED_FUNCTION_9_34();
  [v16 v17];

  [v2 setPointerInteractionEnabled_];
  type metadata accessor for Accessibility();
  v18 = v2;
  sub_1E42074B4();

  MEMORY[0x1E69109E0](*a1, a1[1]);
  MEMORY[0x1E69109E0](34, 0xE100000000000000);
  sub_1E40A7DC8();
  v20 = v19;
  v22 = v21;

  sub_1E3839D34(v20, v22, v18);

  return v18;
}

void *sub_1E3839B78()
{
  v1 = *(v0 + 24);
  result = sub_1E38391D4();
  if (v1)
  {

    return [v1 removeFromSuperview];
  }

  return result;
}

uint64_t sub_1E3839C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E3839CD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1E4205ED4();
  [a4 setTitle:v6 forState:a3];
}

void sub_1E3839D34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setAccessibilityIdentifier_];
}

uint64_t sub_1E3839D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2E9A0, &unk_1E42AC9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3839E00()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_needsButtonsLayout;
  if (v1[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_needsButtonsLayout] == 1)
  {
    v3 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons;
    v4 = *&v1[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons];
    v5 = sub_1E32AE9B0(v4);
    v6 = (v4 & 0xC000000000000001);
    v7 = (v4 & 0xFFFFFFFFFFFFFF8);

    v8 = 0;
    v9 = 0.0;
    while (v5 != v8)
    {
      if (v6)
      {
        v15 = OUTLINED_FUNCTION_11_6();
        v10 = MEMORY[0x1E6911E60](v15);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:

        v33 = MEMORY[0x1E6911E60](v4, v5);

LABEL_34:
        [v33 frame];
        OUTLINED_FUNCTION_3();

        v34 = OUTLINED_FUNCTION_6();
        [v35 v36];
        return;
      }

      OUTLINED_FUNCTION_20_28();
      v39.size.height = v12;
      v39.size.width = v13 + 24.0;
      v39.origin.x = 0.0;
      v39.origin.y = 0.0;
      Width = CGRectGetWidth(v39);

      v9 = v9 + Width;
      ++v8;
    }

    v16 = 0.0;
    [v1 setContentSize_];
    v4 = *&v1[v3];
    v5 = sub_1E32AE9B0(v4);

    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v27 = OUTLINED_FUNCTION_11_6();
        v18 = MEMORY[0x1E6911E60](v27);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v18 = *(v4 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        goto LABEL_39;
      }

      v20 = [v18 titleLabel];
      if (v20)
      {
        v6 = v20;
        v7 = sub_1E3837EF8();
        [v6 setFont_];
      }

      OUTLINED_FUNCTION_20_28();
      v40.size.height = v21;
      v23 = v22 + 24.0;
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = v23;
      v24 = fmax(CGRectGetHeight(v40), 32.0);
      if ([v1 vuiIsRTL])
      {
        v25 = v9 - v16 - v23;
      }

      else
      {
        v25 = v16;
      }

      [v19 setFrame_];
      v41.origin.y = 0.0;
      v41.origin.x = v25;
      v41.size.width = v23;
      v41.size.height = v24;
      v26 = CGRectGetWidth(v41);

      v16 = v16 + v26;
    }

    sub_1E38391D4();
    v1[v2] = 0;
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_6_41();
    (*(v28 + 192))(&v37);
    v29 = v38;
    if (v38)
    {
      v30 = v37;
      OUTLINED_FUNCTION_6_41();
      (*(v31 + 144))();
      OUTLINED_FUNCTION_17_27();
      while (1)
      {
        if (v6 == v4)
        {

          sub_1E3839D98(&v37);
          return;
        }

        v32 = *(v7 - 1) == v30 && v29 == *v7;
        if (v32 || (sub_1E42079A4() & 1) != 0)
        {
          break;
        }

        ++v4;
        v7 += 7;
      }

      sub_1E3839D98(&v37);
      v5 = *&v1[v3];
      OUTLINED_FUNCTION_19_24();
      if (v30)
      {
        goto LABEL_41;
      }

      v33 = *(v5 + 8 * v4 + 32);
      goto LABEL_34;
    }
  }
}

uint64_t sub_1E383A22C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1E3838474();
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(*v2, *(v2 + 8), 0);
}

uint64_t sub_1E383A2D0@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = a3;
  return result;
}

double sub_1E383A2EC@<D0>(uint64_t a2@<X8>)
{
  v40 = v2;
  v42 = sub_1E4201D44();
  LOBYTE(v75) = 1;
  v3 = (*(v2 + 40) - *(v2 + 32)) * 0.5;
  sub_1E383A5E8(&v78);
  v4 = v78;
  sub_1E4203DA4();
  sub_1E4200D94();
  v5 = v83;
  v6 = v84;
  v7 = v85;
  v8 = v86;
  v9 = v87;
  v35 = v88;
  sub_1E3755B54();
  v10 = objc_opt_self();
  v11 = [v10 blackColor];
  v12 = [v10 whiteColor];
  sub_1E3E5F2F8(v11, v12);

  sub_1E4203644();
  v13 = sub_1E4203734();

  KeyPath = swift_getKeyPath();
  v82[80] = 0;
  *__src = v4;
  __src[1] = v5;
  LOBYTE(__src[2]) = v6;
  __src[3] = v7;
  LOBYTE(__src[4]) = v8;
  __src[5] = v9;
  __src[6] = v35;
  __src[7] = KeyPath;
  __src[8] = v13;
  v15 = memcpy(&v82[7], __src, 0x48uLL);
  v81 = 0;
  v78 = v4;
  v79[0] = v5;
  LOBYTE(v79[1]) = v6;
  v79[2] = v7;
  LOBYTE(v79[3]) = v8;
  v79[4] = v9;
  v79[5] = v35;
  v79[6] = KeyPath;
  v79[7] = v13;
  OUTLINED_FUNCTION_2_42(v15, v16, v17, v18, v19, v20, v21, v22, v33, v35, a2, v40, v42, v45, v48, v50, v53, v55, v58, v60, v62, v64, v66, v68, v70, v72, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v75, *v76, *&v76[8], *&v76[16], *&v76[24], *&v76[32], *&v76[40], *&v76[48]);
  sub_1E325F748(&v78, &qword_1ECF2BA00, &unk_1E42A1C70);
  *__src = v3;
  LOBYTE(__src[1]) = 0;
  memcpy(&__src[1] + 1, v82, 0x4FuLL);
  *&__src[11] = v3;
  LOBYTE(__src[12]) = 0;
  v78 = v3;
  LOBYTE(v79[0]) = 0;
  v23 = memcpy(v79 + 1, v82, 0x4FuLL);
  *&v79[10] = v3;
  v80 = 0;
  OUTLINED_FUNCTION_2_42(v23, v24, v25, v26, v27, v28, v29, v30, v34, v36, v38, v41, v43, v46, v49, v51, v54, v56, v59, v61, v63, v65, v67, v69, v71, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v75, *v76, *&v76[8], *&v76[16], *&v76[24], *&v76[32], *&v76[40], *&v76[48]);
  sub_1E325F748(&v78, &qword_1ECF2B998, &qword_1E42A1A90);
  memcpy(v74 + 7, __src, 0x61uLL);
  LOBYTE(v4) = v75;
  sub_1E4203DA4();
  sub_1E4200D94();
  *&v76[7] = v47;
  *&v76[23] = v52;
  *&v76[39] = v57;
  *v39 = v44;
  *(v39 + 8) = 0;
  *(v39 + 16) = LOBYTE(v4);
  memcpy((v39 + 17), v74, 0x68uLL);
  v31 = *&v76[16];
  *(v39 + 121) = *v76;
  *(v39 + 137) = v31;
  result = *&v76[32];
  *(v39 + 153) = *&v76[32];
  *(v39 + 168) = *&v76[47];
  return result;
}

uint64_t sub_1E383A5E8@<X0>(uint64_t *a1@<X8>)
{
  if (*(v4 + 48))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0, &qword_1E42A1AA0);
    v6 = swift_allocObject();
    v7 = *(v4 + 16);
    *(v6 + 16) = xmmword_1E4299720;
    *(v6 + 32) = v7;
  }

  sub_1E4200BF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B9A0, &qword_1E42A1A98);
  sub_1E32752B0(&qword_1ECF2B9A8, &qword_1ECF2B9A0, &qword_1E42A1A98, MEMORY[0x1E697E2A0]);
  result = sub_1E4203A74();
  *a1 = result;
  return result;
}

double sub_1E383A708@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E4202B44();
  sub_1E4202B24();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  sub_1E4202B34();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

unint64_t sub_1E383A7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2B9B0;
  if (!qword_1ECF2B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9B0);
  }

  return result;
}

unint64_t sub_1E383A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2B9B8;
  if (!qword_1ECF2B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9B8);
  }

  return result;
}

double sub_1E383A864@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E383A708(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_1E383A8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2B9C0;
  if (!qword_1ECF2B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9C0);
  }

  return result;
}

void (*sub_1E383A920())(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *v0 = v1;
  v1[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E383A9D4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E383AC4C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDE4440](v3);
}

uint64_t sub_1E383AA20()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E383AC4C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDE43F0](v3);
}

uint64_t sub_1E383AA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E383AC4C(a1, a2, a3);

  return MEMORY[0x1EEDE4410](a1, v4);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E383AAD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E383AB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E383AB94()
{
  result = qword_1ECF2B9D8;
  if (!qword_1ECF2B9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B9E0, &qword_1E42A1C30);
    sub_1E32752B0(&qword_1ECF2B9E8, &qword_1ECF2B9F0, &qword_1E42A1C38, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9D8);
  }

  return result;
}

unint64_t sub_1E383AC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2B9F8;
  if (!qword_1ECF2B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9F8);
  }

  return result;
}

uint64_t sub_1E383ACA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = (*(a3 + 16))(a2, a3);
  v10 = a1;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  sub_1E383ADA0();
  sub_1E38D2054(&v10, &v12);
  v6 = v13;
  if (v13)
  {
    v7 = v12;

    v8 = (*(a3 + 32))(v7, v6, a2, a3);
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_1E383ADA0()
{
  result = qword_1EE23B500;
  if (!qword_1EE23B500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C420, &qword_1E429CDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B500);
  }

  return result;
}

uint64_t sub_1E383AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  result = (*(a4 + 8))(a3, a4);
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  while (1)
  {
    if (v7 == v6)
    {

      goto LABEL_12;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v8 = *(v5 + 8 * v6 + 32);
    v45 = &type metadata for ViewModelKeys.Sports;
    v46 = &off_1F5D7BC68;
    LOBYTE(v44[0]) = 23;

    OUTLINED_FUNCTION_0_50(v9, v10, v11, v12, v13, v14, v15, v16, v39, v40);
    if (*(&v48 + 1))
    {
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v44);
        if (v42)
        {

          if (v8)
          {
            v45 = &type metadata for ViewModelKeys;
            v46 = &off_1F5D7BCA8;
            LOBYTE(v44[0]) = 7;

            OUTLINED_FUNCTION_0_50(v26, v27, v28, v29, v30, v31, v32, v33, v39, v40);

            __swift_destroy_boxed_opaque_existential_1(v44);
            if (*(&v48 + 1))
            {
              v18 = swift_dynamicCast();
              if (v18)
              {
                v35 = v44[0];
                v34 = v44[1];

                goto LABEL_26;
              }

LABEL_19:
              v45 = &type metadata for ViewModelKeys.Sports;
              v46 = &off_1F5D7BC68;
              LOBYTE(v44[0]) = 7;
              OUTLINED_FUNCTION_0_50(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40);

              __swift_destroy_boxed_opaque_existential_1(v44);
              if (*(&v48 + 1))
              {
                v36 = swift_dynamicCast();
                if (v36)
                {
                  v34 = v43;
                }

                else
                {
                  v34 = 0;
                }

                if (v36)
                {
                  v35 = v42;
                }

                else
                {
                  v35 = 0;
                }

LABEL_26:
                if (v34)
                {
                  if (v35 == v40 && v34 == a2)
                  {

                    v38 = 1;
                  }

                  else
                  {
                    v38 = sub_1E42079A4();
                  }

                  return v38 & 1;
                }

LABEL_33:
                v38 = 0;
                return v38 & 1;
              }

LABEL_32:
              sub_1E329505C(&v47);
              goto LABEL_33;
            }

            v17 = 0;
LABEL_13:
            v18 = sub_1E329505C(&v47);
            if ((v17 & 1) == 0)
            {
              goto LABEL_19;
            }

            v47 = 0u;
            v48 = 0u;
            goto LABEL_32;
          }

LABEL_12:
          v47 = 0u;
          v48 = 0u;
          v17 = 1;
          goto LABEL_13;
        }
      }

      else
      {

        result = __swift_destroy_boxed_opaque_existential_1(v44);
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v44);
      result = sub_1E329505C(&v47);
    }

    ++v6;
  }

  __break(1u);
  return result;
}

id sub_1E383B09C()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1E383B0D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  sub_1E385BFBC();
  v13 = v12;
  v15 = v14;
  v16 = sub_1E3741090(0xD000000000000013, 0x80000001E425F950, a5);
  if (v17)
  {
    sub_1E32822E0(v16, v17, v18);
    a2 = sub_1E42071F4();
    v20 = v19;

    sub_1E383B454(a1);

    a3 = v20;
  }

  else
  {
    sub_1E383B454(a1);
  }

  v21 = 0xE000000000000000;
  if (v15)
  {
    v21 = v15;
    v22 = v13;
  }

  else
  {
    v22 = 0;
  }

  *a6 = v22;
  a6[1] = v21;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
}

uint64_t sub_1E383B220(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1E42079A4() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1E42079A4() & 1) != 0)
    {
      v6 = a2[4];
      if (a1[4])
      {
        if (v6)
        {
          type metadata accessor for ImageViewModel();
          sub_1E383B4B0(&qword_1EE282FC0, &protocol conformance descriptor for ViewModel);

          v7 = sub_1E4205E84();

          if (v7)
          {
            return 1;
          }
        }
      }

      else if (!v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1E383B320(uint64_t a1)
{
  sub_1E4206014();
  sub_1E4206014();
  if (!*(v1 + 32))
  {
    return sub_1E4207B64();
  }

  sub_1E4207B64();
  type metadata accessor for ImageViewModel();
  sub_1E383B4B0(&qword_1ECF2BA08, &protocol conformance descriptor for ViewModel);
  return sub_1E4205DB4();
}

uint64_t sub_1E383B3CC()
{
  sub_1E4207B44();
  sub_1E383B320(v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E383B414(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E383B320(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E383B454(uint64_t a1)
{
  v2 = type metadata accessor for SportsPlayPeriod(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E383B4B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E383B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2BA10;
  if (!qword_1ECF2BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BA10);
  }

  return result;
}

uint64_t sub_1E383B54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E383B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1E690DE70](v4, a3, &type metadata for NavBarAccessorViewModifier);
}

unint64_t sub_1E383B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2955F0[0];
  if (!qword_1EE2955F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2955F0);
  }

  return result;
}

uint64_t sub_1E383B65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E4203DA4();
  v10 = v9;
  v11 = sub_1E42036E4();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA18, &qword_1E42A1DF0);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  v14 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA20, &qword_1E42A1DF8) + 36));
  *v14 = v11;
  v14[1] = sub_1E383B778;
  v14[2] = 0;
  v14[3] = sub_1E383B938;
  v14[4] = v12;
  v14[5] = v8;
  v14[6] = v10;
}

uint64_t sub_1E383B7A4(double *a1, uint64_t (*a2)(uint64_t, double))
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_1E324FBDC();
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1E323F000, v10, v11, "NavBarAccessorViewModifier::did update nav bar height to %f", v12, 0xCu);
    MEMORY[0x1E69143B0](v12, -1, -1);
  }

  v13 = (*(v5 + 8))(v7, v4);
  return a2(v13, v8);
}

unint64_t sub_1E383B940()
{
  result = qword_1EE289AD0;
  if (!qword_1EE289AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BA20, &qword_1E42A1DF8);
    sub_1E32752B0(&qword_1EE288978, &qword_1ECF2BA18, &qword_1E42A1DF0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE289268, &qword_1ECF2BA28, &qword_1E42A1E00, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AD0);
  }

  return result;
}

void (*sub_1E383BA8C(void *a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1E3C2C6A0();
  return sub_1E383BAEC;
}

void sub_1E383BB24(uint64_t a1)
{
  sub_1E3C34E14();
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = v8 | (v7 << 6);
      v10 = (*(a1 + 48) + 16 * v9);
      v12 = *v10;
      v11 = v10[1];
      sub_1E328438C(*(a1 + 56) + 32 * v9, v13);
      *&v14 = v12;
      *(&v14 + 1) = v11;
      sub_1E329504C(v13, &v15);

LABEL_10:
      v17 = v14;
      v18[0] = v15;
      v18[1] = v16;
      if (!*(&v14 + 1))
      {
        break;
      }

      sub_1E329504C(v18, &v14);
      if (sub_1E3D46B48() == 120)
      {
        sub_1E328438C(&v14, v13);
        sub_1E3C3AB84(v13, 120, 1);
        sub_1E329505C(v13);
      }

      __swift_destroy_boxed_opaque_existential_1(&v14);
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
        v4 = 0;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        goto LABEL_10;
      }

      v4 = *(a1 + 64 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E383BCF4()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 98, 7);
}

id sub_1E383BD48()
{
  result = [objc_allocWithZone(type metadata accessor for VUIMenuBarManager()) init];
  qword_1ECF71298 = result;
  return result;
}

uint64_t *sub_1E383BD78()
{
  if (qword_1ECF480D0 != -1)
  {
    OUTLINED_FUNCTION_1_73(&qword_1ECF480D0);
  }

  return &qword_1ECF71298;
}

id sub_1E383BDB8(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v66 = *MEMORY[0x1E69DE0F8];
    v3 = sub_1E3797E30(0x2E756E654D2E5654, 0xEF736E6F69746341, result);
    v60 = v4;
    v63 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E42A1E20;
    sub_1E383C2A4(0xD000000000000018, 0x80000001E425FA40);
    sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
    sub_1E3834BC8();
    sub_1E3280A90(0, &qword_1ECF2BA30, 0x1E69DC8B0);
    v40 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_43();
    *(v5 + 32) = sub_1E42070C4(v6, v7, v8, v9, v10, v11, sel_didTapDownload, v12, v40, 0, 0, 0, 0);
    sub_1E383C2A4(0xD00000000000001DLL, 0x80000001E425FA20);
    v13 = OUTLINED_FUNCTION_3_43();
    *(v5 + 40) = OUTLINED_FUNCTION_0_51(v13, v14, v15, v16, v17, v18, v19, v20, v41, v45, v48, v51, v54, v57, v60, v63, v66, a1, 0, 0);
    sub_1E383C2A4(0xD000000000000029, 0x80000001E425F9D0);
    v21 = OUTLINED_FUNCTION_3_43();
    *(v5 + 48) = OUTLINED_FUNCTION_0_51(v21, v22, v23, v24, v25, v26, v27, v28, v42, v46, v49, v52, v55, v58, v61, v64, v67, v71, v74, v76);
    sub_1E383C2A4(0xD000000000000015, 0x80000001E425F990);
    v29 = sub_1E3834BC8();
    *(v5 + 56) = OUTLINED_FUNCTION_0_51(v29, v30, v31, v32, v33, v34, v35, v36, v43, v47, v50, v53, v56, v59, v62, v65, v68, v72, v75, v77);
    if (v5 >> 62)
    {
      sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);
      v37 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);
      v37 = v5;
    }

    sub_1E3280A90(0, &qword_1ECF2BA48, 0x1E69DCC60);
    v44 = v37;
    v38 = sub_1E4206E94();
    [v73 insertSiblingMenu:v38 afterMenuForIdentifier:{v69, v44}];

    [v73 removeMenuForIdentifier_];
    v39 = *MEMORY[0x1E69DE218];

    return [v73 removeMenuForIdentifier_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E383C154()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIMenuBarManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1E383C1D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIMenuBarManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E383C218(uint64_t a1)
{
  if (sub_1E41FE894())
  {
    return 0;
  }

  if (sub_1E41FE894())
  {
    return 1;
  }

  if (sub_1E41FE894())
  {
    return 2;
  }

  if (sub_1E41FE894())
  {
    return 3;
  }

  return 4;
}

id sub_1E383C2A4(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = sub_1E3797E30(a1, a2, result);
    v8 = v7;

    if (v8)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E383C32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2BA38;
  if (!qword_1ECF2BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BA38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VUICustomMenuItemAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

id sub_1E383C45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_1E383C76C(a1, a2, v10);
  sub_1E383C7C4(a3, a4, v10);
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E695D0C0]) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4298880;
  *(v12 + 32) = v10;
  sub_1E383C81C();
  v13 = a5;
  v14 = v10;
  v15 = sub_1E42062A4();

  [v11 setContacts_];

  return v11;
}

id sub_1E383C588(void *a1)
{
  v2 = objc_opt_self();
  v3 = sub_1E32859C4(v2, &selRef_userFirstName);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_1E32859C4(v2, &selRef_userLastName);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = sub_1E383C45C(v5, v6, v9, v10, a1);

  return v11;
}

id AvatarViewFactoryObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AvatarViewFactoryObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AvatarViewFactoryObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E383C76C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setFirstName_];
}

void sub_1E383C7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setLastName_];
}

unint64_t sub_1E383C81C()
{
  result = qword_1EE23AD18;
  if (!qword_1EE23AD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AD18);
  }

  return result;
}

__n128 sub_1E383C8FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v11 = a7;
  *a9 = a1;
  if (a2)
  {

    v19 = a2;
  }

  else
  {
    v20 = *(*a1 + 392);

    v19 = v20(v21);
    if (v19)
    {
      type metadata accessor for ButtonLayout();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {

        v19 = 0;
      }
    }

    v11 = a7;
  }

  *(a9 + 8) = v19;
  LOBYTE(v31[0]) = 5;
  v22 = *(*a1 + 776);

  v22(v32, v31, &unk_1F5D5D0A8, &off_1F5D5C758);

  if (v32[3])
  {
    v23 = OUTLINED_FUNCTION_21_4();
    v24 = v31[0];
    v25 = v31[1];
    if (!v23)
    {
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    sub_1E325F748(v32, &unk_1ECF296E0, &unk_1E4298030);
    v24 = 0;
    v25 = 0;
  }

  *(a9 + 232) = v24;
  *(a9 + 240) = v25;
  memcpy((a9 + 16), a3, 0x5AuLL);
  *(a9 + 112) = a10;
  *(a9 + 120) = a4;
  v26 = a5[1];
  *(a9 + 128) = *a5;
  *(a9 + 144) = v26;
  *(a9 + 160) = a5[2];
  *(a9 + 176) = a6;
  *(a9 + 184) = v11 & 1;
  result = *a8;
  v28 = *(a8 + 16);
  *(a9 + 192) = *a8;
  *(a9 + 208) = v28;
  *(a9 + 224) = *(a8 + 32);
  return result;
}

uint64_t sub_1E383CB04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v294 = a1;
  LOBYTE(v301) = 0;
  OUTLINED_FUNCTION_8();
  (*(v3 + 776))(v318, &v301, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (*&v318[24])
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    OUTLINED_FUNCTION_14_37(v4, v5, v6, v4, v7, v8, v9, v10, v206, v214, v221, v228, v235, v242, v249, v258, v265, v274, v284, v294, v301);
    if (swift_dynamicCast())
    {
      v15 = *(v301 + 16);

      if (v15)
      {
        v16 = *v1;
        v17 = v2[1];
        v18 = v2[15];
        type metadata accessor for TransactionButtonType();
        v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v285 = v18;

        v275 = [v19 init];
        memcpy(__dst, v2 + 2, 0x5AuLL);
        v20 = v2[16];
        v21 = v2[21];
        OUTLINED_FUNCTION_4_47();
        v22 = sub_1E379539C((v2 + 24), &v301, &qword_1ECF2BA50, &qword_1E42A1F30);
        v266 = v20;
        if (v17)
        {
          OUTLINED_FUNCTION_17_28(v22, v23, &qword_1ECF299E0, &qword_1E429C6D0);
          OUTLINED_FUNCTION_3_44();
          sub_1E383D588(v24, v25, v26, v27, v28, v21);
        }

        else
        {
          v242 = *(*v16 + 392);
          OUTLINED_FUNCTION_17_28(v22, v23, &qword_1ECF299E0, &qword_1E429C6D0);
          OUTLINED_FUNCTION_3_44();
          sub_1E383D588(v137, v138, v139, v140, v141, v21);

          if (v242(v142))
          {
            type metadata accessor for ButtonLayout();
            if (!swift_dynamicCastClass())
            {
            }
          }
        }

        OUTLINED_FUNCTION_15_40();
        v30 = *(v29 + 776);

        v31 = v30(v318, __src, &unk_1F5D5D0A8, &off_1F5D5C758);
        if (*&v318[24])
        {
          OUTLINED_FUNCTION_8_38(v31, v32, v33, MEMORY[0x1E69E6158], v34, v35, v36, v37, v206, v214, v221, v228, v235, v242, v249, v258, v266, v275, v18, v294, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7], v304[8], v304[9], v304[10], v304[11], v305, v306, v307, v308, v309, v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], v313, v314, v315, __src[0]);
          v38 = OUTLINED_FUNCTION_21_4();
        }

        else
        {
          v38 = sub_1E325F748(v318, &unk_1ECF296E0, &unk_1E4298030);
        }

        v143 = OUTLINED_FUNCTION_16_28(v38, v39, v40, v41, v42, v43, v44, v45, v206, v214, v221, v228, v235, v242, v249, v258, v266, v275, v285, v294, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7], v304[8], v304[9], v304[10], v304[11], v305, v306, v307, v308, v309, v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], v313, v314, v315, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
        OUTLINED_FUNCTION_2_44(v143, v144, v145, v146, v147, v148, v149, v150, v212, v219, v226, v233, v240, v247, v254, v257, v263, v272, v282, v292, v299, v301, v302, v303);
        v159 = OUTLINED_FUNCTION_8_38(v151, v152, v153, v154, v155, v156, v157, v158, v213, v220, v227, v234, v241, v248, v255, v264, v273, v283, v293, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7], v304[8], v304[9], v304[10], v304[11], v305, v306, v307, v308, v309, v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], v313, v314, v315, __src[0]);
        sub_1E379539C(v159, v160, &qword_1ECF2BA70, &qword_1E42A1F48);
        v319 = 0;
        v161 = OUTLINED_FUNCTION_32_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v161, v162);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA78, &qword_1E42A1F50);
        OUTLINED_FUNCTION_21_1();
        sub_1E383D6B4(v163, v164, v165);
        sub_1E383D6B4(&qword_1EE28B488, &qword_1ECF2BA78, &qword_1E42A1F50);
LABEL_29:
        v166 = sub_1E4201F44();
        v174 = OUTLINED_FUNCTION_14_37(v166, v167, v168, v169, v170, v171, v172, v173, v210, v218, v225, v232, v239, v246, v253, v262, v271, v281, v291, v298, v301);
        sub_1E379539C(v174, v175, &qword_1ECF2BA68, &qword_1E42A1F40);
        v320 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA68, &qword_1E42A1F40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA60, &qword_1E42A1F38);
        sub_1E383D5F0();
        sub_1E383D6B4(&qword_1EE28B490, &qword_1ECF2BA60, &qword_1E42A1F38);
        sub_1E4201F44();
        sub_1E325F748(&v301, &qword_1ECF2BA68, &qword_1E42A1F40);
        goto LABEL_41;
      }
    }
  }

  else
  {
    sub_1E325F748(v318, &unk_1ECF296E0, &unk_1E4298030);
  }

  v46 = *v1;
  if (sub_1E373F6E0(*(*v2 + 98), 65, v11, v12, v13, v14))
  {
    v47 = v2[1];
    v48 = v2[15];
    type metadata accessor for UpnextButtonType();
    v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v286 = v48;

    v276 = [v49 init];
    memcpy(__dst, v2 + 2, 0x5AuLL);
    v50 = v2[16];
    v51 = v2[21];
    OUTLINED_FUNCTION_4_47();
    v52 = sub_1E379539C((v2 + 24), &v301, &qword_1ECF2BA50, &qword_1E42A1F30);
    v267 = v50;
    if (v47)
    {
      OUTLINED_FUNCTION_17_28(v52, v53, &qword_1ECF299E0, &qword_1E429C6D0);
      OUTLINED_FUNCTION_3_44();
      sub_1E383D588(v54, v55, v56, v57, v58, v51);
    }

    else
    {
      v242 = *(*v46 + 392);
      OUTLINED_FUNCTION_17_28(v52, v53, &qword_1ECF299E0, &qword_1E429C6D0);
      OUTLINED_FUNCTION_3_44();
      sub_1E383D588(v97, v98, v99, v100, v101, v51);

      if (v242(v102))
      {
        type metadata accessor for ButtonLayout();
        if (!swift_dynamicCastClass())
        {
        }
      }
    }

    OUTLINED_FUNCTION_15_40();
    v60 = *(v59 + 776);

    v61 = v60(v318, __src, &unk_1F5D5D0A8, &off_1F5D5C758);
    if (*&v318[24])
    {
      OUTLINED_FUNCTION_8_38(v61, v62, v63, MEMORY[0x1E69E6158], v64, v65, v66, v67, v206, v214, v221, v228, v235, v242, v249, v258, v267, v276, v48, v294, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7], v304[8], v304[9], v304[10], v304[11], v305, v306, v307, v308, v309, v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], v313, v314, v315, __src[0]);
      v68 = OUTLINED_FUNCTION_21_4();
    }

    else
    {
      v68 = sub_1E325F748(v318, &unk_1ECF296E0, &unk_1E4298030);
    }

    v103 = OUTLINED_FUNCTION_16_28(v68, v69, v70, v71, v72, v73, v74, v75, v206, v214, v221, v228, v235, v242, v249, v258, v267, v276, v286, v294, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7], v304[8], v304[9], v304[10], v304[11], v305, v306, v307, v308, v309, v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], v313, v314, v315, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
    OUTLINED_FUNCTION_2_44(v103, v104, v105, v106, v107, v108, v109, v110, v208, v216, v223, v230, v237, v244, v251, v256, v260, v269, v279, v289, v296, v301, v302, v303);
    v119 = OUTLINED_FUNCTION_8_38(v111, v112, v113, v114, v115, v116, v117, v118, v209, v217, v224, v231, v238, v245, v252, v261, v270, v280, v290, v297, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7], v304[8], v304[9], v304[10], v304[11], v305, v306, v307, v308, v309, v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], v313, v314, v315, __src[0]);
    sub_1E379539C(v119, v120, &qword_1ECF2BA78, &qword_1E42A1F50);
    v319 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA70, &qword_1E42A1F48);
    v121 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v121, v122);
    sub_1E383D6B4(&_MergedGlobals_158, &qword_1ECF2BA70, &qword_1E42A1F48);
    OUTLINED_FUNCTION_21_1();
    sub_1E383D6B4(v123, v124, v125);
    goto LABEL_29;
  }

  v76 = v2[1];
  v77 = v2[14];
  v78 = v2[15];
  type metadata accessor for DefaultButtonType();
  v79 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v287 = v78;

  v277 = [v79 init];
  memcpy(__src, v2 + 2, 0x5AuLL);
  v80 = v2[16];
  v81 = v2[17];
  v82 = v2[18];
  v83 = v2[19];
  v85 = v2[20];
  v84 = v2[21];
  OUTLINED_FUNCTION_4_47();
  sub_1E379539C((v2 + 24), __dst, &qword_1ECF2BA50, &qword_1E42A1F30);
  if (v76)
  {

    v92 = OUTLINED_FUNCTION_8_38(v86, v87, &qword_1ECF299E0, &qword_1E429C6D0, v88, v89, v90, v91, v206, v214, v221, v228, v235, v242, v249, v258, v84, v277, v287, v294, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7], v304[8], v304[9], v304[10], v304[11], v305, v306, v307, v308, v309, v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], v313, v314, v315, __src[0]);
    sub_1E379539C(v92, v93, v94, v95);
    sub_1E383D588(v80, v81, v82, v83, v85, v84);
    v96 = v76;
  }

  else
  {
    v211 = *(*v46 + 392);

    v132 = OUTLINED_FUNCTION_8_38(v126, v127, &qword_1ECF299E0, &qword_1E429C6D0, v128, v129, v130, v131, v211, v214, v221, v228, v235, v242, v249, v258, v84, v277, v287, v294, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7], v304[8], v304[9], v304[10], v304[11], v305, v306, v307, v308, v309, v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], v313, v314, v315, __src[0]);
    sub_1E379539C(v132, v133, v134, v135);
    v236 = v81;
    v243 = v80;
    v222 = v83;
    v229 = v82;
    v215 = v85;
    v136 = sub_1E383D588(v80, v81, v82, v83, v85, v84);
    if (v207(v136))
    {
      type metadata accessor for ButtonLayout();
      v96 = swift_dynamicCastClass();
      if (!v96)
      {
      }
    }

    else
    {
      v96 = 0;
    }
  }

  LOBYTE(v301) = 5;
  v176 = *(*v46 + 776);

  v177 = v176(v318, &v301, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (*&v318[24])
  {
    OUTLINED_FUNCTION_14_37(v177, v178, v179, MEMORY[0x1E69E6158], v180, v181, v182, v183, v207, v215, v222, v229, v236, v243, v250, v259, v268, v278, v288, v295, v301);
    v184 = OUTLINED_FUNCTION_21_4();
    if (v184)
    {
      v185 = v301;
    }

    else
    {
      v185 = 0;
    }

    if (v184)
    {
      v186 = *(&v301 + 1);
    }

    else
    {
      v186 = 0;
    }
  }

  else
  {
    sub_1E325F748(v318, &unk_1ECF296E0, &unk_1E4298030);
    v185 = 0;
    v186 = 0;
  }

  v187 = memcpy(v304, __src, 0x5AuLL);
  *&v318[7] = __dst[0];
  v321 = BYTE4(v250);
  *&v318[23] = __dst[1];
  *&v318[39] = *&__dst[2];
  *(&v301 + 1) = v96;
  *&v302 = v77;
  *(&v302 + 1) = v288;
  v303 = v278;
  v305 = v80;
  v306 = v81;
  v307 = v82;
  v308 = v83;
  v309 = v85;
  v310 = v268;
  v311 = v259;
  v312[0] = BYTE4(v250);
  *&v312[1] = *v318;
  *&v312[17] = *&v318[16];
  *&v312[32] = *&v318[31];
  v313 = v185;
  v314 = v186;
  v195 = OUTLINED_FUNCTION_14_37(v187, v188, v189, v190, v191, v192, v193, v194, v207, v215, v222, v229, v236, v243, v250, v259, v268, v278, v288, v295, v46);
  sub_1E379539C(v195, v196, &qword_1ECF2BA60, &qword_1E42A1F38);
  v320 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA68, &qword_1E42A1F40);
  v197 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v197, v198);
  sub_1E383D5F0();
  OUTLINED_FUNCTION_21_1();
  sub_1E383D6B4(v199, v200, v201);
  sub_1E4201F44();
LABEL_41:
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F748(v202, v203, v204);
}

uint64_t sub_1E383D588(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
    sub_1E37FAED4(result, a2);
    sub_1E37FAED4(a3, a4);

    return sub_1E37FAED4(a5, a6);
  }

  return result;
}

unint64_t sub_1E383D5F0()
{
  result = qword_1EE289000;
  if (!qword_1EE289000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BA68, &qword_1E42A1F40);
    sub_1E383D6B4(&_MergedGlobals_158, &qword_1ECF2BA70, &qword_1E42A1F48);
    sub_1E383D6B4(&qword_1EE28B488, &qword_1ECF2BA78, &qword_1E42A1F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289000);
  }

  return result;
}

uint64_t sub_1E383D6B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_5_53();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI16ImageViewContextVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI17ButtonViewContextVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_So6UIViewCSbIeggd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI17ButtonViewFactoryO08OverrideC8HandlersVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI37PlatformViewRepresentablSizeComputing_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E383D800(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
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

void *sub_1E383D840(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 29) = 0u;
    result = OUTLINED_FUNCTION_6_42(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 248) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 248) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

id sub_1E383D9B4(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = a1();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1E383DA54(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E383DB10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E383DBA4(uint64_t a1, char a2)
{
  sub_1E379539C(v2 + 200, &v8, &qword_1ECF2BA50, &qword_1E42A1F30);
  if (v9)
  {
    sub_1E3251BE8(&v8, v10);
    v5 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = *(v5 + 8);
    LOBYTE(v8) = a2 & 1;
    v6(a1);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1E325F748(&v8, &qword_1ECF2BA50, &qword_1E42A1F30);
  }

  return OUTLINED_FUNCTION_32_0();
}

id sub_1E383DCB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 8);
  LOWORD(v27) = 0;
  v28 = *(v3 + 136);
  v29 = *(v3 + 152);
  v30 = *(v3 + 168);

  sub_1E3F86D44();
  v8 = v7;

  if (!v8)
  {
    v8 = [objc_allocWithZone(VUIButton) init];
  }

  if (v6)
  {
    OUTLINED_FUNCTION_8();
    v10 = (*(v9 + 2168))();
    if ((v10 & 0x100000000) == 0)
    {
      LODWORD(v11) = v10;
      [v8 setContentHuggingPriority:1 forAxis:v11];
    }

    OUTLINED_FUNCTION_8();
    v13 = (*(v12 + 2192))();
    if ((v13 & 0x100000000) == 0)
    {
      LODWORD(v14) = v13;
      [v8 setContentHuggingPriority:0 forAxis:v14];
    }

    OUTLINED_FUNCTION_8();
    v16 = (*(v15 + 2240))();
    if ((v16 & 0x100000000) == 0)
    {
      LODWORD(v17) = v16;
      [v8 setContentCompressionResistancePriority:0 forAxis:v17];
    }

    OUTLINED_FUNCTION_8();
    v19 = (*(v18 + 2216))();
    if ((v19 & 0x100000000) == 0)
    {
      LODWORD(v20) = v19;
      [v8 setContentCompressionResistancePriority:1 forAxis:v20];
    }

    OUTLINED_FUNCTION_8();
    v22 = (*(v21 + 2024))();
    if (v22 != 2 && (v22 & 1) != 0)
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
      [v8 addInteraction_];
    }
  }

  v24 = v8;
  sub_1E383DF44(v8, a1, a2);
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25 && (*(v3 + 192) & 1) == 0)
  {
    [v25 setVuiTag_];
  }

  return v24;
}

double sub_1E383DF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_52();
  swift_getWitnessTable();
  sub_1E42024C4();
  sub_1E42024A4();
  swift_unknownObjectWeakAssign();

  return result;
}

void sub_1E383DFB8(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = sub_1E41FFCB4();
  v7 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, (v3 + 40), sizeof(__dst));
  v10 = *(v3 + 152);
  v45[0] = *(v3 + 136);
  v45[1] = v10;
  v45[2] = *(v3 + 168);

  sub_1E3F86D44();
  v12 = v11;

  if (!v12 || v12 != a1)
  {
    v38 = a2;
    v13 = sub_1E324FBDC();
    v14 = v39;
    (*(v7 + 16))(v9, v13, v39);
    v15 = *(a3 - 8);
    v16 = *(v15 + 16);
    v16(v43, v3, a3);
    v16(v42, v3, a3);
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();
    if (os_log_type_enabled(v17, v18))
    {
      v36 = v18;
      v37 = v17;
      v19 = v9;
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v20 = 136315394;
      v40 = *(v43[0] + 98);
      v21 = *(v15 + 8);
      v22 = v21(v43, a3);
      sub_1E37D144C(v22, v23, v24);
      v25 = sub_1E4207944();
      v27 = sub_1E3270FC8(v25, v26, &v41);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2080;
      if (*(v42[0] + 24))
      {
        v28 = *(v42[0] + 16);
        v29 = *(v42[0] + 24);
      }

      else
      {
        v29 = 0xE200000000000000;
        v28 = 16718;
      }

      v21(v42, a3);
      v31 = sub_1E3270FC8(v28, v29, &v41);

      *(v20 + 14) = v31;
      v32 = v37;
      _os_log_impl(&dword_1E323F000, v37, v36, "ButtonRepresentable: view isn't reused, type: %s, id: %s", v20, 0x16u);
      v33 = v35;
      swift_arrayDestroy();
      MEMORY[0x1E69143B0](v33, -1, -1);
      MEMORY[0x1E69143B0](v20, -1, -1);

      (*(v7 + 8))(v19, v39);
    }

    else
    {
      v30 = *(v15 + 8);
      v30(v43, a3);

      (*(v7 + 8))(v9, v14);
      v30(v42, a3);
    }

    a2 = v38;
  }

  [v12 invalidateIntrinsicContentSize];
  sub_1E383DF44(v12, a2, a3);
}

uint64_t sub_1E383E38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ButtonContainerRepresentable.Coordinator(0, *(a1 + 16), a3, a4);
  v5 = sub_1E383E3D8(*(v4 + 24));

  return v5;
}

uint64_t sub_1E383E3D8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  return v2;
}

uint64_t sub_1E383E420()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1E383E480()
{
  result = qword_1EE288C20;
  if (!qword_1EE288C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BA80, &qword_1E42A2218);
    sub_1E383D5F0();
    sub_1E383D6B4(&qword_1EE28B490, &qword_1ECF2BA60, &qword_1E42A1F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C20);
  }

  return result;
}

uint64_t sub_1E383E524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E383E568(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
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

void *sub_1E383E5A8(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[31] = 0;
    *(result + 29) = 0u;
    result = OUTLINED_FUNCTION_6_42(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 256) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 256) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E383E664(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_74();
  WitnessTable = swift_getWitnessTable();

  return sub_1E3E36D18(a1, a2, WitnessTable);
}

uint64_t sub_1E383E6B4()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_74();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E383E704@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1E383E38C(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_1E383E72C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_74();
  swift_getWitnessTable();
  return sub_1E3E36D40();
}

uint64_t sub_1E383E7C4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_52();
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E383E7F0()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_52();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E383E84C()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_52();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E383E8A8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_52();
  swift_getWitnessTable();
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E383E8F8(char a1)
{
  if (a1)
  {
    MEMORY[0x1E69109E0](0x64657375636F66, 0xE700000000000000);
  }

  if ((a1 & 2) != 0)
  {
    MEMORY[0x1E69109E0](0x6867696C68676968, 0xEB00000000646574);
  }

  return 0;
}

uint64_t sub_1E383E988@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_3_24();
  *a1 = result;
  return result;
}

uint64_t sub_1E383E9B0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0(a1);
  result = sub_1E383E9D8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1E383E9E0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0(a1);
  result = sub_1E383EA08(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1E383EA10(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0(a1);
  result = sub_1E383EA38(v2, v3);
  *v1 = result;
  return result;
}

BOOL sub_1E383EA48(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1E383EA74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E383EAA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E383EAA8(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1E383EACC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E383EB00(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E383EB00(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1E383EB60(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0(a1);
  result = sub_1E383EB88(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1E383EBEC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1E383EC14(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1E383EC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1E383EC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v50 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA88, &qword_1E42A24E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v53 = v46 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA90, &qword_1E42A24E8);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v46 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA98, &qword_1E42A24F0);
  OUTLINED_FUNCTION_0_10();
  v49 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v48 = v46 - v15;
  v55 = sub_1E42011E4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_9();
  v19 = (*(v2 + 32) & 1) != 0 && *(v2 + 56) != 0;
  OUTLINED_FUNCTION_17_6();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_14_38(v20);
  OUTLINED_FUNCTION_17_6();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_14_38(v21);
  OUTLINED_FUNCTION_21_29();
  OUTLINED_FUNCTION_21_29();
  sub_1E42011D4();
  if (v19)
  {
    sub_1E4200BA4();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAA0, &qword_1E42A24F8);
    v23 = sub_1E38407D4(&qword_1EE2889A8, &qword_1ECF2BAA0, &qword_1E42A24F8);
    OUTLINED_FUNCTION_8_39();
    v26 = sub_1E383FAA4(v24, v25, MEMORY[0x1E697C100]);
    v46[1] = v22;
    v47 = v12;
    v27 = v9;
    v28 = v55;
    v46[0] = v23;
    sub_1E42034B4();
    v56 = *(v4 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    sub_1E42038F4();
    OUTLINED_FUNCTION_17_6();
    v29 = swift_allocObject();
    v50 = v3;
    OUTLINED_FUNCTION_14_38(v29);
    OUTLINED_FUNCTION_21_29();
    *&v56 = v22;
    *(&v56 + 1) = v28;
    v57 = v23;
    v58 = v26;
    v30 = OUTLINED_FUNCTION_9_35();
    v31 = v47;
    v32 = v48;
    v33 = v51;
    sub_1E4203524();
    v3 = v50;

    (*(v27 + 8))(v31, v33);
    v34 = v49;
    v35 = v54;
    (*(v49 + 16))(v53, v32, v54);
    swift_storeEnumTagMultiPayload();
    *&v56 = v33;
    *(&v56 + 1) = MEMORY[0x1E69E6370];
    v57 = v30;
    v58 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_10_33();
    sub_1E4201F44();
    (*(v34 + 8))(v32, v35);
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAA0, &qword_1E42A24F8);
    OUTLINED_FUNCTION_2();
    (*(v37 + 16))(v53, v50, v36);
    swift_storeEnumTagMultiPayload();
    v38 = sub_1E38407D4(&qword_1EE2889A8, &qword_1ECF2BAA0, &qword_1E42A24F8);
    OUTLINED_FUNCTION_8_39();
    v41 = sub_1E383FAA4(v39, v40, MEMORY[0x1E697C100]);
    *&v56 = v36;
    *(&v56 + 1) = v55;
    v57 = v38;
    v58 = v41;
    v42 = OUTLINED_FUNCTION_9_35();
    *&v56 = v51;
    *(&v56 + 1) = MEMORY[0x1E69E6370];
    v57 = v42;
    v58 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_10_33();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_17_6();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_14_38(v43);
  v44 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAA8, &unk_1E42A2500) + 36));
  *v44 = sub_1E383F2DC;
  v44[1] = v43;
  OUTLINED_FUNCTION_21_29();
  return (*(v17 + 8))(v3, v55);
}

uint64_t sub_1E383F214()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1E383F244(uint64_t result)
{
  if (*(v1 + 48))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    return sub_1E4203904();
  }

  return v2;
}

uint64_t sub_1E383F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_45(a1, a2, a3, a4, a5, a6, a7, a8, v20, v22, v24, v27, v28, v31, v33, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8, &qword_1E42A28F0);
  v10 = OUTLINED_FUNCTION_15_41(v9);
  OUTLINED_FUNCTION_16_29(v10, v11, v12, v13, v14, v15, v16, v17, v21, v23, v25, v29, v30, v32, v34, v35);
  sub_1E384076C(&v35);
  v18 = *(v8 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8, &qword_1E42A28F0);
  sub_1E42038F4();
  return v18(v26);
}

uint64_t objectdestroyTm_6()
{

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_17_6();

  return swift_deallocObject();
}

uint64_t sub_1E383F3F8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_45(a1, a2, a3, a4, a5, a6, a7, a8, v20, v22, v24, v27, v28, v31, v33, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8, &qword_1E42A28F0);
  v10 = OUTLINED_FUNCTION_15_41(v9);
  OUTLINED_FUNCTION_16_29(v10, v11, v12, v13, v14, v15, v16, v17, v21, v23, v25, v29, v30, v32, v34, v35);
  sub_1E384076C(&v35);
  v18 = *(v8 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8, &qword_1E42A28F0);
  sub_1E42038F4();
  return v18(v26);
}

uint64_t sub_1E383F4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E42038E4();
  result = sub_1E42038E4();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v13;
  *(a6 + 24) = v14;
  *(a6 + 32) = a3;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  return result;
}

uint64_t sub_1E383F5C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1E37FAED4(a4, a5);
  sub_1E383F4C8(a2, a3, a1, a4, a5, v15);
  MEMORY[0x1E690DE70](v15, a6, &unk_1F5D59F48, a7);
  memcpy(__dst, v15, sizeof(__dst));
  return sub_1E383F68C(__dst);
}

void sub_1E383F6D4(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v35 = a6;
  v13 = sub_1E4201524();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_9();
  sub_1E4203AF4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (a1)
    {
      OUTLINED_FUNCTION_8();
      v22 = (*(v21 + 1272))();
      if (v23)
      {
        v24 = -0.0;
      }

      else
      {
        *&v24 = v22 ^ 0x8000000000000000;
      }

      v16 = COERCE_DOUBLE((*(*a1 + 1296))());
      if (v17)
      {
        OUTLINED_FUNCTION_8();
        v16 = COERCE_DOUBLE((*(v25 + 552))(&v39));
        v26 = 0.0;
        if ((v43 & 1) == 0)
        {
          v26 = sub_1E3952BE8(v39, v40, v41, v42);
        }
      }

      else
      {
        v26 = v16;
      }

      if (v24 == 0.0)
      {
        if (a2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8();
        v16 = COERCE_DOUBLE((*(v28 + 1296))());
        if ((v17 & 1) == 0)
        {
          v26 = v24 + v26;
        }

        if (a2)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    v26 = 0.0;
  }

  else
  {
    v26 = 0.0;
    if (a1)
    {
      OUTLINED_FUNCTION_8();
      v16 = COERCE_DOUBLE((*(v27 + 552))(&v39));
      if ((v43 & 1) == 0)
      {
        v26 = sub_1E3952BE8(v39, v40, v41, v42);
      }
    }
  }

  v24 = -0.0;
  if (a2)
  {
LABEL_18:
    sub_1E383FAEC(*&v16, v17, v18);
    goto LABEL_25;
  }

LABEL_22:
  if (a3)
  {
    v29 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v30 + 104))(v20, v29);
    sub_1E383FAA4(&qword_1ECF2BAB8, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  }

  else
  {
    v31 = *(sub_1E4201534() + 20);
    v32 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v33 + 104))(v7 + v31, v32);
    *v7 = v26;
    v7[1] = v26;
    *(v7 + *(v13 + 20)) = v24;
    sub_1E383FAA4(&qword_1EE289400, MEMORY[0x1E697EAB8], MEMORY[0x1E697EAB0]);
  }

LABEL_25:
  v37 = sub_1E4203BD4();
  v38 = a5 & 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAB0, &qword_1E42A2510);
  MEMORY[0x1E690DE70](&v37, v35, v34, v36);
}

uint64_t sub_1E383FAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E383FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2BAC0;
  if (!qword_1ECF2BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BAC0);
  }

  return result;
}

unint64_t sub_1E383FB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27BEC8;
  if (!qword_1EE27BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BEC8);
  }

  return result;
}

unint64_t sub_1E383FB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27BEC0;
  if (!qword_1EE27BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BEC0);
  }

  return result;
}

unint64_t sub_1E383FBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27BED0;
  if (!qword_1EE27BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BED0);
  }

  return result;
}

unint64_t sub_1E383FC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27BEB8;
  if (!qword_1EE27BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BEB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E383FCDC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E383FD1C(uint64_t result, int a2, int a3)
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

unint64_t sub_1E383FD78()
{
  result = qword_1EE289888;
  if (!qword_1EE289888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAA8, &unk_1E42A2500);
    v3 = sub_1E383FE04();
    sub_1E3840008(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289888);
  }

  return result;
}

unint64_t sub_1E383FE04()
{
  result = qword_1EE2886E8;
  if (!qword_1EE2886E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAC8, &qword_1E42A27C8);
    sub_1E383FE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886E8);
  }

  return result;
}

unint64_t sub_1E383FE88()
{
  result = qword_1EE288DD0;
  if (!qword_1EE288DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAD0, &unk_1E42A27D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BA90, &qword_1E42A24E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAA0, &qword_1E42A24F8);
    sub_1E42011E4();
    sub_1E38407D4(&qword_1EE2889A8, &qword_1ECF2BAA0, &qword_1E42A24F8);
    sub_1E383FAA4(&qword_1EE289CE8, MEMORY[0x1E697C108], MEMORY[0x1E697C100]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DD0);
  }

  return result;
}

unint64_t sub_1E3840008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE288A00;
  if (!qword_1EE288A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A00);
  }

  return result;
}

unint64_t sub_1E384005C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE274338[0];
  if (!qword_1EE274338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE274338);
  }

  return result;
}

unint64_t sub_1E38400B0()
{
  result = qword_1EE2925E8[0];
  if (!qword_1EE2925E8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAB0, &qword_1E42A2510);
    OUTLINED_FUNCTION_0_53();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2925E8);
  }

  return result;
}

uint64_t sub_1E3840104(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E384017C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return OUTLINED_FUNCTION_18();
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1E38402E4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v19 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v19))
      {
        v14 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v14 = v20;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            *(a1 + v9) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v18 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v21 = v15 & ~(-1 << v11);
        v22 = OUTLINED_FUNCTION_32_0();
        bzero(v22, v23);
        if (v10 == 3)
        {
          *a1 = v21;
          *(a1 + 2) = BYTE2(v21);
        }

        else if (v10 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      v16 = OUTLINED_FUNCTION_32_0();
      bzero(v16, v17);
      *a1 = v15;
      v18 = 1;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v18;
        break;
      case 2:
        *(a1 + v10) = v18;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3840558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAD8, &qword_1E42A28E0);
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_1E38405CC@<X0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_getWitnessTable();
  v5 = sub_1E42020F4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  OUTLINED_FUNCTION_2_45();
  swift_getWitnessTable();
  v11 = *(v7 + 16);
  v11(v10, a1, v5);
  v11(a3, v10, v5);
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1E38406FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE0, &qword_1E42A28E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E384076C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8, &qword_1E42A28F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E38407D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_2_45();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E384081C()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v16 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v15 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E32ADE38();
  v12 = sub_1E4206A04();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_1E3843118;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1E378AEA4;
  v17[3] = &block_descriptor_17;
  v14 = _Block_copy(v17);

  sub_1E4203FE4();
  v17[0] = MEMORY[0x1E69E7CC0];
  sub_1E38432E8(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v11, v5, v14);
  _Block_release(v14);

  (*(v16 + 8))(v5, v0);
  (*(v7 + 8))(v11, v15);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3840ACC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_defaultFocusIndex;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_defaultFocusIndex, a2);
  return *(v2 + v3);
}

void sub_1E3840B04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_defaultFocusIndex;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E384081C();
}

void (*sub_1E3840B58(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E3840BBC;
}

void sub_1E3840BBC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E384081C();
  }
}

void sub_1E3840C54(unint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_paginationOffset) = 5;
  OUTLINED_FUNCTION_14_39(&OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_cancellables);
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didSelectItem);
  *v3 = v4;
  v3[1] = v5;
  v6 = (v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didScrollToPaginationPoint);
  *v6 = v7;
  v6[1] = v8;

  v9 = j__OUTLINED_FUNCTION_18();
  sub_1E378C3B0(a1, v9 & 1);
  if ((TVAppFeature.isEnabled.getter(10, v10, v11) & 1) == 0 || (OUTLINED_FUNCTION_12_6(), v13 = *(v12 + 464), v14 = , v13(v14), OUTLINED_FUNCTION_10_14(), !a1))
  {

LABEL_12:

    return;
  }

  if (!sub_1E32AE9B0(a1))
  {

    goto LABEL_12;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
LABEL_7:

    type metadata accessor for CollectionViewModel();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_26_0();
      v19 = *(v18 + 648);

      v19(v20);
      OUTLINED_FUNCTION_10_14();

      swift_beginAccess();
      *(v17 + 40) = &off_1F5D55A68;
      swift_unknownObjectWeakAssign();
    }

    else
    {
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_0();
  if (v15)
  {

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1E3840EB8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_paginationOffset) = 5;
  OUTLINED_FUNCTION_14_39(&OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_cancellables);
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3840FD4()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_1E4206E54();
    v14 = sub_1E3270FC8(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v8, v9, "ClipsTabViewController:: Ignoring set preferredContentSize %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E69143B0](v11, -1, -1);
    OUTLINED_FUNCTION_7_9();
  }

  return (*(v2 + 8))(v6, v0);
}

void sub_1E3841184(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ClipsTabViewController(0);
  objc_msgSendSuper2(&v14, sel_vui_viewDidDisappear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v3) + 0x1A0))(v13);
  if (v13[3])
  {
    sub_1E327F454(v13, v11);
    sub_1E325F748(v13, &unk_1ECF296D0, &qword_1E429BAA0);
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    OUTLINED_FUNCTION_6_43();
    v6 = v5(v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v6)
    {
      if (*(v6 + 16))
      {
        v7 = [objc_opt_self() sharedInstance];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        v13[0] = sub_1E4205F14();
        v13[1] = v9;
        sub_1E4207414();
        *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
        *(inited + 72) = v6;
        sub_1E4205CB4();
        v10 = sub_1E4205C44();

        [v7 recordImpressions_];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1E325F748(v13, &unk_1ECF296D0, &qword_1E429BAA0);
  }
}

void sub_1E384140C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v26 = v11;
  v27 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ClipsTabViewController(0);
  v29.receiver = v0;
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, sel_vui_viewDidLoad);
  OUTLINED_FUNCTION_26_3();
  v17 = *((*MEMORY[0x1E69E7D40] & v16) + 0x1B8);
  v18 = v17();
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor_];

  v20 = v17();
  [v20 setVuiClipsToBounds_];

  v21 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E32ADE38();
  v22 = sub_1E4206A04();
  v28 = v22;
  v23 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v23);
  sub_1E38432E8(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E38432E8(&qword_1EE23B1E0, sub_1E32ADE38, MEMORY[0x1E69E8028]);
  sub_1E42007D4();
  sub_1E325F748(v3, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v6 + 8))(v10, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);
  v24 = v26;
  sub_1E4200844();
  OUTLINED_FUNCTION_10_14();
  (*(v27 + 8))(v14, v24);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3841884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & *v2) + 0x230))(a1))
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_26_0();
  v7 = (*(v6 + 464))();

  if (!v7)
  {
    goto LABEL_33;
  }

  if (sub_1E32AE9B0(v7))
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v8)
      {
        __break(1u);
        goto LABEL_36;
      }
    }

    type metadata accessor for CollectionViewModel();
    if (!swift_dynamicCastClass() || (OUTLINED_FUNCTION_26_0(), v10 = *(v9 + 1040), v11 = , v12 = v10(v11), , !v12))
    {
LABEL_16:
      OUTLINED_FUNCTION_13_46();

      return;
    }

    if (sub_1E32AE9B0(v12))
    {
      if ((v12 & 0xC000000000000001) == 0)
      {
        OUTLINED_FUNCTION_34_0();
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = *(v12 + 32);

        goto LABEL_13;
      }

LABEL_36:
      OUTLINED_FUNCTION_41_1();
      v14 = v35;
LABEL_13:

      OUTLINED_FUNCTION_12_6();
      v16 = *(v15 + 872);

      v16(v17);
      OUTLINED_FUNCTION_10_14();
      if (!v14 || (sub_1E3841D9C(a2, v14), v19 = v18, v21 = v20, v22 = , (v21 & 1) != 0))
      {

        goto LABEL_16;
      }

      (*((*v5 & *v3) + 0x1A0))(v38, v22);
      if (v38[3])
      {
        sub_1E327F454(v38, v36);
        sub_1E325F748(v38, &unk_1ECF296D0, &qword_1E429BAA0);
        v25 = v37;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        OUTLINED_FUNCTION_6_43();
        v27 = v26(v25);
        __swift_destroy_boxed_opaque_existential_1(v36);
      }

      else
      {
        sub_1E325F748(v38, &unk_1ECF296D0, &qword_1E429BAA0);
        v27 = 0;
      }

      type metadata accessor for Metrics(0);
      v28 = sub_1E3BA7AA8();
      v29 = sub_1E3BA7F00(a2);
      if ((*(*a2 + 576))())
      {
        OUTLINED_FUNCTION_26_0();
        (*(v30 + 288))(1, v27, v28, v29);
      }

      if (v27)
      {
        if (*(v27 + 16))
        {
          v31 = [objc_opt_self() sharedInstance];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          v38[0] = sub_1E4205F14();
          v38[1] = v33;
          sub_1E4207414();
          *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
          *(inited + 72) = v27;
          sub_1E4205CB4();
          v34 = sub_1E4205C44();

          [v31 recordImpressions_];
        }

        else
        {
        }
      }

      (*(v3 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didSelectItem))(v19);

LABEL_33:
      OUTLINED_FUNCTION_13_46();
      return;
    }
  }

  OUTLINED_FUNCTION_13_46();
}

void sub_1E3841D9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    type metadata accessor for ViewModel();
    sub_1E38432E8(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
    v5 = sub_1E4205E84();

    if (v5)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1E3841ECC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E3ED6E94();
  if (!(*((*MEMORY[0x1E69E7D40] & *v0) + 0x230))())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_26_0();
  v14 = (*(v13 + 464))();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  if (!sub_1E32AE9B0(v14))
  {
LABEL_19:

    goto LABEL_20;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v16)
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_26_0();
  v18 = (*(v17 + 1040))();
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  if (!sub_1E32AE9B0(v18))
  {

    goto LABEL_19;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_38:
    OUTLINED_FUNCTION_41_1();
    v21 = v37;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_34_0();
  if (!v20)
  {
    __break(1u);
    goto LABEL_40;
  }

  v21 = *(v19 + 32);

LABEL_13:

  v23 = (*(*v21 + 872))(v22);

  if (!v23)
  {
LABEL_17:

LABEL_18:

LABEL_20:
    v26 = sub_1E324FBDC();
    (*(v8 + 16))(v12, v26, v6);
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E323F000, v27, v28, "ClipsTabViewController:: failed to get collection view model", v29, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    (*(v8 + 8))(v12, v6);
    goto LABEL_23;
  }

  (*(*v3 + 320))(v24);
  if (!v25)
  {
    if (!v3[3])
    {
      sub_1E41FE844();
      sub_1E4207944();
    }
  }

  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  v31 = v30;
  v33 = v32;

  sub_1E3839D34(v31, v33, v5);
  v34 = v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_lastPaginationIndex;
  if ((*(v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_lastPaginationIndex + 8) & 1) == 0)
  {

LABEL_35:

LABEL_23:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v35 = sub_1E41FE844();
  v36 = sub_1E32AE9B0(v23);

  if (!__OFSUB__(v36, 5))
  {
    if (v35 >= v36 - 5)
    {
      *v34 = sub_1E41FE844();
      v34[8] = 0;
      (*(v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didScrollToPaginationPoint))();
    }

    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
}

void sub_1E3842380()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  OUTLINED_FUNCTION_26_3();
  if (!(*((*MEMORY[0x1E69E7D40] & v13) + 0x230))())
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_26_0();
  v15 = (*(v14 + 464))();
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  if (!sub_1E32AE9B0(v15))
  {

LABEL_14:
    v26 = sub_1E324FBDC();
    (*(v6 + 16))(v9, v26, v4);
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E323F000, v27, v28, "ClipsTabViewController:: failed to get collection view model", v29, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    (*(v6 + 8))(v9, v4);
    goto LABEL_17;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v18 = v34;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_0();
  if (v17)
  {
    v18 = *(v16 + 32);

LABEL_7:

    type metadata accessor for CollectionViewModel();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      v21 = sub_1E324FBDC();
      (*(v6 + 16))(v12, v21, v4);

      v22 = sub_1E41FFC94();
      v23 = sub_1E42067E4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v35[1] = v18;
        v25 = v24;
        *v24 = 134217984;
        *(v24 + 4) = sub_1E32AE9B0(v3);

        _os_log_impl(&dword_1E323F000, v22, v23, "ClipsTabViewController:: appending %ld items", v25, 0xCu);
        MEMORY[0x1E69143B0](v25, -1, -1);
      }

      else
      {
      }

      v30 = (*(v6 + 8))(v12, v4);
      v31 = (*(*v20 + 1040))(v30);
      if (v31)
      {
        v32 = sub_1E37D027C(v31);

        if (v32)
        {
          (*(*v32 + 1016))(v3);
        }
      }

      v33 = v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_lastPaginationIndex;
      *v33 = 0;
      *(v33 + 8) = 1;
      sub_1E405123C();

LABEL_17:
      OUTLINED_FUNCTION_25_2();
      return;
    }

LABEL_13:

    goto LABEL_14;
  }

  __break(1u);
}

void sub_1E38427B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_26_3();
  v13 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & v14) + 0x230))())
  {
LABEL_34:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v16 = (*(v15 + 464))();
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  if (sub_1E32AE9B0(v16))
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v18)
      {
        __break(1u);
        goto LABEL_37;
      }
    }

    type metadata accessor for CollectionViewModel();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_26_0();
    v20 = (*(v19 + 1040))();
    if (!v20)
    {
      goto LABEL_23;
    }

    v21 = v20;
    if (!sub_1E32AE9B0(v20))
    {

      goto LABEL_23;
    }

    v40 = v3;
    if ((v21 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_34_0();
      if (!v22)
      {
        __break(1u);
        goto LABEL_39;
      }

      v23 = *(v21 + 32);

      goto LABEL_13;
    }

LABEL_37:
    OUTLINED_FUNCTION_41_1();
    v23 = v37;
LABEL_13:

    v25 = (*(*v23 + 872))(v24);

    if (v25)
    {
      v26 = sub_1E32AE9B0(v25);

      if ((v26 & 0x8000000000000000) == 0)
      {
        if ((v5 & 0x8000000000000000) == 0 && v26 > v5)
        {
          v38 = *((*v13 & *v1) + 0x1B8);
          v28 = (v38)(v27);
          v29 = [v28 collectionViewLayout];

          type metadata accessor for StackCollectionViewCompositionalLayout();
          v30 = swift_dynamicCastClass();
          v39 = v30;
          if (v30)
          {
            v31 = [v30 configuration];
          }

          else
          {

            v31 = 0;
          }

          v34 = v38();
          MEMORY[0x1E6909190](v5, 0);
          v35 = sub_1E41FE7E4();
          (*(v8 + 8))(v12, v6);
          if (v31)
          {
            if ([v31 scrollDirection] == 1)
            {
              v36 = 8;
            }

            else
            {
              v36 = 1;
            }
          }

          else
          {
            v36 = 8;
          }

          [v34 scrollToItemAtIndexPath:v35 atScrollPosition:v36 animated:v40 & 1];

          goto LABEL_34;
        }

        goto LABEL_23;
      }

LABEL_39:
      __break(1u);
      return;
    }

LABEL_23:

LABEL_24:
    OUTLINED_FUNCTION_25_2();

    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3842BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!(*((*MEMORY[0x1E69E7D40] & *v2) + 0x230))(a1))
  {
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v6 = (*(v5 + 464))();
  if (!v6)
  {
LABEL_16:

    return;
  }

  v7 = v6;
  if (!sub_1E32AE9B0(v6))
  {
LABEL_17:

    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v8)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_26_0();
  v10 = (*(v9 + 1040))();
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  if (!sub_1E32AE9B0(v10))
  {

    goto LABEL_17;
  }

  if ((v11 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_34_0();
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = *(v11 + 32);

    goto LABEL_13;
  }

LABEL_23:
  OUTLINED_FUNCTION_41_1();
  v13 = v20;
LABEL_13:

  v15 = (*(*v13 + 872))(v14);

  if (!v15 || (sub_1E3841D9C(a2, v15), v17 = v16, v19 = v18, , (v19 & 1) != 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  (*(v3 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didSelectItem))(v17);
}

double sub_1E3842E48()
{

  return result;
}

id sub_1E3842EA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClipsTabViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClipsTabViewController(uint64_t a1)
{
  result = qword_1ECF482E0;
  if (!qword_1ECF482E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3842F88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8);
    v6 = Strong;
    v7 = v5();
    [v7 setNeedsFocusUpdate];

    v8 = v5();
    [v8 updateFocusIfNeeded];

    (*((*v4 & *v6) + 0xA50))();
    sub_1E38427B0();
  }
}

void sub_1E3843118(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x248);
    v6 = Strong;
    v7 = v5();

    if (v7)
    {
      OUTLINED_FUNCTION_12_6();
      (*(v8 + 1040))();
      OUTLINED_FUNCTION_10_14();
      if (sub_1E32AE9B0(v7))
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_41_1();
        }

        else
        {
          OUTLINED_FUNCTION_34_0();
          if (!v9)
          {
            __break(1u);
            return;
          }
        }

        OUTLINED_FUNCTION_12_6();
        v11 = (*(v10 + 872))();

        if (v11)
        {
          v13 = *((*v4 & *v6) + 0xA50);
          v14 = v13(v12);
          v15 = sub_1E32AE9B0(v11);

          if (v14 < v15)
          {
            v13(v16);
            sub_1E38427B0();
          }
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1E38432E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E3843330()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = MEMORY[0x1E69E6158];
  if (v0)
  {
    sub_1E3741090(0x415F5443454C4553, 0xEA00000000004C4CLL, v0);
  }

  v2 = type metadata accessor for TextViewModel();
  v10 = OUTLINED_FUNCTION_5_54(v2, v3, v4, v5, v6, v7, v8, v9, v83, v88, v94, v100, v105, v110, v116, v122, v128, v134, v140, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v221);
  v141 = v10;
  if (v0)
  {
    v10 = sub_1E3741090(0x5443454C45534544, 0xEC0000004C4C415FLL, v0);
  }

  v18 = OUTLINED_FUNCTION_5_54(v10, v11, v12, v13, v14, v15, v16, v17, v84, v89, v95, v101, v106, v111, v117, v123, v129, v135, v141, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v212, v217, v222);
  v136 = v18;
  if (v0)
  {
    v18 = sub_1E3741090(0x4554454C4544, 0xE600000000000000, v0);
  }

  v26 = OUTLINED_FUNCTION_5_54(v18, v19, v20, v21, v22, v23, v24, v25, v85, v90, v96, v102, v107, v112, v118, v124, v130, v136, v142, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223);
  v131 = v26;
  if (v0)
  {
    v26 = sub_1E3741090(1414087749, 0xE400000000000000, v0);
  }

  v34 = OUTLINED_FUNCTION_5_54(v26, v27, v28, v29, v30, v31, v32, v33, v86, v91, v97, v103, v108, v113, v119, v125, v131, v137, v143, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v214, v219, v224);
  v126 = v34;
  if (v0)
  {
    v34 = sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v0);
  }

  v121 = OUTLINED_FUNCTION_5_54(v34, v35, v36, v37, v38, v39, v40, v41, v87, v92, v98, v104, v109, v114, v120, v126, v132, v138, v144, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, v225);
  type metadata accessor for ImageLayout();
  v42 = sub_1E3BD61D8();
  v43 = *(*v42 + 208);

  v44 = OUTLINED_FUNCTION_32_23();
  v43(v44);
  v45 = OUTLINED_FUNCTION_32_23();
  v46(v45);
  v47 = sub_1E4202A44();
  (*(*v42 + 2120))(v47);
  (*(*v42 + 2168))(3);
  v48 = *sub_1E3E60700();
  v49 = *(*v42 + 680);
  v50 = v48;
  v49(v48);

  v51 = sub_1E3BD61D8();
  v52 = *(*v51 + 208);

  v53 = OUTLINED_FUNCTION_32_23();
  v52(v53);
  OUTLINED_FUNCTION_30_15();
  v54 = OUTLINED_FUNCTION_32_23();
  v55(v54);
  sub_1E4202A44();
  OUTLINED_FUNCTION_30_15();
  (*(v56 + 2120))();
  OUTLINED_FUNCTION_30_15();
  (*(v57 + 2168))(3);
  v58 = [objc_opt_self() grayColor];
  OUTLINED_FUNCTION_30_15();
  (*(v59 + 680))();

  type metadata accessor for ImageViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v61;
  *(inited + 40) = v62;
  *(inited + 72) = v1;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x80000001E425FF50;
  *(inited + 80) = sub_1E3C7CCAC(0);
  *(inited + 88) = v63;
  *(inited + 120) = v1;
  *(inited + 96) = 0xD000000000000020;
  *(inited + 104) = 0x80000001E425FF70;
  v64 = OUTLINED_FUNCTION_34_20();
  v115 = sub_1E3F5321C(39, v64, 0);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(v65 + 32) = v66;
  *(v65 + 40) = v67;
  *(v65 + 72) = v1;
  *(v65 + 48) = 0xD000000000000015;
  *(v65 + 56) = 0x80000001E425FFA0;
  *(v65 + 80) = sub_1E3C7CCAC(0);
  *(v65 + 88) = v68;
  *(v65 + 120) = v1;
  *(v65 + 96) = 0xD000000000000011;
  *(v65 + 104) = 0x80000001E425FFC0;
  v69 = OUTLINED_FUNCTION_34_20();
  v70 = sub_1E3F5321C(39, v69, 0);
  if (v0)
  {
    v99 = v70;
    v93 = sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v0);
    v72 = v71;
    v73 = sub_1E3741090(0xD000000000000012, 0x80000001E4260000, v0);
    v75 = v74;
    v76 = sub_1E38469F4(0xD000000000000013, 0x80000001E4260020, v0);
    if (v76)
    {
      v77 = v76;
      v78 = sub_1E4205F14();
      v80 = v79;
    }

    else
    {

      v78 = 0;
      v80 = 0;
    }

    v81 = v93;
    v70 = v99;
  }

  else
  {
    v78 = 0;
    v80 = 0;
    v73 = 0;
    v75 = 0;
    v81 = 0;
    v72 = 0;
  }

  qword_1ECF712C0 = v145;
  *algn_1ECF712C8 = v139;
  qword_1ECF712D0 = v133;
  qword_1ECF712D8 = v127;
  qword_1ECF712E0 = v121;
  unk_1ECF712E8 = v42;
  qword_1ECF712F0 = v51;
  unk_1ECF712F8 = v115;
  qword_1ECF71300 = v70;
  result = 2.30737904e21;
  unk_1ECF71308 = xmmword_1E42A2940;
  qword_1ECF71318 = 0xD000000000000013;
  unk_1ECF71320 = 0x80000001E425FFE0;
  qword_1ECF71328 = v81;
  unk_1ECF71330 = v72;
  qword_1ECF71338 = v73;
  unk_1ECF71340 = v75;
  qword_1ECF71348 = v78;
  unk_1ECF71350 = v80;
  return result;
}

uint64_t sub_1E3843A90()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1E3843AC0(char a1)
{
  result = OUTLINED_FUNCTION_3_0(v1 + 16, v4);
  *(v1 + 16) = a1;
  return result;
}

double sub_1E3843B48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return result;
}

uint64_t sub_1E3843C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4203C04();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 200))(v7);
}

uint64_t sub_1E3843CF0(uint64_t a1)
{
  v2 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  v6();

  sub_1E4200684();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1E3843E08())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3843E94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB00, &unk_1E42A29A0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAF8, &qword_1E42A2998);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3843F7C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB00, &unk_1E42A29A0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAF8, &qword_1E42A2998);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E384407C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38440EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3844138(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t sub_1E384418C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_19_19(v0);
}

uint64_t (*sub_1E38441EC())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3844278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB18, &qword_1E42A2A00);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB10, &qword_1E42A29F8);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3844360()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB18, &qword_1E42A2A00);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB10, &qword_1E42A29F8);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void sub_1E3844460(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3844528()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3844598@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E38445EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 296);

  return v4(v2, v3);
}

uint64_t sub_1E384465C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E38446D8())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3844764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20, "tZ\t");
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E384484C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20, "tZ\t");
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E384494C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38449BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3844A10(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 344);

  return v2(v3);
}

uint64_t sub_1E3844A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_19_19(v0);
}

uint64_t (*sub_1E3844ACC())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3844B3C;
}

void sub_1E3844B40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1E3844BC4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_23();
  return swift_endAccess();
}

uint64_t sub_1E3844C34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB38, &unk_1E42AB530);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3844D1C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB38, &unk_1E42AB530);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3844E1C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3844E60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_allItemIds;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_allItemIds, v5);
  *(v1 + v3) = a1;
}

void *sub_1E3844F00@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_1E3843A58(__dst, v5);
  return memcpy(a1, __dst, 0x98uLL);
}

uint64_t sub_1E3844F74(const void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs, &v5);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x98uLL);
  return sub_1E3844FE0(__dst);
}

uint64_t sub_1E3845060()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_lastKnownConfirmationAction;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E38450A0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_lastKnownConfirmationAction;
  result = OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_lastKnownConfirmationAction, v5);
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1E3845144()
{
  result = qword_1ECF2BB48;
  if (!qword_1ECF2BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB40, &qword_1E42A2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB48);
  }

  return result;
}

uint64_t sub_1E38451A8()
{
  v1 = *(*v0 + 240);

  v7[0] = v1(v2);
  sub_1E4200524();

  v3 = (*(*v0 + 256))(v7);
  v5 = v4;

  *v5 = MEMORY[0x1E69E7CD0];
  return v3(v7, 0);
}

uint64_t sub_1E38452BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB40, &qword_1E42A2AC0);
  sub_1E3845144();
  return sub_1E42006B4();
}

double sub_1E3845318()
{
  v1 = *(*v0 + 240);

  v1(v2);
  sub_1E4200524();

  return result;
}

uint64_t sub_1E38453A0()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionDisplayCount;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E38453E8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionDisplayCount;
  result = OUTLINED_FUNCTION_3_0(v5, v7);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3845440(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionDisplayCount;
  result = OUTLINED_FUNCTION_3_0(v3, v5);
  *v3 = a1;
  *(v3 + 8) = 0;
  return result;
}

uint64_t sub_1E3845488(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  sub_1E38454C8(v1);
  return v2;
}

uint64_t sub_1E38454C8(int a1)
{
  v2 = v1;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  OUTLINED_FUNCTION_0_10();
  v50 = v4;
  v51 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_0_10();
  v46 = v8;
  v47 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_19(v10, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB10, &qword_1E42A29F8);
  OUTLINED_FUNCTION_0_10();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAF8, &qword_1E42A2998);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v21 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v42 - v29;
  *(v2 + 16) = 1;
  v49 = v2 + 16;
  v31 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__editState;
  (*(v23 + 104))(&v42 - v29, *MEMORY[0x1E697D710], v21, v28);
  (*(v23 + 16))(v26, v30, v21);
  sub_1E4200634();
  (*(v23 + 8))(v30, v21);
  (*(v17 + 32))(v2 + v31, v20, v42);
  v32 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__selections;
  v54[0] = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB08, &qword_1E42B6340);
  sub_1E4200634();
  (*(v43 + 32))(v2 + v32, v15, v44);
  v33 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__singleSelection;
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  v34 = v45;
  sub_1E4200634();
  (*(v46 + 32))(v2 + v33, v34, v47);
  v35 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__selectedViewModel;
  v54[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
  v36 = v48;
  sub_1E4200634();
  (*(v50 + 32))(v2 + v35, v36, v51);
  *(v2 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_allItemIds) = MEMORY[0x1E69E7CC0];
  v37 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs;
  if (_MergedGlobals_160 != -1)
  {
    OUTLINED_FUNCTION_4_48(&_MergedGlobals_160);
  }

  memcpy(v54, &qword_1ECF712C0, 0x98uLL);
  memmove((v2 + v37), &qword_1ECF712C0, 0x98uLL);
  *(v2 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_lastKnownConfirmationAction) = 2;
  v38 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_deleteActionSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB40, &qword_1E42A2AC0);
  swift_allocObject();
  sub_1E3843A58(v54, v53);
  *(v2 + v38) = sub_1E4200544();
  v39 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionActionSubject;
  swift_allocObject();
  *(v2 + v39) = sub_1E4200544();
  v40 = v2 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionDisplayCount;
  *v40 = 0;
  *(v40 + 8) = 1;
  OUTLINED_FUNCTION_3_0(v49, v53);
  *(v2 + 16) = v52 & 1;
  return v2;
}

uint64_t sub_1E38459F0()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__editState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAF8, &qword_1E42A2998);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__selections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB10, &qword_1E42A29F8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__singleSelection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__selectedViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v0 + v7);

  memcpy(__dst, (v0 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs), sizeof(__dst));
  sub_1E3844FE0(__dst);

  return v0;
}

uint64_t sub_1E3845B70()
{
  sub_1E38459F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3845BC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CollectionEditableModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E3845C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3845C70@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_3_46();
  sub_1E3845C08(v11, v12, &unk_1E42BD340);
  *a6 = sub_1E4201754();
  a6[1] = v13;
  v14 = type metadata accessor for ListTemplateView(0);
  v15 = v14[5];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v16 = (a6 + v14[6]);
  type metadata accessor for TemplateViewModel(0);
  OUTLINED_FUNCTION_2_46();
  sub_1E3845C08(v17, v18, &protocol conformance descriptor for TemplateViewModel);
  result = sub_1E42010C4();
  *v16 = result;
  v16[1] = v20;
  v21 = a6 + v14[7];
  *v21 = a2;
  *(v21 + 1) = a3;
  v21[16] = a4;
  *(v21 + 3) = a5;
  return result;
}

uint64_t sub_1E3845DA8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v43 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB50, &qword_1E42A2AF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB58, &qword_1E42A2B00);
  OUTLINED_FUNCTION_0_10();
  v42 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_19(v12, v38);
  v13 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v40 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ListTemplateView(0);
  v19 = v1;
  v20 = (*(**(v1 + *(v18 + 24) + 8) + 464))();
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E32AE9B0(v21))
  {
    v39 = v2;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1E6911E60](0, v21);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        type metadata accessor for AppEnvironment(0);
        OUTLINED_FUNCTION_3_46();
        sub_1E3845C08(v36, v37, &unk_1E42BD340);
        result = sub_1E4201744();
        __break(1u);
        return result;
      }

      v22 = *(v21 + 32);
    }

    type metadata accessor for CollectionViewModel();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v43 = v22;
      v24 = *v19;
      if (*v19)
      {
        v25 = v23;

        sub_1E3746E10(v17);
        sub_1E37FB85C(v25, v21, v24, 1, v50);
        memcpy(v48, v50, sizeof(v48));

        (*(v40 + 8))(v17, v13);
        memcpy(v49, v48, sizeof(v49));
        nullsub_1();
        memcpy(v51, v49, 0x150uLL);
        v26 = *(v19 + *(v18 + 28) + 24);
        sub_1E37E6E1C(v50, &v47);
        v27 = v41;
        sub_1E3A546A4(v25, v51, 0, v26, v41);
        sub_1E375B760(v50);
        v28 = v42;
        v29 = v45;
        (*(v42 + 16))(v9, v27, v45);
        v30 = swift_storeEnumTagMultiPayload();
        v31 = OUTLINED_FUNCTION_14_14(v30);
        OUTLINED_FUNCTION_10_1(v31);
        sub_1E4201F44();

        sub_1E375B760(v50);
        return (*(v28 + 8))(v27, v29);
      }

      goto LABEL_17;
    }

    v2 = v39;
  }

  else
  {
  }

  nullsub_1();
  v33 = v43;
  (*(v43 + 16))(v9, v6, v2);
  v34 = swift_storeEnumTagMultiPayload();
  v35 = OUTLINED_FUNCTION_14_14(v34);
  OUTLINED_FUNCTION_10_1(v35);
  sub_1E4201F44();
  return (*(v33 + 8))(v6, v2);
}

unint64_t sub_1E38462B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2BB60;
  if (!qword_1ECF2BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB60);
  }

  return result;
}

uint64_t sub_1E384632C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 152))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3846380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1E3846430(uint64_t a1)
{
  sub_1E3846840(319, &qword_1EE28A088, MEMORY[0x1E697D718], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1E381A32C(319, &qword_1EE289F48, &qword_1ECF2BB08, &qword_1E42B6340);
    if (v2 <= 0x3F)
    {
      sub_1E3846618();
      if (v3 <= 0x3F)
      {
        sub_1E381A32C(319, &qword_1EE289FD0, &qword_1ECF2BB28, &qword_1E42A2A60);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E3846618()
{
  if (!qword_1EE289FC0)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289FC0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CollectionEditableModel.ConfirmationAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1E384676C(uint64_t a1)
{
  sub_1E381EC50(319);
  if (v1 <= 0x3F)
  {
    sub_1E3846840(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1E38468A4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3846840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E38468A4(uint64_t a1)
{
  if (!qword_1EE289D58)
  {
    type metadata accessor for TemplateViewModel(255);
    sub_1E3845C08(&qword_1EE279848, type metadata accessor for TemplateViewModel, &protocol conformance descriptor for TemplateViewModel);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D58);
    }
  }
}

unint64_t sub_1E3846938()
{
  result = qword_1ECF2BB68;
  if (!qword_1ECF2BB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB70, &unk_1E42A2D68);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB68);
  }

  return result;
}

id sub_1E38469F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 localizedStringForKey_];

  return v5;
}

uint64_t FollowLiveUpdatesState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x46676E6965427369;
  }
}

uint64_t sub_1E3846AC8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x776F6C6C6F666E75;
  }

  else
  {
    v3 = 0x776F6C6C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x776F6C6C6F666E75;
  }

  else
  {
    v5 = 0x776F6C6C6F66;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3846B64(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x46676E6965427369;
  }

  if (v2)
  {
    v4 = 0xEF6465776F6C6C6FLL;
  }

  else
  {
    v4 = 0x80000001E4260050;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x46676E6965427369;
  }

  if (a2)
  {
    v6 = 0x80000001E4260050;
  }

  else
  {
    v6 = 0xEF6465776F6C6C6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3846C3C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3846CA4(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3846D28(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3846DB8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

VideosUI::FollowLiveUpdatesState_optional sub_1E3846E34@<W0>(Swift::String *a1@<X0>, VideosUI::FollowLiveUpdatesState_optional *a2@<X8>)
{
  result.value = FollowLiveUpdatesState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1E3846E64@<X0>(uint64_t *a1@<X8>)
{
  result = FollowLiveUpdatesState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FollowLiveUpdatesRequestManagerError.hashValue.getter(unsigned __int8 a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3846F2C(uint64_t a1)
{
  v2 = *v1;
  sub_1E4207B44();
  FollowLiveUpdatesRequestManagerError.hash(into:)(v4, v2);
  return sub_1E4207BA4();
}

void FollowLiveUpdatesRequestManager.follow(for:completion:)()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (qword_1EE29AB20 != -1)
  {
    OUTLINED_FUNCTION_3_47(&qword_1EE29AB20);
  }

  v10 = OUTLINED_FUNCTION_74();
  v11(v10);
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v0;
  v12[4] = v3;
  v12[5] = v5;
  sub_1E4205004();
  OUTLINED_FUNCTION_38();

  sub_1E34AF604(v3, v5);
  v13 = sub_1E4204FF4();
  (*(v8 + 104))(v2, *MEMORY[0x1E69D3988], v6);
  OUTLINED_FUNCTION_74();
  sub_1E4204F14();

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t *sub_1E3847108()
{
  if (qword_1EE29AB20 != -1)
  {
    OUTLINED_FUNCTION_3_47(&qword_1EE29AB20);
  }

  return &qword_1EE2AACF8;
}

void sub_1E3847148()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v56 = v7;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v60 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v58 = v21;
  v59 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  if (v9)
  {
    v53 = v4;
    v55 = v17;
    v25 = v9;
    v26 = sub_1E3E37F30();
    (*(v12 + 16))(v16, v26, v10);
    v27 = v9;

    v28 = sub_1E41FFC94();
    v29 = sub_1E42067F4();

    v57 = v9;
    v54 = v2;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_1E3270FC8(v56, v6, v61);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v31 = sub_1E4207AB4();
      v33 = sub_1E3270FC8(v31, v32, v61);

      *(v30 + 14) = v33;
      _os_log_impl(&dword_1E323F000, v28, v29, "FollowLiveUpdatesRequestManager: error following '%s': %s", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
    v34 = sub_1E41FE264();
    v35 = [v34 domain];
    v36 = sub_1E4205F14();
    v38 = v37;

    v39 = v36 == 0xD00000000000001BLL && 0x80000001E4260130 == v38;
    v40 = v53;
    if (v39 || (sub_1E42079A4() & 1) != 0)
    {

      if ([v34 code] == 2)
      {

        v41 = 3;
        v42 = v54;
LABEL_26:
        sub_1E32ADE38();
        v50 = sub_1E4206A04();
        v51 = swift_allocObject();
        *(v51 + 16) = v40;
        *(v51 + 24) = v42;
        *(v51 + 32) = v41;
        OUTLINED_FUNCTION_12_14(v51);
        OUTLINED_FUNCTION_6_44(COERCE_DOUBLE(1107296256));
        v62 = v52;
        v63 = &block_descriptor_78;
        _Block_copy(v61);
        OUTLINED_FUNCTION_32_24();
        sub_1E4203FE4();
        v61[0] = MEMORY[0x1E69E7CC0];
        sub_1E37E7A8C();
        OUTLINED_FUNCTION_29_14();
        OUTLINED_FUNCTION_2_47(&qword_1EE23B5D0);
        v17 = v55;
        sub_1E42072E4();
        OUTLINED_FUNCTION_20_29();
        _Block_release(v41);

        goto LABEL_27;
      }

      v42 = v54;
      if ([v34 code] == 4)
      {

        v41 = 1;
        goto LABEL_26;
      }

      v48 = [v34 code];

      if (v48 == 5)
      {
        v41 = 2;
        goto LABEL_26;
      }
    }

    else
    {
      if (v36 == 0xD000000000000020 && 0x80000001E4260150 == v38)
      {
      }

      else
      {
        v47 = sub_1E42079A4();

        if ((v47 & 1) == 0)
        {

          v42 = v54;
          goto LABEL_25;
        }
      }

      v49 = [v34 code];

      v42 = v54;
      if (v49 == 601)
      {
        v41 = 4;
        goto LABEL_26;
      }
    }

LABEL_25:
    v41 = 0;
    goto LABEL_26;
  }

  sub_1E3847EE0(VUIMetricsActionTypeFollow, VUIMetricsActionDetailsFollow);
  sub_1E32ADE38();
  v43 = sub_1E4206A04();
  OUTLINED_FUNCTION_2_4();
  v44 = swift_allocObject();
  *(v44 + 16) = v4;
  *(v44 + 24) = v2;
  OUTLINED_FUNCTION_12_14(v44);
  OUTLINED_FUNCTION_6_44(COERCE_DOUBLE(1107296256));
  v62 = v45;
  v63 = &block_descriptor_72;
  _Block_copy(v61);
  OUTLINED_FUNCTION_32_24();
  sub_1E4203FE4();
  v61[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  OUTLINED_FUNCTION_29_14();
  OUTLINED_FUNCTION_2_47(&qword_1EE23B5D0);
  sub_1E42072E4();
  OUTLINED_FUNCTION_20_29();
  _Block_release(0);

LABEL_27:
  (*(v60 + 8))(v0, v17);
  (*(v58 + 8))(v24, v59);
  OUTLINED_FUNCTION_25_2();
}

void FollowLiveUpdatesRequestManager.unfollow(for:completion:)()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (qword_1EE29AB20 != -1)
  {
    OUTLINED_FUNCTION_3_47(&qword_1EE29AB20);
  }

  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  sub_1E4205004();
  v14 = sub_1E4204FF4();
  (*(v7 + 104))(v11, *MEMORY[0x1E69D3988], v5);
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v0;
  v15[4] = v2;
  v15[5] = v4;

  sub_1E34AF604(v2, v4);
  OUTLINED_FUNCTION_74();
  sub_1E4204F24();

  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3847948()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v50 = v4;
  v48 = v5;
  v7 = v6;
  v49 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v52 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  if (v7)
  {
    v44 = v3;
    v45 = v25 - v24;
    v46 = v22;
    v47 = v14;
    v27 = v7;
    v28 = sub_1E3E37F30();
    (*(v9 + 16))(v13, v28, v49);
    v29 = v7;

    v30 = sub_1E41FFC94();
    v31 = sub_1E42067E4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_1E3270FC8(v48, v50, v53);
      *(v32 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_1E4207AB4();
      v35 = sub_1E3270FC8(v33, v34, v53);

      *(v32 + 14) = v35;
      _os_log_impl(&dword_1E323F000, v30, v31, "FollowLiveUpdatesRequestManager: error unfollowing '%s': %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v9 + 8))(v13, v49);
    sub_1E32ADE38();
    v36 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v37 = swift_allocObject();
    *(v37 + 16) = v44;
    *(v37 + 24) = v1;
    OUTLINED_FUNCTION_12_14(v37);
    OUTLINED_FUNCTION_7_56(COERCE_DOUBLE(1107296256));
    v54 = v38;
    v55 = &block_descriptor_66;
    v39 = _Block_copy(v53);
    sub_1E34AF604(v44, v1);
    sub_1E4203FE4();
    sub_1E37E7A8C();
    OUTLINED_FUNCTION_29_14();
    OUTLINED_FUNCTION_2_47(&qword_1EE23B5D0);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v45, v19, v39);
    _Block_release(v39);

    (*(v52 + 8))(v19, v47);
    (*(v46 + 8))(v45, v20);
  }

  else
  {
    sub_1E3847EE0(VUIMetricsActionTypeUnfollow, VUIMetricsActionDetailsFollowing);
    sub_1E32ADE38();
    v51 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v40 = swift_allocObject();
    *(v40 + 16) = v3;
    *(v40 + 24) = v1;
    OUTLINED_FUNCTION_12_14(v40);
    OUTLINED_FUNCTION_7_56(COERCE_DOUBLE(1107296256));
    v54 = v41;
    v55 = &block_descriptor_18;
    v42 = v14;
    v43 = _Block_copy(v53);
    sub_1E34AF604(v3, v1);
    sub_1E4203FE4();
    sub_1E37E7A8C();
    OUTLINED_FUNCTION_29_14();
    OUTLINED_FUNCTION_2_47(&qword_1EE23B5D0);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v26, v19, v43);
    _Block_release(v43);

    (*(v52 + 8))(v19, v42);
    (*(v22 + 8))(v26, v20);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3847EE0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v3;
  v4 = sub_1E4205F14();
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v7;
  v8 = sub_1E4205F14();
  *(inited + 120) = v5;
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v10;
  v11 = sub_1E4205F14();
  *(inited + 168) = v5;
  *(inited + 144) = v11;
  *(inited + 152) = v12;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1E4297BE0;
  *(v14 + 32) = sub_1E4205F14();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_1E4205F14();
  *(v14 + 56) = v16;
  OUTLINED_FUNCTION_74();
  v17 = sub_1E4205CB4();
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  *(inited + 192) = v17;
  v18 = sub_1E4205CB4();
  v19 = [objc_opt_self() sharedInstance];
  sub_1E3744600(v18);

  v20 = sub_1E4205C44();

  [v19 recordClick_];
}

Swift::Bool __swiftcall FollowLiveUpdatesRequestManager.check(for:)(Swift::String a1)
{
  v1 = sub_1E4205004();
  sub_1E4204FF4();
  OUTLINED_FUNCTION_38();
  v2 = sub_1E4204F94();

  return v2 & 1;
}

uint64_t sub_1E3848154(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = OUTLINED_FUNCTION_11_1();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E384817C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E3848270;

  return MEMORY[0x1EEE6DDE0](v0 + 6, 0, 0, 0xD00000000000001BLL, 0x80000001E4260080, sub_1E38494C8, v3, &type metadata for FollowLiveUpdatesState);
}

uint64_t sub_1E3848270()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1E3848388()
{
  OUTLINED_FUNCTION_31_1();
  v20[0] = v0;
  v20[1] = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BBA0, &qword_1E42A30F8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = sub_1E4204D54();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E4205004();
  v17 = sub_1E4204FF4();
  (*(v12 + 104))(v16, *MEMORY[0x1E69D3988], v10);
  (*(v6 + 16))(v9, v3, v4);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, v9, v4);
  sub_1E4204F54();

  (*(v12 + 8))(v16, v10);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3848584()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38485F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3848584();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3848650(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E38486C0(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_38();
  sub_1E384870C(v4, a2);
  return v2;
}

uint64_t sub_1E384870C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_3();
  v11 = OBJC_IVAR____TtC8VideosUI20FollowStateViewModel__isFollowActive;
  LOBYTE(v21[0]) = 0;
  sub_1E4200634();
  (*(v9 + 32))(v4 + v11, v3, v7);
  *(v4 + OBJC_IVAR____TtC8VideosUI20FollowStateViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  v12 = (v4 + OBJC_IVAR____TtC8VideosUI20FollowStateViewModel_canonicalId);
  *v12 = a1;
  v12[1] = a2;
  sub_1E4205004();
  OUTLINED_FUNCTION_38();

  v13 = sub_1E4204FF4();
  v14 = sub_1E4204F84();

  v21[0] = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B568, &unk_1E42A0980);
  OUTLINED_FUNCTION_1_37();
  sub_1E32752B0(v17, v18, &unk_1E42A0980, v19);
  sub_1E4200844();

  OUTLINED_FUNCTION_11_3(v4 + OBJC_IVAR____TtC8VideosUI20FollowStateViewModel_cancellables, v21);
  sub_1E42004C4();
  swift_endAccess();

  sub_1E3848BCC();
  return v4;
}

void sub_1E384892C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26[0] = v3;
    v26[1] = v1;
    MEMORY[0x1EEE9AC00](Strong);
    *(&v25 - 2) = v26;
    v15 = sub_1E3849DF8(sub_1E3756228, (&v25 - 4), v13);
    sub_1E3848650(v15);
    v16 = sub_1E3848584();
    if (v16)
    {
      v17 = 0xE900000000000067;
    }

    else
    {
      v17 = 0xED0000676E69776FLL;
    }

    v18 = sub_1E3E37F30();
    (*(v8 + 16))(v12, v18, v6);

    v19 = sub_1E41FFC94();
    v20 = sub_1E42067E4();

    if (os_log_type_enabled(v19, v20))
    {
      if (v16)
      {
        v21 = 0x6E69776F6C6C6F66;
      }

      else
      {
        v21 = 0x6C6C6F6620746F6ELL;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136315138;
      v24 = sub_1E3270FC8(v21, v17, v26);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1E323F000, v19, v20, "FollowStateViewModel: SportsManager.activitiesPublisher emitted state: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v8 + 8))(v12, v6);
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3848BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  v4 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1E376FE58(0, 0, v3, &unk_1E42A2DD0, v5);

  return result;
}

uint64_t sub_1E3848CAC()
{
  OUTLINED_FUNCTION_24();
  v0[6] = v1;
  v2 = sub_1E41FFCB4();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3848D60()
{
  OUTLINED_FUNCTION_24();
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC8VideosUI20FollowStateViewModel_canonicalId);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1E3848E04;

  return sub_1E3848154(v3, v2);
}

uint64_t sub_1E3848E04()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 96) = v0;

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3848EF4()
{
  OUTLINED_FUNCTION_24();
  swift_weakInit();
  sub_1E4206434();
  *(v0 + 88) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3848F90, v2, v1);
}

uint64_t sub_1E3848F90()
{
  OUTLINED_FUNCTION_27_2();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (*(v0 + 96))
    {
      v1 = 0x80000001E4260050;
    }

    else
    {
      v1 = 0xEF6465776F6C6C6FLL;
    }

    if (v1 != 0xEF6465776F6C6C6FLL || (*(v0 + 96) & 1) != 0)
    {
      v2 = sub_1E42079A4();
    }

    else
    {
      v2 = 1;
    }

    sub_1E3848650(v2 & 1);
  }

  swift_weakDestroy();
  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E38490A8()
{
  v25 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = sub_1E3848584();
  if (v4)
  {
    v5 = 0xE900000000000067;
  }

  else
  {
    v5 = 0xED0000676E69776FLL;
  }

  v6 = sub_1E3E37F30();
  (*(v2 + 16))(v1, v6, v3);

  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v22 = *(v0 + 56);
    v23 = *(v0 + 72);
    if (v4)
    {
      v11 = 0x6E69776F6C6C6F66;
    }

    else
    {
      v11 = 0x6C6C6F6620746F6ELL;
    }

    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    if (v9)
    {
      v13 = 0xD000000000000012;
    }

    else
    {
      v13 = 0x46676E6965427369;
    }

    if (v9)
    {
      v14 = 0x80000001E4260050;
    }

    else
    {
      v14 = 0xEF6465776F6C6C6FLL;
    }

    v15 = sub_1E3270FC8(v13, v14, &v24);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = sub_1E3270FC8(v11, v5, &v24);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_1E323F000, v7, v8, "FollowStateViewModel.fetchFollowState: was %s, returned %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v10 + 8))(v23, v22);
  }

  else
  {
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 56);

    (*(v18 + 8))(v17, v19);
  }

  OUTLINED_FUNCTION_54();

  return v20();
}

uint64_t sub_1E384932C()
{
  v1 = OBJC_IVAR____TtC8VideosUI20FollowStateViewModel__isFollowActive;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1E38493B4()
{
  sub_1E384932C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E384940C()
{
  type metadata accessor for FollowRequestPublisher();
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB78, &qword_1E42A2DD8);
  OUTLINED_FUNCTION_119(v1);
  result = sub_1E4200544();
  *(v0 + 16) = result;
  qword_1EE2AACF8 = v0;
  return result;
}

uint64_t objectdestroyTm_7()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_13Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E3849534()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3848CAC();
}

uint64_t sub_1E38495C4()
{
  OUTLINED_FUNCTION_15_1();
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB78, &qword_1E42A2DD8);
  OUTLINED_FUNCTION_119(v1);
  *(v0 + 16) = sub_1E4200544();
  return v0;
}

uint64_t sub_1E3849614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB78, &qword_1E42A2DD8);
  sub_1E32752B0(&qword_1EE28A170, &qword_1ECF2BB78, &qword_1E42A2DD8, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

uint64_t sub_1E38496A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E4207784();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E38496F0(char a1)
{
  if (a1)
  {
    return 0x776F6C6C6F666E75;
  }

  else
  {
    return 0x776F6C6C6F66;
  }
}

uint64_t sub_1E3849748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E38496A0(*a1, a1[1], &unk_1F5D5A1C8);
  *a2 = result;
  return result;
}

uint64_t sub_1E3849780@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38496F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E38497AC(uint64_t a1, uint64_t a2, char a3)
{

  sub_1E4200524();
}

void sub_1E38497FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_34();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_3();
  sub_1E3849614();
  OUTLINED_FUNCTION_2_4();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B570, &unk_1E42E1820);
  OUTLINED_FUNCTION_1_37();
  sub_1E32752B0(v12, v13, &unk_1E42E1820, v14);
  sub_1E42007B4();

  sub_1E32752B0(&qword_1EE28A2F0, &qword_1ECF2BB80, &unk_1E42A2DE0, MEMORY[0x1E695BDE0]);
  sub_1E42006B4();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E384999C()
{

  v0 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E38499CC(uint64_t *a1)
{
  if (*a1 == *(v1 + 16) && a1[1] == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

unint64_t sub_1E38499FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2BB88;
  if (!qword_1ECF2BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB88);
  }

  return result;
}

unint64_t sub_1E3849A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2BB90;
  if (!qword_1ECF2BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB90);
  }

  return result;
}

unint64_t sub_1E3849AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2BB98;
  if (!qword_1ECF2BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FollowLiveUpdatesRequestManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}