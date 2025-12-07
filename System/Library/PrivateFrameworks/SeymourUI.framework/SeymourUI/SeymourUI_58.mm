id sub_20BB9A2C0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView);
  CGAffineTransformMakeScale(&v5, 0.475, 0.475);
  [v2 setTransform_];
  v3 = *(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView);
  CGAffineTransformMakeScale(&v5, 0.475, 0.475);
  return [v3 setTransform_];
}

id sub_20BB9A468(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView);
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0.475;
    }

    else
    {
      v3 = 0.9;
    }

    CGAffineTransformMakeScale(&v5, v3, v3);
    return [v2 setTransform_];
  }

  else
  {
    *&v5.a = 0x3FF0000000000000uLL;
    v5.c = 0.0;
    v5.d = 1.0;
    *&v5.tx = 0uLL;
    return [v2 setTransform_];
  }
}

id sub_20BB9A61C()
{
  v0 = sub_20C13C914();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = sub_20C138374();
  [v1 setFromValue_];

  v3 = sub_20C138374();
  [v1 setToValue_];

  v4 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  v5 = v1;
  LODWORD(v6) = 1051260355;
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 1051260355;
  v9 = [v4 initWithControlPoints__:v6 :{0.0, v8, v7}];
  [v5 setTimingFunction_];

  [v5 setDuration_];
  return v5;
}

void sub_20BB9A740(char a1)
{
  if (a1)
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView] setAlpha_];
    v2 = *&v1[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView];
    if (v2)
    {
      [v2 setAlpha_];
    }

    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    v4 = objc_opt_self();
    v17 = sub_20BB9B7AC;
    v18 = v3;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_20B7B548C;
    v16 = &block_descriptor_54_1;
    v5 = _Block_copy(&v13);
    v6 = v1;

    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v17 = sub_20B7E50FC;
    v18 = v7;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v8 = &block_descriptor_61_0;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = 1;
    v4 = objc_opt_self();
    v17 = sub_20BB9B6F4;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_20B7B548C;
    v16 = &block_descriptor_40;
    v5 = _Block_copy(&v13);
    v10 = v1;

    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v17 = sub_20B7E50FC;
    v18 = v11;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v8 = &block_descriptor_47;
  }

  v15 = sub_20BC044C8;
  v16 = v8;
  v12 = _Block_copy(&v13);

  [v4 smu:v5 animateUsingSpringWithTension:v12 friction:500.0 animations:40.0 completion:{v13, v14}];
  _Block_release(v12);
  _Block_release(v5);
}

id sub_20BB9AA34(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView);
  v3 = 0.0;
  if (a2)
  {
    v3 = 1.0;
  }

  return [v2 setAlpha_];
}

id sub_20BB9AA5C(uint64_t a1, char a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView);
  if (a2)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [v5 setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView) setAlpha_];
  v7 = *(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView);
  if (v7)
  {
    [v7 setAlpha_];
  }

  v8 = *(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_spinnerView);
  if (a3)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  return [v8 setAlpha_];
}

id sub_20BB9AB20(uint64_t a1, char a2)
{
  v3 = a2;
  sub_20BB9A468(a2);
  v4 = *(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView);
  CGAffineTransformMakeScale(&v7, 0.475, 0.475);
  [v4 setTransform_];
  if (v3 == 1)
  {
    v5 = 1.0;
    [v4 setAlpha_];
  }

  else
  {
    v5 = 0.0;
    [v4 setAlpha_];
  }

  result = *(a1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

id sub_20BB9AC20(double a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView);
  [v4 alpha];
  v6 = v5;
  [v4 setAlpha_];
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView);
  [v7 alpha];
  v9 = v8;
  [v7 setAlpha_];
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView);
  if (v10)
  {
    [*(v1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView) alpha];
    v12 = v11;
    [v10 setAlpha_];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v4 layer];
  v14 = sub_20BB9AFEC(v6, a1);
  [v13 addAnimation:v14 forKey:0];

  v15 = [v7 layer];
  v16 = sub_20BB9AFEC(v9, a1);
  [v15 addAnimation:v16 forKey:0];

  if (v10)
  {
    v17 = [v10 layer];
    v18 = sub_20BB9AE9C(v12, 0, a1);
    [v17 addAnimation:v18 forKey:0];
  }

  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_contentRatingsView);
  if (v19)
  {
    v20 = v19;
    [v20 alpha];
    v22 = v21;
    [v20 setAlpha_];
    v23 = [v20 layer];
    v24 = sub_20BB9AFEC(v22, a1);
    [v23 addAnimation:v24 forKey:0];
  }

  return [v3 commit];
}

id sub_20BB9AE9C(uint64_t a1, char a2, double a3)
{
  v5 = sub_20C13C914();
  v6 = [objc_opt_self() animationWithKeyPath_];

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_20C138374();
  }

  [v6 setFromValue_];
  swift_unknownObjectRelease();
  v8 = sub_20C138374();
  [v6 setToValue_];

  v9 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  v10 = v6;
  LODWORD(v11) = 1051260355;
  LODWORD(v12) = 1.0;
  LODWORD(v13) = 1051260355;
  v14 = [v9 initWithControlPoints__:v11 :{0.0, v13, v12}];
  [v10 setTimingFunction_];

  [v10 setDuration_];
  return v10;
}

id sub_20BB9AFEC(double a1, double a2)
{
  v3 = sub_20C13C914();
  v4 = [objc_opt_self() animationWithKeyPath_];

  v5 = sub_20C138374();
  [v4 setFromValue_];

  v6 = sub_20C138374();
  [v4 setToValue_];

  v7 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  v8 = v4;
  LODWORD(v9) = 1051260355;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1051260355;
  v12 = [v7 initWithControlPoints__:v9 :{0.0, v11, v10}];
  [v8 setTimingFunction_];

  [v8 setDuration_];
  return v8;
}

void sub_20BB9B128(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView);

    v7 = [v6 isHidden];
  }

  else
  {
    v7 = 1;
  }

  [a1 setHidden_];
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonCenterYConstraint);

    [v10 setConstant_];
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [v11 layoutIfNeeded];
  }
}

void sub_20BB9B258(uint64_t (*a1)(uint64_t a1, uint64_t a2), uint64_t a2)
{
  v4 = objc_opt_self();
  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_20B7B548C;
  v11 = &block_descriptor_28_4;
  v5 = _Block_copy(&v8);

  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v12 = sub_20B78E220;
  v13 = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_20BC044C8;
  v11 = &block_descriptor_34_0;
  v7 = _Block_copy(&v8);

  [v4 smu:v5 animateUsingSpringWithTension:v7 friction:400.0 animations:40.0 completion:?];
  _Block_release(v7);
  _Block_release(v5);
}

void sub_20BB9B3C0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownPosition) = 0;
  v1 = OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_spinnerView;
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playPauseGestureRecognizer) = 0;
  v3 = OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonCenterYConstraint;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB9B49C()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  aBlock[4] = sub_20BB9B7B0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_19_2;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  [v5 animateWithDuration:v7 animations:0.2];
  _Block_release(v7);
  sub_20C13B4A4();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20B517000, v9, v10, "Play button tapped. Starting countown.", v11, 2u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  result = (*(v2 + 8))(v4, v1);
  v13 = *&v8[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_presenter] + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onStartCountdown;
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 8);

    v14(v16);
    return sub_20B583ECC(v14, v15);
  }

  return result;
}

id sub_20BB9B6F8()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView) setAlpha_];
}

uint64_t sub_20BB9B748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_20BB9B7E0(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E10, &unk_20C161460);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = &v111 - v10;
  *&v4[OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_itemInfo;
  v12 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_tickView;
  v14 = 0.0;
  v15 = [objc_allocWithZone(type metadata accessor for DurationFilterTickView()) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_durationLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  *&v4[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_minLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  *&v4[v18] = v19;
  *&v4[OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_layout] = xmmword_20C170C00;
  v20 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_labelLayoutGuide;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v21 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_unitsVerticalConstraint;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v22 = type metadata accessor for DurationFilterCell(0);
  v118.receiver = v4;
  v118.super_class = v22;
  v23 = objc_msgSendSuper2(&v118, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = [v23 contentView];
  v25 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_tickView;
  [v24 addSubview_];

  v26 = [v23 contentView];
  v113 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_durationLabel;
  [v26 addSubview_];

  v27 = [v23 contentView];
  v117 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_minLabel;
  [v27 addSubview_];

  v28 = [v23 contentView];
  v115 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_labelLayoutGuide;
  [v28 addLayoutGuide_];

  v29 = *&v23[v25];
  v30 = [v23 contentView];
  v32 = *MEMORY[0x277D768C8];
  v31 = *(MEMORY[0x277D768C8] + 8);
  v33 = *(MEMORY[0x277D768C8] + 16);
  v34 = *(MEMORY[0x277D768C8] + 24);
  v35 = [v29 leadingAnchor];
  v36 = [v30 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:v31];

  LODWORD(v38) = 1148846080;
  [v37 setPriority_];
  v112 = v37;
  v39 = [v29 trailingAnchor];
  v40 = [v30 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-v34];

  LODWORD(v42) = 1148846080;
  [v41 &selRef_meterUnit];
  v43 = v41;
  v44 = [v29 topAnchor];
  v45 = [v30 &selRef_setLineBreakMode_];
  v46 = [v44 constraintEqualToAnchor:v45 constant:v32];

  LODWORD(v47) = 1148846080;
  [v46 &selRef_meterUnit];
  v48 = [v29 bottomAnchor];
  v49 = [v30 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:-v33];

  LODWORD(v51) = 1148846080;
  [v50 &selRef_meterUnit];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_20C14FE90;
  v54 = v112;
  *(v53 + 32) = v112;
  *(v53 + 40) = v43;
  *(v53 + 48) = v46;
  *(v53 + 56) = v50;
  v114 = v53;
  v55 = v46;

  v56 = [*&v23[v117] topAnchor];
  v57 = v113;
  v58 = [*&v23[v113] bottomAnchor];
  if (sub_20C1380F4() == 1)
  {
    v59 = [objc_opt_self() sharedApplication];
    v60 = [v59 preferredContentSizeCategory];

    LOBYTE(v59) = sub_20C13D424();
    if (v59)
    {
      v14 = -4.0;
    }

    else
    {
      v14 = 0.0;
    }
  }

  v61 = [v56 constraintEqualToAnchor:v58 constant:v14];

  v62 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_unitsVerticalConstraint;
  v63 = *&v23[OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_unitsVerticalConstraint];
  *&v23[OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_unitsVerticalConstraint] = v61;

  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_20C150060;
  v65 = [*&v23[v57] topAnchor];
  v66 = v115;
  v67 = [*&v23[v115] topAnchor];
  v68 = [v65 constraintEqualToAnchor_];

  *(v64 + 32) = v68;
  v69 = *&v23[v57];
  v112 = v52;
  v70 = [v69 leadingAnchor];
  v71 = [*&v23[v66] leadingAnchor];
  v72 = [v70 constraintGreaterThanOrEqualToAnchor_];

  *(v64 + 40) = v72;
  v73 = [*&v23[v57] trailingAnchor];
  v74 = [*&v23[v66] trailingAnchor];
  v75 = [v73 constraintLessThanOrEqualToAnchor_];

  *(v64 + 48) = v75;
  v76 = [*&v23[v57] centerXAnchor];
  v77 = [*&v23[v66] &selRef_handleMenuButtonTapped + 2];
  v78 = [v76 constraintEqualToAnchor_];

  *(v64 + 56) = v78;
  v79 = *&v23[v62];
  *(v64 + 64) = v79;
  v80 = v117;
  v81 = *&v23[v117];
  v82 = v79;
  v83 = [v81 leadingAnchor];
  v84 = [*&v23[v66] leadingAnchor];
  v85 = [v83 constraintGreaterThanOrEqualToAnchor_];

  *(v64 + 72) = v85;
  v86 = [*&v23[v80] trailingAnchor];
  v87 = [*&v23[v66] trailingAnchor];
  v88 = [v86 constraintLessThanOrEqualToAnchor_];

  *(v64 + 80) = v88;
  v89 = [*&v23[v80] centerXAnchor];
  v90 = [*&v23[v57] centerXAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v64 + 88) = v91;
  v92 = [*&v23[v80] bottomAnchor];
  v93 = [*&v23[v66] bottomAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  *(v64 + 96) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_20C151490;
  v96 = [*&v23[v66] centerXAnchor];
  v97 = [v23 contentView];
  v98 = [v97 centerXAnchor];

  v99 = [v96 &selRef:v98 alertControllerReleasedDictationButton:? + 5];
  *(v95 + 32) = v99;
  v100 = [*&v23[v66] centerYAnchor];
  v101 = [v23 contentView];
  v102 = [v101 centerYAnchor];

  v103 = [v100 &selRef:v102 alertControllerReleasedDictationButton:? + 5];
  *(v95 + 40) = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 32) = v114;
  *(inited + 40) = v64;
  *(inited + 48) = v95;
  v105 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B5E29D0();
  v106 = sub_20C13CC54();

  [v105 activateConstraints_];

  v107 = [objc_opt_self() defaultCenter];
  [v107 addObserver:v23 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  v108 = sub_20C132614();
  v109 = v116;
  (*(*(v108 - 8) + 56))(v116, 1, 1, v108);
  sub_20BB9C638();

  sub_20B520158(v109, &qword_27C765E10, &unk_20C161460);
  return v23;
}

void sub_20BB9C638()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_durationLabel);
  v2 = sub_20BB9CFE4(23.0, 14.0, 17.0);
  [v1 setFont_];

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_minLabel);
  v4 = sub_20BB9CFE4(17.0, 8.0, 11.0);
  [v3 setFont_];

  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_unitsVerticalConstraint);
  v5 = sub_20C1380F4();
  v6 = 0.0;
  if (v5 == 1)
  {
    v7 = [objc_opt_self() sharedApplication];
    v8 = [v7 preferredContentSizeCategory];

    LOBYTE(v7) = sub_20C13D424();
    v6 = 0.0;
    if (v7)
    {
      v6 = -4.0;
    }
  }

  [v9 setConstant_];
}

id sub_20BB9C8A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DurationFilterCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DurationFilterCell(uint64_t a1)
{
  result = qword_281103098;
  if (!qword_281103098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB9C9DC(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BB9CA98(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BB9CAE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BB9CB3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BB9CBB4(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0xD)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_durationLabel];
    v9 = sub_20C13C914();
    [v8 setText_];

    v10 = *&v1[OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_minLabel];
    v11 = sub_20C13C914();
    [v10 setText_];

    v12 = *&v1[OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_tickView];
    v12[OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state] = v7;
    [v12 setNeedsDisplay];
    [v1 accessibilityApplyState:v7 == 1 disabled:v7 == 2];
    v13 = objc_opt_self();
    if (v7)
    {
      v14 = v13;
      if (v7 == 1)
      {
        v15 = [v13 blackColor];
        [v8 setTextColor_];

        v16 = [v14 blackColor];
      }

      else
      {
        v30 = [v13 darkGrayColor];
        [v8 setTextColor_];

        v16 = [v14 darkGrayColor];
      }
    }

    else
    {
      v28 = v13;
      v29 = [v13 whiteColor];
      [v8 setTextColor_];

      v16 = [v28 whiteColor];
    }

    v33 = v16;
    [v10 setTextColor_];
    v31 = v33;
  }

  else
  {
    sub_20C13B534();

    v17 = v1;
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = a1;
      v35 = v33;
      *v20 = 138543618;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2082;
      v22 = sub_20B5F66D0();
      v23 = v17;
      v24 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v22);
      v26 = sub_20B51E694(v24, v25, &v35);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_20B517000, v18, v19, "Attempted to configure %{public}@ with item: %{public}s", v20, 0x16u);
      sub_20B520158(v21, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      v27 = v33;
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

id sub_20BB9CFE4(double a1, double a2, double a3)
{
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_20C13D424();
  v8 = sub_20C1380F4();
  if ((v6 & 1) == 0)
  {
LABEL_5:
    v10 = v8;
    v11 = objc_opt_self();
    if (v10)
    {
      v12 = *MEMORY[0x277D74420];
      v13 = a3;
    }

    else
    {
      v12 = *MEMORY[0x277D743F8];
      v13 = a2;
    }

    v9 = [v11 systemFontOfSize:v13 weight:v12];
    goto LABEL_9;
  }

  if (v8 != 1)
  {
    v8 = sub_20C1380F4();
    goto LABEL_5;
  }

  v9 = [objc_opt_self() systemFontOfSize:a1 weight:*MEMORY[0x277D74420]];
LABEL_9:

  return v9;
}

void sub_20BB9D104()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_tickView;
  v4 = [objc_allocWithZone(type metadata accessor for DurationFilterTickView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_durationLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAdjustsFontForContentSizeCategory_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_minLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_layout) = xmmword_20C170C00;
  v9 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_labelLayoutGuide;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v10 = OBJC_IVAR____TtC9SeymourUI18DurationFilterCell_unitsVerticalConstraint;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB9D2F0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v31 - v5;
  v6 = sub_20C134734();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v33 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_selectedFilterShelf);
  v19 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filter;
  swift_beginAccess();
  v20 = sub_20C133E24();
  (*(*(v20 - 8) + 16))(v17, v18 + v19, v20);
  v21 = *MEMORY[0x277D51870];
  v22 = sub_20C1352F4();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v17, v21, v22);
  (*(v23 + 56))(v17, 0, 1, v22);
  v24 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_modality;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v24, v11, &unk_27C7710A0, &unk_20C156800);
  if ((*(v7 + 48))(v11, 1, v6))
  {

    sub_20B520158(v11, &unk_27C7710A0, &unk_20C156800);
    v25 = 1;
  }

  else
  {
    v26 = v32;
    (*(v7 + 16))(v32, v11, v6);

    sub_20B520158(v11, &unk_27C7710A0, &unk_20C156800);
    sub_20C1346D4();
    (*(v7 + 8))(v26, v6);
    v25 = 0;
  }

  v27 = sub_20C132C14();
  (*(*(v27 - 8) + 56))(v14, v25, 1, v27);
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
  v29 = sub_20C136914();
  (*(*(v29 - 8) + 56))(v35, 1, 1, v29);

  return sub_20C133384();
}

uint64_t sub_20BB9D860@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = 0;
  return result;
}

void *sub_20BB9D8A0()
{
  sub_20B583E6C((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 39);

  __swift_destroy_boxed_opaque_existential_1(v0 + 45);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_configuration, &qword_27C761800, &qword_20C14FDA0);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_modality, &unk_27C7710A0, &unk_20C156800);

  return v0;
}

uint64_t sub_20BB9DA08()
{
  sub_20BB9D8A0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogModalityPageDataProvider(uint64_t a1)
{
  result = qword_27C76B728;
  if (!qword_27C76B728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB9DAB4(uint64_t a1)
{
  sub_20BB9DC3C(319, &qword_281103BF0, MEMORY[0x277D50560]);
  if (v1 <= 0x3F)
  {
    sub_20BB9DC3C(319, &qword_27C764988, MEMORY[0x277D50A30]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BB9DC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20BB9DC90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763158, &unk_20C153870);
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v22 = &v59 - v21;
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_activationState) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_activationState) = 1;
    v60 = v9;
    v61 = v8;
    v23 = *(v1 + 192);
    v64 = v20;
    v65 = v17;
    v62 = v19;
    v63 = v18;
    __swift_project_boxed_opaque_existential_1((v1 + 168), v23);
    v66 = v22;
    v59 = v7;
    sub_20C139EF4();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20BBA07C4;
    *(v25 + 24) = v24;
    v26 = v67;
    v27 = v7;
    v28 = v68;
    (*(v67 + 16))(v4, v27, v68);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = (v3 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v4, v28);
    v32 = (v31 + v30);
    *v32 = sub_20B66D40C;
    v32[1] = v25;
    v33 = v70;
    sub_20C137C94();
    (*(v26 + 8))(v59, v28);
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_20BBA0808;
    *(v35 + 24) = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_20B5D9CB0;
    *(v36 + 24) = v35;
    v37 = v60;
    v38 = v61;
    v39 = v69;
    (*(v60 + 16))(v69, v33, v61);
    v40 = v37;
    v41 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v42 = swift_allocObject();
    (*(v40 + 32))(v42 + v41, v39, v38);
    v43 = (v42 + ((v10 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v43 = sub_20B5D9CCC;
    v43[1] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
    v44 = v62;
    sub_20C137C94();
    (*(v40 + 8))(v70, v38);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_20BBA0838;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_20BBA0840;
    *(v47 + 24) = v46;
    v48 = v63;
    v49 = v64;
    v50 = v65;
    (*(v63 + 16))(v64, v44, v65);
    v51 = v48;
    v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v53 = swift_allocObject();
    (*(v51 + 32))(v53 + v52, v49, v50);
    v54 = (v53 + ((v14 + v52 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v54 = sub_20B9CF870;
    v54[1] = v47;
    v55 = v66;
    sub_20C137C94();
    v56 = *(v51 + 8);
    v56(v44, v50);
    v57 = sub_20C137CB4();
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    v57(sub_20B52347C, v58);

    v56(v55, v50);
  }
}

double sub_20BB9E3A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB9E414(a1);
  }

  return result;
}

void sub_20BB9E414(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1333A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-v9];
  sub_20C135CB4();
  v11 = sub_20C134734();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_modality;
  swift_beginAccess();
  sub_20BBA0970(v10, v2 + v12);
  swift_endAccess();
  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page);
  v17 = v2;
  v18 = a1;
  v14 = v13;
  sub_20C0C19E0(1, sub_20BBA09E0, v16);

  v15 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_shouldPublishPageEventWhenAvailable;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_shouldPublishPageEventWhenAvailable) == 1)
  {
    v19 = v2;
    sub_20BB9D2F0(v7);
    type metadata accessor for CatalogModalityPageDataProvider(0);
    sub_20BBA09E8(&qword_27C76B738, type metadata accessor for CatalogModalityPageDataProvider, &unk_20C170DD0);
    sub_20C138C54();
    (*(v5 + 8))(v7, v4);
    *(v2 + v15) = 0;
  }
}

BOOL sub_20BB9E664(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v6 = Strong;
  if (Strong)
  {
    sub_20B51CC64(Strong + 168, v10);

    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_20C135E34();
    sub_20C139FB4();
    v7 = sub_20C137CB4();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v7(sub_20B52347C, v8);

    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return v6 == 0;
}

double sub_20BB9E80C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB9E86C(a1);
  }

  return result;
}

