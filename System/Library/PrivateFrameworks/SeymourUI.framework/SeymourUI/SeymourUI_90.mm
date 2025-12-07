uint64_t sub_20BF468D0()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[25];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

void *CatalogTipPlayerPresenter.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  sub_20B583E6C((v0 + 10));
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  sub_20BF46BC8(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, type metadata accessor for CatalogTipPlayerConfiguration);
  sub_20B58CFB0(*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext), *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext + 8));
  sub_20BF46C28(*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers), *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers + 8), *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers + 16), *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers + 24));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_trainerTipLockup, &unk_27C769C20, &unk_20C15C0F0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_periodicTimeObserver, &unk_27C768A00, &qword_20C152F90);
  return v0;
}

uint64_t CatalogTipPlayerPresenter.__deallocating_deinit()
{
  CatalogTipPlayerPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_20BF46B20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  type metadata accessor for CatalogTipPlaybackContent(0);

  return sub_20C137C94();
}

uint64_t sub_20BF46BC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_20BF46C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

void sub_20BF46C74(uint64_t a1, double a2)
{
  type metadata accessor for CatalogTipPlayerConfiguration(319);
  if (v2 <= 0x3F)
  {
    sub_20BF46DE8(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BF46DE8(uint64_t a1)
{
  if (!qword_27C7662B0)
  {
    sub_20C134014();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C7662B0);
    }
  }
}

uint64_t sub_20BF46E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00, &qword_20C152F90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF46F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipPlaybackContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF46FF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BF40690(a1, v4, v5, v6);
}

uint64_t sub_20BF470AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF417E4(a1, v4, v5, v6);
}

uint64_t sub_20BF471AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20BF4214C(a1, v4, v5, v7, v6);
}

uint64_t sub_20BF472C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BF4738C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20BF47404(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v61 = a1;
  v4 = sub_20C136194();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = sub_20C13BB84();
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  sub_20C13B574();
  v17 = *(v5 + 16);
  v62 = a3;
  v57 = v17;
  v58 = v5 + 16;
  v17(v10, a3, v4);
  v18 = sub_20C13BB74();
  v19 = sub_20C13D1F4();
  v20 = os_log_type_enabled(v18, v19);
  v60 = v5;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v56 = v11;
    v22 = v21;
    v23 = swift_slowAlloc();
    v54 = v7;
    v24 = v23;
    v65 = v23;
    *v22 = 136315138;
    v25 = sub_20C136184();
    v55 = v13;
    v27 = v26;
    v59 = *(v5 + 8);
    v59(v10, v4);
    v28 = sub_20B51E694(v25, v27, &v65);
    v29 = v64;
    v13 = v55;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_20B517000, v18, v19, "Configuring audio track for language: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v30 = v24;
    v7 = v54;
    MEMORY[0x20F2F6A40](v30, -1, -1);
    v31 = v22;
    v11 = v56;
    MEMORY[0x20F2F6A40](v31, -1, -1);

    v32 = v29;
  }

  else
  {

    v59 = *(v5 + 8);
    v59(v10, v4);
    v32 = v64;
  }

  v33 = *(v32 + 8);
  v33(v16, v11);
  v34 = v62;
  v35 = sub_20C136184();
  v36 = v63;
  v38 = AVMediaSelectionGroup.selectionOptions(for:)(v35, v37);

  if (v38 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_6;
    }

LABEL_11:

    sub_20C13B574();
    v57(v7, v34, v4);
    v41 = sub_20C13BB74();
    v42 = sub_20C13D1F4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v11;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65 = v45;
      *v44 = 136315138;
      v46 = sub_20C136184();
      v47 = v4;
      v48 = v13;
      v50 = v49;
      v59(v7, v47);
      v51 = sub_20B51E694(v46, v50, &v65);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_20B517000, v41, v42, "No option available for language: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x20F2F6A40](v45, -1, -1);
      MEMORY[0x20F2F6A40](v44, -1, -1);

      v52 = v48;
      v53 = v43;
    }

    else
    {

      v59(v7, v4);
      v52 = v13;
      v53 = v11;
    }

    v33(v52, v53);
    return;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x20F2F5430](0, v38);
    goto LABEL_9;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v38 + 32);
LABEL_9:
    v40 = v39;

    [v61 selectMediaOption:v40 inMediaSelectionGroup:v36];

    return;
  }

  __break(1u);
}

id sub_20BF47B38(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MiniPlayerView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BF47CAC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_artworkView);
  v4 = objc_opt_self();
  v5 = *&v3[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  v10[4] = sub_20BB17A38;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20B7B548C;
  v10[3] = &block_descriptor_156;
  v7 = _Block_copy(v10);
  v8 = a1;
  v9 = v3;

  [v4 transitionWithView:v5 duration:5242880 options:v7 animations:0 completion:0.25];
  _Block_release(v7);
}

void sub_20BF47DC8(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return;
    }

    v3 = &OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_skipForwardControl;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_playPauseControl;
  }

  v4 = *(v2 + *v3);
  v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_type] = a2;
  v5 = *&v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageView];
  v7 = v4;
  v8 = sub_20B83B118(a2);
  [v5 setImage_];
}

id sub_20BF47ED4(id result, char a2)
{
  if (!result)
  {
    v3 = &OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_playPauseControl;
    return [*(v2 + *v3) setEnabled_];
  }

  if (result != 1)
  {
    v3 = &OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_skipForwardControl;
    return [*(v2 + *v3) setEnabled_];
  }

  return result;
}

char *sub_20BF47F1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v3[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_presenter];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_artworkView;
  type metadata accessor for PlaybackArtworkView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v7] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_controlsStackView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v9] = v10;
  *&v3[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_layout] = 0x4048000000000000;
  v11 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_metadataStackView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v13] = v14;
  *v6 = a1;
  *(v6 + 1) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v15 = type metadata accessor for PlaybackControl();
  v16 = objc_allocWithZone(v15);
  *&v3[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_playPauseControl] = sub_20B83A8FC(0, 128, 0.0, 0.0);
  v17 = objc_allocWithZone(v15);
  *&v3[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_skipForwardControl] = sub_20B83A8FC(0, 67, 0.0, 0.0);
  v89.receiver = v3;
  v89.super_class = type metadata accessor for MiniPlayerView();
  v18 = objc_msgSendSuper2(&v89, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (a1)
  {
    *(a1 + 24) = &off_2822F89C8;
    swift_unknownObjectWeakAssign();
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_tapRecognized_];
  [v19 setDelegate_];
  v20 = v18;
  v87 = v19;
  [v20 addGestureRecognizer_];
  v21 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_artworkView;
  v22 = *&v20[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_artworkView];
  v23 = objc_opt_self();
  v24 = v22;
  v85 = v23;
  v25 = [v23 systemGrayColor];
  [v24 setBackgroundColor_];

  v26 = [*&v20[v21] layer];
  [v26 setCornerRadius_];

  v27 = *&v20[v21];
  v88[0] = 0x3FF0000000000000;
  v88[1] = 0;
  v88[2] = 0;
  v88[3] = 0x3FF0000000000000;
  v88[4] = 0;
  v88[5] = 0;
  [v27 setTransform_];
  [v20 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  v29 = *&v20[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_playPauseControl];
  *(inited + 32) = v29;
  v30 = *&v20[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_skipForwardControl];
  *(inited + 40) = v30;
  v31 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_controlsStackView;
  v32 = v29;
  v33 = v30;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v32; ; i = MEMORY[0x20F2F5430](0, inited))
  {
    v35 = i;
    [i addTarget:v20 action:sel_playbackControlTapped_ forControlEvents:64];
    [*&v20[v31] addArrangedSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v36 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v36 = MEMORY[0x20F2F5430](1, inited);
LABEL_9:
  v37 = v36;
  [v36 addTarget:v20 action:sel_playbackControlTapped_ forControlEvents:64];
  [*&v20[v31] addArrangedSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [*&v20[v31] setAxis_];
  [*&v20[v31] setSpacing_];
  [*&v20[v31] setSemanticContentAttribute_];
  [v20 addSubview_];
  v38 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_metadataStackView;
  [*&v20[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_metadataStackView] setAxis_];
  [*&v20[v38] setAlignment_];
  [v20 addSubview_];
  v39 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_titleLabel;
  v40 = *&v20[OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_titleLabel];
  v41 = objc_opt_self();
  v42 = *MEMORY[0x277D76918];
  v43 = v40;
  v44 = [v41 preferredFontForTextStyle_];
  [v43 setFont_];

  v45 = *&v20[v39];
  v46 = [v85 whiteColor];
  [v45 setTextColor_];

  [*&v20[v38] addArrangedSubview_];
  v86 = objc_opt_self();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20C152A00;
  v48 = [*&v20[v21] leadingAnchor];
  v49 = [v20 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v50 = [v48 constraintEqualToAnchor:v49 constant:*&qword_27C799F40];

  *(v47 + 32) = v50;
  v51 = [*&v20[v21] widthAnchor];
  v52 = [v51 constraintEqualToConstant_];

  *(v47 + 40) = v52;
  v53 = [*&v20[v21] centerYAnchor];
  v54 = [v20 centerYAnchor];

  v55 = [v53 constraintEqualToAnchor_];
  *(v47 + 48) = v55;
  v56 = [*&v20[v38] leadingAnchor];
  v57 = [*&v20[v21] trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:12.0];

  *(v47 + 56) = v58;
  v59 = [*&v20[v38] centerYAnchor];
  v60 = [*&v20[v21] centerYAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v47 + 64) = v61;
  v62 = [*&v20[v38] topAnchor];
  v63 = [v20 topAnchor];

  v64 = [v62 constraintGreaterThanOrEqualToAnchor_];
  *(v47 + 72) = v64;
  v65 = [*&v20[v38] bottomAnchor];
  v66 = [v20 bottomAnchor];

  v67 = [v65 constraintLessThanOrEqualToAnchor_];
  *(v47 + 80) = v67;
  v68 = [*&v20[v31] leadingAnchor];
  v69 = [*&v20[v38] trailingAnchor];
  v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69 constant:12.0];

  *(v47 + 88) = v70;
  v71 = [*&v20[v31] trailingAnchor];
  v72 = [v20 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v73 = [v71 constraintEqualToAnchor:v72 constant:-*&qword_27C799F50];

  *(v47 + 96) = v73;
  v74 = [*&v20[v31] centerYAnchor];
  v75 = [*&v20[v21] centerYAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v47 + 104) = v76;
  v77 = [*&v20[v31] topAnchor];
  v78 = [v20 topAnchor];

  v79 = [v77 constraintGreaterThanOrEqualToAnchor_];
  *(v47 + 112) = v79;
  v80 = [*&v20[v31] bottomAnchor];
  v81 = [v20 bottomAnchor];

  v82 = [v80 constraintLessThanOrEqualToAnchor_];
  *(v47 + 120) = v82;
  sub_20B5E29D0();
  v83 = sub_20C13CC54();

  [v86 activateConstraints_];

  return v20;
}

void sub_20BF48A34()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_presenter);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_artworkView;
  type metadata accessor for PlaybackArtworkView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_controlsStackView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_layout) = 0x4048000000000000;
  v6 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_metadataStackView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v8) = v9;
  sub_20C13DE24();
  __break(1u);
}

