double sub_214BE626C()
{
  v98 = "Fatal error";
  v99 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v100 = "MailUI/MessageListHelpMailLearnCollectionViewCell.swift";
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8, &qword_214CF1FC0);
  v101 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v102 = v43 - v101;
  v126 = 0;
  v103 = sub_214CCFEA4();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (v104[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v126);
  v107 = v43 - v106;
  v147 = v43 - v106;
  v108 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v125 = v43 - v108;
  v146 = v43 - v108;
  v145 = v0;
  sub_214A73F68();
  v123 = sub_214A61730();
  v144 = v123;
  v109 = 1;
  v112 = sub_214CCF614("APPLE INTERNAL", 14, 1);
  v117 = v4;
  v110 = sub_214CCF614("Localizable-BlackPearl", 22, v109 & 1);
  v116 = v5;
  v115 = [objc_opt_self() mui_MailUIBundle];
  v111 = sub_214CCF614("Label title for Apple internal", 30, v109 & 1);
  v114 = v6;
  sub_214B1C228();
  v113 = v7;
  v118 = sub_214CCCF54();
  v119 = v8;

  MEMORY[0x277D82BD8](v115);

  v120 = sub_214CCF544();

  [v123 setText_];
  MEMORY[0x277D82BD8](v120);
  v127 = 0x277D74000uLL;
  v121 = objc_opt_self();
  v122 = *MEMORY[0x277D76938];
  MEMORY[0x277D82BE0](v122);
  v9 = *MEMORY[0x277D74420];
  v129 = 0x1FBACF000uLL;
  v124 = [v121 0x1FBACF65ALL];
  *&v10 = MEMORY[0x277D82BD8](v122).n128_u64[0];
  [v123 setFont_];
  MEMORY[0x277D82BD8](v124);
  sub_214CCFE74();
  v128 = sub_214A74030();
  v130 = objc_opt_self();
  v131 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](v131);
  v132 = [v130 (v129 + 1626)];
  MEMORY[0x277D82BD8](v131);
  if (v132)
  {
    v96 = v132;
  }

  else
  {
    sub_214CD01F4(v98, 11, 2, v99, 68, 2, v100, 55, 2, 41, 0);
    __break(1u);
  }

  sub_214A74094(v96);
  sub_214CCFD94();
  v67 = 0;
  sub_214A731BC();
  v43[0] = @"xmark";
  MEMORY[0x277D82BE0](@"xmark");
  v11 = sub_214CCF564();
  v43[1] = sub_214B4D9C8(v11, v12);
  MEMORY[0x277D82BD8](v43[0]);
  sub_214CCFE64();
  v78 = 0x277D75000uLL;
  v13 = [objc_opt_self() grayColor];
  sub_214CCFE24();
  v49 = MEMORY[0x277D75060];
  sub_214CCFDF4();
  v45 = &qword_27CA36000;
  v44 = *&v97[OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_cancelButton];
  v14 = MEMORY[0x277D82BE0](v44);
  v61 = v104[2];
  v60 = v104 + 2;
  v61(v102, v125, v103, v14);
  v63 = v104[7];
  v62 = v104 + 7;
  v77 = 0;
  v89 = 1;
  v63(v102);
  sub_214CCFED4();
  MEMORY[0x277D82BD8](v44);
  v64 = sub_214A73FCC();
  v74 = sub_214A7802C();
  v69 = 2;
  v48 = sub_214CD03C4();
  v46 = v15;
  MEMORY[0x277D82BE0](v123);
  v16 = v45;
  v17 = v97;
  *v46 = v123;
  v47 = *&v17[v16[300]];
  MEMORY[0x277D82BE0](v47);
  v46[1] = v47;
  sub_214A63280();
  v93 = sub_214BE74DC(v18);
  v143 = v93;
  v75 = 0x1FB0ED000uLL;
  [v93 0x1FB0EDBF8];
  [v93 setAlignment_];
  sub_214CCFE74();
  sub_214CCFDF4();
  v52 = sub_214CCF614("Help Mail Learn", 15, v89 & 1);
  v57 = v19;
  v50 = sub_214CCF614("Localizable-BlackPearl", 22, v89 & 1);
  v56 = v20;
  v55 = [objc_opt_self() mui_MailUIBundle];
  v51 = sub_214CCF614("Button title for help Mail learn", 32, v89 & 1);
  v54 = v21;
  sub_214B1C228();
  v53 = v22;
  v58 = sub_214CCCF54();
  v59 = v23;

  MEMORY[0x277D82BD8](v55);

  sub_214CCFE84();
  v70 = &qword_27CA36000;
  v65 = *&v97[OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_helpMailLearnButton];
  v24 = MEMORY[0x277D82BE0](v65);
  v61(v102, v107, v103, v24);
  (v63)(v102, v77, v89, v103);
  sub_214CCFED4();
  MEMORY[0x277D82BD8](v65);
  v66 = *&v97[v70[299]];
  *&v25 = MEMORY[0x277D82BE0](v66).n128_u64[0];
  [v66 setContentHorizontalAlignment_];
  MEMORY[0x277D82BD8](v66);
  v68 = *&v97[v70[299]];
  v26 = MEMORY[0x277D82BE0](v68);
  v26.n128_u32[0] = 1148846080;
  [v68 setContentHuggingPriority:v67 forAxis:v26.n128_f64[0]];
  MEMORY[0x277D82BD8](v68);
  v73 = sub_214CD03C4();
  v71 = v27;
  MEMORY[0x277D82BE0](v93);
  v28 = v70;
  v29 = v97;
  *v71 = v93;
  v72 = *&v29[v28[299]];
  MEMORY[0x277D82BE0](v72);
  v71[1] = v72;
  sub_214A63280();
  v92 = sub_214BE74DC(v30);
  v142 = v92;
  [v92 (v75 + 3064)];
  [v92 setSpacing_];
  *&v31 = MEMORY[0x277D82BE0](v92).n128_u64[0];
  v76 = 0x1FAECA000uLL;
  [v92 0x1FAECA5BALL];
  MEMORY[0x277D82BD8](v92);
  v91 = sub_214A61730();
  v141 = v91;
  [v91 (v76 + 1466)];
  v79 = [objc_opt_self() secondarySystemBackgroundColor];
  [v91 setBackgroundColor_];
  *&v32 = MEMORY[0x277D82BD8](v79).n128_u64[0];
  v81 = 0x1FADAE000uLL;
  v80 = [v91 0x1FADAE878];
  [v80 setCornerRadius_];
  MEMORY[0x277D82BD8](v80);
  *&v33 = MEMORY[0x277D82BE0](v92).n128_u64[0];
  v82 = [v92 (v81 + 2168)];
  *&v34 = MEMORY[0x277D82BD8](v92).n128_u64[0];
  [v82 setMasksToBounds_];
  *&v35 = MEMORY[0x277D82BD8](v82).n128_u64[0];
  v83 = 0x1FAB99000uLL;
  [v91 0x1FAB997F8];
  v85 = 0x1FAAAA000uLL;
  v137 = 12.0;
  v86 = 16.0;
  v138 = 16.0;
  v139 = 12.0;
  v140 = 16.0;
  [v91 0x1FAAAAAF8];
  v88 = 0x1FC5D2000uLL;
  [v92 0x1FC5D2B59];
  *&v36 = MEMORY[0x277D82BE0](v97).n128_u64[0];
  v87 = 0x1FB774000uLL;
  v84 = [v97 0x1FB774AF8];
  *&v37 = MEMORY[0x277D82BD8](v97).n128_u64[0];
  [v84 (v83 + 2040)];
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BE0](v97);
  v133 = 6.0;
  v134 = v86;
  v135 = 14.0;
  v136 = v86;
  [v97 (v85 + 2808)];
  MEMORY[0x277D82BD8](v97);
  *&v38 = MEMORY[0x277D82BE0](v97).n128_u64[0];
  v90 = [v97 (v87 + 2808)];
  *&v39 = MEMORY[0x277D82BD8](v97).n128_u64[0];
  [v91 (v88 + 2905)];
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  v40 = MEMORY[0x277D82BD8](v92);
  v95 = v104[1];
  v94 = v104 + 1;
  v95(v107, v103, v40);
  v41 = MEMORY[0x277D82BD8](v93);
  v95(v125, v103, v41);
  *&result = MEMORY[0x277D82BD8](v123).n128_u64[0];
  return result;
}

void sub_214BE73A0()
{
  v0 = OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_helpMailLearnButton;
  sub_214BD2A6C();
  *v0 = sub_214A61730();
  v1 = OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_cancelButton;
  *v1 = sub_214A61730();
  sub_214CCF614("init(coder:) has not been implemented", 37, 1);
  sub_214CD0204();
  __break(1u);
}

id MessageListHelpMailLearnCollectionViewCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_214BE7604(uint64_t a1)
{
  sub_214A7802C();
  v3 = sub_214CCF7D4();
  v4 = [v2 initWithArrangedSubviews_];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

uint64_t sub_214BE76B8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BE7728(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BE77C0(double a1, double a2, double a3, double a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  ObjectType = swift_getObjectType();
  v11 = v7;
  v12 = v8;
  v13 = v4;
  *&v4[OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController] = 0;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, sel_initWithFrame_, v7, v8);
  MEMORY[0x277D82BE0](v9);
  v13 = v9;
  sub_214BE78B8();
  MEMORY[0x277D82BD8](v13);
  return v9;
}

uint64_t sub_214BE78B8()
{
  sub_214BE8454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36970, &qword_214CF2700);

  v42 = sub_214CCE5A4();
  MEMORY[0x277D82BE0](v42);
  v41 = &v40[OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController];
  swift_beginAccess();
  v0 = *v41;
  *v41 = v42;
  MEMORY[0x277D82BD8](v0);
  swift_endAccess();
  v43 = [v42 view];
  *&v1 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v43)
  {
    v39 = v43;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MessageListMailCleanupTipCollectionViewCell-BocceBall.swift", 66, 2, 29, 0);
    __break(1u);
  }

  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v39);
  v37 = [v40 contentView];
  (MEMORY[0x277D82BD8])();
  v38 = [v42 view];
  *&v2 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v38)
  {
    v36 = v38;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MessageListMailCleanupTipCollectionViewCell-BocceBall.swift", 66, 2, 31, 0);
    __break(1u);
  }

  [v37 addSubview_];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  v33 = objc_opt_self();
  sub_214A6F394();
  sub_214CD03C4();
  v34 = v3;
  v35 = [v42 view];
  *&v4 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v35)
  {
    v32 = v35;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MessageListMailCleanupTipCollectionViewCell-BocceBall.swift", 66, 2, 34, 0);
    __break(1u);
  }

  v29 = [v32 0x1FBBB4950];
  MEMORY[0x277D82BD8](v32);
  v27 = [v40 contentView];
  v28 = [v27 0x1FBBB4950];
  v30 = [v29 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  *v34 = v30;
  v31 = [v42 view];
  *&v5 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v31)
  {
    v26 = v31;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MessageListMailCleanupTipCollectionViewCell-BocceBall.swift", 66, 2, 35, 0);
    __break(1u);
  }

  v23 = [v26 0x1FBB5C529];
  MEMORY[0x277D82BD8](v26);
  v21 = [v40 contentView];
  v22 = [v21 0x1FBB5C529];
  v24 = [v23 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v34[1] = v24;
  v25 = [v42 view];
  *&v6 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v25)
  {
    v20 = v25;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MessageListMailCleanupTipCollectionViewCell-BocceBall.swift", 66, 2, 36, 0);
    __break(1u);
  }

  v17 = [v20 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v20);
  v15 = [v40 contentView];
  v16 = [v15 0x1FBBB59CCLL];
  v18 = [v17 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v34[2] = v18;
  v19 = [v42 view];
  *&v7 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v19)
  {
    v14 = v19;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MessageListMailCleanupTipCollectionViewCell-BocceBall.swift", 66, 2, 37, 0);
    __break(1u);
  }

  v11 = [v14 0x1FBB20D25];
  MEMORY[0x277D82BD8](v14);
  v9 = [v40 contentView];
  v10 = [v9 0x1FBB20D25];
  v12 = [v11 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v34[3] = v12;
  sub_214A63280();
  v13 = sub_214CCF7D4();

  [v33 activateConstraints_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v42);
}

id sub_214BE830C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  *&v1[OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController] = 0;
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, sel_initWithCoder_);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v9 = v6;
    sub_214BE78B8();
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v9);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

uint64_t sub_214BE8454()
{
  type metadata accessor for MailCleanupTipView.ViewModel(0);
  v0 = sub_214BEC444(0, 0, 0, 0, 0, 0, 0);
  v2 = sub_214BEC9D4(v0);

  sub_214AA8B50();
  return v2;
}

double MessageListMailCleanupTipCollectionViewCell.configure(forTip:onSetupClick:onDismissClick:onAppear:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController;
  v19 = (v7 + OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController);
  swift_beginAccess();
  if (*v19)
  {
    v9 = *(v17 + v18);
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    sub_214CCE5C4();
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BE0](a1);
    sub_214BE8664(a1, a2, a3, a4, a5, a6, a7, v20, v21);
    MEMORY[0x277D82BD8](a1);
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

uint64_t sub_214BE8664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_214BECA1C(a8, a9);
  MEMORY[0x277D82BE0](a1);
  sub_214BE8CCC(a1);

  sub_214BECA1C(a8, a9);
  sub_214B5188C(a2);
  sub_214BE99A0(a2, a3);

  sub_214BECA1C(a8, a9);
  sub_214B5188C(a4);
  sub_214BEA95C(a4, a5);

  sub_214BECA1C(a8, a9);
  sub_214B5188C(a6);
  sub_214BEB918(a6, a7);
}

id MessageListMailCleanupTipCollectionViewCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_214BE8AF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x277D82BE0](a1);
  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36978, &qword_214CF2708);
  sub_214BEFB40(v6, v2, a2);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BE8B6C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214CCE014();

  return v1;
}

uint64_t sub_214BE8C08@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214BE8B6C();
}

uint64_t sub_214BE8C64(void *a1)
{
  sub_214A671A8(a1, &v3);
  v2 = v3;

  sub_214BE8CCC(v2);
}

double sub_214BE8CCC(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x277D82BE0](a1);
  sub_214CCE024();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_214BE8D80(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 58295);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_214CCE004();
  return sub_214BE8E60;
}

void sub_214BE8E60(void (***a1)(void, void))
{
  v1 = *a1;
  v1[7](v1, 0);

  free(v1);
}

double sub_214BE8F3C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988, &qword_214CF2758);
  sub_214CCDFE4();
  swift_endAccess();
  return result;
}

uint64_t sub_214BE8FB8(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36990, &unk_214CF2760);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988, &qword_214CF2758);
  sub_214CCDFF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_214BE910C(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 61891);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36990, &unk_214CF2760);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 61891);
  v6[4] = __swift_coroFrameAllocStub(v5, 61891);
  sub_214BE8F3C();
  return sub_214BE9230;
}

void sub_214BE9230(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_214BE8FB8(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_214BE8FB8(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

double sub_214BE932C@<D0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__tipInfo;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988, &qword_214CF2758);
  (*(*(v2 - 8) + 16))(a1, v4);
  swift_endAccess();
  return result;
}

uint64_t sub_214BE93C4(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988, &qword_214CF2758);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__tipInfo;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214BE9510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  sub_214B5188C(a1);
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
    v6 = sub_214B14B24;
    v7 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11[0] = v6;
  v11[1] = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36160, &qword_214CF0C10);
  sub_214BEFB40(v11, v4, a3);
  return sub_214A6B584(a1, a2);
}

uint64_t (*sub_214BE9630())()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214CCE014();
  if (v3)
  {
    v0 = swift_allocObject();
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    v2 = sub_214B1C21C;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_214BE9780@<X0>(uint64_t (**a1)()@<X8>)
{

  v7 = sub_214BE9630();
  v8 = v1;
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_214B14B24;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_214BE9884(uint64_t *a1)
{
  sub_214B78A8C(a1, v7);
  v5 = v7[0];
  v6 = v7[1];
  if (v7[0])
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    v3 = sub_214B1C21C;
    v4 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_214BE99A0(v3, v4);
}

uint64_t sub_214BE99A0(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214B5188C(a1);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_214CCE024();
  return sub_214A6B584(a1, a2);
}

uint64_t (*sub_214BE9AFC(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x58uLL, 57391);
  *a1 = v6;
  v6[6] = v5;

  v6[7] = swift_getKeyPath();
  v6[8] = swift_getKeyPath();
  v6[9] = sub_214CCE004();
  v6[10] = v1;
  v8 = *v1;
  v7 = v1[1];
  sub_214B5188C(*v1);
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v7;
    v9 = sub_214B1C21C;
    v10 = v2;
  }

  v6[4] = v9;
  v6[5] = v10;
  return sub_214BE9C90;
}

void sub_214BE9C90(void **a1, char a2)
{
  v20 = *a1;
  if (a2)
  {
    v12 = v20[4];
    v11 = v20[5];
    sub_214B5188C(v12);
    v13 = 0;
    v14 = 0;
    if (v12)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v12;
      *(v6 + 24) = v11;
      v13 = sub_214B14B24;
      v14 = v6;
    }

    v7 = v20[10];
    v10 = v20[9];
    v8 = *v7;
    v9 = v7[1];
    *v7 = v13;
    v7[1] = v14;
    sub_214A6B584(v8, v9);
    sub_214B86488(v20 + 4);
    v10();
  }

  else
  {
    v16 = v20[4];
    v17 = v20[5];
    v18 = 0;
    v19 = 0;
    if (v16)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = v16;
      *(v2 + 24) = v17;
      v18 = sub_214B14B24;
      v19 = v2;
    }

    v3 = v20[10];
    v15 = v20[9];
    v4 = *v3;
    v5 = v3[1];
    *v3 = v18;
    v3[1] = v19;
    sub_214A6B584(v4, v5);
    v15();
  }

  free(v20);
}

double sub_214BE9EF8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  sub_214CCDFE4();
  swift_endAccess();
  return result;
}

uint64_t sub_214BE9F74(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8, &qword_214CF27C0);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  sub_214CCDFF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_214BEA0C8(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 46415);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8, &qword_214CF27C0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 46415);
  v6[4] = __swift_coroFrameAllocStub(v5, 46415);
  sub_214BE9EF8();
  return sub_214BEA1EC;
}

void sub_214BEA1EC(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_214BE9F74(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_214BE9F74(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

double sub_214BEA2E8@<D0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onSetupClick;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  (*(*(v2 - 8) + 16))(a1, v4);
  swift_endAccess();
  return result;
}

uint64_t sub_214BEA380(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onSetupClick;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214BEA4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  sub_214B5188C(a1);
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
    v6 = sub_214B14B24;
    v7 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11[0] = v6;
  v11[1] = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36160, &qword_214CF0C10);
  sub_214BEFB40(v11, v4, a3);
  return sub_214A6B584(a1, a2);
}

uint64_t (*sub_214BEA5EC())()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214CCE014();
  if (v3)
  {
    v0 = swift_allocObject();
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    v2 = sub_214B1C21C;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_214BEA73C@<X0>(uint64_t (**a1)()@<X8>)
{

  v7 = sub_214BEA5EC();
  v8 = v1;
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_214B14B24;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_214BEA840(uint64_t *a1)
{
  sub_214B78A8C(a1, v7);
  v5 = v7[0];
  v6 = v7[1];
  if (v7[0])
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    v3 = sub_214B1C21C;
    v4 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_214BEA95C(v3, v4);
}

uint64_t sub_214BEA95C(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214B5188C(a1);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_214CCE024();
  return sub_214A6B584(a1, a2);
}

uint64_t (*sub_214BEAAB8(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x58uLL, 37069);
  *a1 = v6;
  v6[6] = v5;

  v6[7] = swift_getKeyPath();
  v6[8] = swift_getKeyPath();
  v6[9] = sub_214CCE004();
  v6[10] = v1;
  v8 = *v1;
  v7 = v1[1];
  sub_214B5188C(*v1);
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v7;
    v9 = sub_214B1C21C;
    v10 = v2;
  }

  v6[4] = v9;
  v6[5] = v10;
  return sub_214BEAC4C;
}

void sub_214BEAC4C(void **a1, char a2)
{
  v20 = *a1;
  if (a2)
  {
    v12 = v20[4];
    v11 = v20[5];
    sub_214B5188C(v12);
    v13 = 0;
    v14 = 0;
    if (v12)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v12;
      *(v6 + 24) = v11;
      v13 = sub_214B14B24;
      v14 = v6;
    }

    v7 = v20[10];
    v10 = v20[9];
    v8 = *v7;
    v9 = v7[1];
    *v7 = v13;
    v7[1] = v14;
    sub_214A6B584(v8, v9);
    sub_214B86488(v20 + 4);
    v10();
  }

  else
  {
    v16 = v20[4];
    v17 = v20[5];
    v18 = 0;
    v19 = 0;
    if (v16)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = v16;
      *(v2 + 24) = v17;
      v18 = sub_214B14B24;
      v19 = v2;
    }

    v3 = v20[10];
    v15 = v20[9];
    v4 = *v3;
    v5 = v3[1];
    *v3 = v18;
    v3[1] = v19;
    sub_214A6B584(v4, v5);
    v15();
  }

  free(v20);
}

double sub_214BEAEB4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  sub_214CCDFE4();
  swift_endAccess();
  return result;
}

uint64_t sub_214BEAF30(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8, &qword_214CF27C0);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  sub_214CCDFF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_214BEB084(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 22874);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8, &qword_214CF27C0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 22874);
  v6[4] = __swift_coroFrameAllocStub(v5, 22874);
  sub_214BEAEB4();
  return sub_214BEB1A8;
}

void sub_214BEB1A8(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_214BEAF30(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_214BEAF30(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

double sub_214BEB2A4@<D0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onDismissClick;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  (*(*(v2 - 8) + 16))(a1, v4);
  swift_endAccess();
  return result;
}

uint64_t sub_214BEB33C(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onDismissClick;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214BEB488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  sub_214B5188C(a1);
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
    v6 = sub_214B14B24;
    v7 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11[0] = v6;
  v11[1] = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36160, &qword_214CF0C10);
  sub_214BEFB40(v11, v4, a3);
  return sub_214A6B584(a1, a2);
}

uint64_t (*sub_214BEB5A8())()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214CCE014();
  if (v3)
  {
    v0 = swift_allocObject();
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    v2 = sub_214B1C21C;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_214BEB6F8@<X0>(uint64_t (**a1)()@<X8>)
{

  v7 = sub_214BEB5A8();
  v8 = v1;
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_214B14B24;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_214BEB7FC(uint64_t *a1)
{
  sub_214B78A8C(a1, v7);
  v5 = v7[0];
  v6 = v7[1];
  if (v7[0])
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    v3 = sub_214B1C21C;
    v4 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_214BEB918(v3, v4);
}

uint64_t sub_214BEB918(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214B5188C(a1);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_214CCE024();
  return sub_214A6B584(a1, a2);
}

uint64_t (*sub_214BEBA74(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x58uLL, 14012);
  *a1 = v6;
  v6[6] = v5;

  v6[7] = swift_getKeyPath();
  v6[8] = swift_getKeyPath();
  v6[9] = sub_214CCE004();
  v6[10] = v1;
  v8 = *v1;
  v7 = v1[1];
  sub_214B5188C(*v1);
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v7;
    v9 = sub_214B1C21C;
    v10 = v2;
  }

  v6[4] = v9;
  v6[5] = v10;
  return sub_214BEBC08;
}

void sub_214BEBC08(void **a1, char a2)
{
  v20 = *a1;
  if (a2)
  {
    v12 = v20[4];
    v11 = v20[5];
    sub_214B5188C(v12);
    v13 = 0;
    v14 = 0;
    if (v12)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v12;
      *(v6 + 24) = v11;
      v13 = sub_214B14B24;
      v14 = v6;
    }

    v7 = v20[10];
    v10 = v20[9];
    v8 = *v7;
    v9 = v7[1];
    *v7 = v13;
    v7[1] = v14;
    sub_214A6B584(v8, v9);
    sub_214B86488(v20 + 4);
    v10();
  }

  else
  {
    v16 = v20[4];
    v17 = v20[5];
    v18 = 0;
    v19 = 0;
    if (v16)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = v16;
      *(v2 + 24) = v17;
      v18 = sub_214B14B24;
      v19 = v2;
    }

    v3 = v20[10];
    v15 = v20[9];
    v4 = *v3;
    v5 = v3[1];
    *v3 = v18;
    v3[1] = v19;
    sub_214A6B584(v4, v5);
    v15();
  }

  free(v20);
}