double sub_20BB9E86C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_20BB5D394((v15 > 1), v8, 1);
    v38 = v87[0];
    goto LABEL_6;
  }

  sub_20C13B534();
  v16 = a1;
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v77 = v4;
    v21 = v20;
    v90[0] = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v22 = MEMORY[0x20F2F5850](v78, v79);
    v24 = sub_20B51E694(v22, v23, v90);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20B517000, v17, v18, "CatalogModalityPageDataProvider failed to fetch remote content with %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v5 + 8))(v7, v77);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for LoadingErrorShelf(0);
  swift_allocObject();

  v11 = sub_20BEFE8F4(v25, 0, 0);

  v26 = v2[5];
  v76 = v2[4];
  v77 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page;
  v27 = *(v2 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page);
  v28 = *(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v90);
  v75 = v26;

  v73 = v28;
  v72 = sub_20C1380F4();
  v13 = type metadata accessor for MetricLocationStore();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F98];
  *(v29 + 16) = MEMORY[0x277D84F90];
  *(v29 + 24) = v31;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v74 = v71;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v4 = type metadata accessor for CatalogPageImpressionTracker();
  v89[3] = v4;
  v7 = sub_20BBA09E8(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v89[4] = v7;
  v89[0] = v37;
  v88[3] = v13;
  v88[4] = &off_2822B6968;
  v88[0] = v29;
  v87[0] = v30;
  sub_20BB5D394(0, 1, 0);
  v38 = v87[0];
  v5 = *(v87[0] + 16);
  v15 = *(v87[0] + 24);
  v8 = v5 + 1;
  if (v5 >= v15 >> 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(v38 + 16) = v8;
  v39 = v38 + 24 * v5;
  *(v39 + 32) = v11;
  *(v39 + 40) = &off_2822F4EF0;
  *(v39 + 48) = 0;
  sub_20B51CC64(v89, v87);
  sub_20B51CC64(v88, v86);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
  v71[0] = v71;
  v41 = MEMORY[0x28223BE20](v40);
  v71[1] = v11;
  v43 = (v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v86, v86[3]);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = *v43;
  v51 = *v48;
  v84 = v4;
  v85 = v7;
  v83[0] = v50;
  v81 = v13;
  v82 = &off_2822B6968;
  v80[0] = v51;
  v52 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = sub_20BE3AA74(v76, v75, v38, v72, v73, *v56, *v61, 2, v52);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  v64 = v77;
  v65 = *(v2 + v77);
  *(v2 + v77) = v63;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = v2[3];
    ObjectType = swift_getObjectType();
    v91 = type metadata accessor for CatalogModalityPageDataProvider(0);
    v92 = &off_2822D1480;
    v90[0] = v2;
    v68 = *(v2 + v64);

    v69 = v68;
    sub_20B76FFF8(v90, v69, ObjectType, v66);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
  }

  return result;
}

void sub_20BB9F144(uint64_t a1, uint64_t a2)
{
  v27[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = v27 - v7;
  v8 = sub_20C134734();
  v30 = *(v8 - 8);
  v9 = v30;
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_filterHeaderShelf);
  sub_20C135CB4();
  v16 = sub_20C134704();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v14, v8);
  v28 = v19;
  v20 = (v15 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title);
  *v20 = v16;
  v20[1] = v18;

  sub_20C0578C4(1);
  sub_20B944988(a2);
  sub_20C135CB4();
  v21 = v29;
  sub_20C134714();
  v19(v11, v8);
  v22 = sub_20C134284();
  LOBYTE(v16) = (*(*(v22 - 8) + 48))(v21, 1, v22) == 1;
  sub_20B520158(v21, &unk_27C7623C0, &unk_20C14FE50);
  sub_20BFB6054(a2, v16);
  sub_20BE9A29C();
  sub_20BAC394C();
  sub_20C135CB4();
  v23 = sub_20C134704();
  v25 = v24;
  v28(v14, v8);
  v26 = v31;
  sub_20C135CB4();
  (*(v30 + 56))(v26, 0, 1, v8);
  sub_20B8437C4(v23, v25, v26);

  sub_20B520158(v26, &unk_27C7710A0, &unk_20C156800);
  sub_20B953258(a2);
}

double sub_20BB9F55C()
{
  swift_beginAccess();

  return result;
}

double sub_20BB9F594()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_20BB9F5DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800, &qword_20C14FDA0);
}

uint64_t sub_20BB9F644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v8 - 8);
  v139 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v10 - 8);
  v140 = &v131 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v131 - v13);
  v144 = sub_20C134EC4();
  v15 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v17 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v131 - v19;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v21 = MEMORY[0x277D84FA0];
  *(v4 + 400) = MEMORY[0x277D84FA0];
  *(v4 + 408) = v21;
  *(v4 + 416) = v21;
  *(v4 + 424) = v21;
  *(v4 + 432) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_configuration;
  v23 = sub_20C134104();
  (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_activationState) = 0;
  v24 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_modality;
  v25 = sub_20C134734();
  (*(*(v25 - 8) + 56))(v4 + v24, 1, 1, v25);
  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_shouldPublishPageEventWhenAvailable) = 0;
  *v14 = a1;
  v14[1] = a2;
  v26 = sub_20C135C84();
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);

  sub_20C13CA04();
  sub_20C134E94();
  v142 = a1;
  v143 = a2;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 248) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(v169, v4 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(v169, v4 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v169, v4 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v169, v4 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(v169, v4 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v4 + 296) = v169[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v169, v4 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v169, v4 + 312);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + 352) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(v169, v4 + 360);
  type metadata accessor for ArtworkHeaderShelf(0);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v28 = OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_artwork;
  v29 = sub_20C137C24();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = (v27 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_cropCode);
  *v30 = 0;
  v30[1] = 0;
  v31 = v27 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row;
  sub_20B5D8060(v169);
  v32 = v169[9];
  *(v31 + 128) = v169[8];
  *(v31 + 144) = v32;
  *(v31 + 160) = v170;
  v33 = v169[5];
  *(v31 + 64) = v169[4];
  *(v31 + 80) = v33;
  v34 = v169[7];
  *(v31 + 96) = v169[6];
  *(v31 + 112) = v34;
  v35 = v169[1];
  *v31 = v169[0];
  *(v31 + 16) = v35;
  v36 = v169[3];
  *(v31 + 32) = v169[2];
  *(v31 + 48) = v36;
  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_artworkShelf) = v27;
  v37 = v15;
  v38 = *(v15 + 16);
  v39 = v144;
  v38(v17, v20, v144);
  type metadata accessor for FilterDetailHeaderShelf(0);
  swift_allocObject();

  v41 = sub_20C058B20(v40, v17, 1);

  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_filterHeaderShelf) = v41;
  v141 = v37;
  v42 = *(v37 + 56);
  v43 = v140;
  v42(v140, 1, 1, v39);
  type metadata accessor for ExpandingTextShelf(0);
  swift_allocObject();

  v45 = sub_20BFBE714(v44, v43);

  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_summaryShelf) = v45;
  v38(v17, v20, v39);
  type metadata accessor for FilterResultHeaderShelf(0);
  swift_allocObject();

  v47 = sub_20BAC4F80(v46, v17, 1);

  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_filterResultHeaderShelf) = v47;
  v38(v17, v20, v39);
  type metadata accessor for SelectedFilterShelf(0);
  swift_allocObject();

  v49 = sub_20B9585A8(v48, v17);

  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_selectedFilterShelf) = v49;
  v140 = v20;
  v38(v17, v20, v39);
  type metadata accessor for FilterResultShelf(0);
  swift_allocObject();

  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_filterResultShelf) = sub_20B84152C(v50, v17, 1u);

  v51 = sub_20C13CA04();
  v53 = v52;
  type metadata accessor for PreviewVideoLinkShelf(0);
  swift_allocObject();
  v54 = sub_20BE9B2CC(a3, v51, v53);

  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_previewVideoLinkShelf) = v54;
  *&v156 = *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_artworkShelf);
  *(&v156 + 1) = &off_2822B81D0;
  v55 = *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_filterHeaderShelf);
  v56 = *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_summaryShelf);
  v157 = v55;
  v158 = &off_282302FB0;
  v159 = v56;
  v160 = &off_2822FC7E0;
  v161 = v54;
  v162 = &off_2822F1D40;
  v58 = *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_selectedFilterShelf);
  v163 = *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_filterResultHeaderShelf);
  v57 = v163;
  v164 = &off_2822C9690;
  v165 = v58;
  v166 = &off_2822B8970;
  v167 = *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_filterResultShelf);
  v59 = v167;
  v168 = &off_2822AC930;

  v132 = v54;

  v133 = v57;

  v135 = v58;

  v136 = v59;

  v138 = sub_20C1380F4();
  v60 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v137 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v60 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v61 = sub_20C13C724();
  v62 = type metadata accessor for CatalogPageImpressionTracker();
  v63 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v64 = MEMORY[0x277D221C0];
  v63[2] = sub_20C13C6D4();
  v63[3] = v61;
  v63[4] = v64;
  v155[3] = v62;
  v65 = sub_20BBA09E8(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v155[4] = v65;
  v155[0] = v63;
  v66 = type metadata accessor for MetricLocationStore();
  v67 = swift_allocObject();
  v68 = MEMORY[0x277D84F98];
  v69 = MEMORY[0x277D84F90];
  *(v67 + 16) = MEMORY[0x277D84F90];
  *(v67 + 24) = v68;
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v155, v62);
  v71 = MEMORY[0x28223BE20](v70);
  v73 = (&v131 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73, v71);
  v75 = *v73;
  v139 = v65;
  v154[3] = v62;
  v154[4] = v65;
  v154[0] = v75;
  v153[3] = v66;
  v153[4] = &off_2822B6968;
  v134 = v66;
  v153[0] = v67;
  v152[0] = v69;
  sub_20BB5D394(0, 7, 0);
  v76 = v152[0];
  v78 = *(v152[0] + 16);
  v77 = *(v152[0] + 24);
  v79 = v78 + 1;
  v131 = v156;
  swift_unknownObjectRetain();
  if (v78 >= v77 >> 1)
  {
    sub_20BB5D394((v77 > 1), v78 + 1, 1);
    v76 = v152[0];
  }

  *(v76 + 16) = v79;
  v80 = v76 + 24 * v78;
  *(v80 + 32) = v131;
  *(v80 + 48) = 0;
  v81 = *(v76 + 24);
  v82 = v78 + 2;
  swift_unknownObjectRetain();
  if ((v78 + 2) > (v81 >> 1))
  {
    sub_20BB5D394((v81 > 1), v78 + 2, 1);
    v76 = v152[0];
  }

  *(v76 + 16) = v82;
  v83 = v76 + 24 * v79;
  *(v83 + 32) = v55;
  *(v83 + 40) = &off_282302FB0;
  *(v83 + 48) = 0;
  v84 = *(v76 + 24);
  v85 = v78 + 3;
  swift_unknownObjectRetain();
  if ((v78 + 3) > (v84 >> 1))
  {
    sub_20BB5D394((v84 > 1), v78 + 3, 1);
  }

  v86 = v152[0];
  *(v152[0] + 16) = v85;
  v87 = v86 + 24 * v82;
  *(v87 + 32) = v56;
  *(v87 + 40) = &off_2822FC7E0;
  *(v87 + 48) = 0;
  v88 = *(v86 + 24);
  v89 = v78 + 4;
  v90 = v132;
  swift_unknownObjectRetain();
  v91 = v133;
  if ((v78 + 4) > (v88 >> 1))
  {
    sub_20BB5D394((v88 > 1), v78 + 4, 1);
    v86 = v152[0];
  }

  *(v86 + 16) = v89;
  v92 = v86 + 24 * v85;
  *(v92 + 32) = v90;
  *(v92 + 40) = &off_2822F1D40;
  *(v92 + 48) = 0;
  v93 = *(v86 + 24);
  v94 = v78 + 5;
  swift_unknownObjectRetain();
  if ((v78 + 5) > (v93 >> 1))
  {
    sub_20BB5D394((v93 > 1), v78 + 5, 1);
    v86 = v152[0];
  }

  *(v86 + 16) = v94;
  v95 = v86 + 24 * v89;
  *(v95 + 32) = v91;
  *(v95 + 40) = &off_2822C9690;
  *(v95 + 48) = 0;
  v96 = *(v86 + 24);
  v97 = v78 + 6;
  v98 = v135;
  swift_unknownObjectRetain();
  if ((v78 + 6) > (v96 >> 1))
  {
    sub_20BB5D394((v96 > 1), v78 + 6, 1);
  }

  v99 = v152[0];
  *(v152[0] + 16) = v97;
  v100 = v99 + 24 * v94;
  *(v100 + 32) = v98;
  *(v100 + 40) = &off_2822B8970;
  *(v100 + 48) = 0;
  v101 = *(v99 + 24);
  v102 = v78 + 7;
  v103 = v136;
  swift_unknownObjectRetain();
  if (v102 > (v101 >> 1))
  {
    sub_20BB5D394((v101 > 1), v102, 1);
    v99 = v152[0];
  }

  *(v99 + 16) = v102;
  v104 = v99 + 24 * v97;
  *(v104 + 32) = v103;
  *(v104 + 40) = &off_2822AC930;
  *(v104 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0, &unk_20C15C100);
  swift_arrayDestroy();
  sub_20B51CC64(v154, v152);
  sub_20B51CC64(v153, v151);
  v105 = __swift_mutable_project_boxed_opaque_existential_1(v152, v152[3]);
  v136 = &v131;
  v106 = MEMORY[0x28223BE20](v105);
  v108 = (&v131 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v109 + 16))(v108, v106);
  v110 = __swift_mutable_project_boxed_opaque_existential_1(v151, v151[3]);
  v111 = MEMORY[0x28223BE20](v110);
  v113 = (&v131 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v114 + 16))(v113, v111);
  v115 = *v108;
  v116 = *v113;
  v149 = v62;
  v150 = v139;
  v148[0] = v115;
  v146 = v134;
  v147 = &off_2822B6968;
  v145[0] = v116;
  v117 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v118 = __swift_mutable_project_boxed_opaque_existential_1(v148, v149);
  v119 = MEMORY[0x28223BE20](v118);
  v121 = (&v131 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v122 + 16))(v121, v119);
  v123 = __swift_mutable_project_boxed_opaque_existential_1(v145, v146);
  v124 = MEMORY[0x28223BE20](v123);
  v126 = (&v131 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v127 + 16))(v126, v124);
  v128 = sub_20BE3AA74(v142, v143, v99, v138, v137, *v121, *v126, 2, v117);
  __swift_destroy_boxed_opaque_existential_1(v153);
  __swift_destroy_boxed_opaque_existential_1(v154);
  __swift_destroy_boxed_opaque_existential_1(v145);
  __swift_destroy_boxed_opaque_existential_1(v148);
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_destroy_boxed_opaque_existential_1(v152);
  __swift_destroy_boxed_opaque_existential_1(v155);
  *(v4 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page) = v128;
  v129 = sub_20BE119D0();
  (*(v141 + 8))(v140, v144, v129);
  return v4;
}

uint64_t sub_20BBA0840@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_20BBA08A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BBA0970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BBA09E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static UIColor.metricText.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithWhite:0.921568627 alpha:1.0];
}

id static UIColor.summaryButtonBackground.getter(uint64_t a1)
{
  v1 = sub_20C1380F4();
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3 = 0.15;
  if (v1 == 3)
  {
    v3 = 0.415686275;
  }

  return [v2 initWithWhite:v3 alpha:1.0];
}

id static UIColor.silverDark.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.62745098 green:0.62745098 blue:0.62745098 alpha:1.0];
}

id static UIColor.summaryQueueSecondaryBackground.getter(uint64_t a1)
{
  v1 = sub_20C1380F4();
  v2 = objc_opt_self();
  if (v1 == 3)
  {
    v3 = [v2 tertiarySystemFillColor];

    return v3;
  }

  else
  {
    v5 = [v2 tertiarySystemBackgroundColor];
    v6 = [objc_opt_self() currentTraitCollection];
    v7 = sub_20C13D3B4();
    v8 = [v5 resolvedColorWithTraitCollection_];

    return v8;
  }
}

id static UIColor.summaryQueueBackground.getter()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = sub_20C13D3B4();
  v3 = [v0 resolvedColorWithTraitCollection_];

  return v3;
}

id static UIColor.energyLabel.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.984313725 green:0.196078431 blue:0.419607843 alpha:1.0];
}

id static UIColor.metricTitleText.getter(uint64_t a1)
{
  v1 = sub_20C1380F4() == 3;
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3 = dbl_20C16A500[v1];

  return [v2 initWithWhite:v3 alpha:1.0];
}

id static UIColor.workoutTitle.getter(uint64_t a1)
{
  if (sub_20C1380F4() == 3)
  {
    v1 = [objc_opt_self() whiteColor];

    return v1;
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v3 initWithWhite:0.921568627 alpha:1.0];
  }
}

id static UIColor.workoutSubtitle.getter(uint64_t a1)
{
  if (sub_20C1380F4() == 3)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v1 initWithWhite:0.607843137 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() systemGrayColor];

    return v3;
  }
}

void sub_20BBA0EF0(SEL *a1, SEL *a2)
{
  v3 = [objc_opt_self() *a1];
  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v3 *a2];

  if (!v5)
  {
LABEL_5:
    __break(1u);
  }
}

id static UIColor.goldLight.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.980392157 green:0.890196078 blue:0.57254902 alpha:1.0];
}

id static UIColor.goldDark.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.737254902 green:0.6 blue:0.31372549 alpha:1.0];
}

id static UIColor.silverLight.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.878431373 green:0.878431373 blue:0.878431373 alpha:1.0];
}

id static UIColor.burnBarWorkoutIconPlatterBackground.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.0745098039 green:0.031372549 blue:0.0549019608 alpha:1.0];
}

id static UIColor.platterBackground.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithWhite:0.0 alpha:0.6];
}

id sub_20BBA1104()
{
  result = [objc_opt_self() whiteColor];
  qword_27C79B920 = result;
  return result;
}

id sub_20BBA1144(double a1)
{
  v2 = *(v1 + 48);
  v3 = sub_20C138374();
  v4 = [v2 stringForObjectValue_];

  if (v4)
  {
    v5 = v4;
    v6 = [v2 percentSymbol];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

      v9 = sub_20C1380F4();
      v10 = sub_20BA6BBC8(v9);
      [v10 capHeight];
      v12 = v11;

      v13 = sub_20C1380F4();
      v14 = sub_20BA6CE14(v13);
      [v14 capHeight];
      v16 = v15;

      v17 = [v5 rangeOfString_];
      v19 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C1517D0;
      v21 = *MEMORY[0x277D74078];
      *(inited + 32) = *MEMORY[0x277D74078];
      v22 = MEMORY[0x277D85048];
      *(inited + 40) = v12 - v16;
      v23 = *MEMORY[0x277D740A8];
      *(inited + 64) = v22;
      *(inited + 72) = v23;
      v24 = v21;
      v25 = v23;
      v26 = sub_20C1380F4();
      v27 = sub_20BA6CE14(v26);
      v28 = sub_20B51C88C(0, &qword_27C767A60, 0x277D74300);
      *(inited + 80) = v27;
      v29 = *MEMORY[0x277D740C0];
      *(inited + 104) = v28;
      *(inited + 112) = v29;
      v30 = objc_allocWithZone(MEMORY[0x277D75348]);
      v31 = v29;
      v32 = [v30 initWithWhite:0.921568627 alpha:1.0];
      *(inited + 144) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
      *(inited + 120) = v32;
      sub_20B6B1650(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978, &unk_20C163AF0);
      swift_arrayDestroy();
      type metadata accessor for Key(0);
      sub_20B76322C();
      v33 = sub_20C13C744();

      [v8 addAttributes:v33 range:{v17, v19}];

      return v8;
    }
  }

  return 0;
}

uint64_t sub_20BBA1408()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)(void *a1, char a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  v11 = v10;
  v20 = -a6;
  if (a2)
  {
    v21 = &selRef_leadingAnchor;
  }

  else
  {
    v21 = &selRef_leftAnchor;
  }

  if (a2)
  {
    v22 = &selRef_trailingAnchor;
  }

  else
  {
    v22 = &selRef_rightAnchor;
  }

  v23 = [v11 *v21];
  v24 = [a1 *v21];
  v25 = [v23 constraintEqualToAnchor:v24 constant:a4];

  *&v26 = a7;
  [v25 setPriority_];
  v27 = v25;
  v28 = [v11 *v22];
  v29 = [a1 *v22];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v20];

  *&v31 = a8;
  [v30 setPriority_];
  v32 = v30;
  v33 = [v11 topAnchor];
  v34 = [a1 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:a3];

  *&v36 = a9;
  [v35 setPriority_];
  v37 = [v11 bottomAnchor];
  v38 = [a1 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-a5];

  *&v40 = a10;
  [v39 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C14FE90;
  *(v41 + 32) = v27;
  *(v41 + 40) = v32;
  *(v41 + 48) = v35;
  *(v41 + 56) = v39;

  return v41;
}

uint64_t UIView.constraintsPinningCenterToCenterOfView(_:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C151490;
  v5 = [v2 centerXAnchor];
  v6 = [a1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 centerYAnchor];
  v9 = [a1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  return v4;
}

uint64_t UIView.constraintsPinningToLayoutGuide(_:supportingRTL:insets:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = -a6;
  if (a2)
  {
    v13 = &selRef_leadingAnchor;
  }

  else
  {
    v13 = &selRef_leftAnchor;
  }

  if (a2)
  {
    v14 = &selRef_trailingAnchor;
  }

  else
  {
    v14 = &selRef_rightAnchor;
  }

  v15 = [v7 *v13];
  v16 = [a1 *v13];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a4];

  v18 = v17;
  v19 = [v7 *v14];
  v20 = [a1 *v14];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v12];

  v22 = v21;
  v23 = [v7 topAnchor];
  v24 = [a1 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:a3];

  v26 = [v7 bottomAnchor];
  v27 = [a1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-a5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C14FE90;
  *(v29 + 32) = v18;
  *(v29 + 40) = v22;
  *(v29 + 48) = v25;
  *(v29 + 56) = v28;

  return v29;
}