double sub_20BF48B84()
{
  v1 = sub_20C13B1D4();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_presenter))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20C13B1C4();
    sub_20C13A764();
    (*(v2 + 8))(v5, v1);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_20BF48CAC(float a1, float a2, float a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CE8E90]) initWithNumberOfRings_];
  v7 = objc_opt_self();
  v8 = [v7 energyColors];
  if (v8)
  {
    v9 = v8;
    result = [v8 gradientDarkColor];
    if (result)
    {
      v11 = result;
      result = [v9 gradientLightColor];
      if (result)
      {
        v12 = result;
        [v6 setTopColor:v11 bottomColor:result ofRingAtIndex:2];

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v13 = [v7 briskColors];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  result = [v13 gradientDarkColor];
  if (!result)
  {
    goto LABEL_16;
  }

  v15 = result;
  result = [v14 gradientLightColor];
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
  [v6 setTopColor:v15 bottomColor:result ofRingAtIndex:1];

LABEL_9:
  v17 = [v7 sedentaryColors];
  if (!v17)
  {
LABEL_13:
    *&v18 = a1;
    [v6 setGroupDiameter_];
    *&v22 = a2;
    [v6 setInterspacing_];
    *&v23 = a3;
    [v6 setThickness_];
    LODWORD(v24) = 1055286886;
    [v6 setEmptyOpacity_];
    v25 = [objc_allocWithZone(MEMORY[0x277CE8EA8]) initWithRingGroup_];
    [v25 setOpaque_];

    return v25;
  }

  v19 = v17;
  result = [v17 gradientDarkColor];
  if (!result)
  {
    goto LABEL_18;
  }

  v20 = result;
  result = [v19 gradientLightColor];
  if (result)
  {
    v21 = result;
    [v6 setTopColor:v20 bottomColor:result ofRingAtIndex:0];

    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_20BF48F44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1332F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v29 = v7;
    v34 = MEMORY[0x277D84F90];
    sub_20C13DD64();
    v32 = a1 + 56;
    v9 = sub_20C13DAA4();
    v10 = 0;
    v33 = *(a1 + 36);
    v27 = v5 + 16;
    v28 = (v5 + 8);
    v25 = a1 + 64;
    v26 = v8;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v32 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v31 = v10;
      v14 = v29;
      (*(v5 + 16))(v29, *(a1 + 48) + *(v5 + 72) * v9, v4);
      sub_20C1332E4();
      if (v2)
      {
        (*v28)(v14, v4);

        return;
      }

      v30 = 0;
      v15 = v4;
      (*v28)(v14, v4);
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v16 = *(v32 + 8 * v13);
      if ((v16 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v9 & 0x3F));
      if (v17)
      {
        v11 = __clz(__rbit64(v17)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v26;
      }

      else
      {
        v18 = a1;
        v19 = v13 << 6;
        v20 = v13 + 1;
        v21 = (v25 + 8 * v13);
        v12 = v26;
        while (v20 < (v11 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_20B526EA4(v9, v33, 0);
            v11 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_20B526EA4(v9, v33, 0);
LABEL_19:
        a1 = v18;
      }

      v10 = v31 + 1;
      v9 = v11;
      v4 = v15;
      v2 = v30;
      if (v31 + 1 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_20BF49284(uint64_t a1)
{
  v41 = sub_20C133314();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v29 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v29 = v1;
    v43 = MEMORY[0x277D84F90];
    sub_20C13DD64();
    v9 = a1 + 56;
    v10 = sub_20C13DAA4();
    v11 = *(a1 + 36);
    result = sub_20B51C88C(0, &qword_27C764020, 0x277CE8CC0);
    v12 = 0;
    v35 = v3 + 16;
    v36 = result;
    v37 = a1;
    v38 = v3;
    v33 = v7;
    v34 = v3 + 8;
    v30 = a1 + 64;
    v31 = v11;
    v32 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v42 = v12;
      v15 = *(a1 + 48);
      v17 = v38;
      v16 = v39;
      v18 = *(v38 + 16);
      v19 = v41;
      v18(v39, v15 + *(v38 + 72) * v10, v41);
      v18(v40, v16, v19);
      sub_20C13D494();
      v20 = v16;
      a1 = v37;
      (*(v17 + 8))(v20, v19);
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      result = sub_20C13DD44();
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v32;
      v21 = v33;
      v22 = *(v32 + 8 * v14);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v11) = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v13 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v26 = (v30 + 8 * v14);
        while (v25 < (v13 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_20B526EA4(v10, v31, 0);
            v13 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v10, v31, 0);
      }

LABEL_4:
      v12 = v42 + 1;
      v10 = v13;
      if (v42 + 1 == v21)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF495CC(uint64_t a1)
{
  v38 = sub_20C137684();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v30[1] = v1;
    v43 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v5, 0);
    v41 = v43;
    v7 = a1 + 56;
    result = sub_20C13DAA4();
    v8 = result;
    v9 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v5;
    v33 = v3;
    v34 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v12 = *(a1 + 36);
      v39 = v9;
      v40 = v12;
      v14 = v37;
      v13 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v8, v38);
      v42 = sub_20C137674();
      v15 = sub_20C13DFA4();
      v16 = v3;
      v18 = v17;
      result = (*(v16 + 8))(v14, v13);
      v19 = v41;
      v43 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_20B526D44((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v15;
      *(v22 + 40) = v18;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v34;
      v23 = *(v34 + 8 * v11);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v31 + 8 * v11);
        v3 = v33;
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_20B526EA4(v8, v40, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v8, v40, 0);
      }

LABEL_4:
      v9 = v39 + 1;
      v8 = v10;
      if (v39 + 1 == v32)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF498F0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BF49928(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BD8, &qword_20C185978);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v4 = sub_20C13BB84();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BE0, &qword_20C185980);
  v3[16] = swift_task_alloc();
  v5 = sub_20C137A64();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643C8, &qword_20C1804A0);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = sub_20C1361E4();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v8 = sub_20C132E94();
  v3[29] = v8;
  v3[30] = *(v8 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120, &qword_20C155C80);
  v3[33] = v9;
  v3[34] = *(v9 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF49C7C, 0, 0);
}

uint64_t sub_20BF49C7C()
{
  __swift_project_boxed_opaque_existential_1((v0[10] + 176), *(v0[10] + 200));
  sub_20C132E64();
  v1 = sub_20C13AF24();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[35];
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[29];
    v13 = v0[30];
    sub_20C13CEA4();
    sub_20C132E14();
    v14 = *(v13 + 8);
    v0[36] = v14;
    v0[37] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v11, v12);
    sub_20C139F54();
    v14(v10, v12);
    v15 = swift_task_alloc();
    v0[38] = v15;
    *(v15 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v15 + 24) = 50;
    *(v15 + 32) = 2;
    *(v15 + 40) = 63;
    *(v15 + 48) = v9;
    v16 = swift_task_alloc();
    v0[39] = v16;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BE8, &qword_20C185988);
    *v16 = v0;
    v16[1] = sub_20BF49E4C;
    v6 = sub_20BF62B28;
    v1 = (v0 + 5);
    v5 = 0x800000020C192D10;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000013;
    v7 = v15;
  }

  return MEMORY[0x2822008A0](v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_20BF49E4C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = sub_20BF4A658;
  }

  else
  {
    v5 = v2[34];
    v4 = v2[35];
    v6 = v2[33];
    v2[41] = v2[5];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF49FAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF49FAC()
{
  v82 = v0;
  v1 = v0[18];
  v2 = v0[40];
  v3 = v0[41];
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[41] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v76 = v0[25];
  v72 = (v1 + 56);
  v70 = (v0[14] + 8);
  v71 = (v1 + 48);
  v64 = v0[18];
  v65 = (v1 + 32);
  v75 = v0[41];

  v19 = 0;
  v78 = MEMORY[0x277D84F90];
  v73 = v10;
  v74 = v5;
  v77 = (v76 + 1);
LABEL_4:
  v20 = v19;
  while (1)
  {
    v0[42] = v78;
    if (!v9)
    {
      break;
    }

    v79 = v2;
    v19 = v20;
LABEL_11:
    v21 = v0[27];
    v22 = v0[28];
    v23 = v0[24];
    v24 = v0[9];
    v25 = v76[2];
    v25(v22, *(v75 + 48) + v76[9] * (__clz(__rbit64(v9)) | (v19 << 6)), v23);
    v25(v21, v22, v23);
    v26 = v24;
    v27 = v79;
    sub_20C137A54();
    if (v79)
    {
      v28 = v0[28];
      v29 = v0[26];
      v30 = v0[24];
      sub_20C13B494();
      v25(v29, v28, v30);
      v31 = v79;
      v32 = sub_20C13BB74();
      v33 = sub_20C13D1F4();

      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[26];
      v36 = v0[24];
      v37 = v0[15];
      v38 = v0[13];
      if (v34)
      {
        v67 = v33;
        v39 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v81[0] = v68;
        *v39 = 136315394;
        sub_20BF646AC(&unk_27C770BF0, MEMORY[0x277D52828], MEMORY[0x277D52840]);
        v80 = v37;
        v40 = sub_20C13DFA4();
        v69 = v38;
        v42 = v41;
        v66 = *v77;
        (*v77)(v35, v36);
        v43 = sub_20B51E694(v40, v42, v81);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        swift_getErrorValue();
        v44 = sub_20C13E094();
        v46 = sub_20B51E694(v44, v45, v81);

        *(v39 + 14) = v46;
        _os_log_impl(&dword_20B517000, v32, v67, "Failed to transform %s for personalization with error: %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v68, -1, -1);
        MEMORY[0x20F2F6A40](v39, -1, -1);

        v47 = v27;
        v48 = v66;

        (*v70)(v80, v69);
      }

      else
      {

        v48 = *v77;
        (*v77)(v35, v36);
        (*v70)(v37, v38);
      }

      (*v72)(v0[16], 1, 1, v0[17]);
    }

    else
    {
      (*v72)(v0[16], 0, 1, v0[17]);
      v48 = *v77;
    }

    v9 &= v9 - 1;
    v49 = v0[16];
    v50 = v0[17];
    v48(v0[28], v0[24]);
    if ((*v71)(v49, 1, v50) != 1)
    {
      v51 = v0[19];
      v52 = v0[20];
      v53 = v0[17];
      v54 = *v65;
      (*v65)(v52, v0[16], v53);
      v54(v51, v52, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_20BC08860(0, v78[2] + 1, 1, v78);
      }

      v56 = v78[2];
      v55 = v78[3];
      if (v56 >= v55 >> 1)
      {
        v78 = sub_20BC08860((v55 > 1), v56 + 1, 1, v78);
      }

      v57 = v0[19];
      v58 = v0[17];
      v78[2] = v56 + 1;
      v11 = (v54)(v78 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v56, v57, v58);
      v2 = 0;
      v10 = v73;
      v5 = v74;
      goto LABEL_4;
    }

    v11 = sub_20B520158(v0[16], &qword_27C770BE0, &qword_20C185980);
    v2 = 0;
    v20 = v19;
    v10 = v73;
    v5 = v74;
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return MEMORY[0x2822008A0](v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (v19 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v19);
    ++v20;
    if (v9)
    {
      v79 = v2;
      goto LABEL_11;
    }
  }

  v59 = v0[23];
  v60 = v0[10];

  __swift_project_boxed_opaque_existential_1((v60 + 176), *(v60 + 200));
  sub_20C139F74();
  v61 = swift_task_alloc();
  v0[43] = v61;
  *(v61 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v61 + 24) = 50;
  *(v61 + 32) = 2;
  *(v61 + 40) = 73;
  *(v61 + 48) = v59;
  v62 = swift_task_alloc();
  v0[44] = v62;
  *v62 = v0;
  v62[1] = sub_20BF4A77C;
  v18 = MEMORY[0x277D83B88];
  v16 = sub_20BF62B40;
  v11 = (v0 + 7);
  v15 = 0x800000020C192D10;
  v12 = 0;
  v13 = 0;
  v14 = 0xD000000000000013;
  v17 = v61;

  return MEMORY[0x2822008A0](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_20BF4A658()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF4A77C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = sub_20BF4AAD0;
  }

  else
  {
    v5 = v2[22];
    v4 = v2[23];
    v6 = v2[21];
    v2[46] = v2[7];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4A8F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4A8F4()
{
  v1 = v0[10];
  v2 = v1[25];
  v3 = v1[26];
  __swift_project_boxed_opaque_existential_1(v1 + 22, v2);
  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_20BF4A9B4;
  v5 = v0[12];

  return MEMORY[0x2821AE4A8](v5, v2, v3);
}

uint64_t sub_20BF4A9B4()
{
  *(*v1 + 384) = v0;

  if (v0)
  {

    v2 = sub_20BF4AE70;
  }

  else
  {
    v2 = sub_20BF4ABF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4AAD0()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF4ABF4()
{
  v1 = v0[11];
  sub_20B52F9E8(v0[12], v1, &qword_27C770BD8, &qword_20C185978);
  v2 = sub_20C134EE4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[11];
  if (v4 == 1)
  {
    sub_20B520158(v0[11], &qword_27C770BD8, &qword_20C185978);
    sub_20C132DB4();
  }

  else
  {
    sub_20C134ED4();
    (*(v3 + 8))(v5, v2);
  }

  v6 = v0[36];
  v7 = v0[32];
  v8 = v0[29];
  sub_20C132E44();
  v10 = v9;
  result = v6(v7, v8);
  v12 = v10 / 86400.0;
  if (COERCE__INT64(fabs(v10 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = v0[12];
  sub_20C136EC4();
  sub_20B520158(v13, &qword_27C770BD8, &qword_20C185978);

  v14 = v0[1];

  return v14();
}

uint64_t sub_20BF4AE70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BF4AF7C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_20C1331A4();
  v2[8] = swift_task_alloc();
  v3 = sub_20C136014();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0, &qword_20C155FB0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[15] = swift_task_alloc();
  v5 = sub_20C136C64();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4B164, 0, 0);
}

uint64_t sub_20BF4B164()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  __swift_project_boxed_opaque_existential_1((v0[7] + 96), *(v0[7] + 120));
  sub_20C13B174();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[15], &qword_27C768690, &unk_20C14FD90);
    v4 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[14];
    v9 = v0[7];
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    __swift_project_boxed_opaque_existential_1((v9 + 216), *(v9 + 240));
    sub_20C139D54();
    v10 = swift_task_alloc();
    v0[19] = v10;
    *(v10 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v10 + 24) = 50;
    *(v10 + 32) = 2;
    *(v10 + 40) = 90;
    *(v10 + 48) = v8;
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_20BF4B43C;
    v12 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF6330C, v10, v12);
  }
}

uint64_t sub_20BF4B43C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_20BF4B738;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];
    v7 = v2[3];
    v2[22] = v2[2];
    v2[23] = v7;

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4B59C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4B59C(uint64_t a1)
{
  v3 = *(v1 + 136);
  v2 = *(v1 + 144);
  v12 = *(v1 + 128);
  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  v6 = *(v1 + 72);
  sub_20C136B34();
  sub_20C136A04();
  v7 = sub_20C135FE4();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  *(v1 + 32) = v7;
  *(v1 + 40) = v9 & 1;
  *(v1 + 41) = 1;
  sub_20BF63324();
  sub_20BF63378();
  sub_20C133C04();
  sub_20C136A24();
  sub_20C133194();
  sub_20C136364();
  (*(v3 + 8))(v2, v12);

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_20BF4B738()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF4B810(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_20C137404();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = sub_20C1378F4();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4B938, 0, 0);
}

void sub_20BF4B938()
{
  v77 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  sub_20C136AD4();
  v4 = sub_20C1378D4();
  v71 = *(v3 + 8);
  v71(v1, v2);
  v5 = sub_20C136714();
  sub_20BF631EC(v5, v4, v0 + 96);

  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v73 = *(v0 + 136);
  v11 = sub_20BF61D64(v6, v7, v8, v9, v10, v73, *(v0 + 144));
  if (v11)
  {
    v12 = v11;
    v13 = sub_20BEDEEE0(v11, 0);
    v14 = *(sub_20C137684() - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    sub_20BD12744(v6, v7, v8);
    sub_20BD12744(v9, v10, v73);

    sub_20BF62008(v74, v13 + v15, v12);
    v17 = v16;
    v18 = *v75;
    *(v0 + 48) = v74[2];
    *(v0 + 64) = v18;
    *(v0 + 73) = *&v75[9];
    v19 = v74[1];
    *(v0 + 16) = v74[0];
    *(v0 + 32) = v19;
    sub_20B520158(v0 + 16, &unk_27C770C50, &qword_20C1859D8);
    if (v17 != v12)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_20B526EA4(v6, v7, v8);
    sub_20B526EA4(v9, v10, v73);
  }

  else
  {
    sub_20B526EA4(v6, v7, v8);
    sub_20B526EA4(v9, v10, v73);
  }

  v20 = *(v0 + 208);
  v21 = *(v0 + 192);
  sub_20C136AD4();
  v22 = sub_20C1378E4();
  v71(v20, v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = sub_20BEDEEB8(*(v22 + 16), 0);
    v25 = *(sub_20C137774() - 8);
    sub_20BEE2C5C(v74, &v24[(*(v25 + 80) + 32) & ~*(v25 + 80)], v23, v22);
    v27 = v26;
    sub_20B583EDC(*&v74[0]);
    if (v27 == v23)
    {
      goto LABEL_9;
    }

LABEL_97:
    __break(1u);
    return;
  }

LABEL_9:
  v28 = *(v0 + 176);
  v29 = sub_20C136B64();
  v30 = v29;
  v31 = v29 + 56;
  v32 = -1;
  v33 = -1 << *(v29 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v29 + 56);
  v35 = (63 - v33) >> 6;
  v72 = (v28 + 8);

  v36 = 0;
  v70 = MEMORY[0x277D84F90];
  while (v34)
  {
LABEL_17:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    (*(v28 + 16))(*(v0 + 184), *(v30 + 48) + *(v28 + 72) * (v38 | (v36 << 6)), *(v0 + 168));
    v39 = sub_20C1373F4();
    v41 = v40;
    v42 = HIBYTE(v40) & 0xF;
    v43 = v39 & 0xFFFFFFFFFFFFLL;
    if ((v41 & 0x2000000000000000) != 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      if ((v41 & 0x1000000000000000) != 0)
      {
        v76 = 0;
        sub_20C0B6C4C(v39, v41, 10);
        v47 = v68;
        v65 = HIDWORD(v68) & 1;
        goto LABEL_79;
      }

      if ((v41 & 0x2000000000000000) != 0)
      {
        *&v74[0] = v39;
        *(&v74[0] + 1) = v41 & 0xFFFFFFFFFFFFFFLL;
        if (v39 == 43)
        {
          if (!v42)
          {
            goto LABEL_94;
          }

          if (--v42)
          {
            v47 = 0;
            v57 = v74 + 1;
            while (1)
            {
              v58 = *v57 - 48;
              if (v58 > 9)
              {
                break;
              }

              v59 = 10 * v47;
              if ((v59 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v47 = v59 + v58;
              if (__CFADD__(v59, v58))
              {
                break;
              }

              ++v57;
              if (!--v42)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v39 == 45)
        {
          if (!v42)
          {
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          if (--v42)
          {
            v47 = 0;
            v51 = v74 + 1;
            while (1)
            {
              v52 = *v51 - 48;
              if (v52 > 9)
              {
                break;
              }

              v53 = 10 * v47;
              if ((v53 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v47 = v53 - v52;
              if (v53 < v52)
              {
                break;
              }

              ++v51;
              if (!--v42)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v42)
        {
          v47 = 0;
          v62 = v74;
          while (1)
          {
            v63 = *v62 - 48;
            if (v63 > 9)
            {
              break;
            }

            v64 = 10 * v47;
            if ((v64 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v47 = v64 + v63;
            if (__CFADD__(v64, v63))
            {
              break;
            }

            ++v62;
            if (!--v42)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if ((v39 & 0x1000000000000000) != 0)
      {
        v45 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v45 = sub_20C13DD04();
      }

      v46 = *v45;
      if (v46 == 43)
      {
        if (v43 < 1)
        {
          goto LABEL_95;
        }

        v42 = v43 - 1;
        if (v43 == 1)
        {
          goto LABEL_77;
        }

        v47 = 0;
        if (v45)
        {
          v54 = v45 + 1;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              goto LABEL_77;
            }

            v56 = 10 * v47;
            if ((v56 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_77;
            }

            v47 = v56 + v55;
            if (__CFADD__(v56, v55))
            {
              goto LABEL_77;
            }

            ++v54;
            if (!--v42)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v46 == 45)
      {
        if (v43 < 1)
        {
          goto LABEL_93;
        }

        v42 = v43 - 1;
        if (v43 == 1)
        {
          goto LABEL_77;
        }

        v47 = 0;
        if (v45)
        {
          v48 = v45 + 1;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = 10 * v47;
            if ((v50 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v47 = v50 - v49;
            if (v50 < v49)
            {
              break;
            }

            ++v48;
            if (!--v42)
            {
              goto LABEL_78;
            }
          }

LABEL_77:
          v47 = 0;
          LOBYTE(v42) = 1;
          goto LABEL_78;
        }
      }

      else
      {
        if (!v43)
        {
          goto LABEL_77;
        }

        v47 = 0;
        if (v45)
        {
          do
          {
            v60 = *v45 - 48;
            if (v60 > 9)
            {
              goto LABEL_77;
            }

            v61 = 10 * v47;
            if ((v61 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_77;
            }

            v47 = v61 + v60;
            if (__CFADD__(v61, v60))
            {
              goto LABEL_77;
            }

            ++v45;
          }

          while (--v43);
        }
      }

      LOBYTE(v42) = 0;
LABEL_78:
      v76 = v42;
      LOBYTE(v65) = v42;
LABEL_79:
      (*v72)(*(v0 + 184), *(v0 + 168));

      if ((v65 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_20BC08888(0, *(v70 + 2) + 1, 1, v70);
        }

        v67 = *(v70 + 2);
        v66 = *(v70 + 3);
        if (v67 >= v66 >> 1)
        {
          v70 = sub_20BC08888((v66 > 1), v67 + 1, 1, v70);
        }

        *(v70 + 2) = v67 + 1;
        *&v70[4 * v67 + 32] = v47;
      }
    }

    else
    {
      (*v72)(*(v0 + 184), *(v0 + 168));
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_92;
    }

    if (v37 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v37);
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_17;
    }
  }

  sub_20B71A0AC(v70);

  sub_20C137694();

  v69 = *(v0 + 8);

  v69();
}

uint64_t sub_20BF4C0C4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v2[8] = swift_task_alloc();
  v3 = sub_20C133954();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C38, &qword_20C1859C8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4C20C, 0, 0);
}

uint64_t sub_20BF4C20C(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 64);
  sub_20C136A54();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_20B520158(*(v1 + 64), &unk_27C76A970, &qword_20C14FC10);
  }

  else
  {
    (*(*(v1 + 80) + 32))(*(v1 + 96), *(v1 + 64), *(v1 + 72));
    *(v1 + 16) = sub_20C1338B4();
    *(v1 + 24) = v5 & 1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
    sub_20B6CD3B4();
    sub_20B6CD408();
    if (sub_20C133BF4())
    {
      v6 = *(v1 + 96);
      v7 = *(v1 + 72);
      v8 = *(v1 + 80);
      (*(v8 + 16))(*(v1 + 88), v6, v7);
      sub_20C136EE4();
      (*(v8 + 8))(v6, v7);
      v9 = 0;
      goto LABEL_7;
    }

    (*(*(v1 + 80) + 8))(*(v1 + 96), *(v1 + 72));
  }

  v9 = 1;
LABEL_7:
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = sub_20C136EF4();
  (*(*(v12 - 8) + 56))(v10, v9, 1, v12);
  sub_20B52F9E8(v10, v11, &qword_27C770C38, &qword_20C1859C8);
  sub_20C1376B4();
  sub_20B520158(v10, &qword_27C770C38, &qword_20C1859C8);

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_20BF4C474(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C20, &qword_20C1804D0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0, &qword_20C17C180);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4C594, 0, 0);
}

uint64_t sub_20BF4C594()
{
  v1 = v0[16];
  sub_20BF4CB98(v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 133;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = sub_20C135FB4();
  v0[22] = v4;
  *v3 = v0;
  v3[1] = sub_20BF4C6BC;
  v5 = v0[18];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF630C8, v2, v4);
}

uint64_t sub_20BF4C6BC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_20BF4C944;
  }

  else
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4C814;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4C814()
{
  v1 = v0[18];
  v2 = v0[19];
  (*(*(v0[22] - 8) + 56))(v1, 0, 1);
  sub_20BF630E0(v1, v2);
  v3 = v0[19];
  v4 = v0[12];
  sub_20B52F9E8(v3, v0[17], &qword_27C76EAA0, &qword_20C17C180);
  v5 = v4;
  sub_20C1378B4();
  sub_20B520158(v3, &qword_27C76EAA0, &qword_20C17C180);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BF4C944()
{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  swift_getErrorValue();
  v1 = sub_20C1356D4();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_20BF646AC(&unk_27C770C28, MEMORY[0x277D51B70], MEMORY[0x277D51B68]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D51B48], v1);
  v3 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v3)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);

    (*(*(v4 - 8) + 56))(v5, 1, 1, v4);
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    sub_20B52F9E8(v6, *(v0 + 136), &qword_27C76EAA0, &qword_20C17C180);
    v8 = v7;
    sub_20C1378B4();
    sub_20B520158(v6, &qword_27C76EAA0, &qword_20C17C180);
  }

  else
  {
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20BF4CB98@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0, &qword_20C17C180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C135FB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  sub_20C13B174();
  v15 = sub_20C136C64();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_20B520158(v4, &qword_27C768690, &unk_20C14FD90);
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_4:
    sub_20B520158(v7, &qword_27C76EAA0, &qword_20C17C180);
    v17 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D51B48], v17);
    *(swift_allocObject() + 16) = v18;
    return sub_20C137CA4();
  }

  sub_20C136B74();
  (*(v16 + 8))(v4, v15);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v21 = *(v9 + 32);
  v21(v14, v7, v8);
  (*(v9 + 16))(v11, v14, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v21((v23 + v22), v11, v8);
  sub_20C137CA4();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_20BF4CFC0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630, &unk_20C16BB70);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764380, &unk_20C155E90);
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v2[12] = *(v5 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764388, &qword_20C1804C0);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4D170, 0, 0);
}

uint64_t sub_20BF4D170(uint64_t a1)
{
  v2 = sub_20C136B04();
  sub_20BF48F44(v2);

  v3 = sub_20C13CCB4();
  v1[18] = v3;

  if (v3 >> 62)
  {
LABEL_21:
    v4 = sub_20C13DB34();
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = 0;
  v33 = MEMORY[0x277D84F90];
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2F5430](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 uniqueName];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v5 == v4)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = sub_20C13C954();
    v30 = v12;

    v31 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_20BC05BA4(0, *(v33 + 2) + 1, 1, v33);
    }

    v14 = *(v33 + 2);
    v13 = *(v33 + 3);
    if (v14 >= v13 >> 1)
    {
      v33 = sub_20BC05BA4((v13 > 1), v14 + 1, 1, v33);
    }

    *(v33 + 2) = v14 + 1;
    v15 = &v33[16 * v14];
    *(v15 + 4) = v31;
    *(v15 + 5) = v30;
  }

  while (v5 != v4);
LABEL_22:
  v32 = v1[17];
  v17 = v1[13];
  v16 = v1[14];
  v19 = v1[11];
  v18 = v1[12];
  v20 = v1[10];
  __swift_project_boxed_opaque_existential_1((v1[6] + 136), *(v1[6] + 160));
  sub_20C139714();

  v21 = swift_allocObject();
  *(v21 + 16) = sub_20BF4DD60;
  *(v21 + 24) = 0;
  (*(v19 + 16))(v17, v16, v20);
  v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v19 + 32))(v24 + v22, v17, v20);
  v25 = (v24 + v23);
  *v25 = sub_20BF62B58;
  v25[1] = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C00, &qword_20C1859A0);
  sub_20C137C94();
  (*(v19 + 8))(v16, v20);
  v27 = swift_task_alloc();
  v1[19] = v27;
  *(v27 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v27 + 24) = 50;
  *(v27 + 32) = 2;
  *(v27 + 40) = 167;
  *(v27 + 48) = v32;
  v28 = swift_task_alloc();
  v1[20] = v28;
  *v28 = v1;
  v28[1] = sub_20BF4D5F0;

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF62C90, v27, v26);
}

uint64_t sub_20BF4D5F0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_20BF4DB28;
  }

  else
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];
    v2[22] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4D768;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4D768()
{
  v14 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[9];
  v4 = v0[6];
  sub_20B51C88C(0, &qword_27C764020, 0x277CE8CC0);
  sub_20B717F18(v1);

  sub_20B718244(v2);

  v5 = sub_20C13D484();

  v0[3] = v5;
  sub_20C13ABB4();
  sub_20C13AB94();
  v6 = objc_allocWithZone(MEMORY[0x277CE8CC0]);
  v7 = sub_20C13C914();

  v8 = [v6 initWithTemplateUniqueName:v7 progressQuantity:0 goalQuantity:0];
  v0[23] = v8;

  sub_20B703DC8(&v13, v8);
  __swift_project_boxed_opaque_existential_1((v4 + 176), *(v4 + 200));
  sub_20C139FD4();
  v9 = swift_task_alloc();
  v0[24] = v9;
  *(v9 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v9 + 24) = 50;
  *(v9 + 32) = 2;
  *(v9 + 40) = 183;
  *(v9 + 48) = v3;
  v10 = swift_task_alloc();
  v0[25] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10, &qword_20C1542C0);
  *v10 = v0;
  v10[1] = sub_20BF4D9C8;

  return MEMORY[0x2822008A0](v0 + 4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF630B0, v9, v11);
}