double sub_214BEBE70()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  sub_214CCDFE4();
  swift_endAccess();
  return result;
}

uint64_t sub_214BEBEEC(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8, &qword_214CF27C0);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  sub_214CCDFF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_214BEC040(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 36454);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8, &qword_214CF27C0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 36454);
  v6[4] = __swift_coroFrameAllocStub(v5, 36454);
  sub_214BEBE70();
  return sub_214BEC164;
}

void sub_214BEC164(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_214BEBEEC(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_214BEBEEC(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

double sub_214BEC260@<D0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onAppear;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  (*(*(v2 - 8) + 16))(a1, v4);
  swift_endAccess();
  return result;
}

uint64_t sub_214BEC2F8(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onAppear;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214BEC4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a1;
  v39 = a2;
  v40 = a3;
  v37 = a4;
  v38 = a5;
  v35 = a6;
  v36 = a7;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  v25 = *(v32 - 8);
  v26 = v32 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v31 = &v17 - v18;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988, &qword_214CF2758);
  v20 = *(v24 - 8);
  v21 = v24 - 8;
  v19 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v23 = &v17 - v19;
  v50 = v8;
  v48 = v9;
  v49 = v10;
  v46 = v11;
  v47 = v12;
  v44 = v13;
  v45 = v14;
  v43 = v7;
  v22 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__tipInfo;
  v29 = 0;
  v15 = sub_214BE8AF0(0, &v17 - v19);
  (*(v20 + 32))(v7 + v22, v23, v24, v15);
  v27 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onSetupClick;
  sub_214BE9510(v29, v29, v31);
  v34 = *(v25 + 32);
  v33 = v25 + 32;
  v34(v7 + v27, v31, v32);
  v28 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onDismissClick;
  sub_214BEA4CC(v29, v29, v31);
  v34(v7 + v28, v31, v32);
  v30 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onAppear;
  sub_214BEB488(v29, v29, v31);
  v34(v7 + v30, v31, v32);
  MEMORY[0x277D82BE0](v41);
  sub_214BE8CCC(v41);
  sub_214B5188C(v39);
  sub_214BE99A0(v39, v40);
  sub_214B5188C(v37);
  sub_214BEA95C(v37, v38);
  sub_214BEB918(v35, v36);
  sub_214A6B584(v37, v38);
  sub_214A6B584(v39, v40);
  MEMORY[0x277D82BD8](v41);
  return v42;
}

uint64_t sub_214BEC80C()
{
  v3 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__tipInfo;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988, &qword_214CF2758);
  (*(*(v1 - 8) + 8))(v0 + v3);
  v4 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onSetupClick;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0, &qword_214CF27B8);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4);
  (v6)(v0 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onDismissClick, v5);
  (v6)(v0 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onAppear, v5);
  return v7;
}

uint64_t sub_214BEC998@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MailCleanupTipView.ViewModel(0);
  result = sub_214CCDFC4();
  *a2 = result;
  return result;
}

uint64_t sub_214BEC9D4(uint64_t a1)
{
  type metadata accessor for MailCleanupTipView.ViewModel(0);
  sub_214BEFCA4();
  return sub_214CCE254();
}

uint64_t sub_214BECA1C(uint64_t a1, uint64_t a2)
{

  return a2;
}

uint64_t sub_214BECA70(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_214BECAC4(uint64_t a1, uint64_t a2)
{

  type metadata accessor for MailCleanupTipView.ViewModel(0);
  sub_214BEFCA4();
  v3 = sub_214CCE264();

  return v3;
}

uint64_t sub_214BECB74(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_214BECBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v24 = a1;
  v25 = a2;
  v15 = sub_214BEFD24;
  v27 = sub_214BF0018;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369C8, &qword_214CF2858);
  v10 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v23 = &v9 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369D0, &qword_214CF2860);
  v11 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v29 = &v9 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369D8, &qword_214CF2868);
  v13 = *(*(v31 - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v33 = &v9 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v34 = &v9 - v14;
  v40 = &v9 - v14;
  v38 = v4;
  v39 = v5;

  v16 = &v35;
  v36 = v24;
  v37 = v25;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0, &qword_214CF2870);
  v18 = sub_214BEFD30();
  sub_214B6C2A4();
  v19 = 0;
  v20 = 1;
  sub_214CCF064();

  v22 = sub_214CCE8A4();
  sub_214BEFF90();
  sub_214CCED64();
  sub_214A99004(v23);

  v6 = swift_allocObject();
  v7 = v25;
  *(v6 + 16) = v24;
  *(v6 + 24) = v7;
  v28 = v6;
  sub_214BF0024();
  sub_214CCEDA4();
  sub_214A6B584(v27, v28);
  sub_214A99004(v29);
  v32 = sub_214BF00C8();
  sub_214B061F0(v33, v31, v34);
  sub_214A992F8(v33);
  sub_214A99624(v34, v33);
  sub_214B061F0(v33, v31, v30);
  sub_214A992F8(v33);
  return sub_214A992F8(v34);
}

uint64_t sub_214BECF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = a3;
  v22 = a1;
  v27 = a2;
  v23 = sub_214BF0498;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A08, &qword_214CF2880);
  v11 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v34 = v8 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369F8, &qword_214CF2878);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v28 = v8 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0, &qword_214CF2870);
  v18 = *(*(v14 - 8) + 64);
  v15 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v16 = v8 - v15;
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v19 = v8 - v17;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v21 = v8 - v20;
  v42 = v8 - v20;
  v40 = v5;
  v41 = v6;

  v24 = &v35;
  v36 = v22;
  v37 = v27;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AF0, &qword_214CF2A68);
  v26 = sub_214BF04A4();
  sub_214B6C2A4();
  sub_214CCF064();

  nullsub_1();
  sub_214BEF55C(MEMORY[0x277CDF950], MEMORY[0x277CDF948], &v39);
  v33 = &v38;
  v38 = v39;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B00, &qword_214CF2A70);
  v31 = sub_214BEFE80();
  v32 = sub_214BF052C();
  sub_214B07A68(v29, v30);
  sub_214CCEAC4();
  sub_214A9A188(v34);
  if (MUISolariumFeatureEnabled())
  {
    v9 = 20.0;
  }

  else
  {
    v9 = 10.0;
  }

  *&v8[1] = v9;
  v8[2] = sub_214BEFDD8();
  sub_214C666A0();
  sub_214CCEB84();
  sub_214A9A188(v28);
  v8[3] = sub_214BEFD30();
  sub_214B061F0(v19, v14, v21);
  sub_214A9A394(v19);
  sub_214A9A620(v21, v16);
  sub_214B061F0(v16, v14, v10);
  sub_214A9A394(v16);
  return sub_214A9A394(v21);
}

uint64_t sub_214BED348(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v107 = v235;
  v108 = &v234;
  v109 = &v214;
  v110 = &v203;
  v150 = v1;
  v151 = v2;
  v111 = v3;
  v143 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B10, &qword_214CF2A78);
  v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112 - 8);
  v114 = v56 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA8, &qword_214CF2910);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v115 - 8);
  v117 = v56 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB0, &qword_214CF2918);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118 - 8);
  v120 = v56 - v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB8, &qword_214CF2920);
  v122 = (*(*(v121 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121 - 8);
  v123 = v56 - v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AC0, &qword_214CF2928);
  v125 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v56 - v127;
  MEMORY[0x28223BE20](v4);
  v128 = v56 - v127;
  v242 = v56 - v127;
  v129 = sub_214CCF0C4();
  v130 = *(v129 - 8);
  v131 = v130;
  MEMORY[0x28223BE20](v129 - 8);
  v132 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A90, &qword_214CF28F8);
  v134 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133 - 8);
  v136 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  v135 = v56 - v136;
  MEMORY[0x28223BE20](v6);
  v137 = v56 - v136;
  v241 = v56 - v136;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B18, &qword_214CF2A80);
  v138 = v147;
  v139 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v141 = (v139 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v56 - v141;
  v140 = v56 - v141;
  MEMORY[0x28223BE20](v7);
  v146 = v56 - v141;
  v142 = v56 - v141;
  v240 = v56 - v141;
  v238 = v8;
  v239 = v9;

  v153 = v151;
  v154 = v150;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B20, &qword_214CF2A88);
  v145 = sub_214BF0650();
  sub_214C11934();
  sub_214CCF024();

  v148 = sub_214BF06D8();
  sub_214B061F0(v149, v147, v146);
  sub_214A9AD9C(v149);
  v152 = sub_214BECA1C(v151, v150);
  v231 = sub_214BE8B6C();
  if (v231)
  {
    v102 = v231;
    v10 = v231;
    sub_214A671E8(&v231);

    v104 = *&v102[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_message];
    v103 = *&v102[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_message + 8];

    v105 = v104;
    v106 = v103;
  }

  else
  {
    sub_214A671E8(&v231);

    v105 = 0;
    v106 = 0;
  }

  v229 = v105;
  v230 = v106;
  if (v106)
  {
    v232 = v229;
    v233 = v230;
  }

  else
  {
    v232 = sub_214CCF614("", 0, 1);
    v233 = v11;
    if (v230)
    {
      sub_214A61B48(&v229);
    }
  }

  v192 = v232;
  v193 = v233;
  sub_214B075A0();
  v188 = sub_214CCEA74();
  v189 = v12;
  v190 = v13;
  v191 = v14;
  v57 = v188;
  v58 = v12;
  v59 = v13;
  v60 = v14;
  v56[1] = sub_214CCE904();
  v184 = v57;
  v185 = v58;
  v186 = v59;
  v187 = v60;
  v180 = sub_214CCEA34();
  v181 = v15;
  v182 = v16;
  v183 = v17;
  v61 = v180;
  v62 = v15;
  v63 = v16;
  v64 = v17;

  sub_214B072EC(v57, v58, v59);

  v179 = sub_214BE7678();
  v175 = v61;
  v176 = v62;
  v177 = v63;
  v178 = v64;
  v171 = sub_214CCEA04();
  v172 = v18;
  v173 = v19;
  v174 = v20;
  v65 = v171;
  v66 = v18;
  v67 = v19;
  v68 = v20;
  sub_214B072EC(v61, v62, v63);

  v168[0] = v65;
  v168[1] = v66;
  v169 = v67;
  v170 = v68;
  v21 = sub_214CCF1A4();
  v55 = MEMORY[0x277CE0BC8];
  v54 = MEMORY[0x277CE0BD8];
  v53[1] = v22;
  v53[0] = v21;
  v85 = 1;
  v84 = 0;
  v94 = 0;
  v69 = v168;
  sub_214CCED14();
  sub_214B07618(v69);
  v194 = *v108;
  v23 = v108[1];
  v24 = v108[2];
  v25 = v108[3];
  v198 = v108[4];
  v197 = v25;
  v196 = v24;
  v195 = v23;
  v26 = v108[5];
  v27 = v108[6];
  v28 = v108[7];
  v202 = v108[8];
  v201 = v28;
  v200 = v27;
  v199 = v26;
  v167[0] = v194;
  v167[4] = v198;
  v167[3] = v197;
  v167[2] = v196;
  v167[1] = v195;
  v167[8] = v202;
  v167[7] = v28;
  v167[6] = v27;
  v167[5] = v26;
  v71 = sub_214CCE8D4();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B38, &unk_214CF2A90);
  sub_214BF0760();
  v91 = 0x4030000000000000;
  v72 = v167;
  sub_214CCED64();
  sub_214B07618(v72);
  v29 = v110;
  v30 = v108[9];
  v31 = v108[10];
  v32 = v108[11];
  v206 = v108[12];
  v205 = v32;
  v204 = v31;
  v203 = v30;
  v33 = v108[13];
  v34 = v108[14];
  v35 = v108[15];
  v210 = v108[16];
  v209 = v35;
  v208 = v34;
  v207 = v33;
  v36 = v108[17];
  v37 = v108[18];
  v38 = v108[19];
  *(v110 + 169) = *(v107 + 169);
  v213 = v38;
  v212 = v37;
  v211 = v36;
  v165[3] = v206;
  v165[2] = v205;
  v165[1] = v204;
  v165[0] = v203;
  v165[7] = v210;
  v165[6] = v209;
  v165[5] = v208;
  v165[4] = v207;
  *(v166 + 9) = *(v29 + 169);
  v166[0] = v38;
  v165[9] = v37;
  v165[8] = v36;
  v74 = sub_214CCE8E4();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B48, &unk_214CF3630);
  sub_214BF0800();
  v75 = v165;
  sub_214CCED64();
  sub_214B07618(v75);
  v39 = v109;
  v40 = v107[12];
  v41 = v107[13];
  v216 = v107[14];
  v215 = v41;
  v214 = v40;
  v42 = v107[15];
  v43 = v107[16];
  v44 = v107[17];
  v220 = v107[18];
  v219 = v44;
  v218 = v43;
  v217 = v42;
  v45 = v107[19];
  v46 = v107[20];
  v47 = v107[21];
  v224 = v107[22];
  v223 = v47;
  v222 = v46;
  v221 = v45;
  v48 = v107[23];
  v49 = v107[24];
  v50 = v107[25];
  *(v109 + 217) = *&v235[409];
  v227 = v50;
  v226 = v49;
  v225 = v48;
  v163[2] = v216;
  v163[1] = v215;
  v163[0] = v214;
  v163[6] = v220;
  v163[5] = v219;
  v163[4] = v218;
  v163[3] = v217;
  v163[10] = v224;
  v163[9] = v223;
  v163[8] = v222;
  v163[7] = v221;
  *(v164 + 9) = *(v39 + 217);
  v164[0] = v50;
  v163[12] = v49;
  v163[11] = v48;
  v77 = sub_214CCE8C4();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B58, &qword_214CF2AA0);
  sub_214BF08A4();
  v79 = &v236;
  v78 = v163;
  sub_214CCED64();
  sub_214B07618(v78);
  v81 = 281;
  v80 = v228;
  memcpy(v228, v79, 0x119uLL);
  v82 = v162;
  memcpy(v162, v228, 0x119uLL);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B68, &qword_214CF2AA8);
  v97 = sub_214BF0948();
  v101 = v237;
  sub_214B061F0(v82, v96, v237);
  sub_214B07618(v82);
  sub_214CCF0B4();
  v83 = sub_214CCE8D4();
  sub_214B0C24C();
  sub_214CCED64();
  (*(v131 + 8))(v132, v129);
  v98 = sub_214BF09EC();
  sub_214B061F0(v135, v133, v137);
  sub_214BF0A90(v135);

  v89 = v56;
  MEMORY[0x28223BE20](v56);
  v86 = v53;
  v54 = v151;
  v55 = v51;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B80, &qword_214CF2AB0);
  v88 = sub_214BF0AF8();
  sub_214C11934();
  sub_214CCF024();

  v90 = sub_214CCE8D4();
  sub_214BF0B80();
  sub_214CCED64();
  sub_214BF0C08(v114);
  v92 = sub_214CCE8E4();
  sub_214BF0C94();
  sub_214CCED64();
  sub_214BF0C08(v117);
  v93 = sub_214CCE8B4();
  sub_214BF0D38();
  sub_214CCED64();
  sub_214BF0C08(v120);
  v95 = sub_214CCE8C4();
  sub_214BF0DDC();
  sub_214CCED64();
  sub_214BF0C08(v123);
  v99 = sub_214BF0E80();
  sub_214B061F0(v126, v124, v128);
  sub_214BF0C08(v126);
  sub_214A9AE70(v142, v140);
  v161[0] = v140;
  v100 = v160;
  sub_214BF0F24(v101, v160);
  v161[1] = v100;
  sub_214BF1018(v137, v135);
  v161[2] = v135;
  sub_214BF10B8(v128, v126);
  v161[3] = v126;
  v159[0] = v138;
  v159[1] = v96;
  v159[2] = v133;
  v159[3] = v124;
  v155 = v148;
  v156 = v97;
  v157 = v98;
  v158 = v99;
  sub_214C663A4(v161, 4uLL, v159, v111);
  sub_214BF0C08(v126);
  sub_214BF0A90(v135);
  sub_214B07618(v100);
  sub_214A9AD9C(v140);
  sub_214BF0C08(v128);
  sub_214BF0A90(v137);
  sub_214B07618(v101);
  return sub_214A9AD9C(v142);
}

uint64_t sub_214BEE268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v86 = a1;
  v85 = a2;
  v69 = sub_214BF1494;
  v70 = sub_214BEECAC;
  v144 = 0;
  v142 = 0;
  v143 = 0;
  v104 = 0;
  v105 = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48, &qword_214CF28B8);
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v75 = v22 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A70, &qword_214CF28D8);
  v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v78 = v22 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A78, &qword_214CF28E0);
  v80 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v81 = v22 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A80, &qword_214CF28E8);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v82);
  v84 = v22 - v83;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A88, &qword_214CF28F0);
  v88 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v89 = v22 - v88;
  v90 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v91 = v22 - v90;
  v144 = v22 - v90;
  v142 = v5;
  v143 = v6;
  v92 = sub_214BECA1C(v5, v6);
  v136 = sub_214BE8B6C();
  if (v136)
  {
    v62 = &v136;
    v63 = v136;
    MEMORY[0x277D82BE0](v136);
    sub_214A671E8(v62);

    v64 = *(v63 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_title);
    v65 = *(v63 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_title + 8);

    MEMORY[0x277D82BD8](v63);
    v66 = v64;
    v67 = v65;
  }

  else
  {
    sub_214A671E8(&v136);

    v66 = 0;
    v67 = 0;
  }

  v134 = v66;
  v135 = v67;
  if (v67)
  {
    v137 = v134;
    v138 = v135;
  }

  else
  {
    v137 = sub_214CCF614("", 0, 1);
    v138 = v7;
    if (v135)
    {
      sub_214A61B48(&v134);
    }
  }

  v22[0] = v131;
  v131[0] = v137;
  v131[1] = v138;
  sub_214B075A0();
  v127 = sub_214CCEA74();
  v128 = v8;
  v129 = v9;
  v130 = v10;
  v23 = v127;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v22[1] = sub_214CCE914();
  v123 = v23;
  v124 = v24;
  v46 = 1;
  v125 = v25 & 1;
  v126 = v26;
  v119 = sub_214CCEA34();
  v120 = v11;
  v121 = v12;
  v122 = v13;
  v28 = v119;
  v29 = v11;
  v27 = v12;
  v30 = v13;

  sub_214B072EC(v23, v24, v25 & 1);

  sub_214CCE964();
  v115 = v28;
  v116 = v29;
  v117 = v27 & 1 & v46;
  v118 = v30;
  v52 = 0;
  v111 = sub_214CCE9E4();
  v112 = v14;
  v113 = v15;
  v114 = v16;
  v31 = v111;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  sub_214B072EC(v28, v29, v27 & 1);

  v35 = v108;
  v108[0] = v31;
  v108[1] = v32;
  v109 = v33 & 1 & v46;
  v110 = v34;
  sub_214CCE8B4();
  v36 = &v139;
  sub_214CCED64();
  sub_214B07618(v35);
  v37 = v132;
  v38 = 73;
  memcpy(v132, v36, 0x49uLL);
  v41 = v107;
  memcpy(v107, v132, 0x49uLL);
  v40 = sub_214CCE8D4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C18, &qword_214CED588);
  sub_214B07048();
  v42 = &v140;
  sub_214CCED64();
  sub_214B07618(v41);
  v43 = v133;
  v44 = 121;
  memcpy(v133, v42, 0x79uLL);
  v45 = v106;
  memcpy(v106, v133, 0x79uLL);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C08, &qword_214CED580);
  v56 = sub_214B06FA4();
  v61 = v141;
  sub_214B061F0(v45, v54, v141);
  sub_214B07618(v45);
  v102 = sub_214CCF054();
  v103 = v17 & 1 & v46;
  v55 = MEMORY[0x277CE1180];
  v57 = MEMORY[0x277CE1170];
  sub_214B061F0(&v102, MEMORY[0x277CE1180], &v104);

  v18 = swift_allocObject();
  v19 = v85;
  v47 = v18;
  *(v18 + 16) = v86;
  *(v18 + 24) = v19;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BC0, &qword_214CF2AB8);
  sub_214BF14A0();
  sub_214CCF004();
  v20 = sub_214C22D88();
  v49 = &v101;
  v101 = v20;
  sub_214BF1584();
  sub_214CCEC04();
  (*(v72 + 8))(v75, v71);
  v50 = sub_214CCE8B4();
  sub_214BF160C();
  sub_214CCED64();
  sub_214A9B15C(v78);
  v51 = sub_214CCE8D4();
  sub_214BF16B4();
  sub_214CCED64();
  sub_214A9B15C(v81);
  v53 = sub_214CCE8E4();
  sub_214BF1758();
  sub_214CCED64();
  sub_214A9B15C(v84);
  v58 = sub_214BF17FC();
  sub_214B061F0(v89, v87, v91);
  sub_214A9B15C(v89);
  v60 = v99;
  sub_214BF18A0(v61, v99);
  v59 = v100;
  v100[0] = v60;
  v97 = v104;
  v98 = v105;
  v100[1] = &v97;
  sub_214A9B1C4(v91, v89);
  v100[2] = v89;
  v96[0] = v54;
  v96[1] = v55;
  v96[2] = v87;
  v93 = v56;
  v94 = v57;
  v95 = v58;
  sub_214C663A4(v59, 3uLL, v96, v68);
  sub_214A9B15C(v89);
  sub_214B07618(v60);
  sub_214A9B15C(v91);
  return sub_214B07618(v61);
}

uint64_t sub_214BEEBF4(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  sub_214BECA1C(a1, a2);
  v6[0] = sub_214BEA5EC();
  v6[1] = v2;
  if (v6[0])
  {
    v5 = v6[0];

    sub_214B86488(v6);

    v5(v4);
  }

  else
  {
    sub_214B86488(v6);
  }
}

uint64_t sub_214BEECAC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v12 = MEMORY[0x277CE0C08];
  v26 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BF8, &qword_214CF2AC0);
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v16 = &v5 - v6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BC0, &qword_214CF2AB8);
  v7 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v21 = &v5 - v7;
  v8 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](&v5 - v7);
  v22 = &v5 - v8;
  v26 = &v5 - v8;
  sub_214CCF614("xmark", 5, 1, v2);
  v3 = sub_214CCEF34();
  v9 = &v25;
  v25 = v3;
  sub_214CCE964();
  v10 = MEMORY[0x277CE1088];
  v11 = MEMORY[0x277CE1078];
  sub_214CCEAE4();
  sub_214A75F80();
  v13 = sub_214CCE904();
  v23 = v10;
  v24 = v11;
  swift_getOpaqueTypeConformance2();
  sub_214CCECF4();

  (*(v14 + 8))(v16, v17);
  v20 = sub_214BF14A0();
  sub_214B061F0(v21, v19, v22);
  sub_214A9B314(v21);
  sub_214A9B3B8(v22, v21);
  sub_214B061F0(v21, v19, v18);
  sub_214A9B314(v21);
  return sub_214A9B314(v22);
}

uint64_t sub_214BEEF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v35 = a1;
  v34 = a2;
  v28 = sub_214BF12D0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v52 = 0;
  v53 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8, &unk_214CF0A40);
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v33 = v15 - v32;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A98, &qword_214CF2900);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v38 = v15 - v37;
  v39 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v40 = v15 - v39;
  v41 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v42 = v15 - v41;
  v62 = v15 - v41;
  v60 = v7;
  v61 = v8;
  v43 = sub_214BECA1C(v7, v8);
  v57 = sub_214BE8B6C();
  if (v57)
  {
    v21 = &v57;
    v22 = v57;
    MEMORY[0x277D82BE0](v57);
    sub_214A671E8(v21);

    v23 = *(v22 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_submitButtonLabel);
    v24 = *(v22 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_submitButtonLabel + 8);

    MEMORY[0x277D82BD8](v22);
    v25 = v23;
    v26 = v24;
  }

  else
  {
    sub_214A671E8(&v57);

    v25 = 0;
    v26 = 0;
  }

  v55 = v25;
  v56 = v26;
  if (v26)
  {
    v58 = v55;
    v59 = v56;
  }

  else
  {
    v58 = sub_214CCF614("", 0, 1);
    v59 = v9;
    if (v56)
    {
      sub_214A61B48(&v55);
    }
  }

  v15[1] = v54;
  v54[0] = v58;
  v54[1] = v59;

  v10 = swift_allocObject();
  v11 = v34;
  v15[0] = v10;
  *(v10 + 16) = v35;
  *(v10 + 24) = v11;
  sub_214B075A0();
  sub_214CCF014();
  v15[2] = sub_214CCF1A4();
  v15[3] = v12;
  sub_214B79534();
  v17 = 0;
  v16 = 1;
  sub_214CCED04();
  (*(v30 + 8))(v33, v29);
  v19 = sub_214BF12DC();
  sub_214B061F0(v40, v36, v42);
  sub_214BF1380(v40);
  v50 = sub_214CCF054();
  v51 = v13 & 1;
  v18 = MEMORY[0x277CE1180];
  v20 = MEMORY[0x277CE1170];
  sub_214B061F0(&v50, MEMORY[0x277CE1180], &v52);
  sub_214BF13E8(v42, v38);
  v49[0] = v38;
  v47 = v52;
  v48 = v53;
  v49[1] = &v47;
  v46[0] = v36;
  v46[1] = v18;
  v44 = v19;
  v45 = v20;
  sub_214C663A4(v49, 2uLL, v46, v27);
  sub_214BF1380(v38);
  return sub_214BF1380(v42);
}