uint64_t sub_20BBA1AAC()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = (&v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v7 = type metadata accessor for ButtonAction(0);
  v8 = v7 - 8;
  v57 = *(v7 - 8);
  *&v58 = v57;
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanStringBuilder);
  v16 = v15[9];
  v17 = v15[10];
  __swift_project_boxed_opaque_existential_1(v15 + 6, v16);
  v18 = sub_20B5E107C(0x5F54524154534552, 0xEC0000004E414C50, v16, v17);
  v20 = v19;
  v21 = *(v8 + 36);
  v22 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_template;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v22, &v10[v21], &unk_27C762300, &unk_20C151350);
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = v18;
  *(v10 + 5) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  sub_20B52F9E8(v1 + v22, v6, &unk_27C762300, &unk_20C151350);
  v24 = sub_20BBA2128(v6);
  v26 = v25;
  v27 = v1;
  sub_20B520158(v6, &unk_27C762300, &unk_20C151350);
  *(v23 + 48) = v24;
  *(v23 + 56) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
  v28 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v29 = swift_allocObject();
  v58 = xmmword_20C14F980;
  *(v29 + 16) = xmmword_20C14F980;
  sub_20B9A9B7C(v10, v29 + v28, type metadata accessor for ButtonAction);
  *(v23 + 64) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v30 = swift_allocObject();
  *(v30 + 16) = v58;
  *(v30 + 32) = v23 | 0x8000000000000004;
  v62 = 0uLL;
  LOBYTE(v63) = 1;
  *(&v63 + 1) = *v61;
  DWORD1(v63) = *&v61[3];
  *(&v63 + 1) = 0;
  *&v64 = 0;
  WORD4(v64) = 128;
  *(&v64 + 10) = *&v59[7];
  HIWORD(v64) = v60;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v59;
  DWORD1(v68) = *&v59[3];
  *(&v68 + 1) = v30;
  *&v69[0] = MEMORY[0x277D84F90];
  *(v69 + 8) = 0u;
  *(&v69[1] + 8) = 0u;
  *(&v69[2] + 1) = 0;
  v70 = 2;
  nullsub_1();
  v31 = v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row;
  v32 = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 144);
  v71[8] = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 128);
  v71[9] = v32;
  v72 = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 160);
  v33 = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 80);
  v71[4] = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 64);
  v71[5] = v33;
  v34 = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 112);
  v71[6] = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 96);
  v71[7] = v34;
  v35 = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 16);
  v71[0] = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row);
  v71[1] = v35;
  v36 = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 48);
  v71[2] = *(v27 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 32);
  v71[3] = v36;
  v37 = v69[2];
  *(v31 + 128) = v69[1];
  *(v31 + 144) = v37;
  *(v31 + 160) = v70;
  v38 = v67;
  *(v31 + 64) = v66;
  *(v31 + 80) = v38;
  v39 = v69[0];
  *(v31 + 96) = v68;
  *(v31 + 112) = v39;
  v40 = v63;
  *v31 = v62;
  *(v31 + 16) = v40;
  v41 = v65;
  *(v31 + 32) = v64;
  *(v31 + 48) = v41;

  sub_20B520158(v71, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    swift_unknownObjectRelease();
LABEL_4:

    return sub_20B9A9AE4(v10, type metadata accessor for ButtonAction);
  }

  *&v58 = Strong;
  sub_20B61DD88(v27, Strong);
  if (!v45)
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    return sub_20B9A9AE4(v10, type metadata accessor for ButtonAction);
  }

  v47 = v45;
  v48 = v46;
  v57 = v44;
  sub_20B5E2E18();
  v49 = sub_20C13D374();
  v51 = v54;
  v50 = v55;
  *v54 = v49;
  v52 = v56;
  (*(v50 + 104))(v51, *MEMORY[0x277D85200], v56);
  v53 = sub_20C13C584();
  result = (*(v50 + 8))(v51, v52);
  if (v53)
  {
    sub_20B6214EC(v57, v47, v48, v27, 1, v58);

    swift_unknownObjectRelease();

    return sub_20B9A9AE4(v10, type metadata accessor for ButtonAction);
  }

  __break(1u);
  return result;
}

char *sub_20BBA2128(uint64_t a1)
{
  v3 = sub_20C133134();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v55 - v6;
  v7 = sub_20C1357B4();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C133154();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = sub_20C132E94();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v55 - v15;
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v55 - v18;
  v20 = sub_20C135814();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24;
  sub_20B52F9E8(a1, v19, &unk_27C762300, &unk_20C151350);
  if ((*(v21 + 48))(v19, 1, v25) == 1)
  {
    v26 = &unk_27C762300;
    v27 = &unk_20C151350;
    v28 = v19;
LABEL_3:
    sub_20B520158(v28, v26, v27);
    return 0;
  }

  (*(v21 + 32))(v23, v19, v25);
  sub_20C132E64();
  sub_20C133014();
  sub_20C137F54();
  v56 = v25;
  v55 = v1;
  sub_20C135804();
  v29 = sub_20C135764();
  (*(v68 + 8))(v9, v69);
  v30 = sub_20B6DD82C(v29);
  v31 = *(sub_20C137F64() + 16);

  v69 = v31;
  if (!v31)
  {
LABEL_15:

    (*(v21 + 8))(v23, v56);
    return 0;
  }

  v32 = 0;
  v33 = v30 + 56;
  while (1)
  {
    v34 = sub_20C137F94();
    v35 = __OFADD__(v34, v32);
    result = &v32[v34];
    if (v35)
    {
      __break(1u);
      return result;
    }

    v37 = v23;
    if (sub_20C137F74() != 7)
    {
      if (*(v30 + 16))
      {
        sub_20C13E164();
        v38 = sub_20C137F94();
        MEMORY[0x20F2F58E0](v38);
        v39 = sub_20C13E1B4();
        v40 = -1 << *(v30 + 32);
        v41 = v39 & ~v40;
        if ((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
        {
          break;
        }
      }
    }

LABEL_6:
    ++v32;
    v23 = v37;
    if (v32 == v69)
    {
      goto LABEL_15;
    }
  }

  v42 = ~v40;
  while (1)
  {
    v43 = sub_20C137F94();
    if (v43 == sub_20C137F94())
    {
      break;
    }

    v41 = (v41 + 1) & v42;
    if (((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v44 = v59;
  sub_20C1330A4();
  v45 = v64;
  v46 = v65;
  v47 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x277CC9968], v66);
  v48 = v58;
  sub_20C132E64();
  v49 = v67;
  sub_20C1330F4();
  v50 = v60;
  v51 = v48;
  v52 = v63;
  v69 = *(v60 + 8);
  (v69)(v51, v63);
  (*(v46 + 8))(v45, v47);
  (*(v61 + 8))(v44, v62);
  if ((*(v50 + 48))(v49, 1, v52) == 1)
  {
    (*(v21 + 8))(v37, v56);
    v26 = &qword_27C762AC0;
    v27 = &qword_20C14FC90;
    v28 = v49;
    goto LABEL_3;
  }

  v53 = v57;
  (*(v50 + 32))(v57, v49, v52);
  v54 = sub_20BAB14C4(v53);
  (v69)(v53, v52);
  (*(v21 + 8))(v37, v56);
  return v54;
}

uint64_t sub_20BBA28BC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 208) = a3;
  *(v4 + 216) = v3;
  *(v4 + 596) = a2;
  *(v4 + 200) = a1;
  v5 = sub_20C135814();
  *(v4 + 224) = v5;
  *(v4 + 232) = *(v5 - 8);
  *(v4 + 240) = swift_task_alloc();
  v6 = sub_20C13BB84();
  *(v4 + 248) = v6;
  *(v4 + 256) = *(v6 - 8);
  *(v4 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0, &unk_20C14FCE0);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  *(v4 + 288) = swift_task_alloc();
  v7 = sub_20C134F24();
  *(v4 + 296) = v7;
  *(v4 + 304) = *(v7 - 8);
  *(v4 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  *(v4 + 320) = swift_task_alloc();
  v8 = type metadata accessor for ShelfMetricAction(0);
  *(v4 + 328) = v8;
  *(v4 + 336) = *(v8 - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v9 = sub_20C133954();
  *(v4 + 360) = v9;
  *(v4 + 368) = *(v9 - 8);
  *(v4 + 376) = swift_task_alloc();
  sub_20C133594();
  *(v4 + 384) = swift_task_alloc();
  v10 = sub_20C132EE4();
  *(v4 + 392) = v10;
  *(v4 + 400) = *(v10 - 8);
  *(v4 + 408) = swift_task_alloc();
  v11 = sub_20C133274();
  *(v4 + 416) = v11;
  *(v4 + 424) = *(v11 - 8);
  *(v4 + 432) = swift_task_alloc();
  v12 = sub_20C133154();
  *(v4 + 440) = v12;
  *(v4 + 448) = *(v12 - 8);
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  v13 = sub_20C132E94();
  *(v4 + 472) = v13;
  *(v4 + 480) = *(v13 - 8);
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  v14 = sub_20C1357B4();
  *(v4 + 512) = v14;
  *(v4 + 520) = *(v14 - 8);
  *(v4 + 528) = swift_task_alloc();
  sub_20C13CDA4();
  *(v4 + 536) = sub_20C13CD94();
  v16 = sub_20C13CD24();
  *(v4 + 544) = v16;
  *(v4 + 552) = v15;

  return MEMORY[0x2822009F8](sub_20BBA2E08, v16, v15);
}

uint64_t sub_20BBA2E08()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  *(v0 + 592) = (*(*(v0 + 368) + 48))(*(v0 + 208), 1, *(v0 + 360));
  sub_20C135804();
  sub_20C1357A4();
  (*(v2 + 8))(v1, v3);
  sub_20C132E64();
  sub_20C133014();
  sub_20C132D54();
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 448);
  v9 = *(v0 + 440);
  v17 = *(v0 + 488);
  v18 = *(v0 + 504);
  v19 = *(v0 + 216);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  *(v0 + 560) = v10;
  *(v0 + 568) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  sub_20C1357D4();
  (*(v5 + 16))(v17, v18, v6);
  sub_20C133014();
  sub_20C133554();
  sub_20C133264();
  v11 = *(v19 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanClient + 24);
  v12 = *(v19 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanClient), v11);
  v13 = swift_task_alloc();
  *(v0 + 576) = v13;
  *v13 = v0;
  v13[1] = sub_20BBA3430;
  v14 = *(v0 + 432);
  v15 = *(v0 + 376);

  return MEMORY[0x2821ADF08](v15, v14, v11, v12);
}

uint64_t sub_20BBA3430()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_20BBA3D70;
  }

  else
  {
    v5 = sub_20BBA356C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20BBA356C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 596);

  v7 = *MEMORY[0x277D52B40];
  v8 = sub_20C136664();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v1, v7, v8);
  (*(v9 + 56))(v1, 0, 1, v8);
  (*(v4 + 104))(v2, *MEMORY[0x277D51428], v3);
  v10 = sub_20C132C14();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = *(v0 + 592);
  if (v6)
  {
    if (v11 == 1)
    {
      v13 = "RefreshRestartPlan";
    }

    else
    {
      v13 = "RefreshReplacePlan";
    }

    v70 = 0xD000000000000012;
    v71 = (v13 - 32) | 0x8000000000000000;
  }

  else
  {
    if (v11 == 1)
    {
      v12 = 0x5074726174736552;
    }

    else
    {
      v12 = 0x506563616C706552;
    }

    v70 = v12;
    v71 = 0xEB000000006E616CLL;
  }

  v15 = *(v0 + 400);
  v14 = *(v0 + 408);
  v16 = *(v0 + 352);
  v17 = *(v0 + 328);
  v65 = *(v0 + 320);
  v66 = *(v0 + 304);
  v67 = *(v0 + 296);
  v68 = *(v0 + 312);
  v69 = *(v0 + 288);
  v64 = *(v0 + 392);
  v18 = v17[8];
  v19 = *MEMORY[0x277D523B0];
  v20 = sub_20C135ED4();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16 + v18, v19, v20);
  (*(v21 + 56))(v16 + v18, 0, 1, v20);
  v22 = v17[10];
  v23 = *MEMORY[0x277D51768];
  v24 = sub_20C1352E4();
  (*(*(v24 - 8) + 104))(v16 + v22, v23, v24);
  v25 = v17[11];
  v26 = sub_20C136E94();
  (*(*(v26 - 8) + 56))(v16 + v25, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258, &qword_20C15AFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = 9;
  sub_20C133804();
  v28 = sub_20C132EA4();
  v30 = v29;
  (*(v15 + 8))(v14, v64);
  *(v0 + 168) = v28;
  *(v0 + 176) = v30;
  sub_20C13DC04();
  *(inited + 80) = 12;
  *(v0 + 192) = sub_20C1337E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765200, &unk_20C1586E0);
  sub_20B79AC30();
  sub_20C13DC04();
  v31 = sub_20B6B29D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762260, &unk_20C14FC80);
  swift_arrayDestroy();
  sub_20B5DF134(v65, v16, &unk_27C7622E0, &unk_20C14FCF0);
  (*(v66 + 32))(v16 + v17[5], v68, v67);
  sub_20B5DF134(v69, v16 + v17[6], &unk_27C7617F0, &unk_20C151A10);
  v32 = (v16 + v17[7]);
  *v32 = v70;
  v32[1] = v71;
  v33 = (v16 + v17[9]);
  *v33 = 0;
  v33[1] = 0;
  *(v16 + v17[12]) = v31;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FDCC(*(v0 + 216), *(v0 + 352), Strong);
    swift_unknownObjectRelease();
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = *(v0 + 328);
    v38 = *(v0 + 336);
    v40 = *(v0 + 272);
    v39 = *(v0 + 280);
    (*(v38 + 56))(v39, 1, 1, v37);
    sub_20B52F9E8(v39, v40, &unk_27C7622D0, &unk_20C14FCE0);
    if ((*(v38 + 48))(v40, 1, v37) == 1)
    {
      sub_20B520158(*(v0 + 272), &unk_27C7622D0, &unk_20C14FCE0);
    }

    else
    {
      v41 = *(v0 + 344);
      v42 = *(v0 + 216);
      sub_20B622774(*(v0 + 272), v41, type metadata accessor for ShelfMetricAction);
      sub_20BF9FDCC(v42, v41, v36);
      sub_20B9A9AE4(v41, type metadata accessor for ShelfMetricAction);
    }

    v43 = v36 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v0 + 376);
      v45 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      (*(v45 + 48))(v36, v44, ObjectType, v45);
      swift_unknownObjectRelease();
    }

    v47 = *(v0 + 280);
    swift_unknownObjectRelease();
    sub_20B520158(v47, &unk_27C7622D0, &unk_20C14FCE0);
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v50 = v48 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v51 = *(v50 + 8);
      v52 = swift_getObjectType();
      (*(v51 + 248))(v49, v52, v51);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v53 = *(v0 + 560);
  v54 = *(v0 + 504);
  v55 = *(v0 + 472);
  v57 = *(v0 + 424);
  v56 = *(v0 + 432);
  v58 = *(v0 + 416);
  v60 = *(v0 + 368);
  v59 = *(v0 + 376);
  v61 = *(v0 + 360);
  sub_20B9A9AE4(*(v0 + 352), type metadata accessor for ShelfMetricAction);
  (*(v60 + 8))(v59, v61);
  (*(v57 + 8))(v56, v58);
  v53(v54, v55);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_20BBA3D70()
{
  v44 = v0;
  v1 = v0[70];
  v2 = v0[63];
  v3 = v0[59];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[52];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v7 = v0[73];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v11 = v0[25];
  sub_20C13B454();
  (*(v9 + 16))(v8, v11, v10);
  v12 = v7;
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1D4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[50];
    v16 = v0[51];
    v17 = v0[49];
    v40 = v0[32];
    v18 = v0[30];
    v41 = v0[31];
    v42 = v0[33];
    v19 = v0[29];
    v36 = v0[28];
    v20 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v20 = 136315394;
    v38 = v14;
    sub_20C1357D4();
    sub_20BBA7500();
    v21 = sub_20C13DFA4();
    log = v13;
    v23 = v22;
    (*(v15 + 8))(v16, v17);
    (*(v19 + 8))(v18, v36);
    v24 = sub_20B51E694(v21, v23, &v43);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    swift_getErrorValue();
    v25 = MEMORY[0x20F2F5850](v0[19], v0[20]);
    v27 = sub_20B51E694(v25, v26, &v43);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_20B517000, log, v38, "[WorkoutPlanTemplateDetailActionShelf] Failed to repeat workout plan template %s with error: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v39, -1, -1);
    MEMORY[0x20F2F6A40](v20, -1, -1);

    (*(v40 + 8))(v42, v41);
  }

  else
  {
    v29 = v0[32];
    v28 = v0[33];
    v31 = v0[30];
    v30 = v0[31];
    v32 = v0[28];
    v33 = v0[29];

    (*(v33 + 8))(v31, v32);
    (*(v29 + 8))(v28, v30);
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_20BBA4154(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C135814();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for PageAlertAction(0);
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10) - 8);
  v2[13] = v6;
  v2[14] = *(v6 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_20C13CDA4();
  v2[17] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v2[18] = v8;
  v2[19] = v7;

  return MEMORY[0x2822009F8](sub_20BBA433C, v8, v7);
}

uint64_t sub_20BBA433C()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanStringBuilder);
  v0[20] = v2;
  v4 = v2[9];
  v3 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v4);
  v0[21] = sub_20B5E107C(0xD00000000000001FLL, 0x800000020C1AA940, v4, v3);
  v0[22] = v5;
  v6 = (v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanClient);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanClient + 24);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_20BBA4454;
  v10 = v0[16];

  return MEMORY[0x2821ADE88](v10, v7, v8);
}