uint64_t sub_20BF4D9C8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = sub_20BF4DCB4;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];
    v2[27] = v2[4];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4DBCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4DB28()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF4DBCC()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[3];

  v4 = sub_20BF62CA8(v3, v1);
  swift_bridgeObjectRelease_n();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_20BF4DCB4()
{
  v1 = v0[23];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BF4DD60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20BF49284(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_20BF4DD8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20BF4DE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_20C13A4D4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4DEE4, 0, 0);
}

uint64_t sub_20BF4DEE4()
{
  sub_20C13B5D4();
  sub_20BF60DC8("fetchPersonalizationInferenceResponse", 37, 2, &dword_20B517000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_20BF4DFAC;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  return sub_20BF4E0C0(v4, v2, v3);
}

uint64_t sub_20BF4DFAC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20BF646FC;
  }

  else
  {
    v2 = sub_20BF64700;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4E0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_20C137AC4();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CC8, &qword_20C185AB8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4E1D0, 0, 0);
}

uint64_t sub_20BF4E1D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_20BF4E688;

    return sub_20BF4F074();
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 264);

    v6 = sub_20C137AB4();
    if (*(v5 + 16))
    {
      v7 = sub_20B65B5F8(v6);
      if (v8)
      {
        v9 = v0[14];
        v10 = v0[11];
        v11 = v0[12];
        v13 = v0[9];
        v12 = v0[10];
        v0[20] = *(*(v5 + 56) + 8 * v7);

        (*(v11 + 16))(v9, v12, v10);
        v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
        v15 = swift_allocObject();
        v0[21] = v15;
        *(v15 + 16) = v13;
        (*(v11 + 32))(v15 + v14, v9, v10);

        v16 = swift_task_alloc();
        v0[22] = v16;
        *v16 = v0;
        v16[1] = sub_20BF4EBBC;
        v17 = v0[16];

        return MEMORY[0x2821AFC88](v17, &unk_20C185AD0, v15);
      }
    }
  }

  v19 = v0[15];
  v18 = v0[16];
  v20 = sub_20C1377F4();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v18, 1, 1, v20);
  sub_20B52F9E8(v18, v19, &qword_27C770CC8, &qword_20C185AB8);
  v22 = (*(v21 + 48))(v19, 1, v20);
  v24 = v0[15];
  v23 = v0[16];
  if (v22 == 1)
  {
    sub_20B520158(v0[15], &qword_27C770CC8, &qword_20C185AB8);
    v25 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51B58], v25);
    swift_willThrow();
    sub_20B520158(v23, &qword_27C770CC8, &qword_20C185AB8);
  }

  else
  {
    v28 = v0[8];
    sub_20B520158(v0[16], &qword_27C770CC8, &qword_20C185AB8);
    (*(v21 + 32))(v28, v24, v20);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_20BF4E688()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_20BF4EF5C;
  }

  else
  {

    v2 = sub_20BF4E7A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4E7A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 264);

    v3 = sub_20C137AB4();
    if (*(v2 + 16))
    {
      v4 = sub_20B65B5F8(v3);
      if (v5)
      {
        v6 = v0[14];
        v7 = v0[11];
        v8 = v0[12];
        v10 = v0[9];
        v9 = v0[10];
        v0[20] = *(*(v2 + 56) + 8 * v4);

        (*(v8 + 16))(v6, v9, v7);
        v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
        v12 = swift_allocObject();
        v0[21] = v12;
        *(v12 + 16) = v10;
        (*(v8 + 32))(v12 + v11, v6, v7);

        v13 = swift_task_alloc();
        v0[22] = v13;
        *v13 = v0;
        v13[1] = sub_20BF4EBBC;
        v14 = v0[16];

        return MEMORY[0x2821AFC88](v14, &unk_20C185AD0, v12);
      }
    }
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = sub_20C1377F4();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v15, 1, 1, v17);
  sub_20B52F9E8(v15, v16, &qword_27C770CC8, &qword_20C185AB8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v21 = v0[15];
  v20 = v0[16];
  if (v19 == 1)
  {
    sub_20B520158(v0[15], &qword_27C770CC8, &qword_20C185AB8);
    v22 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51B58], v22);
    swift_willThrow();
    sub_20B520158(v20, &qword_27C770CC8, &qword_20C185AB8);
  }

  else
  {
    v25 = v0[8];
    sub_20B520158(v0[16], &qword_27C770CC8, &qword_20C185AB8);
    (*(v18 + 32))(v25, v21, v17);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_20BF4EBBC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20BF4EFE4;
  }

  else
  {

    v2 = sub_20BF4ECE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4ECE0(__n128 a1)
{
  v3 = v1[15];
  v2 = v1[16];
  v4 = sub_20C1377F4();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 0, 1, v4);
  sub_20B52F9E8(v2, v3, &qword_27C770CC8, &qword_20C185AB8);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v8 = v1[15];
  v7 = v1[16];
  if (v6 == 1)
  {
    sub_20B520158(v1[15], &qword_27C770CC8, &qword_20C185AB8);
    v9 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51B58], v9);
    swift_willThrow();
    sub_20B520158(v7, &qword_27C770CC8, &qword_20C185AB8);
  }

  else
  {
    v12 = v1[8];
    sub_20B520158(v1[16], &qword_27C770CC8, &qword_20C185AB8);
    (*(v5 + 32))(v12, v8, v4);
  }

  v11 = v1[1];

  return v11();
}

uint64_t sub_20BF4EF5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BF4EFE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BF4F074()
{
  v1[7] = v0;
  v2 = sub_20C13A4D4();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4F134, 0, 0);
}

uint64_t sub_20BF4F134()
{
  sub_20C13B5D4();
  sub_20BF60DC8("syncCatalogIfNeeded", 19, 2, &dword_20B517000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_20BF4F1F4;
  v2 = v0[7];

  return sub_20BF5FC14(v1, v2);
}

uint64_t sub_20BF4F1F4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_20BF4F3C8;
  }

  else
  {
    v2 = sub_20BF4F308;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4F308()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF4F3C8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A624();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF4F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CD0, &qword_20C185AD8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CD8, &unk_20C185AE0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0, &unk_20C155510);
  v3[20] = swift_task_alloc();
  v4 = sub_20C1377F4();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_20C132E94();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_20C137AC4();
  v3[27] = v6;
  v7 = *(v6 - 8);
  v3[28] = v7;
  v3[29] = *(v7 + 64);
  v3[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A8, &qword_20C185AF0);
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770BC0, &qword_20C1858E0);
  v3[34] = swift_task_alloc();
  v9 = sub_20C137794();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4F814, 0, 0);
}

uint64_t sub_20BF4F814()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[33];
    v2 = v0[30];
    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[17];
    v6 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(v2, v5, v3);
    v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    (*(v4 + 32))(v8 + v7, v2, v3);
    v9 = swift_allocObject();
    *(v9 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v9 + 24) = 50;
    *(v9 + 32) = 2;
    *(v9 + 40) = 354;
    *(v9 + 48) = &unk_20C185AF8;
    *(v9 + 56) = v8;
    sub_20C137C94();

    v10 = swift_task_alloc();
    v0[38] = v10;
    *(v10 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v10 + 24) = 50;
    *(v10 + 32) = 2;
    *(v10 + 40) = 225;
    *(v10 + 48) = v1;
    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = sub_20BF4FC1C;
    v12 = v0[34];
    v13 = v0[35];

    return MEMORY[0x2822008A0](v12, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF64480, v10, v13);
  }

  else
  {
    v14 = v0[34];
    (*(v0[36] + 56))(v14, 1, 1, v0[35]);
    sub_20B520158(v14, &unk_27C770BC0, &qword_20C1858E0);
    v15 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51B58], v15);
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_20BF4FC1C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = sub_20BF502E4;
  }

  else
  {
    v5 = v2[32];
    v4 = v2[33];
    v6 = v2[31];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4FDA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4FDA8()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  (*(v3 + 56))(v5, 0, 1, v4);
  (*(v3 + 32))(v2, v5, v4);
  sub_20BF646AC(&qword_27C770CF0, MEMORY[0x277D53618], MEMORY[0x277D53610]);
  v6 = sub_20C137524();
  if (v1)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
LABEL_13:

    v40 = v0[1];

    return v40();
  }

  v8 = v6;
  v9 = v7;
  v10 = objc_opt_self();
  v0[41] = v10;
  v11 = sub_20C132C34();
  v12 = sub_20B7197A0(v8, v9);
  v0[12] = 0;
  v13 = [v10 JSONObjectWithData:v11 options:0 error:{v0 + 12, v12}];

  v14 = v0[12];
  if (!v13)
  {
    v26 = v0[36];
    v25 = v0[37];
    v27 = v0[35];
    v28 = v14;
    sub_20C132A44();

    swift_willThrow();
    (*(v26 + 8))(v25, v27);
    goto LABEL_13;
  }

  v15 = v14;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CF8, &qword_20C185B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = v0[36];
    v29 = v0[37];
    v31 = v0[35];
    v32 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    v34 = v33;
    v35 = MEMORY[0x277D51B20];
LABEL_12:
    (*(*(v32 - 8) + 104))(v34, *v35, v32);
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
    goto LABEL_13;
  }

  v17 = v0[25];
  v16 = v0[26];
  v18 = v0[24];
  v19 = v0[13];
  v0[42] = v19;
  sub_20C132E64();
  sub_20C132E44();
  v20 = *(v17 + 8);
  v0[43] = v20;
  v0[44] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v18);
  sub_20C13CE84();
  v0[45] = v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[46] = Strong;
  if (!Strong)
  {

    v36 = v0[43];
    v37 = v0[26];
    v38 = v0[24];
    sub_20C132E64();
    sub_20C132E44();
    v36(v37, v38);
    sub_20C13CE84();
    v30 = v0[36];
    v29 = v0[37];
    v31 = v0[35];
    v32 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    v34 = v39;
    v35 = MEMORY[0x277D51B28];
    goto LABEL_12;
  }

  v23 = swift_task_alloc();
  v0[47] = v23;
  *v23 = v0;
  v23[1] = sub_20BF50404;

  return sub_20BF50C80(v19);
}

uint64_t sub_20BF502E4()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF50404(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {

    v5 = sub_20BF50B60;
  }

  else
  {

    *(v4 + 392) = a1;
    v5 = sub_20BF505AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BF505AC(uint64_t a1)
{
  v3 = *(v1 + 384);
  v2 = *(v1 + 392);
  v4 = *(v1 + 344);
  v5 = *(v1 + 208);
  v6 = *(v1 + 192);
  sub_20C132E64();
  sub_20C132E44();
  v4(v5, v6);
  sub_20C13CE84();
  if (!v2 || (v7 = [v2 data]) == 0)
  {
    v17 = *(v1 + 288);
    v16 = *(v1 + 296);
    v18 = *(v1 + 280);
    v19 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51B28], v19);
LABEL_7:
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    goto LABEL_8;
  }

  v8 = *(v1 + 328);
  v9 = v7;
  sub_20C13C754();

  v10 = sub_20C13C744();

  *(v1 + 112) = 0;
  v11 = [v8 dataWithJSONObject:v10 options:0 error:v1 + 112];

  v12 = *(v1 + 112);
  if (!v11)
  {
    v17 = *(v1 + 288);
    v16 = *(v1 + 296);
    v18 = *(v1 + 280);
    v23 = v12;
    sub_20C132A44();

    goto LABEL_7;
  }

  v13 = sub_20C132C54();
  v15 = v14;

  sub_20B719888(v13, v15);
  sub_20BF646AC(&qword_27C770D00, MEMORY[0x277D536B8], MEMORY[0x277D536B0]);
  sub_20C137534();
  if (v3)
  {
    (*(*(v1 + 288) + 8))(*(v1 + 296), *(v1 + 280));

    sub_20B7197A0(v13, v15);
LABEL_8:

    v21 = *(v1 + 8);
    goto LABEL_9;
  }

  v24 = *(v1 + 288);
  v34 = *(v1 + 280);
  v35 = *(v1 + 296);
  v26 = *(v1 + 176);
  v25 = *(v1 + 184);
  v27 = *(v1 + 160);
  v33 = *(v1 + 168);
  v28 = *(v1 + 144);
  v29 = *(v1 + 152);
  v30 = sub_20C132EE4();
  (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770D08, &qword_20C185B10);
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  v32 = sub_20C136024();
  (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  sub_20C1377E4();
  sub_20B7197A0(v13, v15);

  sub_20B520158(v28, &qword_27C770CD0, &qword_20C185AD8);
  sub_20B520158(v29, &qword_27C770CD8, &unk_20C185AE0);
  sub_20B520158(v27, &unk_27C770CE0, &unk_20C155510);
  (*(v26 + 8))(v25, v33);
  (*(v24 + 8))(v35, v34);

  v21 = *(v1 + 8);
LABEL_9:

  return v21();
}

uint64_t sub_20BF50B60()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF50C80(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_20C13A4D4();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF50D40, 0, 0);
}