uint64_t sub_214BEF4A4(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  sub_214BECA1C(a1, a2);
  v6[0] = sub_214BE9630();
  v6[1] = v2;
  if (v6[0])
  {
    v5 = v6[0];

    sub_214B86488(v6);

    v5(v4);
  }

  else
  {
    sub_214B86488(v6);
  }
}

uint64_t sub_214BEF55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a3;
  v9 = a1;
  v10 = a2;
  v12 = a1;
  v7 = *(a1 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](a1);
  v11 = &v5 - v6;
  (*(v7 + 16))(v3);
  return sub_214BF05B4(v11, 1, v9, v8);
}

double sub_214BEF624(uint64_t a1, uint64_t a2)
{
  v33[2] = a1;
  v33[3] = a2;
  sub_214BECA1C(a1, a2);
  v33[0] = sub_214BEB5A8();
  v33[1] = v2;
  if (v33[0])
  {
    v17 = v33[0];

    sub_214B86488(v33);

    v17(v3);
  }

  else
  {
    sub_214B86488(v33);
  }

  sub_214BECA1C(a1, a2);
  v32 = sub_214BE8B6C();
  if (v32)
  {
    v12 = v32;
    MEMORY[0x277D82BE0](v32);
    sub_214A671E8(&v32);

    v13 = *(v12 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId);
    v14 = *(v12 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId + 8);

    MEMORY[0x277D82BD8](v12);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    sub_214A671E8(&v32);

    v15 = 0;
    v16 = 0;
  }

  v10 = sub_214CCF614("CONSENT_TIP", 11, 1);
  v11 = v4;

  v30[0] = v15;
  v30[1] = v16;
  *&v31 = v10;
  *(&v31 + 1) = v11;
  if (v16)
  {
    sub_214A61AD0(v30, &v22);
    if (*(&v31 + 1))
    {
      v21 = v22;
      v20 = v31;
      v8 = MEMORY[0x21605D8D0](v22, *(&v22 + 1), v31, *(&v31 + 1));
      sub_214A61B48(&v20);
      sub_214A61B48(&v21);
      sub_214A61B48(v30);
      v9 = v8;
      goto LABEL_13;
    }

    sub_214A61B48(&v22);
    goto LABEL_15;
  }

  if (*(&v31 + 1))
  {
LABEL_15:
    sub_214A76610(v30);
    v9 = 0;
    goto LABEL_13;
  }

  sub_214A61B48(v30);
  v9 = 1;
LABEL_13:

  if (v9)
  {
    sub_214CCF614("com.apple.icloud.mail.cleanup", 29, 1);
    v7 = sub_214CCF544();

    v28 = sub_214BEF9C8;
    v29 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = 0;
    v26 = sub_214C60F20;
    v27 = &block_descriptor_12;
    v6 = _Block_copy(&aBlock);
    AnalyticsSendEventLazy();
    _Block_release(v6);
    *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  return result;
}

uint64_t sub_214BEF9C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AE8, &qword_214CF2A60);
  sub_214CD03C4();
  v8 = v0;
  *v0 = sub_214CCF614("entry_point", 11, 1);
  v8[1] = v1;
  sub_214AF82CC();
  v2 = sub_214CCF614("1");
  v8[2] = sub_214BC9508(v2, v3);
  v8[3] = sub_214CCF614("event_type", 10, 1);
  v8[4] = v4;
  v5 = sub_214CCF614("0", 1, 1);
  v8[5] = sub_214BC9508(v5, v6);
  sub_214A63280();
  sub_214A77084();
  return sub_214CCF344();
}

uint64_t sub_214BEFB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[1] = a3;
  v8 = a1;
  v9 = a2;
  v10 = a2;
  v6 = *(a2 - 8);
  v7 = a2 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](a1);
  v5[2] = v5 - v5[0];
  (*(v6 + 16))(v3);
  sub_214CCDFD4();
  return (*(v6 + 8))(v8, v9);
}