uint64_t sub_20BBA4454()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_20BBA4CDC;
  }

  else
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_20BBA4578;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20BBA4578()
{
  v1 = v0[20];
  v2 = v0[16];
  v60 = v0[15];
  v63 = v0[13];
  v70 = v0[12];
  v64 = v0[11];
  v65 = v0[10];
  v66 = v0[9];
  v69 = v0[8];
  v57 = v0[7];
  v61 = v0[6];
  v3 = v0[5];
  v68 = v0[4];
  v4 = v0[2];
  v59 = v4;

  v5 = sub_20C133954();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = v1[9];
  v7 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v6);
  v51 = sub_20B5E107C(0xD000000000000025, 0x800000020C1AAA00, v6, v7);
  v67 = v8;
  v9 = v1[9];
  v10 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v9);
  v11 = sub_20B5E107C(0xD00000000000002DLL, 0x800000020C1AA990, v9, v10);
  v53 = v12;
  v54 = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v58 = *(v3 + 16);
  v58(v57, v4, v68);
  sub_20B52F9E8(v2, v60, &unk_27C76A970, &qword_20C14FC10);
  v56 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v52 = (v61 + *(v63 + 80) + v56) & ~*(v63 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v62 = *(v3 + 32);
  v62(v14 + v56, v57, v68);
  sub_20B5DF134(v60, v14 + v52, &unk_27C76A970, &qword_20C14FC10);
  sub_20C132ED4();
  v15 = (v70 + v69[6]);
  *v15 = v54;
  v15[1] = v53;
  *(v70 + v69[5]) = 0;
  v16 = (v70 + v69[7]);
  *v16 = sub_20BBA70B8;
  v16[1] = v14;
  v17 = v1[9];
  v18 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v17);
  v55 = sub_20B5E107C(0xD000000000000031, 0x800000020C1AA9C0, v17, v18);
  v20 = v19;
  v21 = swift_allocObject();
  swift_weakInit();
  v58(v57, v59, v68);
  sub_20B52F9E8(v2, v60, &unk_27C76A970, &qword_20C14FC10);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v62(v22 + v56, v57, v68);
  sub_20B5DF134(v60, v22 + v52, &unk_27C76A970, &qword_20C14FC10);
  sub_20C132ED4();
  v23 = (v64 + v69[6]);
  *v23 = v55;
  v23[1] = v20;
  *(v64 + v69[5]) = 0;
  v24 = (v64 + v69[7]);
  *v24 = sub_20BBA727C;
  v24[1] = v22;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_20C132964();
  v29 = v28;

  v30 = swift_allocObject();
  swift_weakInit();
  sub_20C132ED4();
  v31 = (v65 + v69[6]);
  *v31 = v27;
  v31[1] = v29;
  *(v65 + v69[5]) = 2;
  v32 = (v65 + v69[7]);
  *v32 = sub_20BBA738C;
  v32[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
  v33 = *(v66 + 72);
  v34 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C1517D0;
  v36 = v35 + v34;
  sub_20B9A9B7C(v70, v36, type metadata accessor for PageAlertAction);
  sub_20B9A9B7C(v64, v36 + v33, type metadata accessor for PageAlertAction);
  sub_20B9A9B7C(v65, v36 + 2 * v33, type metadata accessor for PageAlertAction);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v40 = v0[21];
    v39 = v0[22];
    type metadata accessor for DefaultPageAlertPresenter();
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    swift_unknownObjectWeakInit();
    v42 = MEMORY[0x277D84F90];
    *(v41 + 32) = v35;
    *(v41 + 40) = v42;
    *(v41 + 48) = v40;
    *(v41 + 56) = v39;
    *(v41 + 64) = v51;
    *(v41 + 72) = v67;
    *(v41 + 80) = 1;
    *(v41 + 88) = 0;
    v43 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      (*(v44 + 224))(v38, v41, &off_2822DD358, ObjectType, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v46 = v0[16];
  v48 = v0[11];
  v47 = v0[12];
  sub_20B9A9AE4(v0[10], type metadata accessor for PageAlertAction);
  sub_20B9A9AE4(v48, type metadata accessor for PageAlertAction);
  sub_20B9A9AE4(v47, type metadata accessor for PageAlertAction);
  sub_20B520158(v46, &unk_27C76A970, &qword_20C14FC10);

  v49 = v0[1];

  return v49();
}

uint64_t sub_20BBA4CDC()
{
  v1 = v0[20];
  v2 = v0[16];
  v60 = v0[15];
  v63 = v0[13];
  v70 = v0[12];
  v64 = v0[11];
  v65 = v0[10];
  v66 = v0[9];
  v69 = v0[8];
  v57 = v0[7];
  v61 = v0[6];
  v3 = v0[5];
  v68 = v0[4];
  v4 = v0[2];
  v59 = v4;

  v5 = sub_20C133954();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = v1[9];
  v7 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v6);
  v51 = sub_20B5E107C(0xD00000000000002DLL, 0x800000020C1AA960, v6, v7);
  v67 = v8;
  v9 = v1[9];
  v10 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v9);
  v11 = sub_20B5E107C(0xD00000000000002DLL, 0x800000020C1AA990, v9, v10);
  v53 = v12;
  v54 = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v58 = *(v3 + 16);
  v58(v57, v4, v68);
  sub_20B52F9E8(v2, v60, &unk_27C76A970, &qword_20C14FC10);
  v56 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v52 = (v61 + *(v63 + 80) + v56) & ~*(v63 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v62 = *(v3 + 32);
  v62(v14 + v56, v57, v68);
  sub_20B5DF134(v60, v14 + v52, &unk_27C76A970, &qword_20C14FC10);
  sub_20C132ED4();
  v15 = (v70 + v69[6]);
  *v15 = v54;
  v15[1] = v53;
  *(v70 + v69[5]) = 0;
  v16 = (v70 + v69[7]);
  *v16 = sub_20BBA70B8;
  v16[1] = v14;
  v17 = v1[9];
  v18 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v17);
  v55 = sub_20B5E107C(0xD000000000000031, 0x800000020C1AA9C0, v17, v18);
  v20 = v19;
  v21 = swift_allocObject();
  swift_weakInit();
  v58(v57, v59, v68);
  sub_20B52F9E8(v2, v60, &unk_27C76A970, &qword_20C14FC10);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v62(v22 + v56, v57, v68);
  sub_20B5DF134(v60, v22 + v52, &unk_27C76A970, &qword_20C14FC10);
  sub_20C132ED4();
  v23 = (v64 + v69[6]);
  *v23 = v55;
  v23[1] = v20;
  *(v64 + v69[5]) = 0;
  v24 = (v64 + v69[7]);
  *v24 = sub_20BBA727C;
  v24[1] = v22;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_20C132964();
  v29 = v28;

  v30 = swift_allocObject();
  swift_weakInit();
  sub_20C132ED4();
  v31 = (v65 + v69[6]);
  *v31 = v27;
  v31[1] = v29;
  *(v65 + v69[5]) = 2;
  v32 = (v65 + v69[7]);
  *v32 = sub_20BBA738C;
  v32[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
  v33 = *(v66 + 72);
  v34 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C1517D0;
  v36 = v35 + v34;
  sub_20B9A9B7C(v70, v36, type metadata accessor for PageAlertAction);
  sub_20B9A9B7C(v64, v36 + v33, type metadata accessor for PageAlertAction);
  sub_20B9A9B7C(v65, v36 + 2 * v33, type metadata accessor for PageAlertAction);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v40 = v0[21];
    v39 = v0[22];
    type metadata accessor for DefaultPageAlertPresenter();
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    swift_unknownObjectWeakInit();
    v42 = MEMORY[0x277D84F90];
    *(v41 + 32) = v35;
    *(v41 + 40) = v42;
    *(v41 + 48) = v40;
    *(v41 + 56) = v39;
    *(v41 + 64) = v51;
    *(v41 + 72) = v67;
    *(v41 + 80) = 1;
    *(v41 + 88) = 0;
    v43 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      (*(v44 + 224))(v38, v41, &off_2822DD358, ObjectType, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v46 = v0[16];
  v48 = v0[11];
  v47 = v0[12];
  sub_20B9A9AE4(v0[10], type metadata accessor for PageAlertAction);
  sub_20B9A9AE4(v48, type metadata accessor for PageAlertAction);
  sub_20B9A9AE4(v47, type metadata accessor for PageAlertAction);
  sub_20B520158(v46, &unk_27C76A970, &qword_20C14FC10);

  v49 = v0[1];

  return v49();
}

uint64_t sub_20BBA543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_20C13CDA4();
  v6[9] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x2822009F8](sub_20BBA54D8, v8, v7);
}

uint64_t sub_20BBA54D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_20BBA55E8;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_20BBA28BC(v4, 0, v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_20BBA55E8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_20BBA7870, v3, v2);
}

double sub_20BBA572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v27 = &v27 - v10;
  v12 = sub_20C135814();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = sub_20C13CDF4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a3, v12);
  sub_20B52F9E8(a4, v11, &unk_27C76A970, &qword_20C14FC10);
  sub_20C13CDA4();
  v20 = a2;

  v21 = sub_20C13CD94();
  v22 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v23 = (v14 + *(v28 + 80) + v22) & ~*(v28 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 2) = v21;
  *(v24 + 3) = v25;
  *(v24 + 4) = v20;
  (*(v13 + 32))(&v24[v22], v15, v12);
  sub_20B5DF134(v27, &v24[v23], &unk_27C76A970, &qword_20C14FC10);
  sub_20B6380FC(0, 0, v18, v30, v24);

  return result;
}

uint64_t sub_20BBA59F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_20C13CDA4();
  v6[9] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x2822009F8](sub_20BBA5A94, v8, v7);
}

uint64_t sub_20BBA5A94()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_20BBA5BA4;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_20BBA28BC(v4, 1, v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_20BBA5BA4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_20B8A7FBC, v3, v2);
}

double sub_20BBA5CE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBA5D40();
  }

  return result;
}

uint64_t sub_20BBA5D40()
{
  v1 = type metadata accessor for ShelfMetricAction(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277D52B40];
  v6 = sub_20C136664();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = v2[7];
  v9 = *MEMORY[0x277D51468];
  v10 = sub_20C134F24();
  (*(*(v10 - 8) + 104))(&v4[v8], v9, v10);
  v11 = v2[8];
  v12 = sub_20C132C14();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = v2[10];
  v14 = *MEMORY[0x277D523B0];
  v15 = sub_20C135ED4();
  v16 = *(v15 - 8);
  (*(v16 + 104))(&v4[v13], v14, v15);
  (*(v16 + 56))(&v4[v13], 0, 1, v15);
  v17 = v2[12];
  v18 = *MEMORY[0x277D51768];
  v19 = sub_20C1352E4();
  (*(*(v19 - 8) + 104))(&v4[v17], v18, v19);
  v20 = v2[13];
  v21 = sub_20C136E94();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  *&v4[v2[9]] = xmmword_20C14F9A0;
  v23 = &v4[v2[11]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v4[v2[14]] = v22;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FDCC(v0, v4, Strong);
    swift_unknownObjectRelease();
  }

  return sub_20B9A9AE4(v4, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BBA6058()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanClient));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_template, &unk_27C762300, &unk_20C151350);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanTemplateDetailActionShelf(uint64_t a1)
{
  result = qword_27C76B758;
  if (!qword_27C76B758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BBA61F0(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20BBA62F0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BBA62F0(uint64_t a1)
{
  if (!qword_27C766B58)
  {
    sub_20C135814();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C766B58);
    }
  }
}

uint64_t sub_20BBA6348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20B52A9D4;

  return sub_20BBA4154(a5);
}

uint64_t sub_20BBA63E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BBA645C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BBA6520()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_row;
  sub_20B5D8060(v11);
  v2 = v11[9];
  *(v1 + 128) = v11[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v12;
  v3 = v11[5];
  *(v1 + 64) = v11[4];
  *(v1 + 80) = v3;
  v4 = v11[7];
  *(v1 + 96) = v11[6];
  *(v1 + 112) = v4;
  v5 = v11[1];
  *v1 = v11[0];
  *(v1 + 16) = v5;
  v6 = v11[3];
  *(v1 + 32) = v11[2];
  *(v1 + 48) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_template;
  v8 = sub_20C135814();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_eventHub) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20B52E424(&v10, v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_workoutPlanStringBuilder) = v10;
  return v0;
}

uint64_t sub_20BBA66BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v60 - v3;
  v66 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v66);
  v68 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20C135814();
  v73 = *(v70 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v60 - v10;
  v11 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v60 - v18;
  v19 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B9A9B7C(a1, v21, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B622774(v21, v24, type metadata accessor for ButtonAction);
    sub_20B9A9B7C(&v24[*(v22 + 28)], v13, type metadata accessor for ButtonAction.ActionType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20B9A9AE4(v24, type metadata accessor for ButtonAction);
      v25 = type metadata accessor for ButtonAction.ActionType;
      v26 = v13;
    }

    else
    {
      v28 = v13;
      v29 = v71;
      sub_20B5DF134(v28, v71, &unk_27C762300, &unk_20C151350);
      sub_20B52F9E8(v29, v16, &unk_27C762300, &unk_20C151350);
      v30 = v73;
      v31 = v70;
      if ((*(v73 + 48))(v16, 1, v70) == 1)
      {
        sub_20B520158(v29, &unk_27C762300, &unk_20C151350);
        sub_20B9A9AE4(v24, type metadata accessor for ButtonAction);
        return sub_20B520158(v16, &unk_27C762300, &unk_20C151350);
      }

      v32 = v31;
      v61 = *(v30 + 32);
      v62 = v30 + 32;
      v61(v72, v16, v31);
      sub_20C13B454();
      sub_20C13BB64();
      v33 = v65;
      (*(v63 + 8))(v7, v64);
      v34 = sub_20C136664();
      v35 = v68;
      (*(*(v34 - 8) + 56))(v68, 1, 1, v34);
      v36 = v66;
      v37 = *(v66 + 20);
      v38 = *MEMORY[0x277D51428];
      v39 = sub_20C134F24();
      (*(*(v39 - 8) + 104))(v35 + v37, v38, v39);
      v40 = v36[6];
      v41 = sub_20C132C14();
      (*(*(v41 - 8) + 56))(v35 + v40, 1, 1, v41);
      v42 = v36[8];
      v43 = *MEMORY[0x277D523B0];
      v44 = sub_20C135ED4();
      v45 = *(v44 - 8);
      (*(v45 + 104))(v35 + v42, v43, v44);
      (*(v45 + 56))(v35 + v42, 0, 1, v44);
      v46 = v36[10];
      v47 = *MEMORY[0x277D51768];
      v48 = sub_20C1352E4();
      (*(*(v48 - 8) + 104))(v35 + v46, v47, v48);
      v49 = v36[11];
      v50 = sub_20C136E94();
      (*(*(v50 - 8) + 56))(v35 + v49, 1, 1, v50);
      v51 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      *(v35 + v36[7]) = xmmword_20C170E90;
      v52 = (v35 + v36[9]);
      *v52 = 0;
      v52[1] = 0;
      *(v35 + v36[12]) = v51;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_20BF9FDCC(v33, v35, Strong);
        swift_unknownObjectRelease();
      }

      v54 = sub_20C13CDF4();
      v55 = v69;
      (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
      v56 = v73;
      v57 = v67;
      (*(v73 + 16))(v67, v72, v32);
      v58 = (*(v56 + 80) + 40) & ~*(v56 + 80);
      v59 = swift_allocObject();
      *(v59 + 2) = 0;
      *(v59 + 3) = 0;
      *(v59 + 4) = v33;
      v61(&v59[v58], v57, v32);

      sub_20B6383D0(0, 0, v55, &unk_20C170F50, v59);

      sub_20B9A9AE4(v35, type metadata accessor for ShelfMetricAction);
      (*(v56 + 8))(v72, v32);
      sub_20B520158(v71, &unk_27C762300, &unk_20C151350);
      v25 = type metadata accessor for ButtonAction;
      v26 = v24;
    }
  }

  else
  {
    v25 = type metadata accessor for ShelfItemAction;
    v26 = v21;
  }

  return sub_20B9A9AE4(v26, v25);
}