uint64_t sub_20BF50D40()
{
  v7 = *(v0 + 104);
  sub_20C13B5D4();
  sub_20BF60DC8("enqueuePersonalizationInferenceRequest", 38, 2, &dword_20B517000, 1, (v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v1[1] = vextq_s8(v7, v7, 8uLL);
  v2 = sub_20C13B3A4();
  v3 = MEMORY[0x277D4F7C0];
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_20C13B394();
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  v5 = sub_20B51C88C(0, &qword_27C770D10, 0x277CEE4A0);
  *v4 = v0;
  v4[1] = sub_20BF50EBC;

  return MEMORY[0x2821AEAF8](v0 + 96, &unk_20C185B20, v1, 3, v0 + 56, sub_20BF60CE4, 0, v5);
}

uint64_t sub_20BF50EBC()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  if (v0)
  {
    v3 = sub_20BF510A8;
  }

  else
  {

    v3 = sub_20BF50FE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF50FE0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[12];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_20BF510A8()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A624();
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF511A4(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = sub_20C1361E4();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120, &qword_20C155C80);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v5 = sub_20C137684();
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  v6 = sub_20C1378F4();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF513B0, 0, 0);
}

uint64_t sub_20BF513B0(__n128 a1)
{
  v43 = v1;
  v42 = *MEMORY[0x277D85DE8];
  v2 = v1[38];
  v3 = v1[39];
  v4 = v1[37];
  sub_20C136AD4();
  v5 = sub_20C1378D4();
  v6 = (*(v2 + 8))(v3, v4);
  v7 = *(v5 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v35 = &v35;
    v36 = v8;
    v9 = v1[35];
    MEMORY[0x28223BE20](v6);
    v37 = &v35 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v10);
    v11 = 0;
    v41 = v5;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    v5 = (v12 + 63) >> 6;
    v40 = v9 + 16;
    v38 = 0;
    v39 = v9 + 8;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v18 = v15 | (v11 << 6);
      v19 = v1[36];
      v20 = v1[34];
      (*(v9 + 16))(v19, *(v41 + 48) + *(v9 + 72) * v18, v20);
      v21 = sub_20C137664();
      (*(v9 + 8))(v19, v20);
      if ((v21 & 1) == 0)
      {
        *&v37[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_16:
          v23 = sub_20BC12300(v37, v36, v38, v41);
          goto LABEL_17;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v5)
      {
        goto LABEL_16;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  v33 = sub_20BF61A7C(v32, v8, v5, sub_20BF51F98, 0, sub_20BEE1B84);

  MEMORY[0x20F2F6A40](v32, -1, -1);
  v23 = v33;
LABEL_17:
  v1[40] = v23;
  if (*(v23 + 16))
  {
    v24 = v1[33];
    v25 = v1[27];
    v26 = sub_20BF495CC(v23);
    __swift_project_boxed_opaque_existential_1((v25 + 176), *(v25 + 200));
    sub_20B527580(v26);

    sub_20C139F64();

    v27 = swift_task_alloc();
    v1[41] = v27;
    *(v27 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v27 + 24) = 50;
    *(v27 + 32) = 2;
    *(v27 + 40) = 268;
    *(v27 + 48) = v24;
    v28 = swift_task_alloc();
    v1[42] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BE8, &qword_20C185988);
    *v28 = v1;
    v28[1] = sub_20BF518D4;

    return MEMORY[0x2822008A0](v1 + 25, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF64708, v27, v29);
  }

  else
  {

    v30 = v1[1];
    v31 = MEMORY[0x277D84F90];

    return v30(v31);
  }
}

uint64_t sub_20BF518D4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = sub_20BF51EBC;
  }

  else
  {
    v5 = v2[32];
    v4 = v2[33];
    v6 = v2[31];
    v2[44] = v2[25];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF51A78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF51A78()
{
  v51 = v0;
  v50[3] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v47 = v1;
  v49 = MEMORY[0x277D84FA0];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v46 = *(v0 + 232);
  v44 = (v46 + 8);

  v7 = 0;
  v45 = v2;
  while (v5)
  {
LABEL_11:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    (*(v46 + 16))(*(v0 + 240), *(v47 + 48) + *(v46 + 72) * (v13 | (v7 << 6)), *(v0 + 224));
    v14 = sub_20C1361D4();
    v16 = v15;
    *(v0 + 152) = v14;
    *(v0 + 160) = v15;
    v18 = v17 & 1;
    *(v0 + 168) = v17 & 1;
    *(v0 + 89) = 0;
    sub_20B590B28();
    sub_20B590B7C();
    v19 = sub_20C133C04();
    sub_20B583F4C(v14, v16, v18);
    if (v19 & 1) != 0 || (v20 = sub_20C1361D4(), v22 = v21, *(v0 + 176) = v20, *(v0 + 184) = v21, v24 = v23 & 1, *(v0 + 192) = v23 & 1, *(v0 + 90) = 1, v25 = sub_20C133C04(), sub_20B583F4C(v20, v22, v24), (v25))
    {
      v8 = *(v0 + 240);
      v9 = *(v0 + 224);
      v10 = sub_20C1361A4();
      sub_20B527618(v50, v10, v11);

      (*v44)(v8, v9);
    }

    else
    {
      (*v44)(*(v0 + 240), *(v0 + 224));
    }

    v2 = v45;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v7;
    if (v5)
    {
      v7 = v12;
      goto LABEL_11;
    }
  }

  v26 = *(v0 + 320);

  v27 = sub_20BF63D54(v26, v49);

  v28 = sub_20C136714();
  sub_20BF631EC(v28, v27, v0 + 96);

  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v31 = *(v0 + 112);
  v32 = *(v0 + 120);
  v33 = *(v0 + 136);
  v48 = *(v0 + 128);
  v34 = sub_20BF61D64(v29, v30, v31, v32, v48, v33, *(v0 + 144));
  if (v34)
  {
    v35 = v34;
    v36 = *(v0 + 280);
    v37 = sub_20BEDEEE0(v34, 0);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    sub_20BD12744(v29, v30, v31);
    sub_20BD12744(v32, v48, v33);

    sub_20BF62008((v0 + 16), v37 + v38, v35);
    v40 = v39;
    sub_20B520158(v0 + 16, &unk_27C770C50, &qword_20C1859D8);
    if (v40 == v35)
    {
      sub_20B526EA4(v29, v30, v31);
      sub_20B526EA4(v32, v48, v33);

      v41 = v37;
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  sub_20B526EA4(v29, v30, v31);
  sub_20B526EA4(v32, v48, v33);

  v41 = MEMORY[0x277D84F90];
LABEL_18:

  v42 = *(v0 + 8);

  return v42(v41);
}

uint64_t sub_20BF51EBC()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF51FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690, &unk_20C14FD90);
    v13 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D51B88], v13);
    *(swift_allocObject() + 16) = v14;
    sub_20C136724();
    return sub_20C137CA4();
  }

  else
  {
    v22[1] = a1;
    v17 = *(v7 + 32);
    v17(v12, v5, v6);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v9, v12, v6);
    v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v17((v20 + v19), v9, v6);
    v21 = swift_allocObject();
    *(v21 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v21 + 24) = 50;
    *(v21 + 32) = 2;
    *(v21 + 40) = 285;
    *(v21 + 48) = &unk_20C185A18;
    *(v21 + 56) = v20;
    sub_20C136724();
    sub_20C137C94();
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_20BF5237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[365] = a3;
  v3[359] = a2;
  v3[353] = a1;
  v4 = sub_20C13BB84();
  v3[371] = v4;
  v3[377] = *(v4 - 8);
  v3[383] = swift_task_alloc();
  v3[389] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C80, &unk_20C180510);
  v3[395] = v5;
  v3[396] = *(v5 - 8);
  v3[397] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C88, &unk_20C185A28);
  v3[398] = swift_task_alloc();
  v6 = sub_20C137954();
  v3[399] = v6;
  v3[400] = *(v6 - 8);
  v3[401] = swift_task_alloc();
  v7 = sub_20C1379B4();
  v3[402] = v7;
  v3[403] = *(v7 - 8);
  v3[404] = swift_task_alloc();
  v3[405] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0, &qword_20C17C180);
  v3[406] = swift_task_alloc();
  v3[407] = swift_task_alloc();
  v8 = sub_20C136C64();
  v3[408] = v8;
  v9 = *(v8 - 8);
  v3[409] = v9;
  v3[410] = *(v9 + 64);
  v3[411] = swift_task_alloc();
  v3[412] = swift_task_alloc();
  v3[413] = swift_task_alloc();
  v3[414] = swift_task_alloc();
  v10 = sub_20C136374();
  v3[415] = v10;
  v3[416] = *(v10 - 8);
  v3[417] = swift_task_alloc();
  v3[418] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v3[419] = swift_task_alloc();
  v3[420] = swift_task_alloc();
  v11 = sub_20C132E94();
  v3[421] = v11;
  v3[422] = *(v11 - 8);
  v3[423] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  v3[424] = swift_task_alloc();
  sub_20C132EE4();
  v3[425] = swift_task_alloc();
  v12 = sub_20C137AC4();
  v3[426] = v12;
  v3[427] = *(v12 - 8);
  v3[428] = swift_task_alloc();
  v3[429] = swift_task_alloc();
  v13 = sub_20C137B04();
  v3[430] = v13;
  v3[431] = *(v13 - 8);
  v3[432] = swift_task_alloc();
  v3[433] = sub_20C1369B4();
  v3[434] = swift_task_alloc();
  v14 = sub_20C135334();
  v3[435] = v14;
  v3[436] = *(v14 - 8);
  v3[437] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370, &qword_20C153BB0);
  v3[438] = swift_task_alloc();
  v15 = sub_20C136F94();
  v3[439] = v15;
  v3[440] = *(v15 - 8);
  v3[441] = swift_task_alloc();
  v3[442] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF529D4, 0, 0);
}

uint64_t sub_20BF529D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[443] = Strong;
  if (!Strong)
  {
    v17 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51B98], v17);
    swift_willThrow();
LABEL_17:

    v50 = v0[1];

    return v50();
  }

  v2 = Strong;
  v3 = v0[442];
  v4 = v0[441];
  v5 = v0[440];
  v6 = v0[439];
  sub_20C1369E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C98, &qword_20C185A38);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C1517D0;
  sub_20C136F44();
  sub_20C136F54();
  sub_20C136F74();
  v0[335] = v7;
  sub_20BF646AC(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CA8, &qword_20C185A40);
  sub_20B816128(&qword_27C770CB0, &qword_27C770CA8, &qword_20C185A40);
  sub_20C13DA94();
  v8 = sub_20C13DA74();
  v9 = *(v5 + 8);
  v9(v4, v6);
  v9(v3, v6);
  v10 = v0[365];
  if ((v8 & 1) == 0)
  {
    v19 = v0[411];
    v20 = v0[409];
    v21 = v0[408];
    sub_20C13B454();
    (*(v20 + 16))(v19, v10, v21);
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[442];
      v25 = v0[411];
      v26 = v0[409];
      v75 = v0[439];
      v76 = v0[408];
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      sub_20C1369E4();
      v28 = sub_20C136F84();
      v9(v24, v75);
      (*(v26 + 8))(v25, v76);
      *(v27 + 4) = v28;
      _os_log_impl(&dword_20B517000, v22, v23, "Connected user does not support personalized workout plans: %lld", v27, 0xCu);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    else
    {
      (*(v0[409] + 8))(v0[411], v0[408]);
    }

    v31 = v0[389];
    v32 = v0[377];
    v33 = v0[371];

    (*(v32 + 8))(v31, v33);
    v34 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    v36 = v35;
    v37 = MEMORY[0x277D51B30];
    goto LABEL_16;
  }

  v11 = v0[438];
  v12 = v0[437];
  v13 = v0[436];
  v14 = v0[435];
  sub_20C136C24();
  sub_20C135314();
  (*(v13 + 8))(v12, v14);
  v15 = sub_20C135D54();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    sub_20B520158(v0[438], &unk_27C762370, &qword_20C153BB0);
LABEL_15:
    v34 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    v36 = v49;
    v37 = MEMORY[0x277D51B38];
LABEL_16:
    (*(*(v34 - 8) + 104))(v36, *v37, v34);
    swift_willThrow();

    goto LABEL_17;
  }

  sub_20C135D44();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v0[438];
  if (EnumCaseMultiPayload == 1)
  {
    sub_20BBC2094(v0[434]);
    (*(v16 + 8))(v30, v15);
    goto LABEL_15;
  }

  v38 = v0[432];
  v39 = v0[431];
  v40 = v0[430];
  (*(v39 + 32))(v38, v0[434], v40);
  v41 = sub_20C137AF4();
  v43 = v42;
  v0[444] = v41;
  v0[445] = v42;
  (*(v39 + 8))(v38, v40);
  (*(v16 + 8))(v30, v15);
  if (!v43)
  {
    goto LABEL_15;
  }

  v44 = v0[424];
  sub_20C132ED4();
  sub_20C137A74();
  sub_20C136AF4();
  v45 = sub_20C135734();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v44, 1, v45);
  v48 = v0[424];
  if (v47 == 1)
  {
    sub_20B520158(v0[424], &unk_27C762390, &unk_20C15EC90);
LABEL_22:
    v56 = v0[420];
    v57 = sub_20C133954();
    (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
    v72 = 0;
    goto LABEL_23;
  }

  v52 = v0[423];
  v53 = v0[422];
  v54 = v0[421];
  sub_20C132E84();
  v55 = sub_20C135704();
  (*(v53 + 8))(v52, v54);
  (*(v46 + 8))(v48, v45);
  if ((v55 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_20C136A54();
  v72 = 1;
LABEL_23:
  v73 = v0[419];
  v74 = v0[420];
  v58 = v0[414];
  v69 = v0[413];
  v71 = v0[412];
  v59 = v0[409];
  v60 = v0[408];
  v61 = *(v59 + 16);
  v77 = v0[365];
  v61(v58);
  v70 = v61;
  v62 = *(v59 + 80);
  v63 = swift_allocObject();
  v0[446] = v63;
  *(v63 + 16) = v2;
  v64 = *(v59 + 32);
  v64(v63 + ((v62 + 24) & ~v62), v58, v60);

  swift_asyncLet_begin();
  (v61)(v69, v77, v60);
  v65 = (v62 + 32) & ~v62;
  v66 = swift_allocObject();
  v0[447] = v66;
  *(v66 + 16) = v72;
  *(v66 + 24) = v2;
  v64(v66 + v65, v69, v60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BD0, &qword_20C185958);
  swift_asyncLet_begin();
  v67 = swift_allocObject();
  v0[448] = v67;
  *(v67 + 16) = v72;
  *(v67 + 24) = v2;

  swift_asyncLet_begin();
  v70(v71, v77, v60);
  v68 = swift_allocObject();
  v0[449] = v68;
  *(v68 + 16) = v72;
  *(v68 + 24) = v2;
  v64(v68 + v65, v71, v60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CB8, &unk_20C185A88);
  swift_asyncLet_begin();
  sub_20B52F9E8(v74, v73, &unk_27C76A970, &qword_20C14FC10);

  return MEMORY[0x282200930](v0 + 82, v0 + 341, sub_20BF53618, v0 + 322);
}

uint64_t sub_20BF53618()
{
  v1[450] = v0;
  if (v0)
  {
    sub_20B520158(v1[419], &unk_27C76A970, &qword_20C14FC10);

    return MEMORY[0x2822009F8](sub_20BF54648, 0, 0);
  }

  else
  {
    v1[451] = v1[341];

    v2 = v1[418];

    return MEMORY[0x282200930](v1 + 2, v2, sub_20BF536EC, v1 + 354);
  }
}

uint64_t sub_20BF536EC()
{
  v1[452] = v0;
  if (v0)
  {
    sub_20B520158(v1[419], &unk_27C76A970, &qword_20C14FC10);

    return MEMORY[0x2822009F8](sub_20BF547CC, 0, 0);
  }

  else
  {
    (*(v1[416] + 16))(v1[417], v1[418], v1[415]);
    v2 = v1[407];

    return MEMORY[0x282200930](v1 + 162, v2, sub_20BF537E0, v1 + 360);
  }
}

uint64_t sub_20BF537E0()
{
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BF54950, 0, 0);
  }

  else
  {
    sub_20B52F9E8(*(v1 + 3256), *(v1 + 3248), &qword_27C76EAA0, &qword_20C17C180);

    return MEMORY[0x282200930](v1 + 1936, v1 + 2776, sub_20BF538A4, v1 + 2928);
  }
}

uint64_t sub_20BF538A4()
{
  v1[453] = v0;
  if (v0)
  {
    v2 = v1[419];
    v3 = v1[417];
    v4 = v1[416];
    v5 = v1[415];
    v6 = v1[406];

    sub_20B520158(v6, &qword_27C76EAA0, &qword_20C17C180);
    (*(v4 + 8))(v3, v5);
    sub_20B520158(v2, &unk_27C76A970, &qword_20C14FC10);
    v7 = sub_20BF549F8;
  }

  else
  {
    v7 = sub_20BF5399C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20BF5399C()
{
  v11 = v0[428];
  v1 = v0[427];
  v12 = v0[426];
  v13 = v0[429];
  v2 = v0[404];
  v3 = v0[403];
  v4 = v0[402];
  v5 = v0[398];
  v14 = v0[397];
  v15 = v0[443];

  sub_20C1379A4();
  (*(v1 + 16))(v11, v13, v12);
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_20C137944();
  __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
  sub_20C139934();
  v6 = swift_task_alloc();
  v0[454] = v6;
  *(v6 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v6 + 24) = 50;
  *(v6 + 32) = 2;
  *(v6 + 40) = 330;
  *(v6 + 48) = v14;
  v7 = swift_task_alloc();
  v0[455] = v7;
  v8 = sub_20C136724();
  *v7 = v0;
  v7[1] = sub_20BF53BEC;
  v9 = v0[353];

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF63A1C, v6, v8);
}

uint64_t sub_20BF53BEC()
{
  v2 = *v1;
  *(*v1 + 3648) = v0;

  if (v0)
  {

    v3 = sub_20BF54128;
  }

  else
  {
    v4 = v2[397];
    v5 = v2[396];
    v6 = v2[395];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF53D48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF53D48()
{
  v1 = v0[404];
  v2 = v0[403];
  v3 = v0[402];
  (*(v0[400] + 8))(v0[401], v0[399]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x282200920](v0 + 242, v0 + 347, sub_20BF53DF4, v0 + 372);
}

uint64_t sub_20BF53EC4()
{
  v1 = v0[429];
  v2 = v0[427];
  v3 = v0[426];
  v4 = v0[420];

  sub_20B520158(v4, &unk_27C76A970, &qword_20C14FC10);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BF54128()
{
  v1 = v0[404];
  v2 = v0[403];
  v3 = v0[402];
  v4 = v0[401];
  v5 = v0[400];
  v6 = v0[399];
  (*(v0[396] + 8))(v0[397], v0[395]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[456];
  v0[457] = v7;
  sub_20C13B494();
  v8 = v7;
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20B517000, v9, v10, "[Inference] Error creating environment: %@", v11, 0xCu);
    sub_20B520158(v12, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  v15 = v0[383];
  v16 = v0[377];
  v17 = v0[371];

  (*(v16 + 8))(v15, v17);
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 242, v0 + 347, sub_20BF54318, v0 + 330);
}

uint64_t sub_20BF543E8()
{
  v1 = v0[429];
  v2 = v0[427];
  v3 = v0[426];
  v4 = v0[420];

  sub_20B520158(v4, &unk_27C76A970, &qword_20C14FC10);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BF54648(uint64_t a1)
{
  v2 = v1[450];
  v1[457] = v2;
  sub_20C13B494();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20B517000, v4, v5, "[Inference] Error creating environment: %@", v6, 0xCu);
    sub_20B520158(v7, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  v10 = v1[383];
  v11 = v1[377];
  v12 = v1[371];

  (*(v11 + 8))(v10, v12);
  swift_willThrow();

  return MEMORY[0x282200920](v1 + 242, v1 + 347, sub_20BF54318, v1 + 330);
}

uint64_t sub_20BF547CC(uint64_t a1)
{
  v2 = v1[452];
  v1[457] = v2;
  sub_20C13B494();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20B517000, v4, v5, "[Inference] Error creating environment: %@", v6, 0xCu);
    sub_20B520158(v7, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  v10 = v1[383];
  v11 = v1[377];
  v12 = v1[371];

  (*(v11 + 8))(v10, v12);
  swift_willThrow();

  return MEMORY[0x282200920](v1 + 242, v1 + 347, sub_20BF54318, v1 + 330);
}

uint64_t sub_20BF54950()
{
  v1 = *(v0 + 3248);
  v2 = sub_20C135FB4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  return MEMORY[0x282200930](v0 + 1936, v0 + 2776, sub_20BF538A4, v0 + 2928);
}

uint64_t sub_20BF549F8(uint64_t a1)
{
  v2 = v1[453];
  v1[457] = v2;
  sub_20C13B494();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20B517000, v4, v5, "[Inference] Error creating environment: %@", v6, 0xCu);
    sub_20B520158(v7, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  v10 = v1[383];
  v11 = v1[377];
  v12 = v1[371];

  (*(v11 + 8))(v10, v12);
  swift_willThrow();

  return MEMORY[0x282200920](v1 + 242, v1 + 347, sub_20BF54318, v1 + 330);
}

uint64_t sub_20BF54B7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20BF4AF7C(a1);
}

uint64_t sub_20BF54C18(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20BF54C40, 0, 0);
}

uint64_t sub_20BF54C40()
{
  if (*(v0 + 56) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_20BF54D24;
    v2 = *(v0 + 32);

    return sub_20BF4CFC0(v2);
  }

  else
  {
    **(v0 + 16) = MEMORY[0x277D84F90];
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BF54D24(uint64_t a1)
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
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_20BF646F8, 0, 0);
  }
}

uint64_t sub_20BF54E70(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C20, &qword_20C1804D0);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF54F40, 0, 0);
}