uint64_t type metadata accessor for MailCleanupTipView.ViewModel(uint64_t a1)
{
  v2 = qword_27CA36AC8;
  if (!qword_27CA36AC8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_214BEFCA4()
{
  v2 = qword_27CA369C0;
  if (!qword_27CA369C0)
  {
    type metadata accessor for MailCleanupTipView.ViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA369C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFD30()
{
  v2 = qword_27CA369E8;
  if (!qword_27CA369E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369E0, &qword_214CF2870);
    sub_214BEFDD8();
    sub_214B07170();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA369E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFDD8()
{
  v2 = qword_27CA369F0;
  if (!qword_27CA369F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369F8, &qword_214CF2878);
    sub_214BEFE80();
    sub_214BEFF08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA369F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFE80()
{
  v2 = qword_27CA36A00;
  if (!qword_27CA36A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A08, &qword_214CF2880);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFF08()
{
  v2 = qword_27CA36A10;
  if (!qword_27CA36A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A18, &unk_214CF2888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFF90()
{
  v2 = qword_27CA36A20;
  if (!qword_27CA36A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369C8, &qword_214CF2858);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0024()
{
  v2 = qword_27CA36A60;
  if (!qword_27CA36A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369D0, &qword_214CF2860);
    sub_214BEFF90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF00C8()
{
  v2 = qword_27CA36A68;
  if (!qword_27CA36A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369D8, &qword_214CF2868);
    sub_214BF0024();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF01C4(uint64_t a1)
{
  updated = sub_214BF0310(319);
  if (v1 <= 0x3F)
  {
    updated = sub_214BF03B4(319);
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_214BF0310(uint64_t a1)
{
  v5 = qword_27CA36AD8;
  if (!qword_27CA36AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36978, &qword_214CF2708);
    v4 = sub_214CCE034();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27CA36AD8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214BF03B4(uint64_t a1)
{
  v5 = qword_27CA36AE0;
  if (!qword_27CA36AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36160, &qword_214CF0C10);
    v4 = sub_214CCE034();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27CA36AE0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214BF04A4()
{
  v2 = qword_27CA36AF8;
  if (!qword_27CA36AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AF0, &qword_214CF2A68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36AF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF052C()
{
  v2 = qword_27CA36B08;
  if (!qword_27CA36B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B00, &qword_214CF2A70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF05B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = sub_214CCE844();
  *(a5 + *(result + 36)) = a2;
  return result;
}

unint64_t sub_214BF0650()
{
  v2 = qword_27CA36B28;
  if (!qword_27CA36B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B20, &qword_214CF2A88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF06D8()
{
  v2 = qword_27CA36B30;
  if (!qword_27CA36B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B18, &qword_214CF2A80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0760()
{
  v2 = qword_27CA36B40;
  if (!qword_27CA36B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B38, &unk_214CF2A90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0800()
{
  v2 = qword_27CA36B50;
  if (!qword_27CA36B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B48, &unk_214CF3630);
    sub_214BF0760();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF08A4()
{
  v2 = qword_27CA36B60;
  if (!qword_27CA36B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B58, &qword_214CF2AA0);
    sub_214BF0800();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0948()
{
  v2 = qword_27CA36B70;
  if (!qword_27CA36B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B68, &qword_214CF2AA8);
    sub_214BF08A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF09EC()
{
  v2 = qword_27CA36B78;
  if (!qword_27CA36B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A90, &qword_214CF28F8);
    sub_214B0C24C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF0A90(uint64_t a1)
{
  v1 = sub_214CCF0C4();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_214BF0AF8()
{
  v2 = qword_27CA36B88;
  if (!qword_27CA36B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B80, &qword_214CF2AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0B80()
{
  v2 = qword_27CA36B90;
  if (!qword_27CA36B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B10, &qword_214CF2A78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF0C08(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58, &unk_214CF28C8) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8, &unk_214CF0A40);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_214BF0C94()
{
  v2 = qword_27CA36B98;
  if (!qword_27CA36B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AA8, &qword_214CF2910);
    sub_214BF0B80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0D38()
{
  v2 = qword_27CA36BA0;
  if (!qword_27CA36BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AB0, &qword_214CF2918);
    sub_214BF0C94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0DDC()
{
  v2 = qword_27CA36BA8;
  if (!qword_27CA36BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AB8, &qword_214CF2920);
    sub_214BF0D38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0E80()
{
  v2 = qword_27CA36BB0;
  if (!qword_27CA36BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AC0, &qword_214CF2928);
    sub_214BF0DDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF0F24(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_214B0755C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  memcpy((a2 + 32), (a1 + 32), 0x70uLL);
  memcpy((a2 + 144), (a1 + 144), 0x29uLL);
  memcpy((a2 + 192), (a1 + 192), 0x29uLL);
  memcpy((a2 + 240), (a1 + 240), 0x29uLL);
  return a2;
}

uint64_t sub_214BF1018(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCF0C4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A90, &qword_214CF28F8);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_214BF10B8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58, &unk_214CF28C8) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8, &unk_214CF0A40);
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A98, &qword_214CF2900);
  memcpy((a2 + v12 + *(v3 + 36)), (a1 + v12 + *(v3 + 36)), 0x30uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA0, &qword_214CF2908);
  v5 = a1 + v12 + *(v4 + 48);
  v6 = a2 + v12 + *(v4 + 48);
  *v6 = *v5;
  *(v6 + 8) = *(v5 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA8, &qword_214CF2910);
  memcpy((a2 + *(v7 + 36)), (a1 + *(v7 + 36)), 0x29uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB0, &qword_214CF2918);
  memcpy((a2 + *(v8 + 36)), (a1 + *(v8 + 36)), 0x29uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB8, &qword_214CF2920);
  memcpy((a2 + *(v9 + 36)), (a1 + *(v9 + 36)), 0x29uLL);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AC0, &qword_214CF2928);
  memcpy((a2 + *(v10 + 36)), (a1 + *(v10 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_214BF12DC()
{
  v2 = qword_27CA36BB8;
  if (!qword_27CA36BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A98, &qword_214CF2900);
    sub_214B79534();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF1380(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8, &unk_214CF0A40);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_214BF13E8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8, &unk_214CF0A40);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A98, &qword_214CF2900);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_214BF14A0()
{
  v2 = qword_27CA36BC8;
  if (!qword_27CA36BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36BC0, &qword_214CF2AB8);
    swift_getOpaqueTypeConformance2();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF1584()
{
  v2 = qword_27CA36BD0;
  if (!qword_27CA36BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A48, &qword_214CF28B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF160C()
{
  v2 = qword_27CA36BD8;
  if (!qword_27CA36BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A70, &qword_214CF28D8);
    sub_214BF1584();
    sub_214B0DB84();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF16B4()
{
  v2 = qword_27CA36BE0;
  if (!qword_27CA36BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A78, &qword_214CF28E0);
    sub_214BF160C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF1758()
{
  v2 = qword_27CA36BE8;
  if (!qword_27CA36BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A80, &qword_214CF28E8);
    sub_214BF16B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF17FC()
{
  v2 = qword_27CA36BF0;
  if (!qword_27CA36BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A88, &qword_214CF28F0);
    sub_214BF1758();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF18A0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_214B0755C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  memcpy((a2 + 32), (a1 + 32), 0x29uLL);
  memcpy((a2 + 80), (a1 + 80), 0x29uLL);
  return a2;
}

id sub_214BF1960(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t sub_214BF1A50()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1AC0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF1B5C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1BCC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF1C68()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1CD8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF1D74()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1DE4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF1E80()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1EF0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BF1F8C()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF2094();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BF2094()
{
  sub_214A73F68();
  v4 = sub_214A61730();
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277D769D0];
  v3 = [v1 preferredFontForTextStyle_];
  [v4 setFont_];
  [v4 setNumberOfLines_];
  return v4;
}

double sub_214BF2174(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BF220C()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF2314();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BF2314()
{
  sub_214A73F04();
  v10 = sub_214A61730();
  sub_214A731BC();
  MEMORY[0x277D82BE0](@"app.badge");
  v0 = sub_214CCF564();
  v11 = sub_214B4D9C8(v0, v1);
  [v10 setImage_];
  MEMORY[0x277D82BD8](v11);
  sub_214A74030();
  v12 = objc_opt_self();
  v13 = *MEMORY[0x277D769A8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D769A8]);
  v14 = [v12 _preferredFontForTextStyle_weight_];
  MEMORY[0x277D82BD8](v13);
  if (v14)
  {
    v9 = v14;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MessageListOnboardingTipCollectionViewCell.swift", 55, 2, 54, 0);
    __break(1u);
  }

  v7 = sub_214A74094(v9);
  sub_214A65CE0();
  sub_214CD03C4();
  v5 = v2;
  *v2 = [objc_opt_self() systemRedColor];
  v5[1] = [objc_opt_self() tertiaryLabelColor];
  sub_214A63280();
  v6 = sub_214A79C6C(v3);
  v8 = [v7 configurationByApplyingConfiguration_];
  MEMORY[0x277D82BD8](v6);
  [v10 setPreferredSymbolConfiguration_];
  MEMORY[0x277D82BD8](v8);
  [v10 setContentMode_];
  MEMORY[0x277D82BD8](v10);
  return v10;
}

double sub_214BF2614(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BF26AC()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF27C0();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BF27C0()
{
  sub_214A7802C();
  v7 = sub_214A61730();
  v2 = [objc_opt_self() separatorColor];
  [v7 setBackgroundColor_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 contentScaleFactor];
  v4 = v0;
  (MEMORY[0x277D82BD8])();
  v5 = [v7 heightAnchor];
  v6 = [v5 constraintEqualToConstant_];
  [v6 setActive_];
  MEMORY[0x277D82BD8](v6);
  return v7;
}

double sub_214BF2938(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BF29D0()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF27C0();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF2AE4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF2EFC(1);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF2D6C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF2E04@<D0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF2E70(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF2D6C(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

id sub_214BF2EFC(uint64_t a1)
{
  v29 = a1;
  v13 = 0;
  v14 = sub_214BF4354;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36C50, &qword_214CF2B38);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v21 = &v7 - v10;
  v28 = 0;
  v24 = sub_214CCFEA4();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v11 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v26 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v25 = &v7 - v12;
  v36 = &v7 - v12;
  v20 = sub_214CCDFA4();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v15 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v17 = &v7 - v15;
  v35 = &v7 - v15;
  v34 = v29;
  v33 = v16;
  sub_214CCDFB4();
  sub_214CCFE74();
  MUIOnboardingTip.primaryActionTitle.getter(v29);
  sub_214CCFE84();
  (*(v18 + 16))(v21, v17, v20);
  (*(v18 + 56))(v21, 0, 1, v20);
  sub_214CCFE34();
  sub_214CCFDF4();
  sub_214BD2A6C();
  (*(v22 + 16))(v26, v25, v24);
  v27 = sub_214CCFEB4();
  v32 = v27;
  *&v4 = MEMORY[0x277D82BE0](v27).n128_u64[0];
  [v27 setContentHorizontalAlignment_];
  v5 = MEMORY[0x277D82BD8](v27);
  v5.n128_u32[0] = 1148846080;
  [v27 setContentHuggingPriority:v28 forAxis:v5.n128_f64[0]];
  v30 = MUIOnboardingTip.primaryAction.getter(v29);
  if (v30)
  {
    v9 = v30;
    v8 = v30;
    v31 = v30;
    [v27 addAction_forControlEvents_];
    MEMORY[0x277D82BD8](v8);
  }

  (*(v22 + 8))(v25, v24);
  (*(v18 + 8))(v17, v20);
  return v27;
}

id MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF3674(1);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF34E4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF357C@<D0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF35E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF34E4(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

id sub_214BF3674(uint64_t a1)
{
  v18 = a1;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v13 = sub_214CCFEA4();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = *(v11 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v15 = v7 - v8;
  v10 = v8;
  MEMORY[0x28223BE20](v1);
  v14 = v7 - v10;
  v24 = v7 - v10;
  v23 = v2;
  v22 = v3;
  sub_214CCFE74();
  MUIOnboardingTip.secondaryActionTitle.getter(v18);
  sub_214CCFE84();
  sub_214CCFDF4();
  sub_214BD2A6C();
  (*(v11 + 16))(v15, v14, v13);
  v16 = sub_214CCFEB4();
  v21 = v16;
  *&v4 = MEMORY[0x277D82BE0](v16).n128_u64[0];
  [v16 setContentHorizontalAlignment_];
  v5 = MEMORY[0x277D82BD8](v16);
  v5.n128_u32[0] = 1148846080;
  [v16 setContentHuggingPriority:v17 forAxis:v5.n128_f64[0]];
  v19 = MUIOnboardingTip.secondaryAction.getter(v18);
  if (v19)
  {
    v7[1] = v19;
    v7[0] = v19;
    v20 = v19;
    [v16 addAction_forControlEvents_];
    MEMORY[0x277D82BD8](v7[0]);
  }

  (*(v11 + 8))(v14, v13);
  return v16;
}

id MessageListOnboardingTipCollectionViewCell.okButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF2EFC(2);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF3AC4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF3B5C@<D0>(uint64_t *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.okButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF3BC8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF3AC4(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

id MessageListOnboardingTipCollectionViewCell.customizeButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF3674(2);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF3E44(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF3EDC@<D0>(uint64_t *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.customizeButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF3F48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF3E44(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

id MessageListOnboardingTipCollectionViewCell.cancelButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  sub_214BD2A6C();
  v4 = sub_214A61730();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF41C4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF425C@<D0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF42C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF41C4(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t sub_214BF4354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v6[1] = a1;
  v21 = 0;
  v20 = 0;
  v17 = sub_214CCCFA4();
  v13 = *(v17 - 8);
  v14 = v17 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v17);
  v16 = v6 - v7;
  v21 = v6 - v7;
  v20 = v4;
  (*(v13 + 16))(v6 - v7, v3);
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D76918];
  MEMORY[0x277D82BE0](v9);
  v10 = [v8 _preferredFontForTextStyle_weight_];
  MEMORY[0x277D82BD8](v9);
  v12 = &v19;
  v19 = v10;
  sub_214BD24A8();
  sub_214CCCF64();
  return (*(v13 + 32))(v15, v16, v17);
}

char *sub_214BF4514(double a1, double a2, double a3, double a4)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  *&v13 = a3;
  *(&v13 + 1) = a4;
  ObjectType = swift_getObjectType();
  v16 = v12;
  v17 = v13;
  v18 = v4;
  v6 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel;
  sub_214A73F68();
  *&v4[v6] = sub_214A61730();
  v7 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel;
  *&v18[v7] = sub_214A61730();
  v8 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView;
  sub_214A7802C();
  *&v18[v8] = sub_214A61730();
  v9 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView;
  sub_214A73FCC();
  *&v18[v9] = sub_214A61730();
  v10 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView;
  *&v18[v10] = sub_214A61730();
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton] = 0;
  v15.receiver = v18;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, sel_initWithFrame_, v12, v13);
  MEMORY[0x277D82BE0](v14);
  v18 = v14;
  sub_214BF4794();
  MEMORY[0x277D82BD8](v18);
  return v14;
}

uint64_t sub_214BF4794()
{
  v136 = "Fatal error";
  v137 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v138 = "MailUI/MessageListOnboardingTipCollectionViewCell.swift";
  v206 = 0;
  v205 = 0;
  v201 = 0;
  v200 = 0;
  v194 = 0;
  v192 = 0;
  v187 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8, &qword_214CF1FC0);
  v139 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v140 = v38 - v139;
  v174 = 0;
  v141 = sub_214CCFE44();
  v142 = *(v141 - 8);
  v143 = v141 - 8;
  v144 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v174);
  v145 = v38 - v144;
  v172 = sub_214CCFDB4();
  v170 = *(v172 - 8);
  v171 = v172 - 8;
  v146 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v174);
  v173 = v38 - v146;
  v147 = sub_214CCFEA4();
  v148 = *(v147 - 8);
  v149 = v147 - 8;
  v150 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v147);
  v151 = v38 - v150;
  v206 = v38 - v150;
  v205 = v1;
  v160 = &qword_27CA36000;
  v152 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  v153 = &v204;
  v162 = 32;
  v163 = 0;
  swift_beginAccess();
  v156 = *v152;
  MEMORY[0x277D82BE0](v156);
  swift_endAccess();
  sub_214CCF614(" ", 1, 1);
  v154 = v2;
  v155 = sub_214CCF544();

  [v156 setText_];
  MEMORY[0x277D82BD8](v155);
  MEMORY[0x277D82BD8](v156);
  v157 = &v161[v160[384]];
  v158 = &v203;
  swift_beginAccess();
  v159 = *v157;
  MEMORY[0x277D82BE0](v159);
  swift_endAccess();
  [v159 setNumberOfLines_];
  MEMORY[0x277D82BD8](v159);
  v164 = &v161[v160[384]];
  v165 = &v202;
  swift_beginAccess();
  v169 = *v164;
  MEMORY[0x277D82BE0](v169);
  swift_endAccess();
  v175 = 0x277D74000uLL;
  v166 = objc_opt_self();
  v167 = *MEMORY[0x277D76918];
  MEMORY[0x277D82BE0](v167);
  v3 = *MEMORY[0x277D74420];
  v177 = 0x1FBACF000uLL;
  v168 = [v166 0x1FBACF65ALL];
  *&v4 = MEMORY[0x277D82BD8](v167).n128_u64[0];
  [v169 setFont_];
  MEMORY[0x277D82BD8](v168);
  MEMORY[0x277D82BD8](v169);
  sub_214CCFE94();
  (*(v170 + 104))(v173, *MEMORY[0x277D74FD8], v172);
  sub_214CCFDC4();
  v176 = sub_214A74030();
  v178 = objc_opt_self();
  v179 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](v179);
  v180 = [v178 (v177 + 1626)];
  MEMORY[0x277D82BD8](v179);
  if (v180)
  {
    v135 = v180;
  }

  else
  {
    sub_214CD01F4(v136, 11, 2, v137, 68, 2, v138, 55, 2, 185, 0);
    __break(1u);
  }

  v134 = sub_214A74094(v135);
  v201 = v134;
  v94 = 1;
  v133 = sub_214BCD550(1);
  v200 = v133;
  *&v5 = MEMORY[0x277D82BE0](v133).n128_u64[0];
  v38[1] = [v134 configurationByApplyingConfiguration_];
  MEMORY[0x277D82BD8](v133);
  sub_214CCFD94();
  (*(v142 + 104))(v145, *MEMORY[0x277D75028], v141);
  sub_214CCFDA4();
  v92 = 0;
  sub_214A731BC();
  v127 = 1;
  v6 = sub_214CCF614("xmark", 5, 1);
  sub_214B4D9C8(v6, v7);
  sub_214CCFE64();
  v39 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  (*(v148 + 16))(v140, v151, v147);
  v8 = *(v148 + 56);
  v96 = 0;
  v8(v140);
  sub_214CCFED4();
  MEMORY[0x277D82BD8](v39);
  v9 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  v10 = v161;
  v40 = v9;
  LODWORD(v11) = 1148846080;
  [v9 setContentHuggingPriority:v92 forAxis:v11];
  MEMORY[0x277D82BD8](v40);
  v65 = &qword_27CA36000;
  v41 = &v10[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel];
  v42 = &v199;
  v121 = 32;
  v122 = 0;
  swift_beginAccess();
  v45 = *v41;
  MEMORY[0x277D82BE0](v45);
  swift_endAccess();
  sub_214CCF614(" ", v94, v127 & 1);
  v43 = v12;
  v44 = sub_214CCF544();

  [v45 setText_];
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  v46 = &v10[v65[385]];
  v47 = &v198;
  swift_beginAccess();
  v51 = *v46;
  MEMORY[0x277D82BE0](v51);
  swift_endAccess();
  v48 = objc_opt_self();
  v49 = *MEMORY[0x277D769D0];
  *&v13 = MEMORY[0x277D82BE0](v49).n128_u64[0];
  v50 = [v48 preferredFontForTextStyle_];
  *&v14 = MEMORY[0x277D82BD8](v49).n128_u64[0];
  [v51 setFont_];
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  v52 = &v10[v65[385]];
  v53 = &v197;
  swift_beginAccess();
  v55 = *v52;
  MEMORY[0x277D82BE0](v55);
  swift_endAccess();
  v54 = [objc_opt_self() secondaryLabelColor];
  [v55 setTextColor_];
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  v56 = &v10[v65[385]];
  v57 = &v196;
  swift_beginAccess();
  v58 = *v56;
  MEMORY[0x277D82BE0](v58);
  swift_endAccess();
  [v58 setNumberOfLines_];
  MEMORY[0x277D82BD8](v58);
  v71 = sub_214A73FCC();
  v89 = sub_214A7802C();
  v64 = 2;
  v63 = sub_214CD03C4();
  v62 = v15;
  v59 = &v10[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel];
  v60 = &v195;
  swift_beginAccess();
  v61 = *v59;
  MEMORY[0x277D82BE0](v61);
  swift_endAccess();
  *v62 = v61;
  v62[1] = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  sub_214A63280();
  v132 = sub_214BE74DC(v16);
  v194 = v132;
  v91 = 0x1FB0ED000uLL;
  [v132 0x1FB0EDBF8];
  v93 = 0x1FA9B9000uLL;
  [v132 0x1FA9B94F8];
  *&v17 = MEMORY[0x277D82BE0](v132).n128_u64[0];
  v95 = 0x1FAECA000uLL;
  [v132 0x1FAECA5BALL];
  MEMORY[0x277D82BD8](v132);
  MEMORY[0x277D82BE0](v132);
  v116 = 0x1FAAAA000uLL;
  v117 = 10.0;
  v193[3] = 10.0;
  v119 = 16.0;
  v193[4] = 16.0;
  v118 = 14.0;
  v193[5] = 14.0;
  v193[6] = 16.0;
  [v132 0x1FAAAAAF8];
  MEMORY[0x277D82BD8](v132);
  v70 = sub_214CD03C4();
  v68 = v18;
  MEMORY[0x277D82BE0](v132);
  v19 = v65;
  v20 = v161;
  *v68 = v132;
  v66 = &v20[v19[385]];
  v67 = v193;
  swift_beginAccess();
  v69 = *v66;
  MEMORY[0x277D82BE0](v69);
  swift_endAccess();
  v68[1] = v69;
  sub_214A63280();
  v131 = sub_214BE74DC(v21);
  v192 = v131;
  [v131 (v91 + 3064)];
  v97 = 0x1FA943000uLL;
  v98 = 8.0;
  [v131 0x1FA943B0ALL];
  *&v22 = MEMORY[0x277D82BE0](v131).n128_u64[0];
  [v131 (v95 + 1466)];
  MEMORY[0x277D82BD8](v131);
  *&v23 = MEMORY[0x277D82BE0](v161).n128_u64[0];
  v125 = 0x1FB774000uLL;
  v72 = [v161 0x1FB774AF8];
  *&v24 = MEMORY[0x277D82BD8](v161).n128_u64[0];
  v113 = 0x1FAB99000uLL;
  [v72 0x1FAB997F8];
  MEMORY[0x277D82BD8](v72);
  *&v25 = MEMORY[0x277D82BE0](v161).n128_u64[0];
  v73 = [v161 (v125 + 2808)];
  *&v26 = MEMORY[0x277D82BD8](v161).n128_u64[0];
  v126 = 0x1FC5D2000uLL;
  [v131 0x1FC5D2B59];
  MEMORY[0x277D82BD8](v73);
  v120 = &qword_27CA36000;
  v74 = &v161[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView];
  v75 = &v191;
  swift_beginAccess();
  v76 = *v74;
  MEMORY[0x277D82BE0](v76);
  swift_endAccess();
  [v76 (v95 + 1466)];
  MEMORY[0x277D82BD8](v76);
  v77 = &v161[v120[386]];
  v78 = &v190;
  swift_beginAccess();
  v79 = *v77;
  MEMORY[0x277D82BE0](v79);
  swift_endAccess();
  v83 = 0x1FADAE000uLL;
  v80 = [v79 0x1FADAE878];
  MEMORY[0x277D82BD8](v79);
  [v80 setCornerRadius_];
  MEMORY[0x277D82BD8](v80);
  v81 = &v161[v120[386]];
  v82 = &v189;
  swift_beginAccess();
  v84 = *v81;
  MEMORY[0x277D82BE0](v84);
  swift_endAccess();
  v85 = [v84 (v83 + 2168)];
  *&v27 = MEMORY[0x277D82BD8](v84).n128_u64[0];
  [v85 setMasksToBounds_];
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BE0](v131);
  v86 = &v161[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView];
  v87 = &v188;
  v99 = 33;
  swift_beginAccess();
  v28 = *v86;
  *v86 = v131;
  MEMORY[0x277D82BD8](v28);
  swift_endAccess();
  v90 = sub_214CD03C4();
  v88 = v29;
  MEMORY[0x277D82BE0](v131);
  *v88 = v131;
  sub_214A63280();
  v130 = sub_214BE74DC(v30);
  v187 = v130;
  [v130 (v91 + 3064)];
  [v130 (v93 + 1272)];
  *&v31 = MEMORY[0x277D82BE0](v130).n128_u64[0];
  [v130 (v95 + 1466)];
  MEMORY[0x277D82BD8](v130);
  [v130 (v97 + 2826)];
  MEMORY[0x277D82BE0](v130);
  v100 = &v161[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView];
  v101 = &v186;
  swift_beginAccess();
  v32 = *v100;
  *v100 = v130;
  MEMORY[0x277D82BD8](v32);
  swift_endAccess();
  v102 = &v161[v120[386]];
  v103 = &v185;
  swift_beginAccess();
  v104 = *v102;
  MEMORY[0x277D82BE0](v104);
  swift_endAccess();
  [v104 (v113 + 2040)];
  MEMORY[0x277D82BD8](v104);
  v105 = &v161[v120[386]];
  v106 = &v184;
  swift_beginAccess();
  v107 = *v105;
  MEMORY[0x277D82BE0](v107);
  swift_endAccess();
  *&v183[3] = v119;
  v183[4] = 22.0;
  v183[5] = 22.0;
  *&v183[6] = v119;
  [v107 (v116 + 2808)];
  MEMORY[0x277D82BD8](v107);
  v108 = &v161[v120[386]];
  v109 = v183;
  swift_beginAccess();
  v110 = *v108;
  MEMORY[0x277D82BE0](v110);
  swift_endAccess();
  [v130 (v126 + 2905)];
  MEMORY[0x277D82BD8](v110);
  *&v33 = MEMORY[0x277D82BE0](v161).n128_u64[0];
  v115 = [v161 (v125 + 2808)];
  MEMORY[0x277D82BD8](v161);
  v111 = &v161[v120[386]];
  v112 = &v182;
  swift_beginAccess();
  v114 = *v111;
  MEMORY[0x277D82BE0](v114);
  swift_endAccess();
  [v115 (v113 + 2040)];
  MEMORY[0x277D82BD8](v114);
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BE0](v161);
  *&v181[3] = v117;
  *&v181[4] = v119;
  *&v181[5] = v118;
  *&v181[6] = v119;
  [v161 (v116 + 2808)];
  MEMORY[0x277D82BD8](v161);
  v123 = &v161[v120[386]];
  v124 = v181;
  swift_beginAccess();
  v129 = *v123;
  MEMORY[0x277D82BE0](v129);
  swift_endAccess();
  *&v34 = MEMORY[0x277D82BE0](v161).n128_u64[0];
  v128 = [v161 (v125 + 2808)];
  *&v35 = MEMORY[0x277D82BD8](v161).n128_u64[0];
  [v129 (v126 + 2905)];
  MEMORY[0x277D82BD8](v128);
  MEMORY[0x277D82BD8](v129);
  MEMORY[0x277D82BD8](v130);
  MEMORY[0x277D82BD8](v131);
  MEMORY[0x277D82BD8](v132);
  MEMORY[0x277D82BD8](v133);
  v36 = MEMORY[0x277D82BD8](v134);
  return (*(v148 + 8))(v151, v147, v36);
}

void sub_214BF5C18()
{
  v0 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel;
  sub_214A73F68();
  *v0 = sub_214A61730();
  v1 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel;
  *v1 = sub_214A61730();
  v2 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView;
  sub_214A7802C();
  *v2 = sub_214A61730();
  v3 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView;
  sub_214A73FCC();
  *v3 = sub_214A61730();
  v4 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView;
  *v4 = sub_214A61730();
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton = 0;
  sub_214CCF614("init(coder:) has not been implemented", 37, 1);
  sub_214CD0204();
  __break(1u);
}

double MessageListOnboardingTipCollectionViewCell.configure(forBucket:primaryUnreadCount:otherUnreadCount:)(uint64_t a1, Swift::Int a2, Swift::Int a3)
{
  v246 = a1;
  v244 = a2;
  v245 = a3;
  v253 = 0;
  v243 = sub_214BF7C40;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v284 = 0;
  v283 = 0;
  v274 = 0;
  v273 = 0;
  v270 = 0;
  v271 = 0;
  v261 = 0;
  v260 = 0;
  v247 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8, &qword_214CF1FC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v246);
  v248 = &v57 - v247;
  v249 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v250 = &v57 - v249;
  v251 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v252 = &v57 - v251;
  v298 = v8;
  v297 = v9;
  v296 = v10;
  v295 = v3;
  v257 = sub_214C63994(v8);
  v294 = v257;
  v254 = (v3 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  v256 = &v293;
  swift_beginAccess();
  v255 = *v254;
  MEMORY[0x277D82BE0](v255);
  swift_endAccess();
  v258 = MUIOnboardingTip.title.getter(v257);
  v259 = v11;
  if (v11)
  {
    v240 = v258;
    v241 = v259;
    v237 = v259;
    v238 = sub_214CCF544();

    v239 = v238;
  }

  else
  {
    v239 = 0;
  }

  v225 = v239;
  [v255 setText_];
  MEMORY[0x277D82BD8](v225);
  MEMORY[0x277D82BD8](v255);
  v226 = (v242 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  v227 = &v292;
  v230 = 32;
  v231 = 0;
  swift_beginAccess();
  v229 = *v226;
  MEMORY[0x277D82BE0](v229);
  swift_endAccess();
  v228 = MUIOnboardingTip.titleColor.getter(v257);
  [v229 setTextColor_];
  MEMORY[0x277D82BD8](v228);
  MEMORY[0x277D82BD8](v229);
  v232 = (v242 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
  v234 = &v291;
  swift_beginAccess();
  v233 = *v232;
  MEMORY[0x277D82BE0](v233);
  swift_endAccess();
  v235 = MUIOnboardingTip.message.getter(v257);
  v236 = v12;
  if (v12)
  {
    v223 = v235;
    v224 = v236;
    v220 = v236;
    v221 = sub_214CCF544();

    v222 = v221;
  }

  else
  {
    v222 = 0;
  }

  v13 = v242;
  v193 = v222;
  [v233 setText_];
  MEMORY[0x277D82BD8](v193);
  MEMORY[0x277D82BD8](v233);
  v204 = &qword_27CA36000;
  v194 = (v13 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
  v195 = &v290;
  v209 = 32;
  v210 = 0;
  swift_beginAccess();
  v197 = *v194;
  MEMORY[0x277D82BE0](v197);
  swift_endAccess();
  v196 = MUIOnboardingTip.subtitleColor.getter(v257);
  v198 = 0x1FB30B000uLL;
  [v197 0x1FB30BC78];
  MEMORY[0x277D82BD8](v196);
  MEMORY[0x277D82BD8](v197);
  v14 = sub_214BF1F8C();
  v15 = v242;
  v200 = v14;
  v199 = MUIOnboardingTip.subtitleColor.getter(v257);
  [v200 (v198 + 3192)];
  MEMORY[0x277D82BD8](v199);
  MEMORY[0x277D82BD8](v200);
  v201 = (v15 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  v202 = &v289;
  swift_beginAccess();
  v203 = *v201;
  MEMORY[0x277D82BE0](v203);
  swift_endAccess();
  v16 = MUIOnboardingTip.preferredLabelVibrancy.getter(v257);
  v207 = 0x1FBB95000uLL;
  [v203 0x1FBB95950];
  MEMORY[0x277D82BD8](v203);
  v205 = (v15 + v204[385]);
  v206 = &v288;
  swift_beginAccess();
  v208 = *v205;
  MEMORY[0x277D82BE0](v208);
  swift_endAccess();
  v17 = MUIOnboardingTip.preferredLabelVibrancy.getter(v257);
  [v208 (v207 + 2384)];
  MEMORY[0x277D82BD8](v208);
  v211 = (v15 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView);
  v212 = &v287;
  swift_beginAccess();
  v214 = *v211;
  MEMORY[0x277D82BE0](v214);
  swift_endAccess();
  v213 = MUIOnboardingTip.backgroundColor.getter(v257);
  [v214 setBackgroundColor_];
  MEMORY[0x277D82BD8](v213);
  MEMORY[0x277D82BD8](v214);
  v215 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  sub_214CCFEC4();
  v216 = sub_214CCFEA4();
  v18 = *(v216 - 8);
  v217 = *(v18 + 48);
  v218 = v18 + 48;
  if (v217(v252, 1) == 0)
  {
    v192 = MUIOnboardingTip.titleColor.getter(v257);
    if (v192)
    {
      v191 = v192;
      v188 = v192;
      v189 = [v192 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v188);
      v190 = v189;
    }

    else
    {
      v190 = 0;
    }

    sub_214CCFE24();
    sub_214CCFED4();
    MEMORY[0x277D82BD8](v215);
  }

  else
  {
    sub_214BD2598(v252, v248);
    sub_214CCFED4();
    sub_214BD26C0(v252);
    MEMORY[0x277D82BD8](v215);
  }

  v186 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  sub_214CCFEC4();
  if ((v217)(v250, 1, v216) == 0)
  {
    v185 = MUIOnboardingTip.titleColor.getter(v257);
    if (v185)
    {
      v184 = v185;
      v181 = v185;
      v182 = [v185 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v181);
      v183 = v182;
    }

    else
    {
      v183 = 0;
    }

    sub_214CCFE14();
    sub_214CCFED4();
    MEMORY[0x277D82BD8](v186);
  }

  else
  {
    sub_214BD2598(v250, v248);
    sub_214CCFED4();
    sub_214BD26C0(v250);
    MEMORY[0x277D82BD8](v186);
  }

  v179 = MUIOnboardingTip.information.getter(v257);
  v180 = v19;
  if (v19)
  {
    v177 = v179;
    v178 = v180;
    v172 = v180;
    v173 = v179;
    v270 = v179;
    v271 = v180;
    v176 = &v269;
    v269 = v257;
    v174 = &v268;
    v268 = 1;
    v175 = type metadata accessor for MUIOnboardingTip(0);
    sub_214B04028();
    v20 = sub_214CD03F4();
    if (v20)
    {
      v138 = sub_214BF1F8C();
      v169 = 1;
      v132 = sub_214CCF614("%@", 2, 1);
      v136 = v21;
      v135 = @"ellipsis.circle";
      MEMORY[0x277D82BE0](@"ellipsis.circle");
      v131 = sub_214CCF564();
      v134 = v22;
      v133 = MUIOnboardingTip.titleColor.getter(v257);
      v137 = sub_214BF7698(v132, v136, v173, v172, v131, v134, v133);
      MEMORY[0x277D82BD8](v133);

      MEMORY[0x277D82BD8](v135);

      [v138 setAttributedText_];
      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](v138);
      v23 = sub_214BF1F8C();
      v24 = v242;
      v140 = v23;
      v139 = MUIOnboardingTip.titleColor.getter(v257);
      [v140 setTextColor_];
      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v140);
      v161 = &qword_27CA36000;
      v141 = (v24 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
      v142 = &v267;
      v162 = 32;
      v163 = 0;
      swift_beginAccess();
      v144 = *v141;
      MEMORY[0x277D82BE0](v144);
      swift_endAccess();
      v25 = sub_214BF1F8C();
      v26 = v242;
      v143 = v25;
      v166 = 0x1FBB16000uLL;
      [v144 0x1FBB16380];
      MEMORY[0x277D82BD8](v143);
      MEMORY[0x277D82BD8](v144);
      v145 = (v26 + v161[388]);
      v146 = &v266;
      swift_beginAccess();
      v148 = *v145;
      MEMORY[0x277D82BE0](v148);
      swift_endAccess();
      v27 = sub_214BF1F8C();
      v28 = v242;
      v147 = v27;
      [v148 setCustomSpacing:20.0 afterView:?];
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v148);
      v149 = (v28 + v161[388]);
      v150 = &v265;
      swift_beginAccess();
      v152 = *v149;
      MEMORY[0x277D82BE0](v152);
      swift_endAccess();
      v29 = sub_214BF26AC();
      v30 = v242;
      v151 = v29;
      [v152 (v166 + 896)];
      MEMORY[0x277D82BD8](v151);
      MEMORY[0x277D82BD8](v152);
      v153 = (v30 + v161[388]);
      v154 = &v264;
      swift_beginAccess();
      v156 = *v153;
      MEMORY[0x277D82BE0](v156);
      swift_endAccess();
      v31 = MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter();
      v32 = v242;
      v155 = v31;
      [v156 (v166 + 896)];
      MEMORY[0x277D82BD8](v155);
      MEMORY[0x277D82BD8](v156);
      v157 = (v32 + v161[388]);
      v158 = &v263;
      swift_beginAccess();
      v160 = *v157;
      MEMORY[0x277D82BE0](v160);
      swift_endAccess();
      v33 = sub_214BF29D0();
      v34 = v242;
      v159 = v33;
      [v160 (v166 + 896)];
      MEMORY[0x277D82BD8](v159);
      MEMORY[0x277D82BD8](v160);
      v164 = (v34 + v161[388]);
      v165 = &v262;
      swift_beginAccess();
      v168 = *v164;
      MEMORY[0x277D82BE0](v168);
      swift_endAccess();
      v167 = MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter();
      [v168 (v166 + 896)];
      MEMORY[0x277D82BD8](v167);
      MEMORY[0x277D82BD8](v168);
      v170 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
      [v170 setHidden_];
      MEMORY[0x277D82BD8](v170);
      v171 = MUIOnboardingTip.primaryAction.getter(v257);
      if (v171)
      {
        v130 = v171;
        v129 = v171;
        v260 = v171;
        v128 = MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter();
        [v128 addAction:v129 forControlEvents:64];
        MEMORY[0x277D82BD8](v128);
        MEMORY[0x277D82BD8](v129);
      }

      v127 = MUIOnboardingTip.secondaryAction.getter(v257);
      if (v127)
      {
        v126 = v127;
        v125 = v127;
        v261 = v127;
        v124 = MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter();
        [v124 addAction:v125 forControlEvents:64];
        MEMORY[0x277D82BD8](v124);
        MEMORY[0x277D82BD8](v125);
      }

      goto LABEL_36;
    }
  }

  v123 = &v286;
  v286 = v257;
  v121 = &v285;
  v285 = 2;
  v122 = type metadata accessor for MUIOnboardingTip(0);
  sub_214B04028();
  if (sub_214CD03F4())
  {
    v118 = (v242 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
    v120 = &v282;
    swift_beginAccess();
    v119 = *v118;
    MEMORY[0x277D82BE0](v119);
    v283 = v119;
    swift_endAccess();
    if (v244 > 0 || v245 > 0)
    {
      v35 = sub_214BF1F8C();
      v36 = v242;
      v112 = v35;
      object = MUIOnboardingTip.badgeCountInformationLabel(withPrimaryUnreadCount:otherUnreadCount:)(v244, v245)._object;
      v111 = sub_214CCF544();

      [v112 setText_];
      MEMORY[0x277D82BD8](v111);
      MEMORY[0x277D82BD8](v112);
      v113 = (v36 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
      v114 = &v272;
      swift_beginAccess();
      v116 = *v113;
      MEMORY[0x277D82BE0](v116);
      swift_endAccess();
      v115 = sub_214BF1F8C();
      [v116 addArrangedSubview_];
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v116);
      v37 = sub_214BF1F8C();
      v38 = v283;
      v283 = v37;
      MEMORY[0x277D82BD8](v38);
    }

    v39 = v242;
    v99 = &qword_27CA36000;
    v71 = (v242 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
    v72 = &v281;
    v100 = 32;
    v101 = 0;
    swift_beginAccess();
    v74 = *v71;
    MEMORY[0x277D82BE0](v74);
    swift_endAccess();
    v73 = v283;
    MEMORY[0x277D82BE0](v283);
    [v74 setCustomSpacing:v73 afterView:20.0];
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    v75 = (v39 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView);
    v76 = &v280;
    swift_beginAccess();
    v77 = *v75;
    MEMORY[0x277D82BE0](v77);
    swift_endAccess();
    [v77 layoutMargins];
    *&v279[7] = v40;
    v279[8] = v41;
    *&v279[9] = v42;
    *&v279[10] = v43;
    *&v279[3] = v40;
    v279[4] = 0x4023555555555555;
    *&v279[5] = v42;
    *&v279[6] = v43;
    [v77 setLayoutMargins_];
    MEMORY[0x277D82BD8](v77);
    v78 = (v39 + v99[388]);
    v79 = v279;
    swift_beginAccess();
    v81 = *v78;
    MEMORY[0x277D82BE0](v81);
    swift_endAccess();
    v44 = sub_214BF26AC();
    v45 = v242;
    v80 = v44;
    v104 = 0x1FBB16000uLL;
    [v81 0x1FBB16380];
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    v82 = (v45 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView);
    v83 = &v278;
    swift_beginAccess();
    v85 = *v82;
    MEMORY[0x277D82BE0](v85);
    swift_endAccess();
    v84 = sub_214BF220C();
    [v85 insertArrangedSubview_atIndex_];
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    v86 = sub_214BF220C();
    v89 = [v86 widthAnchor];
    MEMORY[0x277D82BD8](v86);
    v46 = sub_214BF220C();
    v47 = v242;
    v87 = v46;
    [v46 intrinsicContentSize];
    *&v277[3] = v48;
    v277[4] = v49;
    v88 = v48;
    MEMORY[0x277D82BD8](v87);
    v90 = [v89 constraintEqualToConstant_];
    *&v50 = MEMORY[0x277D82BD8](v89).n128_u64[0];
    v107 = 1;
    [v90 setActive_];
    MEMORY[0x277D82BD8](v90);
    v91 = (v47 + v99[388]);
    v92 = v277;
    swift_beginAccess();
    v94 = *v91;
    MEMORY[0x277D82BE0](v94);
    swift_endAccess();
    v51 = MessageListOnboardingTipCollectionViewCell.okButton.getter();
    v52 = v242;
    v93 = v51;
    [v94 (v104 + 896)];
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    v95 = (v52 + v99[388]);
    v96 = &v276;
    swift_beginAccess();
    v98 = *v95;
    MEMORY[0x277D82BE0](v98);
    swift_endAccess();
    v53 = sub_214BF29D0();
    v54 = v242;
    v97 = v53;
    [v98 (v104 + 896)];
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    v102 = (v54 + v99[388]);
    v103 = &v275;
    swift_beginAccess();
    v106 = *v102;
    MEMORY[0x277D82BE0](v106);
    swift_endAccess();
    v105 = MessageListOnboardingTipCollectionViewCell.customizeButton.getter();
    [v106 (v104 + 896)];
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    v108 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
    [v108 setHidden_];
    MEMORY[0x277D82BD8](v108);
    v109 = MUIOnboardingTip.primaryAction.getter(v257);
    if (v109)
    {
      v70 = v109;
      v69 = v109;
      v273 = v109;
      v68 = MessageListOnboardingTipCollectionViewCell.okButton.getter();
      [v68 addAction:v69 forControlEvents:64];
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v69);
    }

    v67 = MUIOnboardingTip.secondaryAction.getter(v257);
    if (v67)
    {
      v66 = v67;
      v65 = v67;
      v274 = v67;
      v64 = MessageListOnboardingTipCollectionViewCell.customizeButton.getter();
      [v64 addAction:v65 forControlEvents:64];
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v65);
    }

    MEMORY[0x277D82BD8](v283);
  }

LABEL_36:
  v60 = 0;
  sub_214BD1DB0();
  v58 = swift_allocObject();
  *(v58 + 16) = v257;
  v61 = sub_214B1C228();
  v59 = v55;
  v57 = sub_214BD2BD8();
  sub_214A73344();
  v63 = sub_214CCFD84();
  v284 = v63;
  v62 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  [v62 addAction:v63 forControlEvents:64];
  MEMORY[0x277D82BD8](v62);
  *&result = MEMORY[0x277D82BD8](v63).n128_u64[0];
  return result;
}

id sub_214BF7698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v42 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v28 = 0;
  v48 = a1;
  v49 = a2;
  v46 = a3;
  v47 = a4;
  v44 = a5;
  v45 = a6;
  v43 = a7;
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  sub_214B075A0();
  v37 = sub_214CCFF84();
  sub_214BD299C();
  v25 = sub_214A61730();
  v36 = v25;
  if (sub_214CCF854() == 2)
  {
    sub_214AF7FCC();
    sub_214CCF914();
    v17 = sub_214BC9508(v34, v35);
    v33 = v17;
    [v25 appendAttributedString_];
    sub_214BF7CB0();
    v18 = sub_214A61730();
    v32 = v18;
    sub_214A731BC();

    v19 = sub_214B4D9C8(a5, a6);
    if (v19)
    {
      *&v8 = MEMORY[0x277D82BE0](a7).n128_u64[0];
      v26 = a7;
      if (a7)
      {
        v27 = v26;
      }

      else
      {
        v27 = [objc_opt_self() secondaryLabelColor];
      }

      v14 = v27;
      v15 = [v19 imageWithTintColor_];
      MEMORY[0x277D82BD8](v14);
      *&v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [v18 setImage_];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BE0](v18);
    v11 = sub_214BF1960(v18);
    v31 = v11;
    [v25 0x1FB92B19BLL];
    sub_214CCF914();
    v10 = sub_214BC9508(v29, v30);
    v28 = v10;
    [v25 0x1FB92B19BLL];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);

    return v25;
  }

  else
  {
    sub_214AF7FCC();

    v12 = sub_214BC9508(a3, a4);
    MEMORY[0x277D82BD8](v25);

    return v12;
  }
}

void sub_214BF7A88(uint64_t a1, uint64_t a2)
{
  v8 = MUIOnboardingTipKeyForTip(a2);
  if (v8)
  {
    sub_214CCF564();
    v6 = v2;
    MEMORY[0x277D82BD8](v8);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v3 = [objc_opt_self() em_userDefaults];
    v5 = v3;
    if (v3)
    {

      v4 = sub_214CCF544();

      [v5 setInteger:1 forKey:v4];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
    }
  }
}

unint64_t sub_214BF7CB0()
{
  v2 = qword_280C7CBB8;
  if (!qword_280C7CBB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CBB8);
    return ObjCClassMetadata;
  }

  return v2;
}

id MessageListOnboardingTipCollectionViewCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214BF7F04()
{
  v2 = (v0 + OBJC_IVAR___MUIAboutCategoriesViewController_daemonInterface);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF7F74(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAboutCategoriesViewController_daemonInterface);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF8010()
{
  v2 = (v0 + OBJC_IVAR___MUIAboutCategoriesViewController_provider);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF8080(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAboutCategoriesViewController_provider);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF811C()
{
  v2 = (v0 + OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BF8184(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BF8278()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_214BF8348(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id sub_214BF83C8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDaemonInterface:a1 delegate:a2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v4;
}

char *sub_214BF8430(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  *OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView = 0;
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BE0](a1);
  *&v9[OBJC_IVAR___MUIAboutCategoriesViewController_daemonInterface] = a1;
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v3 = v9;
  type metadata accessor for AboutCategoriesStatisticsProvider();
  MEMORY[0x277D82BE0](a1);
  *&v3[OBJC_IVAR___MUIAboutCategoriesViewController_provider] = sub_214B0E238(a1);
  v6.receiver = v9;
  v6.super_class = MUIAboutCategoriesViewController;
  v5 = objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v9);
  return v5;
}

id MUIAboutCategoriesViewController.init(coder:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

void MUIAboutCategoriesViewController.init(coder:)()
{
  *OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView = 0;
  swift_unknownObjectWeakInit();
  sub_214CCF614("init(coder:) has not been implemented");
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall MUIAboutCategoriesViewController.viewDidLoad()()
{
  v35 = 0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v34.receiver = v0;
  v34.super_class = MUIAboutCategoriesViewController;
  objc_msgSendSuper2(&v34, sel_viewDidLoad, v1);
  *&v2 = (MEMORY[0x277D82BD8])().n128_u64[0];
  sub_214CCF614("About Categories", 16, 1, v2);
  sub_214CCF614("Localizable-BlackPearl");
  v21 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614("categorization onboarding header title", 38, 1);
  v20 = v3;
  sub_214B1C228();
  v24 = sub_214CCCF54();
  v25 = v4;

  MEMORY[0x277D82BD8](v21);

  type metadata accessor for AboutCategoriesView.ViewModel(0);

  sub_214CCF614("Find the messages that matter most in Primary and organize everything else into Transactions, Updates, and Promotions.", 118, 1, v20);
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v23 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614("categorization onboarding header subtitle", 41, 1);
  v22 = v5;
  sub_214B1C228();
  v26 = sub_214CCCF54();
  v27 = v6;

  MEMORY[0x277D82BD8](v23);

  v28 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  memset(__src, 0, sizeof(__src));
  memcpy(__dst, __src, sizeof(__dst));
  sub_214B142FC(v24, v25, v26, v27, sub_214BF916C, v28, __dst);

  nullsub_1();
  v30 = v7;
  v29 = &v32[OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView];
  swift_beginAccess();
  *v29 = v30;

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36C98, &qword_214CF2C78);
  swift_beginAccess();

  swift_endAccess();
  v31 = sub_214CCE5A4();
  [v32 addChildViewController_];
  v33 = [v32 view];
  (MEMORY[0x277D82BD8])();
  if (v33)
  {
    v19 = v33;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 65, 0);
    __break(1u);
  }

  v18 = [v31 view];
  *&v8 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  if (v18)
  {
    v17 = v18;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 65, 0);
    __break(1u);
  }

  [v19 addSubview_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v19);
  v16 = [v31 view];
  *&v9 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  if (v16)
  {
    v15 = v16;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 67, 0);
    __break(1u);
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v15);
  v14 = [v31 view];
  MEMORY[0x277D82BD8](v31);
  if (v14)
  {
    v13 = v14;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 69, 0);
    __break(1u);
  }

  v12 = [v32 view];
  *&v10 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (v12)
  {
    v11 = v12;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 69, 0);
    __break(1u);
  }

  [v13 mf:v10 pinToView:? usingLayoutMargins:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v13);
  [v31 didMoveToParentViewController_];
  (MEMORY[0x277D82BD8])();
  MEMORY[0x277D82BD8](v31);
}

double sub_214BF90B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    [Strong dismissViewControllerAnimated:1 completion:0];
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

Swift::Void __swiftcall MUIAboutCategoriesViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6 = a1;
  v5 = v1;
  *&v2 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v4.receiver = v1;
  v4.super_class = MUIAboutCategoriesViewController;
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1, v2);
  (MEMORY[0x277D82BD8])();
  sub_214BF9258();
}

double sub_214BF9258()
{
  v2 = (v0 + OBJC_IVAR___MUIAboutCategoriesViewController_provider);
  swift_beginAccess();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  v3 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  sub_214B0E368(sub_214BFA6A8, v3);

  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t *sub_214BF93DC(uint64_t *a1)
{
  v22 = a1;
  v21 = v1;
  sub_214BF95F4(a1);
  v14 = v2;
  v15 = sub_214BF97CC();
  v16 = v3;
  v17 = v4;
  v13 = v5;
  v25 = a1[12];
  sub_214BF996C(v25 == 0, v23);
  v6 = sub_214BF9B68(a1[12]);
  sub_214B153C8(v23, v14, v15, v16, v17, v13, v6, v7, v24, v8, v9);
  memcpy(__dst, v24, sizeof(__dst));
  v18 = (v12 + OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView);
  swift_beginAccess();
  if (!*v18)
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 110, 0);
    __break(1u);
  }

  swift_endAccess();
  sub_214B1ACA8(v24, v19);
  memcpy(v20, __dst, sizeof(v20));
  memcpy(v26, v20, sizeof(v26));
  sub_214B13B98(v26);

  result = v24;
  sub_214B14E3C(v24);
  return result;
}

void sub_214BF95F4(uint64_t *a1)
{
  sub_214CD03C4();
  __dst = v1;
  v2 = *a1;

  sub_214BFB0E4(v2, a1[13], v14);

  memcpy(__dst, v14, 0x48uLL);
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];

  sub_214BFB348(v3, v4, v5, v15);

  memcpy(__dst + 72, v15, 0x48uLL);
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];

  sub_214BFBABC(v6, v7, v8, v16);

  memcpy(__dst + 144, v16, 0x48uLL);
  v10 = a1[9];
  v11 = a1[10];
  v12 = a1[11];

  sub_214BFC230(v10, v11, v12, v17);

  memcpy(__dst + 216, v17, 0x48uLL);
  sub_214A63280();
}

uint64_t sub_214BF97CC()
{
  MEMORY[0x277D82BE0](@"clock.fill");
  sub_214CCF564();
  sub_214CCF614("When a message in Transactions, Updates, or Promotions includes time-sensitive information, it will also appear in Primary.", 123, 1);
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v2 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614("descriptive text for time-sensitive", 35, 1);
  sub_214B1C228();
  sub_214CCCF54();

  MEMORY[0x277D82BD8](v2);

  nullsub_1();
  v3 = v0;
  MEMORY[0x277D82BD8](@"clock.fill");
  return v3;
}

void *sub_214BF996C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  sub_214CCF614("Reset Manual Categorization", 27, 1);
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v4 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614("title for the button that removes all categorization overrides", 62, 1);
  sub_214B1C228();
  v5 = sub_214CCCF54();
  v6 = v2;

  MEMORY[0x277D82BD8](v4);

  v8 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  sub_214B051D4(v5, v6, a1 & 1, sub_214BFC9A4, v8, v10);

  return memcpy(a2, v10, 0x28uLL);
}

uint64_t sub_214BF9B68(uint64_t a1)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v15 = a1;
  if (a1 <= 0)
  {
    sub_214CCF614("If you manually categorize messages based on the sender, you can reset categorization at anytime.", 97, 1);
    sub_214CCF614("Localizable-BlackPearl", 22, 1);
    v6 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614("explanation text when there are no senders with user overrides", 62, 1);
    sub_214B1C228();
    v7 = sub_214CCCF54();
    v8 = v2;

    MEMORY[0x277D82BD8](v6);

    v12 = v7;
    v13 = v8;
  }

  else
  {
    v9 = [objc_opt_self() resetUserOverrideForNumberOfOverrides_];
    v10 = sub_214CCF564();
    v11 = v1;

    v12 = v10;
    v13 = v11;
    MEMORY[0x277D82BD8](v9);
  }

  nullsub_1();
  v5 = v3;
  sub_214A61B48(&v12);
  return v5;
}

uint64_t *sub_214BF9D8C()
{
  v19 = v0;
  sub_214BF9F7C();
  v12 = v1;
  v13 = sub_214BF97CC();
  v14 = v2;
  v15 = v3;
  v11 = v4;
  sub_214BF996C(1, v20);
  v5 = sub_214BF9B68(0);
  sub_214B153C8(v20, v12, v13, v14, v15, v11, v5, v6, v21, v7, v8);
  memcpy(__dst, v21, sizeof(__dst));
  v16 = (v10 + OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView);
  swift_beginAccess();
  if (!*v16)
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 120, 0);
    __break(1u);
  }

  swift_endAccess();
  sub_214B1ACA8(v21, v17);
  memcpy(v18, __dst, sizeof(v18));
  memcpy(v22, v18, sizeof(v22));
  sub_214B13B98(v22);

  result = v21;
  sub_214B14E3C(v21);
  return result;
}

void sub_214BF9F7C()
{
  sub_214CD03C4();
  __dst = v0;
  sub_214CCF614("Stay focused on the people and subjects that matter most when messages are categorized as Primary.", 98, 1);
  sub_214CCF614("Localizable-BlackPearl");
  v9 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614("description for categorization onboarding");
  v8 = v1;
  sub_214B1C228();
  v10 = sub_214CCCF54();
  v11 = v2;

  MEMORY[0x277D82BD8](v9);

  sub_214BFA6B0(1uLL, v10, v11, v24);

  memcpy(__dst, v24, 0x48uLL);
  sub_214CCF614("Keep track of your purchases, including receipts and delivery updates, when you bundle messages by sender.", 106, 1, v8);
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v13 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614("description for categorization onboarding", 41, 1);
  v12 = v3;
  sub_214B1C228();
  v14 = sub_214CCCF54();
  v15 = v4;

  MEMORY[0x277D82BD8](v13);

  sub_214BFA6B0(2uLL, v14, v15, v25);

  memcpy(__dst + 72, v25, 0x48uLL);
  sub_214CCF614("Stay updated and organized with a place for every subscription, newsletter, and social media alert.", 99, 1, v12);
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v17 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614("description for categorization onboarding", 41, 1);
  v16 = v5;
  sub_214B1C228();
  v18 = sub_214CCCF54();
  v19 = v6;

  MEMORY[0x277D82BD8](v17);

  sub_214BFA6B0(3uLL, v18, v19, v26);

  memcpy(__dst + 144, v26, 0x48uLL);
  sub_214CCF614("Browse special offers, events and more from the businesses and organizations you might recognize.", 97, 1, v16);
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v20 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614("description for categorization onboarding", 41, 1);
  sub_214B1C228();
  v21 = sub_214CCCF54();
  v22 = v7;

  MEMORY[0x277D82BD8](v20);

  sub_214BFA6B0(4uLL, v21, v22, v27);

  memcpy(__dst + 216, v27, 0x48uLL);
  sub_214A63280();
}

double sub_214BFA4EC(void *a1, uint64_t a2)
{
  v8[15] = a1;
  v8[14] = a2 + 16;
  sub_214BFD1A4(a1, v8);
  memcpy(__dst, a1, sizeof(__dst));
  if (__dst[2])
  {
    memcpy(v10, __dst, sizeof(v10));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      MEMORY[0x277D82BE0](Strong);
      sub_214A671E8(&Strong);
      swift_endAccess();
      sub_214BF93DC(v10);
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      sub_214A671E8(&Strong);
      swift_endAccess();
    }

    sub_214B119FC(v10);
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v3 = v7;
      MEMORY[0x277D82BE0](v7);
      sub_214A671E8(&v7);
      swift_endAccess();
      sub_214BF9D8C();
      *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
    }

    else
    {
      sub_214A671E8(&v7);
      swift_endAccess();
    }
  }

  return result;
}

void *sub_214BFA6B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = MUISelectedImageNameForBucket(a1);
  if (v24)
  {
    v16 = sub_214CCF564();
    v17 = v4;
    MEMORY[0x277D82BD8](v24);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if (v19)
  {
    v14 = v18;
    v15 = v19;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 204, 0);
    __break(1u);
  }

  if (!MUIPlatformColorForBucket(a1))
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "MailUI/MUIAboutCategoriesViewController.swift", 45, 2, 205, 0);
    __break(1u);
  }

  v8 = sub_214CCEE54();
  v13 = MUILocalizedStringFromBucket(a1);
  v9 = sub_214CCF564();
  v10 = v5;
  v11 = sub_214BFA94C(a1);
  v12 = v6;

  sub_214B07CEC(v14, v15, v8, v9, v10, v11, v12, a2, v25, a3);
  MEMORY[0x277D82BD8](v13);
  return memcpy(a4, v25, 0x48uLL);
}

uint64_t sub_214BFA94C(uint64_t a1)
{
  v14[2] = 0;
  v14[3] = a1;
  switch(a1)
  {
    case 0:
      return sub_214CCF614("", 0, 1);
    case 1:
      sub_214CCF614("Messages that Matter Most", 25, 1);
      sub_214CCF614("Localizable-BlackPearl", 22, 1);
      v11 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614("subtitle for categorization onboarding", 38, 1);
      sub_214B1C228();
      v12 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v11);

      return v12;
    case 2:
      sub_214CCF614("Receipts, Orders, and Deliveries", 32, 1);
      sub_214CCF614("Localizable-BlackPearl", 22, 1);
      v9 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614("subtitle for categorization onboarding", 38, 1);
      sub_214B1C228();
      v10 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v9);

      return v10;
    case 3:
      sub_214CCF614("News, Subscriptions, and Social", 31, 1);
      sub_214CCF614("Localizable-BlackPearl", 22, 1);
      v7 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614("subtitle for categorization onboarding", 38, 1);
      sub_214B1C228();
      v8 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v7);

      return v8;
    case 4:
      sub_214CCF614("Special Offers, Deals, and More", 31, 1);
      sub_214CCF614("Localizable-BlackPearl", 22, 1);
      v5 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614("subtitle for categorization onboarding", 38, 1);
      sub_214B1C228();
      v6 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v5);

      return v6;
    case 5:
      return sub_214CCF614("", 0, 1);
  }

  v14[0] = sub_214CD03B4();
  v14[1] = v1;
  v2 = sub_214CCF614("Failed to cover subtitle for ", 29, 1);
  MEMORY[0x21605E650](v2);

  type metadata accessor for MUIBucket(0);
  sub_214CD0374();
  v3 = sub_214CCF614("", 0, 1);
  MEMORY[0x21605E650](v3);

  sub_214A61B48(v14);
  sub_214CCF5F4();
  sub_214CD0204();
  __break(1u);
  return v13;
}

double sub_214BFAFD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v2 = [Strong delegate];
    v3 = v2;
    if (v2)
    {
      swift_getObjectType();
      [v3 aboutCategoriesViewControllerDidSelectResetButton_];
      swift_unknownObjectRelease();
    }

    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

void *sub_214BFB0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  sub_214CCF614("PRIMARY_CATEGORY_ONBOARDING_DESCRIPTION_FORMAT", 46, 1);
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v8 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614("description for categorization onboarding", 41, 1);
  sub_214B1C228();
  sub_214CCCF54();

  MEMORY[0x277D82BD8](v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270, &unk_214CF25E0);
  sub_214CD03C4();
  v3 = MEMORY[0x277D83B88];
  v4[3] = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277D83C10];
  v4[4] = MEMORY[0x277D83C10];
  *v4 = a1;
  v4[8] = v3;
  v4[9] = v5;
  v4[5] = a2;
  sub_214A63280();
  v11 = sub_214CCF554();
  v12 = v6;

  sub_214BFA6B0(1uLL, v11, v12, v14);

  return memcpy(a3, v14, 0x48uLL);
}

void *sub_214BFB348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  if (a1)
  {

    v27 = sub_214CCF854();

    switch(v27)
    {
      case 1:
        sub_214CCF614("TRANSACTIONS_CATEGORY_ONBOARDING_DESCRIPTION_1_SENDER_FORMAT", 60, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v22 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v23 = sub_214CCCF54();
        v24 = v5;

        MEMORY[0x277D82BD8](v22);

        v37 = v23;
        v38 = v24;
        v25 = v23;
        v26 = v24;
        break;
      case 2:
        sub_214CCF614("TRANSACTIONS_CATEGORY_ONBOARDING_DESCRIPTION_2_SENDER_FORMAT", 60, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v19 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v20 = sub_214CCCF54();
        v21 = v6;

        MEMORY[0x277D82BD8](v19);

        v37 = v20;
        v38 = v21;
        v25 = v20;
        v26 = v21;
        break;
      case 3:
        sub_214CCF614("TRANSACTIONS_CATEGORY_ONBOARDING_DESCRIPTION_3_SENDER_FORMAT", 60, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v16 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v17 = sub_214CCCF54();
        v18 = v7;

        MEMORY[0x277D82BD8](v16);

        v37 = v17;
        v38 = v18;
        v25 = v17;
        v26 = v18;
        break;
      default:
        sub_214CCF614("TRANSACTIONS_CATEGORY_ONBOARDING_DESCRIPTION_0_SENDER_FORMAT", 60, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v13 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v14 = sub_214CCCF54();
        v15 = v8;

        MEMORY[0x277D82BD8](v13);

        v37 = v14;
        v38 = v15;
        v25 = v14;
        v26 = v15;
        break;
    }

    v12 = sub_214BFC9AC(v25, v26, a1, a2, a3);
    v11 = v9;

    v39 = v12;
    v40 = v11;
    sub_214A61B48(&v37);
    v31 = v12;
    v32 = v11;
  }

  else
  {
    sub_214CCF614("Messages in this category will include purchase receipts and shipping and delivery notices.", 91, 1);
    sub_214CCF614("Localizable-BlackPearl", 22, 1);
    v28 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614("description for categorization onboarding", 41, 1);
    sub_214B1C228();
    v29 = sub_214CCCF54();
    v30 = v4;

    MEMORY[0x277D82BD8](v28);

    v39 = v29;
    v40 = v30;
    v31 = v29;
    v32 = v30;
  }

  sub_214BFA6B0(2uLL, v31, v32, v45);

  sub_214A61B48(&v39);
  return memcpy(a4, v45, 0x48uLL);
}

void *sub_214BFBABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  if (a1)
  {

    v27 = sub_214CCF854();

    switch(v27)
    {
      case 1:
        sub_214CCF614("UPDATES_CATEGORY_ONBOARDING_DESCRIPTION_1_SENDER_FORMAT", 55, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v22 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v23 = sub_214CCCF54();
        v24 = v5;

        MEMORY[0x277D82BD8](v22);

        v37 = v23;
        v38 = v24;
        v25 = v23;
        v26 = v24;
        break;
      case 2:
        sub_214CCF614("UPDATES_CATEGORY_ONBOARDING_DESCRIPTION_2_SENDER_FORMAT", 55, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v19 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v20 = sub_214CCCF54();
        v21 = v6;

        MEMORY[0x277D82BD8](v19);

        v37 = v20;
        v38 = v21;
        v25 = v20;
        v26 = v21;
        break;
      case 3:
        sub_214CCF614("UPDATES_CATEGORY_ONBOARDING_DESCRIPTION_3_SENDER_FORMAT", 55, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v16 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v17 = sub_214CCCF54();
        v18 = v7;

        MEMORY[0x277D82BD8](v16);

        v37 = v17;
        v38 = v18;
        v25 = v17;
        v26 = v18;
        break;
      default:
        sub_214CCF614("UPDATES_CATEGORY_ONBOARDING_DESCRIPTION_0_SENDER_FORMAT", 55, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v13 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v14 = sub_214CCCF54();
        v15 = v8;

        MEMORY[0x277D82BD8](v13);

        v37 = v14;
        v38 = v15;
        v25 = v14;
        v26 = v15;
        break;
    }

    v12 = sub_214BFC9AC(v25, v26, a1, a2, a3);
    v11 = v9;

    v39 = v12;
    v40 = v11;
    sub_214A61B48(&v37);
    v31 = v12;
    v32 = v11;
  }

  else
  {
    sub_214CCF614("Messages in this category will include news headlines, newsletters, and alerts.", 79, 1);
    sub_214CCF614("Localizable-BlackPearl", 22, 1);
    v28 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614("description for categorization onboarding", 41, 1);
    sub_214B1C228();
    v29 = sub_214CCCF54();
    v30 = v4;

    MEMORY[0x277D82BD8](v28);

    v39 = v29;
    v40 = v30;
    v31 = v29;
    v32 = v30;
  }

  sub_214BFA6B0(3uLL, v31, v32, v45);

  sub_214A61B48(&v39);
  return memcpy(a4, v45, 0x48uLL);
}

void *sub_214BFC230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  if (a1)
  {

    v27 = sub_214CCF854();

    switch(v27)
    {
      case 1:
        sub_214CCF614("PROMOTIONS_CATEGORY_ONBOARDING_DESCRIPTION_1_SENDER_FORMAT", 58, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v22 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v23 = sub_214CCCF54();
        v24 = v5;

        MEMORY[0x277D82BD8](v22);

        v37 = v23;
        v38 = v24;
        v25 = v23;
        v26 = v24;
        break;
      case 2:
        sub_214CCF614("PROMOTIONS_CATEGORY_ONBOARDING_DESCRIPTION_2_SENDER_FORMAT", 58, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v19 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v20 = sub_214CCCF54();
        v21 = v6;

        MEMORY[0x277D82BD8](v19);

        v37 = v20;
        v38 = v21;
        v25 = v20;
        v26 = v21;
        break;
      case 3:
        sub_214CCF614("PROMOTIONS_CATEGORY_ONBOARDING_DESCRIPTION_3_SENDER_FORMAT", 58, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v16 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v17 = sub_214CCCF54();
        v18 = v7;

        MEMORY[0x277D82BD8](v16);

        v37 = v17;
        v38 = v18;
        v25 = v17;
        v26 = v18;
        break;
      default:
        sub_214CCF614("PROMOTIONS_CATEGORY_ONBOARDING_DESCRIPTION_0_SENDER_FORMAT", 58, 1);
        sub_214CCF614("Localizable-BlackPearl", 22, 1);
        v13 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614("description for categorization onboarding", 41, 1);
        sub_214B1C228();
        v14 = sub_214CCCF54();
        v15 = v8;

        MEMORY[0x277D82BD8](v13);

        v37 = v14;
        v38 = v15;
        v25 = v14;
        v26 = v15;
        break;
    }

    v12 = sub_214BFC9AC(v25, v26, a1, a2, a3);
    v11 = v9;

    v39 = v12;
    v40 = v11;
    sub_214A61B48(&v37);
    v31 = v12;
    v32 = v11;
  }

  else
  {
    sub_214CCF614("Messages in this category will include coupons and sales.", 57, 1);
    sub_214CCF614("Localizable-BlackPearl", 22, 1);
    v28 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614("description for categorization onboarding", 41, 1);
    sub_214B1C228();
    v29 = sub_214CCCF54();
    v30 = v4;

    MEMORY[0x277D82BD8](v28);

    v39 = v29;
    v40 = v30;
    v31 = v29;
    v32 = v30;
  }

  sub_214BFA6B0(4uLL, v31, v32, v45);

  sub_214A61B48(&v39);
  return memcpy(a4, v45, 0x48uLL);
}

uint64_t sub_214BFC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v31 = sub_214CCF854();

  if (v31 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270, &unk_214CF25E0);
    sub_214CD03C4();
    v26 = v5;
    v6 = MEMORY[0x277D83B88];
    v5[3] = MEMORY[0x277D83B88];
    v7 = MEMORY[0x277D83C10];
    v5[4] = MEMORY[0x277D83C10];
    *v5 = a3;
    v5[8] = v6;
    v5[9] = v7;
    v5[5] = a4;

    v26[13] = MEMORY[0x277D837D0];
    v26[14] = sub_214BD1FAC();
    sub_214CCF914();

    sub_214A63280();
    v27 = sub_214CCF554();

    return v27;
  }

  else if (v31 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270, &unk_214CF25E0);
    sub_214CD03C4();
    v23 = v8;
    v9 = MEMORY[0x277D83B88];
    v8[3] = MEMORY[0x277D83B88];
    v10 = MEMORY[0x277D83C10];
    v8[4] = MEMORY[0x277D83C10];
    *v8 = a3;
    v8[8] = v9;
    v8[9] = v10;
    v8[5] = a4;

    v24 = MEMORY[0x277D837D0];
    v23[13] = MEMORY[0x277D837D0];
    v22 = sub_214BD1FAC();
    v23[14] = v22;
    sub_214CCF914();

    v23[18] = v24;
    v23[19] = v22;
    sub_214CCF914();

    sub_214A63280();
    v25 = sub_214CCF554();

    return v25;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270, &unk_214CF25E0);
    sub_214CD03C4();
    if (v31 == 3)
    {
      v19 = v11;
      v12 = MEMORY[0x277D83B88];
      v11[3] = MEMORY[0x277D83B88];
      v13 = MEMORY[0x277D83C10];
      v11[4] = MEMORY[0x277D83C10];
      *v11 = a3;
      v11[8] = v12;
      v11[9] = v13;
      v11[5] = a4;

      v20 = MEMORY[0x277D837D0];
      v19[13] = MEMORY[0x277D837D0];
      v18 = sub_214BD1FAC();
      v19[14] = v18;
      sub_214CCF914();

      v19[18] = v20;
      v19[19] = v18;
      sub_214CCF914();

      v19[23] = v20;
      v19[24] = v18;
      sub_214CCF914();

      sub_214A63280();
      v21 = sub_214CCF554();

      return v21;
    }

    else
    {
      v14 = MEMORY[0x277D83B88];
      v11[3] = MEMORY[0x277D83B88];
      v15 = MEMORY[0x277D83C10];
      v11[4] = MEMORY[0x277D83C10];
      *v11 = a3;
      v11[8] = v14;
      v11[9] = v15;
      v11[5] = a4;
      sub_214A63280();
      v17 = sub_214CCF554();

      return v17;
    }
  }
}

id MUIAboutCategoriesViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (a2)
  {
    v5 = sub_214CCF544();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v9 initWithNibName_bundle_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v6);
  return v4;
}

unint64_t type metadata accessor for MUIAboutCategoriesViewController()
{
  v2 = qword_27CA36CA0;
  if (!qword_27CA36CA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36CA0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_214BFD1A4(void *a1, void *a2)
{
  if (a1[2])
  {
    *a2 = *a1;
    a2[1] = a1[1];
    v3 = a1[2];

    a2[2] = v3;
    a2[3] = a1[3];
    a2[4] = a1[4];
    v4 = a1[5];

    a2[5] = v4;
    a2[6] = a1[6];
    a2[7] = a1[7];
    v5 = a1[8];

    a2[8] = v5;
    a2[9] = a1[9];
    a2[10] = a1[10];
    v6 = a1[11];

    a2[11] = v6;
    a2[12] = a1[12];
    a2[13] = a1[13];
  }

  else
  {
    memcpy(a2, a1, 0x70uLL);
  }

  return a2;
}

uint64_t sub_214BFD2BC()
{
  v2 = *(v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_publicDescriptionAddress);

  return v2;
}

uint64_t sub_214BFD308()
{
  v2 = *(v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_214BFD348()
{
  v2 = *(v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double MUIAvatarImageGeneratorResult.contact.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___contact);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BFD498@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 contact];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFD50C(uint64_t *a1, id *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  [*a2 setContact_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

id sub_214BFD5A8(char *a1)
{
  v53 = 0;
  v54 = a1;
  v48 = *&a1[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact];
  *&v1 = MEMORY[0x277D82BE0](v48).n128_u64[0];
  if (v48)
  {
    [a1 avatarType];
    type metadata accessor for MUIAvatarType(0);
    sub_214B03AA8();
    v2 = sub_214CD03F4();
    if (v2)
    {
      return v48;
    }

    MEMORY[0x277D82BD8](v48);
  }

  sub_214C013B4();
  v44 = sub_214A61730();
  MEMORY[0x277D82BE0](v44);
  v53 = v44;
  v45 = [a1 image];
  if (v45)
  {
    v41 = [v45 mui_pngRepresentation];
    MEMORY[0x277D82BD8](v45);
    if (v41)
    {
      v37 = sub_214CCD184();
      v38 = v3;
      MEMORY[0x277D82BD8](v41);
      v39 = v37;
      v40 = v38;
    }

    else
    {
      v39 = 0;
      v40 = 0xF000000000000000;
    }

    v42 = v39;
    v43 = v40;
  }

  else
  {
    v42 = 0;
    v43 = 0xF000000000000000;
  }

  if ((v43 & 0xF000000000000000) == 0xF000000000000000)
  {
    v36 = 0;
  }

  else
  {
    v35 = sub_214CCD174();
    sub_214AF83FC(v42, v43);
    v36 = v35;
  }

  [v44 setImageData_];
  MEMORY[0x277D82BD8](v36);
  [v44 setContactType_];
  MEMORY[0x277D82BE0](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36D10, &qword_214CF2CD8);
  sub_214CD03C4();
  v28 = v4;
  v29 = *MEMORY[0x277CBD8E8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBD8E8]);
  v30 = sub_214CCF564();
  v31 = v5;
  obj = *&a1[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
  swift_unknownObjectRetain();
  location = 0;
  objc_storeStrong(&location, obj);
  v33 = [location emailAddressValue];
  v34 = [v33 simpleAddress];
  v55 = 0;
  if (v34)
  {
    MEMORY[0x277D82BE0](v34);
  }

  else
  {
    v56 = [location stringValue];
    v55 = 1;
    MEMORY[0x277D82BE0](v56);
  }

  v58 = v6;
  if (v55)
  {
    MEMORY[0x277D82BD8](v56);
  }

  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v33);
  objc_storeStrong(&location, 0);
  v26 = v58;
  v7 = v58;
  v27 = v26;
  swift_unknownObjectRelease();
  if (v27)
  {
    v25 = v27;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/MUIAvatarImageGeneratorResult.swift", 42, 2, 31, 0);
    __break(1u);
  }

  v8 = sub_214AF82CC();
  v21 = sub_214BFDD68(v30, v31, v25, v8);
  MEMORY[0x277D82BD8](v29);
  *v28 = v21;
  sub_214A63280();
  v22 = sub_214CCF7D4();

  [v44 setEmailAddresses_];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v44);
  v23 = *&a1[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v24 = [v23 emailAddressValue];
  swift_unknownObjectRelease();
  if (v24)
  {
    v9 = [v24 displayName];
    v18 = v9;
    if (v9)
    {
      v14 = sub_214CCF564();
      v15 = v10;
      MEMORY[0x277D82BD8](v18);
      v16 = v14;
      v17 = v15;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    MEMORY[0x277D82BD8](v24);
    v19 = v16;
    v20 = v17;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v49 = v19;
  v50 = v20;
  if (v20)
  {
    v51 = v49;
    v52 = v50;
  }

  else
  {
    v51 = sub_214CCF614("", 0, 1);
    v52 = v11;
  }

  v13 = sub_214CCF544();

  [v44 setOrganizationName_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v53);
  return v44;
}

uint64_t sub_214BFDDC4()
{
  v2 = *(v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingImageProvider);

  return v2;
}

uint64_t sub_214BFDE10()
{
  v7 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___underlyingImage);
  swift_beginAccess();
  v8 = *v7;
  sub_214BFDF10(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  v4 = sub_214BFDF50(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___underlyingImage);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_214BFDFC0(v1);
  swift_endAccess();
  return v4;
}

double sub_214BFDF10(uint64_t a1)
{
  if (a1 != 1)
  {
    *&result = MEMORY[0x277D82BE0](a1).n128_u64[0];
  }

  return result;
}

uint64_t sub_214BFDF50(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingImageProvider);

  v4 = v3(v1);

  return v4;
}

double sub_214BFDFC0(uint64_t a1)
{
  if (a1 != 1)
  {
    *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  }

  return result;
}

double sub_214BFE000(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___underlyingImage);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  sub_214BFDFC0(v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BFE090()
{
  v5 = sub_214BFDE10();
  if (!v5)
  {
    return 0;
  }

  [v4 avatarStyle];
  type metadata accessor for MUIAvatarStyle(0);
  sub_214A86DE8();
  v0 = sub_214CD03F4();
  if ((v0 & 1) == 0)
  {
    MEMORY[0x277D82BD8](v5);
    return 0;
  }

  v2 = [objc_opt_self() compositedDarkImageWithImage_];
  MEMORY[0x277D82BD8](v5);
  return v2;
}

uint64_t MUIAvatarImageGeneratorResult.image.getter()
{
  v7 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___image);
  swift_beginAccess();
  v8 = *v7;
  sub_214BFDF10(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  v4 = sub_214BFE528(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = &v6[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___image];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_214BFDFC0(v1);
  swift_endAccess();
  return v4;
}

double MUIAvatarImageGeneratorResult.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___image);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  sub_214BFDFC0(v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BFE42C@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 image];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFE4A0(void *a1, id *a2)
{
  sub_214A671A8(a1, &v6);
  v4 = v6;
  v5 = *a2;
  [*a2 setImage_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214BFE528(void *a1)
{
  v34 = a1;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  isa = 0;
  v36 = 0;
  v41 = a1;
  v35 = sub_214BFDE10();
  if (!v35)
  {
    return 0;
  }

  v33 = v35;
  v31 = v35;
  v40 = v35;
  if ([objc_opt_self() preferenceEnabled_])
  {
    v21 = 0x1FBE71000uLL;
    v23 = sub_214C01418([v34 0x1FBE71849]);
    v29 = v1;
    v38 = v23;
    v39 = v1;
    v28.super.isa = sub_214C015B4([v34 0x1FBE71849]);
    isa = v28.super.isa;
    v27.super.isa = sub_214C01750([v34 0x1FBE71849]);
    v36 = v27.super.isa;
    v2 = sub_214A731BC();
    v3._countAndFlagsBits = v23;
    v22 = v2;
    v3._object = v29;
    v25 = UIImage.badged(with:background:foreground:)(v3, v28, v27).super.isa;
    v4 = v34;

    v5 = v28.super.isa;
    v6 = v27.super.isa;
    v24 = &v18;
    MEMORY[0x28223BE20](v25);
    v15[2] = v7;
    v15[3] = v23;
    v16[0] = v8;
    v16[1] = v28.super.isa;
    v17 = v9;
    v26 = static UIImage.mui_dynamicImage(baseImage:dark:)(v10, sub_214C0139C, v15);

    v30 = v26;

    return v30;
  }

  else
  {
    sub_214A731BC();
    v11 = v34;
    v18 = &v18;
    MEMORY[0x28223BE20](v31);
    v17 = v12;
    v19 = static UIImage.mui_dynamicImage(baseImage:dark:)(v13, sub_214C01394, v16);

    v20 = v19;
    return v20;
  }
}

Class sub_214BFE7FC(uint64_t a1, uint64_t a2, void *a3, UIColor a4, UIColor a5)
{
  with._countAndFlagsBits = a2;
  with._object = a3;
  v11 = sub_214BFE090();
  if (!v11)
  {
    return 0;
  }

  isa = UIImage.badged(with:background:foreground:)(with, a4, a5).super.isa;
  MEMORY[0x277D82BD8](v11);
  return isa;
}

double MUIAvatarImageGeneratorResult.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult_style);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return result;
}

double sub_214BFE990@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 avatarStyle];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFE9FC(void *a1, id *a2)
{
  v3 = *a2;
  [*a2 setAvatarStyle_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFEAC4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult_type);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return result;
}

double sub_214BFEB30@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 avatarType];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFEB9C(void *a1, id *a2)
{
  v3 = *a2;
  [*a2 setAvatarType_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void *sub_214BFEC04(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = __src;
  v6 = v1;
  sub_214A85640(__dst, v5);
  memcpy(v9, __dst, sizeof(v9));
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___analysis);
  swift_beginAccess();
  memcpy(v10, v4, sizeof(v10));
  memcpy(v4, v9, 0x78uLL);
  sub_214A8FC3C(v10);
  swift_endAccess();
  return sub_214A854B4(__dst);
}

id MUIAvatarImageGeneratorResult.colors.getter()
{
  v7 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___colors);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BFF078(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___colors);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double MUIAvatarImageGeneratorResult.colors.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___colors);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BFEF68@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 headerColors];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFEFDC(uint64_t *a1, id *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  [*a2 setHeaderColors_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

id sub_214BFF078(uint64_t a1)
{
  v9 = 0;
  v12[15] = a1;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_214B11080();
    sub_214CD0204();
    __break(1u);
  }

  sub_214A866E0(v10);
  memcpy(__dst, v10, sizeof(__dst));
  memcpy(v12, __dst, 0x78uLL);
  if (v12[1])
  {
    v9 = v12;
    type metadata accessor for MUISenderHeaderColors();
    sub_214A8FA8C(v12, v8);
    memcpy(&v7, v12, sizeof(v7));
    v3 = MUISenderHeaderColors.init(analysis:)(&v7);
    sub_214A86594(v12);
    return v3;
  }

  else
  {
    type metadata accessor for MUISenderHeaderColors();
    sub_214A65CE0();
    v5 = sub_214C7AC2C();
    v4 = static UIColor.platformLabel.getter();
    v1 = static UIColor.platformSecondaryLabel.getter();
    return sub_214BFF240(v5, v4, v1);
  }
}

id MUIAvatarImageGeneratorResult.init(_:image:style:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAddress:a1 image:a2 style:a3 type:a4];
  MEMORY[0x277D82BD8](a2);
  swift_unknownObjectRelease();
  return v6;
}

{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v6 = v24;
  MEMORY[0x277D82BE0](a2);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v18 = sub_214BFF4D4;
  v19 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_214B4DD74;
  v17 = &block_descriptor_13;
  v9 = _Block_copy(&aBlock);

  v12 = [v6 init:0 address:a1 imageProvider:v9 style:a3 type:a4];
  _Block_release(v9);
  MEMORY[0x277D82BE0](v12);
  v24 = v12;
  MEMORY[0x277D82BD8](a2);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v24);
  return v12;
}

id MUIAvatarImageGeneratorResult.init(_:address:imageProvider:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = a3;
  v18 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214B4DD74;
  v16 = &block_descriptor_3_1;
  v8 = _Block_copy(&aBlock);
  v11 = [v7 initWithContact:a1 address:a2 imageProvider:? style:?];
  _Block_release(v8);

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v11;
}

id MUIAvatarImageGeneratorResult.init(_:address:imageProvider:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  v21 = a5;
  v7 = v26;
  MEMORY[0x277D82BE0](a1);

  v19 = a3;
  v20 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = 0;
  v17 = sub_214B4DD74;
  v18 = &block_descriptor_6_2;
  v9 = _Block_copy(&aBlock);

  v13 = [v7 init:a1 address:a2 imageProvider:v9 style:a5 type:2];
  _Block_release(v9);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BE0](v13);
  v26 = v13;

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v26);
  return v13;
}

uint64_t block_copy_helper_4_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_214BFF8F0(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

id static MUIAvatarImageGeneratorResult.circularPlaceholder()()
{
  type metadata accessor for MUIAvatarImageGeneratorResult();
  sub_214CCF614("x-apple-circle-placeholder:;", 28, 1);
  v0 = sub_214CCF544();
  v2 = sub_214BFFA14(v0, 0, 0, 0);

  return v2;
}

unint64_t type metadata accessor for MUIAvatarImageGeneratorResult()
{
  v2 = qword_280C7C7A0;
  if (!qword_280C7C7A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C7A0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214BFFAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = a3;
  v18 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214B4DD74;
  v16 = &block_descriptor_12;
  v8 = _Block_copy(&aBlock);
  v11 = [v7 init:a1 address:a2 imageProvider:? style:? type:?];
  _Block_release(v8);

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v11;
}

char *sub_214BFFC1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = 0;
  v36 = a1;
  v35 = a2;
  v33 = a3;
  v34 = a4;
  v32 = a5;
  v31 = a6;
  *OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___contact = 0;
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___underlyingImage] = 1;
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___image] = 1;
  __src[0] = 0;
  __src[1] = 1;
  memset(&__src[2], 0, 104);
  memcpy(&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___analysis], __src, 0x78uLL);
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___colors] = 0;
  MEMORY[0x277D82BE0](a1);
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact] = a1;
  swift_unknownObjectRetain();
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress] = a2;
  v30 = a6;
  v29 = 0;
  type metadata accessor for MUIAvatarType(0);
  sub_214B03AA8();
  if (sub_214CD03F4())
  {
    v20 = sub_214CCF614("", 0, 1);
    v21 = v6;
  }

  else
  {
    location = 0;
    objc_storeStrong(&location, a2);
    v45 = [location emailAddressValue];
    v43 = 0;
    v41 = 0;
    v39 = 0;
    if (v45)
    {
      v44 = [v45 ef_publicDescription];
      v43 = 1;
      MEMORY[0x277D82BE0](v44);
    }

    else
    {
      v19 = MEMORY[0x277D07198];
      v42 = [location stringValue];
      v41 = 1;
      v40 = [v19 fullyOrPartiallyRedactedStringForString:?];
      v39 = 1;
      MEMORY[0x277D82BE0](v40);
    }

    v47 = v7;
    if (v39)
    {
      MEMORY[0x277D82BD8](v40);
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](v42);
    }

    if (v43)
    {
      MEMORY[0x277D82BD8](v44);
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&location, 0);
    v15 = v47;
    v8 = v47;
    v16 = v15;
    v17 = sub_214CCF564();
    v18 = v9;
    MEMORY[0x277D82BD8](v16);
    v20 = v17;
    v21 = v18;
  }

  v10 = &v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_publicDescriptionAddress];
  *v10 = v20;
  v10[1] = v21;
  v13 = v37;

  v11 = &v13[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingImageProvider];
  *v11 = a3;
  *(v11 + 1) = a4;
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_style] = a5;
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_type] = a6;
  v28.receiver = v37;
  v28.super_class = MUIAvatarImageGeneratorResult;
  v14 = objc_msgSendSuper2(&v28, sel_init);
  MEMORY[0x277D82BE0](v14);
  v37 = v14;

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v37);
  return v14;
}

uint64_t sub_214C00198()
{
  [v0 avatarStyle];
  type metadata accessor for MUIAvatarStyle(0);
  sub_214A86DE8();
  v7 = sub_214CD03F4();
  *&v1 = MEMORY[0x277D82BE0](v0).n128_u64[0];
  if (v7)
  {
    [v0 avatarType];
    type metadata accessor for MUIAvatarType(0);
    sub_214B03AA8();
    v6 = sub_214CD03F4();
    *&v2 = MEMORY[0x277D82BE0](v0).n128_u64[0];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      [v0 avatarType];
      v5 = sub_214CD03F4();
    }

    MEMORY[0x277D82BD8](v0);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277D82BD8](v0);
  return v4 & 1;
}

uint64_t MUIAvatarImageGeneratorResult.isEqual(_:)(uint64_t a1)
{
  v22[4] = 0;
  v22[5] = a1;
  sub_214C011C8(a1, v22);
  if (v22[3])
  {
    type metadata accessor for MUIAvatarImageGeneratorResult();
    if (swift_dynamicCast())
    {
      v19 = v21;
    }

    else
    {
      v19 = 0;
    }

    v18 = v19;
  }

  else
  {
    sub_214A7D24C(v22);
    v18 = 0;
  }

  if (v18)
  {
    v9 = *&v20[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
    swift_unknownObjectRetain();
    swift_getObjectType();
    v16 = [v9 0x1FB466F78];
    v11 = sub_214CCF564();
    v15 = v1;
    swift_unknownObjectRelease();
    v10 = *&v18[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
    swift_unknownObjectRetain();
    swift_getObjectType();
    v14 = [v10 0x1FB466F78];
    v12 = sub_214CCF564();
    v13 = v2;
    swift_unknownObjectRelease();
    v17 = MEMORY[0x21605D8D0](v11, v15, v12, v13);

    MEMORY[0x277D82BD8](v14);

    MEMORY[0x277D82BD8](v16);
    (MEMORY[0x277D82BE0])();
    *&v3 = MEMORY[0x277D82BE0](v18).n128_u64[0];
    if (v17)
    {
      [v20 0x1FBE7180ELL];
      [v18 0x1FBE7180ELL];
      type metadata accessor for MUIAvatarStyle(0);
      sub_214A86DE8();
      v8 = sub_214CD03F4();
    }

    else
    {
      v8 = 0;
    }

    (MEMORY[0x277D82BD8])();
    MEMORY[0x277D82BD8](v18);
    (MEMORY[0x277D82BE0])();
    *&v4 = MEMORY[0x277D82BE0](v18).n128_u64[0];
    if (v8)
    {
      [v20 0x1FBE71849];
      [v18 0x1FBE71849];
      type metadata accessor for MUIAvatarType(0);
      sub_214B03AA8();
      v7 = sub_214CD03F4();
    }

    else
    {
      v7 = 0;
    }

    (MEMORY[0x277D82BD8])();
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v18);
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t MUIAvatarImageGeneratorResult.hash.getter()
{
  memset(__b, 0, sizeof(__b));
  v6 = v0;
  sub_214CD0584();
  memcpy(__b, v7, sizeof(__b));
  [v2 avatarStyle];
  type metadata accessor for MUIAvatarStyle(0);
  sub_214C01258();
  sub_214A86DE8();
  sub_214CCF7C4();
  [v2 avatarType];
  type metadata accessor for MUIAvatarType(0);
  sub_214C012D8();
  sub_214B03AA8();
  sub_214CCF7C4();
  v3 = *&v2[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = [v3 stringValue];
  sub_214CCF564();
  swift_unknownObjectRelease();
  sub_214CCF634();

  MEMORY[0x277D82BD8](v4);
  memcpy(v8, __b, sizeof(v8));
  return sub_214CD0564();
}

uint64_t MUIAvatarImageGeneratorResult.debugDescription.getter()
{
  v20[2] = 0;
  v20[0] = sub_214CD03B4();
  v20[1] = v0;
  v1 = sub_214CCF614("MUIAvatarImageGenerator.Result(emailAddress: ", 46, 1);
  MEMORY[0x21605E650](v1);

  v12 = *&v16[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v15 = [v12 stringValue];
  v13 = sub_214CCF564();
  v14 = v2;
  swift_unknownObjectRelease();
  v19[0] = v13;
  v19[1] = v14;
  sub_214CD0394();
  sub_214A61B48(v19);
  *&v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v4 = sub_214CCF614(", style: ", 10, 1, v3);
  MEMORY[0x21605E650](v4);

  v18[2] = [v16 avatarStyle];
  type metadata accessor for MUIAvatarStyle(0);
  sub_214A86928();
  sub_214CD0384();
  v5 = sub_214CCF614(", type: ", 8, 1);
  MEMORY[0x21605E650](v5);

  v18[1] = [v16 avatarType];
  type metadata accessor for MUIAvatarType(0);
  sub_214A86BE4();
  sub_214CD0384();
  v6 = sub_214CCF614(", hasContact: ", 14, 1);
  MEMORY[0x21605E650](v6);

  v17 = *&v16[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact];
  MEMORY[0x277D82BE0](v17);
  v18[0] = v17;
  sub_214A671E8(v18);
  sub_214CD0384();
  v7 = sub_214CCF614(", imageDataAvailable: ", 22, 1);
  MEMORY[0x21605E650](v7);

  v11 = *&v16[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact];
  *&v8 = MEMORY[0x277D82BE0](v11).n128_u64[0];
  if (v11)
  {
    [v11 imageDataAvailable];
    MEMORY[0x277D82BD8](v11);
  }

  sub_214CD0384();
  v9 = sub_214CCF614(")", 1, 1);
  MEMORY[0x21605E650](v9);

  sub_214A61B48(v20);
  return sub_214CCF5F4();
}

id sub_214C0101C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_214CCF544();

    v2 = [v7 initWithLabel:v6 value:?];
  }

  else
  {
    v2 = [v7 initWithLabel:0 value:?];
  }

  v5 = v2;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id sub_214C010E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [v3 initWithContrastingBackgroundColor:a1 textColor:? secondaryTextColor:?];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v8;
}

id sub_214C01160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 initWithAddress:a1 image:a2 style:a3 type:a4];
  MEMORY[0x277D82BD8](a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_214C011C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

unint64_t sub_214C01258()
{
  v2 = qword_27CA36D00;
  if (!qword_27CA36D00)
  {
    type metadata accessor for MUIAvatarStyle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36D00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C012D8()
{
  v2 = qword_27CA36D08;
  if (!qword_27CA36D08)
  {
    type metadata accessor for MUIAvatarType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36D08);
    return WitnessTable;
  }

  return v2;
}

Class sub_214C0139C()
{
  v1.super.isa = *(v0 + 40);
  v2.super.isa = *(v0 + 48);
  return sub_214BFE7FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1, v2);
}

unint64_t sub_214C013B4()
{
  v2 = qword_280C7CBF0;
  if (!qword_280C7CBF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CBF0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C01418(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return sub_214CCF614("", 0, 1);
    case 1:
      return sub_214CCF614("IAB", 3, 1);
    case 2:
      return sub_214CCF614("Contact", 7, 1);
    case 3:
      return sub_214CCF614("BIMI", 4, 1);
    case 4:
      return sub_214CCF614("BC", 2, 1);
  }

  sub_214B11080();
  sub_214CD0204();
  __break(1u);
  return v2;
}

id sub_214C015B4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return [objc_opt_self() systemYellowColor];
    case 1:
      return [objc_opt_self() systemIndigoColor];
    case 2:
      return [objc_opt_self() systemPurpleColor];
    case 3:
      return [objc_opt_self() systemBlueColor];
    case 4:
      return [objc_opt_self() systemTealColor];
  }

  sub_214B11080();
  sub_214CD0204();
  __break(1u);
  return v2;
}

id sub_214C01750(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1 || a1 == 2 || a1 == 3 || a1 == 4)
    {
      sub_214A65CE0();
      return static UIColor.platformWhite.getter();
    }

    else
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
    }
  }

  else
  {
    sub_214A65CE0();
    return static UIColor.platformBlack.getter();
  }

  return v2;
}

id MUIBucket.unseenImage.getter(uint64_t a1)
{
  v10 = MUIUnseenImageNameForBucket(a1);
  if (v10)
  {
    v6 = sub_214CCF564();
    v7 = v1;
    MEMORY[0x277D82BD8](v10);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  sub_214A731BC();
  v5 = static UIImage.mui_systemImage(with:)(v8, v9);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "MailUI/MUIBucket.swift", 22, 2, 25, 0);
    __break(1u);
  }

  return v4;
}

id sub_214C01A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_214CCF544();
  v6 = [swift_getObjCClassFromMetadata() colorNamed:v5 bundle:a3];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

void sub_214C01AB0()
{
  type metadata accessor for MUIBucket(0);
  sub_214CD03C4();
  *v0 = 1;
  v0[1] = 2;
  v0[2] = 3;
  v0[3] = 4;
  sub_214A63280();
  qword_280C7C4A8 = v1;
}

uint64_t *sub_214C01B20()
{
  if (qword_280C7C4A0 != -1)
  {
    swift_once();
  }

  return &qword_280C7C4A8;
}

uint64_t static MUIBucket.all.getter()
{
  v1 = *sub_214C01B20();

  return v1;
}

uint64_t static MUIBucket.allIncludingAllMail.getter()
{
  v1 = *sub_214A650A0();

  return v1;
}

uint64_t sub_214C01BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C0, &qword_214CF1FC8);
  return sub_214C09638(v7, a1, a3, v3, MEMORY[0x277D84950]);
}

uint64_t sub_214C01CA0()
{
  v2 = sub_214CCDA74();
  __swift_allocate_value_buffer(v2, qword_280C7C6C0);
  __swift_project_value_buffer(v2, qword_280C7C6C0);
  v0 = type metadata accessor for MUIBusinessConnectServiceProvider();
  return static Logger.mailUILogger<A>(for:)(v0, v0);
}

unint64_t type metadata accessor for MUIBusinessConnectServiceProvider()
{
  v2 = qword_280C7C6A0;
  if (!qword_280C7C6A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C6A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C01D6C()
{
  if (qword_280C7C6B0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7C6C0);
}

uint64_t sub_214C01DD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C01D6C();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214C01EB8()
{
  v2 = *(v0 + OBJC_IVAR___MUIBusinessConnectServiceProvider_service);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214C01F74()
{
  v2 = *(v0 + OBJC_IVAR___MUIBusinessConnectServiceProvider_messageRepository);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

id sub_214C01FBC(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMessageRepository_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

void MUIBusinessConnectServiceProvider.businessLogo(for:handler:)(uint64_t a1, void (*a2)(void, void, __n128), uint64_t a3)
{
  v83 = a1;
  v81 = a2;
  v82 = a3;
  v73 = 0;
  v67 = &unk_214CF2CF0;
  v68 = sub_214C02C00;
  v69 = sub_214A7E854;
  v70 = sub_214A662DC;
  v71 = sub_214A662DC;
  v72 = sub_214A7E40C;
  ObjectType = swift_getObjectType();
  v97 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v75 = 0;
  v88 = 0;
  v76 = sub_214CCDA74();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v80 = v36 - v79;
  v84 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v83);
  v85 = v36 - v84;
  v97 = v5;
  v95 = v6;
  v96 = v7;
  v94 = v3;
  v86 = [v5 emailAddress];
  swift_getObjectType();
  v87 = [v86 emailAddressValue];
  if (v87)
  {
    v65 = v87;
    v64 = v87;
    v88 = v87;
    swift_unknownObjectRelease();
    v62 = 0;
    v8 = sub_214CCF994();
    (*(*(v8 - 8) + 56))(v85, 1);
    MEMORY[0x277D82BE0](v83);
    MEMORY[0x277D82BE0](v64);
    MEMORY[0x277D82BE0](v66);

    v9 = swift_allocObject();
    v10 = v83;
    v11 = v66;
    v12 = v81;
    v13 = v82;
    v14 = ObjectType;
    v15 = v62;
    v16 = v85;
    v17 = v67;
    v18 = v64;
    v63 = v9;
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v10;
    v9[5] = v18;
    v9[6] = v11;
    v9[7] = v12;
    v9[8] = v13;
    v9[9] = v14;
    sub_214B88C30(v15, v15, v16, v17, v9, MEMORY[0x277D84F78] + 8);

    MEMORY[0x277D82BD8](v64);
  }

  else
  {
    v19 = v80;
    swift_unknownObjectRelease();
    v20 = sub_214C01D6C();
    (*(v77 + 16))(v19, v20, v76);
    MEMORY[0x277D82BE0](v83);
    v51 = 7;
    v52 = swift_allocObject();
    *(v52 + 16) = v83;
    v60 = sub_214CCDA54();
    v61 = sub_214CCFB84();
    v49 = 17;
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v50 = 32;
    v21 = swift_allocObject();
    v22 = v52;
    v53 = v21;
    *(v21 + 16) = v68;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v53;
    v57 = v23;
    *(v23 + 16) = v69;
    *(v23 + 24) = v24;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
    v56 = sub_214CD03C4();
    v58 = v25;

    v26 = v54;
    v27 = v58;
    *v58 = v70;
    v27[1] = v26;

    v28 = v55;
    v29 = v58;
    v58[2] = v71;
    v29[3] = v28;

    v30 = v57;
    v31 = v58;
    v58[4] = v72;
    v31[5] = v30;
    sub_214A63280();

    if (os_log_type_enabled(v60, v61))
    {
      v32 = v75;
      v42 = sub_214CCFF24();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v43 = sub_214A632C4(0, v41, v41);
      v44 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v45 = &v93;
      v93 = v42;
      v46 = &v92;
      v92 = v43;
      v47 = &v91;
      v91 = v44;
      sub_214A6627C(2, &v93);
      sub_214A6627C(1, v45);
      v89 = v70;
      v90 = v54;
      sub_214A66290(&v89, v45, v46, v47);
      v48 = v32;
      if (v32)
      {

        __break(1u);
      }

      else
      {
        v89 = v71;
        v90 = v55;
        sub_214A66290(&v89, &v93, &v92, &v91);
        v40 = 0;
        v89 = v72;
        v90 = v57;
        sub_214A66290(&v89, &v93, &v92, &v91);
        _os_log_impl(&dword_214A5E000, v60, v61, "Could not fetch business logo for address %s: invalid address format", v42, 0xCu);
        sub_214A669DC(v43, 0, v41);
        sub_214A669DC(v44, 1, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v33 = MEMORY[0x277D82BD8](v60);
    (*(v77 + 8))(v80, v76, v33);

    v37 = objc_opt_self();
    sub_214CCF614("Invalid email address", 21, 1);
    v36[1] = v34;
    v38 = sub_214CCF544();

    v39 = [v37 em:v38 internalErrorWithReason:?];
    v35 = MEMORY[0x277D82BD8](v38);
    v81(0, v39, v35);
  }
}

uint64_t sub_214C029E0(void *a1)
{
  location = 0;
  objc_storeStrong(&location, [a1 emailAddress]);
  v14 = [location emailAddressValue];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  if (v14)
  {
    v13 = [v14 ef_publicDescription];
    v12 = 1;
    MEMORY[0x277D82BE0](v13);
  }

  else
  {
    v7 = MEMORY[0x277D07198];
    v11 = [location stringValue];
    v10 = 1;
    v9 = [v7 fullyOrPartiallyRedactedStringForString:?];
    v8 = 1;
    MEMORY[0x277D82BE0](v9);
  }

  v16 = v1;
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  v4 = v16;
  v2 = v16;
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = sub_214CCF564();
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t sub_214C02C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[69] = a8;
  v8[68] = a7;
  v8[67] = a6;
  v8[66] = a5;
  v8[65] = a4;
  v8[49] = v8;
  v8[50] = 0;
  v8[51] = 0;
  v8[52] = 0;
  v8[34] = 0;
  v8[35] = 0;
  v8[53] = 0;
  v8[57] = 0;
  v8[58] = 0;
  v8[59] = 0;
  v8[60] = 0;
  v8[62] = 0;
  v8[63] = 0;
  v8[42] = 0;
  v8[43] = 0;
  v8[64] = 0;
  v8[44] = 0;
  v8[45] = 0;
  v9 = sub_214CCD154();
  v8[70] = v9;
  v8[71] = *(v9 - 8);
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v10 = sub_214CCDA74();
  v8[74] = v10;
  v8[75] = *(v10 - 8);
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[50] = a4;
  v8[51] = a5;
  v8[52] = a6;
  v8[34] = a7;
  v8[35] = a8;

  return MEMORY[0x2822009F8](sub_214C02EC4, 0);
}

uint64_t sub_214C02EC4()
{
  v64 = v0;
  v1 = v0[83];
  v45 = v0[75];
  v46 = v0[74];
  v47 = v0[65];
  v0[49] = v0;
  v2 = sub_214C01D6C();
  v3 = *(v45 + 16);
  v0[84] = v3;
  v0[85] = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v46);
  MEMORY[0x277D82BE0](v47);
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  oslog = sub_214CCDA54();
  v55 = sub_214CCFBB4();
  v50 = swift_allocObject();
  *(v50 + 16) = 66;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_214B1DA88;
  *(v49 + 24) = v48;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_214B21624;
  *(v52 + 24) = v49;
  v0[86] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  sub_214CD03C4();
  v53 = v4;

  *v53 = sub_214A662DC;
  v53[1] = v50;

  v53[2] = sub_214A662DC;
  v53[3] = v51;

  v53[4] = sub_214B217B4;
  v53[5] = v52;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v55))
  {
    buf = sub_214CCFF24();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v42 = sub_214A632C4(1, v40, v40);
    v43 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v59 = buf;
    v60 = v42;
    v61 = v43;
    sub_214A6627C(2, &v59);
    sub_214A6627C(1, &v59);
    v62 = sub_214A662DC;
    v63 = v50;
    sub_214A66290(&v62, &v59, &v60, &v61);
    v62 = sub_214A662DC;
    v63 = v51;
    sub_214A66290(&v62, &v59, &v60, &v61);
    v62 = sub_214B217B4;
    v63 = v52;
    sub_214A66290(&v62, &v59, &v60, &v61);
    _os_log_impl(&dword_214A5E000, oslog, v55, "Fetching business metadata for context:\n%{public}@", buf, 0xCu);
    sub_214A669DC(v42, 1, v40);
    sub_214A669DC(v43, 0, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  *(v44 + 696) = 0;
  v34 = *(v44 + 664);
  v35 = *(v44 + 592);
  v36 = *(v44 + 528);
  v33 = *(v44 + 600);
  v5 = MEMORY[0x277D82BD8](oslog);
  v6 = *(v33 + 8);
  *(v44 + 704) = v6;
  *(v44 + 712) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v34, v35, v5);
  sub_214C097EC();
  MEMORY[0x277D82BE0](v36);
  *(v44 + 384) = 0;
  objc_storeStrong((v44 + 384), v36);
  v37 = [*(v44 + 384) emailAddressValue];
  v38 = [v37 simpleAddress];
  v58 = 0;
  v39 = v38;
  if (!v38)
  {
    v57 = [*(v44 + 384) stringValue];
    v58 = 1;
    v39 = v57;
  }

  MEMORY[0x277D82BE0](v39);
  v56 = v7;
  if (v58)
  {
    MEMORY[0x277D82BD8](v57);
  }

  v29 = *(v44 + 528);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v37);
  objc_storeStrong((v44 + 384), 0);
  v8 = v56;
  v28 = v56;
  swift_unknownObjectRelease();
  v30 = sub_214CCF564();
  v31 = v9;
  v32 = [v29 domain];
  if (v32)
  {
    v24 = sub_214CCF564();
    v25 = v11;
    *&v10 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v23 = [*(v44 + 528) highLevelDomain];
  if (v23)
  {
    v19 = sub_214CCF564();
    v20 = v12;
    MEMORY[0x277D82BD8](v23);
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v15 = *(v44 + 536);
  v17 = sub_214C08E0C(v30, v31, v26, v27, v21, v22);
  *(v44 + 720) = v17;
  *&v13 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  *(v44 + 424) = v17;
  v18 = [v15 service];
  *(v44 + 728) = v18;
  *(v44 + 16) = *(v44 + 392);
  *(v44 + 56) = v44 + 432;
  *(v44 + 24) = sub_214C03964;
  v16 = swift_continuation_init();
  *(v44 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36DA0, &qword_214CF2CF8);
  *(v44 + 176) = v16;
  *(v44 + 144) = MEMORY[0x277D85DD0];
  *(v44 + 152) = 1107296256;
  *(v44 + 156) = 0;
  *(v44 + 160) = sub_214C08E74;
  *(v44 + 168) = &block_descriptor_14;
  [v18 fetchBusinessMetadataForEmailIdentifier:v17 completion:?];

  return MEMORY[0x282200938](v44 + 16);
}

uint64_t sub_214C03964()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 392) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 736) = v1;
  if (v1)
  {
    v2 = sub_214C0662C;
  }

  else
  {
    v2 = sub_214C03AD8;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214C03AD8()
{
  v90 = v0;
  v1 = v0[91];
  v76 = v0[65];
  v0[49] = v0;
  v75 = v0[54];
  v0[93] = v75;
  v0[59] = v75;
  v77 = [v76 businessLogoID];
  if (v77)
  {
    v70 = sub_214CCF564();
    v71 = v3;
    *&v2 = MEMORY[0x277D82BD8](v77).n128_u64[0];
    v72 = v70;
    v73 = v71;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  if (v73)
  {
    *(v74 + 352) = v72;
    *(v74 + 360) = v73;
    v83 = v72;
    v84 = v73;
    v68 = [v75 businessId];
    *(v74 + 368) = sub_214CCF564();
    *(v74 + 376) = v4;
    v69 = MEMORY[0x21605D8D0](v83, v84, *(v74 + 368), *(v74 + 376));
    sub_214A61B48(v74 + 368);
    MEMORY[0x277D82BD8](v68);
    if (v69)
    {

      v67 = *(v74 + 696);
    }

    else
    {
      v57 = *(v74 + 672);
      v5 = *(v74 + 656);
      v56 = *(v74 + 592);
      v58 = *(v74 + 520);
      v6 = sub_214C01D6C();
      v57(v5, v6, v56);
      MEMORY[0x277D82BE0](v58);
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      oslog = sub_214CCDA54();
      v66 = sub_214CCFBA4();
      v61 = swift_allocObject();
      *(v61 + 16) = 66;
      v62 = swift_allocObject();
      *(v62 + 16) = 8;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_214B1DA88;
      *(v60 + 24) = v59;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_214B21624;
      *(v63 + 24) = v60;
      sub_214CD03C4();
      v64 = v7;

      *v64 = sub_214A662DC;
      v64[1] = v61;

      v64[2] = sub_214A662DC;
      v64[3] = v62;

      v64[4] = sub_214B217B4;
      v64[5] = v63;
      sub_214A63280();

      if (os_log_type_enabled(oslog, v66))
      {
        v8 = *(v74 + 696);
        buf = sub_214CCFF24();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v54 = sub_214A632C4(1, v52, v52);
        v55 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v85 = buf;
        v86 = v54;
        v87 = v55;
        sub_214A6627C(2, &v85);
        sub_214A6627C(1, &v85);
        v88 = sub_214A662DC;
        v89 = v61;
        sub_214A66290(&v88, &v85, &v86, &v87);
        if (v8)
        {
        }

        v88 = sub_214A662DC;
        v89 = v62;
        sub_214A66290(&v88, &v85, &v86, &v87);
        v88 = sub_214B217B4;
        v89 = v63;
        sub_214A66290(&v88, &v85, &v86, &v87);
        _os_log_impl(&dword_214A5E000, oslog, v66, "Found mismatching business logo IDs for context:\n%{public}@", buf, 0xCu);
        sub_214A669DC(v54, 1, v52);
        sub_214A669DC(v55, 0, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();

        v51 = 0;
      }

      else
      {

        v51 = *(v74 + 696);
      }

      v45 = *(v74 + 704);
      v43 = *(v74 + 656);
      v44 = *(v74 + 592);
      v46 = *(v74 + 536);
      v49 = *(v74 + 528);
      v10 = MEMORY[0x277D82BD8](oslog);
      v45(v43, v44, v10);
      v50 = [v46 messageRepository];
      MEMORY[0x277D82BE0](v49);
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v47 = NSStringFromClass(ObjCClassFromMetadata);
      sub_214CCF564();
      v48 = sub_214CCF544();

      [v50 reportIncorrectBusinessForAddress:v49 isBusinessConnectGrouping:1 fromClassName:{v48, MEMORY[0x277D82BD8](v47).n128_f64[0]}];
      MEMORY[0x277D82BD8](v48);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v50);

      v67 = v51;
    }
  }

  else
  {
    v67 = *(v74 + 696);
  }

  v33 = *(v74 + 672);
  v12 = *(v74 + 648);
  v32 = *(v74 + 592);
  v34 = *(v74 + 520);
  v13 = sub_214C01D6C();
  v33(v12, v13, v32);
  MEMORY[0x277D82BE0](v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  log = sub_214CCDA54();
  v42 = sub_214CCFBB4();
  v37 = swift_allocObject();
  *(v37 + 16) = 66;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_214B1DA88;
  *(v36 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_214B21624;
  *(v39 + 24) = v36;
  sub_214CD03C4();
  v40 = v14;

  *v40 = sub_214A662DC;
  v40[1] = v37;

  v40[2] = sub_214A662DC;
  v40[3] = v38;

  v40[4] = sub_214B217B4;
  v40[5] = v39;
  sub_214A63280();

  if (os_log_type_enabled(log, v42))
  {
    v29 = sub_214CCFF24();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v30 = sub_214A632C4(1, v28, v28);
    v31 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v78 = v29;
    v79 = v30;
    v80 = v31;
    sub_214A6627C(2, &v78);
    sub_214A6627C(1, &v78);
    v81 = sub_214A662DC;
    v82 = v37;
    sub_214A66290(&v81, &v78, &v79, &v80);
    if (v67)
    {
    }

    v81 = sub_214A662DC;
    v82 = v38;
    sub_214A66290(&v81, &v78, &v79, &v80);
    v81 = sub_214B217B4;
    v82 = v39;
    sub_214A66290(&v81, &v78, &v79, &v80);
    _os_log_impl(&dword_214A5E000, log, v42, "Fetching business logo for context:\n%{public}@", v29, 0xCu);
    sub_214A669DC(v30, 1, v28);
    sub_214A669DC(v31, 0, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();

    v27 = 0;
  }

  else
  {

    v27 = v67;
  }

  *(v74 + 752) = v27;
  v21 = *(v74 + 704);
  v19 = *(v74 + 648);
  v20 = *(v74 + 592);
  v23 = *(v74 + 536);
  v15 = MEMORY[0x277D82BD8](log);
  v21(v19, v20, v15);
  sub_214C09858();
  v22 = [v75 businessId];
  v16 = sub_214CCF564();
  v25 = sub_214C08FAC(v16, v17);
  *(v74 + 760) = v25;
  *&v18 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  *(v74 + 480) = v25;
  v26 = [v23 service];
  *(v74 + 768) = v26;
  *(v74 + 80) = *(v74 + 392);
  *(v74 + 120) = v74 + 488;
  *(v74 + 88) = sub_214C04C08;
  v24 = swift_continuation_init();
  *(v74 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DB0, &qword_214CF2D00);
  *(v74 + 240) = v24;
  *(v74 + 208) = MEMORY[0x277D85DD0];
  *(v74 + 216) = 1107296256;
  *(v74 + 220) = 0;
  *(v74 + 224) = sub_214C08FF4;
  *(v74 + 232) = &block_descriptor_137;
  [v26 fetchBusinessLogoForBusinessIdentifier:v25 completion:?];

  return MEMORY[0x282200938](v74 + 80);
}

uint64_t sub_214C04C08()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 392) = *v0;
  v1 = *(v4 + 112);
  *(v5 + 776) = v1;
  if (v1)
  {
    v2 = sub_214C081CC;
  }

  else
  {
    v2 = sub_214C04D7C;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214C04D7C()
{
  v103 = v0;
  v1 = v0[96];
  v2 = v0[94];
  v0[49] = v0;
  v89 = v0[61];
  v0[63] = v89;
  v90 = [v89 logoURL];
  sub_214CCD124();
  sub_214C80E84();
  v91 = sub_214CCD164();
  v92 = v3;
  (*(v88[71] + 8))(v88[73], v88[70]);
  MEMORY[0x277D82BD8](v90);
  if (v2)
  {

    v86 = 0;
    v87 = 0xF000000000000000;
  }

  else
  {
    v86 = v91;
    v87 = v92;
  }

  if ((v87 & 0xF000000000000000) == 0xF000000000000000)
  {
    v83 = v88[95];
    v76 = v88[72];
    v77 = v88[70];
    v75 = v88[71];
    v81 = objc_opt_self();
    v88[38] = sub_214CD03B4();
    v88[39] = v4;
    v5 = sub_214CCF614("Unable to create image with path: ", 34, 1);
    MEMORY[0x21605E650](v5);

    v80 = [v89 logoURL];
    sub_214CCD124();
    v78 = sub_214CCD134();
    v79 = v6;
    (*(v75 + 8))(v76, v77);
    v88[40] = v78;
    v88[41] = v79;
    sub_214CD0394();
    sub_214A61B48((v88 + 40));
    *&v7 = MEMORY[0x277D82BD8](v80).n128_u64[0];
    v8 = sub_214CCF614("", 0, 1, v7);
    MEMORY[0x21605E650](v8);

    sub_214A61B48((v88 + 38));
    sub_214CCF5F4();
    v82 = sub_214CCF544();

    v84 = [v81 em:v82 internalErrorWithReason:?];
    MEMORY[0x277D82BD8](v82);
    swift_willThrow();
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v83);
    v85 = v84;
LABEL_14:
    v32 = v88[84];
    v16 = v88[76];
    v31 = v88[74];
    v33 = v88[65];
    v17 = v85;
    v88[62] = v85;
    v18 = sub_214C01D6C();
    v32(v16, v18, v31);
    MEMORY[0x277D82BE0](v33);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    v19 = v85;
    v36 = swift_allocObject();
    *(v36 + 16) = v85;
    log = sub_214CCDA54();
    v46 = sub_214CCFBA4();
    v38 = swift_allocObject();
    *(v38 + 16) = 66;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_214B1DA88;
    *(v35 + 24) = v34;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_214B21624;
    *(v40 + 24) = v35;
    v41 = swift_allocObject();
    *(v41 + 16) = 34;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_214C09850;
    *(v37 + 24) = v36;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_214A7E854;
    *(v43 + 24) = v37;
    sub_214CD03C4();
    v44 = v20;

    *v44 = sub_214A662DC;
    v44[1] = v38;

    v44[2] = sub_214A662DC;
    v44[3] = v39;

    v44[4] = sub_214B217B4;
    v44[5] = v40;

    v44[6] = sub_214A662DC;
    v44[7] = v41;

    v44[8] = sub_214A662DC;
    v44[9] = v42;

    v44[10] = sub_214A7E40C;
    v44[11] = v43;
    sub_214A63280();

    if (os_log_type_enabled(log, v46))
    {
      v28 = sub_214CCFF24();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v29 = sub_214A632C4(1, v27, v27);
      v30 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v93 = v28;
      v94 = v29;
      v95 = v30;
      sub_214A6627C(2, &v93);
      sub_214A6627C(2, &v93);
      v96 = sub_214A662DC;
      v97 = v38;
      sub_214A66290(&v96, &v93, &v94, &v95);
      v96 = sub_214A662DC;
      v97 = v39;
      sub_214A66290(&v96, &v93, &v94, &v95);
      v96 = sub_214B217B4;
      v97 = v40;
      sub_214A66290(&v96, &v93, &v94, &v95);
      v96 = sub_214A662DC;
      v97 = v41;
      sub_214A66290(&v96, &v93, &v94, &v95);
      v96 = sub_214A662DC;
      v97 = v42;
      sub_214A66290(&v96, &v93, &v94, &v95);
      v96 = sub_214A7E40C;
      v97 = v43;
      sub_214A66290(&v96, &v93, &v94, &v95);
      _os_log_impl(&dword_214A5E000, log, v46, "Could not fetch business logo for context:\n%{public}@\nError: %{public}s", v28, 0x16u);
      sub_214A669DC(v29, 1, v27);
      sub_214A669DC(v30, 1, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }

    else
    {
    }

    v25 = v88[88];
    v23 = v88[76];
    v24 = v88[74];
    v26 = v88[68];
    v21 = MEMORY[0x277D82BD8](log);
    v25(v23, v24, v21);

    v22 = v85;
    v26(0, v85);

    goto LABEL_11;
  }

  v65 = v88[84];
  v9 = v88[80];
  v64 = v88[74];
  v66 = v88[65];
  v88[42] = v86;
  v88[43] = v87;
  v10 = sub_214C01D6C();
  v65(v9, v10, v64);
  MEMORY[0x277D82BE0](v66);
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  oslog = sub_214CCDA54();
  v74 = sub_214CCFBB4();
  v69 = swift_allocObject();
  *(v69 + 16) = 66;
  v70 = swift_allocObject();
  *(v70 + 16) = 8;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_214B1DA88;
  *(v68 + 24) = v67;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_214B21624;
  *(v71 + 24) = v68;
  sub_214CD03C4();
  v72 = v11;

  *v72 = sub_214A662DC;
  v72[1] = v69;

  v72[2] = sub_214A662DC;
  v72[3] = v70;

  v72[4] = sub_214B217B4;
  v72[5] = v71;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v74))
  {
    buf = sub_214CCFF24();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v62 = sub_214A632C4(1, v60, v60);
    v63 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v98 = buf;
    v99 = v62;
    v100 = v63;
    sub_214A6627C(2, &v98);
    sub_214A6627C(1, &v98);
    v101 = sub_214A662DC;
    v102 = v69;
    sub_214A66290(&v101, &v98, &v99, &v100);
    v101 = sub_214A662DC;
    v102 = v70;
    sub_214A66290(&v101, &v98, &v99, &v100);
    v101 = sub_214B217B4;
    v102 = v71;
    sub_214A66290(&v101, &v98, &v99, &v100);
    _os_log_impl(&dword_214A5E000, oslog, v74, "Successfully fetched business logo for context:\n%{public}@", buf, 0xCu);
    sub_214A669DC(v62, 1, v60);
    sub_214A669DC(v63, 0, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v56 = v88[88];
  v54 = v88[80];
  v55 = v88[74];
  v12 = MEMORY[0x277D82BD8](oslog);
  v56(v54, v55, v12);
  v57 = objc_opt_self();
  sub_214AF8330(v86, v87);
  v58 = sub_214CCD174();
  sub_214AF83FC(v86, v87);
  v59 = [v57 mui:v58 imageWithData:?];
  MEMORY[0x277D82BD8](v58);
  if (!v59)
  {
    v50 = v88[95];
    v48 = objc_opt_self();
    sub_214CCF614("Unable to create logo image from data", 37, 1);
    v49 = sub_214CCF544();

    v51 = [v48 em:v49 internalErrorWithReason:?];
    MEMORY[0x277D82BD8](v49);
    swift_willThrow();
    sub_214AF83FC(v86, v87);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v50);
    v85 = v51;
    goto LABEL_14;
  }

  v53 = v88[95];
  v52 = v88[68];
  v88[64] = v59;

  v13 = MEMORY[0x277D82BE0](v59);
  v52(v59, 0, v13);
  MEMORY[0x277D82BD8](v59);

  MEMORY[0x277D82BD8](v59);
  sub_214AF83FC(v86, v87);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v53);
LABEL_11:
  v47 = v88[90];
  MEMORY[0x277D82BD8](v88[93]);
  MEMORY[0x277D82BD8](v47);

  v14 = *(v88[49] + 8);

  return v14();
}

uint64_t sub_214C0662C(__n128 a1)
{
  v122 = v1;
  v106 = v1[92];
  v104 = v1[91];
  v105 = v1[90];
  v1[49] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v104);
  MEMORY[0x277D82BD8](v105);
  v2 = v106;
  v1[55] = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C0, &qword_214CF1FC8);
  sub_214BC5914();
  if (swift_dynamicCast())
  {
    v99 = *(v103 + 448);
    v100 = objc_opt_self();
    v5 = MEMORY[0x277D82BE0](v99);
    v101 = sub_214CCD074(v5);

    v102 = [v100 ed:v101 isNoBusinessMetadataFoundError:?];
    MEMORY[0x277D82BD8](v101);
    if (v102)
    {
      v89 = *(v103 + 672);
      v6 = *(v103 + 632);
      v88 = *(v103 + 592);
      v90 = *(v103 + 520);
      *(v103 + 464) = v99;
      v7 = sub_214C01D6C();
      v89(v6, v7, v88);
      MEMORY[0x277D82BE0](v90);
      v91 = swift_allocObject();
      *(v91 + 16) = v90;
      oslog = sub_214CCDA54();
      v98 = sub_214CCFBB4();
      v93 = swift_allocObject();
      *(v93 + 16) = 66;
      v94 = swift_allocObject();
      *(v94 + 16) = 8;
      v92 = swift_allocObject();
      *(v92 + 16) = sub_214B1DA88;
      *(v92 + 24) = v91;
      v95 = swift_allocObject();
      *(v95 + 16) = sub_214B21624;
      *(v95 + 24) = v92;
      sub_214CD03C4();
      v96 = v8;

      *v96 = sub_214A662DC;
      v96[1] = v93;

      v96[2] = sub_214A662DC;
      v96[3] = v94;

      v96[4] = sub_214B217B4;
      v96[5] = v95;
      sub_214A63280();

      if (os_log_type_enabled(oslog, v98))
      {
        buf = sub_214CCFF24();
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v86 = sub_214A632C4(1, v84, v84);
        v87 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v117 = buf;
        v118 = v86;
        v119 = v87;
        sub_214A6627C(2, &v117);
        sub_214A6627C(1, &v117);
        v120 = sub_214A662DC;
        v121 = v93;
        sub_214A66290(&v120, &v117, &v118, &v119);
        v120 = sub_214A662DC;
        v121 = v94;
        sub_214A66290(&v120, &v117, &v118, &v119);
        v120 = sub_214B217B4;
        v121 = v95;
        sub_214A66290(&v120, &v117, &v118, &v119);
        _os_log_impl(&dword_214A5E000, oslog, v98, "No business metadata returned for context:\n%{public}@", buf, 0xCu);
        sub_214A669DC(v86, 1, v84);
        sub_214A669DC(v87, 0, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }

      else
      {
      }

      v81 = *(v103 + 704);
      v79 = *(v103 + 632);
      v80 = *(v103 + 592);
      v82 = *(v103 + 520);
      v9 = MEMORY[0x277D82BD8](oslog);
      v81(v79, v80, v9);
      v83 = [v82 businessLogoID];
      if (v83)
      {
        v75 = sub_214CCF564();
        v76 = v10;
        MEMORY[0x277D82BD8](v83);
        v77 = v75;
        v78 = v76;
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      *(v103 + 288) = v77;
      *(v103 + 296) = v78;
      if (*(v103 + 296))
      {
        sub_214A61B48(v103 + 288);
        v65 = *(v103 + 672);
        v11 = *(v103 + 624);
        v64 = *(v103 + 592);
        v66 = *(v103 + 520);
        v12 = sub_214C01D6C();
        v65(v11, v12, v64);
        MEMORY[0x277D82BE0](v66);
        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        log = sub_214CCDA54();
        v74 = sub_214CCFBA4();
        v69 = swift_allocObject();
        *(v69 + 16) = 66;
        v70 = swift_allocObject();
        *(v70 + 16) = 8;
        v68 = swift_allocObject();
        *(v68 + 16) = sub_214B1DA88;
        *(v68 + 24) = v67;
        v71 = swift_allocObject();
        *(v71 + 16) = sub_214B21624;
        *(v71 + 24) = v68;
        sub_214CD03C4();
        v72 = v13;

        *v72 = sub_214A662DC;
        v72[1] = v69;

        v72[2] = sub_214A662DC;
        v72[3] = v70;

        v72[4] = sub_214B217B4;
        v72[5] = v71;
        sub_214A63280();

        if (os_log_type_enabled(log, v74))
        {
          v61 = sub_214CCFF24();
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
          v62 = sub_214A632C4(1, v60, v60);
          v63 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v112 = v61;
          v113 = v62;
          v114 = v63;
          sub_214A6627C(2, &v112);
          sub_214A6627C(1, &v112);
          v115 = sub_214A662DC;
          v116 = v69;
          sub_214A66290(&v115, &v112, &v113, &v114);
          v115 = sub_214A662DC;
          v116 = v70;
          sub_214A66290(&v115, &v112, &v113, &v114);
          v115 = sub_214B217B4;
          v116 = v71;
          sub_214A66290(&v115, &v112, &v113, &v114);
          _os_log_impl(&dword_214A5E000, log, v74, "Found mismatching business logo IDs for context:\n%{public}@", v61, 0xCu);
          sub_214A669DC(v62, 1, v60);
          sub_214A669DC(v63, 0, MEMORY[0x277D84F70] + 8);
          sub_214CCFF04();
        }

        else
        {
        }

        v54 = *(v103 + 704);
        v52 = *(v103 + 624);
        v53 = *(v103 + 592);
        v55 = *(v103 + 536);
        v58 = *(v103 + 528);
        v14 = MEMORY[0x277D82BD8](log);
        v54(v52, v53, v14);
        v59 = [v55 messageRepository];
        MEMORY[0x277D82BE0](v58);
        swift_getObjectType();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v56 = NSStringFromClass(ObjCClassFromMetadata);
        sub_214CCF564();
        v57 = sub_214CCF544();

        [v59 reportIncorrectBusinessForAddress:v58 isBusinessConnectGrouping:1 fromClassName:{v57, MEMORY[0x277D82BD8](v56).n128_f64[0]}];
        MEMORY[0x277D82BD8](v57);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v59);
      }

      else
      {
        sub_214A61B48(v103 + 288);
      }

      v51 = *(v103 + 736);
      v50 = *(v103 + 544);

      v16 = MEMORY[0x277D82BE0](v99);
      v50(0, v99, v16);

      MEMORY[0x277D82BD8](v99);

      goto LABEL_3;
    }

    MEMORY[0x277D82BD8](v99);
  }

  else
  {
  }

  v36 = *(v103 + 736);
  v34 = *(v103 + 672);
  v17 = *(v103 + 616);
  v33 = *(v103 + 592);
  v35 = *(v103 + 520);
  v18 = v36;
  *(v103 + 456) = v36;
  v19 = sub_214C01D6C();
  v34(v17, v19, v33);
  MEMORY[0x277D82BE0](v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  v20 = v36;
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  v48 = sub_214CCDA54();
  v49 = sub_214CCFBA4();
  v41 = swift_allocObject();
  *(v41 + 16) = 66;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_214B1DA88;
  *(v38 + 24) = v37;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_214B21624;
  *(v43 + 24) = v38;
  v44 = swift_allocObject();
  *(v44 + 16) = 34;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_214C09850;
  *(v40 + 24) = v39;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_214A7E854;
  *(v46 + 24) = v40;
  sub_214CD03C4();
  v47 = v21;

  *v47 = sub_214A662DC;
  v47[1] = v41;

  v47[2] = sub_214A662DC;
  v47[3] = v42;

  v47[4] = sub_214B217B4;
  v47[5] = v43;

  v47[6] = sub_214A662DC;
  v47[7] = v44;

  v47[8] = sub_214A662DC;
  v47[9] = v45;

  v47[10] = sub_214A7E40C;
  v47[11] = v46;
  sub_214A63280();

  if (os_log_type_enabled(v48, v49))
  {
    v30 = sub_214CCFF24();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v31 = sub_214A632C4(1, v29, v29);
    v32 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v107 = v30;
    v108 = v31;
    v109 = v32;
    sub_214A6627C(2, &v107);
    sub_214A6627C(2, &v107);
    v110 = sub_214A662DC;
    v111 = v41;
    sub_214A66290(&v110, &v107, &v108, &v109);
    v110 = sub_214A662DC;
    v111 = v42;
    sub_214A66290(&v110, &v107, &v108, &v109);
    v110 = sub_214B217B4;
    v111 = v43;
    sub_214A66290(&v110, &v107, &v108, &v109);
    v110 = sub_214A662DC;
    v111 = v44;
    sub_214A66290(&v110, &v107, &v108, &v109);
    v110 = sub_214A662DC;
    v111 = v45;
    sub_214A66290(&v110, &v107, &v108, &v109);
    v110 = sub_214A7E40C;
    v111 = v46;
    sub_214A66290(&v110, &v107, &v108, &v109);
    _os_log_impl(&dword_214A5E000, v48, v49, "Could not fetch business metadata for context:\n%{public}@\nError: %{public}s", v30, 0x16u);
    sub_214A669DC(v31, 1, v29);
    sub_214A669DC(v32, 1, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v28 = *(v103 + 736);
  v26 = *(v103 + 704);
  v24 = *(v103 + 616);
  v25 = *(v103 + 592);
  v27 = *(v103 + 544);
  v22 = MEMORY[0x277D82BD8](v48);
  v26(v24, v25, v22);

  v23 = v28;
  v27(0, v28);

LABEL_3:

  v3 = *(*(v103 + 392) + 8);

  return v3();
}

uint64_t sub_214C081CC(__n128 a1)
{
  v45 = v1;
  v21 = v1[96];
  v22 = v1[95];
  v1[49] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  v26 = v1[97];
  v24 = v1[84];
  v2 = v1[76];
  v23 = v1[74];
  v25 = v1[65];
  v3 = v26;
  v1[62] = v26;
  v4 = sub_214C01D6C();
  v24(v2, v4, v23);
  MEMORY[0x277D82BE0](v25);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v5 = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  oslog = sub_214CCDA54();
  v39 = sub_214CCFBA4();
  v31 = swift_allocObject();
  *(v31 + 16) = 66;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_214B1DA88;
  *(v28 + 24) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_214B21624;
  *(v33 + 24) = v28;
  v34 = swift_allocObject();
  *(v34 + 16) = 34;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_214C09850;
  *(v30 + 24) = v29;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_214A7E854;
  *(v36 + 24) = v30;
  sub_214CD03C4();
  v37 = v6;

  *v37 = sub_214A662DC;
  v37[1] = v31;

  v37[2] = sub_214A662DC;
  v37[3] = v32;

  v37[4] = sub_214B217B4;
  v37[5] = v33;

  v37[6] = sub_214A662DC;
  v37[7] = v34;

  v37[8] = sub_214A662DC;
  v37[9] = v35;

  v37[10] = sub_214A7E40C;
  v37[11] = v36;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v39))
  {
    buf = sub_214CCFF24();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v18 = sub_214A632C4(1, v16, v16);
    v19 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v40 = buf;
    v41 = v18;
    v42 = v19;
    sub_214A6627C(2, &v40);
    sub_214A6627C(2, &v40);
    v43 = sub_214A662DC;
    v44 = v31;
    sub_214A66290(&v43, &v40, &v41, &v42);
    v43 = sub_214A662DC;
    v44 = v32;
    sub_214A66290(&v43, &v40, &v41, &v42);
    v43 = sub_214B217B4;
    v44 = v33;
    sub_214A66290(&v43, &v40, &v41, &v42);
    v43 = sub_214A662DC;
    v44 = v34;
    sub_214A66290(&v43, &v40, &v41, &v42);
    v43 = sub_214A662DC;
    v44 = v35;
    sub_214A66290(&v43, &v40, &v41, &v42);
    v43 = sub_214A7E40C;
    v44 = v36;
    sub_214A66290(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_214A5E000, oslog, v39, "Could not fetch business logo for context:\n%{public}@\nError: %{public}s", buf, 0x16u);
    sub_214A669DC(v18, 1, v16);
    sub_214A669DC(v19, 1, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v13 = v20[88];
  v11 = v20[76];
  v12 = v20[74];
  v14 = v20[68];
  v7 = MEMORY[0x277D82BD8](oslog);
  v13(v11, v12, v7);

  v8 = v26;
  v14(0, v26);

  v15 = v20[90];
  MEMORY[0x277D82BD8](v20[93]);
  MEMORY[0x277D82BD8](v15);

  v9 = *(v20[49] + 8);

  return v9();
}

double sub_214C08E74(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_214C09960();
    sub_214C01BE0(v11, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_214CD0404();
      __break(1u);
    }

    v12 = v7;
    v3 = sub_214C09960();
    sub_214C01C44(v11, &v12, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

double sub_214C08FF4(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_214C098FC();
    sub_214C01BE0(v11, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_214CD0404();
      __break(1u);
    }

    v12 = v7;
    v3 = sub_214C098FC();
    sub_214C01C44(v11, &v12, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_214C0912C(void *a1)
{
  v1 = a1;
  v4 = sub_214CCD074(v2);
  v5 = [v4 ef_publicDescription];
  v7 = sub_214CCF564();
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v7;
}

double sub_214C09294(uint64_t a1, id a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v6 = sub_214CCD074(v4);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  (*(a3 + 16))(a3, a1);
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

MUIBusinessConnectServiceProvider __swiftcall MUIBusinessConnectServiceProvider.init()()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result.messageRepository = v2;
  result.service = v1;
  result.super.isa = v0;
  return result;
}

id sub_214C093FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = sub_214CCF544();
  if (a4)
  {
    v11 = sub_214CCF544();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v10 = sub_214CCF544();

    v6 = [v14 initWithEmail:v16 fullDomain:v12 topLevelDomain:v10];
  }

  else
  {
    v6 = [v14 initWithEmail:v16 fullDomain:v12 topLevelDomain:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v16);

  return v9;
}

id sub_214C09554(uint64_t a1, uint64_t a2)
{
  v4 = sub_214CCF544();
  v5 = [v3 initWithBusinessId_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

uint64_t sub_214C09638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_214C096C8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C02C08(a1, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_214C097EC()
{
  v2 = qword_280C7C868;
  if (!qword_280C7C868)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C868);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C09858()
{
  v2 = qword_280C7C8D8;
  if (!qword_280C7C8D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C8D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C098FC()
{
  v2 = qword_280C7CC48;
  if (!qword_280C7CC48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CC48);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C09960()
{
  v2 = qword_280C7CAA0[0];
  if (!qword_280C7CAA0[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_280C7CAA0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static MUICatchUpFeedbackController.provideAutomaticSummaryFeedback(with:message:sourceViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v19 = a2;
  v20 = a3;
  v23 = &unk_214CF2D10;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v22 = &v17 - v18;
  v28 = v4;
  v27 = v5;
  v26 = v6;
  v25 = v3;
  v21 = 0;
  v7 = sub_214CCF994();
  (*(*(v7 - 8) + 56))(v22, 1);
  MEMORY[0x277D82BE0](v19);
  MEMORY[0x277D82BE0](v20);
  v8 = swift_allocObject();
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v8;
  v15 = v24;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v15;
  v14[5] = v9;
  v14[6] = v10;
  sub_214B88C30(v11, v11, v12, v13, v14, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214C09B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = v6;
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  type metadata accessor for CatchUpFeedbackController();
  v7 = swift_task_alloc();
  *(v9 + 48) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_214C09C4C;

  return sub_214B52490(a4, a5, a6);
}

uint64_t sub_214C09C4C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_214C09D98(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C09B5C(a1, v6, v7, v8, v9, v10);
}

uint64_t static MUICatchUpFeedbackController.provideHighlightsFeedback(with:message:sourceViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v19 = a2;
  v20 = a3;
  v23 = &unk_214CF2D20;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v22 = &v17 - v18;
  v28 = v4;
  v27 = v5;
  v26 = v6;
  v25 = v3;
  v21 = 0;
  v7 = sub_214CCF994();
  (*(*(v7 - 8) + 56))(v22, 1);
  MEMORY[0x277D82BE0](v19);
  MEMORY[0x277D82BE0](v20);
  v8 = swift_allocObject();
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v8;
  v15 = v24;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v15;
  v14[5] = v9;
  v14[6] = v10;
  sub_214B88C30(v11, v11, v12, v13, v14, MEMORY[0x277D84F78] + 8);
}