uint64_t sub_20BBA6FC0(uint64_t a1)
{
  v4 = *(sub_20C135814() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20BBA6348(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = sub_20C135814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_20C133954();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

double sub_20BBA729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_20C135814() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10) - 8);
  return sub_20BBA572C(a1, *(v3 + 16), v3 + v8, v3 + ((v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t sub_20BBA7394(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C135814() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20B52AC14;

  return sub_20BBA59F8(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_20BBA7500()
{
  result = qword_27C763EF0;
  if (!qword_27C763EF0)
  {
    sub_20C132EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763EF0);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_20C135814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_20C133954();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_20BBA7704(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C135814() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20B52AC14;

  return sub_20BBA543C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t static AppActiveOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_20BBA7954()
{
  result = qword_27C76B768;
  if (!qword_27C76B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B768);
  }

  return result;
}

unint64_t sub_20BBA79AC()
{
  result = qword_27C76B770;
  if (!qword_27C76B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B770);
  }

  return result;
}

unint64_t sub_20BBA7A00()
{
  result = qword_281102C90;
  if (!qword_281102C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281102C90);
  }

  return result;
}

unint64_t sub_20BBA7A58()
{
  result = qword_281102C88;
  if (!qword_281102C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281102C88);
  }

  return result;
}

id sub_20BBA7B1C(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SessionBufferPresenter();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void WorkoutPlanArtwork.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  sub_20C13D604();
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x20F2F5910](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x20F2F5910](*&v11);
  sub_20C13D604();
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x20F2F5910](*&v12);
  MEMORY[0x20F2F58E0](v6);
  MEMORY[0x20F2F58E0](v7);
  sub_20BBA7E04(a1, v9, MEMORY[0x277CC9AF8], &qword_27C764180, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);

  sub_20BBA83A8(a1, v8);
}

uint64_t WorkoutPlanArtwork.hashValue.getter()
{
  sub_20C13E164();
  WorkoutPlanArtwork.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BBA7CF0()
{
  sub_20C13E164();
  WorkoutPlanArtwork.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BBA7D34(uint64_t a1)
{
  sub_20C13E164();
  WorkoutPlanArtwork.hash(into:)(v2);
  return sub_20C13E1B4();
}

void sub_20BBA7E04(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v12 = a1[3];
  v31 = a1[2];
  v32 = v12;
  v33 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v25[1] = a1;
  v29 = v14;
  v30 = v13;
  v15 = sub_20C13E1B4();
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v25[3] = v9 + 16;
  v25[4] = v15;
  v25[2] = v9 + 8;

  v20 = 0;
  for (i = 0; v18; v20 ^= v24)
  {
    v22 = i;
LABEL_9:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    (*(v9 + 16))(v11, *(a2 + 48) + *(v9 + 72) * (v23 | (v22 << 6)), v8);
    sub_20BBA8A58(v26, v27, v28);
    v24 = sub_20C13C7B4();
    (*(v9 + 8))(v11, v8);
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      MEMORY[0x20F2F58E0](v20);
      return;
    }

    v18 = *(a2 + 56 + 8 * v22);
    ++i;
    if (v18)
    {
      i = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_20BBA80E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction(0);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  v29 = a2;
  v30 = a1;
  v25 = v11;
  v26 = a2 + 64;
LABEL_6:
  if (v10)
  {
    v32 = v12;
    goto LABEL_12;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      MEMORY[0x20F2F58E0](v12);
      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v32 = v12;
      v13 = v14;
LABEL_12:
      v15 = __clz(__rbit64(v10)) | (v13 << 6);
      v16 = *(*(a2 + 48) + v15);
      v17 = *(*(a2 + 56) + 8 * v15);
      v18 = *(a1 + 48);
      v33[2] = *(a1 + 32);
      v33[3] = v18;
      v34 = *(a1 + 64);
      v19 = *(a1 + 16);
      v33[0] = *a1;
      v33[1] = v19;
      MEMORY[0x20F2F58E0](v16);
      MEMORY[0x20F2F58E0](*(v17 + 16));
      v20 = v17;
      v21 = *(v17 + 16);
      if (v21)
      {
        v22 = v27;
        v23 = v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v31 = v20;

        v24 = *(v22 + 72);
        while (1)
        {
          sub_20B5F15A8(v23, v6);
          if (v6[1])
          {
            sub_20C13E184();
            sub_20C13CA64();
            if (v6[3])
            {
              goto LABEL_18;
            }
          }

          else
          {
            sub_20C13E184();
            if (v6[3])
            {
LABEL_18:
              sub_20C13E184();
              sub_20C13CA64();
              if (!v6[5])
              {
                goto LABEL_22;
              }

              goto LABEL_14;
            }
          }

          sub_20C13E184();
          if (!v6[5])
          {
LABEL_22:
            sub_20C13E184();
            goto LABEL_15;
          }

LABEL_14:
          sub_20C13E184();
          sub_20C13CA64();
LABEL_15:
          sub_20BDA4D9C(v33);
          sub_20BBA898C(v6);
          v23 += v24;
          if (!--v21)
          {

            a2 = v29;
            a1 = v30;
            v11 = v25;
            v7 = v26;
            break;
          }
        }
      }

      v10 &= v10 - 1;
      v12 = sub_20C13E1B4() ^ v32;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_20BBA83A8(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v48 = sub_20C133244();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681E0, &qword_20C1652B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v39 - v9;
  v11 = *(a2 + 64);
  v39[0] = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v39[1] = v3 + 16;
  v47 = (v3 + 32);
  v42 = v3;
  v43 = a2;
  v44 = (v3 + 8);

  v16 = 0;
  v40 = v10;
  v41 = v7;
  v49 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v42;
      v23 = v43;
      v24 = v46;
      v25 = v48;
      (*(v42 + 16))(v46, *(v43 + 48) + *(v42 + 72) * v21, v48);
      v26 = *(*(v23 + 56) + v21);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18, &unk_20C171320);
      v28 = *(v27 + 48);
      v29 = *(v22 + 32);
      v7 = v41;
      v29(v41, v24, v25);
      v7[v28] = v26;
      (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
      v19 = v17;
      v10 = v40;
LABEL_13:
      sub_20BBA89E8(v7, v10);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18, &unk_20C171320);
      if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
      {
        break;
      }

      v31 = *(v30 + 48);
      v32 = v46;
      v33 = v48;
      (*v47)(v46, v10, v48);
      v34 = v10[v31];
      v35 = *(v45 + 48);
      v52 = *(v45 + 32);
      v53 = v35;
      v54 = *(v45 + 64);
      v36 = *(v45 + 16);
      v50 = *v45;
      v51 = v36;
      sub_20BBA8A58(&qword_27C764180, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      sub_20C13C7C4();
      (*v44)(v32, v33);
      MEMORY[0x20F2F58E0](v34);
      v37 = sub_20C13E1B4();
      v16 = v19;
      v49 ^= v37;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    MEMORY[0x20F2F58E0](v49);
  }

  else
  {
LABEL_5:
    if (v15 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18, &unk_20C171320);
        (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v39[0] + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

BOOL _s9SeymourUI18WorkoutPlanArtworkV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v19 = *(a1 + 8);
  v20 = *(a1 + 7);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v12 = *(a2 + 56);
  v18 = *(a2 + 64);
  sub_20B63C198();
  v13 = sub_20C13D5F4();
  result = 0;
  if ((v13 & 1) != 0 && v3 == v8 && v2 == v7)
  {
    v15 = sub_20C13D5F4();
    result = 0;
    if ((v15 & 1) != 0 && v4 == v9)
    {
      result = 0;
      if (v5 == v11 && v6 == v10)
      {
        sub_20BDA3AC4(v20, v12);
        if (v16)
        {
          sub_20B975974(v19, v18);
          if (v17)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_20BBA8928()
{
  result = qword_27C76B780;
  if (!qword_27C76B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B780);
  }

  return result;
}

uint64_t sub_20BBA898C(uint64_t a1)
{
  v2 = type metadata accessor for ButtonAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BBA89E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681E0, &qword_20C1652B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BBA8A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BBA8AA0()
{
  v35 = sub_20C136594();
  v1 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C134A74();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = *(v0 + 168);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v38 = MEMORY[0x277D84F90];

    sub_20B526D44(0, v12, 0);
    v13 = v38;
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v27 = v11;
    v15 = v11 + v14;
    v36 = *(v5 + 72);
    v30 = (v1 + 8);
    v31 = (v1 + 32);
    v28 = (v3 + 8);
    v29 = (v3 + 32);
    do
    {
      sub_20B864C34(v15, v10);
      sub_20B864C34(v10, v7);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = v32;
        v17 = v33;
        (*v29)(v32, v7, v33);
        v18 = sub_20C133E44();
        v20 = v19;
        v21 = v28;
      }

      else
      {
        v16 = v34;
        v17 = v35;
        (*v31)(v34, v7, v35);
        v18 = sub_20C136564();
        v20 = v22;
        v21 = v30;
      }

      (*v21)(v16, v17);
      sub_20B864C98(v10);
      v38 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_20B526D44((v23 > 1), v24 + 1, 1);
        v13 = v38;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v18;
      *(v25 + 40) = v20;
      v15 += v36;
      --v12;
    }

    while (v12);
  }

  return v13;
}

double sub_20BBA8DF8(uint64_t a1)
{
  v80 = sub_20C136594();
  v68 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v83 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20C134014();
  v3 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v71 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = &v66 - v6;
  MEMORY[0x28223BE20](v7);
  v81 = &v66 - v8;
  MEMORY[0x28223BE20](v9);
  v75 = &v66 - v10;
  MEMORY[0x28223BE20](v11);
  v82 = &v66 - v12;
  v85 = sub_20C134A74();
  MEMORY[0x28223BE20](v85);
  v76 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v66 - v15;
  MEMORY[0x28223BE20](v16);
  v72 = &v66 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v21);
  v24 = (&v66 - v22);
  v25 = *(a1 + 16);
  v79 = v3;
  v69 = a1;
  v67 = v23;
  if (v25)
  {
    v26 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v27 = *(v23 + 72);
    v28 = (v3 + 32);
    v29 = MEMORY[0x277D84F90];
    v30 = v25;
    v73 = v27;
    v74 = (&v66 - v22);
    do
    {
      sub_20B864C34(v26, v24);
      sub_20B8C6FC8(v24, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *v28;
        v32 = v81;
        v33 = v84;
        (*v28)(v81, v20, v84);
        v34 = v75;
        v31(v75, v32, v33);
        v31(v82, v34, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_20BC06C30(0, *(v29 + 2) + 1, 1, v29);
        }

        v36 = *(v29 + 2);
        v35 = *(v29 + 3);
        v24 = v74;
        if (v36 >= v35 >> 1)
        {
          v29 = sub_20BC06C30((v35 > 1), v36 + 1, 1, v29);
        }

        *(v29 + 2) = v36 + 1;
        v31(&v29[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v36], v82, v84);
        v27 = v73;
      }

      else
      {
        sub_20B864C98(v20);
      }

      v26 += v27;
      --v30;
    }

    while (v30);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v37 = v78;

  v38 = sub_20BBAE8F8(v29);

  *(v37 + 176) = v38;

  v39 = MEMORY[0x277D84F90];
  if (v25)
  {
    v86 = MEMORY[0x277D84F90];
    sub_20BB5D4F4(0, v25, 0);
    v39 = v86;
    v82 = ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v40 = &v82[v69];
    v41 = *(v67 + 72);
    v81 = (v68 + 32);
    v74 = (v68 + 8);
    v75 = (v79 + 16);
    v73 = v79 + 32;
    v43 = v76;
    v42 = v77;
    v44 = v72;
    while (1)
    {
      sub_20B864C34(v40, v42);
      sub_20B864C34(v42, v43);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_20B8C6FC8(v42, v44);
      sub_20B864C98(v43);
LABEL_23:
      v86 = v39;
      v64 = *(v39 + 16);
      v63 = *(v39 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_20BB5D4F4((v63 > 1), v64 + 1, 1);
        v42 = v77;
        v39 = v86;
      }

      *(v39 + 16) = v64 + 1;
      sub_20B8C6FC8(v44, &v82[v39 + v64 * v41]);
      v40 += v41;
      if (!--v25)
      {
        goto LABEL_26;
      }
    }

    v45 = v80;
    v46 = *v81;
    (*v81)(v83, v43, v80);
    v47 = sub_20C136564();
    v49 = v48;
    v50 = *(v78 + 176);
    if (*(v50 + 16))
    {
      v51 = v47;

      v52 = sub_20B65AA60(v51, v49);
      v54 = v53;

      if (v54)
      {
        v55 = v79;
        v56 = *(v50 + 56) + *(v79 + 72) * v52;
        v57 = v71;
        v58 = v84;
        (*(v79 + 16))(v71, v56, v84);
        v59 = v77;
        sub_20B864C98(v77);

        (*v74)(v83, v80);
        v60 = *(v55 + 32);
        v61 = v70;
        v60(v70, v57, v58);
        v44 = v72;
        v62 = v61;
        v42 = v59;
        v60(v72, v62, v58);
LABEL_22:
        swift_storeEnumTagMultiPayload();
        v43 = v76;
        goto LABEL_23;
      }

      v45 = v80;
      v44 = v72;
    }

    else
    {
    }

    v42 = v77;
    sub_20B864C98(v77);
    v46(v44, v83, v45);
    goto LABEL_22;
  }

LABEL_26:
  *(v78 + 168) = v39;

  return result;
}

double sub_20BBA9524(uint64_t a1)
{
  v15 = sub_20C134A74();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v14[1] = v1;
    v18 = MEMORY[0x277D84F90];
    sub_20BB5D4F4(0, v6, 0);
    v7 = v18;
    v17 = sub_20C136594();
    v8 = *(v17 - 8);
    v16 = *(v8 + 16);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v16(v5, v9, v17);
      swift_storeEnumTagMultiPayload();
      v18 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_20BB5D4F4((v11 > 1), v12 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v12 + 1;
      sub_20B8C6FC8(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  sub_20BBA8DF8(v7);

  return result;
}

void sub_20BBA9700(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C134A74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7A8, &qword_20C179FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_20C136594();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 20 * (a1 / 20);
  v15 = v14 + 20;
  if (__OFADD__(v14, 20))
  {
    goto LABEL_29;
  }

  if (*(*(v2 + 168) + 16) - 1 < v15)
  {
    v15 = *(*(v2 + 168) + 16) - 1;
  }

  v39 = v15;
  if (v15 < v14)
  {
    sub_20BBAEDA0();
    v16 = swift_allocError();
    *v17 = 3;
    *(swift_allocObject() + 16) = v16;

    sub_20C137CA4();
    return;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v32 = a2;
  v18 = *(v2 + 168);
  if (v14 >= *(v18 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = (v36 + 32);
  v37 = (v36 + 48);
  v38 = (v36 + 56);
  v20 = *(v6 + 80);
  v21 = *(v6 + 72);
  v22 = ((v20 + 32) & ~v20) + v21 * v14;
  v23 = MEMORY[0x277D84F90];
  v33 = v21;
  v34 = v8;
  v35 = v5;
  while (1)
  {
    sub_20B864C34(v18 + v22, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v38)(v11, 1, 1, v12);
      sub_20B864C98(v8);
    }

    else
    {
      (*v19)(v11, v8, v12);
      (*v38)(v11, 0, 1, v12);
    }

    if ((*v37)(v11, 1, v12) == 1)
    {
      sub_20B520158(v11, &qword_27C76B7A8, &qword_20C179FF0);
    }

    else
    {
      v24 = *v19;
      (*v19)(v40, v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_20BC0662C(0, *(v23 + 2) + 1, 1, v23);
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_20BC0662C((v25 > 1), v26 + 1, 1, v23);
      }

      *(v23 + 2) = v26 + 1;
      v24(&v23[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v26], v40, v12);
      v8 = v34;
      v21 = v33;
    }

    if (v39 == v14)
    {
      break;
    }

    ++v14;
    v18 = *(v2 + 168);
    v22 += v21;
    if (v14 >= *(v18 + 16))
    {
      goto LABEL_27;
    }
  }

  v28 = sub_20B63F2F0(v27, v23);

  if (*(v28 + 16))
  {
    sub_20BBAC9FC(v28, v32);
  }

  else
  {

    sub_20BBAEDA0();
    v29 = swift_allocError();
    *v30 = 1;
    *(swift_allocObject() + 16) = v29;
    sub_20C137CA4();
  }
}

void sub_20BBA9C30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v101 = sub_20C133B74();
  v4 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764340, &unk_20C155E60);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v6;
  MEMORY[0x28223BE20](v7);
  v109 = &v93 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v104 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v117 = *(v12 - 8);
  v118 = v12;
  MEMORY[0x28223BE20](v12);
  v113 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v116 = &v93 - v15;
  MEMORY[0x28223BE20](v16);
  v121 = &v93 - v17;
  v112 = v18;
  MEMORY[0x28223BE20](v19);
  v124 = &v93 - v20;
  v21 = sub_20C137144();
  v114 = *(v21 - 8);
  v115 = v21;
  MEMORY[0x28223BE20](v21);
  v123 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C138204();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v2;

  v28 = sub_20BBADB64(v27, a1);

  v29 = v28 + 56;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v28 + 56);
  v33 = (v30 + 63) >> 6;
  v127 = v24 + 16;
  v128 = v24;
  v126 = (v24 + 8);
  v98 = v4 + 16;
  v100 = v4;
  v97 = v4 + 8;
  v129 = v28;

  v34 = 0;
  v120 = MEMORY[0x277D84F90];
  v125 = v28 + 56;
LABEL_4:
  v35 = v34;
  if (!v32)
  {
    goto LABEL_6;
  }

  do
  {
    v34 = v35;
LABEL_9:
    v36 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    (*(v128 + 16))(v26, *(v129 + 48) + *(v128 + 72) * (v36 | (v34 << 6)), v23);
    v37 = v23;
    v130 = sub_20C1381E4();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320, &unk_20C15A2F0);
    sub_20B6D6ABC(&qword_27C76B790, &qword_27C763320, &unk_20C15A2F0, MEMORY[0x277D83B68]);
    v38 = sub_20C13CBF4();

    if (*(v38 + 16))
    {
      v39 = v100;
      v40 = v99;
      v41 = v101;
      (*(v100 + 16))(v99, v38 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v101);

      v95 = sub_20C133B24();
      v94 = v42;
      v43 = *v126;
      v96 = v37;
      v43(v26, v37);
      (*(v39 + 8))(v40, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_20BC05BA4(0, *(v120 + 2) + 1, 1, v120);
      }

      v29 = v125;
      v45 = *(v120 + 2);
      v44 = *(v120 + 3);
      if (v45 >= v44 >> 1)
      {
        v120 = sub_20BC05BA4((v44 > 1), v45 + 1, 1, v120);
      }

      v46 = v120;
      *(v120 + 2) = v45 + 1;
      v47 = &v46[16 * v45];
      v48 = v94;
      *(v47 + 4) = v95;
      *(v47 + 5) = v48;
      v23 = v96;
      goto LABEL_4;
    }

    (*v126)(v26, v23);
    v35 = v34;
    v29 = v125;
  }

  while (v32);
LABEL_6:
  while (1)
  {
    v34 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v34 >= v33)
    {

      sub_20B527580(v120);

      sub_20C137134();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
      v49 = swift_allocBox();
      v51 = v50;
      v52 = sub_20C134104();
      (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
      v128 = swift_allocObject();
      *(v128 + 16) = 0;
      v53 = v122;
      __swift_project_boxed_opaque_existential_1((v122 + 72), *(v122 + 96));
      v54 = v104;
      sub_20C1398E4();
      v55 = swift_allocObject();
      *(v55 + 16) = sub_20BBAEB80;
      *(v55 + 24) = v49;
      v127 = v49;
      v56 = v105;
      v57 = v103;
      v58 = v106;
      (*(v105 + 16))(v103, v54, v106);
      v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v60 = (v102 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      (*(v56 + 32))(v61 + v59, v57, v58);
      v62 = (v61 + v60);
      *v62 = sub_20B58D058;
      v62[1] = v55;

      sub_20C137C94();
      (*(v56 + 8))(v54, v58);
      __swift_project_boxed_opaque_existential_1((v53 + 32), *(v53 + 56));
      v63 = v109;
      sub_20C139F24();
      v64 = swift_allocObject();
      v65 = v128;
      *(v64 + 16) = sub_20B80E4E0;
      *(v64 + 24) = v65;
      v66 = v110;
      v67 = v108;
      v68 = v111;
      (*(v110 + 16))(v108, v63, v111);
      v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v70 = (v107 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      (*(v66 + 32))(v71 + v69, v67, v68);
      v72 = (v71 + v70);
      *v72 = sub_20BBAEBC4;
      v72[1] = v64;

      v73 = v121;
      sub_20C137C94();
      (*(v66 + 8))(v63, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
      v74 = v117;
      v75 = *(v117 + 72);
      v76 = *(v117 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_20C14F320;
      v78 = v77 + ((v76 + 32) & ~v76);
      v79 = *(v74 + 16);
      v126 = v79;
      v80 = v118;
      (v79)(v78, v124, v118);
      (v79)(v78 + v75, v73, v80);
      v130 = v77;
      sub_20B5E2E18();
      v81 = sub_20C13D374();
      sub_20C13A7C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
      sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798, &unk_20C171400, MEMORY[0x277D83988]);
      v82 = v116;
      sub_20C137C84();

      v83 = swift_allocObject();
      swift_weakInit();
      v84 = swift_allocObject();
      v85 = v128;
      v84[2] = v127;
      v84[3] = v85;
      v84[4] = v129;
      v84[5] = v83;
      v86 = swift_allocObject();
      *(v86 + 16) = sub_20BBAEBF4;
      *(v86 + 24) = v84;
      v87 = v113;
      (v126)(v113, v82, v80);
      v88 = (v76 + 16) & ~v76;
      v89 = (v112 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      (*(v74 + 32))(v90 + v88, v87, v80);
      v91 = (v90 + v89);
      *v91 = sub_20B7F133C;
      v91[1] = v86;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670B8, &qword_20C181BF0);
      sub_20C137C94();
      v92 = *(v74 + 8);
      v92(v82, v80);
      v92(v121, v80);
      v92(v124, v80);
      (*(v114 + 8))(v123, v115);

      return;
    }

    v32 = *(v29 + 8 * v34);
    ++v35;
    if (v32)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_20BBAA9C0(uint64_t a1, uint64_t a2)
{
  v17[2] = a1;
  v3 = sub_20C136594();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v18 = a2;
  v19 = *(a2 + 16);
  v17[1] = v4 + 16;
  v9 = (v4 + 8);
  do
  {
    v11 = v8;
    if (v19 == v8)
    {
      break;
    }

    (*(v4 + 16))(v7, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v3, v5);
    v12 = sub_20C136564();
    v14 = v13;
    if (v12 == sub_20C1381A4() && v14 == v15)
    {

      (*v9)(v7, v3);
      return v19 != v11;
    }

    ++v8;
    v10 = sub_20C13DFF4();

    (*v9)(v7, v3);
  }

  while ((v10 & 1) == 0);
  return v19 != v11;
}

uint64_t sub_20BBAABA0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_20C133B44();
  *a2 = result;
  return result;
}

uint64_t sub_20BBAABCC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = swift_projectBox();
  v7 = sub_20C134104();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  swift_beginAccess();
  return sub_20BBAED30(v5, v6);
}

uint64_t sub_20BBAACFC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[0] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = sub_20C134104();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  swift_beginAccess();
  sub_20B52F9E8(v15, v10, &qword_27C761800, &qword_20C14FDA0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &qword_27C761800, &qword_20C14FDA0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = swift_beginAccess();
    v17 = *(a2 + 16);
    if (v17)
    {
      MEMORY[0x28223BE20](v16);
      v21[-4] = v17;
      v21[-3] = v14;
      v21[-2] = a4;

      sub_20B614A04(sub_20BBAECF0, &v21[-6], a3);
      v19 = v18;

      *(swift_allocObject() + 16) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670B8, &qword_20C181BF0);
      sub_20C137CA4();
      return (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 8))(v14, v11);
  }

  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670B8, &qword_20C181BF0);
  return sub_20C137CA4();
}

void sub_20BBAB01C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v164 = a4;
  v172 = a3;
  v189 = a2;
  v181 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7678C0, &unk_20C171410);
  MEMORY[0x28223BE20](v6 - 8);
  v160 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v158 = &v155 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v10 - 8);
  v157 = &v155 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7A0, &unk_20C171420);
  MEMORY[0x28223BE20](v12 - 8);
  v169 = &v155 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638A8, &qword_20C154980);
  MEMORY[0x28223BE20](v14 - 8);
  v170 = &v155 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v16 - 8);
  v167 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v168 = &v155 - v19;
  v156 = sub_20C134E44();
  MEMORY[0x28223BE20](v156);
  v166 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_20C136154();
  v173 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_20C137C24();
  v186 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v155 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v176 = &v155 - v24;
  MEMORY[0x28223BE20](v25);
  v174 = &v155 - v26;
  MEMORY[0x28223BE20](v27);
  v182 = &v155 - v28;
  v201 = sub_20C1341A4();
  v171 = *(v201 - 1);
  MEMORY[0x28223BE20](v201);
  v190 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v30 - 8);
  v193 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v192 = &v155 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v34 - 8);
  v165 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v163 = &v155 - v37;
  MEMORY[0x28223BE20](v38);
  v175 = &v155 - v39;
  v191 = sub_20C1344C4();
  v185 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v180 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v195 = &v155 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v43 - 8);
  v178 = &v155 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v179 = &v155 - v46;
  v47 = sub_20C133B74();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v155 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v200 = (&v155 - v52);
  v159 = a1;
  v202[0] = sub_20C1381E4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320, &unk_20C15A2F0);
  sub_20B6D6ABC(&qword_27C76B790, &qword_27C763320, &unk_20C15A2F0, MEMORY[0x277D83B68]);
  v53 = sub_20C13CBF4();

  v54 = *(v53 + 16);
  if (!v54)
  {

LABEL_34:
    v114 = 1;
    v115 = v181;
LABEL_35:
    v116 = sub_20C134014();
    (*(*(v116 - 8) + 56))(v115, v114, 1, v116);
    return;
  }

  v55 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v161 = v53;
  v56 = v53 + v55;
  v57 = v200;
  v198 = *(v48 + 16);
  v199 = (v48 + 16);
  (v198)(v200, v56, v47);
  v58 = sub_20C133B24();
  v194 = v59;
  v162 = v48;
  v60 = *(v48 + 8);
  v200 = v47;
  v197 = (v48 + 8);
  v196 = v60;
  v60(v57, v47);
  v61 = *(v189 + 16);
  v62 = v191;
  v63 = v195;
  if (v61)
  {
    v188 = *(v185 + 16);
    v64 = (v185 + 8);
    v65 = v189 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
    v189 = v185 + 16;
    v187 = *(v185 + 72);
    while (1)
    {
      v188(v63, v65, v62);
      if (sub_20C134324() == v58 && v66 == v194)
      {

        goto LABEL_12;
      }

      v67 = sub_20C13DFF4();

      if (v67)
      {
        break;
      }

      v63 = v195;
      v62 = v191;
      (*v64)(v195, v191);
      v65 += v187;
      if (!--v61)
      {
        goto LABEL_8;
      }
    }

    v62 = v191;
LABEL_12:
    v71 = v193;
    v72 = v178;

    v69 = v185;
    v70 = v179;
    (*(v185 + 32))(v179, v195, v62);
    v68 = 0;
  }

  else
  {
LABEL_8:

    v68 = 1;
    v69 = v185;
    v70 = v179;
    v71 = v193;
    v72 = v178;
  }

  v73 = v162;
  (*(v69 + 56))(v70, v68, 1, v62);
  sub_20B52F9E8(v70, v72, &qword_27C766E88, &qword_20C16E290);
  if ((*(v69 + 48))(v72, 1, v62) == 1)
  {
    v74 = &qword_27C766E88;
    v75 = &qword_20C16E290;
    sub_20B520158(v70, &qword_27C766E88, &qword_20C16E290);

    v76 = v72;
LABEL_33:
    sub_20B520158(v76, v74, v75);
    goto LABEL_34;
  }

  (*(v69 + 32))(v180, v72, v62);
  v195 = sub_20C134084();
  v194 = *(v73 + 72);
  v77 = (v171 + 48);
  v189 = v171 + 32;
  v188 = (v171 + 8);
  v78 = 0.0;
  v79 = v192;
  v80 = v200;
  do
  {
    v81 = (v198)(v50, v56, v80);
    MEMORY[0x28223BE20](v81);
    v82 = v207;
    sub_20B6B74A0(sub_20BBAED10, v195, v79);
    v207 = v82;
    sub_20B52F9E8(v79, v71, &qword_27C7627B8, &unk_20C170A90);
    v83 = v201;
    if ((*v77)(v71, 1, v201) == 1)
    {
      sub_20B520158(v79, &qword_27C7627B8, &unk_20C170A90);
      sub_20B520158(v71, &qword_27C7627B8, &unk_20C170A90);
    }

    else
    {
      v84 = v190;
      (*v189)(v190, v71, v83);
      sub_20C134194();
      v86 = v85;
      v87 = v84;
      v79 = v192;
      v71 = v193;
      (*v188)(v87, v83);
      sub_20B520158(v79, &qword_27C7627B8, &unk_20C170A90);
      v78 = v78 + v86;
    }

    v80 = v200;
    v196(v50, v200);
    v56 += v194;
    --v54;
  }

  while (v54);

  v88 = sub_20C134434();
  v89 = v88;
  v90 = (v88 + 56);
  v91 = 1 << *(v88 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & *(v88 + 56);
  v94 = (v91 + 63) >> 6;
  v200 = (v186 + 16);
  v201 = (v186 + 32);
  v198 = (v173 + 8);
  v199 = (v186 + 8);

  v96 = 0;
  v97 = v177;
  v98 = v174;
  v196 = v90;
  v197 = v95;
  if (v93)
  {
    while (1)
    {
      v99 = v96;
LABEL_27:
      v100 = v186;
      v101 = v182;
      (*(v186 + 16))(v182, v89[6] + *(v186 + 72) * (__clz(__rbit64(v93)) | (v99 << 6)), v97);
      v195 = *(v100 + 32);
      (v195)(v98, v101, v97);
      v102 = v183;
      v103 = v97;
      sub_20C137BD4();
      v104 = sub_20C136144();
      v106 = v105;
      LOBYTE(v101) = v107;
      (*v198)(v102, v184);
      v202[0] = v104;
      v202[1] = v106;
      LOBYTE(v101) = v101 & 1;
      v203 = v101;
      v206[0] = 4;
      sub_20BA7E610();
      sub_20BA7E664();
      LOBYTE(v102) = sub_20C133C04();
      sub_20B583F4C(v104, v106, v101);
      if (v102)
      {
        break;
      }

      v93 &= v93 - 1;
      (*v199)(v98, v103);
      v96 = v99;
      v97 = v103;
      v89 = v197;
      v90 = v196;
      if (!v93)
      {
        goto LABEL_24;
      }
    }

    v109 = v175;
    (v195)(v175, v98, v103);
    v108 = 0;
    v97 = v103;
LABEL_31:
    v110 = v186;
    v112 = (v186 + 56);
    v111 = *(v186 + 56);
    v111(v109, v108, 1, v97);

    v113 = v163;
    sub_20B52F9E8(v109, v163, &unk_27C766680, &unk_20C14F920);
    if ((*(v110 + 48))(v113, 1, v97) != 1)
    {
      v197 = v111;
      (*v201)(v176, v113, v97);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_20B51CC64(Strong + 120, v202);

        v201 = v205;
        __swift_project_boxed_opaque_existential_1(v202, v204);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
        v118 = *(sub_20C138094() - 8);
        v119 = (*(v118 + 80) + 32) & ~*(v118 + 80);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_20C14F980;
        *(v120 + v119) = v78;
        swift_storeEnumTagMultiPayload();
        v121 = sub_20C138544();

        v122 = [v121 &off_277D9A178];

        v123 = sub_20C13C954();
        v194 = v124;

        __swift_destroy_boxed_opaque_existential_1(v202);
      }

      else
      {
        v123 = 0;
        v194 = 0;
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        v125 = sub_20BEF6794(v161);

        sub_20B71D860(v125);
      }

      swift_beginAccess();
      v126 = swift_weakLoadStrong();
      v198 = v112;
      if (v126)
      {
        sub_20B51CC64(v126 + 120, v202);

        __swift_project_boxed_opaque_existential_1(v202, v204);
        v127 = sub_20C138544();

        v128 = [v127 string];

        v129 = sub_20C13C954();
        v131 = v130;

        __swift_destroy_boxed_opaque_existential_1(v202);
      }

      else
      {

        v129 = 0;
        v131 = 0;
      }

      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
      v132 = sub_20C138094();
      v133 = *(*(v132 - 8) + 72);
      v195 = *(*(v132 - 8) + 80);
      v134 = (v195 + 32) & ~v195;
      v193 = v134;
      v135 = swift_allocObject();
      v201 = v135;
      *(v135 + 16) = xmmword_20C1517D0;
      v136 = (v135 + v134);
      if (v194)
      {
        v137 = v123;
      }

      else
      {
        v137 = 0;
      }

      if (v194)
      {
        v138 = v194;
      }

      else
      {
        v138 = 0xE000000000000000;
      }

      *v136 = v137;
      v136[1] = v138;
      swift_storeEnumTagMultiPayload();
      *(v136 + v133) = 1;
      v192 = v132;
      swift_storeEnumTagMultiPayload();
      if (v131)
      {
        v139 = v129;
      }

      else
      {
        v139 = 0;
      }

      if (v131)
      {
        v140 = v131;
      }

      else
      {
        v140 = 0xE000000000000000;
      }

      v141 = (v136 + 2 * v133);
      *v141 = v139;
      v141[1] = v140;
      swift_storeEnumTagMultiPayload();
      v142 = v177;
      (*v200)(v155, v176, v177);
      sub_20C138044();
      sub_20C136CA4();
      swift_storeEnumTagMultiPayload();
      v143 = sub_20C132E94();
      v144 = *(*(v143 - 8) + 56);
      v144(v168, 1, 1, v143);
      v145 = sub_20C135434();
      (*(*(v145 - 8) + 56))(v170, 1, 1, v145);
      v144(v167, 1, 1, v143);
      v200 = sub_20C1381A4();
      v194 = v146;
      v147 = sub_20C1335A4();
      (*(*(v147 - 8) + 56))(v169, 1, 1, v147);
      (v197)(v165, 1, 1, v142);
      v148 = sub_20C132C14();
      (*(*(v148 - 8) + 56))(v157, 1, 1, v148);
      v149 = sub_20C1341E4();
      v150 = *(*(v149 - 8) + 56);
      v150(v158, 1, 1, v149);
      v151 = v193;
      v152 = swift_allocObject();
      *(v152 + 16) = xmmword_20C14F980;
      v153 = &v151[v152];
      *v153 = sub_20C1381D4();
      v153[1] = v154;
      swift_storeEnumTagMultiPayload();
      v150(v160, 1, 1, v149);
      v115 = v181;
      sub_20C133F24();
      (*v199)(v176, v177);
      sub_20B520158(v175, &unk_27C766680, &unk_20C14F920);
      (*(v185 + 8))(v180, v191);
      sub_20B520158(v179, &qword_27C766E88, &qword_20C16E290);
      v114 = 0;
      goto LABEL_35;
    }

    v74 = &unk_27C766680;
    v75 = &unk_20C14F920;
    sub_20B520158(v109, &unk_27C766680, &unk_20C14F920);
    (*(v185 + 8))(v180, v191);
    sub_20B520158(v179, &qword_27C766E88, &qword_20C16E290);
    v76 = v113;
    goto LABEL_33;
  }

LABEL_24:
  while (1)
  {
    v99 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      break;
    }

    if (v99 >= v94)
    {

      v108 = 1;
      v109 = v175;
      goto LABEL_31;
    }

    v93 = *(v90 + v99);
    ++v96;
    if (v93)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

BOOL sub_20BBAC96C(uint64_t a1)
{
  sub_20C134194();
  v2 = v1;
  sub_20C134164();
  v4 = v2 - v3;
  sub_20C134194();
  v6 = v5;
  sub_20C134174();
  v8 = v7;
  sub_20C133B54();
  if (v4 > v9)
  {
    return 0;
  }

  sub_20C133B54();
  return v11 <= v6 + v8;
}

uint64_t sub_20BBAC9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358, &qword_20C1713C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v93 - v10;
  v12 = sub_20C13BB84();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v105 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C136594();
  MEMORY[0x28223BE20](v14);
  v109 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v108 = &v93 - v17;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v22 = &v93 - v21;
  v23 = *(a1 + 16);
  if (v23)
  {
    v95 = v8;
    v96 = v11;
    v97 = v2;
    v98 = a1;
    v99 = v6;
    v100 = v5;
    v101 = a2;
    v25 = *(v19 + 16);
    v24 = (v19 + 16);
    v112 = v25;
    v106 = (v24[64] + 32) & ~v24[64];
    v26 = a1 + v106;
    v27 = *(v24 + 7);
    v110 = (v24 - 8);
    v28 = (v24 + 16);
    v107 = MEMORY[0x277D84F90];
    v29 = v24;
    v111 = v27;
    v25(v22, a1 + v106, v14, v20);
    while (1)
    {
      v32 = sub_20C136574();
      v34 = v33;
      v114[0] = v32;
      v114[1] = v33;
      v36 = v35 & 1;
      v115 = v35 & 1;
      v113 = 3;
      sub_20B852060();
      sub_20B8520B4();
      v37 = sub_20C133C04();
      sub_20B583F4C(v32, v34, v36);
      if (v37)
      {
        v38 = *v28;
        (*v28)(v108, v22, v14);
        v39 = v107;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D604(0, *(v39 + 16) + 1, 1);
          v39 = v116;
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_20BB5D604((v41 > 1), v42 + 1, 1);
          v39 = v116;
        }

        *(v39 + 16) = v42 + 1;
        v107 = v39;
        v43 = v39 + v106;
        v31 = v111;
        v38((v43 + v42 * v111), v108, v14);
      }

      else
      {
        (*v110)(v22, v14);
        v31 = v111;
      }

      v26 += v31;
      if (!--v23)
      {
        break;
      }

      v112(v22, v26, v14, v30);
    }

    v44 = v107;
    v45 = *(v107 + 16);
    v46 = MEMORY[0x277D84F90];
    v108 = v29;
    if (v45)
    {
      v114[0] = MEMORY[0x277D84F90];
      sub_20B526D44(0, v45, 0);
      v46 = v114[0];
      v47 = v44 + v106;
      v48 = v45;
      do
      {
        v49 = v109;
        (v112)(v109, v47, v14);
        v50 = sub_20C136564();
        v52 = v51;
        (*v110)(v49, v14);
        v114[0] = v46;
        v54 = *(v46 + 16);
        v53 = *(v46 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_20B526D44((v53 > 1), v54 + 1, 1);
          v46 = v114[0];
        }

        *(v46 + 16) = v54 + 1;
        v55 = v46 + 16 * v54;
        *(v55 + 32) = v50;
        *(v55 + 40) = v52;
        v47 += v111;
        --v48;
      }

      while (v48);
    }

    v56 = v105;
    sub_20C13B534();

    v57 = sub_20C13BB74();
    v58 = sub_20C13D1F4();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v97;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v114[0] = v94;
      *v61 = 136446210;
      v62 = MEMORY[0x20F2F43F0](v46, MEMORY[0x277D837D0]);
      v64 = v63;

      v65 = sub_20B51E694(v62, v64, v114);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_20B517000, v57, v58, "[ShelfLazyLockupFetcher] refreshing lockups with identifiers %{public}s", v61, 0xCu);
      v66 = v94;
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x20F2F6A40](v66, -1, -1);
      MEMORY[0x20F2F6A40](v61, -1, -1);

      (*(v102 + 8))(v105, v103);
    }

    else
    {

      (*(v102 + 8))(v56, v103);
    }

    v71 = *(v60 + 184);

    v72 = v107;

    v74 = sub_20B745ACC(v73, v71);

    *(v60 + 184) = v74;

    v75 = MEMORY[0x277D84F90];
    if (v45)
    {
      v114[0] = MEMORY[0x277D84F90];
      sub_20B526D44(0, v45, 0);
      v75 = v114[0];
      v76 = v72 + v106;
      do
      {
        v77 = v109;
        (v112)(v109, v76, v14);
        v78 = sub_20C136564();
        v80 = v79;
        (*v110)(v77, v14);
        v114[0] = v75;
        v82 = *(v75 + 16);
        v81 = *(v75 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_20B526D44((v81 > 1), v82 + 1, 1);
          v75 = v114[0];
        }

        *(v75 + 16) = v82 + 1;
        v83 = v75 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
        v76 += v111;
        --v45;
      }

      while (v45);
    }

    v84 = v96;
    sub_20BBA9C30(v107, v96);

    v85 = swift_allocObject();
    *(v85 + 2) = v75;
    *(v85 + 3) = v60;
    v86 = v99;
    *(v85 + 4) = v98;
    v87 = v95;
    v88 = v100;
    (*(v86 + 16))(v95, v84, v100);
    v89 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v90 = (v104 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    (*(v86 + 32))(v91 + v89, v87, v88);
    v92 = (v91 + v90);
    *v92 = sub_20BBAE52C;
    v92[1] = v85;

    sub_20C137C94();
    return (*(v86 + 8))(v84, v88);
  }

  else
  {
    v67 = sub_20C133A24();
    sub_20BBAE560();
    v68 = swift_allocError();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D50210], v67);
    *(swift_allocObject() + 16) = v68;

    return sub_20C137CA4();
  }
}