uint64_t sub_20BF54F40()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 48);
    sub_20BF4CB98(v1);
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *(v2 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v2 + 24) = 50;
    *(v2 + 32) = 2;
    *(v2 + 40) = 317;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    v4 = sub_20C135FB4();
    *(v0 + 72) = v4;
    *v3 = v0;
    v3[1] = sub_20BC9C068;
    v5 = *(v0 + 16);

    return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF6470C, v2, v4);
  }

  else
  {
    v6 = sub_20C135FB4();
    (*(*(v6 - 8) + 56))(*(v0 + 16), 1, 1);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_20BF550F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20BF55120, 0, 0);
}

uint64_t sub_20BF55120()
{
  if (*(v0 + 56) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_20BF55204;
    v2 = *(v0 + 32);

    return sub_20BF511A4(v2);
  }

  else
  {
    **(v0 + 16) = MEMORY[0x277D84F90];
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BF55204(uint64_t a1)
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
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_20BF55350, 0, 0);
  }
}

uint64_t sub_20BF55374@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690, &unk_20C14FD90);
    v13 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D51B88], v13);
    *(swift_allocObject() + 16) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C78, &qword_20C1859F8);
    return sub_20C137CA4();
  }

  else
  {
    v22[1] = a1;
    v17 = *(v7 + 32);
    v17(v12, v5, v6);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v9, v12, v6);
    v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v17((v20 + v19), v9, v6);
    v21 = swift_allocObject();
    *(v21 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v21 + 24) = 50;
    *(v21 + 32) = 2;
    *(v21 + 40) = 343;
    *(v21 + 48) = &unk_20C185A08;
    *(v21 + 56) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C78, &qword_20C1859F8);
    sub_20C137C94();
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_20BF5573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_20C13A4D4();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF55800, 0, 0);
}

uint64_t sub_20BF55800()
{
  sub_20C13B5D4();
  sub_20BF60DC8("fetchPersonalizationAwardProgressReferences", 43, 2, &dword_20B517000, 1, v0 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_20BF55A60;
    v3 = v0[12];

    return sub_20BF4CFC0(v3);
  }

  else
  {
    v5 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D51B50], v5);
    swift_willThrow();
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_20C13A634();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_20C13A624();
    (*(v8 + 8))(v7, v9);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20BF55A60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_20BF55C78;
  }

  else
  {

    *(v4 + 152) = a1;
    v5 = sub_20BF55B90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BF55B90()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = sub_20B71A120(v0[19]);

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v4 = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BF55C78()
{

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A624();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF55D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_20C13A4D4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF55E3C, 0, 0);
}

uint64_t sub_20BF55E3C()
{
  sub_20C13B5D4();
  sub_20BF60DC8("makePersonalizationInferenceRequest", 35, 2, &dword_20B517000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_20BF55F04;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  return sub_20BF561D0(v4, v2, v3);
}

uint64_t sub_20BF55F04()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20BF560D8;
  }

  else
  {
    v2 = sub_20BF56018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF56018()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF560D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A624();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF561D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770BC0, &qword_20C1858E0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF56270, 0, 0);
}

uint64_t sub_20BF56270()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20BF5646C;
    v4 = v0[7];
    v3 = v0[8];

    return sub_20BF566F4(v3, v4);
  }

  else
  {
    v6 = v0[8];
    v7 = sub_20C137794();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_20B520158(v6, &unk_27C770BC0, &qword_20C1858E0);
    v8 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51B58], v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20BF5646C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_20BF56688;
  }

  else
  {

    v2 = sub_20BF56588;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF56588()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_20C137794();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BF56688()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BF566F4(uint64_t a1, uint64_t a2)
{
  v3[589] = v2;
  v3[583] = a2;
  v3[577] = a1;
  sub_20C132EE4();
  v3[595] = swift_task_alloc();
  v4 = sub_20C137A44();
  v3[601] = v4;
  v3[607] = *(v4 - 8);
  v3[613] = swift_task_alloc();
  v3[619] = swift_task_alloc();
  v5 = sub_20C1379D4();
  v3[625] = v5;
  v3[631] = *(v5 - 8);
  v3[637] = swift_task_alloc();
  v3[643] = swift_task_alloc();
  v6 = sub_20C136ED4();
  v3[649] = v6;
  v3[655] = *(v6 - 8);
  v3[661] = swift_task_alloc();
  v3[667] = swift_task_alloc();
  v3[673] = swift_task_alloc();
  v7 = sub_20C1378C4();
  v3[679] = v7;
  v3[685] = *(v7 - 8);
  v3[691] = swift_task_alloc();
  v3[697] = swift_task_alloc();
  v3[703] = swift_task_alloc();
  v8 = sub_20C1376C4();
  v3[709] = v8;
  v3[715] = *(v8 - 8);
  v3[721] = swift_task_alloc();
  v3[727] = swift_task_alloc();
  v3[733] = swift_task_alloc();
  v9 = sub_20C1376A4();
  v3[739] = v9;
  v3[745] = *(v9 - 8);
  v3[751] = swift_task_alloc();
  v3[757] = swift_task_alloc();
  v3[763] = swift_task_alloc();
  v10 = sub_20C136374();
  v3[769] = v10;
  v3[775] = *(v10 - 8);
  v3[781] = swift_task_alloc();
  v3[787] = swift_task_alloc();
  v3[793] = swift_task_alloc();
  v11 = sub_20C135D34();
  v3[799] = v11;
  v3[805] = *(v11 - 8);
  v3[811] = swift_task_alloc();
  v3[817] = swift_task_alloc();
  v3[823] = swift_task_alloc();
  v12 = sub_20C137B04();
  v3[829] = v12;
  v3[835] = *(v12 - 8);
  v3[841] = swift_task_alloc();
  v3[847] = sub_20C1369B4();
  v3[853] = swift_task_alloc();
  v3[859] = swift_task_alloc();
  v13 = sub_20C135334();
  v3[865] = v13;
  v3[871] = *(v13 - 8);
  v3[877] = swift_task_alloc();
  v3[883] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370, &qword_20C153BB0);
  v3[889] = swift_task_alloc();
  v3[895] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v3[901] = swift_task_alloc();
  v14 = sub_20C136C64();
  v3[907] = v14;
  v15 = *(v14 - 8);
  v3[913] = v15;
  v3[919] = *(v15 + 64);
  v3[925] = swift_task_alloc();
  v3[931] = swift_task_alloc();
  v3[937] = swift_task_alloc();
  v3[943] = swift_task_alloc();
  v3[949] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF56D24, 0, 0);
}

uint64_t sub_20BF56D24()
{
  v1 = v0[913];
  v2 = v0[907];
  v3 = v0[901];
  __swift_project_boxed_opaque_existential_1((v0[589] + 96), *(v0[589] + 120));
  sub_20C13B174();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20B520158(v0[901], &qword_27C768690, &unk_20C14FD90);
    v4 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();
LABEL_12:
    sub_20B583ECC(0, 0);
    sub_20B583ECC(0, 0);
    sub_20B583ECC(0, 0);

    v35 = v0[1];

    return v35();
  }

  v6 = v0[895];
  v7 = v0[883];
  v8 = v0[871];
  v9 = v0[865];
  v72 = *(v0[913] + 32);
  v72(v0[949], v0[901], v0[907]);
  v10 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v0[955] = v10;
  sub_20C136C24();
  sub_20C135314();
  v11 = *(v8 + 8);
  v11(v7, v9);
  v12 = sub_20C135D54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v6, 1, v12) == 1)
  {
    sub_20B520158(v0[895], &unk_27C762370, &qword_20C153BB0);
LABEL_10:
    v30 = v0[949];
    v31 = v0[913];
    v32 = v0[907];
    v33 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51B18], v33);
    swift_willThrow();

LABEL_11:
    (*(v31 + 8))(v30, v32);
    goto LABEL_12;
  }

  v70 = v11;
  sub_20C135D44();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v0[895];
  if (EnumCaseMultiPayload == 1)
  {
    sub_20BBC2094(v0[859]);
    (*(v13 + 8))(v16, v12);
    goto LABEL_10;
  }

  v69 = v0[895];
  v17 = v0[841];
  v18 = v0[835];
  v71 = v10;
  v19 = v0[829];
  v66 = *(v18 + 32);
  v66(v17, v0[859], v19);
  v20 = sub_20C137AE4();
  v22 = v21;
  v0[567] = v20;
  v0[568] = v21;
  v0[961] = v21;
  v23 = v19;
  v10 = v71;
  v65 = *(v18 + 8);
  v65(v17, v23);
  v24 = *(v13 + 8);
  v24(v69, v12);
  if (!v22)
  {
    goto LABEL_10;
  }

  v25 = v24;
  v26 = v0[889];
  v27 = v0[877];
  v68 = v0[865];
  sub_20C136C24();
  sub_20C135314();
  v70(v27, v68);
  v28 = v14(v26, 1, v12);
  v29 = v0[889];
  if (v28 == 1)
  {

    sub_20B520158(v29, &unk_27C762370, &qword_20C153BB0);
LABEL_22:
    v30 = v0[949];
    v31 = v0[913];
    v32 = v0[907];
    v61 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277D51B38], v61);
    swift_willThrow();

    goto LABEL_11;
  }

  sub_20C135D44();
  v37 = swift_getEnumCaseMultiPayload();
  v38 = v0[889];
  v39 = v0[853];
  if (v37 == 1)
  {

    sub_20BBC2094(v39);
    v25(v38, v12);
    goto LABEL_22;
  }

  v40 = v0[841];
  v41 = v0[829];
  v66(v40, v0[853], v41);
  v42 = sub_20C137AF4();
  v44 = v43;
  v0[569] = v42;
  v0[570] = v43;
  v0[967] = v43;
  v65(v40, v41);
  v25(v38, v12);
  if (!v44)
  {

    goto LABEL_22;
  }

  v45 = v0[949];
  v46 = v0[943];
  v63 = v0[937];
  v64 = v0[931];
  v67 = v0[925];
  v47 = v0[913];
  v48 = v0[907];
  v49 = v0[589];

  swift_asyncLet_begin();
  v50 = *(v47 + 16);
  v50(v46, v45, v48);
  v51 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v52 = swift_allocObject();
  v0[973] = v52;
  *(v52 + 16) = v49;
  v72(v52 + v51, v46, v48);

  swift_asyncLet_begin();
  v50(v63, v45, v48);
  v53 = swift_allocObject();
  v0[979] = v53;
  *(v53 + 16) = v49;
  v72(v53 + v51, v63, v48);

  swift_asyncLet_begin();
  v50(v64, v45, v48);
  v54 = swift_allocObject();
  v0[985] = v54;
  *(v54 + 16) = v49;
  v72(v54 + v51, v64, v48);

  swift_asyncLet_begin();
  v55 = swift_allocObject();
  v0[991] = v55;
  *(v55 + 16) = v49;
  *(v55 + 24) = v71;

  v56 = v71;
  swift_asyncLet_begin();
  v50(v67, v45, v48);
  v57 = swift_allocObject();
  v0[997] = v57;
  *(v57 + 16) = v49;
  v72(v57 + v51, v67, v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BD0, &qword_20C185958);
  swift_asyncLet_begin();
  v58 = swift_allocObject();
  v0[1003] = v58;
  *(v58 + 16) = v49;
  *(v58 + 24) = v56;

  v59 = v56;
  swift_asyncLet_begin();
  v60 = v0[823];

  return MEMORY[0x282200930](v0 + 402, v60, sub_20BF579C0, v0 + 1316);
}

uint64_t sub_20BF579C0()
{
  v1[1009] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BF5942C, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = v1[817];
    v4 = v1[805];
    v5 = v1[799];
    v6 = *(v4 + 16);
    v1[1015] = v6;
    v1[1021] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v3, v2, v5);
    v7 = v1[673];

    return MEMORY[0x282200930](v1 + 2, v7, sub_20BF57AAC, v1 + 620);
  }
}

uint64_t sub_20BF57AAC()
{
  v1[1027] = v0;
  if (v0)
  {
    (*(v1[805] + 8))(v1[817], v1[799]);

    v2 = sub_20BF59918;
  }

  else
  {
    v2 = sub_20BF57B58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF57B58()
{
  v1 = *(v0 + 5384);
  v2 = *(v0 + 5336);
  v3 = *(v0 + 5240);
  v4 = *(v0 + 5192);
  v5 = *(v3 + 16);
  *(v0 + 8264) = v5;
  *(v0 + 8312) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  *(v0 + 9464) = sub_20C137A84();
  *(v0 + 9465) = sub_20C137A94();

  return MEMORY[0x282200930](v0 + 3856, v0 + 4568, sub_20BF57C14, v0 + 5344);
}

uint64_t sub_20BF57C14()
{
  v1[1045] = v0;
  if (v0)
  {
    v2 = v1[817];
    v3 = v1[805];
    v4 = v1[799];
    v5 = v1[667];
    v6 = v1[655];
    v7 = v1[649];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_20BF59E04, 0, 0);
  }

  else
  {
    v1[1051] = v1[571];

    v8 = v1[793];

    return MEMORY[0x282200930](v1 + 82, v8, sub_20BF57D48, v1 + 716);
  }
}

uint64_t sub_20BF57D48()
{
  v1[1057] = v0;
  if (v0)
  {
    v2 = v1[817];
    v3 = v1[805];
    v4 = v1[799];
    v5 = v1[667];
    v6 = v1[655];
    v7 = v1[649];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_20BF5A2F0, 0, 0);
  }

  else
  {
    v8 = v1[793];
    v9 = v1[787];
    v10 = v1[775];
    v11 = v1[769];
    v12 = *(v10 + 16);
    v1[1063] = v12;
    v1[1069] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v9, v8, v11);
    v13 = v1[763];

    return MEMORY[0x282200930](v1 + 162, v13, sub_20BF57EAC, v1 + 764);
  }
}

uint64_t sub_20BF57EAC()
{
  v1[1075] = v0;
  if (v0)
  {
    v2 = v1[805];
    v16 = v1[799];
    v17 = v1[817];
    v3 = v1[787];
    v4 = v1[775];
    v5 = v1[769];
    v6 = v1[667];
    v7 = v1[655];
    v8 = v1[649];

    (*(v4 + 8))(v3, v5);
    (*(v7 + 8))(v6, v8);
    (*(v2 + 8))(v17, v16);

    return MEMORY[0x2822009F8](sub_20BF5A7DC, 0, 0);
  }

  else
  {
    v9 = v1[763];
    v10 = v1[757];
    v11 = v1[745];
    v12 = v1[739];
    v13 = *(v11 + 16);
    v1[1081] = v13;
    v1[1087] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v10, v9, v12);
    v14 = v1[733];

    return MEMORY[0x282200930](v1 + 242, v14, sub_20BF58040, v1 + 812);
  }
}

uint64_t sub_20BF58040()
{
  v1[1093] = v0;
  if (v0)
  {
    v2 = v1[805];
    v19 = v1[799];
    v20 = v1[817];
    v3 = v1[775];
    v4 = v1[769];
    v5 = v1[757];
    v6 = v1[745];
    v7 = v1[739];
    v17 = v1[787];
    v18 = v1[667];
    v8 = v1[655];
    v16 = v1[649];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v17, v4);
    (*(v8 + 8))(v18, v16);
    (*(v2 + 8))(v20, v19);

    return MEMORY[0x2822009F8](sub_20BF5ACC8, 0, 0);
  }

  else
  {
    v9 = v1[733];
    v10 = v1[727];
    v11 = v1[715];
    v12 = v1[709];
    v13 = *(v11 + 16);
    v1[1099] = v13;
    v1[1105] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v10, v9, v12);
    v14 = v1[703];

    return MEMORY[0x282200930](v1 + 322, v14, sub_20BF58200, v1 + 860);
  }
}

uint64_t sub_20BF58200()
{
  v1[1111] = v0;
  if (v0)
  {
    v2 = v1[805];
    v17 = v1[799];
    v18 = v1[817];
    v3 = v1[775];
    v15 = v1[769];
    v16 = v1[787];
    v4 = v1[745];
    v11 = v1[739];
    v12 = v1[757];
    v5 = v1[727];
    v6 = v1[715];
    v7 = v1[709];
    v8 = v1[655];
    v13 = v1[649];
    v14 = v1[667];

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v12, v11);
    (*(v3 + 8))(v16, v15);
    (*(v8 + 8))(v14, v13);
    (*(v2 + 8))(v18, v17);
    v9 = sub_20BF5B1B4;
  }

  else
  {
    v9 = sub_20BF5836C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20BF5836C()
{
  v1 = v0[703];
  v2 = v0[697];
  v3 = v0[685];
  v4 = v0[679];
  v5 = *(v3 + 16);
  v0[1117] = v5;
  v0[1123] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  sub_20C1379C4();
  v6 = v0[823];

  return MEMORY[0x282200930](v0 + 402, v6, sub_20BF58480, v0 + 908);
}

uint64_t sub_20BF58480()
{
  *(v1 + 9032) = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BF5B6A0, 0, 0);
  }

  else
  {
    (*(v1 + 8120))(*(v1 + 6488), *(v1 + 6584), *(v1 + 6392));
    v2 = *(v1 + 5384);

    return MEMORY[0x282200930](v1 + 16, v2, sub_20BF58554, v1 + 7648);
  }
}