void sub_20BBAD320(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v49 = a3;
  v50 = a5;
  v54 = sub_20C134014();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v48 = v11;
  if (v12)
  {
    v46 = a2;
    v55[0] = MEMORY[0x277D84F90];
    sub_20B526D44(0, v12, 0);
    v13 = v55[0];
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v52 = *(v14 + 56);
    v53 = v15;
    v51 = (v14 - 8);
    do
    {
      v17 = v54;
      v18 = v14;
      (v53)(v10, v16, v54);
      v19 = sub_20C133E44();
      v21 = v20;
      isUniquelyReferenced_nonNull_native = (*v51)(v10, v17);
      v55[0] = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_20B526D44((v22 > 1), v23 + 1, 1);
        v13 = v55[0];
      }

      *(v13 + 16) = v23 + 1;
      v24 = v13 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v16 += v52;
      --v12;
      v14 = v18;
    }

    while (v12);
    a2 = v46;
  }

  v25 = *(a2 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = (a2 + 40);
    v53 = (a2 + 40);
    v54 = MEMORY[0x277D84F90];
    do
    {
      v28 = &v27[16 * v26];
      v29 = v26;
      while (1)
      {
        if (v29 >= v25)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_24;
        }

        v30 = *(v28 - 1);
        v31 = *v28;
        v55[0] = v30;
        v55[1] = v31;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v45 - 2) = v55;

        if ((sub_20B79692C(sub_20B606650, (&v45 - 4), v13) & 1) == 0)
        {
          break;
        }

        ++v29;
        v28 += 16;
        if (v26 == v25)
        {
          goto LABEL_22;
        }
      }

      v32 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_20B526D44(0, *(v32 + 16) + 1, 1);
        v32 = v56;
      }

      v34 = *(v32 + 16);
      v33 = *(v32 + 24);
      if (v34 >= v33 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_20B526D44((v33 > 1), v34 + 1, 1);
        v32 = v56;
      }

      *(v32 + 16) = v34 + 1;
      v54 = v32;
      v35 = v32 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v31;
      v27 = v53;
    }

    while (v26 != v25);
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

LABEL_22:

  v36 = v49;
  v37 = v49[23];

  v36[23] = sub_20B6D38F8(v47, v37);

  v38 = v48;
  v39 = sub_20BBAE8F8(v48);

  v36[22] = v39;

  v40 = v36[21];

  v41 = sub_20B527580(v54);

  v42 = sub_20BD31A38(v41, v40);

  v36[21] = v42;

  v43 = v36[21];

  v44 = sub_20B9B86E0(v38, v43);

  v36[21] = v44;

  _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

void *sub_20BBAD728()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return v0;
}

uint64_t sub_20BBAD780()
{
  sub_20BBAD728();

  return swift_deallocClassInstance();
}

unint64_t *sub_20BBAD7D8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_20BBAD918(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_20BBAD874(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

void sub_20BBAD918(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v27 = a2;
  v28 = a1;
  v35 = sub_20C138204();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v35);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v34 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v31 = v6 + 16;
  v32 = v6;
  v29 = 0;
  v30 = (v6 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v35;
LABEL_11:
    (*(v32 + 16))(v9, *(v34 + 48) + *(v32 + 72) * v19, v20, v7);
    v23 = sub_20BBAA9C0(v9, v33);
    if (v4)
    {
      (*v30)(v9, v20);
      return;
    }

    v24 = v23;
    (*v30)(v9, v20);
    if (v24)
    {
      *(v28 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v26 = v34;

        sub_20BC10E08(v28, v27, v29, v26);
        return;
      }
    }
  }

  v21 = v10;
  v20 = v35;
  while (1)
  {
    v10 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v22 = *(v12 + 8 * v10);
    ++v21;
    if (v22)
    {
      v16 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_20BBADB64(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = sub_20C138204();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v8 = v6 & 0x3F;
  v31 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v31;
  v40 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v7;
    v38 = v4;
    v33 = &v31;
    MEMORY[0x28223BE20](v10);
    v32 = &v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v9);
    v9 = 0;
    v39 = a1;
    v12 = *(a1 + 56);
    a1 += 56;
    v11 = v12;
    v13 = 1 << *(a1 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v4 = v14 & v11;
    v15 = (v13 + 63) >> 6;
    v34 = 0;
    v35 = v5 + 16;
    v36 = (v5 + 8);
    while (v4)
    {
      v16 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_12:
      v19 = v16 | (v9 << 6);
      v20 = *(v39 + 48) + *(v5 + 72) * v19;
      v21 = v5;
      v22 = *(v5 + 16);
      v7 = v37;
      v23 = v38;
      v22(v37, v20, v38);
      v24 = v41;
      v25 = sub_20BBAA9C0(v7, v40);
      v41 = v24;
      if (v24)
      {
        (*v36)(v7, v23);

        swift_willThrow();

        return v4;
      }

      v26 = v25;
      (*v36)(v7, v23);
      v5 = v21;
      if (v26)
      {
        *&v32[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_17:
          v4 = sub_20BC10E08(v32, v31, v34, v39);

          return v4;
        }
      }
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {
        goto LABEL_17;
      }

      v18 = *(a1 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v4 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v40;

  v4 = sub_20BBAD7D8(v29, v31, a1, v30);

  MEMORY[0x20F2F6A40](v29, -1, -1);

  return v4;
}

void sub_20BBADF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v49 - v5;
  v70 = sub_20C134014();
  v6 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20C134A74();
  v8 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58, &unk_20C18A440);
  MEMORY[0x28223BE20](v69);
  v12 = (&v49 - v11);
  v13 = a1;
  v14 = *(a1 + 168);
  v15 = *(v14 + 16);
  v16 = OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_mediaTagStringBuilder;
  v58 = v14;

  v68 = v15;
  if (v15)
  {
    v17 = 0;
    v53 = (a2 + v16);
    v52 = (v6 + 32);
    v51 = (v6 + 16);
    v50 = (v6 + 8);
    v49 = xmmword_20C157520;
    v71 = MEMORY[0x277D84F90];
    v18 = v58;
    v55 = v8;
    v54 = v13;
    v66 = v12;
    while (v17 < *(v18 + 16))
    {
      v19 = v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17;
      v20 = *(v69 + 48);
      *v12 = v17;
      sub_20B864C34(v19, v12 + v20);
      sub_20B864C34(v12 + v20, v10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v56;
        (*v52)(v56, v10, v70);
        v65 = *(v13 + 112);
        v22 = v53[3];
        v23 = v53[4];
        __swift_project_boxed_opaque_existential_1(v53, v22);
        v24 = sub_20C136194();
        v25 = v57;
        (*(*(v24 - 8) + 56))(v57, 1, 1, v24);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v25, v22, v23, v72);
        sub_20B520158(v25, &unk_27C765110, &unk_20C152460);
        v62 = v72[1];
        v63 = v72[0];
        v61 = v72[2];
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
        v64 = swift_allocBox();
        v28 = v27;
        v29 = v26[12];
        v30 = v10;
        v31 = (v27 + v26[16]);
        v32 = v27 + v26[20];
        v33 = v27 + v26[24];
        v59 = v26[28];
        v60 = v26[32];
        v34 = v21;
        v35 = v70;
        (*v51)(v27, v21, v70);
        *(v28 + v29) = v65;
        v18 = v58;
        v36 = v62;
        *v31 = v63;
        v31[1] = v36;
        v31[2] = v61;
        v10 = v30;
        *v32 = v49;
        *(v32 + 24) = 0;
        *(v32 + 32) = 0;
        *(v32 + 16) = 0;
        *(v32 + 40) = 0;
        v8 = v55;
        *v33 = 3;
        *(v33 + 8) = 3;
        *(v28 + v59) = 0;
        v13 = v54;
        v37 = sub_20B6B2348(MEMORY[0x277D84F90]);
        *(v28 + v60) = v37;
        v38 = v64 | 0x4000000000000000;
        (*v50)(v34, v35);
      }

      else
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28, &unk_20C1713B0);
        v40 = swift_allocBox();
        v42 = v41;
        v43 = *(v39 + 48);
        v44 = *(v39 + 64);
        v45 = sub_20C136594();
        (*(*(v45 - 8) + 32))(v42, v10, v45);
        *(v42 + v43) = *(v13 + 112);
        *(v42 + v44) = *(v13 + 16);
        v38 = v40 | 0x4000000000000001;
      }

      v12 = v66;
      sub_20B520158(v66, &qword_27C768E58, &unk_20C18A440);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_20BC05D3C(0, *(v71 + 2) + 1, 1, v71);
      }

      v47 = *(v71 + 2);
      v46 = *(v71 + 3);
      if (v47 >= v46 >> 1)
      {
        v71 = sub_20BC05D3C((v46 > 1), v47 + 1, 1, v71);
      }

      ++v17;
      v48 = v71;
      *(v71 + 2) = v47 + 1;
      *&v48[8 * v47 + 32] = v38;
      if (v68 == v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

unint64_t sub_20BBAE560()
{
  result = qword_27C7622C0;
  if (!qword_27C7622C0)
  {
    sub_20C133A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7622C0);
  }

  return result;
}

void sub_20BBAE5B8(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = sub_20C134014();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928, &unk_20C179FE0);
  MEMORY[0x28223BE20](v8);
  v41 = (v37 - v11);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 48);
    v39 = v5;
    v40 = v13;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v43 = (v42 + 32);
    v37[2] = v42 + 40;
    v38 = v15;
    while (1)
    {
      v44 = v12;
      v17 = v41;
      sub_20B52F9E8(v14, v41, &qword_27C763928, &unk_20C179FE0);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v43;
      v21 = v7;
      (*v43)(v7, v17 + v40, v5);
      v22 = *v45;
      v24 = sub_20B65AA60(v19, v18);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if ((a2 & 1) == 0)
        {
          sub_20BA114B8();
        }
      }

      else
      {
        sub_20BA0C3EC(v27, a2 & 1);
        v29 = sub_20B65AA60(v19, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_17;
        }

        v24 = v29;
      }

      v31 = *v45;
      if (v28)
      {

        v16 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        (*(v42 + 40))(v16, v21, v39);
      }

      else
      {
        v31[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v31[6] + 16 * v24);
        *v32 = v19;
        v32[1] = v18;
        v33 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        v20(v33, v21, v39);
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_16;
        }

        v31[2] = v36;
      }

      v14 += v38;
      a2 = 1;
      v12 = v44 - 1;
      if (v44 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_20C13E054();
    __break(1u);
  }
}

uint64_t sub_20BBAE8F8(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928, &unk_20C179FE0);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = (&v17 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = v1;
    v21 = MEMORY[0x277D84F90];
    sub_20BB5E784(0, v6, 0);
    v7 = v21;
    v19 = sub_20C134014();
    v8 = *(v19 - 8);
    v18 = *(v8 + 16);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v18(v5 + *(v20 + 48), v9, v19);
      *v5 = sub_20C133E44();
      v5[1] = v11;
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20BB5E784((v12 > 1), v13 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v13 + 1;
      sub_20BBAEB10(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      v9 += v10;
      --v6;
    }

    while (v6);
    v1 = v17;
  }

  v14 = *(v1 + 176);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  sub_20BBAE5B8(v7, isUniquelyReferenced_nonNull_native, &v21);

  return v21;
}

uint64_t sub_20BBAEB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928, &unk_20C179FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BBAEC28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BBAED30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BBAEDA0()
{
  result = qword_27C76B7B0;
  if (!qword_27C76B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B7B0);
  }

  return result;
}

unint64_t sub_20BBAEE08()
{
  result = qword_27C76B7B8;
  if (!qword_27C76B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B7B8);
  }

  return result;
}

uint64_t sub_20BBAEE5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  return v1;
}

uint64_t sub_20BBAEED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7E0, &unk_20C171580);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-1] - v8;
  v10 = OBJC_IVAR____TtC9SeymourUI29SessionStreamReadyCoordinator__isStreamReady;
  LOBYTE(v13[0]) = 0;
  sub_20C13C124();
  (*(v7 + 32))(v3 + v10, v9, v6);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v3 + OBJC_IVAR____TtC9SeymourUI29SessionStreamReadyCoordinator_subscriptionToken) = sub_20C13A914();
  swift_getObjectType();
  sub_20C13AC64();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v13);

  return v3;
}

uint64_t sub_20BBAF0BC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_20C13C154();
  }

  return result;
}

uint64_t sub_20BBAF140()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI29SessionStreamReadyCoordinator__isStreamReady;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7E0, &unk_20C171580);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionStreamReadyCoordinator(uint64_t a1)
{
  result = qword_27C76B7C8;
  if (!qword_27C76B7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BBAF254(uint64_t a1)
{
  sub_20BBAF2FC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BBAF2FC()
{
  if (!qword_27C76B7D8)
  {
    v0 = sub_20C13C164();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76B7D8);
    }
  }
}

void sub_20BBAF34C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  *a2 = v3;
}

uint64_t sub_20BBAF3CC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20C13C154();
}

double sub_20BBAF448(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) != a1)
  {
    v4 = v2;
    *(v2 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) = a1;
    v6 = [v2 contentView];
    v7 = [v6 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v8 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x20F2F5430](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v11);

        ++v10;
        if (v12 == i)
        {
          v13 = v24[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v13 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v13;
    v15 = (*((*MEMORY[0x277D85000] & *v4) + 0x70))(v14);
    if (v15)
    {
      sub_20B6FFB30(v24, v15);

      v13 = v28;
    }

    sub_20B8E9218(v13);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, v24);
        v20 = *(v4 + v3);
        v21 = v25;
        v22 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v22 + 16))(v20, a2 & 1, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v19 += 40;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

double sub_20BBAF6B8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) != a1)
  {
    v4 = v2;
    *(v2 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) = a1;
    v6 = [v2 contentView];
    v7 = [v6 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v8 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x20F2F5430](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v11);

        ++v10;
        if (v12 == i)
        {
          v13 = v24[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v13 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v13;
    v15 = (*((*MEMORY[0x277D85000] & *v4) + 0x70))(v14);
    if (v15)
    {
      sub_20B6FFB30(v24, v15);

      v13 = v28;
    }

    sub_20B8E9218(v13);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, v24);
        v20 = *(v4 + v3);
        v21 = v25;
        v22 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v22 + 24))(v20, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v19 += 40;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

void sub_20BBAFB5C(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_20B51C88C(0, &qword_27C764588, 0x277D758B8);
  sub_20B9E0F28();
  v8 = sub_20C13CF74();
  v9 = a4;
  v11 = a1;
  if (sub_20B9E0E84(v8))
  {

    (*((*MEMORY[0x277D85000] & *v11) + 0x78))(*(v11 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) & 0xFFFFFFFFFFFFFFFELL, 1);
  }

  else
  {
    v10 = sub_20C13CF64();

    v12.receiver = v11;
    v12.super_class = type metadata accessor for TVFocusableCollectionViewCell();
    objc_msgSendSuper2(&v12, *a5, v10, v9);
  }
}

void sub_20BBAFCC8(void *a1, void *a2)
{
  v3 = v2;
  v5 = [a1 nextFocusedView];
  if (v5)
  {
    v6 = v5;
    sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
    if ((sub_20C13D5F4() & 1) != 0 || [v6 isDescendantOfView_])
    {
      v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) | 8;
    }

    else
    {
      v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) & 0xFFFFFFFFFFFFFFF6;
    }

    (*((*MEMORY[0x277D85000] & *v2) + 0x80))(v7, a2);
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v11[4] = sub_20B816234;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_20B7B548C;
    v11[3] = &block_descriptor_94;
    v9 = _Block_copy(v11);
    v10 = v3;

    [a2 addCoordinatedAnimations:v9 completion:0];
    _Block_release(v9);
  }
}

id sub_20BBB00B0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TVFocusableCollectionViewCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20BBB01B0(uint64_t a1, void *a2, void *a3, id *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  sub_20C13DD64();
  v36 = a1 + 32;
  v35 = objc_opt_self();
  v34 = objc_opt_self();
  v32 = objc_opt_self();
  v33 = v4;
  v8 = 0;
  v37 = a2;
  while (1)
  {
    v11 = *(v36 + 8 * v8);
    [a2 spacing];
    if (__OFSUB__(v11, 1))
    {
      break;
    }

    v13 = v12 * (v11 - 1);
    v14 = [a3 heightDimension];
    [v14 dimension];
    v16 = v15;

    v17 = [v35 estimatedDimension_];
    v18 = [a3 widthDimension];
    v38 = v17;
    v19 = [v34 sizeWithWidthDimension:v18 heightDimension:v17];

    if (!*a4)
    {
      goto LABEL_9;
    }

    v20 = *a4;
    v21 = [v19 heightDimension];
    [v21 dimension];
    v23 = v22;

    v24 = [v20 heightDimension];
    [v24 dimension];
    v26 = v25;

    if (v26 < v23)
    {
      v27 = *a4;
      *a4 = v19;
      v28 = v19;

      a2 = v37;
      goto LABEL_10;
    }

    a2 = v37;
    if (!*a4)
    {
LABEL_9:
      *a4 = v19;
      v29 = v19;
    }

LABEL_10:
    if (v11 < 0)
    {
      goto LABEL_17;
    }

    if (v11)
    {
      sub_20C13DD64();
      v30 = objc_opt_self();
      do
      {
        v31 = [v30 itemWithLayoutSize_];
        sub_20C13DD34();
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
        --v11;
      }

      while (v11);
      a2 = v37;
    }

    ++v8;
    sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
    v9 = sub_20C13CC54();

    v10 = [v32 verticalGroupWithLayoutSize:v19 subitems:v9];

    [v10 setInterItemSpacing_];
    sub_20C13DD34();
    sub_20C13DD74();
    sub_20C13DD84();
    sub_20C13DD44();
    if (v8 == v33)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

id sub_20BBB055C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 1.0 / a1;
  v6 = objc_opt_self();
  v7 = [v6 fractionalWidthDimension_];
  v8 = [a3 heightDimension];
  v9 = objc_opt_self();
  v10 = [v9 sizeWithWidthDimension:v7 heightDimension:v8];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  v12 = [v6 fractionalWidthDimension_];
  v13 = [a3 heightDimension];
  v14 = [v9 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() horizontalGroupWithLayoutSize:v14 repeatingSubitem:v11 count:a1];
  [v15 setInterItemSpacing_];

  return v15;
}

id sub_20BBB0714(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  v7 = [v6 fractionalWidthDimension_];
  v8 = [v6 fractionalHeightDimension_];
  v9 = objc_opt_self();
  v10 = [v9 sizeWithWidthDimension:v7 heightDimension:v8];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  [objc_msgSend(a1 container)];
  v13 = v12;
  swift_unknownObjectRelease();
  v14 = [v6 fractionalWidthDimension_];
  v15 = [v6 absoluteDimension_];
  v16 = [v9 sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F580;
  *(v18 + 32) = v11;
  sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
  v19 = v11;
  v20 = sub_20C13CC54();

  v21 = [v17 horizontalGroupWithLayoutSize:v16 subitems:v20];

  return v21;
}

void sub_20BBB0968(uint64_t a1, id a2, void *a3)
{
  [a2 spacing];
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6 * (a1 - 1);
  v8 = [a3 heightDimension];
  [v8 dimension];
  v10 = v9;

  v11 = [objc_opt_self() estimatedDimension_];
  v12 = [a3 widthDimension];
  v13 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v11];

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (a1)
  {
    sub_20C13DD64();
    v14 = objc_opt_self();
    do
    {
      v15 = [v14 itemWithLayoutSize_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      --a1;
    }

    while (a1);
  }

  v16 = objc_opt_self();
  sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
  v17 = sub_20C13CC54();

  v18 = [v16 verticalGroupWithLayoutSize:v13 subitems:v17];

  [v18 setInterItemSpacing_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20C14F580;
  *(v19 + 32) = v18;
  v20 = v18;
  v21 = sub_20C13CC54();

  [v16 horizontalGroupWithLayoutSize:v13 subitems:v21];
}

id sub_20BBB0C34(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v158 = a3;
  v159 = a2;
  v8 = sub_20C13BFF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13C044();
  v157 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LayoutListConfiguration(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LayoutSectionType(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BA93C4C(a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v57 = *v20;
        v18 = *(v20 + 1);
        v58 = *(v20 + 2);
        v59 = *(v20 + 72);
        v163 = *(v20 + 56);
        v164 = v59;
        v165 = *(v20 + 88);
        v166 = *(v20 + 13);
        v60 = *(v20 + 40);
        v161 = *(v20 + 24);
        v162 = v60;
        if (*(&v59 + 1))
        {
          v160 = 0;
          v30 = v58;
          v61 = v159;
          sub_20BBB01B0(v57, v30, v61, &v160);
          v63 = v62;

          if (v160)
          {
            v12 = v160;
            [v18 spacing];
            v65 = v64;
            v66 = *(v57 + 16);

            v67 = v65 * (v66 - 1);
            v68 = [v12 widthDimension];
            [v68 dimension];
            v70 = v69;

            v71 = [objc_opt_self() estimatedDimension_];
            v72 = [v12 heightDimension];
            v32 = [objc_opt_self() sizeWithWidthDimension:v71 heightDimension:v72];

            if (!(v63 >> 62))
            {

              sub_20C13E004();
              sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
LABEL_30:

              v73 = objc_opt_self();
              sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
              v74 = sub_20C13CC54();

              v75 = [v73 horizontalGroupWithLayoutSize:v32 subitems:v74];

              [v75 setInterItemSpacing_];
              v46 = [objc_opt_self() sectionWithGroup_];
              sub_20BD4E394(&v161);

              sub_20BA93CB0(&v161);
              return v46;
            }

LABEL_53:
            sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);

            sub_20C13DE34();

            goto LABEL_30;
          }
        }

        goto LABEL_54;
      }

      v37 = *v20;
      v38 = *(v20 + 1);
      v39 = *(v20 + 4);
      v163 = *(v20 + 3);
      v164 = v39;
      v165 = *(v20 + 5);
      v166 = *(v20 + 12);
      v40 = *(v20 + 2);
      v161 = *(v20 + 1);
      v162 = v40;
      v41 = sub_20BBB055C(v37, v38, v159);
      v42 = [objc_opt_self() sectionWithGroup_];
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v76 = *v20;
      v12 = *(v20 + 1);
      v77 = *(v20 + 3);
      v156 = *(v20 + 2);
      v157 = v77;
      v158 = v76;
      v78 = *(v20 + 5);
      v163 = *(v20 + 4);
      v164 = v78;
      v165 = *(v20 + 6);
      v166 = *(v20 + 14);
      v79 = *(v20 + 3);
      v161 = *(v20 + 2);
      v162 = v79;
      v80 = objc_opt_self();
      v81 = [v80 fractionalWidthDimension_];
      v82 = &off_277D9A000;
      v83 = [v159 heightDimension];
      v159 = objc_opt_self();
      v84 = [v159 sizeWithWidthDimension:v81 heightDimension:v83];

      v85 = v12 & ~(v12 >> 63);
      v160 = MEMORY[0x277D84F90];
      sub_20C13DD64();
      if (v12 < 1)
      {
        v30 = 0;
LABEL_43:
        v109 = 1.0 / v158;
        v110 = v12 - v30;
        if (v12 > v30)
        {
          do
          {
            v111 = [objc_opt_self() itemWithLayoutSize_];
            sub_20C13DD34();
            sub_20C13DD74();
            sub_20C13DD84();
            sub_20C13DD44();
            --v110;
          }

          while (v110);
        }

        v112 = [v84 v82[229]];
        [v112 dimension];
        v114 = v113;

        v115 = v114 * v12;
        v116 = [v80 fractionalWidthDimension_];
        v117 = [v80 estimatedDimension_];
        v118 = v159;
        v119 = [v159 sizeWithWidthDimension:v116 heightDimension:v117];

        v120 = objc_opt_self();
        sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
        v121 = sub_20C13CC54();

        v122 = [v120 verticalGroupWithLayoutSize:v119 subitems:v121];

        v123 = v157;
        [v122 setInterItemSpacing_];
        v124 = [v80 fractionalWidthDimension_];
        v125 = [v80 estimatedDimension_];
        v126 = [v118 sizeWithWidthDimension:v124 heightDimension:v125];

        v127 = [v120 horizontalGroupWithLayoutSize:v126 repeatingSubitem:v122 count:v158];
        v128 = v156;
        [v127 setInterItemSpacing_];

        v46 = [objc_opt_self() sectionWithGroup_];
        sub_20BD4E394(&v161);

        sub_20BA93CB0(&v161);
        return v46;
      }

      v155 = v80;
      v86 = objc_opt_self();
      v87 = v85 - 1;
      if (v85 < v85 - 1)
      {
        v87 = v12 & ~(v12 >> 63);
      }

      v30 = v87 + 1;
      v32 = v12;
      while (v85)
      {
        v88 = [v86 itemWithLayoutSize_];
        sub_20C13DD34();
        v18 = v160[2];
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
        --v85;
        if (!--v12)
        {
          v12 = v32;
          v80 = v155;
          v82 = &off_277D9A000;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v43 = *(v20 + 3);
    v163 = *(v20 + 2);
    v164 = v43;
    v165 = *(v20 + 4);
    v166 = *(v20 + 10);
    v44 = *(v20 + 1);
    v161 = *v20;
    v162 = v44;
    v45 = sub_20BBB0714(v158, a4, a5);
    v46 = [objc_opt_self() sectionWithGroup_];
    sub_20BD4E394(&v161);

LABEL_41:
    sub_20BA93CB0(&v161);
    return v46;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v47 = *v20;
      v38 = *(v20 + 1);
      v48 = *(v20 + 4);
      v163 = *(v20 + 3);
      v164 = v48;
      v165 = *(v20 + 5);
      v166 = *(v20 + 12);
      v49 = *(v20 + 2);
      v161 = *(v20 + 1);
      v162 = v49;
      if (!*(&v48 + 1))
      {
        goto LABEL_54;
      }

      sub_20BBB0968(v47, v38, v159);
      v41 = v50;
      v42 = [objc_opt_self() sectionWithGroup_];
LABEL_24:
      v46 = v42;
      sub_20BD4E394(&v161);

      sub_20BA93CB0(&v161);
      return v46;
    }

    v99 = *(v20 + 3);
    v163 = *(v20 + 2);
    v164 = v99;
    v165 = *(v20 + 4);
    v166 = *(v20 + 10);
    v100 = *(v20 + 1);
    v161 = *v20;
    v162 = v100;
    if (!*(&v99 + 1))
    {
      goto LABEL_54;
    }

    v101 = objc_opt_self();
    v102 = v159;
    v103 = [v101 itemWithLayoutSize_];
    v104 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_20C14F580;
    *(v105 + 32) = v103;
    sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
    v106 = v103;
    v107 = sub_20C13CC54();

    v108 = [v104 horizontalGroupWithLayoutSize:v102 subitems:v107];

    v46 = [objc_opt_self() sectionWithGroup_];
    sub_20BD4E394(&v161);

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8, &qword_20C169F78);
    v52 = *&v20[*(v51 + 48)];
    v53 = &v20[*(v51 + 80)];
    v166 = *(v53 + 10);
    v54 = *(v53 + 4);
    v164 = *(v53 + 3);
    v165 = v54;
    v55 = *(v53 + 2);
    v162 = *(v53 + 1);
    v163 = v55;
    v161 = *v53;
    sub_20BA93D04(v20, v17);
    (*(v9 + 16))(v11, v17, v8);
    sub_20C13C004();
    v56 = v52;
    sub_20C13C014();
    sub_20B584050(*&v17[*(v15 + 20)], *&v17[*(v15 + 20) + 8]);
    sub_20C13C034();
    sub_20C13C024();
    sub_20B584050(*&v17[*(v15 + 24)], *&v17[*(v15 + 24) + 8]);
    sub_20C13BFE4();
    sub_20B51C88C(0, &qword_27C76B7F0, 0x277CFB868);
    v46 = sub_20C13D474();
    [v46 contentInsets];
    [v46 setContentInsets_];
    (*(v157 + 8))(v14, v12);
    sub_20BD4E394(&v161);
    sub_20BA93CB0(&v161);

    sub_20BBB1FB0(v17);
    return v46;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v89 = objc_opt_self();
    v90 = v159;
    v91 = [v89 itemWithLayoutSize_];
    v92 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_20C14F580;
    *(v93 + 32) = v91;
    sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
    v94 = v91;
    v95 = sub_20C13CC54();

    v96 = [v92 horizontalGroupWithLayoutSize:v90 subitems:v95];

    v97 = [objc_opt_self() sectionWithGroup_];
    return v97;
  }

  v22 = *(v20 + 1);
  v157 = *v20;
  v23 = *(v20 + 2);
  v24 = *(v20 + 3);
  v25 = *(v20 + 4);
  v26 = *(v20 + 88);
  v163 = *(v20 + 72);
  v164 = v26;
  v165 = *(v20 + 104);
  v166 = *(v20 + 15);
  v27 = *(v20 + 56);
  v161 = *(v20 + 40);
  v162 = v27;
  if (*(&v26 + 1))
  {
    v155 = v24;
    v156 = v25;
    v28 = *&v162;
    v29 = *&v163;
    if (v23 >= v22)
    {
      v30 = v22;
    }

    else
    {
      v30 = v23;
    }

    v154 = objc_opt_self();
    v18 = [v154 fractionalWidthDimension_];
    v31 = [v159 heightDimension];
    v159 = objc_opt_self();
    v32 = [v159 sizeWithWidthDimension:v18 heightDimension:v31];

    v33 = v30 & ~(v30 >> 63);
    v160 = MEMORY[0x277D84F90];
    sub_20C13DD64();
    if (v30 < 1)
    {
      v36 = 0;
LABEL_47:
      v129 = 1.0 / v157;
      v130 = v30 - v36;
      if (v30 > v36)
      {
        do
        {
          v131 = [objc_opt_self() itemWithLayoutSize_];
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          --v130;
        }

        while (v130);
      }

      v132 = [v32 heightDimension];
      [v132 dimension];
      v134 = v133;

      v135 = v134 * v30;
      v136 = v154;
      v137 = [v154 fractionalWidthDimension_];
      v138 = [v136 estimatedDimension_];
      v139 = v159;
      v140 = [v159 sizeWithWidthDimension:v137 heightDimension:v138];

      v141 = objc_opt_self();
      sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
      v142 = sub_20C13CC54();

      v143 = [v141 verticalGroupWithLayoutSize:v140 subitems:v142];

      v144 = v156;
      [v143 setInterItemSpacing_];
      [objc_msgSend(v158 container)];
      v146 = v145;
      swift_unknownObjectRelease();
      v147 = [v136 absoluteDimension_];
      v148 = [v136 estimatedDimension_];
      v149 = [v139 sizeWithWidthDimension:v147 heightDimension:v148];

      v150 = [v141 horizontalGroupWithLayoutSize:v149 repeatingSubitem:v143 count:v157];
      v151 = v155;
      [v150 setInterItemSpacing_];

      v46 = [objc_opt_self() sectionWithGroup_];
      sub_20BD4E394(&v161);

      sub_20BA93CB0(&v161);
      return v46;
    }

    v34 = objc_opt_self();
    v35 = v33 - 1;
    if (v33 < v33 - 1)
    {
      v35 = v30 & ~(v30 >> 63);
    }

    v36 = v35 + 1;
    v153 = v30;
    while (v33)
    {
      v18 = [v34 itemWithLayoutSize_];
      sub_20C13DD34();
      v12 = v160[2];
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      --v33;
      if (!--v30)
      {
        v30 = v153;
        goto LABEL_47;
      }
    }

    goto LABEL_52;
  }

LABEL_54:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BBB1FB0(uint64_t a1)
{
  v2 = type metadata accessor for LayoutListConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SessionEndReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionEndReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20BBB215C(char a1)
{
  result = 0x6F69737365536E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x697461746964656DLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x6B63616279616C70;
      break;
    case 8:
      result = 0x6973736553657270;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x7571655269726973;
      break;
    case 12:
      result = 0x4574756F6B726F77;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_20BBB2324(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_20BBB215C(*a1);
  v5 = v4;
  if (v3 == sub_20BBB215C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  return v8 & 1;
}

uint64_t sub_20BBB23AC()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20BBB215C(v1);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20BBB2410(uint64_t a1)
{
  sub_20BBB215C(*v1);
  sub_20C13CA64();

  return result;
}

uint64_t sub_20BBB2464(uint64_t a1)
{
  v2 = *v1;
  sub_20C13E164();
  sub_20BBB215C(v2);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

unint64_t sub_20BBB24C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20BBB2578(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_20BBB24F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20BBB215C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_20BBB2524()
{
  result = qword_27C76B7F8;
  if (!qword_27C76B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B7F8);
  }

  return result;
}

unint64_t sub_20BBB2578(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20BBB25D8()
{
  result = qword_27C76B800;
  if (!qword_27C76B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B800);
  }

  return result;
}

uint64_t UpNextQueueMenuOption.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x62694C6F54646461;
  }

  if (a1 == 1)
  {
    return 0x7261656C63;
  }

  return 1953064037;
}

uint64_t sub_20BBB2690(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7261656C63;
  if (v2 != 1)
  {
    v4 = 1953064037;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x62694C6F54646461;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000079726172;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7261656C63;
  if (*a2 != 1)
  {
    v8 = 1953064037;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x62694C6F54646461;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000079726172;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C13DFF4();
  }

  return v11 & 1;
}

unint64_t sub_20BBB2780@<X0>(Swift::String *a1@<X0>, SeymourUI::UpNextQueueMenuOption_optional *a2@<X8>)
{
  result = _s9SeymourUI21UpNextQueueMenuOptionO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_20BBB27B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079726172;
  v4 = 0xE500000000000000;
  v5 = 0x7261656C63;
  if (v2 != 1)
  {
    v5 = 1953064037;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x62694C6F54646461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20BBB281C()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20BBB28BC(uint64_t a1)
{
  sub_20C13CA64();

  return result;
}

uint64_t sub_20BBB2948(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

unint64_t _s9SeymourUI21UpNextQueueMenuOptionO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20BBB2A34()
{
  result = qword_27C76B808;
  if (!qword_27C76B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76B810, &qword_20C171780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B808);
  }

  return result;
}

unint64_t sub_20BBB2A9C()
{
  result = qword_27C76B818;
  if (!qword_27C76B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B818);
  }

  return result;
}

uint64_t sub_20BBB2B00()
{
  v1 = sub_20C133954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B858, &unk_20C171950);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v7, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    v12 = &unk_27C76A970;
    v13 = &qword_20C14FC10;
    v14 = v7;
LABEL_5:
    sub_20B520158(v14, v12, v13);
    return 0;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_20B520158(v7, &unk_27C76A970, &qword_20C14FC10);
  v15 = sub_20C1338A4();
  (*(v2 + 8))(v4, v1);
  v20 = v15;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B860, &unk_20C171980);
  sub_20BBB43B4();
  sub_20BBB448C(&qword_27C763E98, MEMORY[0x277D51640], MEMORY[0x277D51650]);
  sub_20C13CBC4();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDB0, &qword_20C155550);
  if ((*(*(v16 - 8) + 48))(v10, 1, v16) == 1)
  {
    v12 = &qword_27C76B858;
    v13 = &unk_20C171950;
    v14 = v10;
    goto LABEL_5;
  }

  v18 = sub_20C135204();
  v19 = sub_20C135214();
  (*(*(v19 - 8) + 8))(v10, v19);
  result = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  return result;
}

double sub_20BBB2E84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C135814();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = *(v3 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlanStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_20C14F320;
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  *(v14 + 56) = MEMORY[0x277D83B88];
  *(v14 + 64) = v17;
  if (a1 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a1;
  }

  *(v14 + 32) = v18;
  *(v14 + 96) = v16;
  *(v14 + 104) = v17;
  *(v14 + 72) = a2;
  v19 = v13[9];
  v20 = v13[10];
  __swift_project_boxed_opaque_existential_1(v13 + 6, v19);
  v29 = sub_20B5E10B0(0x5F544E4552525543, 0xEC0000004B454557, v15, v19, v20);
  v22 = v21;

  v23 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlanTemplate;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v23, v12, &unk_27C762300, &unk_20C151350);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_20B520158(v12, &unk_27C762300, &unk_20C151350);
    v24 = sub_20BD3F6C8();
    v26 = v25;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_20B520158(v12, &unk_27C762300, &unk_20C151350);
    v24 = sub_20C1357F4();
    v26 = v27;
    (*(v7 + 8))(v9, v6);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BC67560(v29, v22);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BC6756C(v24, v26);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_20BBB31D0(int a1)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B858, &unk_20C171950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v37 = sub_20C135214();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_20C133954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v16, v11, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &unk_27C76A970, &qword_20C14FC10);
    return;
  }

  v35 = v1;
  (*(v13 + 32))(v15, v11, v12);
  v40 = sub_20C1338A4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B860, &unk_20C171980);
  sub_20BBB43B4();
  sub_20BBB448C(&qword_27C763E98, MEMORY[0x277D51640], MEMORY[0x277D51650]);
  sub_20C13CBC4();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDB0, &qword_20C155550);
  if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
  {
    sub_20B520158(v4, &qword_27C76B858, &unk_20C171950);
    (*(v13 + 8))(v15, v12);
    return;
  }

  v33 = v12;
  v34 = v15;

  v18 = *(v39 + 32);
  v19 = v37;
  v18(v6, v4, v37);
  v18(v38, v6, v19);
  v20 = sub_20C135204();
  if (v20 < 0)
  {
    goto LABEL_19;
  }

  MEMORY[0x28223BE20](v20);
  v22 = v34;
  v21 = v35;
  *(&v31 - 2) = v35;
  *(&v31 - 1) = v22;
  sub_20B5E6BB8(sub_20BBB4418, (&v31 - 4), 0, v23);
  *(v21 + 32) = v24;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v26 = *(Strong + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_shelves);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = v26 + 32;
      while (v28 < *(v26 + 16))
      {
        swift_unknownObjectRetain();
        v30 = sub_20C132EC4();
        swift_unknownObjectRelease();
        if (v30)
        {
          sub_20BBB3BD4(v21, v28, v36 & 1, v32);
          swift_unknownObjectRelease();
          (*(v39 + 8))(v38, v37);
          goto LABEL_15;
        }

        ++v28;
        v29 += 16;
        if (v27 == v28)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

LABEL_12:
    (*(v39 + 8))(v38, v37);
    swift_unknownObjectRelease();
LABEL_15:
    v22 = v34;
  }

  else
  {
    (*(v39 + 8))(v38, v19);
  }

  (*(v13 + 8))(v22, v33);
}