uint64_t sub_20BF58554()
{
  *(v1 + 9080) = v0;
  if (v0)
  {
    (*(*(v1 + 6440) + 8))(*(v1 + 6488), *(v1 + 6392));

    return MEMORY[0x2822009F8](sub_20BF5BBEC, 0, 0);
  }

  else
  {
    (*(v1 + 8264))(*(v1 + 5288), *(v1 + 5384), *(v1 + 5192));

    return MEMORY[0x282200930](v1 + 3856, v1 + 4568, sub_20BF5864C, v1 + 8032);
  }
}

uint64_t sub_20BF5864C()
{
  v1[1141] = v0;
  if (v0)
  {
    v2 = v1[811];
    v3 = v1[805];
    v4 = v1[799];
    v5 = v1[661];
    v6 = v1[655];
    v7 = v1[649];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_20BF5C138, 0, 0);
  }

  else
  {
    v1[1147] = v1[571];

    v8 = v1[793];

    return MEMORY[0x282200930](v1 + 82, v8, sub_20BF58780, v1 + 1052);
  }
}

uint64_t sub_20BF58780()
{
  *(v1 + 9224) = v0;
  if (v0)
  {
    v2 = *(v1 + 6488);
    v3 = *(v1 + 6440);
    v4 = *(v1 + 6392);
    v5 = *(v1 + 5288);
    v6 = *(v1 + 5240);
    v7 = *(v1 + 5192);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_20BF5C684, 0, 0);
  }

  else
  {
    (*(v1 + 8504))(*(v1 + 6248), *(v1 + 6344), *(v1 + 6152));
    v8 = *(v1 + 6104);

    return MEMORY[0x282200930](v1 + 1296, v8, sub_20BF588CC, v1 + 8800);
  }
}

uint64_t sub_20BF588CC()
{
  *(v1 + 9272) = v0;
  if (v0)
  {
    v2 = *(v1 + 6440);
    v11 = *(v1 + 6392);
    v12 = *(v1 + 6488);
    v3 = *(v1 + 6248);
    v4 = *(v1 + 6200);
    v5 = *(v1 + 6152);
    v6 = *(v1 + 5288);
    v7 = *(v1 + 5240);
    v8 = *(v1 + 5192);

    (*(v4 + 8))(v3, v5);
    (*(v7 + 8))(v6, v8);
    (*(v2 + 8))(v12, v11);

    return MEMORY[0x2822009F8](sub_20BF5CBD0, 0, 0);
  }

  else
  {
    (*(v1 + 8648))(*(v1 + 6008), *(v1 + 6104), *(v1 + 5912));
    v9 = *(v1 + 5864);

    return MEMORY[0x282200930](v1 + 1936, v9, sub_20BF58A48, v1 + 9184);
  }
}

uint64_t sub_20BF58A48()
{
  *(v1 + 9320) = v0;
  if (v0)
  {
    v2 = *(v1 + 6440);
    v14 = *(v1 + 6392);
    v15 = *(v1 + 6488);
    v3 = *(v1 + 6200);
    v4 = *(v1 + 6152);
    v5 = *(v1 + 6008);
    v6 = *(v1 + 5960);
    v7 = *(v1 + 5912);
    v12 = *(v1 + 6248);
    v13 = *(v1 + 5288);
    v8 = *(v1 + 5240);
    v11 = *(v1 + 5192);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v12, v4);
    (*(v8 + 8))(v13, v11);
    (*(v2 + 8))(v15, v14);

    return MEMORY[0x2822009F8](sub_20BF5D11C, 0, 0);
  }

  else
  {
    (*(v1 + 8792))(*(v1 + 5768), *(v1 + 5864), *(v1 + 5672));
    v9 = *(v1 + 5624);

    return MEMORY[0x282200930](v1 + 2576, v9, sub_20BF58BF0, v1 + 9568);
  }
}

uint64_t sub_20BF58BF0()
{
  v1[1171] = v0;
  if (v0)
  {
    v2 = v1[805];
    v17 = v1[799];
    v18 = v1[811];
    v3 = v1[775];
    v15 = v1[769];
    v16 = v1[781];
    v4 = v1[745];
    v11 = v1[739];
    v12 = v1[751];
    v5 = v1[721];
    v6 = v1[715];
    v7 = v1[709];
    v8 = v1[655];
    v13 = v1[649];
    v14 = v1[661];

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v12, v11);
    (*(v3 + 8))(v16, v15);
    (*(v8 + 8))(v14, v13);
    (*(v2 + 8))(v18, v17);
    v9 = sub_20BF5D668;
  }

  else
  {
    v9 = sub_20BF58D5C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20BF58D5C()
{
  v1 = *(v0 + 9368);
  (*(v0 + 8936))(*(v0 + 5528), *(v0 + 5624), *(v0 + 5432));
  sub_20C137A34();
  *(v0 + 9416) = v1;
  if (v1)
  {
    (*(*(v0 + 5048) + 8))(*(v0 + 5144), *(v0 + 5000));

    v2 = sub_20BF5DBB4;
    v3 = *(v0 + 5384);
    v4 = v0 + 16;
    v5 = v0 + 9952;
  }

  else
  {
    v6 = *(v0 + 5144);
    v7 = *(v0 + 5096);
    v8 = *(v0 + 5048);
    v9 = *(v0 + 5000);
    v14 = *(v0 + 4952);
    v13 = *(v0 + 4904);
    v10 = *(v0 + 4856);
    v11 = *(v0 + 4808);
    sub_20C132ED4();
    (*(v8 + 16))(v7, v6, v9);
    sub_20C137AB4();
    (*(v10 + 16))(v13, v14, v11);
    sub_20C137AA4();
    sub_20C137784();
    (*(v10 + 8))(v14, v11);
    (*(v8 + 8))(v6, v9);
    v2 = sub_20BF58F98;
    v3 = *(v0 + 5384);
    v4 = v0 + 16;
    v5 = v0 + 10288;
  }

  return MEMORY[0x282200920](v4, v3, v2, v5);
}

uint64_t sub_20BF59138()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF595F0()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF59ADC()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF59FC8()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5A4B4()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5A9A0()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5AE8C()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5B378()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5B6A0()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5B724, v0 + 914);
}

uint64_t sub_20BF5B8C4()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5BBEC()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5BC70, v0 + 962);
}

uint64_t sub_20BF5BE10()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5C138()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5C1BC, v0 + 1010);
}

uint64_t sub_20BF5C35C()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5C684()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5C708, v0 + 1058);
}

uint64_t sub_20BF5C8A8()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5CBD0()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5CC54, v0 + 1106);
}

uint64_t sub_20BF5CDF4()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5D11C()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5D1A0, v0 + 1154);
}

uint64_t sub_20BF5D340()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5D668()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5D6EC, v0 + 1202);
}

uint64_t sub_20BF5D88C()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5DD54()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8024);
  v5 = *(v0 + 7976);
  sub_20B583ECC(&unk_20C185940, *(v0 + 7928));
  sub_20B583ECC(&unk_20C185950, v5);
  sub_20B583ECC(&unk_20C185968, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BF5E07C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_20C13B174();
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690, &unk_20C14FD90);
    v6 = MEMORY[0x277D84FA0];
  }

  else
  {
    v6 = sub_20C136A14();
    (*(v5 + 8))(v3, v4);
  }

  *(swift_allocObject() + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B98, &qword_20C1858B8);
  return sub_20C137CA4();
}

uint64_t sub_20BF5E21C@<X0>(int64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v56 = *MEMORY[0x277D85DE8];
  v47 = sub_20C134614();
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v48 = a2;
  v52[16] = a2;
  LOBYTE(v9) = *(v10 + 32);
  v11 = v9 & 0x3F;
  v12 = ((1 << v9) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = v12;
    v38 = a3;
    v39 = v4;
    v36 = &v36;
    MEMORY[0x28223BE20](v14);
    v40 = &v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v13);
    v41 = 0;
    v12 = 0;
    v49 = v10;
    a3 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v10 + 56);
    v10 = (v15 + 63) >> 6;
    v43 = v8 + 8;
    v44 = v8 + 16;
    v45 = v8;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v50 = (v17 - 1) & v17;
LABEL_12:
      v21 = v18 | (v12 << 6);
      v22 = *(v49 + 48);
      v23 = *(v8 + 72);
      v42 = v21;
      v24 = v46;
      v25 = v47;
      (*(v8 + 16))(v46, v22 + v23 * v21, v47);
      v26 = sub_20C1345C4();
      v13 = v27;
      v53 = v26;
      v54 = v27;
      v4 = v28 & 1;
      v55 = v28 & 1;
      v51 = v48;
      sub_20BF61EF4();
      sub_20BF61F48();
      v29 = sub_20C133C04();
      v30 = v26;
      v8 = v45;
      sub_20B583F4C(v30, v13, v4);
      (*(v8 + 8))(v24, v25);
      v17 = v50;
      if (v29)
      {
        *&v40[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_20BC12628(v40, v37, v41, v49);
          a3 = v38;
          goto LABEL_17;
        }
      }
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_16;
      }

      v20 = a3[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v50 = (v20 - 1) & v20;
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

  v33 = swift_slowAlloc();
  v34 = sub_20BF61A7C(v33, v12, v10, sub_20BF61ED4, v52, sub_20BEE1BC4);
  if (v4)
  {

    result = MEMORY[0x20F2F6A40](v33, -1, -1);
    __break(1u);
  }

  else
  {
    v35 = v34;

    MEMORY[0x20F2F6A40](v33, -1, -1);
    result = v35;
LABEL_17:
    *a3 = result;
  }

  return result;
}

uint64_t sub_20BF5E614(uint64_t a1, char a2)
{
  v2 = sub_20C1345C4();
  v4 = v3;
  v6 = v5 & 1;
  sub_20BF61EF4();
  sub_20BF61F48();
  v7 = sub_20C133C04();
  sub_20B583F4C(v2, v4, v6);
  return v7 & 1;
}

uint64_t sub_20BF5E6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v42 = sub_20C135FB4();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B88, &qword_20C1858B0);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = v34 - v7;
  v8 = sub_20C13B0C4();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v34 - v12;
  v14 = sub_20C135174();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v38 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B184();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &unk_27C76BC00, &unk_20C1500B0);
    v20 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D51B88], v20);
    *(swift_allocObject() + 16) = v21;
    return sub_20C137CA4();
  }

  else
  {
    v24 = *(v15 + 32);
    v37 = v19;
    v24(v19, v13, v14);
    v25 = v2[15];
    v34[1] = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v25);
    v26 = *(v3 + 16);
    v35 = v5;
    v36 = v26;
    v27 = v42;
    v26(v10, v45, v42);
    v28 = *MEMORY[0x277D4F658];
    v29 = sub_20C13B254();
    (*(*(v29 - 8) + 104))(v10, v28, v29);
    v30 = v39;
    v31 = v40;
    (*(v39 + 104))(v10, *MEMORY[0x277D4F518], v40);
    sub_20C13B2A4();
    (*(v30 + 8))(v10, v31);
    v32 = v37;
    (*(v15 + 16))(v38, v37, v14);
    v36(v35, v45, v27);
    v33 = v41;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    sub_20C139A54();
    (*(v43 + 8))(v33, v44);
    return (*(v15 + 8))(v32, v14);
  }
}

uint64_t sub_20BF5EC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_20C1356F4();
  sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  v5 = swift_allocError();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D51B98], v4);
  *(swift_allocObject() + 16) = v5;

  return sub_20C137CA4();
}

uint64_t sub_20BF5EE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6);
}

uint64_t sub_20BF5EE64(uint64_t a1)
{
  v2 = sub_20C137AC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v8 = swift_allocObject();
  *(v8 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v8 + 24) = 50;
  *(v8 + 32) = 2;
  *(v8 + 40) = 220;
  *(v8 + 48) = &unk_20C185AA8;
  *(v8 + 56) = v7;
  sub_20C1377F4();
  return sub_20C137C94();
}

uint64_t sub_20BF5F068(uint64_t a1)
{
  v2 = sub_20C137AC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v8 = swift_allocObject();
  *(v8 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v8 + 24) = 50;
  *(v8 + 32) = 2;
  *(v8 + 40) = 354;
  *(v8 + 48) = &unk_20C1858D0;
  *(v8 + 56) = v7;
  sub_20C137794();
  return sub_20C137C94();
}

uint64_t sub_20BF5F248()
{
  v0 = sub_20C1356F4();
  sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BB8, &qword_20C1858C0);

  return sub_20C137CA4();
}

uint64_t sub_20BF5F388(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B90, &qword_20C157D70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_20BF5E07C();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20BF61998;
  *(v10 + 24) = v9;
  (*(v3 + 16))(v5, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v5, v2);
  v13 = (v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_20BF61E64;
  v13[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B98, &qword_20C1858B8);
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20BF5F62C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C70, &qword_20C1859F0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF5F6F8, 0, 0);
}

uint64_t sub_20BF5F6F8()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_20C139914();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 418;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C135D34();
  *v3 = v0;
  v3[1] = sub_20BCB293C;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF633CC, v2, v4);
}

uint64_t sub_20BF5F838(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BF4AF7C(a1);
}

uint64_t sub_20BF5F8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BF4B810(a1, a3);
}

uint64_t sub_20BF5F974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BF4C0C4(a1, a3);
}

uint64_t sub_20BF5FA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BF4C474(a1, a3);
}

uint64_t sub_20BF5FAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_20B68BF24;

  return sub_20BF4CFC0(a3);
}

uint64_t sub_20BF5FB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BF49928(a1, a3);
}

uint64_t sub_20BF5FC14(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_20C13B9D4();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = sub_20C135994();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF5FD98, 0, 0);
}

uint64_t sub_20BF5FD98()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1((v0[2] + 176), *(v0[2] + 200));
  sub_20C135E34();
  sub_20C139FB4();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 462;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_20BF5FED4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526AC0, v2, v4);
}

uint64_t sub_20BF5FED4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_20BF60024;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_20BC27AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF60024()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v4 = *(v3 + 104);
  v4(v1, *MEMORY[0x277D51DE8], v2);
  sub_20BF646AC(&qword_27C770D28, MEMORY[0x277D51E08], MEMORY[0x277D51E00]);
  v5 = sub_20C135D14();
  v6 = *(v3 + 8);
  v6(v1, v2);
  v7 = v0[14];
  if (v5 & 1) != 0 || (v8 = v0[8], v9 = v0[6], v4(v8, *MEMORY[0x277D51DF0], v9), v10 = sub_20C135D14(), v6(v8, v9), v7 = v0[14], (v10) || (v12 = v0[4], v11 = v0[5], v13 = v0[3], (*(v12 + 104))(v11, *MEMORY[0x277D4FB00], v13), sub_20BF646AC(&unk_27C770D30, MEMORY[0x277D4FB10], MEMORY[0x277D4FB08]), v14 = sub_20C135D14(), (*(v12 + 8))(v11, v13), v7 = v0[14], (v14))
  {

    v15 = v0[1];
  }

  else
  {
    swift_willThrow();

    v15 = v0[1];
  }

  return v15();
}

double sub_20BF602A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v26 = a2;
  v29 = sub_20C13C4B4();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C4F4();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18, &unk_20C185B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = sub_20C13C4C4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  (*(v14 + 104))(v16, *MEMORY[0x277D851B8], v13);
  v25 = sub_20C13D3A4();
  (*(v14 + 8))(v16, v13);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v27, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, v12, v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_20BF6454C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_157;
  v20 = _Block_copy(aBlock);

  sub_20C13C4D4();
  v33 = MEMORY[0x277D84F90];
  sub_20BF646AC(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B816128(&qword_2811005A0, &unk_27C766280, &qword_20C15A2D0);
  v21 = v29;
  sub_20C13DA94();
  v22 = v25;
  MEMORY[0x20F2F4AF0](0, v7, v4, v20);
  _Block_release(v20);

  (*(v32 + 8))(v4, v21);
  (*(v30 + 8))(v7, v31);

  return result;
}

void sub_20BF60764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18, &unk_20C185B28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 256);
    swift_unknownObjectRetain();

    v10 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];
    v11 = sub_20C13C744();
    v12 = [v10 enqueueData_];

    (*(v5 + 16))(v7, a2, v4);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    (*(v5 + 32))(v14 + v13, v7, v4);
    aBlock[4] = sub_20BF645E8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B98FE2C;
    aBlock[3] = &block_descriptor_340;
    v15 = _Block_copy(aBlock);

    [v12 addFinishBlock_];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D51B60], v16);
    aBlock[0] = v17;
    sub_20C13CD44();
  }
}

uint64_t sub_20BF60A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20BF60A9C, 0, 0);
}

uint64_t sub_20BF60A9C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_20B51C88C(0, &qword_27C770D10, 0x277CEE4A0);
  *v2 = v0;
  v2[1] = sub_20BF60BA8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000020C1B8360, sub_20BF64544, v1, v3);
}

uint64_t sub_20BF60BA8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20B5D4F40;
  }

  else
  {

    v2 = sub_20BF60CC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

BOOL sub_20BF60CE4(uint64_t a1)
{
  swift_getErrorValue();
  v1 = sub_20C13E0C4();
  v3 = v2;
  if (v1 == sub_20C13C954() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_20C13DFF4();

    if ((v6 & 1) == 0)
    {
      return 1;
    }
  }

  swift_getErrorValue();
  return sub_20C13E0B4() != 1;
}

double sub_20BF60DC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  LODWORD(v49) = a5;
  v47 = a4;
  v6 = a3;
  v55 = a6;
  v53 = sub_20C13BB84();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C132E94();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v10;
  MEMORY[0x28223BE20](v11);
  v59 = &v45 - v12;
  v13 = sub_20C13BB54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BB34();
  MEMORY[0x28223BE20](v17 - 8);
  sub_20C13A3C4();
  swift_allocObject();
  v18 = a2;
  v19 = sub_20C13A394();
  sub_20C13A4C4();

  sub_20C13BB44();
  sub_20C13BB24();
  (*(v14 + 8))(v16, v13);
  sub_20C13A4C4();
  sub_20C13B644();
  swift_allocObject();
  v58 = a1;
  v57 = v6;
  v20 = v48;
  v21 = sub_20C13B614();
  v60 = v19;
  v22 = sub_20C13C9D4();
  v24 = v23;
  sub_20C132E64();
  sub_20C13A3B4();
  v49 = v21;
  sub_20C13B634();
  sub_20C13A4B4();

  v25 = sub_20C13BB74();
  v26 = sub_20C13D1F4();

  v27 = os_log_type_enabled(v25, v26);
  v46 = v18;
  v47 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60 = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_20B51E694(v22, v24, &v60);
    *(v28 + 12) = 2082;
    v30 = sub_20C13DCA4();
    v32 = sub_20B51E694(v30, v31, &v60);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_20B517000, v25, v26, "[%{public}s] %{public}s begin", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v28, -1, -1);
  }

  (*(v51 + 8))(v20, v53);
  v33 = v56;
  v34 = v52;
  v35 = v59;
  v36 = v54;
  (*(v56 + 16))(v52, v59, v54);
  v37 = (*(v33 + 80) + 49) & ~*(v33 + 80);
  v38 = (v50 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v47;
  *(v39 + 24) = v24;
  v40 = v46;
  *(v39 + 32) = v58;
  *(v39 + 40) = v40;
  *(v39 + 48) = v57;
  (*(v33 + 32))(v39 + v37, v34, v36);
  *(v39 + v38) = v49;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v41 = sub_20C13A4A4();
  v42 = MEMORY[0x277D4DFC0];
  v43 = v55;
  v55[3] = v41;
  v43[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v43);

  sub_20C13A494();
  (*(v33 + 8))(v35, v36);

  return result;
}

uint64_t sub_20BF61358(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v62 = a6;
  v60 = a4;
  v61 = a5;
  v59 = a2;
  v65 = a9;
  v66 = a8;
  v12 = sub_20C132E94();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v22 = sub_20C13BB84();
  v63 = *(v22 - 8);
  v64 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v58 - v26;
  if (a1)
  {
    v28 = a1;
    sub_20C13A4B4();
    (*(v13 + 16))(v15, a7, v12);

    v29 = a1;
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1D4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67 = v58;
      *v32 = 136446978;
      *(v32 + 4) = sub_20B51E694(v59, a3, &v67);
      *(v32 + 12) = 2082;
      v33 = sub_20C13DCA4();
      v62 = v31;
      v35 = sub_20B51E694(v33, v34, &v67);

      *(v32 + 14) = v35;
      *(v32 + 22) = 2048;
      sub_20C132E64();
      sub_20C132DC4();
      v37 = v36;
      v38 = *(v13 + 8);
      v38(v18, v12);
      v38(v15, v12);
      *(v32 + 24) = v37;
      *(v32 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v40 = MEMORY[0x28223BE20](ErrorValue);
      (*(v42 + 16))(&v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
      v43 = sub_20C13C9D4();
      v45 = sub_20B51E694(v43, v44, &v67);

      *(v32 + 34) = v45;
      _os_log_impl(&dword_20B517000, v30, v62, "[%{public}s] %{public}s ended in %fs -> %{public}s", v32, 0x2Au);
      v46 = v58;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v46, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    (*(v63 + 8))(v24, v64);
  }

  else
  {
    sub_20C13A4B4();
    (*(v13 + 16))(v21, a7, v12);

    v47 = sub_20C13BB74();
    v48 = sub_20C13D1F4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67 = v58;
      *v49 = 136446722;
      *(v49 + 4) = sub_20B51E694(v59, a3, &v67);
      *(v49 + 12) = 2082;
      v50 = sub_20C13DCA4();
      v52 = sub_20B51E694(v50, v51, &v67);

      *(v49 + 14) = v52;
      *(v49 + 22) = 2048;
      sub_20C132E64();
      sub_20C132DC4();
      v54 = v53;
      v55 = *(v13 + 8);
      v55(v18, v12);
      v55(v21, v12);
      *(v49 + 24) = v54;
      _os_log_impl(&dword_20B517000, v47, v48, "[%{public}s] %{public}s ended in %fs", v49, 0x20u);
      v56 = v58;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v56, -1, -1);
      MEMORY[0x20F2F6A40](v49, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    (*(v63 + 8))(v27, v64);
  }

  sub_20C13B624();
  return sub_20C13A3A4();
}

unint64_t *sub_20BF619B4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_20BF63A34(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_20BF61A7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void sub_20BF61B1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C13DAA4();
  v7 = 1 << *(a2 + 32);
  if (v7 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_20BF61C00(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_20BD12744(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BF61D64(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

unint64_t sub_20BF61EF4()
{
  result = qword_27C770BA0;
  if (!qword_27C770BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770BA0);
  }

  return result;
}

unint64_t sub_20BF61F48()
{
  result = qword_27C770BA8;
  if (!qword_27C770BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770BA8);
  }

  return result;
}

void sub_20BF62008(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_20C137684();
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v8 = *(v3 + 1);
  v10 = *(v3 + 16);
  v11 = v3[1];
  v12 = v3[2];
  v51 = *v3;
  v52 = v11;
  v53 = v12;
  v54 = *(v3 + 6);
  v50 = v10;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
LABEL_39:
        __break(1u);
      }

      else
      {
        v35 = a1;
        a1 = *(v3 + 3);
        v13 = *(v3 + 40);
        v44 = *(v3 + 8);
        v3 = *(v3 + 6);
        v14.n128_f64[0] = sub_20BD12744(v9, v8, v10 & 1);
        v42 = v45 + 16;
        v43 = v3 + 56;
        v41 = (v45 + 32);
        v37 = v13;
        v15 = v10 | v13;
        v36 = v3 + 4;
        v16 = 1;
        v17 = v9;
        v49 = v8;
        v40 = v10;
        v38 = a1;
        v39 = v9;
        while ((v15 & 1) == 0)
        {
          if (v49 != v44)
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v17 == a1)
          {
            v31 = v50;
            v32 = v52;
            v33 = v35;
            *v35 = v51;
            v33[1] = v32;
            v33[2] = v53;
            *(v33 + 6) = v54;
            *(v33 + 7) = a1;
            *(v33 + 8) = v49;
            *(v33 + 72) = v31;
            return;
          }

          if (v10)
          {
            goto LABEL_41;
          }

          if (v17 < v9)
          {
            goto LABEL_33;
          }

          if (v44 != v8)
          {
            goto LABEL_34;
          }

          if (v17 >= a1)
          {
            goto LABEL_35;
          }

          if (v17 < 0)
          {
            goto LABEL_36;
          }

          v18 = a2;
          v19 = 1 << *(v3 + 32);
          if (v17 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v8;
          v21 = v17 >> 6;
          v22 = *(v43 + 8 * (v17 >> 6));
          if (((v22 >> v17) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v3 + 9) != v44)
          {
            goto LABEL_38;
          }

          v23 = *(v3 + 6);
          v46 = *(v45 + 72);
          (*(v45 + 16))(v47, v23 + v46 * v17, v48, v14);
          if ((v22 & (-2 << (v17 & 0x3F))) != 0)
          {
            v17 = __clz(__rbit64(v22 & (-2 << (v17 & 0x3F)))) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = v36 + v21;
            while (v25 < (v19 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_20B526EA4(v17, v49, 0);
                v17 = __clz(__rbit64(v27)) + v24;
                goto LABEL_23;
              }
            }

            sub_20B526EA4(v17, v49, 0);
            v17 = v19;
          }

LABEL_23:
          v49 = *(v3 + 9);
          v50 = 0;
          (*v41)(v18, v47, v48);
          if (v16 == a3)
          {
            LOBYTE(v10) = v50;
            v8 = v49;
            v9 = v17;
            a1 = v35;
            goto LABEL_31;
          }

          v8 = v20;
          a2 = v18 + v46;
          v15 = v37;
          v29 = __OFADD__(v16++, 1);
          LOBYTE(v10) = v40;
          a1 = v38;
          v9 = v39;
          if (v29)
          {
            __break(1u);
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
      sub_20BD12744(v9, v8, v10 & 1);
LABEL_31:
      v34 = v52;
      *a1 = v51;
      a1[1] = v34;
      a1[2] = v53;
      *(a1 + 6) = v54;
      *(a1 + 7) = v9;
      *(a1 + 8) = v8;
      *(a1 + 72) = v10;
    }
  }

  else
  {
LABEL_27:
    v30 = v3[1];
    *a1 = *v3;
    a1[1] = v30;
    a1[2] = v3[2];
    *(a1 + 6) = *(v3 + 6);
    *(a1 + 7) = v9;
    *(a1 + 8) = v8;
    *(a1 + 72) = v10;
    sub_20BD12744(v9, v8, v10 & 1);
  }
}

uint64_t sub_20BF623F4(uint64_t a1)
{
  v4 = *(sub_20C137AC4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF55D78(a1, v6, v1 + v5);
}

uint64_t sub_20BF624F0(void *a1)
{
  v3 = *(sub_20C132E94() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BF61358(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_20BF625A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BF5F62C(a1, v1);
}

uint64_t sub_20BF62640(uint64_t a1)
{
  sub_20C136C64();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BF5F838(a1);
}

uint64_t sub_20BF62724(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5F8D4(a1, v6, v1 + v5);
}

uint64_t sub_20BF62808(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5F974(a1, v6, v1 + v5);
}

uint64_t sub_20BF628EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BF5FA14(a1, v5, v4);
}

uint64_t sub_20BF62998(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5FAC4(a1, v6, v1 + v5);
}

uint64_t sub_20BF62A7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BF5FB64(a1, v5, v4);
}

uint64_t sub_20BF62BC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BF62CA8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = sub_20C137A24();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_20C13DB34();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v45 = MEMORY[0x277D84F90];
    sub_20BB5EA6C(0, v6 & ~(v6 >> 63), 0);
    v40 = v45;
    if (v39)
    {
      result = sub_20C13DAD4();
    }

    else
    {
      result = sub_20C13DAA4();
      v8 = *(a1 + 36);
    }

    v42 = result;
    v43 = v8;
    v44 = v39 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v34 = v6;
      v35 = v38 + 32;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v32 = a1 + 56;
      v33 = v10;
      v30 = v2;
      v31 = a1 + 64;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v42;
        v14 = v43;
        v15 = v44;
        sub_20BB61924(v42, v43, v44, a1);

        sub_20C137A14();
        v16 = v40;
        v45 = v40;
        v18 = *(v40 + 16);
        v17 = *(v40 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_20BB5EA6C((v17 > 1), v18 + 1, 1);
          v16 = v45;
        }

        *(v16 + 16) = v18 + 1;
        v19 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v40 = v16;
        result = (*(v38 + 32))(v16 + v19 + *(v38 + 72) * v18, v5, v36);
        if (v39)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          if (sub_20C13DAF4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC80, &qword_20C16EEC0);
          v11 = sub_20C13CFE4();
          sub_20C13DB94();
          result = v11(v41, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_20B526EA4(v42, v43, v44);
            return v40;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v20 = 1 << *(a1 + 32);
          if (v13 >= v20)
          {
            goto LABEL_38;
          }

          v21 = v13 >> 6;
          v22 = *(v32 + 8 * (v13 >> 6));
          if (((v22 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_40;
          }

          v23 = v22 & (-2 << (v13 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v31 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                result = sub_20B526EA4(v13, v14, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_33;
              }
            }

            result = sub_20B526EA4(v13, v14, 0);
          }

LABEL_33:
          v29 = *(a1 + 36);
          v42 = v20;
          v43 = v29;
          v44 = 0;
          v6 = v34;
          if (v9 == v34)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF630E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0, &qword_20C17C180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF63150(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20C13CA94();

    return sub_20C13CBA4();
  }

  return result;
}

void sub_20BF631EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_20C13DAA4();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_20BF61C00(v6, v7, 0, a1, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    v15 = sub_20C13DAA4();
    if (v14 == 255)
    {
      v16 = -v8;
    }

    else
    {
      v16 = v9;
    }

    if (v14 == 255)
    {
      v17 = v7;
    }

    else
    {
      v17 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= v15)
      {
        v22[0] = v15;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        sub_20BF61B1C(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

unint64_t sub_20BF63324()
{
  result = qword_27C770C60;
  if (!qword_27C770C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770C60);
  }

  return result;
}

unint64_t sub_20BF63378()
{
  result = qword_27C770C68;
  if (!qword_27C770C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770C68);
  }

  return result;
}

uint64_t sub_20BF633E4(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5573C(a1, v6, v1 + v5);
}

uint64_t sub_20BF634E0(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5237C(a1, v6, v1 + v5);
}

uint64_t sub_20BF635DC(uint64_t a1)
{
  sub_20C136C64();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20BF54B7C(a1);
}

uint64_t sub_20BF636C0(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20BF54C18(a1, v6, v7, v1 + v5);
}

uint64_t sub_20BF637B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BF54E70(a1, v4, v5);
}

uint64_t objectdestroy_258Tm()
{
  v1 = sub_20C136C64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20BF63928(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20BF550F8(a1, v6, v7, v1 + v5);
}

void sub_20BF63A34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_20C137684();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v44 = v8 + 16;
  v45 = v11;
  v20 = a4 + 56;
  v46 = v8;
  v47 = v7;
  v42 = 0;
  v43 = (v8 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v51 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v12 << 6);
    v25 = *(v49 + 48);
    v26 = *(v46 + 72);
    v48 = v24;
    (*(v46 + 16))(v11, v25 + v26 * v24, v6, v9);
    LODWORD(v50[0]) = sub_20C137674();
    v27 = sub_20C13DFA4();
    v29 = v28;
    if (*(a4 + 16) && (v30 = v27, sub_20C13E164(), sub_20C13CA64(), v31 = sub_20C13E1B4(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v30 && v35[1] == v29;
        if (v36 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      v18 = v51;
    }

    else
    {
LABEL_22:

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v37 = __OFADD__(v42++, 1);
      v18 = v51;
      if (v37)
      {
        __break(1u);
LABEL_25:
        v38 = v49;

        sub_20BC12300(v41, v40, v42, v38);
        return;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20BF63D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = *MEMORY[0x277D85DE8];
  v6 = sub_20C137684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = v10;
    v39 = v3;
    v37 = &v37;
    MEMORY[0x28223BE20](v12);
    v40 = &v37 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = v7 + 16;
    v44 = v7;
    v11 = a2 + 56;
    v41 = 0;
    v42 = (v7 + 8);
    v45 = v6;
    v46 = a1;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v22 = *(a1 + 48);
      v23 = *(v7 + 72);
      v47 = v21;
      v3 = v49;
      (*(v7 + 16))(v49, v22 + v23 * v21, v6);
      v50 = sub_20C137674();
      v24 = sub_20C13DFA4();
      v26 = v25;
      if (*(a2 + 16) && (v3 = v24, sub_20C13E164(), sub_20C13CA64(), v27 = sub_20C13E1B4(), v28 = -1 << *(a2 + 32), v29 = v27 & ~v28, ((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a2 + 48) + 16 * v29);
          v32 = *v31 == v3 && v31[1] == v26;
          if (v32 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        v7 = v44;
        v16 = v48;
      }

      else
      {
LABEL_23:

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        *&v40[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        v33 = __OFADD__(v41++, 1);
        v7 = v44;
        v16 = v48;
        if (v33)
        {
          __break(1u);
LABEL_26:
          v34 = sub_20BC12300(v40, v38, v41, a1);

          return v34;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_26;
      }

      v20 = *(v13 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();

  v34 = sub_20BF619B4(v36, v10, a1, a2);

  MEMORY[0x20F2F6A40](v36, -1, -1);

  return v34;
}

uint64_t sub_20BF641B8(uint64_t a1)
{
  v4 = *(sub_20C137AC4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF4DE20(a1, v6, v1 + v5);
}

uint64_t sub_20BF642B4(uint64_t a1)
{
  v4 = *(sub_20C137AC4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF4F4C0(a1, v6, v1 + v5);
}

uint64_t objectdestroy_30Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_20BF64498(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BF60A78(a1, v5, v4);
}

void sub_20BF6454C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18, &unk_20C185B28) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_20BF60764(v3, v0 + v2, v4);
}

uint64_t sub_20BF645E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18, &unk_20C185B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18, &unk_20C185B28);
  return sub_20C13CD34();
}

uint64_t sub_20BF646AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_20BF64714(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_springParameters;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:350.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_switchAnimator] = 0;
  v39.receiver = v4;
  v39.super_class = type metadata accessor for PlaybackArtworkView();
  v12 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];

  v14 = [v12 layer];
  [v14 setCornerRadius_];

  v15 = [v12 layer];
  v16 = *MEMORY[0x277CDA138];
  [v15 setCornerCurve_];

  v17 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView;
  [*&v12[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView] setContentMode_];
  v18 = [*&v12[v17] layer];
  [v18 setCornerRadius_];

  v19 = [*&v12[v17] layer];
  [v19 setCornerCurve_];

  [*&v12[v17] setClipsToBounds_];
  [v12 addSubview_];
  sub_20BF64EE0(0, 0);
  sub_20BF653A8();
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C150050;
  v22 = [v12 heightAnchor];
  v23 = [v12 widthAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [*&v12[v17] leadingAnchor];
  v26 = [v12 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v21 + 40) = v27;
  v28 = [*&v12[v17] trailingAnchor];
  v29 = [v12 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v21 + 48) = v30;
  v31 = [*&v12[v17] topAnchor];
  v32 = [v12 topAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v21 + 56) = v33;
  v34 = [*&v12[v17] bottomAnchor];
  v35 = [v12 bottomAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v21 + 64) = v36;
  sub_20B5E29D0();
  v37 = sub_20C13CC54();

  [v20 activateConstraints_];

  return v12;
}

void sub_20BF64C30(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for PlaybackArtworkView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v2 = [*&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView] layer];
  v3 = [v1 layer];
  [v3 cornerRadius];
  v5 = v4;

  [v2 setCornerRadius_];
  v6 = [v1 layer];
  [v1 bounds];
  v8 = UIEdgeInsetsInsetRect_0(v7);
  v12 = [objc_opt_self() bezierPathWithRoundedRect:v8 cornerRadius:{v9, v10, v11, 6.0}];
  v13 = [v12 CGPath];

  [v6 setShadowPath_];
}

id sub_20BF64E50(char *a1, uint64_t a2)
{
  v4 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v5 = *&a1[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView];

  return [v5 setImage_];
}

double sub_20BF64EE0(char a1, char a2)
{
  if (a1)
  {
    if (qword_27C760798 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_27C79A7D0;
  }

  else
  {
    if (qword_27C7607A0 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_27C79A828;
  }

  v5 = v4[3];
  v33 = v4[2];
  v34 = v5;
  v35 = v4[4];
  v36 = *(v4 + 10);
  v6 = v4[1];
  v32[0] = *v4;
  v32[1] = v6;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v31 = v36;
  v26 = v32[0];
  v27 = v6;
  v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_springParameters);
  v8 = objc_allocWithZone(MEMORY[0x277D75D40]);
  sub_20BF655A8(v32, v25);
  v9 = [v8 initWithDuration:v7 timingParameters:0.0];
  v10 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator;
  v11 = *(v2 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator);
  *(v2 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator) = v9;

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = v29;
  *(v13 + 56) = v28;
  *(v13 + 72) = v14;
  *(v13 + 88) = v30;
  *(v13 + 104) = v31;
  v15 = v27;
  *(v13 + 24) = v26;
  *(v13 + 40) = v15;
  if (a2)
  {
    v16 = *(v2 + v10);
    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = sub_20BF65604;
      *(v17 + 24) = v13;
      aBlock[4] = sub_20B5E4150;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_158;
      v18 = _Block_copy(aBlock);
      sub_20BF655A8(v32, v25);
      v19 = v16;

      [v19 addAnimations_];
      _Block_release(v18);
    }

    else
    {
      sub_20BF655A8(v32, v25);
    }

    v23 = *(v2 + v10);
    [v23 startAnimation];
    sub_20BF65610(v32);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      sub_20BF655A8(v32, v25);

      sub_20BF65270(&v26);

      sub_20BF65610(v32);

      return result;
    }
  }

  return result;
}

void sub_20BF65214(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_20BF65270(a2);
  }
}

id sub_20BF65270(uint64_t a1)
{
  v3 = [v1 layer];
  v4 = [*a1 CGColor];
  [v3 setShadowColor_];

  v5 = [v1 layer];
  [v5 setShadowOffset_];

  v6 = [v1 layer];
  LODWORD(v7) = *(a1 + 24);
  [v6 setShadowOpacity_];

  v8 = [v1 layer];
  [v8 setShadowRadius_];

  v9 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v9;
  v11[2] = *(a1 + 72);
  return [v1 setTransform_];
}

void sub_20BF653A8()
{
  v1 = [v0 layer];
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.6 alpha:0.1];
  v3 = [v2 CGColor];

  [v1 setBorderColor_];
  v7 = [v0 layer];
  v4 = [v0 traitCollection];
  [v4 displayScale];
  v6 = v5;

  [v7 setBorderWidth_];
}

id sub_20BF654E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaybackArtworkView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BF65684()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_springParameters;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:350.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_switchAnimator) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF657A8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_20BF657DC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_activationState;
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_activationState) & 1) == 0)
  {
    sub_20C13B534();
    v7 = sub_20C13BB74();
    v8 = sub_20C13D1F4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20B517000, v7, v8, "[CatalogEditorialCollectionPageDataProvider] Activating", v9, 2u);
      MEMORY[0x20F2F6A40](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    *(v1 + v6) = 1;
    sub_20BF6607C();
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }
}

uint64_t sub_20BF659E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v44 - v6;
  v7 = sub_20C136D34();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1377C4();
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970, &unk_20C185C90);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v18 - 8);
  v50 = &v44 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v44 - v21;
  v51 = *(*(v2 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v23 = *MEMORY[0x277D517C8];
  v24 = sub_20C1352F4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  v26 = *(v25 + 56);
  v52 = v22;
  v27 = v22;
  v28 = v9;
  v26(v27, 0, 1, v24);
  v29 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail;
  swift_beginAccess();
  v53 = v2;
  v30 = v2 + v29;
  v31 = v49;
  sub_20B52F9E8(v30, v17, &qword_27C764970, &unk_20C185C90);
  v32 = *(v31 + 48);
  v33 = v32(v17, 1, v9);
  v45 = v11;
  if (v33)
  {

    sub_20B520158(v17, &qword_27C764970, &unk_20C185C90);
    v34 = 1;
    v35 = v50;
  }

  else
  {
    (*(v31 + 16))(v11, v17, v9);

    sub_20B520158(v17, &qword_27C764970, &unk_20C185C90);
    v36 = v46;
    sub_20C1377A4();
    (*(v31 + 8))(v11, v28);
    v37 = v50;
    sub_20C136D04();
    (*(v47 + 8))(v36, v48);
    v34 = 0;
    v35 = v37;
  }

  v38 = sub_20C132C14();
  (*(*(v38 - 8) + 56))(v35, v34, 1, v38);
  sub_20B52F9E8(v53 + v29, v14, &qword_27C764970, &unk_20C185C90);
  if (v32(v14, 1, v28))
  {
    sub_20B520158(v14, &qword_27C764970, &unk_20C185C90);
  }

  else
  {
    v39 = v45;
    (*(v31 + 16))(v45, v14, v28);
    sub_20B520158(v14, &qword_27C764970, &unk_20C185C90);
    v40 = v46;
    sub_20C1377A4();
    (*(v31 + 8))(v39, v28);
    sub_20C136D14();
    (*(v47 + 8))(v40, v48);
  }

  v41 = sub_20C135ED4();
  (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
  v42 = sub_20C136914();
  (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
  return sub_20C133384();
}

uint64_t sub_20BF6607C()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641E0, &unk_20C1746B0);
  v74 = *(v76 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v63 - v7;
  MEMORY[0x28223BE20](v8);
  v72 = &v63 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644E8, &unk_20C161F30);
  v78 = *(v80 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v63 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v13 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v81 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v63 - v16;
  v79 = v17;
  MEMORY[0x28223BE20](v18);
  v83 = &v63 - v19;
  v20 = v0;
  sub_20B5E2E18();

  *v4 = sub_20C13D374();
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v21 = sub_20C13C584();
  result = (*(v2 + 8))(v4, v1);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_catalogClient), *(v20 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_catalogClient + 24));
    v23 = v71;
    sub_20C139F04();

    v24 = v74;
    v25 = *(v74 + 16);
    v66 = v74 + 16;
    v67 = v25;
    v68 = v10;
    v26 = v70;
    v27 = v76;
    v25(v70, v23, v76);
    v69 = v13;
    v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v65 = v28;
    v29 = (v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v64 = *(v24 + 32);
    v64(v30 + v28, v26, v27);
    v31 = (v30 + v29);
    *v31 = sub_20BF694D8;
    v31[1] = v20;
    sub_20C1377C4();

    v32 = v72;
    sub_20C137C94();
    v74 = *(v24 + 8);
    (v74)(v23, v27);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_20BF69504;
    *(v33 + 24) = v20;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20BF69508;
    *(v34 + 24) = v33;
    v67(v23, v32, v27);
    v35 = swift_allocObject();
    v64(v35 + v65, v23, v27);
    v36 = (v35 + v29);
    *v36 = sub_20BC4F0DC;
    v36[1] = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0, &unk_20C155F80);
    v37 = v77;
    sub_20C137C94();
    (v74)(v32, v27);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_20BF69564;
    *(v38 + 24) = v20;
    v39 = v20;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_20B63EEAC;
    *(v40 + 24) = v38;
    v41 = v78;
    v42 = v75;
    v43 = v80;
    (*(v78 + 16))(v75, v37, v80);
    v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v45 = (v68 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    (*(v41 + 32))(v46 + v44, v42, v43);
    v47 = (v46 + v45);
    *v47 = sub_20B8FD788;
    v47[1] = v40;

    v48 = v82;
    sub_20C137C94();
    (*(v41 + 8))(v37, v43);
    v49 = swift_allocObject();
    *(v49 + 16) = sub_20BF69590;
    *(v49 + 24) = v39;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_20B5F67D4;
    *(v50 + 24) = v49;
    v51 = v69;
    v52 = v81;
    v53 = v73;
    (*(v69 + 16))(v81, v48, v73);
    v54 = v51;
    v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v56 = (v79 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    (*(v54 + 32))(v57 + v55, v52, v53);
    v58 = (v57 + v56);
    *v58 = sub_20B5DF204;
    v58[1] = v50;

    v59 = v83;
    sub_20C137C94();
    v60 = *(v54 + 8);
    v60(v48, v53);
    v61 = sub_20C137CB4();
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v61(sub_20B52347C, v62);

    return (v60)(v59, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_20BF66964()
{
  v1 = v0;
  v2 = sub_20C135E14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v9 = sub_20C13D374();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_20C13C584();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = sub_20C1377B4();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_dependencies);
      v16 = *(v3 + 16);
      v15 = v3 + 16;
      v28 = v16;
      v29 = v14;
      v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v18 = *(v15 + 56);
      v26[1] = v12;
      v27 = v18;
      v30 = v15;
      v19 = MEMORY[0x277D84F90];
      v16(v5, v17, v2);
      while (1)
      {
        v21 = sub_20BE533E4(v29);
        v23 = v22;
        (*(v15 - 8))(v5, v2);
        if (v21)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_20BC0577C(0, v19[2] + 1, 1, v19);
          }

          v25 = v19[2];
          v24 = v19[3];
          if (v25 >= v24 >> 1)
          {
            v19 = sub_20BC0577C((v24 > 1), v25 + 1, 1, v19);
          }

          v19[2] = v25 + 1;
          v20 = &v19[2 * v25];
          v20[4] = v21;
          v20[5] = v23;
        }

        v17 += v27;
        if (!--v13)
        {
          break;
        }

        v28(v5, v17, v2);
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF66C3C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970, &unk_20C185C90);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v36 - v5;
  v6 = sub_20C1377C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = v8;
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_20C13BB84();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C554();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v17 = sub_20C13D374();
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v18 = sub_20C13C584();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v39 = v2;
    sub_20C13B534();
    v20 = *(v7 + 16);
    v40 = a1;
    v20(v11, a1, v6);
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47[0] = v37;
      *v23 = 141558274;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2080;
      sub_20BC4F048(&qword_27C76C7C8, MEMORY[0x277D53670], MEMORY[0x277D53678]);
      v24 = sub_20C13DFA4();
      v38 = v20;
      v26 = v25;
      (*(v7 + 8))(v11, v6);
      v27 = sub_20B51E694(v24, v26, v47);
      v20 = v38;

      *(v23 + 14) = v27;
      _os_log_impl(&dword_20B517000, v21, v22, "[CatalogEditorialCollectionPageDataProvider] Updating with detail %{mask.hash}s", v23, 0x16u);
      v28 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    (*(v41 + 8))(v46, v42);
    v29 = v43;
    v30 = v40;
    v20(v43, v40, v6);
    (*(v7 + 56))(v29, 0, 1, v6);
    v31 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail;
    v32 = v39;
    swift_beginAccess();
    sub_20BC4EF6C(v29, v32 + v31);
    swift_endAccess();
    v33 = v45;
    v20(v45, v30, v6);
    v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v35 = swift_allocObject();
    (*(v7 + 32))(v35 + v34, v33, v6);
    return sub_20C137CA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_20BF6718C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v4 - 8);
  v80 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C554();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v13 = sub_20C13D374();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_20C13C584();
  v16 = *(v11 + 8);
  v15 = v11 + 8;
  v16(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    sub_20BB5D394((v17 > 1), v10, 1);
    v43 = v90[0];
    goto LABEL_5;
  }

  sub_20C13B534();
  v18 = a1;
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v79 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v93[0] = v23;
    *v22 = 136446210;
    swift_getErrorValue();
    v24 = MEMORY[0x20F2F5850](v81, v82);
    v26 = sub_20B51E694(v24, v25, v93);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20B517000, v19, v20, "[CatalogEditorialCollectionPageDataProvider] Failed to fetch remote content with %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    v27 = v22;
    v2 = v79;
    MEMORY[0x20F2F6A40](v27, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  type metadata accessor for LoadingErrorShelf(0);
  swift_allocObject();

  a1 = sub_20BEFE8F4(v28, 0, 0);

  v29 = *(v2 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier + 8);
  v79 = *(v2 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier);
  v30 = *(*(v2 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v78 = v29;

  v77 = v30;
  v76 = sub_20C1380F4();
  sub_20C13C734();
  v31 = sub_20C13C724();
  v6 = v2;
  v2 = type metadata accessor for CatalogPageImpressionTracker();
  v32 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v33 = MEMORY[0x277D221C0];
  v32[2] = sub_20C13C6D4();
  v32[3] = v31;
  v32[4] = v33;
  v94 = v2;
  v15 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v95 = v15;
  v93[0] = v32;
  v9 = type metadata accessor for MetricLocationStore();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F98];
  *(v34 + 16) = MEMORY[0x277D84F90];
  *(v34 + 24) = v36;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v93, v2);
  v80 = v75;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40, v38);
  v42 = *v40;
  v92[3] = v2;
  v92[4] = v15;
  v92[0] = v42;
  v91[3] = v9;
  v91[4] = &off_2822B6968;
  v91[0] = v34;
  v90[0] = v35;
  sub_20BB5D394(0, 1, 0);
  v43 = v90[0];
  v7 = *(v90[0] + 16);
  v17 = *(v90[0] + 24);
  v10 = v7 + 1;
  if (v7 >= v17 >> 1)
  {
    goto LABEL_10;
  }

LABEL_5:
  *(v43 + 16) = v10;
  v44 = v43 + 24 * v7;
  *(v44 + 32) = a1;
  *(v44 + 40) = &off_2822F4EF0;
  *(v44 + 48) = 0;
  sub_20B51CC64(v92, v90);
  sub_20B51CC64(v91, v89);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v90, v90[3]);
  v75[1] = v75;
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v89, v89[3]);
  v51 = MEMORY[0x28223BE20](v50);
  v75[2] = a1;
  v53 = (v75 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v48;
  v56 = *v53;
  v87 = v2;
  v88 = v15;
  v86[0] = v55;
  v84 = v9;
  v85 = &off_2822B6968;
  v83[0] = v56;
  v57 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v75 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v64 = MEMORY[0x28223BE20](v63);
  v66 = (v75 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = sub_20BE3AA74(v79, v78, v43, v76, v77, *v61, *v66, 2, v57);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v93);
  v69 = *(v6 + 32);
  *(v6 + 32) = v68;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v70 = *(v6 + 24);
    ObjectType = swift_getObjectType();
    v94 = type metadata accessor for CatalogEditorialCollectionPageDataProvider(0);
    v95 = &off_2822F9338;
    v93[0] = v6;
    v72 = *(v6 + 32);

    v73 = v72;
    sub_20B76FFF8(v93, v73, ObjectType, v70);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v93);
  }

  else
  {
  }

  return result;
}

void sub_20BF67AF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_20C13C554();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v8 = sub_20C13D374();
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v9 = sub_20C13C584();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_10;
  }

  type metadata accessor for ExpandingTextEditorialSectionShelf(0);
  v11 = 0;
  v12 = a1 + 48;
  while (1)
  {
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      break;
    }

    ++v11;
    v12 += 16;
    if (v10 == v11)
    {
      goto LABEL_10;
    }
  }

  if (v11 >= (v10 - 1))
  {
    goto LABEL_10;
  }

  if (v11 + 1 >= v10)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v14 = v13;
  type metadata accessor for PreviewVideoLinkShelf(0);
  v15 = swift_dynamicCastClass() == 0;
  *(v14 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_displaysSeparatorBelow) = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_20BAB9800(0, 1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_10:
  v16 = (a1 + 32);
  v17 = v10 + 1;
  v18 = v16;
  while (--v17)
  {
    v19 = v18 + 1;
    type metadata accessor for EditorialLockupsShelf(0);
    v20 = swift_dynamicCastClass();
    v18 = v19;
    if (v20)
    {
      v82 = v20;
      v21 = (v20 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle);
      v22 = *(v20 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle);
      v23 = *(v20 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle + 8);
      *v21 = 0;
      v21[1] = 0;
      swift_unknownObjectRetain_n();
      sub_20B8D6184(v22, v23);
      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  v82 = 0;
LABEL_15:
  v24 = *(v2 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier + 8);
  v80 = *(v2 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier);
  v81 = v2;
  v25 = *(*(v2 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v79 = v24;

  v78 = v25;
  v77 = sub_20C1380F4();
  sub_20C13C734();
  v26 = sub_20C13C724();
  v27 = type metadata accessor for CatalogPageImpressionTracker();
  v28 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v29 = MEMORY[0x277D221C0];
  v28[2] = sub_20C13C6D4();
  v28[3] = v26;
  v28[4] = v29;
  v95 = v27;
  v30 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v96 = v30;
  v94[0] = v28;
  v31 = type metadata accessor for MetricLocationStore();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F98];
  *(v32 + 16) = MEMORY[0x277D84F90];
  *(v32 + 24) = v34;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v94, v27);
  v76[1] = v76;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = (v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38, v36);
  v40 = *v38;
  v93[3] = v27;
  v93[4] = v30;
  v93[0] = v40;
  v92[3] = v31;
  v92[4] = &off_2822B6968;
  v92[0] = v32;
  if (v10)
  {
    v76[0] = v30;
    v91[0] = v33;
    sub_20BB5D394(0, v10, 0);
    v33 = v91[0];
    do
    {
      v41 = *v16;
      v91[0] = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      v83 = v41;
      swift_unknownObjectRetain();
      if (v43 >= v42 >> 1)
      {
        sub_20BB5D394((v42 > 1), v43 + 1, 1);
        v33 = v91[0];
      }

      *(v33 + 16) = v43 + 1;
      v44 = v33 + 24 * v43;
      *(v44 + 32) = v83;
      *(v44 + 48) = 0;
      ++v16;
      --v10;
    }

    while (v10);
    v30 = v76[0];
  }

  sub_20B51CC64(v93, v91);
  sub_20B51CC64(v92, v90);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v91, v91[3]);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v76 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v90, v90[3]);
  v51 = MEMORY[0x28223BE20](v50);
  v53 = (v76 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v48;
  v56 = *v53;
  v88 = v27;
  v89 = v30;
  v87[0] = v55;
  v85 = v31;
  v86 = &off_2822B6968;
  v84[0] = v56;
  v57 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v76 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v64 = MEMORY[0x28223BE20](v63);
  v66 = (v76 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = sub_20BE3AA74(v80, v79, v33, v77, v78, *v61, *v66, 2, v57);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v94);
  v69 = v81;
  v70 = *(v81 + 32);
  *(v81 + 32) = v68;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v71 = *(v69 + 24);
    ObjectType = swift_getObjectType();
    v95 = type metadata accessor for CatalogEditorialCollectionPageDataProvider(0);
    v96 = &off_2822F9338;
    v94[0] = v69;
    v73 = *(v69 + 32);
    v74 = *(v71 + 24);

    v75 = v73;
    v74(v94, v75, 1, ObjectType, v71);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  sub_20BE15410();
}

uint64_t sub_20BF683E8()
{
  sub_20B583E6C(v0 + 16);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail, &qword_27C764970, &unk_20C185C90);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_archivedSessionClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_assetClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configurationClient));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_subscriptionCache));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_upNextQueueClient));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configuration, &qword_27C761800, &qword_20C14FDA0);
  return v0;
}

uint64_t sub_20BF68564()
{
  sub_20BF683E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogEditorialCollectionPageDataProvider(uint64_t a1)
{
  result = qword_27C770D68;
  if (!qword_27C770D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF68610(uint64_t a1)
{
  sub_20BC4D224(319, &qword_27C76C7B8, MEMORY[0x277D53670]);
  if (v1 <= 0x3F)
  {
    sub_20BC4D224(319, &qword_281103BF0, MEMORY[0x277D50560]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_20BF68778(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "[CatalogEditorialCollectionPageDataProvider] archived sessions updated, refreshing page", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BF6607C();
  }

  return result;
}

uint64_t sub_20BF68AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800, &qword_20C14FDA0);
}

uint64_t sub_20BF68B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}