uint64_t sub_20BBB3760@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0, &unk_20C1719B0) + 64);
  *a4 = *(a2 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_completedReferencesMetrics);

  sub_20C1351F4();
  v8 = sub_20C133954();
  return (*(*(v8 - 8) + 16))(&a4[v7], a3, v8);
}

uint64_t sub_20BBB3828()
{
  sub_20B583E6C(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  v1 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlanClient));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlan, &unk_27C76A970, &qword_20C14FC10);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlanTemplate, &unk_27C762300, &unk_20C151350);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_20BBB3940()
{
  sub_20BBB3828();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanScheduleShelfX(uint64_t a1)
{
  result = qword_27C76B848;
  if (!qword_27C76B848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BBB39EC(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20BBB3B80(319, &qword_27C7629F8, MEMORY[0x277D50180]);
    if (v2 <= 0x3F)
    {
      sub_20BBB3B80(319, &qword_27C766B58, MEMORY[0x277D51CF0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BBB3B80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BBB3BD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v48 = a4;
  v49 = a3;
  v51 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B870, &qword_20C171990);
  MEMORY[0x28223BE20](v55);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v54 = &v44 - v8;
  v9 = type metadata accessor for ShelfDiffableItemIdentifierX(0);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B878, &qword_20C171998);
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  sub_20BBB4438();
  sub_20BBB448C(&qword_27C76B888, type metadata accessor for ShelfDiffableItemIdentifierX, &unk_20C187618);
  v53 = v9;
  sub_20C13BE84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B890, &unk_20C1719A0);
  v15 = swift_allocObject();
  v56 = xmmword_20C14F980;
  *(v15 + 16) = xmmword_20C14F980;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650, &unk_20C168BB0);
  v16 = sub_20C132EE4();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v56;
  v20 = v19 + v18;
  v21 = v51;
  v22 = v16;
  v23 = v14;
  (*(v17 + 16))(v20, v51 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_identifier, v22);
  *&v56 = a2;
  *(v15 + 32) = a2;
  *(v15 + 40) = v19;
  sub_20C13BE24();

  v24 = *(v21 + 32);
  if (v24 && (v25 = *(v24 + 16)) != 0)
  {
    v45 = v23;
    v46 = v12;
    v57 = MEMORY[0x277D84F90];

    sub_20BB5E538(0, v25, 0);
    v26 = v57;
    v51 = *(v24 + 16);
    v27 = type metadata accessor for ShelfItemX(0);
    v28 = 0;
    v30 = *(v27 - 8);
    result = v27 - 8;
    v50 = v30;
    v31 = v24 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    while (v51 != v28)
    {
      if (v28 >= *(v24 + 16))
      {
        goto LABEL_16;
      }

      v32 = v24;
      v33 = v25;
      v35 = v54;
      v34 = v55;
      v36 = *(v55 + 48);
      sub_20B8D1410(v31 + *(v50 + 72) * v28, &v54[v36]);
      *v6 = v28;
      v37 = *(v34 + 48);
      sub_20BBB44D4(&v35[v36], v6 + v37, type metadata accessor for ShelfItemX);
      MEMORY[0x20F2EA980](v28, v56);
      sub_20B8D1410(v6 + v37, &v11[*(v53 + 20)]);
      sub_20B520158(v6, &qword_27C76B870, &qword_20C171990);
      v57 = v26;
      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_20BB5E538((v38 > 1), v39 + 1, 1);
        v26 = v57;
      }

      ++v28;
      *(v26 + 16) = v39 + 1;
      result = sub_20BBB44D4(v11, v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v39, type metadata accessor for ShelfDiffableItemIdentifierX);
      v25 = v33;
      v40 = v33 == v28;
      v24 = v32;
      if (v40)
      {

        v41 = v48;
        v23 = v45;
        v12 = v46;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    v41 = v48;
LABEL_12:
    v57 = 0;
    v58 = 0;
    sub_20C13BE04();

    v42 = *(v41 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_dataSource);
    if (v42)
    {
      v43 = v42;
      sub_20C13BF74();
    }

    return (*(v47 + 8))(v23, v12);
  }

  return result;
}

uint64_t sub_20BBB4158()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  sub_20C132ED4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_completedReferencesMetrics) = MEMORY[0x277D84FA0];
  v2 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlan;
  v3 = sub_20C133954();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlanTemplate;
  v5 = sub_20C135814();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB0, &unk_20C171940);
  sub_20C133AA4();
  sub_20B51C710(v9, v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v6 = *(&v9[0] + 1);
  v7 = (v1 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_eventHub);
  *v7 = *&v9[0];
  v7[1] = v6;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v9, v1 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20B51C710(v9, v1 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlanStringBuilder) = *&v9[0];
  return v1;
}

unint64_t sub_20BBB43B4()
{
  result = qword_27C76B868;
  if (!qword_27C76B868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76B860, &unk_20C171980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B868);
  }

  return result;
}

unint64_t sub_20BBB4438()
{
  result = qword_27C76B880;
  if (!qword_27C76B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B880);
  }

  return result;
}

uint64_t sub_20BBB448C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BBB44D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BBB4548(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = a7;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 56) = v14;
  *(v15 + 64) = a3;
  *(v15 + 72) = a4;
  v16 = a4;
  v17 = a1;

  return sub_20C137C94();
}

id sub_20BBB4644(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v96 = a8;
  v94 = a7;
  v101 = a6;
  v103 = a5;
  v14 = type metadata accessor for PageMetricAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = objc_opt_self();

  v22 = [v21 alertControllerWithTitle:0 message:0 preferredStyle:0];
  v93 = a3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_platform];
  v23 = sub_20C138104();
  if (v23 != sub_20C138104())
  {
    result = [v22 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v25 setTintColor_];
  }

  v89 = v17;
  v90 = v14;
  v102 = a3;
  v91 = v19;
  v92 = v16;
  v27 = *(a4 + 16);
  if (v27)
  {
    v100 = objc_opt_self();
    v28 = (a4 + 32);
    swift_beginAccess();
    v95 = a10 + 16;
    v98 = 0x800000020C1953D0;
    v99 = 0x800000020C1953B0;
    v97 = &v106;
    do
    {
      v30 = v22;
      v32 = *v28++;
      v31 = v32;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        aBlock = Strong;
        v34 = Strong;
        v35 = (*(a10 + 16))(v96, a10);

        __swift_project_boxed_opaque_existential_1((v35 + 32), *(v35 + 56));
        sub_20C138D34();
      }

      else
      {
        type metadata accessor for SeymourLocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v37 = [objc_opt_self() bundleForClass_];
        sub_20C132964();
      }

      v38 = swift_allocObject();
      *(v38 + 16) = v31;
      v39 = v102;
      *(v38 + 24) = v102;
      *(v38 + 32) = sub_20B7E9034;
      *(v38 + 40) = v20;
      v40 = v39;

      v41 = sub_20C13C914();

      v108 = sub_20BBB59B4;
      v109 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v105 = 1107296256;
      v106 = sub_20B762A80;
      v107 = &block_descriptor_95;
      v42 = _Block_copy(&aBlock);

      v43 = [v100 actionWithTitle:v41 style:0 handler:v42];
      _Block_release(v42);

      v44 = sub_20C134744();
      v46 = v45;
      if (v44 == sub_20C134744() && v46 == v47)
      {
        v29 = 1;
      }

      else
      {
        v29 = sub_20C13DFF4();
      }

      [v43 setSmu:v29 & 1 checked:?];
      v22 = v30;
      [v30 addAction_];

      --v27;
    }

    while (v27);
  }

  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    aBlock = v48;
    v49 = v48;
    (*(a10 + 16))(v96, a10);
  }

  else
  {
    type metadata accessor for SeymourLocalizationBundle();
    v50 = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    sub_20C132964();
  }

  v52 = v102;
  v53 = v89;
  v54 = sub_20C138104();
  v55 = sub_20C138104();
  v56 = v92;
  v57 = v91;
  v58 = v90;
  if (v54 == v55)
  {

    v59 = swift_allocObject();
    v59[2] = v52;
    v59[3] = sub_20B7E9034;
    v59[4] = v20;
    v60 = v52;
    v61 = 0;
    v62 = sub_20BBB5E0C;
  }

  else
  {
    v59 = swift_allocObject();
    v59[2] = v52;
    v59[3] = sub_20B7E9034;
    v59[4] = v20;
    v63 = v52;
    v61 = sub_20C13C914();

    v62 = sub_20BBB5D9C;
  }

  v108 = v62;
  v109 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v105 = 1107296256;
  v106 = sub_20B762A80;
  v107 = &block_descriptor_15_0;
  v64 = _Block_copy(&aBlock);

  v65 = [objc_opt_self() actionWithTitle:v61 style:1 handler:v64];
  _Block_release(v64);

  [v22 addAction_];
  v66 = [v22 popoverPresentationController];
  [v66 setSourceView_];

  v67 = sub_20C136664();
  (*(*(v67 - 8) + 56))(v57, 1, 1, v67);
  v68 = v53[5];
  v69 = *MEMORY[0x277D51408];
  v70 = sub_20C134F24();
  (*(*(v70 - 8) + 104))(v57 + v68, v69, v70);
  v71 = v53[6];
  v72 = sub_20C132C14();
  (*(*(v72 - 8) + 56))(v57 + v71, 1, 1, v72);
  v73 = v53[8];
  v74 = sub_20C135ED4();
  (*(*(v74 - 8) + 56))(v57 + v73, 1, 1, v74);
  v75 = v53[10];
  v76 = *MEMORY[0x277D51768];
  v77 = sub_20C1352E4();
  (*(*(v77 - 8) + 104))(v57 + v75, v76, v77);
  v78 = v53[11];
  v79 = sub_20C136E94();
  (*(*(v79 - 8) + 56))(v57 + v78, 1, 1, v79);
  v80 = MEMORY[0x277D84F90];
  v81 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  *(v57 + v53[7]) = xmmword_20C1719C0;
  v82 = (v57 + v53[9]);
  *v82 = 0;
  v82[1] = 0;
  *(v57 + v53[12]) = v81;
  sub_20BB91124(v57, v56 + *(v58 + 20));
  *v56 = v80;
  v83 = &v52[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v84 = *(v83 + 1);
    ObjectType = swift_getObjectType();
    (*(v84 + 160))(v52, v56, ObjectType, v84);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v86 = swift_unknownObjectWeakLoadStrong();
  if (v86)
  {
    v87 = v86;
    v88 = [v86 navigationController];

    if (v88)
    {
      [v88 presentViewController:v22 animated:1 completion:0];

      v22 = v88;
    }
  }

  sub_20BB916C8(v56, type metadata accessor for PageMetricAction);
  return sub_20BB916C8(v57, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BBB5384(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, __n128), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v51 = a3;
  v46 = a2;
  v50 = type metadata accessor for PageMetricAction(0);
  MEMORY[0x28223BE20](v50);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_20C134F24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *MEMORY[0x277D52B30];
  v20 = sub_20C136664();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v15, v19, v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  v22 = v46;
  v23 = *MEMORY[0x277D51408];
  v24 = *(v10 + 104);
  v48 = v9;
  v24(v12, v23, v9);
  v25 = sub_20C132C14();
  v26 = *(*(v25 - 8) + 56);
  v49 = v8;
  v26(v8, 1, 1, v25);
  if (v22 <= 3u)
  {
    if (v22 <= 1u)
    {
      if (v22)
      {
        v27 = 0xEB00000000544E45;
        v28 = 0x4345525F54524F53;
      }

      else
      {
        v27 = 0x800000020C1953D0;
        v28 = 0xD000000000000014;
      }

      goto LABEL_17;
    }

    if (v22 != 2)
    {
      v28 = 0xD000000000000011;
      v27 = 0x800000020C1953B0;
      goto LABEL_17;
    }

    v28 = 0x4D49545F54524F53;
LABEL_14:
    v27 = 0xE900000000000045;
    goto LABEL_17;
  }

  if (v22 <= 5u)
  {
    if (v22 == 4)
    {
      v28 = 0x53554D5F54524F53;
      v27 = 0xEA00000000004349;
      goto LABEL_17;
    }

    v28 = 0x4E4F4E5F54524F53;
    goto LABEL_14;
  }

  if (v22 == 6)
  {
    v27 = 0xEC00000052454E49;
    v28 = 0x4152545F54524F53;
  }

  else
  {
    v27 = 0xEA0000000000454DLL;
    v28 = 0x4548545F54524F53;
  }

LABEL_17:
  v29 = v16[8];
  v30 = sub_20C135ED4();
  (*(*(v30 - 8) + 56))(&v18[v29], 1, 1, v30);
  v31 = v16[10];
  v32 = *MEMORY[0x277D51790];
  v33 = sub_20C1352E4();
  (*(*(v33 - 8) + 104))(&v18[v31], v32, v33);
  v34 = v16[11];
  v35 = sub_20C136E94();
  (*(*(v35 - 8) + 56))(&v18[v34], 1, 1, v35);
  v36 = MEMORY[0x277D84F90];
  v37 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20B5DF134(v15, v18, &unk_27C7622E0, &unk_20C14FCF0);
  (*(v10 + 32))(&v18[v16[5]], v12, v48);
  sub_20B5DF134(v49, &v18[v16[6]], &unk_27C7617F0, &unk_20C151A10);
  v38 = &v18[v16[7]];
  *v38 = v28;
  v38[1] = v27;
  v39 = &v18[v16[9]];
  *v39 = 0;
  *(v39 + 1) = 0;
  *&v18[v16[12]] = v37;
  v40 = v47;
  sub_20BB91124(v18, &v47[*(v50 + 20)]);
  *v40 = v36;
  v41 = v51;
  v42 = v51 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v42 + 8);
    ObjectType = swift_getObjectType();
    (*(v43 + 160))(v41, v40, ObjectType, v43);
    swift_unknownObjectRelease();
  }

  v53(v22, 0);
  sub_20BB916C8(v40, type metadata accessor for PageMetricAction);
  return sub_20BB916C8(v18, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BBB59C4(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = type metadata accessor for PageMetricAction(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ShelfMetricAction(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x277D52B30];
  v14 = sub_20C136664();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v16 = v10[7];
  v17 = *MEMORY[0x277D51408];
  v18 = sub_20C134F24();
  (*(*(v18 - 8) + 104))(&v12[v16], v17, v18);
  v19 = v10[8];
  v20 = sub_20C132C14();
  (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
  v21 = v10[10];
  v22 = sub_20C135ED4();
  (*(*(v22 - 8) + 56))(&v12[v21], 1, 1, v22);
  v23 = v10[12];
  v24 = *MEMORY[0x277D51790];
  v25 = sub_20C1352E4();
  (*(*(v25 - 8) + 104))(&v12[v23], v24, v25);
  v26 = v10[13];
  v27 = sub_20C136E94();
  (*(*(v27 - 8) + 56))(&v12[v26], 1, 1, v27);
  v28 = MEMORY[0x277D84F90];
  v29 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  *&v12[v10[9]] = xmmword_20C1719D0;
  v30 = &v12[v10[11]];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v12[v10[14]] = v29;
  sub_20BB91124(v12, v8 + *(v6 + 28));
  *v8 = v28;
  v31 = a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 160))(a2, v8, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  sub_20BBB5DB4();
  v34 = swift_allocError();
  *v35 = 1;
  a3(v34, 1);

  sub_20BB916C8(v8, type metadata accessor for PageMetricAction);
  return sub_20BB916C8(v12, type metadata accessor for ShelfMetricAction);
}

unint64_t sub_20BBB5DB4()
{
  result = qword_27C76B898;
  if (!qword_27C76B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B898);
  }

  return result;
}

uint64_t sub_20BBB5E14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_20B65AA60(a1, a2);
  if (v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 48);
    v10 = *(v3 + 48);
    *(v3 + 48) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20BA10304();
      v8 = v10;
    }

    sub_20BE4491C();
    *(v3 + 48) = v8;
  }

  return swift_endAccess();
}

void sub_20BBB5ED8()
{
  if (!*(v0 + 32))
  {
    swift_beginAccess();
    v1 = 0;
    v2 = *(v0 + 48);
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;
    while (v5)
    {
      v7 = v1;
LABEL_11:
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      if ((*(*(*(v2 + 56) + ((v7 << 9) | (8 * v8))) + 72) & 1) == 0)
      {
        sub_20C13DE24();
        __break(1u);
LABEL_13:
        v9 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_displayLinkFired_];
        v10 = [objc_opt_self() mainRunLoop];
        [v9 addToRunLoop:v10 forMode:*MEMORY[0x277CBE738]];

        v11 = v9;
        Current = CFAbsoluteTimeGetCurrent();
        v13 = *(v0 + 32);
        *(v0 + 32) = v11;
        *(v0 + 40) = Current;

        if (v13)
        {
        }

        return;
      }
    }

    while (1)
    {
      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v7 >= v6)
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v7);
      ++v1;
      if (v5)
      {
        v1 = v7;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20BBB60E8()
{
  sub_20B583E6C(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_20BBB6164()
{
  v1 = *(v0 + 32);
  v23 = (v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 40);
    v21 = *(v0 + 32);
    v22 = v1;
    Current = CFAbsoluteTimeGetCurrent();
    v4 = Current - v2;
    swift_beginAccess();
    v5 = *(v0 + 48);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v24 = 0;
    v10 = 0;
    while (v8)
    {
      v11 = v10;
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(v5 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(v5 + 56) + 8 * v13);

      if (sub_20B9DD0B4(v4))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_20B7BBBC8(v16, v15, *(v17 + 32));

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v24 = 1;
        v10 = v11;
      }

      else
      {

        v10 = v11;
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v18 = *v23;
    if (v24)
    {
      *(v0 + 32) = v21;
      *(v0 + 40) = Current;
      if (!v18)
      {
        return;
      }

      goto LABEL_23;
    }

    *v23 = 0;
    *(v0 + 40) = 0;
    if (!v18)
    {
      v18 = v22;
LABEL_23:

      return;
    }

    v19 = v18;
    [v19 invalidate];
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_26:
    sub_20C13DE24();
    __break(1u);
  }
}

uint64_t sub_20BBB641C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_20BBB65CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_20BBBD860();
  }
}

void sub_20BBB6620(uint64_t a1)
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      *v4 = sub_20C13D374();
      (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
      v8 = sub_20C13C584();
      (*(v2 + 8))(v4, v1);
      if (v8)
      {
        [v7 dismissViewControllerAnimated:0 completion:0];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}