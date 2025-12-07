uint64_t sub_214C0A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return sub_214B526E0(a4, a5, a6);
}

uint64_t sub_214C0A1A4(uint64_t a1)
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

  return sub_214C0A0B4(a1, v6, v7, v8, v9, v10);
}

uint64_t static MUICatchUpFeedbackController.isFeedbackRestricted()()
{
  if (EFIsCustomerBuild())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_214C0A328();
  }

  return v1 & 1;
}

id MUICatchUpFeedbackController.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = MUICatchUpFeedbackController;
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

unint64_t type metadata accessor for MUICatchUpFeedbackController()
{
  v2 = qword_27CA36DB8;
  if (!qword_27CA36DB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36DB8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t MUICatchUpFeedbackType.title.getter(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_214CCF614("Something Isn’t Right", 23, 0);
      v4 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614("Used for a menu item title to allow the user to indicate that the CatchUp generated summary is bad", 98, 1);
      sub_214B1C228();
      v5 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v4);

      return v5;
    }

    else if (a1 == 2)
    {
      sub_214CCF614("Report a Concern", 16, 1);
      v2 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614("Used for a menu item title to allow the user to report a concern about CatchUp generated summary", 96, 1);
      sub_214B1C228();
      v3 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v2);

      return v3;
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
    sub_214CCF614("Looks Good", 10, 1);
    v6 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614("Used for a menu item title to allow the user to indicate that the CatchUp generated summary is good", 99, 1);
    sub_214B1C228();
    v7 = sub_214CCCF54();

    MEMORY[0x277D82BD8](v6);

    return v7;
  }

  return v8;
}

uint64_t MUICatchUpFeedbackFeature.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return sub_214CCF614("Automatic Summaries", 19, 1);
    case 1:
      return sub_214CCF614("Manual Summaries", 16, 1);
    case 2:
      return sub_214CCF614("Priority", 8, 1);
  }

  return sub_214CCF614("Unknown", 7, 1);
}

uint64_t sub_214C0AA28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 2)
  {
    v5 = *MEMORY[0x277D08590];
    v4 = sub_214CCD514();
    return (*(*(v4 - 8) + 104))(a2, v5);
  }

  else if (a1 == 2)
  {
    v6 = *MEMORY[0x277D08578];
    v2 = sub_214CCD514();
    return (*(*(v2 - 8) + 104))(a2, v6);
  }

  else
  {
    sub_214B11080();
    result = sub_214CD0204();
    __break(1u);
  }

  return result;
}

id MUICatchUpFeedbackType.image.getter()
{
  MUICatchUpFeedbackType.imageName(selected:)(0);
  v1 = objc_opt_self();
  MUICatchUpFeedbackType.imageName(selected:)(0);
  v3 = sub_214CCF544();

  v2 = sub_214CCF544();

  v4 = [v1 mui:v3 imageWithSystemSymbolName:0 symbolColor:-1 hintScale:v2 accessibilityDescription:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);

  return v4;
}

uint64_t MUICatchUpFeedbackType.feedbackAction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = *MEMORY[0x277D084E8];
      v3 = sub_214CCD4F4();
      return (*(*(v3 - 8) + 104))(a2, v7);
    }

    else if (a1 == 2)
    {
      v6 = *MEMORY[0x277D084F8];
      v4 = sub_214CCD4F4();
      return (*(*(v4 - 8) + 104))(a2, v6);
    }

    else
    {
      sub_214B11080();
      result = sub_214CD0204();
      __break(1u);
    }
  }

  else
  {
    v8 = *MEMORY[0x277D08510];
    v2 = sub_214CCD4F4();
    return (*(*(v2 - 8) + 104))(a2, v8);
  }

  return result;
}

Swift::String __swiftcall MUICatchUpFeedbackType.imageName(selected:)(Swift::Bool selected)
{
  if (v1)
  {
    if (v1 == 1)
    {
      v19 = sub_214CCF614("hand.thumbsdown", 15, 1);
      v20 = v4;
      if (selected)
      {
        v18 = sub_214CCF614(".fill", 5, 1);
      }

      else
      {
        v18 = sub_214CCF614("", 0, 1);
      }

      v16 = MEMORY[0x21605D8B0](v19, v20, v18);
      v17 = v5;

      v23 = v16;
      v24 = v17;
    }

    else if (v1 == 2)
    {
      v14 = sub_214CCF614("exclamationmark.bubble", 22, 1);
      v15 = v6;
      if (selected)
      {
        v13 = sub_214CCF614(".fill", 5, 1);
      }

      else
      {
        v13 = sub_214CCF614("", 0, 1);
      }

      v11 = MEMORY[0x21605D8B0](v14, v15, v13);
      v12 = v7;

      v23 = v11;
      v24 = v12;
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
    v26 = sub_214CCF614("hand.thumbsup", 13, 1);
    v27 = v2;
    if (selected)
    {
      v25 = sub_214CCF614(".fill", 5, 1);
    }

    else
    {
      v25 = sub_214CCF614("", 0, 1);
    }

    v21 = MEMORY[0x21605D8B0](v26, v27, v25);
    v22 = v3;

    v23 = v21;
    v24 = v22;
  }

  v8 = v23;
  v9 = v24;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id MUICatchUpFeedbackType.selectedImage.getter()
{
  MUICatchUpFeedbackType.imageName(selected:)(1);
  v1 = objc_opt_self();
  MUICatchUpFeedbackType.imageName(selected:)(0);
  v3 = sub_214CCF544();

  v2 = sub_214CCF544();

  v4 = [v1 mui:v3 imageWithSystemSymbolName:0 symbolColor:-1 hintScale:v2 accessibilityDescription:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);

  return v4;
}

uint64_t MUICatchUpFeedbackType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return sub_214CCF614("thumbsup", 8, 1);
    case 1:
      return sub_214CCF614("thumbsdown", 10, 1);
    case 2:
      return sub_214CCF614("reportaconcern", 14, 1);
  }

  return sub_214CCF614("unknown", 7, 1);
}

uint64_t MUICatchUpFeedbackFeature.title.getter(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_214CCF614("Manual Summary", 14, 1);
      v2 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614("Used for a menu item title to allow the user to provide feedback about manual summaries", 87, 1);
      sub_214B1C228();
      v3 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v2);

      return v3;
    }

    else if (a1 == 2)
    {
      sub_214CCF614("Priority", 8, 1);
      v6 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614("Used for a menu item title to allow the user to provide feedback about priority emails", 86, 1);
      sub_214B1C228();
      v7 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v6);

      return v7;
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
    sub_214CCF614("Summary", 7, 1);
    v4 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614("Used for a menu item title to allow the user to provide feedback about automatic summaries", 90, 1);
    sub_214B1C228();
    v5 = sub_214CCCF54();

    MEMORY[0x277D82BD8](v4);

    return v5;
  }

  return v8;
}

uint64_t MUICatchUpFeedbackFeature.imageName.getter(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      MEMORY[0x277D82BE0](@"text.line.3.summary");
      v2 = sub_214CCF564();
      MEMORY[0x277D82BD8](@"text.line.3.summary");
      return v2;
    }

    else if (a1 == 2)
    {
      MEMORY[0x277D82BE0](@"apple.intelligence");
      v4 = sub_214CCF564();
      MEMORY[0x277D82BD8](@"apple.intelligence");
      return v4;
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
    MEMORY[0x277D82BE0](@"text.line.2.summary");
    v3 = sub_214CCF564();
    MEMORY[0x277D82BD8](@"text.line.2.summary");
    return v3;
  }

  return v5;
}

uint64_t sub_214C0B8B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 2)
  {
    v5 = *MEMORY[0x277D424B0];
    v4 = sub_214CCDA34();
    return (*(*(v4 - 8) + 104))(a2, v5);
  }

  else if (a1 == 2)
  {
    v6 = *MEMORY[0x277D424A8];
    v2 = sub_214CCDA34();
    return (*(*(v2 - 8) + 104))(a2, v6);
  }

  else
  {
    sub_214B11080();
    result = sub_214CD0204();
    __break(1u);
  }

  return result;
}

uint64_t sub_214C0BA2C()
{
  v2 = sub_214CCDA74();
  __swift_allocate_value_buffer(v2, qword_27CA36DC0);
  __swift_project_value_buffer(v2, qword_27CA36DC0);
  v0 = type metadata accessor for MUIExternalSummarizationOnboardingViewController(0);
  return static Logger.mailUILogger<A>(for:)(v0, v0);
}

uint64_t type metadata accessor for MUIExternalSummarizationOnboardingViewController(uint64_t a1)
{
  v2 = qword_27CA36E08;
  if (!qword_27CA36E08)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_214C0BB08()
{
  if (qword_27CA34068 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA36DC0);
}

uint64_t sub_214C0BB74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C0BB08();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

double sub_214C0BBE0@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v8 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v9 = sub_214C0BE70();
  v10 = v2;
  if (v9)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v9;
    *(v3 + 24) = v10;
    v5 = sub_214C0FE3C;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  *&result = MEMORY[0x277D82BD8](v8).n128_u64[0];
  return result;
}

double sub_214C0BD1C(uint64_t *a1, void *a2)
{
  sub_214B78A8C(a1, v10);
  v8 = v10[0];
  v9 = v10[1];
  if (v10[0])
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v9;
    v5 = sub_214C0FE30;
    v6 = v2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214C0BEE4(v5, v6);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214C0BE70()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI);
  swift_beginAccess();
  v3 = *v2;
  sub_214B5188C(*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_214C0BEE4(uint64_t a1, uint64_t a2)
{
  sub_214B5188C(a1);
  v6 = (v2 + OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_214A6B584(v3, v4);
  swift_endAccess();
  return sub_214A6B584(a1, a2);
}

double sub_214C0BFEC@<D0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView);
  swift_beginAccess();
  sub_214C0C050(v3, a1);
  swift_endAccess();
  return result;
}

void *sub_214C0C050(const void *a1, void *a2)
{
  v6 = sub_214CCD7B4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8, &qword_214CF2D80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214C0C178(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8, &qword_214CF2D80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_214C0C050(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView);
  v7 = &v9;
  swift_beginAccess();
  sub_214C0C25C(v5, v6);
  swift_endAccess();
  return sub_214C0C484(v8);
}

void *sub_214C0C25C(const void *a1, void *a2)
{
  v7 = sub_214CCD7B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8, &qword_214CF2D80);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8, &qword_214CF2D80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214C0C484(uint64_t a1)
{
  v3 = sub_214CCD7B4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

char *sub_214C0C554()
{
  v6 = 0;
  v0 = OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI;
  *OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI = 0;
  *(v0 + 8) = 0;
  v3 = OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView;
  v1 = sub_214CCD7B4();
  (*(*(v1 - 8) + 56))(&v6[v3], 1);
  v5.receiver = v6;
  v5.super_class = type metadata accessor for MUIExternalSummarizationOnboardingViewController(0);
  v4 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0);
  MEMORY[0x277D82BE0](v4);
  v6 = v4;
  MEMORY[0x277D82BD8](v4);
  return v4;
}

id MUIExternalSummarizationOnboardingViewController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void MUIExternalSummarizationOnboardingViewController.init(coder:)()
{
  v0 = OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI;
  *OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI = 0;
  *(v0 + 8) = 0;
  v2 = OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView;
  v1 = sub_214CCD7B4();
  (*(*(v1 - 8) + 56))(v2, 1);
  sub_214CCF614("init(coder:) has not been implemented", 37, 1);
  sub_214CD0204();
  __break(1u);
}

double sub_214C0C820()
{
  v27 = "Fatal error";
  v28 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v29 = "MailUI/MUIExternalSummarizationOnboarding.swift";
  v49 = 0;
  v44 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8, &qword_214CF2D80);
  v30 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v40 = &v13 - v30;
  v49 = v0;
  MEMORY[0x277D82BE0](v0);
  v33 = 0;
  v31 = type metadata accessor for MUIExternalSummarizationOnboardingViewController(0);
  v48.receiver = v0;
  v48.super_class = v31;
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  MEMORY[0x277D82BD8](v0);
  MEMORY[0x277D82BE0](v0);
  v32 = v47;
  v47[3] = v31;
  v47[4] = sub_214C0CF70();
  v47[0] = v0;
  sub_214CCD7A4();
  v2 = sub_214CCD7B4();
  (*(*(v2 - 8) + 56))(v40, 0, 1);
  v36 = &qword_27CA36000;
  v34 = &v0[OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView];
  v35 = &v46;
  v37 = 0;
  swift_beginAccess();
  sub_214C0C25C(v40, v34);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DF8, &unk_214CF2D88);
  v38 = &v42[v36[444]];
  v39 = &v45;
  swift_beginAccess();
  sub_214C0C050(v38, v40);
  swift_endAccess();
  v41 = sub_214CCE5A4();
  v44 = v41;
  [v42 addChildViewController_];
  *&v3 = MEMORY[0x277D82BE0](v42).n128_u64[0];
  v43 = [v42 view];
  MEMORY[0x277D82BD8](v42);
  if (v43)
  {
    v26 = v43;
  }

  else
  {
    sub_214CD01F4(v27, 11, 2, v28, 68, 2, v29, 47, 2, 44, 0);
    __break(1u);
  }

  v24 = v26;
  *&v4 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  v25 = [v41 view];
  *&v5 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  if (v25)
  {
    v23 = v25;
  }

  else
  {
    sub_214CD01F4(v27, 11, 2, v28, 68, 2, v29, 47, 2, 44, 0);
    __break(1u);
  }

  v21 = v23;
  [v24 addSubview_];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v24);
  *&v6 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  v22 = [v41 view];
  *&v7 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  if (v22)
  {
    v20 = v22;
  }

  else
  {
    sub_214CD01F4(v27, 11, 2, v28, 68, 2, v29, 47, 2, 46, 0);
    __break(1u);
  }

  v18 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v18);
  *&v8 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  v19 = [v41 view];
  MEMORY[0x277D82BD8](v41);
  if (v19)
  {
    v17 = v19;
  }

  else
  {
    sub_214CD01F4(v27, 11, 2, v28, 68, 2, v29, 47, 2, 48, 0);
    __break(1u);
  }

  v15 = v17;
  *&v9 = MEMORY[0x277D82BE0](v42).n128_u64[0];
  v16 = [v42 view];
  *&v10 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v16)
  {
    v14 = v16;
  }

  else
  {
    sub_214CD01F4(v27, 11, 2, v28, 68, 2, v29, 47, 2, 48, 0);
    __break(1u);
  }

  [v15 mf:v10 pinToView:v14 usingLayoutMargins:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v15);
  *&v11 = MEMORY[0x277D82BE0](v42).n128_u64[0];
  [v41 didMoveToParentViewController_];
  MEMORY[0x277D82BD8](v42);
  *&result = MEMORY[0x277D82BD8](v41).n128_u64[0];
  return result;
}

unint64_t sub_214C0CF70()
{
  v2 = qword_27CA36DF0;
  if (!qword_27CA36DF0)
  {
    type metadata accessor for MUIExternalSummarizationOnboardingViewController(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36DF0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214C0D040(uint64_t a1, uint64_t a2)
{
  v241 = a1;
  v226 = a2;
  v255 = sub_214C0F650;
  v259 = sub_214A7E854;
  v261 = sub_214A662DC;
  v263 = sub_214A662DC;
  v266 = sub_214A7E40C;
  v187 = sub_214C0F650;
  v188 = sub_214A7E854;
  v189 = sub_214A662DC;
  v190 = sub_214A662DC;
  v191 = sub_214A7E40C;
  v192 = sub_214C0FA48;
  v193 = sub_214A7E63C;
  v194 = sub_214A7E854;
  v195 = sub_214A662DC;
  v196 = sub_214A662DC;
  v197 = sub_214A7E40C;
  v198 = sub_214BC6620;
  v199 = sub_214BC6628;
  v200 = sub_214B21624;
  v201 = sub_214A662DC;
  v202 = sub_214A662DC;
  v203 = sub_214B217B4;
  v204 = "Fatal error";
  v205 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v206 = "MailUI/MUIExternalSummarizationOnboarding.swift";
  v301 = *MEMORY[0x277D85DE8];
  v289 = 0;
  v288 = 0;
  v287 = 0;
  v286 = 0;
  v207 = 0;
  v281 = 0;
  v222 = 0;
  v208 = sub_214CCD7D4();
  v209 = *(v208 - 8);
  v210 = v208 - 8;
  v211 = (*(v209 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v212 = v83 - v211;
  v213 = sub_214CCD154();
  v215 = *(v213 - 8);
  v214 = v213 - 8;
  v216 = v215;
  v217 = *(v215 + 64);
  v218 = (v217 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v222);
  v219 = v83 - v218;
  v220 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v221 = v83 - v220;
  v289 = v83 - v220;
  v251 = sub_214CCD804();
  v247 = *(v251 - 8);
  v248 = v251 - 8;
  v244 = v247;
  v245 = *(v247 + 64);
  v223 = (v245 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v222);
  v224 = v83 - v223;
  v225 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v250 = v83 - v225;
  v238 = sub_214CCDA74();
  v236 = *(v238 - 8);
  v237 = v238 - 8;
  v232 = v236[8];
  v227 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v241);
  v228 = v83 - v227;
  v229 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v230 = v83 - v229;
  v231 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v233 = v83 - v231;
  v234 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v9 = v83 - v234;
  v235 = v83 - v234;
  v288 = v10;
  v287 = v11;
  v286 = v12;
  v13 = sub_214C0BB08();
  v239 = v236[2];
  v240 = v236 + 2;
  v239(v9, v13, v238);
  v242 = *(v247 + 16);
  v243 = v247 + 16;
  v242(v250, v241, v251);
  v246 = *(v244 + 80);
  v249 = (v246 + 16) & ~v246;
  v257 = 7;
  v258 = swift_allocObject();
  v252 = *(v247 + 32);
  v253 = v247 + 32;
  v252(v258 + v249, v250, v251);
  v270 = sub_214CCDA54();
  v271 = sub_214CCFBB4();
  v254 = 17;
  v262 = swift_allocObject();
  *(v262 + 16) = 32;
  v264 = swift_allocObject();
  *(v264 + 16) = 8;
  v256 = 32;
  v14 = swift_allocObject();
  v15 = v258;
  v260 = v14;
  *(v14 + 16) = v255;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v260;
  v267 = v16;
  *(v16 + 16) = v259;
  *(v16 + 24) = v17;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v265 = sub_214CD03C4();
  v268 = v18;

  v19 = v262;
  v20 = v268;
  *v268 = v261;
  v20[1] = v19;

  v21 = v264;
  v22 = v268;
  v268[2] = v263;
  v22[3] = v21;

  v23 = v267;
  v24 = v268;
  v268[4] = v266;
  v24[5] = v23;
  sub_214A63280();

  if (os_log_type_enabled(v270, v271))
  {
    v25 = v207;
    v180 = sub_214CCFF24();
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v181 = sub_214A632C4(0, v179, v179);
    v182 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v183 = &v274;
    v274 = v180;
    v184 = &v291;
    v291 = v181;
    v185 = &v290;
    v290 = v182;
    sub_214A6627C(2, &v274);
    sub_214A6627C(1, v183);
    v272 = v261;
    v273 = v262;
    sub_214A66290(&v272, v183, v184, v185);
    v186 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v272 = v263;
      v273 = v264;
      sub_214A66290(&v272, &v274, &v291, &v290);
      v177 = 0;
      v272 = v266;
      v273 = v267;
      sub_214A66290(&v272, &v274, &v291, &v290);
      v176 = 0;
      _os_log_impl(&dword_214A5E000, v270, v271, "Dismissed onboarding view with dismissType: %s", v180, 0xCu);
      sub_214A669DC(v181, 0, v179);
      sub_214A669DC(v182, 1, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v178 = v176;
    }
  }

  else
  {
    v26 = v207;

    v178 = v26;
  }

  v172 = v178;
  v27 = MEMORY[0x277D82BD8](v270);
  v173 = v236[1];
  v174 = v236 + 1;
  v173(v235, v238, v27);
  v242(v224, v241, v251);
  v175 = (*(v247 + 88))(v224, v251);
  if (v175 == *MEMORY[0x277D0D7F0])
  {
    (*(v209 + 104))(v212, *MEMORY[0x277D0D758], v208);
    sub_214CCD7C4();
    v28 = v233;
    (*(v209 + 8))(v212, v208);
    v29 = sub_214C0BB08();
    v239(v28, v29, v238);
    v157 = v216;
    v155 = *(v215 + 16);
    v156 = v215 + 16;
    v155(v219, v221, v213);
    v158 = (*(v157 + 80) + 16) & ~*(v157 + 80);
    v162 = 7;
    v159 = swift_allocObject();
    (*(v215 + 32))(v159 + v158, v219, v213);

    v161 = 32;
    v30 = swift_allocObject();
    v31 = v159;
    v163 = v30;
    *(v30 + 16) = v192;
    *(v30 + 24) = v31;

    v170 = sub_214CCDA54();
    v171 = sub_214CCFBB4();
    v160 = 17;
    v165 = swift_allocObject();
    *(v165 + 16) = 32;
    v166 = swift_allocObject();
    *(v166 + 16) = 8;
    v32 = swift_allocObject();
    v33 = v163;
    v164 = v32;
    *(v32 + 16) = v193;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v164;
    v168 = v34;
    *(v34 + 16) = v194;
    *(v34 + 24) = v35;
    v167 = sub_214CD03C4();
    v169 = v36;

    v37 = v165;
    v38 = v169;
    *v169 = v195;
    v38[1] = v37;

    v39 = v166;
    v40 = v169;
    v169[2] = v196;
    v40[3] = v39;

    v41 = v168;
    v42 = v169;
    v169[4] = v197;
    v42[5] = v41;
    sub_214A63280();

    if (os_log_type_enabled(v170, v171))
    {
      v43 = v172;
      v148 = sub_214CCFF24();
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v149 = sub_214A632C4(0, v147, v147);
      v150 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v151 = &v277;
      v277 = v148;
      v152 = &v293;
      v293 = v149;
      v153 = &v292;
      v292 = v150;
      sub_214A6627C(2, &v277);
      sub_214A6627C(1, v151);
      v275 = v195;
      v276 = v165;
      sub_214A66290(&v275, v151, v152, v153);
      v154 = v43;
      if (v43)
      {

        __break(1u);
      }

      else
      {
        v275 = v196;
        v276 = v166;
        sub_214A66290(&v275, &v277, &v293, &v292);
        v146 = 0;
        v275 = v197;
        v276 = v168;
        sub_214A66290(&v275, &v277, &v293, &v292);
        _os_log_impl(&dword_214A5E000, v170, v171, "Opening onboarding sign-in url: %s", v148, 0xCu);
        sub_214A669DC(v149, 0, v147);
        sub_214A669DC(v150, 1, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v44 = MEMORY[0x277D82BD8](v170);
    v173(v233, v238, v44);
    v296 = 0;
    v145 = [objc_opt_self() defaultWorkspace];
    if (v145)
    {
      v144 = v145;
    }

    else
    {
      sub_214CD01F4(v204, 11, 2, v205, 68, 2, v206, 47, 2, 84, 0);
      __break(1u);
    }

    v142 = v144;
    v155(v219, v221, v213);
    v141 = sub_214CCD104();
    v133 = *(v215 + 8);
    v134 = v215 + 8;
    v133(v219, v213);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0, &unk_214CEEDF0);
    sub_214CD03C4();
    v135 = MEMORY[0x277D837D0];
    v136 = MEMORY[0x277D84F70] + 8;
    v137 = MEMORY[0x277D837E0];
    v138 = sub_214CCF344();
    v140 = sub_214CCF304();

    v282 = v296;
    v143 = [v142 openSensitiveURL:v141 withOptions:v140 error:&v282];
    v139 = v282;
    MEMORY[0x277D82BE0](v282);
    v45 = v296;
    v296 = v139;
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v140);
    MEMORY[0x277D82BD8](v141);
    v46 = MEMORY[0x277D82BD8](v142);
    if ((v143 & 1) == 0)
    {
      v92 = v296;
      v94 = sub_214CCD084();
      MEMORY[0x277D82BD8](v92);
      swift_willThrow();
      v64 = v228;
      v93 = 0;
      v65 = v94;
      v281 = v94;
      v66 = sub_214C0BB08();
      v239(v64, v66, v238);
      v67 = v94;
      v98 = 7;
      v96 = swift_allocObject();
      *(v96 + 16) = v94;
      sub_214B1C228();

      v106 = sub_214CCDA54();
      v107 = sub_214CCFBA4();
      v95 = 17;
      v101 = swift_allocObject();
      *(v101 + 16) = 64;
      v102 = swift_allocObject();
      *(v102 + 16) = 8;
      v97 = 32;
      v68 = swift_allocObject();
      v69 = v96;
      v99 = v68;
      *(v68 + 16) = v198;
      *(v68 + 24) = v69;
      v70 = swift_allocObject();
      v71 = v99;
      v100 = v70;
      *(v70 + 16) = v199;
      *(v70 + 24) = v71;
      v72 = swift_allocObject();
      v73 = v100;
      v104 = v72;
      *(v72 + 16) = v200;
      *(v72 + 24) = v73;
      v103 = sub_214CD03C4();
      v105 = v74;

      v75 = v101;
      v76 = v105;
      *v105 = v201;
      v76[1] = v75;

      v77 = v102;
      v78 = v105;
      v105[2] = v202;
      v78[3] = v77;

      v79 = v104;
      v80 = v105;
      v105[4] = v203;
      v80[5] = v79;
      sub_214A63280();

      if (os_log_type_enabled(v106, v107))
      {
        v81 = v93;
        v85 = sub_214CCFF24();
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v86 = sub_214A632C4(1, v84, v84);
        v87 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v88 = &v280;
        v280 = v85;
        v89 = &v295;
        v295 = v86;
        v90 = &v294;
        v294 = v87;
        sub_214A6627C(2, &v280);
        sub_214A6627C(1, v88);
        v278 = v201;
        v279 = v101;
        sub_214A66290(&v278, v88, v89, v90);
        v91 = v81;
        if (v81)
        {

          __break(1u);
        }

        else
        {
          v278 = v202;
          v279 = v102;
          sub_214A66290(&v278, &v280, &v295, &v294);
          v83[1] = 0;
          v278 = v203;
          v279 = v104;
          sub_214A66290(&v278, &v280, &v295, &v294);
          _os_log_impl(&dword_214A5E000, v106, v107, "Failed to open onboarding url, error: %@", v85, 0xCu);
          sub_214A669DC(v86, 1, v84);
          sub_214A669DC(v87, 0, MEMORY[0x277D84F70] + 8);
          sub_214CCFF04();
        }
      }

      else
      {
      }

      v82 = MEMORY[0x277D82BD8](v106);
      v173(v228, v238, v82);
    }

    (v133)(v221, v213, v46);
  }

  else if (v175 == *MEMORY[0x277D0D808])
  {
    sub_214CCD7F4();
    sub_214CCD7E4();
  }

  else
  {
    v47 = v230;
    v48 = sub_214C0BB08();
    v239(v47, v48, v238);
    v242(v250, v241, v251);
    v120 = (v246 + 16) & ~v246;
    v123 = 7;
    v124 = swift_allocObject();
    v252(v124 + v120, v250, v251);
    v131 = sub_214CCDA54();
    v132 = sub_214CCFBB4();
    v121 = 17;
    v126 = swift_allocObject();
    *(v126 + 16) = 32;
    v127 = swift_allocObject();
    *(v127 + 16) = 8;
    v122 = 32;
    v49 = swift_allocObject();
    v50 = v124;
    v125 = v49;
    *(v49 + 16) = v187;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v125;
    v129 = v51;
    *(v51 + 16) = v188;
    *(v51 + 24) = v52;
    v128 = sub_214CD03C4();
    v130 = v53;

    v54 = v126;
    v55 = v130;
    *v130 = v189;
    v55[1] = v54;

    v56 = v127;
    v57 = v130;
    v130[2] = v190;
    v57[3] = v56;

    v58 = v129;
    v59 = v130;
    v130[4] = v191;
    v59[5] = v58;
    sub_214A63280();

    if (os_log_type_enabled(v131, v132))
    {
      v60 = v172;
      v113 = sub_214CCFF24();
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v114 = sub_214A632C4(0, v112, v112);
      v115 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v116 = &v285;
      v285 = v113;
      v117 = &v298;
      v298 = v114;
      v118 = &v297;
      v297 = v115;
      sub_214A6627C(2, &v285);
      sub_214A6627C(1, v116);
      v283 = v189;
      v284 = v126;
      sub_214A66290(&v283, v116, v117, v118);
      v119 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v283 = v190;
        v284 = v127;
        sub_214A66290(&v283, &v285, &v298, &v297);
        v111 = 0;
        v283 = v191;
        v284 = v129;
        sub_214A66290(&v283, &v285, &v298, &v297);
        _os_log_impl(&dword_214A5E000, v131, v132, "Unhandled dismissal with type:  %s", v113, 0xCu);
        sub_214A669DC(v114, 0, v112);
        sub_214A669DC(v115, 1, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v61 = MEMORY[0x277D82BD8](v131);
    v173(v230, v238, v61);
    (*(v247 + 8))(v224, v251);
  }

  v299 = sub_214C0BE70();
  v300 = v62;
  if (!v299)
  {
    return sub_214B86488(&v299);
  }

  v108 = &v299;
  v109 = v299;
  v110 = v300;

  sub_214B86488(v108);
  v109(v241);
}

uint64_t sub_214C0F59C(uint64_t a1)
{
  v3[1] = a1;
  v6 = sub_214CCD804();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v6);
  v7 = v3 - v4;
  (*(v5 + 16))(v1);
  return sub_214CCF5B4();
}

uint64_t sub_214C0F650()
{
  v1 = *(sub_214CCD804() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_214C0F59C(v2);
}

id MUIExternalSummarizationOnboardingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_214CCF544();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id MUIExternalSummarizationOnboardingViewController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUIExternalSummarizationOnboardingViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214C0F9F8(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_214C0FA48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_214CCD154();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_214C0F6B4(v3, a1);
}

unint64_t sub_214C0FABC()
{
  v2 = qword_27CA36E00;
  if (!qword_27CA36E00)
  {
    sub_214CCD154();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36E00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C0FB58(uint64_t a1)
{
  updated = sub_214C0FD94(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_214C0FD94(uint64_t a1)
{
  v5 = qword_27CA36E18;
  if (!qword_27CA36E18)
  {
    sub_214CCD7B4();
    v4 = sub_214CCFF34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27CA36E18);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_214C0FEBC()
{
  v2 = *(v0 + OBJC_IVAR___MUIHighlightedMessage_topLine);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214C0FF78()
{
  v2 = *(v0 + OBJC_IVAR___MUIHighlightedMessage_messageListItem);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_214C100E4()
{
  v8 = (v0 + OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  v4 = sub_214C1032C(v7);
  v5 = v1;

  v3 = &v7[OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender];
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_214C10290(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_214C1032C(void *a1)
{
  v42 = [a1 messageListItem];
  swift_getObjectType();
  v41 = [v42 senderList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0, &unk_214CF2E80);
  sub_214CCF7E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0, qword_214CEDCC0);
  sub_214B110B8();
  sub_214CCFA74();
  if (!v43)
  {

    MEMORY[0x277D82BD8](v41);
    v37 = [objc_opt_self() noSenderPlaceholder];
    v38 = sub_214CCF564();
    MEMORY[0x277D82BD8](v37);
    return v38;
  }

  MEMORY[0x277D82BD8](v41);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = [v43 emailAddressValue];
  v36 = v1;
  if (v1)
  {
    swift_unknownObjectRelease();
    v28 = MSSharedContactStore();
    MEMORY[0x277D82BE0](v36);
    v46 = 0;
    objc_storeStrong(&v46, v36);
    v29 = [v46 emailAddressValue];
    v4 = [v29 simpleAddress];
    v30 = v4;
    v44 = 0;
    if (v4)
    {
      MEMORY[0x277D82BE0](v4);
    }

    else
    {
      v45 = [v46 stringValue];
      v44 = 1;
      MEMORY[0x277D82BE0](v45);
    }

    v47 = v5;
    if (v44)
    {
      MEMORY[0x277D82BD8](v45);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v46, 0);
    v25 = v47;
    v6 = v47;
    v26 = v25;
    swift_unknownObjectRelease();
    sub_214CCF564();
    v27 = [v36 displayName];
    if (v27)
    {
      sub_214CCF564();
      v23 = v8;
      *&v7 = MEMORY[0x277D82BD8](v27).n128_u64[0];
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v21 = [a1 messageListItem];
    swift_getObjectType();
    v22 = [v21 category];
    if (v22)
    {
      swift_unknownObjectRelease();
      [v22 state];
      type metadata accessor for EMCategorizationState(0);
      sub_214C11834();
      v9 = sub_214CCF4A4();
      if ((v9 & 1) == 0)
      {
        [v22 state];
        if ((sub_214CCF4A4() & 1) == 0)
        {
          [v22 subtype];
          type metadata accessor for EMCategorySubtype(0);
          sub_214C118B4();
          if (sub_214CD03F4())
          {
            MEMORY[0x277D82BE0](v28);

            v20 = sub_214CCF544();

            if (v24)
            {
              v18 = sub_214CCF544();

              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v16 = MSPreferredAbbreviatedNameForAddressAndDisplayName();
            MEMORY[0x277D82BD8](v19);
            MEMORY[0x277D82BD8](v20);
            MEMORY[0x277D82BD8](v28);
            v17 = sub_214CCF564();
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v22);

            MEMORY[0x277D82BD8](v28);
            MEMORY[0x277D82BD8](v36);
            swift_unknownObjectRelease();
            return v17;
          }
        }
      }

      MEMORY[0x277D82BD8](v22);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    MEMORY[0x277D82BE0](v28);

    v15 = sub_214CCF544();

    if (v24)
    {
      v13 = sub_214CCF544();

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v11 = MSPreferredCompositeNameForAddressAndDisplayName();
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v28);
    v12 = sub_214CCF564();
    MEMORY[0x277D82BD8](v11);

    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v36);
    swift_unknownObjectRelease();
    return v12;
  }

  else
  {
    swift_unknownObjectRelease();
    location = 0;
    objc_storeStrong(&location, v43);
    v34 = [location emailAddressValue];
    v35 = [v34 simpleAddress];
    v48 = 0;
    if (v35)
    {
      MEMORY[0x277D82BE0](v35);
    }

    else
    {
      v49 = [location stringValue];
      v48 = 1;
      MEMORY[0x277D82BE0](v49);
    }

    v51 = v2;
    if (v48)
    {
      MEMORY[0x277D82BD8](v49);
    }

    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v34);
    objc_storeStrong(&location, 0);
    v31 = v51;
    v3 = v51;
    v32 = v31;
    v33 = sub_214CCF564();
    MEMORY[0x277D82BD8](v32);
    swift_unknownObjectRelease();
    return v33;
  }
}

id sub_214C10D00(uint64_t a1, char a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTopLine:a1 isGeneratedSummary:a2 & 1 messageListItem:a3];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v5;
}

_BYTE *sub_214C10D74(uint64_t a1, char a2, uint64_t a3)
{
  v13 = 0;
  v12 = a1;
  v11 = a2 & 1;
  v10 = a3;
  v3 = OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender;
  *OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender = 0;
  *(v3 + 8) = 0;
  MEMORY[0x277D82BE0](a1);
  *&v13[OBJC_IVAR___MUIHighlightedMessage_topLine] = a1;
  v13[OBJC_IVAR___MUIHighlightedMessage_isGeneratedSummary] = a2;
  swift_unknownObjectRetain();
  *&v13[OBJC_IVAR___MUIHighlightedMessage_messageListItem] = a3;
  v9.receiver = v13;
  v9.super_class = MUIHighlightedMessage;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x277D82BE0](v8);
  v13 = v8;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v13);
  return v8;
}

BOOL sub_214C10F1C(void *a1, void *a2)
{
  sub_214A77084();
  v6 = [a1 0x1FC7216F0];
  swift_getObjectType();
  v9 = [v6 0x1FB1036F8];
  swift_unknownObjectRelease();
  v7 = [a2 0x1FC7216F0];
  swift_getObjectType();
  v8 = [v7 0x1FB1036F8];
  swift_unknownObjectRelease();
  v12 = sub_214CCFD64();
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BE0](a1);
  *&v2 = MEMORY[0x277D82BE0](a2).n128_u64[0];
  if (v12)
  {
    v4 = [a1 0x1FCB4630ELL];
    v5 = v4 == [a2 0x1FCB4630ELL];
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](a2);
  return v5;
}

id MUIHighlightedMessage.hash.getter()
{
  v2 = [v0 messageListItem];
  swift_getObjectType();
  v3 = [v2 hash];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t MUIHighlightedMessage.description.getter()
{
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 isInternal];
  MEMORY[0x277D82BD8](v26);
  if (v27)
  {
    v18 = objc_opt_self();
    v16 = [v25 topLine];
    v17 = [v16 string];
    sub_214CCF564();
    v19 = sub_214CCF544();
    MEMORY[0x277D82BD8](v16);

    v20 = [v18 ec:v19 partiallyRedactedStringForSubjectOrSummary:MEMORY[0x277D82BD8](v17).n128_f64[0]];
    MEMORY[0x277D82BD8](v19);
    v21 = sub_214CCF564();
    v22 = v0;
    MEMORY[0x277D82BD8](v20);
    v23 = v21;
    v24 = v22;
  }

  else
  {
    v11 = objc_opt_self();
    v9 = [v25 topLine];
    v10 = [v9 string];
    sub_214CCF564();
    v12 = sub_214CCF544();
    MEMORY[0x277D82BD8](v9);

    v13 = [v11 fullyRedactedStringForString_];
    MEMORY[0x277D82BD8](v12);
    v14 = sub_214CCF564();
    v15 = v1;
    MEMORY[0x277D82BD8](v13);
    v23 = v14;
    v24 = v15;
  }

  v29 = v23;
  v30 = v24;
  v28[0] = sub_214CD03B4();
  v28[1] = v2;
  v3 = sub_214CCF614("MUIHighlightedMessage: ", 23, 1);
  MEMORY[0x21605E650](v3);

  sub_214CD0394();
  v4 = sub_214CCF614(", isGeneratedSummary: ", 22, 1);
  MEMORY[0x21605E650](v4);

  [v25 isGeneratedSummary];
  sub_214CD0384();
  v5 = sub_214CCF614(", messageListItem: ", 19, 1);
  MEMORY[0x21605E650](v5);

  [v25 messageListItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80, &qword_214CEDC90);
  sub_214CD0374();
  swift_unknownObjectRelease();
  v6 = sub_214CCF614("", 0, 1);
  MEMORY[0x21605E650](v6);

  sub_214A61B48(v28);
  v8 = sub_214CCF5F4();

  return v8;
}

uint64_t MUIHighlightedMessage.id.getter()
{
  v2 = [v0 messageListItem];
  swift_getObjectType();
  [v2 objectID];
  swift_unknownObjectRelease();
  return sub_214CCF494();
}

uint64_t sub_214C117F0@<X0>(uint64_t *a1@<X8>)
{
  result = MUIHighlightedMessage.id.getter();
  *a1 = result;
  return result;
}

unint64_t sub_214C11834()
{
  v2 = qword_27CA36E48;
  if (!qword_27CA36E48)
  {
    type metadata accessor for EMCategorizationState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36E48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C118B4()
{
  v2 = qword_27CA36E50;
  if (!qword_27CA36E50)
  {
    type metadata accessor for EMCategorySubtype(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36E50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C11AE0()
{
  v2 = qword_27CA36E60;
  if (!qword_27CA36E60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36E60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C11BC8@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68, &unk_214CF2E90);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3[1]);
  v7 = v3 - v4;
  sub_214C11C7C(v1, (v3 - v4));
  sub_214CCE124();
  return sub_214C11D50(v7);
}

void *sub_214C11C7C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214C11D50(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_214C11E0C(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68, &unk_214CF2E90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v4 = v3 - v3[0];
  sub_214C11C7C(v1, (v3 - v3[0]));
  sub_214C11EB0(v4, v3[1]);
  return sub_214C11D50(v5);
}

void *sub_214C11EB0(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_214C11D50(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_214CCE514();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_214C11F9C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37870, &qword_214CF2EA0);
  sub_214CCEFB4();

  return v2;
}

uint64_t sub_214C12020()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80, qword_214CF2EA8);
  sub_214CCEFC4();

  return v1;
}

uint64_t type metadata accessor for MUIHighlightedMessagesAvatarView(uint64_t a1)
{
  v2 = qword_27CA36F20;
  if (!qword_27CA36F20)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_214C12130(uint64_t a1)
{
  v2 = (v1 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 20));
  v4 = *v2;
  v5 = v2[1];

  v6[0] = v4;
  v6[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80, qword_214CF2EA8);
  sub_214CCEFD4();
  sub_214C12204(v6);
}

uint64_t sub_214C1223C()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80, qword_214CF2EA8);
  sub_214CCEFE4();

  return v1;
}

uint64_t sub_214C122F0()
{
  v2 = *(v0 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 20));

  return v2;
}

uint64_t sub_214C12340(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 20));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_214C123B8(uint64_t a1)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36118, &qword_214CF0B68);
  sub_214CCEFB4();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_214C12438()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90, &qword_214CF2EC0);
  sub_214CCEFC4();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_214C124D4(uint64_t a1)
{
  type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90, &qword_214CF2EC0);
  sub_214CCEFD4();
  sub_214C125A8();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_214C125E0()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90, &qword_214CF2EC0);
  sub_214CCEFE4();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_214C12694()
{
  v2 = *(v0 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 24));
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_214C126E4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  v3 = (v2 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 24));
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_214C1275C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v35 = a1;
  v29 = a2;
  v34 = a3;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v30 = 0;
  v31 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  v26 = (*(*(v31 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v36 = (&v25 - v26);
  v40 = &v25 - v26;
  v39 = v4;
  v28 = 1;
  v38 = v5 & 1;
  v37 = v6;
  swift_getKeyPath();
  sub_214CCE144();
  v27 = v31[6];
  v7 = sub_214C123B8(v30);
  v8 = v30;
  v9 = v31;
  v10 = v36;
  v11 = v7;
  v12 = v35;
  v13 = (v36 + v27);
  *v13 = v11;
  v13[1] = v14;
  *(v10 + v9[7]) = v8;
  *(v10 + v9[8]) = 0;
  MEMORY[0x277D82BE0](v12);
  v15 = (v36 + v31[7]);
  v16 = *v15;
  *v15 = v35;
  MEMORY[0x277D82BD8](v16);
  *(v36 + v31[8]) = v29 & v28;

  *(v36 + v31[9]) = v34;
  sub_214BE4D58();
  v17 = sub_214CD03C4();
  v32 = v31[5];
  v18 = sub_214C11F9C(v17);
  v19 = v36;
  v21 = v20;
  v22 = v33;
  v23 = (v36 + v32);
  *v23 = v18;
  v23[1] = v21;
  sub_214C14BB4(v19, v22);

  MEMORY[0x277D82BD8](v35);
  return sub_214C14DC0(v36);
}

uint64_t sub_214C12964()
{
  v2 = *(v0 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 28));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double sub_214C129A4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 28));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C12A34(unsigned int a1)
{
  v2 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  result = a1;
  *(v1 + *(v2 + 32)) = a1 & 1;
  return result;
}

uint64_t sub_214C12A70()
{
  v2 = *(v0 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 36));

  return v2;
}

uint64_t sub_214C12AA8(uint64_t a1)
{

  *(v1 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 36)) = a1;
}

double sub_214C12AF4()
{
  v11 = v0;
  if (sub_214C12C80())
  {
    return 0.0;
  }

  v6 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  if (sub_214C11958(*(v8 + *(v6 + 32)) & 1, 1))
  {

    sub_214C3518C(v12);

    memcpy(__dst, v13, sizeof(__dst));
    sub_214C14EE4(__dst, v9);
    sub_214C14F3C(v12);
    sub_214C32E2C();
    v4 = v1;
    sub_214A671E8(__dst);
    return v4;
  }

  else
  {

    sub_214C3518C(v14);

    memcpy(v17, v15, sizeof(v17));
    sub_214C14EE4(v17, v10);
    sub_214C14F3C(v14);
    v3 = sub_214C33170();
    sub_214A671E8(v17);
    return v3;
  }
}

BOOL sub_214C12C80()
{
  v18 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68, &unk_214CF2E90);
  v6 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v0 = (&v5 - v6);
  v11 = &v5 - v6;
  v7 = 0;
  v14 = sub_214CCE514();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v15 = &v5 - v8;
  v18 = v1;
  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView(v2);
  v16 = *(v9 + *(v3 + 36));

  sub_214C11C7C(v9, v0);
  sub_214CCE124();
  sub_214C11D50(v11);
  v17 = sub_214C411C0(v15);
  (*(v12 + 8))(v15, v14);

  return v17;
}

double sub_214C12E10()
{
  v5 = v0;
  if (sub_214C12C80())
  {
    return 0.0;
  }

  type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  sub_214C3518C(v6);

  memcpy(__dst, v7, sizeof(__dst));
  sub_214C14EE4(__dst, v4);
  sub_214C14F3C(v6);
  v2 = sub_214C33170();
  sub_214A671E8(__dst);
  return v2;
}

uint64_t sub_214C12EE4@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v81 = sub_214C14FA4;
  v58 = MEMORY[0x277D85700];
  v59 = &unk_214CF2F28;
  v60 = &unk_214D091BC;
  v120 = 0;
  v119 = 0;
  v89 = 0;
  v61 = sub_214CCF994();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v65 = v18 - v64;
  v66 = type metadata accessor for MUIHighlightedMessagesAvatarView(v3);
  v67 = *(v66 - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v71 = v18 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EA0, &qword_214CF2EF8);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v76 = v18 - v75;
  v77 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18 - v75);
  v78 = v18 - v77;
  v79 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18 - v77);
  v80 = v18 - v79;
  v120 = v18 - v79;
  v119 = v2;
  v82 = &v104;
  v105 = v2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EA8, &qword_214CF2F00);
  v84 = sub_214C14FAC();
  sub_214C11934();
  v85 = &v115;
  v90 = 1;
  sub_214CCF024();
  v86 = v127;
  v87 = 104;
  memcpy(v127, v85, sizeof(v127));
  v94 = v114;
  memcpy(v114, v127, sizeof(v114));
  v88 = sub_214C12E10();
  v91 = sub_214CCF194();
  v92 = v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EC0, &qword_214CF2F08);
  sub_214C150CC();
  v95 = &v116;
  sub_214CCED04();
  sub_214C15154(v94);
  v96 = __dst;
  v97 = 152;
  memcpy(__dst, v95, sizeof(__dst));
  memcpy(v113, __dst, sizeof(v113));
  v99 = sub_214CD03C4();
  v98 = v7;
  *v7 = sub_214CCE8D4();
  sub_214A63280();
  v100 = v8;
  v101 = sub_214C151AC();
  sub_214CD0084();
  v103 = v112[47];
  if (sub_214C12C80())
  {
    v52 = *(v102 + *(v66 + 36));

    v53 = v121;
    sub_214C3518C(v121);

    v54 = v125;
    memcpy(v125, v53 + 15, sizeof(v125));
    sub_214C14EE4(v125, v106);
    v9 = sub_214C14F3C(v53);
    v55 = sub_214C33190(v9);
    sub_214A671E8(v54);
    v56 = v55;
  }

  else
  {
    v48 = *(v102 + *(v66 + 36));

    v49 = v122;
    sub_214C3518C(v122);

    v50 = v126;
    memcpy(v126, v49 + 15, sizeof(v126));
    sub_214C14EE4(v126, v112);
    sub_214C14F3C(v49);
    v51 = sub_214C331BC();
    sub_214A671E8(v50);
    v56 = v51;
  }

  *&v18[1] = v56;
  v18[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36ED8, &qword_214CF2F10);
  sub_214C15224();
  v20 = &v117;
  v29 = 0;
  v19 = v113;
  sub_214CCED64();
  sub_214C15154(v19);
  v21 = v110;
  v22 = 193;
  memcpy(v110, v20, 0xC1uLL);
  v32 = v109;
  memcpy(v109, v110, 0xC1uLL);
  v24 = sub_214CD03C4();
  v23 = v10;
  *v10 = sub_214CCE8B4();
  v23[1] = sub_214CCE8C4();
  sub_214A63280();
  sub_214CD0084();
  v31 = v108[47];
  v25 = *(v102 + *(v66 + 36));

  v26 = v123;
  sub_214C3518C(v123);

  v27 = v124;
  memcpy(v124, v26 + 15, sizeof(v124));
  sub_214C14EE4(v124, v108);
  sub_214C14F3C(v26);
  v28 = sub_214C331D4();
  sub_214A671E8(v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EE8, &qword_214CF2F18);
  sub_214C152C8();
  v33 = &v118;
  sub_214CCED64();
  sub_214C15154(v32);
  v34 = v111;
  v35 = 241;
  memcpy(v111, v33, 0xF1uLL);
  v42 = v107;
  memcpy(v107, v111, 0xF1uLL);
  v39 = sub_214CCF614("MailUI/MUIHighlightedMessagesAvatarView.swift", 45, 1);
  v41 = v11;
  sub_214C14BB4(v102, v71);
  v38 = 0;
  sub_214CCF964();
  v36 = sub_214CCF954();
  v37 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v12 = swift_allocObject();
  v13 = v58;
  v14 = v37;
  v15 = v12;
  v16 = v71;
  v40 = v15;
  *(v15 + 16) = v36;
  *(v15 + 24) = v13;
  sub_214C1536C(v16, (v15 + v14));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EF8, &qword_214CF2F30);
  v44 = sub_214C155BC();
  sub_214AF8F7C();
  sub_214AF8FA0(v38, v38, v65, v39, v41, 60, v59, v40, v78, v43, v44);
  (*(v62 + 8))(v65, v61);

  sub_214C15154(v42);
  v106[5] = v43;
  v106[6] = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v78, v72, v80);
  v47 = *(v73 + 8);
  v46 = v73 + 8;
  v47(v78, v72);
  (*(v73 + 16))(v76, v80, v72);
  sub_214B061F0(v76, v72, v57);
  v47(v76, v72);
  return (v47)(v80, v72);
}

uint64_t sub_214C1381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v2 = (a1 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 20));
  v8 = *v2;
  v9 = v2[1];

  v15[7] = v8;
  v15[8] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80, qword_214CF2EA8);
  sub_214CCEFE4();

  sub_214C13A44();
  v15[0] = v3;
  v15[1] = v4;
  v15[2] = v5;
  v15[3] = v6;
  sub_214C12AF4();
  sub_214C12AF4();
  sub_214C15050();
  sub_214B68808();
  sub_214CCED04();
  sub_214C1600C(v15);
  memcpy(__dst, v16, sizeof(__dst));
  memcpy(v14, __dst, sizeof(v14));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EA8, &qword_214CF2F00);
  sub_214C14FAC();
  sub_214B061F0(v14, v11, v17);
  sub_214C1600C(v14);
  memcpy(v20, v17, sizeof(v20));
  sub_214C16064(v20, v13);
  memcpy(v12, v20, sizeof(v12));
  sub_214B061F0(v12, v11, a2);
  sub_214C1600C(v12);
  return sub_214C1600C(v17);
}

void sub_214C13A44()
{
  sub_214BE4CF4();
  sub_214BE4D58();
  v0 = sub_214CD03C4();
  sub_214BE26C4(v0);
}

uint64_t sub_214C13AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a3;
  v3[6] = v3;
  v3[7] = 0;
  v3[8] = 0;
  v4 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  v3[12] = v4;
  v7 = *(v4 - 8);
  v3[13] = v7;
  v3[14] = *(v7 + 64);
  v3[15] = swift_task_alloc();
  v3[7] = a3;
  sub_214CCF964();
  v3[16] = sub_214CCF954();
  v5 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C13BE4, v5);
}

uint64_t sub_214C13BE4()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[6] = v0;
  if (sub_214C11958(*(v2 + *(v1 + 32)) & 1, 1))
  {
    v20 = v27[15];
    v22 = v27[12];
    v23 = v27[11];
    v18 = v27[13];

    sub_214C14BB4(v23, v20);
    v19 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v21 = swift_allocObject();
    sub_214C1536C(v20, (v21 + v19));
    v26 = sub_214C3ED40(sub_214C15F94, v21, v3);

    v4 = (v23 + *(v22 + 24));
    v24 = *v4;
    v25 = v4[1];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v27[4] = v24;
    v27[5] = v25;
    swift_unknownObjectRetain();
    v27[10] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90, &qword_214CF2EC0);
    sub_214CCEFD4();
    sub_214C125A8();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = *(v27[11] + *(v27[12] + 28));
    MEMORY[0x277D82BE0](v17);
    if (v17)
    {
      v10 = v27[15];
      v12 = v27[12];
      v13 = v27[11];
      v8 = v27[13];
      v27[8] = v17;

      sub_214C14BB4(v13, v10);
      v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v11 = swift_allocObject();
      sub_214C1536C(v10, (v11 + v9));
      v16 = sub_214C3EA58(v17, sub_214C15F94, v11);

      v5 = *(v12 + 24);
      v14 = *(v13 + v5);
      v15 = *(v13 + v5 + 8);
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      v27[2] = v14;
      v27[3] = v15;
      swift_unknownObjectRetain();
      v27[9] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90, &qword_214CF2EC0);
      sub_214CCEFD4();
      sub_214C125A8();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v17);
    }
  }

  v6 = *(v27[6] + 8);

  return v6();
}

uint64_t sub_214C14064(uint64_t a1, uint64_t a2)
{
  v7[3] = a1;
  v7[2] = a2;

  v2 = (a2 + *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) + 20));
  v5 = *v2;
  v6 = v2[1];

  v7[0] = v5;
  v7[1] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80, qword_214CF2EA8);
  sub_214CCEFD4();
  sub_214C12204(v7);
}

uint64_t sub_214C14170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;

  v10[1] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36F08, &qword_214CF2F38);
  MEMORY[0x21605D330](v10, v4);
  v9 = v10[0];

  return v9;
}

uint64_t sub_214C1422C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[8] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;

  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36F08, &qword_214CF2F38);
  sub_214CCF094();
  sub_214C15660(v9);
}

uint64_t sub_214C14338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36F08, &qword_214CF2F38);
  sub_214CCF0A4();

  return v5;
}

double sub_214C1440C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return result;
}

uint64_t sub_214C14454(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

id sub_214C1451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x277D82BE0](a5);
  sub_214C14170(a2, a3, a4, a5);
  sub_214BE4D58();
  v9 = sub_214CCF7D4();

  [a5 updateContacts_];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](a5);
  v11 = [a5 view];
  MEMORY[0x277D82BD8](a5);
  return v11;
}

id sub_214C14638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  MEMORY[0x277D82BE0](a6);
  sub_214C14170(a3, a4, a5, a6);
  sub_214BE4D58();
  v10 = sub_214CCF7D4();

  [a6 updateContacts_];
  MEMORY[0x277D82BD8](v10);
  return [a1 sizeToFit];
}

void sub_214C14944(uint64_t a1)
{
  sub_214C156A4();
  sub_214CCE664();
  __break(1u);
}

uint64_t sub_214C1496C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_214CCE514();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_214CCE434();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_214CCE3F4();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_214C14AFC(uint64_t a1)
{
  v4 = a1;
  v1 = sub_214CCE514();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_214CCE404();
}

void *sub_214C14BB4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v17 = *a1;

    *a2 = v17;
  }

  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  v6 = (a2 + v14[5]);
  v5 = (a1 + v14[5]);
  v4 = *v5;

  *v6 = v4;
  v7 = v5[1];

  v6[1] = v7;
  v10 = (a2 + v14[6]);
  v9 = (a1 + v14[6]);
  v8 = *v9;
  swift_unknownObjectRetain();
  *v10 = v8;
  v11 = v9[1];

  v10[1] = v11;
  v12 = v14[7];
  v13 = *(a1 + v12);
  MEMORY[0x277D82BE0](v13);
  *(a2 + v12) = v13;
  *(a2 + v14[8]) = *(a1 + v14[8]);
  v15 = v14[9];
  v16 = *(a1 + v15);

  result = a2;
  *(a2 + v15) = v16;
  return result;
}

uint64_t sub_214C14DC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + *(v3 + 28)));

  return a1;
}

__n128 sub_214C14EE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  *(a2 + 8) = *(a1 + 1);
  result = *(a1 + 3);
  *(a2 + 24) = result;
  return result;
}

void *sub_214C14F3C(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[5]);

  MEMORY[0x277D82BD8](a1[15]);
  return a1;
}

unint64_t sub_214C14FAC()
{
  v2 = qword_27CA36EB0;
  if (!qword_27CA36EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EA8, &qword_214CF2F00);
    sub_214C15050();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C15050()
{
  v2 = qword_27CA36EB8;
  if (!qword_27CA36EB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C150CC()
{
  v2 = qword_27CA36EC8;
  if (!qword_27CA36EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EC0, &qword_214CF2F08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C15154(uint64_t a1)
{

  MEMORY[0x277D82BD8](*(a1 + 48));
  return a1;
}

unint64_t sub_214C151AC()
{
  v2 = qword_27CA36ED0;
  if (!qword_27CA36ED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36ED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C15224()
{
  v2 = qword_27CA36EE0;
  if (!qword_27CA36EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36ED8, &qword_214CF2F10);
    sub_214C150CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C152C8()
{
  v2 = qword_27CA36EF0;
  if (!qword_27CA36EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EE8, &qword_214CF2F18);
    sub_214C15224();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EF0);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_214C1536C(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  *&a2[v3[5]] = *&a1[v3[5]];
  result = *&a1[v3[6]];
  *&a2[v3[6]] = result;
  *&a2[v3[7]] = *&a1[v3[7]];
  a2[v3[8]] = a1[v3[8]] & 1;
  *&a2[v3[9]] = *&a1[v3[9]];
  return result;
}

uint64_t sub_214C154B0()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *(type metadata accessor for MUIHighlightedMessagesAvatarView(0) - 8);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = *(v0 + 16);
  v6 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C13AAC(v8, v6, v0 + v7);
}

unint64_t sub_214C155BC()
{
  v2 = qword_27CA36F00;
  if (!qword_27CA36F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EF8, &qword_214CF2F30);
    sub_214C152C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F00);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214C15660(uint64_t a1)
{
}

unint64_t sub_214C156A4()
{
  v2 = qword_27CA36F10;
  if (!qword_27CA36F10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C15770(uint64_t a1)
{
  v7 = sub_214C158F0(319);
  if (v1 <= 0x3F)
  {
    v7 = sub_214C1598C(319);
    if (v2 <= 0x3F)
    {
      v7 = sub_214C15A30(319);
      if (v3 <= 0x3F)
      {
        v7 = sub_214C15AD4(319);
        if (v4 <= 0x3F)
        {
          v7 = type metadata accessor for MUIHighlightedMessagesViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v7;
}

unint64_t sub_214C158F0(uint64_t a1)
{
  v5 = qword_27CA36F30;
  if (!qword_27CA36F30)
  {
    sub_214CCE514();
    v4 = sub_214CCE134();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27CA36F30);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214C1598C(uint64_t a1)
{
  v5 = qword_27CA36F38;
  if (!qword_27CA36F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37870, &qword_214CF2EA0);
    v4 = sub_214CCEFF4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27CA36F38);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214C15A30(uint64_t a1)
{
  v5 = qword_27CA36F40;
  if (!qword_27CA36F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36118, &qword_214CF0B68);
    v4 = sub_214CCEFF4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27CA36F40);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214C15AD4(uint64_t a1)
{
  v5 = qword_27CA36F48;
  if (!qword_27CA36F48)
  {
    type metadata accessor for MUIHighlightedMessage();
    v4 = sub_214CCFF34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27CA36F48);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_214C15B84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214C15CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_214C15F18()
{
  v2 = qword_27CA36F58;
  if (!qword_27CA36F58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C15F94(uint64_t a1)
{
  v2 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_214C14064(a1, v3);
}

uint64_t sub_214C1600C(uint64_t a1)
{

  MEMORY[0x277D82BD8](*(a1 + 24));
  return a1;
}

void *sub_214C16064(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];
  MEMORY[0x277D82BE0](v6);
  a2[3] = v6;
  memcpy(a2 + 4, a1 + 4, 0x30uLL);
  return a2;
}

void *sub_214C16118(uint64_t a1, void *a2)
{
  MEMORY[0x277D82BE0](a2);
  v3 = [objc_opt_self() clearColor];
  [a2 setMui_backgroundColor_];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BE0](a2);
  return a2;
}

id sub_214C161F0()
{
  v2 = 0;
  sub_214A7802C();
  v1 = sub_214A61730();
  MEMORY[0x277D82BE0](v1);
  v2 = v1;
  sub_214A671E8(&v2);
  return v1;
}

unint64_t sub_214C162D4()
{
  v2 = qword_27CA36F70;
  if (!qword_27CA36F70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F70);
    return WitnessTable;
  }

  return v2;
}

void sub_214C16398(uint64_t a1)
{
  sub_214C162D4();
  sub_214CCE664();
  __break(1u);
}

unint64_t sub_214C163EC()
{
  v2 = qword_27CA36F78;
  if (!qword_27CA36F78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C16468@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A660E0();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214C1653C(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

double sub_214C1662C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadDebouncer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214C16734(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadWithEmptyUpdateDebouncer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C167CC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRepository:a1 delegate:a2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_214C16834()
{
  v6 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v7 = (v0 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v7)
  {
    v2 = *(v5 + v6);

    swift_endAccess();
    v3 = *(v2 + 112);
    MEMORY[0x277D82BE0](v3);

    return v3;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_214C1696C(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  v5[4] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[3] = a5;
  sub_214CCF964();
  v5[6] = sub_214CCF954();
  v6 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C16A24, v6);
}

uint64_t sub_214C16A24()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = v0;
  v8 = [v1 delegate];
  if (v8)
  {
    v4 = v7[5];
    v6 = v7[4];
    swift_getObjectType();
    type metadata accessor for MUIHighlightedMessage();
    sub_214CD03C4();
    v5 = sub_214CCF7D4();

    [v8 highlightedMessagesController:v4 didFindMessages:v5];
    MEMORY[0x277D82BD8](v5);
    *v6 = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    *v7[4] = 1;
  }

  v2 = *(v7[2] + 8);

  return v2();
}

double sub_214C16BAC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v19 = a2;
  v17 = MEMORY[0x277D85700];
  v20 = 0;
  v18 = &unk_214CF34C8;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v23 = &v11 - v22;
  v30 = v2;
  v24 = v3 + 16;
  v29 = v3 + 16;
  v25 = &v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v16 = Strong;
    v15 = Strong;
    v27 = Strong;
    v13 = 0;
    v5 = sub_214CCF994();
    (*(*(v5 - 8) + 56))(v23, 1);
    MEMORY[0x277D82BE0](v15);

    sub_214CCF964();
    v12 = sub_214CCF954();
    v6 = swift_allocObject();
    v7 = v17;
    v8 = v21;
    v9 = v15;
    v14 = v6;
    v6[2] = v12;
    v6[3] = v7;
    v6[4] = v9;
    v6[5] = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0, &qword_214CF32E8);
    sub_214B88C30(v13, v13, v23, v18, v14, v10);

    *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  }

  return result;
}

uint64_t sub_214C16DE0(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a1;
  v6[2] = v6;
  v6[3] = 0;
  v6[4] = 0;
  v6[3] = a5;
  v6[4] = a6;
  sub_214CCF964();
  v6[8] = sub_214CCF954();
  v7 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C16EAC, v7);
}

uint64_t sub_214C16EAC()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  v8 = [v1 delegate];
  if (v8)
  {
    v4 = v7[6];
    v6 = v7[5];
    swift_getObjectType();

    type metadata accessor for MUIHighlightedMessage();
    v5 = sub_214CCF7D4();

    [v8 highlightedMessagesController:v4 didFindMessages:v5];
    MEMORY[0x277D82BD8](v5);
    *v6 = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    *v7[5] = 1;
  }

  v2 = *(v7[2] + 8);

  return v2();
}

uint64_t sub_214C17040()
{
  v2 = (v0 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C170A8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C171E8()
{
  v2 = *(v0 + 112);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214C1721C()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_214C17254(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v6[5] = a5;
  v6[2] = v6;
  v6[3] = 0;
  v6[4] = 0;
  v6[3] = a5;
  v6[4] = a6;
  sub_214CCF964();
  v6[7] = sub_214CCF954();
  v7 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C1731C, v7);
}

uint64_t sub_214C1731C()
{
  v4 = v0[6];
  v1 = v0[5];
  v0[2] = v0;
  v5 = *(v1 + 120);

  v5(v4);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_214C173F0()
{
  swift_beginAccess();
  v2 = *(v0 + 136);

  swift_endAccess();
  return v2;
}

double (*sub_214C1744C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C174B4;
}

double sub_214C174B4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214A81AFC();
  }

  return result;
}

void sub_214C17504(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  CollectionItemID.init(itemID:)(v2, a2);
}

uint64_t sub_214C1754C(uint64_t a1, uint64_t a2)
{
  v16[3] = 0;
  v13 = 0;
  v16[5] = a1;
  v16[4] = a2;
  v16[2] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0, &qword_214CEDD98);
  v2 = sub_214A80F28();
  v6 = sub_214A6E4F4(sub_214C17504, 0, v9, &type metadata for CollectionItemID, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v10);
  v16[1] = v6;
  swift_unknownObjectRetain();
  CollectionItemID.init(itemID:)(a2, v16);
  if (!v16[0])
  {
    goto LABEL_7;
  }

  v13 = v16[0];
  swift_beginAccess();
  v5 = *(v8 + 144);

  swift_endAccess();
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000, &qword_214CF3310);
  sub_214A817A8();
  sub_214B5B214();
  sub_214CCFAB4();
  sub_214A62278(&v11);
  if (v12)
  {
    swift_unknownObjectRelease();
LABEL_7:

    v15 = v6;
    swift_beginAccess();

    swift_endAccess();
    v4 = sub_214CCF7F4();

    v14 = v4;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000, &qword_214CF3310);
    sub_214C1DAD8();
    sub_214A817A8();
    sub_214CCFAF4();
    swift_endAccess();
    goto LABEL_8;
  }

  swift_beginAccess();

  swift_endAccess();
  sub_214CCF864();

  swift_beginAccess();
  sub_214C1DAD8();
  sub_214CCFAF4();
  swift_endAccess();
  swift_unknownObjectRelease();
LABEL_8:
  sub_214A8121C();
}

uint64_t sub_214C17A04(uint64_t a1, int a2)
{
  v11 = a2;
  v12 = 0;
  v18 = 0;
  v20 = a1;
  v19 = a2;
  v17 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0, &qword_214CEDD98);
  v2 = sub_214A80F28();
  v14 = 0;
  v15 = sub_214A6E4F4(sub_214C17504, 0, v13, &type metadata for CollectionItemID, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v3);
  v7 = v15;
  v16 = v15;

  v6 = &v6;
  MEMORY[0x28223BE20](&v6);
  v8 = v5;
  v5[2] = v7;
  swift_beginAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000, &qword_214CF3310);
  v10 = sub_214C1DB8C();
  sub_214C1DAD8();
  sub_214CCFB24();
  swift_endAccess();

  if (v11)
  {
    sub_214A8121C();
  }
}

uint64_t sub_214C17BF0(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000, &qword_214CF3310);
  sub_214A8118C();
  sub_214B5B214();
  return sub_214CCF784() & 1;
}

uint64_t sub_214C17C84(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v15 = v2;
  swift_unknownObjectRetain();
  CollectionItemID.init(itemID:)(a1, &v14);
  v13[1] = v14;
  swift_unknownObjectRetain();
  CollectionItemID.init(itemID:)(a2, v13);
  v8 = v13[0];
  v12 = v13[0];
  swift_beginAccess();
  v9 = *(v2 + 144);

  swift_endAccess();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000, &qword_214CF3310);
  sub_214A817A8();
  sub_214B5B214();
  sub_214CCFAB4();
  sub_214A62278(&v10);
  if ((v11 & 1) == 0)
  {
    swift_unknownObjectRetain();
    swift_beginAccess();
    v5 = sub_214CCF904();
    *v3 = v8;
    swift_unknownObjectRelease();
    v5();
    swift_endAccess();
  }

  sub_214A8121C();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_214C17E78()
{
  swift_beginAccess();
  v2 = *(v0 + 144);

  swift_endAccess();
  return v2;
}

uint64_t sub_214C17EC8(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 144) = a1;

  swift_endAccess();
}

uint64_t sub_214C17F90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = swift_unknownObjectRetain();
  *a2 = v4;
  return result;
}

uint64_t sub_214C17FD4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v18 = a2;
  v19 = 0;
  v17 = &unk_214CF34B8;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v22 = &v13 - v21;
  v30 = v2;
  v23 = v3 + 16;
  v29 = v3 + 16;
  v24 = &v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v16 = Strong;
    v15 = Strong;
    v27 = Strong;
    MEMORY[0x277D82BE0](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80, &qword_214CEDC90);
    v14 = sub_214CCF814();
    v26 = v14;
    v13 = 0;
    v5 = sub_214CCF994();
    (*(*(v5 - 8) + 56))(v22, 1);

    v6 = swift_allocObject();
    v7 = v13;
    v8 = v22;
    v9 = v17;
    v10 = v15;
    v11 = v6;
    v12 = v14;
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v11[5] = v12;
    sub_214B88C30(v7, v7, v8, v9, v11, MEMORY[0x277D84F78] + 8);
  }

  return result;
}

uint64_t sub_214C181FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x2822009F8](sub_214C18248, a4);
}

uint64_t sub_214C18248()
{
  *(v0 + 16) = v0;
  sub_214A819AC();
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_214C182DC(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v15 = a2;
  v16 = 0;
  v14 = &unk_214CF34A8;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v19 = &v11 - v18;
  v26 = v2;
  v20 = v3 + 16;
  v25 = v3 + 16;
  v21 = &v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v13 = Strong;
    v12 = Strong;
    v23 = Strong;
    v11 = 0;
    v5 = sub_214CCF994();
    (*(*(v5 - 8) + 56))(v19, 1);

    v6 = swift_allocObject();
    v7 = v11;
    v8 = v19;
    v9 = v14;
    v10 = v12;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v10;
    sub_214B88C30(v7, v7, v8, v9, v6, MEMORY[0x277D84F78] + 8);
  }

  return result;
}

uint64_t sub_214C184B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  return MEMORY[0x2822009F8](sub_214C184EC, 0);
}

uint64_t sub_214C184EC()
{
  v2 = v0[4];
  v0[2] = v0;
  v0[5] = sub_214A818B8();

  return MEMORY[0x2822009F8](sub_214C18568, v2);
}

uint64_t sub_214C18568()
{
  *(v0 + 16) = v0;
  sub_214A819AC();

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_214C18604(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);

  v2 = MEMORY[0x277D82BE0](a2);
  v4(a2, v2);
}

void sub_214C18674(void **a1@<X0>, id *a2@<X8>)
{
  v12 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = [v12 generatedSummary];
  swift_unknownObjectRelease();
  if (v13)
  {
    v9 = [v13 topLine];
    MEMORY[0x277D82BD8](v13);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    type metadata accessor for MUIHighlightedMessage();
    MEMORY[0x277D82BE0](v10);
    swift_unknownObjectRetain();
    *a2 = sub_214C18984(v10, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = [v12 subject];
    swift_unknownObjectRelease();
    if (v8)
    {
      v3 = [v8 subjectString];
      v4 = sub_214CCF564();
      v5 = v2;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v3);
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (v7)
    {
      sub_214AF7FCC();

      v14 = sub_214BC9508(v6, v7);
      type metadata accessor for MUIHighlightedMessage();
      MEMORY[0x277D82BE0](v14);
      swift_unknownObjectRetain();
      *a2 = sub_214C18984(v14, 0, v12);
      MEMORY[0x277D82BD8](v14);
    }

    else
    {
      *a2 = 0;
    }
  }
}

uint64_t MUIHighlightedMessagesController.collection(_:addedItemIDs:after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v69 = a2;
  v73 = a3;
  v70 = sub_214A7E9D4;
  v74 = sub_214A7E698;
  v76 = sub_214A7E854;
  v81 = sub_214A800FC;
  v85 = sub_214A7E854;
  v87 = sub_214A662DC;
  v89 = sub_214A662DC;
  v91 = sub_214A7E40C;
  v93 = sub_214A662DC;
  v95 = sub_214A662DC;
  v98 = sub_214A7E40C;
  v58 = &unk_214CF3358;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v59 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0);
  v60 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v42 - v60;
  v68 = sub_214CCDA74();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v64 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v4 = &v42 - v64;
  v65 = &v42 - v64;
  v112 = v5;
  v111 = v6;
  v110 = v7;
  v109 = v8;
  v9 = sub_214A660E0();
  (*(v66 + 16))(v4, v9, v68);

  v72 = 24;
  v83 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v69;

  v82 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v75 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;

  swift_unknownObjectRetain();
  v84 = swift_allocObject();
  *(v84 + 16) = v73;
  v102 = sub_214CCDA54();
  v103 = sub_214CCFBB4();
  v79 = 17;
  v88 = swift_allocObject();
  v78 = 32;
  *(v88 + 16) = 32;
  v90 = swift_allocObject();
  v80 = 8;
  *(v90 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v75;
  v77 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v77;
  v92 = v14;
  *(v14 + 16) = v76;
  *(v14 + 24) = v15;
  v94 = swift_allocObject();
  *(v94 + 16) = v78;
  v96 = swift_allocObject();
  *(v96 + 16) = v80;
  v16 = swift_allocObject();
  v17 = v84;
  v86 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v86;
  v99 = v18;
  *(v18 + 16) = v85;
  *(v18 + 24) = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v97 = sub_214CD03C4();
  v100 = v20;

  v21 = v88;
  v22 = v100;
  *v100 = v87;
  v22[1] = v21;

  v23 = v90;
  v24 = v100;
  v100[2] = v89;
  v24[3] = v23;

  v25 = v92;
  v26 = v100;
  v100[4] = v91;
  v26[5] = v25;

  v27 = v94;
  v28 = v100;
  v100[6] = v93;
  v28[7] = v27;

  v29 = v96;
  v30 = v100;
  v100[8] = v95;
  v30[9] = v29;

  v31 = v99;
  v32 = v100;
  v100[10] = v98;
  v32[11] = v31;
  sub_214A63280();

  if (os_log_type_enabled(v102, v103))
  {
    v33 = v59;
    v50 = sub_214CCFF24();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v51 = sub_214A632C4(0, v49, v49);
    v52 = sub_214A632C4(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v54 = &v108;
    v108 = v50;
    v55 = &v107;
    v107 = v51;
    v56 = &v106;
    v106 = v52;
    v53 = 2;
    sub_214A6627C(2, &v108);
    sub_214A6627C(v53, v54);
    v104 = v87;
    v105 = v88;
    sub_214A66290(&v104, v54, v55, v56);
    v57 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v104 = v89;
      v105 = v90;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v48 = 0;
      v104 = v91;
      v105 = v92;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v47 = 0;
      v104 = v93;
      v105 = v94;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v46 = 0;
      v104 = v95;
      v105 = v96;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v45 = 0;
      v104 = v98;
      v105 = v99;
      sub_214A66290(&v104, &v108, &v107, &v106);
      _os_log_impl(&dword_214A5E000, v102, v103, "addedItemIDs %s after %s", v50, 0x16u);
      sub_214A669DC(v51, 0, v49);
      sub_214A669DC(v52, 2, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D82BD8](v102);
  (*(v66 + 8))(v65, v68, v34);
  v43 = 0;
  v35 = sub_214CCF994();
  (*(*(v35 - 8) + 56))(v61, 1);
  MEMORY[0x277D82BE0](v62);

  swift_unknownObjectRetain();
  v36 = swift_allocObject();
  v37 = v62;
  v38 = v69;
  v39 = v73;
  v44 = v36;
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v37;
  v36[5] = v38;
  v36[6] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0, &qword_214CF32E8);
  sub_214B88C30(v43, v43, v61, v58, v44, v40);
}

uint64_t sub_214C195B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214C19614, 0);
}

uint64_t sub_214C19614()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214C19790, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214C19790()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214C1754C(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

uint64_t MUIHighlightedMessagesController.collection(_:movedItemIDs:before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v69 = a2;
  v73 = a3;
  v70 = sub_214A7E9D4;
  v74 = sub_214A7E698;
  v76 = sub_214A7E854;
  v81 = sub_214A800FC;
  v85 = sub_214A7E854;
  v87 = sub_214A662DC;
  v89 = sub_214A662DC;
  v91 = sub_214A7E40C;
  v93 = sub_214A662DC;
  v95 = sub_214A662DC;
  v98 = sub_214A7E40C;
  v58 = &unk_214CF3368;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v59 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0);
  v60 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v42 - v60;
  v68 = sub_214CCDA74();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v64 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v4 = &v42 - v64;
  v65 = &v42 - v64;
  v112 = v5;
  v111 = v6;
  v110 = v7;
  v109 = v8;
  v9 = sub_214A660E0();
  (*(v66 + 16))(v4, v9, v68);

  v72 = 24;
  v83 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v69;

  v82 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v75 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;

  swift_unknownObjectRetain();
  v84 = swift_allocObject();
  *(v84 + 16) = v73;
  v102 = sub_214CCDA54();
  v103 = sub_214CCFBB4();
  v79 = 17;
  v88 = swift_allocObject();
  v78 = 32;
  *(v88 + 16) = 32;
  v90 = swift_allocObject();
  v80 = 8;
  *(v90 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v75;
  v77 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v77;
  v92 = v14;
  *(v14 + 16) = v76;
  *(v14 + 24) = v15;
  v94 = swift_allocObject();
  *(v94 + 16) = v78;
  v96 = swift_allocObject();
  *(v96 + 16) = v80;
  v16 = swift_allocObject();
  v17 = v84;
  v86 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v86;
  v99 = v18;
  *(v18 + 16) = v85;
  *(v18 + 24) = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v97 = sub_214CD03C4();
  v100 = v20;

  v21 = v88;
  v22 = v100;
  *v100 = v87;
  v22[1] = v21;

  v23 = v90;
  v24 = v100;
  v100[2] = v89;
  v24[3] = v23;

  v25 = v92;
  v26 = v100;
  v100[4] = v91;
  v26[5] = v25;

  v27 = v94;
  v28 = v100;
  v100[6] = v93;
  v28[7] = v27;

  v29 = v96;
  v30 = v100;
  v100[8] = v95;
  v30[9] = v29;

  v31 = v99;
  v32 = v100;
  v100[10] = v98;
  v32[11] = v31;
  sub_214A63280();

  if (os_log_type_enabled(v102, v103))
  {
    v33 = v59;
    v50 = sub_214CCFF24();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v51 = sub_214A632C4(0, v49, v49);
    v52 = sub_214A632C4(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v54 = &v108;
    v108 = v50;
    v55 = &v107;
    v107 = v51;
    v56 = &v106;
    v106 = v52;
    v53 = 2;
    sub_214A6627C(2, &v108);
    sub_214A6627C(v53, v54);
    v104 = v87;
    v105 = v88;
    sub_214A66290(&v104, v54, v55, v56);
    v57 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v104 = v89;
      v105 = v90;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v48 = 0;
      v104 = v91;
      v105 = v92;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v47 = 0;
      v104 = v93;
      v105 = v94;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v46 = 0;
      v104 = v95;
      v105 = v96;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v45 = 0;
      v104 = v98;
      v105 = v99;
      sub_214A66290(&v104, &v108, &v107, &v106);
      _os_log_impl(&dword_214A5E000, v102, v103, "movedItemIDs %s before %s", v50, 0x16u);
      sub_214A669DC(v51, 0, v49);
      sub_214A669DC(v52, 2, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D82BD8](v102);
  (*(v66 + 8))(v65, v68, v34);
  v43 = 0;
  v35 = sub_214CCF994();
  (*(*(v35 - 8) + 56))(v61, 1);
  MEMORY[0x277D82BE0](v62);

  swift_unknownObjectRetain();
  v36 = swift_allocObject();
  v37 = v62;
  v38 = v69;
  v39 = v73;
  v44 = v36;
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v37;
  v36[5] = v38;
  v36[6] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0, &qword_214CF32E8);
  sub_214B88C30(v43, v43, v61, v58, v44, v40);
}

uint64_t sub_214C1A484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214C1A4E8, 0);
}

uint64_t sub_214C1A4E8()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214C1A664, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214C1A664()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214C1792C(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

uint64_t MUIHighlightedMessagesController.collection(_:movedItemIDs:after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v69 = a2;
  v73 = a3;
  v70 = sub_214A7E9D4;
  v74 = sub_214A7E698;
  v76 = sub_214A7E854;
  v81 = sub_214A800FC;
  v85 = sub_214A7E854;
  v87 = sub_214A662DC;
  v89 = sub_214A662DC;
  v91 = sub_214A7E40C;
  v93 = sub_214A662DC;
  v95 = sub_214A662DC;
  v98 = sub_214A7E40C;
  v58 = &unk_214CF3378;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v59 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0);
  v60 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v42 - v60;
  v68 = sub_214CCDA74();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v64 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v4 = &v42 - v64;
  v65 = &v42 - v64;
  v112 = v5;
  v111 = v6;
  v110 = v7;
  v109 = v8;
  v9 = sub_214A660E0();
  (*(v66 + 16))(v4, v9, v68);

  v72 = 24;
  v83 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v69;

  v82 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v75 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;

  swift_unknownObjectRetain();
  v84 = swift_allocObject();
  *(v84 + 16) = v73;
  v102 = sub_214CCDA54();
  v103 = sub_214CCFBB4();
  v79 = 17;
  v88 = swift_allocObject();
  v78 = 32;
  *(v88 + 16) = 32;
  v90 = swift_allocObject();
  v80 = 8;
  *(v90 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v75;
  v77 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v77;
  v92 = v14;
  *(v14 + 16) = v76;
  *(v14 + 24) = v15;
  v94 = swift_allocObject();
  *(v94 + 16) = v78;
  v96 = swift_allocObject();
  *(v96 + 16) = v80;
  v16 = swift_allocObject();
  v17 = v84;
  v86 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v86;
  v99 = v18;
  *(v18 + 16) = v85;
  *(v18 + 24) = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v97 = sub_214CD03C4();
  v100 = v20;

  v21 = v88;
  v22 = v100;
  *v100 = v87;
  v22[1] = v21;

  v23 = v90;
  v24 = v100;
  v100[2] = v89;
  v24[3] = v23;

  v25 = v92;
  v26 = v100;
  v100[4] = v91;
  v26[5] = v25;

  v27 = v94;
  v28 = v100;
  v100[6] = v93;
  v28[7] = v27;

  v29 = v96;
  v30 = v100;
  v100[8] = v95;
  v30[9] = v29;

  v31 = v99;
  v32 = v100;
  v100[10] = v98;
  v32[11] = v31;
  sub_214A63280();

  if (os_log_type_enabled(v102, v103))
  {
    v33 = v59;
    v50 = sub_214CCFF24();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v51 = sub_214A632C4(0, v49, v49);
    v52 = sub_214A632C4(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v54 = &v108;
    v108 = v50;
    v55 = &v107;
    v107 = v51;
    v56 = &v106;
    v106 = v52;
    v53 = 2;
    sub_214A6627C(2, &v108);
    sub_214A6627C(v53, v54);
    v104 = v87;
    v105 = v88;
    sub_214A66290(&v104, v54, v55, v56);
    v57 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v104 = v89;
      v105 = v90;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v48 = 0;
      v104 = v91;
      v105 = v92;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v47 = 0;
      v104 = v93;
      v105 = v94;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v46 = 0;
      v104 = v95;
      v105 = v96;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v45 = 0;
      v104 = v98;
      v105 = v99;
      sub_214A66290(&v104, &v108, &v107, &v106);
      _os_log_impl(&dword_214A5E000, v102, v103, "movedItemIDs %s after %s", v50, 0x16u);
      sub_214A669DC(v51, 0, v49);
      sub_214A669DC(v52, 2, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D82BD8](v102);
  (*(v66 + 8))(v65, v68, v34);
  v43 = 0;
  v35 = sub_214CCF994();
  (*(*(v35 - 8) + 56))(v61, 1);
  MEMORY[0x277D82BE0](v62);

  swift_unknownObjectRetain();
  v36 = swift_allocObject();
  v37 = v62;
  v38 = v69;
  v39 = v73;
  v44 = v36;
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v37;
  v36[5] = v38;
  v36[6] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0, &qword_214CF32E8);
  sub_214B88C30(v43, v43, v61, v58, v44, v40);
}

uint64_t sub_214C1B358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214C1B3BC, 0);
}

uint64_t sub_214C1B3BC()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214C1B538, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214C1B538()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214C17998(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

uint64_t MUIHighlightedMessagesController.collection(_:changedItemIDs:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v39 = a2;
  v40 = sub_214A7E9D4;
  v43 = sub_214A7E698;
  v47 = sub_214A7E854;
  v49 = sub_214A662DC;
  v51 = sub_214A662DC;
  v54 = sub_214A7E40C;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v32 = 0;
  v38 = sub_214CCDA74();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v2 = v23 - v34;
  v35 = v23 - v34;
  v67 = v3;
  v66 = v4;
  v65 = v5;
  v6 = sub_214A660E0();
  (*(v36 + 16))(v2, v6, v38);

  v45 = 7;
  v41 = swift_allocObject();
  *(v41 + 16) = v39;

  v44 = 32;
  v7 = swift_allocObject();
  v8 = v41;
  v46 = v7;
  *(v7 + 16) = v40;
  *(v7 + 24) = v8;

  v58 = sub_214CCDA54();
  v59 = sub_214CCFBB4();
  v42 = 17;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v46;
  v48 = v9;
  *(v9 + 16) = v43;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v48;
  v55 = v11;
  *(v11 + 16) = v47;
  *(v11 + 24) = v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v53 = sub_214CD03C4();
  v56 = v13;

  v14 = v50;
  v15 = v56;
  *v56 = v49;
  v15[1] = v14;

  v16 = v52;
  v17 = v56;
  v56[2] = v51;
  v17[3] = v16;

  v18 = v55;
  v19 = v56;
  v56[4] = v54;
  v19[5] = v18;
  sub_214A63280();

  if (os_log_type_enabled(v58, v59))
  {
    v20 = v32;
    v25 = sub_214CCFF24();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v26 = sub_214A632C4(0, v24, v24);
    v27 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v28 = &v64;
    v64 = v25;
    v29 = &v63;
    v63 = v26;
    v30 = &v62;
    v62 = v27;
    sub_214A6627C(2, &v64);
    sub_214A6627C(1, v28);
    v60 = v49;
    v61 = v50;
    sub_214A66290(&v60, v28, v29, v30);
    v31 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v60 = v51;
      v61 = v52;
      sub_214A66290(&v60, &v64, &v63, &v62);
      v23[1] = 0;
      v60 = v54;
      v61 = v55;
      sub_214A66290(&v60, &v64, &v63, &v62);
      _os_log_impl(&dword_214A5E000, v58, v59, "changedItemIDs %s", v25, 0xCu);
      sub_214A669DC(v26, 0, v24);
      sub_214A669DC(v27, 1, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277D82BD8](v58);
  return (*(v36 + 8))(v35, v38, v21);
}

uint64_t MUIHighlightedMessagesController.collection(_:deletedItemIDs:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v51 = a2;
  v52 = sub_214A7E9D4;
  v55 = sub_214A7E698;
  v59 = sub_214A7E854;
  v61 = sub_214A662DC;
  v63 = sub_214A662DC;
  v66 = sub_214A7E40C;
  v40 = &unk_214CF3388;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v41 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0);
  v42 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v43 = &v29 - v42;
  v50 = sub_214CCDA74();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v3 = &v29 - v46;
  v47 = &v29 - v46;
  v79 = v4;
  v78 = v5;
  v77 = v6;
  v7 = sub_214A660E0();
  (*(v48 + 16))(v3, v7, v50);

  v57 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;

  v56 = 32;
  v8 = swift_allocObject();
  v9 = v53;
  v58 = v8;
  *(v8 + 16) = v52;
  *(v8 + 24) = v9;

  v70 = sub_214CCDA54();
  v71 = sub_214CCFBB4();
  v54 = 17;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v58;
  v60 = v10;
  *(v10 + 16) = v55;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v60;
  v67 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v65 = sub_214CD03C4();
  v68 = v14;

  v15 = v62;
  v16 = v68;
  *v68 = v61;
  v16[1] = v15;

  v17 = v64;
  v18 = v68;
  v68[2] = v63;
  v18[3] = v17;

  v19 = v67;
  v20 = v68;
  v68[4] = v66;
  v20[5] = v19;
  sub_214A63280();

  if (os_log_type_enabled(v70, v71))
  {
    v21 = v41;
    v33 = sub_214CCFF24();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v34 = sub_214A632C4(0, v32, v32);
    v35 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = &v76;
    v76 = v33;
    v37 = &v75;
    v75 = v34;
    v38 = &v74;
    v74 = v35;
    sub_214A6627C(2, &v76);
    sub_214A6627C(1, v36);
    v72 = v61;
    v73 = v62;
    sub_214A66290(&v72, v36, v37, v38);
    v39 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      sub_214A66290(&v72, &v76, &v75, &v74);
      v31 = 0;
      v72 = v66;
      v73 = v67;
      sub_214A66290(&v72, &v76, &v75, &v74);
      _os_log_impl(&dword_214A5E000, v70, v71, "deletedItemIDs %s", v33, 0xCu);
      sub_214A669DC(v34, 0, v32);
      sub_214A669DC(v35, 1, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v22 = MEMORY[0x277D82BD8](v70);
  (*(v48 + 8))(v47, v50, v22);
  v29 = 0;
  v23 = sub_214CCF994();
  (*(*(v23 - 8) + 56))(v43, 1);
  MEMORY[0x277D82BE0](v44);

  v24 = swift_allocObject();
  v25 = v44;
  v26 = v51;
  v30 = v24;
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v25;
  v24[5] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0, &qword_214CF32E8);
  sub_214B88C30(v29, v29, v43, v40, v30, v27);
}

uint64_t sub_214C1C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a5;
  v5[9] = a4;
  v5[8] = a1;
  v5[5] = v5;
  v5[6] = 0;
  v5[7] = 0;
  v5[6] = a4;
  v5[7] = a5;
  return MEMORY[0x2822009F8](sub_214C1C610, 0);
}

uint64_t sub_214C1C610()
{
  v6 = *(v0 + 72);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    *(v5 + 88) = v3;

    swift_endAccess();
    *(v5 + 96) = _swift_stdlib_has_malloc_size() & 1;

    return MEMORY[0x2822009F8](sub_214C1C790, v3);
  }

  else
  {
    v4 = *(v5 + 64);
    swift_endAccess();
    *v4 = 1;
    v1 = *(*(v5 + 40) + 8);

    return v1();
  }
}

uint64_t sub_214C1C790()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  *(v0 + 40) = v0;
  sub_214C17A04(v2, v1 & 1);

  return MEMORY[0x2822009F8](sub_214C1C81C, 0);
}

uint64_t sub_214C1C81C()
{
  v1 = *(v0 + 64);
  *(v0 + 40) = v0;
  *v1 = 0;
  return (*(*(v0 + 40) + 8))();
}

uint64_t MUIHighlightedMessagesController.collection(_:replacedExisting:withNewItemID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v67 = a2;
  v69 = a3;
  v70 = sub_214C1E03C;
  v72 = sub_214A7E854;
  v77 = sub_214C1E03C;
  v81 = sub_214A7E854;
  v83 = sub_214A662DC;
  v85 = sub_214A662DC;
  v87 = sub_214A7E40C;
  v89 = sub_214A662DC;
  v91 = sub_214A662DC;
  v94 = sub_214A7E40C;
  v56 = &unk_214CF3398;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v57 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0);
  v58 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v59 = &v40 - v58;
  v66 = sub_214CCDA74();
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v62 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v4 = &v40 - v62;
  v63 = &v40 - v62;
  v108 = v5;
  v107 = v6;
  v106 = v7;
  v105 = v8;
  v9 = sub_214A660E0();
  (*(v64 + 16))(v4, v9, v66);
  swift_unknownObjectRetain();
  v68 = 24;
  v79 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v67;
  swift_unknownObjectRetain();
  v80 = swift_allocObject();
  *(v80 + 16) = v69;
  v98 = sub_214CCDA54();
  v99 = sub_214CCFBB4();
  v75 = 17;
  v84 = swift_allocObject();
  v74 = 32;
  *(v84 + 16) = 32;
  v86 = swift_allocObject();
  v76 = 8;
  *(v86 + 16) = 8;
  v78 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v73 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v73;
  v88 = v12;
  *(v12 + 16) = v72;
  *(v12 + 24) = v13;
  v90 = swift_allocObject();
  *(v90 + 16) = v74;
  v92 = swift_allocObject();
  *(v92 + 16) = v76;
  v14 = swift_allocObject();
  v15 = v80;
  v82 = v14;
  *(v14 + 16) = v77;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v82;
  v95 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v93 = sub_214CD03C4();
  v96 = v18;

  v19 = v84;
  v20 = v96;
  *v96 = v83;
  v20[1] = v19;

  v21 = v86;
  v22 = v96;
  v96[2] = v85;
  v22[3] = v21;

  v23 = v88;
  v24 = v96;
  v96[4] = v87;
  v24[5] = v23;

  v25 = v90;
  v26 = v96;
  v96[6] = v89;
  v26[7] = v25;

  v27 = v92;
  v28 = v96;
  v96[8] = v91;
  v28[9] = v27;

  v29 = v95;
  v30 = v96;
  v96[10] = v94;
  v30[11] = v29;
  sub_214A63280();

  if (os_log_type_enabled(v98, v99))
  {
    v31 = v57;
    v48 = sub_214CCFF24();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v49 = sub_214A632C4(0, v47, v47);
    v50 = sub_214A632C4(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v52 = &v104;
    v104 = v48;
    v53 = &v103;
    v103 = v49;
    v54 = &v102;
    v102 = v50;
    v51 = 2;
    sub_214A6627C(2, &v104);
    sub_214A6627C(v51, v52);
    v100 = v83;
    v101 = v84;
    sub_214A66290(&v100, v52, v53, v54);
    v55 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v100 = v85;
      v101 = v86;
      sub_214A66290(&v100, &v104, &v103, &v102);
      v46 = 0;
      v100 = v87;
      v101 = v88;
      sub_214A66290(&v100, &v104, &v103, &v102);
      v45 = 0;
      v100 = v89;
      v101 = v90;
      sub_214A66290(&v100, &v104, &v103, &v102);
      v44 = 0;
      v100 = v91;
      v101 = v92;
      sub_214A66290(&v100, &v104, &v103, &v102);
      v43 = 0;
      v100 = v94;
      v101 = v95;
      sub_214A66290(&v100, &v104, &v103, &v102);
      _os_log_impl(&dword_214A5E000, v98, v99, "replacedExisting itemID %s withNewItemID %s", v48, 0x16u);
      sub_214A669DC(v49, 0, v47);
      sub_214A669DC(v50, 2, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v32 = MEMORY[0x277D82BD8](v98);
  (*(v64 + 8))(v63, v66, v32);
  v41 = 0;
  v33 = sub_214CCF994();
  (*(*(v33 - 8) + 56))(v59, 1);
  MEMORY[0x277D82BE0](v60);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = swift_allocObject();
  v35 = v60;
  v36 = v67;
  v37 = v69;
  v42 = v34;
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v35;
  v34[5] = v36;
  v34[6] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0, &qword_214CF32E8);
  sub_214B88C30(v41, v41, v59, v56, v42, v38);
}

uint64_t sub_214C1D46C(uint64_t a1)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710, &qword_214CF3320);
  return sub_214CCF5B4();
}

uint64_t sub_214C1D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214C1D528, 0);
}

uint64_t sub_214C1D528()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214C1D6A4, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214C1D6A4()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214C17C84(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

id sub_214C1D7D4(uint64_t a1, char a2)
{
  v5 = [v2 initWithTopLine:a1 isGeneratedSummary:a2 & 1 messageListItem:?];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v5;
}

uint64_t sub_214C1D83C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1696C(a1, v4, v7, v8, v9);
}

uint64_t sub_214C1D91C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1696C(a1, v4, v7, v8, v9);
}

uint64_t sub_214C1D9F4(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_214A82860;

  return sub_214C17254(v4, a1, v7, v8, v9, v10);
}

unint64_t sub_214C1DAD8()
{
  v2 = qword_27CA37010;
  if (!qword_27CA37010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37000, &qword_214CF3310);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1DB8C()
{
  v2 = qword_27CA37018;
  if (!qword_27CA37018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37000, &qword_214CF3310);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37018);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214C1DC88(uint64_t a1)
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

  return sub_214C195B0(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214C1DD78(uint64_t a1)
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

  return sub_214C1A484(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214C1DE68(uint64_t a1)
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

  return sub_214C1B358(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214C1DF58(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1C5BC(a1, v6, v7, v8, v9);
}

uint64_t sub_214C1E044(uint64_t a1)
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

  return sub_214C1D4C0(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214C1E148()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000, &qword_214CF3310);
  v1 = sub_214A831E0();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214C1E1B0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C184B0(a1, v6, v7, v8);
}

uint64_t sub_214C1E288(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C181FC(a1, v6, v7, v8, v9);
}

uint64_t block_copy_helper_380(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214C1E3D0(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_214A82860;

  return sub_214C16DE0(a1, v4, v7, v8, v9, v10);
}

void *sub_214C1E4B4()
{

  v1 = sub_214C3D2D4();

  return v1;
}

uint64_t sub_214C1E514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v53 = a1;
  v22 = sub_214C1F754;
  v36 = MEMORY[0x277CDE8F8];
  v52 = sub_214C2004C;
  v57 = MEMORY[0x277CE0CA8];
  v74 = 0;
  v73 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370A8, &qword_214CF34D0);
  v13 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v27 = &v13 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370B0, &qword_214CF34D8);
  v14 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v31 = &v13 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370B8, &qword_214CF34E0);
  v15 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v32 = &v13 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370C0, &qword_214CF34E8);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v16 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v40 = &v13 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370C8, &qword_214CF34F0);
  v17 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v46 = &v13 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370D0, &qword_214CF34F8);
  v18 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v51 = &v13 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370D8, &qword_214CF3500);
  v19 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v54 = &v13 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370E0, &qword_214CF3508);
  v59 = *(v65 - 8);
  v60 = v65 - 8;
  v20 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v63 = &v13 - v20;
  v21 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v64 = &v13 - v21;
  v74 = &v13 - v21;
  v73 = v4;

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370E8, &qword_214CF3510);
  v24 = sub_214C1F75C();
  sub_214C11934();
  v29 = 0;
  v33 = 0;
  sub_214CCF024();

  v5 = [objc_opt_self() clearColor];
  v6 = sub_214CCEE54();
  v26 = &v72;
  v72 = v6;
  sub_214C1F7E4();
  sub_214CCEC34();
  sub_214A75F80();
  sub_214C1F86C(v27);
  v30 = sub_214C1FA10();
  sub_214B68808();
  sub_214CCED14();
  sub_214C1FB40(v31);
  v35 = sub_214C1FD08();
  sub_214C1F6C8();
  sub_214CCEC24();
  sub_214C1FB40(v32);
  sub_214CCE044();
  v37 = v75;
  v75[0] = v7;
  v75[1] = v8;
  v75[2] = v9;
  v75[3] = v10;
  v76 = v33 & 1;
  v70 = v34;
  v71 = v35;
  v58 = 1;
  swift_getOpaqueTypeConformance2();
  sub_214CCEBA4();
  (*(v38 + 8))(v40, v41);
  v45 = *MEMORY[0x277D258F0];
  MEMORY[0x277D82BE0](v45);
  v43 = sub_214CCF564();
  v44 = v11;
  sub_214C1FDAC();
  sub_214CCECC4();

  MEMORY[0x277D82BD8](v45);
  sub_214A9E5F4(v46);
  sub_214CCF1D4();
  v49 = sub_214C1FF2C();
  v50 = sub_214C1FFD4();
  v48 = MEMORY[0x277CE14A8];
  sub_214B28CB0();
  sub_214CCEB74();
  sub_214A9E65C(v51);

  v56 = sub_214C20054();
  sub_214B61150();
  sub_214CCEB94();

  sub_214A9E65C(v54);
  v68 = v55;
  v69 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v63, v65, v64);
  v67 = *(v59 + 8);
  v66 = v59 + 8;
  v67(v63, v65);
  (*(v59 + 16))(v63, v64, v65);
  sub_214B061F0(v63, v65, v61);
  v67(v63, v65);
  return (v67)(v64, v65);
}

uint64_t sub_214C1EEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v71 = a1;
  v143 = 0;
  v142 = 0;
  v49 = 0;
  v84 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  v24 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v92 = (&v24 - v24);
  v25 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v24 - v24);
  v94 = (&v24 - v25);
  v143 = &v24 - v25;
  v142 = a1;

  v48 = 1;
  v50 = 1;
  sub_214C1275C(v49, 1, a1, v92);
  v86 = sub_214C201CC();
  sub_214B061F0(v92, v84, v94);
  sub_214C14DC0(v92);
  v4 = sub_214C1E4B4();
  v26 = v137;
  v137[0] = v4;
  v137[1] = v5;
  sub_214B075A0();
  v133 = sub_214CCEA74();
  v134 = v6;
  v135 = v7;
  v136 = v8;
  v29 = v133;
  v30 = v6;
  v31 = v7;
  v32 = v8;

  v27 = sub_214C373E8();

  v28 = sub_214CCE9B4();
  v129 = v29;
  v130 = v30;
  v131 = v31 & 1;
  v132 = v32;
  v125 = sub_214CCEA34();
  v126 = v9;
  v127 = v10;
  v128 = v11;
  v35 = v125;
  v36 = v9;
  v34 = v10;
  v37 = v11;

  sub_214B072EC(v29, v30, v31 & 1);

  v33 = sub_214C26DAC(v12);

  v121 = v35;
  v122 = v36;
  v123 = v34 & 1 & v50;
  v124 = v37;
  v76 = 0;
  v117 = sub_214CCE9E4();
  v118 = v13;
  v119 = v14;
  v120 = v15;
  v42 = v117;
  v40 = v13;
  v41 = v14;
  v43 = v15;
  sub_214B072EC(v35, v36, v34 & 1);

  v38 = sub_214BC6F18();

  v16 = sub_214CCEE54();
  v39 = &v116;
  v116 = v16;
  v112 = v42;
  v113 = v40;
  v114 = v41 & 1 & v50;
  v115 = v43;
  v108 = sub_214CCEA04();
  v109 = v17;
  v110 = v18;
  v111 = v19;
  v44 = v108;
  v45 = v17;
  v46 = v18;
  v47 = v19;
  sub_214A75F80();
  sub_214B072EC(v42, v40, v41 & 1);

  v51 = v105;
  v105[0] = v44;
  v105[1] = v45;
  v106 = v46 & 1 & v50;
  v107 = v47;
  sub_214CCF1A4();
  v52 = &v138;
  sub_214CCED14();
  sub_214B07618(v51);
  v53 = v148;
  v54 = 144;
  memcpy(v148, v52, sizeof(v148));
  v64 = v104;
  memcpy(v104, v148, sizeof(v104));
  v63 = MEMORY[0x277CE0910];
  v56 = sub_214CD03C4();
  v55 = v20;
  *v20 = sub_214CCE8D4();
  sub_214A63280();
  v57 = v21;
  v70 = sub_214C151AC();
  sub_214CD0084();
  v62 = v103[47];

  v58 = v144;
  sub_214C3518C(v144);

  v59 = v147;
  v72 = 40;
  memcpy(v147, v58 + 15, sizeof(v147));
  sub_214C14EE4(v147, v103);
  sub_214C14F3C(v58);
  v60 = sub_214C33238();
  sub_214A671E8(v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B38, &unk_214CF2A90);
  sub_214BF0760();
  v65 = &v139;
  sub_214CCED64();
  sub_214B07618(v64);
  v66 = v149;
  v67 = 185;
  memcpy(v149, v65, 0xB9uLL);
  v79 = v102;
  memcpy(v102, v149, 0xB9uLL);
  v89 = 2;
  v69 = sub_214CD03C4();
  v68 = v22;
  *v22 = sub_214CCE8B4();
  v68[1] = sub_214CCE8C4();
  sub_214A63280();
  sub_214CD0084();
  v78 = v101[47];

  v73 = v145;
  sub_214C3518C(v145);

  v74 = v146;
  memcpy(v146, v73 + 15, v72);
  sub_214C14EE4(v146, v101);
  sub_214C14F3C(v73);
  v75 = sub_214C331D4();
  sub_214A671E8(v74);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B48, &unk_214CF3630);
  sub_214BF0800();
  v80 = &v140;
  sub_214CCED64();
  sub_214B07618(v79);
  v81 = v150;
  v82 = 233;
  memcpy(v150, v80, 0xE9uLL);
  v83 = v100;
  memcpy(v100, v150, 0xE9uLL);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B58, &qword_214CF2AA0);
  v87 = sub_214BF08A4();
  v93 = v141;
  sub_214B061F0(v83, v85, v141);
  sub_214B07618(v83);
  sub_214C14BB4(v94, v92);
  v90 = v99;
  v99[0] = v92;
  v91 = v98;
  sub_214C2024C(v93, v98);
  v99[1] = v91;
  v97[0] = v84;
  v97[1] = v85;
  v95 = v86;
  v96 = v87;
  sub_214C663A4(v90, v89, v97, v88);
  sub_214B07618(v91);
  sub_214C14DC0(v92);
  sub_214B07618(v93);
  return sub_214C14DC0(v94);
}

uint64_t sub_214C1F6EC()
{

  sub_214C3B6B4();
}

unint64_t sub_214C1F75C()
{
  v2 = qword_27CA370F0;
  if (!qword_27CA370F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370E8, &qword_214CF3510);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA370F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1F7E4()
{
  v2 = qword_27CA370F8;
  if (!qword_27CA370F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370A8, &qword_214CF34D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA370F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C1F86C(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37100, &qword_214CF3518) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v5);
  }

  else
  {
  }

  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v5 + *(v3 + 28)));

  v4 = a1 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37108, &qword_214CF3528) + 48);
  sub_214B072EC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  return a1;
}

unint64_t sub_214C1FA10()
{
  v2 = qword_27CA37110;
  if (!qword_27CA37110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370B0, &qword_214CF34D8);
    sub_214C1F7E4();
    sub_214C1FAB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FAB8()
{
  v2 = qword_27CA37118;
  if (!qword_27CA37118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37120, &qword_214CF3530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37118);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C1FB40(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37100, &qword_214CF3518) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v5);
  }

  else
  {
  }

  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v5 + *(v3 + 28)));

  v4 = a1 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37108, &qword_214CF3528) + 48);
  sub_214B072EC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370B0, &qword_214CF34D8);

  return a1;
}

unint64_t sub_214C1FD08()
{
  v2 = qword_27CA37128;
  if (!qword_27CA37128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370B8, &qword_214CF34E0);
    sub_214C1FA10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FDAC()
{
  v2 = qword_27CA37130;
  if (!qword_27CA37130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370C8, &qword_214CF34F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370B8, &qword_214CF34E0);
    sub_214C1FD08();
    swift_getOpaqueTypeConformance2();
    sub_214C1FEA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FEA4()
{
  v2 = qword_27CA37138;
  if (!qword_27CA37138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37140, &qword_214CF3538);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37138);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FF2C()
{
  v2 = qword_27CA37148;
  if (!qword_27CA37148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370D0, &qword_214CF34F8);
    sub_214C1FDAC();
    sub_214B0B870();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FFD4()
{
  v2 = qword_27CA37D30;
  if (!qword_27CA37D30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C20054()
{
  v2 = qword_27CA37150;
  if (!qword_27CA37150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370D8, &qword_214CF3500);
    sub_214C1FF2C();
    sub_214C200FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C200FC()
{
  v2 = qword_27CA37158;
  if (!qword_27CA37158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C201CC()
{
  v2 = qword_27CA37160;
  if (!qword_27CA37160)
  {
    type metadata accessor for MUIHighlightedMessagesAvatarView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37160);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2024C(uint64_t a1, uint64_t a2)
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
  return a2;
}

uint64_t sub_214C20328()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_214C20354@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68, &unk_214CF2E90);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for MUIHighlightedMessagesHeaderView(0);
  sub_214C11C7C((v6 + *(v2 + 20)), v1);
  sub_214CCE124();
  return sub_214C11D50(v9);
}

uint64_t type metadata accessor for MUIHighlightedMessagesHeaderView(uint64_t a1)
{
  v2 = qword_27CA37240;
  if (!qword_27CA37240)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_214C204C0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68, &unk_214CF2E90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_214C11C7C(v2, (&v5 - v6));
  v3 = type metadata accessor for MUIHighlightedMessagesHeaderView(0);
  sub_214C11EB0(v7, (v1 + *(v3 + 20)));
  return sub_214C11D50(v8);
}

uint64_t sub_214C20570@<X0>(uint64_t a1@<X8>)
{
  v16 = v1;
  sub_214CCE454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37168, &qword_214CF3640);
  sub_214C20D54();
  sub_214CCF024();
  memcpy(__dst, v12, sizeof(__dst));
  memcpy(v11, __dst, sizeof(v11));
  sub_214CCE8B4();

  sub_214C3518C(v17);

  memcpy(v22, v18, sizeof(v22));
  sub_214C21934(v22, v10);
  sub_214C14F3C(v17);
  sub_214C219C8(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37178, &qword_214CF3648);
  sub_214C21A08();
  sub_214CCED64();
  sub_214C21A90(v11);
  memcpy(v24, v13, sizeof(v24));
  memcpy(v9, v24, 0x69uLL);
  sub_214CCE8C4();

  sub_214C3518C(v19);

  memcpy(v21, v20, sizeof(v21));
  sub_214C21934(v21, v8);
  sub_214C14F3C(v19);
  sub_214C219C8(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37188, &qword_214CF3650);
  sub_214C21AE0();
  sub_214CCED64();
  sub_214C21A90(v9);
  memcpy(v25, v14, sizeof(v25));
  memcpy(v7, v25, 0x99uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37198, &qword_214CF3658);
  sub_214C21B84();
  sub_214B061F0(v7, v4, v15);
  sub_214C21A90(v7);
  memcpy(v26, v15, 0x99uLL);
  sub_214C21C28(v26, v6);
  memcpy(v5, v26, 0x99uLL);
  sub_214B061F0(v5, v4, a1);
  sub_214C21A90(v5);
  return sub_214C21A90(v15);
}

void sub_214C208B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74[0] = 0;
  memset(v72, 0, sizeof(v72));
  v74[1] = a1;

  nullsub_1();
  v73 = v2;
  sub_214C22D0C();
  sub_214B061F0(&v73, &unk_2826E98E8, v74);
  sub_214A75F80();

  v17 = sub_214C37ACC();
  v18 = v3;

  v70 = v17;
  v71 = v18;
  sub_214B075A0();
  v66 = sub_214CCEA74();
  v67 = v4;
  v68 = v5;
  v69 = v6;
  v19 = v4;
  v20 = v5;
  v21 = v6;

  sub_214C36B8C();

  sub_214CCE9B4();
  v62 = v66;
  v63 = v19;
  v64 = v20 & 1;
  v65 = v21;
  v58 = sub_214CCEA34();
  v59 = v7;
  v60 = v8;
  v61 = v9;
  v23 = v7;
  v22 = v8;
  v24 = v9;

  sub_214B072EC(v66, v19, v20 & 1);

  sub_214C26DAC(v10);

  v54 = v58;
  v55 = v23;
  v56 = v22 & 1;
  v57 = v24;
  v50 = sub_214CCE9E4();
  v51 = v11;
  v52 = v12;
  v53 = v13;
  v27 = v11;
  v26 = v12;
  v28 = v13;
  sub_214B072EC(v58, v23, v22 & 1);

  v25 = sub_214C37C94();

  v49 = v25;
  v45 = v50;
  v46 = v27;
  v47 = v26 & 1;
  v48 = v28;
  v41 = sub_214CCEA04();
  v42 = v14;
  v43 = v15;
  v44 = v16;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  sub_214B072EC(v50, v27, v26 & 1);

  v38[0] = v41;
  v38[1] = v29;
  v39 = v30 & 1;
  v40 = v31;
  v32 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v38, MEMORY[0x277CE0BD8], v72);
  sub_214B07618(v38);
  sub_214A75F48(v74, &v36);
  v37[0] = &v36;
  sub_214B0C408(v72, v35);
  v37[1] = v35;
  v34[0] = &unk_2826E98E8;
  v34[1] = v32;
  sub_214C663A4(v37, 2uLL, v34, a2);
  sub_214B07618(v35);
  sub_214A75F80();
  sub_214B07618(v72);
  sub_214A75F80();
}

unint64_t sub_214C20D54()
{
  v2 = qword_27CA37170;
  if (!qword_27CA37170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37168, &qword_214CF3640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37170);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C20DDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for MUIHighlightedMessagesHeaderView(0);
  swift_getKeyPath();
  return sub_214CCE144();
}

uint64_t sub_214C20E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v57 = a1;
  v77 = 0;
  v76 = 0;
  v39 = 0;
  v36 = sub_214CCEF74();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v13 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v12 - v13;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371A8, &qword_214CF3660);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v12 - v14;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0, &qword_214CF3668);
  v15 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v31 = &v12 - v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B8, &qword_214CF3670);
  v16 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v37 = &v12 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C0, &qword_214CF3678);
  v17 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v44 = &v12 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C8, &qword_214CF3680);
  v18 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v52 = &v12 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371D0, &qword_214CF3688);
  v19 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v62 = &v12 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371D8, &qword_214CF3690);
  v20 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v66 = &v12 - v20;
  v21 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v67 = (&v12 - v21);
  v77 = &v12 - v21;
  v76 = v5;
  v22 = @"apple.intelligence";
  MEMORY[0x277D82BE0](@"apple.intelligence");
  sub_214CCF564();
  v23 = sub_214CCEF54();
  MEMORY[0x277D82BD8](v22);
  v24 = v73;
  v73[0] = v23;
  v40 = 1;
  v59 = 0;
  sub_214CCEB14();
  sub_214A75F80();
  v27 = v70;
  v70[0] = v73[1];
  v70[1] = v73[2];
  v71 = v74 & 1 & v40;
  v72 = v75;
  sub_214CCE564();
  v6 = sub_214CCE574();
  (*(*(v6 - 8) + 56))(v26, v59, v40);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371E0, &qword_214CF3698);
  sub_214C21D10();
  sub_214CCEC54();
  sub_214C21DB0(v26);
  sub_214A75F80();

  v28 = sub_214C36B8C();

  v30 = sub_214CCE9B4();
  sub_214C21E58();
  sub_214CCECF4();

  sub_214C21F88(v31);
  (*(v33 + 104))(v35, *MEMORY[0x277CE1048], v36);
  sub_214C220A0();
  sub_214CCEAF4();
  (*(v33 + 8))(v35, v36);
  sub_214C22148(v37);
  v38 = sub_214C21744(v57);
  v41 = sub_214CCF194();
  v42 = v7;
  sub_214C22298();
  sub_214CCED04();
  sub_214C223C8(v44);
  v53 = 1;
  v51 = MEMORY[0x277CE0910];
  v46 = sub_214CD03C4();
  v45 = v8;
  *v8 = sub_214CCE8D4();
  sub_214A63280();
  v47 = v9;
  v56 = sub_214C151AC();
  sub_214CD0084();
  v50 = v69;
  v48 = sub_214C217E0(v57);
  sub_214C225A0();
  sub_214CCED64();
  sub_214C223C8(v52);
  v55 = sub_214CD03C4();
  v54 = v10;
  *v10 = sub_214CCE8E4();
  sub_214A63280();
  sub_214CD0084();
  v61 = v68;
  v58 = sub_214C2187C(v57);
  sub_214C22644();
  sub_214CCED64();
  sub_214C223C8(v62);
  v65 = sub_214C226E8();
  sub_214B061F0(v66, v64, v67);
  sub_214C223C8(v66);
  sub_214C2278C(v67, v66);
  sub_214B061F0(v66, v64, v63);
  sub_214C223C8(v66);
  return sub_214C223C8(v67);
}

double sub_214C21744(uint64_t a1)
{
  v4 = a1;

  sub_214C3518C(v5);

  memcpy(__dst, v6, sizeof(__dst));
  sub_214C14EE4(__dst, v3);
  sub_214C14F3C(v5);
  v2 = sub_214C33250();
  sub_214A671E8(__dst);
  return v2;
}

double sub_214C217E0(uint64_t a1)
{
  v4 = a1;

  sub_214C3518C(v5);

  memcpy(__dst, v6, sizeof(__dst));
  sub_214C14EE4(__dst, v3);
  sub_214C14F3C(v5);
  v2 = sub_214C33268();
  sub_214A671E8(__dst);
  return v2;
}

double sub_214C2187C(uint64_t a1)
{
  v4 = a1;

  sub_214C3518C(v5);

  memcpy(__dst, v6, sizeof(__dst));
  sub_214C14EE4(__dst, v3);
  sub_214C14F3C(v5);
  v2 = sub_214C33280();
  sub_214A671E8(__dst);
  return v2;
}

uint64_t sub_214C21934(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 40) = a1[5];
  v5 = a1[6];

  result = a2;
  *(a2 + 48) = v5;
  *(a2 + 56) = a1[7];
  *(a2 + 64) = a1[8];
  *(a2 + 72) = a1[9];
  return result;
}

unint64_t sub_214C21A08()
{
  v2 = qword_27CA37180;
  if (!qword_27CA37180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37178, &qword_214CF3648);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37180);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C21A90(uint64_t a1)
{

  sub_214B072EC(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1);

  return a1;
}

unint64_t sub_214C21AE0()
{
  v2 = qword_27CA37190;
  if (!qword_27CA37190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37188, &qword_214CF3650);
    sub_214C21A08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C21B84()
{
  v2 = qword_27CA371A0;
  if (!qword_27CA371A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37198, &qword_214CF3658);
    sub_214C21AE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA371A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C21C28(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  sub_214B0755C(v4, v5, v6 & 1);
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6 & 1;
  v7 = *(a1 + 56);

  *(a2 + 56) = v7;
  memcpy((a2 + 64), (a1 + 64), 0x29uLL);
  memcpy((a2 + 112), (a1 + 112), 0x29uLL);
  return a2;
}

unint64_t sub_214C21D10()
{
  v2 = qword_27CA371E8;
  if (!qword_27CA371E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371E0, &qword_214CF3698);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA371E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C21DB0(uint64_t a1)
{
  v3 = sub_214CCE574();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214C21E58()
{
  v2 = qword_27CA371F0;
  if (!qword_27CA371F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371B0, &qword_214CF3668);
    sub_214C21D10();
    sub_214C21F00();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA371F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C21F00()
{
  v2 = qword_27CA371F8;
  if (!qword_27CA371F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37200, &unk_214CF36A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA371F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C21F88(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0, &qword_214CF3668) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37200, &unk_214CF36A0) + 28);
  v5 = sub_214CCE574();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3 + v4, 1))
  {
    (*(v6 + 8))(a1 + v3 + v4, v5);
  }

  return a1;
}

unint64_t sub_214C220A0()
{
  v2 = qword_27CA37208;
  if (!qword_27CA37208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371B8, &qword_214CF3670);
    sub_214C21E58();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C22148(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0, &qword_214CF3668) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37200, &unk_214CF36A0) + 28);
  v5 = sub_214CCE574();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3 + v4, 1))
  {
    (*(v6 + 8))(a1 + v3 + v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B8, &qword_214CF3670);

  return a1;
}

unint64_t sub_214C22298()
{
  v2 = qword_27CA37210;
  if (!qword_27CA37210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371C0, &qword_214CF3678);
    sub_214C220A0();
    sub_214C22340();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C22340()
{
  v2 = qword_27CA37218;
  if (!qword_27CA37218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37220, &unk_214CF36B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37218);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C223C8(uint64_t a1)
{

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0, &qword_214CF3668) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37200, &unk_214CF36A0) + 28);
  v8 = sub_214CCE574();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6 + v7, 1))
  {
    (*(v9 + 8))(a1 + v6 + v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B8, &qword_214CF3670);

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C0, &qword_214CF3678) + 36);

  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220, &unk_214CF36B0) + 28);
  v1 = sub_214CCEF74();
  (*(*(v1 - 8) + 8))(v4);
  return a1;
}

unint64_t sub_214C225A0()
{
  v2 = qword_27CA37228;
  if (!qword_27CA37228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371C8, &qword_214CF3680);
    sub_214C22298();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C22644()
{
  v2 = qword_27CA37230;
  if (!qword_27CA37230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371D0, &qword_214CF3688);
    sub_214C225A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C226E8()
{
  v2 = qword_27CA37238;
  if (!qword_27CA37238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371D8, &qword_214CF3690);
    sub_214C22644();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2278C(uint64_t *a1, uint64_t a2)
{
  v20 = *a1;

  *a2 = v20;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0, &qword_214CF3668) + 36);
  v24 = *(a1 + v22);

  *(a2 + v22) = v24;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37200, &unk_214CF36A0) + 28);
  v26 = sub_214CCE574();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(a1 + v22 + v25, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371A8, &qword_214CF3660);
    memcpy((a2 + v22 + v25), a1 + v22 + v25, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v27 + 16))();
    (*(v27 + 56))(a2 + v22 + v25, 0, 1, v26);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B8, &qword_214CF3670);
  v13 = (a2 + *(v3 + 36));
  v12 = (a1 + *(v3 + 36));
  v11 = *v12;

  *v13 = v11;
  v14 = v12[1];

  v13[1] = v14;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C0, &qword_214CF3678);
  v16 = (a2 + *(v4 + 36));
  v17 = (a1 + *(v4 + 36));
  v15 = *v17;

  *v16 = v15;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220, &unk_214CF36B0);
  v19 = v16 + *(v5 + 28);
  v18 = v17 + *(v5 + 28);
  v6 = sub_214CCEF74();
  (*(*(v6 - 8) + 16))(v19, v18);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C8, &qword_214CF3680);
  memcpy((a2 + *(v7 + 36)), a1 + *(v7 + 36), 0x30uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371D0, &qword_214CF3688);
  memcpy((a2 + *(v8 + 36)), a1 + *(v8 + 36), 0x29uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371D8, &qword_214CF3690);
  memcpy((a2 + *(v9 + 36)), a1 + *(v9 + 36), 0x29uLL);
  return a2;
}

unint64_t sub_214C22BC4(uint64_t a1)
{
  v4 = type metadata accessor for MUIHighlightedMessagesViewModel(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_214C158F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_214C22D0C()
{
  v2 = qword_27CA37250;
  if (!qword_27CA37250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C22DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9[1] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_214CCE694();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v11);
  v13 = v9 - v10;
  (*(*(v7 - 8) + 16))(v6);
  swift_storeEnumTagMultiPayload();
  return sub_214CCE6A4();
}

uint64_t sub_214C22E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9[1] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_214CCE694();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v11);
  v13 = v9 - v10;
  (*(*(v7 - 8) + 16))(v6);
  swift_storeEnumTagMultiPayload();
  return sub_214CCE6A4();
}

uint64_t sub_214C22F90()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

double sub_214C22FD0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C2303C()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_214C23074@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37258, &qword_214CF38F0);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for MUIHighlightedMessagesRowView(0);
  sub_214C231B4((v5[1] + *(v3 + 24)), v1);
  sub_214CCE124();
  return sub_214C23288(v7);
}

uint64_t type metadata accessor for MUIHighlightedMessagesRowView(uint64_t a1)
{
  v2 = qword_27CA37348;
  if (!qword_27CA37348)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_214C231B4(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260, &qword_214CF38F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE6E4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214C23288(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260, &qword_214CF38F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE6E4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_214C23364(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37258, &qword_214CF38F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214C231B4(v2, (&v5 - v6));
  v3 = type metadata accessor for MUIHighlightedMessagesRowView(0);
  sub_214C23428(v7, (v1 + *(v3 + 24)));
  return sub_214C23288(v8);
}

void *sub_214C23428(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_214C23288(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260, &qword_214CF38F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_214CCE6E4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t MUIHighlightedMessagesRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = v88;
  v29 = a1;
  v67 = 0;
  v87 = 0;
  v86 = 0;
  v30 = sub_214CCE504();
  v31 = *(v30 - 8);
  v32 = v31;
  MEMORY[0x28223BE20](0);
  v33 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_214CCE6E4();
  v34 = *(v75 - 8);
  v72 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v18 - v36;
  MEMORY[0x28223BE20](v18 - v36);
  v74 = v18 - v36;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37268, &qword_214CF3900);
  v37 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65 - 8);
  v71 = v18 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37270, &qword_214CF3908);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38 - 8);
  v66 = v18 - v39;
  v40 = v18 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37278, &qword_214CF3910);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41 - 8);
  v43 = v18 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37280, &qword_214CF3918);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v18 - v47;
  MEMORY[0x28223BE20](v18 - v47);
  v48 = v18 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37288, &qword_214CF3920);
  v50 = *(v49 - 8);
  v51 = v50;
  v53 = *(v50 + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = v18 - v55;
  MEMORY[0x28223BE20](v18 - v55);
  v54 = v18 - v55;
  MEMORY[0x28223BE20](v18 - v55);
  v56 = v18 - v55;
  v87 = v18 - v55;
  v86 = v1;
  v79 = v1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37290, &qword_214CF3928);
  v58 = sub_214C24804();
  sub_214C11934();
  v69 = 0;
  sub_214CCF024();
  v59 = *(v1 + 8);

  v61 = v88;
  sub_214C3518C(v88);

  v3 = *(v60 + 120);
  v4 = *(v60 + 136);
  v91 = v89;
  v90[1] = v4;
  v90[0] = v3;
  v62 = v90;
  sub_214C14EE4(v90, &v85);
  sub_214C14F3C(v61);
  v63 = sub_214C33298();
  sub_214A671E8(v62);
  v68 = v63;
  v64 = sub_214C28520();
  v5 = sub_214B68808();
  v70 = &v11;
  v17 = v64;
  v16 = v65;
  v15[1] = v6;
  v15[0] = v5;
  v14 = 1;
  v13 = v67;
  v12 = 1;
  v11 = v67;
  sub_214CCED14();
  sub_214C285A8(v71);
  sub_214C23074(v74);
  sub_214CCE6D4();
  v78 = sub_214CCE6B4();
  v77 = *(v72 + 8);
  v76 = v72 + 8;
  v77(v73, v75);
  v77(v74, v75);
  if (v78)
  {
    v28 = sub_214CCEE64();
  }

  else
  {
    v28 = sub_214CCEEA4();
  }

  v84 = v28;
  sub_214C2893C();
  v18[1] = &v84;
  sub_214CCEC34();
  sub_214A75F80();
  sub_214C285A8(v40);
  sub_214CCE4E4();
  sub_214C289E0();
  sub_214CCECA4();
  (*(v32 + 8))(v33, v30);
  sub_214C28A88(v43);
  v19 = *MEMORY[0x277D258E8];
  v7 = v19;
  sub_214CCF564();
  v18[2] = v8;
  sub_214CCE2E4();

  sub_214C28DCC(v46);
  v21 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v15;
  v16 = v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372E0, &qword_214CF3970);
  v23 = sub_214C2915C();
  v24 = sub_214C29204();
  sub_214CCEB44();
  sub_214C28DCC(v48);
  v80 = v44;
  v81 = v22;
  v82 = v23;
  v83 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v54, v49, v56);
  v27 = *(v51 + 8);
  v26 = v51 + 8;
  v27(v54, v49);
  (*(v51 + 16))(v52, v56, v49);
  sub_214B061F0(v52, v49, v29);
  v27(v52, v49);
  return (v27)(v56, v49);
}

uint64_t sub_214C23D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v82 = a1;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v30 = 0;
  v51 = sub_214CCEF74();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v22 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v50 = &v21 - v22;
  v23 = (*(*(sub_214CCCF24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v45 = &v21 - v23;
  v24 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v44 = &v21 - v24;
  v47 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(v4);
  v25 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v52 = &v21 - v25;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0, &unk_214CF3950);
  v26 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v57 = &v21 - v26;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8, &unk_214CF3960);
  v27 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v67 = &v21 - v27;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37388, &qword_214CF3E18);
  v28 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v78 = &v21 - v28;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37390, &qword_214CF3E20);
  v29 = (*(*(v89 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89);
  v91 = &v21 - v29;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37398, &qword_214CF3E28);
  v31 = (*(*(v93 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v99 = &v21 - v31;
  v32 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v101 = &v21 - v32;
  v112 = &v21 - v32;
  v39 = type metadata accessor for MUIHighlightedMessagesAvatarView(v7);
  v33 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v8 = &v21 - v33;
  v40 = &v21 - v33;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0, &qword_214CF3940);
  v34 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v82);
  v100 = (&v21 - v34);
  v35 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v102 = (&v21 - v35);
  v111 = &v21 - v35;
  v110 = v11;
  v37 = *v11;
  MEMORY[0x277D82BE0](v37);
  v36 = *(v82 + 8);

  v12 = sub_214B348E4();
  v38 = 1;
  sub_214C1275C(v37, v12 & 1, v36, v8);
  sub_214C201CC();
  sub_214CCEC44();
  sub_214C14DC0(v40);
  v94 = sub_214C2A0A0();
  sub_214B061F0(v100, v92, v102);
  sub_214C2A148(v100);
  sub_214C2488C(v44);
  v13 = v52;
  v41 = *v82;
  *&v14 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  v42 = [v41 topLine];
  MEMORY[0x277D82BD8](v41);
  sub_214CCCF44();
  v43 = *v82;
  *&v15 = MEMORY[0x277D82BE0](v43).n128_u64[0];
  v46 = [v43 isGeneratedSummary];
  MEMORY[0x277D82BD8](v43);
  sub_214C24D2C(v44, v45, v46, v13);
  (*(v48 + 104))(v50, *MEMORY[0x277CE1050], v51);
  sub_214C2A2D0();
  sub_214CCEAF4();
  (*(v48 + 8))(v50, v51);
  sub_214C2A350(v52);
  v53 = *(v82 + 8);

  v54 = sub_214C36330();

  v56 = sub_214CCE9B4();
  sub_214C2A3EC();
  sub_214CCECF4();

  sub_214C2A494(v57);
  v68 = 1;
  v77 = MEMORY[0x277CE0910];
  v59 = sub_214CD03C4();
  v58 = v16;
  *v16 = sub_214CCE8D4();
  sub_214A63280();
  v60 = v17;
  v81 = sub_214C151AC();
  sub_214CD0084();
  v66 = v109[47];
  v61 = *(v82 + 8);

  v62 = v113;
  sub_214C3518C(v113);

  v63 = __dst;
  v84 = 40;
  memcpy(__dst, v62 + 15, sizeof(__dst));
  sub_214C14EE4(__dst, v109);
  sub_214C14F3C(v62);
  v64 = sub_214C33238();
  sub_214A671E8(v63);
  sub_214C2A5C0();
  v88 = 0;
  sub_214CCED64();
  sub_214C2A668(v67);
  v70 = sub_214CD03C4();
  v69 = v18;
  *v18 = sub_214CCE8E4();
  sub_214A63280();
  sub_214CD0084();
  v76 = v108[47];
  v71 = *(v82 + 8);

  v72 = v114;
  sub_214C3518C(v114);

  v73 = v117;
  memcpy(v117, v72 + 15, v84);
  sub_214C14EE4(v117, v108);
  sub_214C14F3C(v72);
  v74 = sub_214C331BC();
  sub_214A671E8(v73);
  sub_214C2A7D0();
  sub_214CCED64();
  sub_214C2A668(v78);
  v97 = 2;
  v80 = sub_214CD03C4();
  v79 = v19;
  *v19 = sub_214CCE8B4();
  v79[1] = sub_214CCE8C4();
  sub_214A63280();
  sub_214CD0084();
  v90 = v107[47];
  v83 = *(v82 + 8);

  v85 = v115;
  sub_214C3518C(v115);

  v86 = v116;
  memcpy(v116, v85 + 15, v84);
  sub_214C14EE4(v116, v107);
  sub_214C14F3C(v85);
  v87 = sub_214C331D4();
  sub_214A671E8(v86);
  sub_214C2A874();
  sub_214CCED64();
  sub_214C2A668(v91);
  v95 = sub_214C2A918();
  sub_214B061F0(v99, v93, v101);
  sub_214C2A668(v99);
  sub_214C2A9BC(v102, v100);
  v98 = v106;
  v106[0] = v100;
  sub_214C2AC44(v101, v99);
  v106[1] = v99;
  v105[0] = v92;
  v105[1] = v93;
  v103 = v94;
  v104 = v95;
  sub_214C663A4(v98, v97, v105, v96);
  sub_214C2A668(v99);
  sub_214C2A148(v100);
  sub_214C2A668(v101);
  return sub_214C2A148(v102);
}

unint64_t sub_214C24804()
{
  v2 = qword_27CA37298;
  if (!qword_27CA37298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37290, &qword_214CF3928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37298);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2488C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v35 = "The sender of a message";
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v37 = 0;
  v13 = (*(*(sub_214CCCFA4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v43 = &v12 - v13;
  v14 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v39 = &v12 - v14;
  v15 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v36 = &v12 - v15;
  v32 = sub_214CCF514();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v18 = *(v30 + 64);
  v16 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v34 = &v12 - v16;
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v29 = &v12 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v33 = &v12 - v19;
  v49 = v4;
  sub_214CCF504();
  v26 = "";
  v27 = 1;
  sub_214CCF614("", v37, 1);
  v20 = v5;
  sub_214CCF4F4();

  v22 = *v21;
  *&v6 = MEMORY[0x277D82BE0](v22).n128_u64[0];
  v25 = [v22 sender];
  v23 = sub_214CCF564();
  v24 = v7;
  MEMORY[0x277D82BD8](v22);
  sub_214CCF4E4();

  *&v8 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  sub_214CCF614(v26, v37, v27 & 1, v8);
  v28 = v9;
  sub_214CCF4F4();

  (*(v30 + 16))(v29, v33, v32);
  (*(v30 + 32))(v34, v29, v32);
  (*(v30 + 8))(v33, v32);
  sub_214CCF524();
  v38 = [objc_opt_self() mui_MailUIBundle];
  sub_214B1CFBC();
  v46 = v35;
  v47 = 23;
  v48 = 2;
  v41 = sub_214CCF5A4();
  v42 = v10;
  v44 = v41;
  v45 = v10;
  sub_214C26C20();
  return sub_214CCCF34();
}

uint64_t sub_214C24D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = sub_214CCCF24();
  v7 = *(*(v6 - 8) + 32);
  v7(a4, a1);
  v11 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0);
  (v7)(a4 + *(v11 + 20), a2, v6);
  result = v11;
  *(a4 + *(v11 + 24)) = a3;
  return result;
}

uint64_t sub_214C24DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v37 = a2;
  v46 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v69 = 0;
  v63 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37320, &qword_214CF3988);
  v39 = *(v38 - 8);
  v40 = v39;
  v42 = *(v39 + 64);
  MEMORY[0x28223BE20](0);
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = &v17 - v44;
  MEMORY[0x28223BE20](v2);
  v43 = &v17 - v44;
  MEMORY[0x28223BE20](v3);
  v45 = &v17 - v44;
  v78 = &v17 - v44;
  sub_214CCD2D4();
  MEMORY[0x28223BE20](v46);
  v47 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_214CCF534();
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37300, &qword_214CF3978);
  v50 = *(v49 - 8);
  v51 = v50;
  v53 = *(v50 + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = &v17 - v55;
  MEMORY[0x28223BE20](&v17 - v55);
  v54 = &v17 - v55;
  MEMORY[0x28223BE20](v7);
  v56 = &v17 - v55;
  v77 = &v17 - v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372E0, &qword_214CF3970);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v17 - v61;
  MEMORY[0x28223BE20](v8);
  v62 = &v17 - v61;
  v76 = &v17 - v61;
  v75 = v9;
  if ([objc_opt_self() isFeedbackRestricted])
  {
    sub_214CCF614("Report a Concern", 16, 1);
    sub_214CCF4C4();
    v29 = [objc_opt_self() mui_MailUIBundle];
    sub_214B1CFBC();
    v66 = "Header title that appears in a context menu for reporting a concern for a priority mail";
    v67 = 87;
    v68 = 2;
    v64 = sub_214CCF5A4();
    v65 = v10;
    v33 = &v17;
    MEMORY[0x28223BE20](&v17);
    v30 = &v17 - 4;
    *(&v17 - 2) = v11;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37310, &qword_214CF3980);
    v32 = sub_214C2935C();
    sub_214B075A0();
    sub_214CCF104();
    v34 = sub_214C292AC();
    sub_214B061F0(v54, v49, v56);
    v35 = *(v51 + 8);
    v36 = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v54, v49);
    v63 = v54;
    v28 = *(v51 + 16);
    v27 = v51 + 16;
    v28(v52, v56, v49);
    sub_214B061F0(v52, v49, v54);
    v35(v52, v49);
    v28(v52, v54, v49);
    v12 = sub_214C293E4();
    sub_214C22DA0(v52, v49, v38, v34, v12, v60);
    v35(v52, v49);
    sub_214C29D00(v60, v62);
    v35(v54, v49);
    v35(v56, v49);
  }

  else
  {
    sub_214CCF614("Share Feedback", 14, 1);
    sub_214CCF4C4();
    v19 = [objc_opt_self() mui_MailUIBundle];
    sub_214B1CFBC();
    v72 = "Header title that appears in a context menu for sharing feedback for a priority mail";
    v73 = 84;
    v74 = 2;
    v70 = sub_214CCF5A4();
    v71 = v13;
    v23 = &v17;
    MEMORY[0x28223BE20](&v17);
    v20 = &v17 - 4;
    *(&v17 - 2) = v14;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37330, &unk_214CF3990);
    v22 = sub_214C29494();
    sub_214B075A0();
    sub_214CCF104();
    v24 = sub_214C293E4();
    sub_214B061F0(v43, v38, v45);
    v25 = *(v40 + 8);
    v26 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v43, v38);
    v69 = v43;
    v18 = *(v40 + 16);
    v17 = v40 + 16;
    v18(v41, v45, v38);
    sub_214B061F0(v41, v38, v43);
    v25(v41, v38);
    v18(v41, v43, v38);
    v15 = sub_214C292AC();
    sub_214C22E98(v41, v49, v38, v15, v24, v60);
    v25(v41, v38);
    sub_214C29D00(v60, v62);
    v25(v43, v38);
    v25(v45, v38);
  }

  sub_214C29E10(v62, v60);
  sub_214C29204();
  sub_214B061F0(v60, v58, v37);
  sub_214C29F20(v60);
  return sub_214C29F20(v62);
}

uint64_t sub_214C25830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FE0, &qword_214CF3D30);
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v19 = v23[8];
  v14 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v15 = &v8 - v14;
  v16 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v14);
  v17 = &v8 - v16;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v16);
  v28 = &v8 - v18;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v21 = &v8 - v20;
  v35 = &v8 - v20;
  v34 = a1;
  sub_214C25B60(2, 2, v6);
  v22 = sub_214B1AB04();
  sub_214B061F0(v28, v25, v21);
  v26 = v23[1];
  v27 = v23 + 1;
  v26(v28, v25);
  v33 = v28;
  v10 = 2;
  sub_214C25B60(2, 0, v17);
  sub_214B061F0(v17, v25, v28);
  v26(v17, v25);
  v9 = v23[2];
  v8 = v23 + 2;
  v9(v17, v21, v25);
  v11 = v32;
  v32[0] = v17;
  v9(v15, v28, v25);
  v32[1] = v15;
  v31[0] = v25;
  v31[1] = v25;
  v29 = v22;
  v30 = v22;
  sub_214C663A4(v11, v10, v31, v12);
  v26(v15, v25);
  v26(v17, v25);
  v26(v28, v25);
  return (v26)(v21, v25);
}

uint64_t sub_214C25B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v17 = a1;
  v19 = a2;
  v25 = sub_214C29794;
  v22 = sub_214C29840;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v10 = *(type metadata accessor for MUIHighlightedMessagesRowView(0) - 8);
  v12 = v10;
  v13 = *(v10 + 64);
  v11 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9[1]);
  v15 = (v9 - v11);
  v30 = v17;
  v29 = v3;
  v28 = v4;
  sub_214C2951C(v4, (v9 - v11));
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v14 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_214C2966C(v15, (v21 + v14));
  v5 = v18;
  v6 = v19;
  v7 = v21;
  *(v21 + v16) = v17;
  *(v7 + v5) = v6;
  v23 = &v26;
  v27 = v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0, &qword_214CEE3D0);
  sub_214B1AC20();
  return sub_214CCF004();
}

uint64_t sub_214C25D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1;
  v9 = a2;
  v23 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37378, &qword_214CF3E10);
  v11 = v31;
  v12 = *(v31 - 8);
  v30 = v12;
  v13 = v12;
  v16 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v7 - v18;
  MEMORY[0x28223BE20](v2);
  v15 = v7 - v18;
  MEMORY[0x28223BE20](v3);
  v34 = v7 - v18;
  v17 = v7 - v18;
  MEMORY[0x28223BE20](v4);
  v28 = v7 - v18;
  v19 = v7 - v18;
  v42 = v7 - v18;
  v41 = v5;
  v35 = v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0, &qword_214CEE3D0);
  v20 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37310, &qword_214CF3980);
  v21 = v25;
  v26 = sub_214B1AC20();
  v22 = v26;
  v27 = sub_214C2935C();
  sub_214CCE9D4();
  v29 = sub_214C2A010();
  sub_214B061F0(v34, v31, v28);
  v32 = *(v30 + 8);
  v33 = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v34, v31);
  v40 = v34;
  v7[1] = v7;
  MEMORY[0x28223BE20](v7);
  v7[-2] = v10;
  sub_214CCE9D4();
  sub_214B061F0(v15, v11, v17);
  v32(v15, v11);
  v8 = *(v13 + 16);
  v7[2] = v13 + 16;
  v8(v15, v19, v11);
  v39[0] = v15;
  v8(v14, v17, v11);
  v39[1] = v14;
  v38[0] = v11;
  v38[1] = v11;
  v36 = v29;
  v37 = v29;
  sub_214C663A4(v39, 2uLL, v38, v9);
  v32(v14, v11);
  v32(v15, v11);
  v32(v17, v11);
  return (v32)(v19, v11);
}

uint64_t sub_214C261D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v12 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FE0, &qword_214CF3D30);
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v18 = v22[8];
  v13 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v14 = v8 - v13;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v13);
  v16 = v8 - v15;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v15);
  v27 = v8 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v20 = v8 - v19;
  v34 = v8 - v19;
  v33 = a1;
  sub_214C25B60(0, 2, v6);
  v21 = sub_214B1AB04();
  sub_214B061F0(v27, v24, v20);
  v25 = v22[1];
  v26 = v22 + 1;
  v25(v27, v24);
  v32 = v27;
  sub_214C25B60(0, 0, v16);
  sub_214B061F0(v16, v24, v27);
  v25(v16, v24);
  v9 = v22[2];
  v8[1] = v22 + 2;
  v9(v16, v20, v24);
  v10 = v31;
  v31[0] = v16;
  v9(v14, v27, v24);
  v31[1] = v14;
  v30[0] = v24;
  v30[1] = v24;
  v28 = v21;
  v29 = v21;
  sub_214C663A4(v10, 2uLL, v30, v11);
  v25(v14, v24);
  v25(v16, v24);
  v25(v27, v24);
  return (v25)(v20, v24);
}

uint64_t sub_214C26500@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v21 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0, &qword_214CEE3D0);
  v11 = *(v17 - 8);
  v12 = v17 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v15 = &v6 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v6);
  v16 = &v6 - v7;
  v21 = &v6 - v7;
  v8 = 0;
  v2 = MUICatchUpFeedbackType.title.getter(0);
  v10 = v20;
  v20[0] = v2;
  v20[1] = v3;
  v4 = sub_214A6BC90();
  v9 = MUICatchUpFeedbackType.imageName(selected:)(v4 & 1);
  sub_214B075A0();
  sub_214CCEFA4();
  v14 = sub_214B1AC20();
  sub_214B061F0(v15, v17, v16);
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v15, v17);
  (*(v11 + 16))(v15, v16, v17);
  sub_214B061F0(v15, v17, v13);
  v19(v15, v17);
  return (v19)(v16, v17);
}

uint64_t sub_214C266F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v12 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FE0, &qword_214CF3D30);
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v18 = v22[8];
  v13 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v14 = v8 - v13;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v13);
  v16 = v8 - v15;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v15);
  v27 = v8 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v20 = v8 - v19;
  v34 = v8 - v19;
  v33 = a1;
  sub_214C25B60(1, 2, v6);
  v21 = sub_214B1AB04();
  sub_214B061F0(v27, v24, v20);
  v25 = v22[1];
  v26 = v22 + 1;
  v25(v27, v24);
  v32 = v27;
  sub_214C25B60(1, 0, v16);
  sub_214B061F0(v16, v24, v27);
  v25(v16, v24);
  v9 = v22[2];
  v8[1] = v22 + 2;
  v9(v16, v20, v24);
  v10 = v31;
  v31[0] = v16;
  v9(v14, v27, v24);
  v31[1] = v14;
  v30[0] = v24;
  v30[1] = v24;
  v28 = v21;
  v29 = v21;
  sub_214C663A4(v10, 2uLL, v30, v11);
  v25(v14, v24);
  v25(v16, v24);
  v25(v27, v24);
  return (v25)(v20, v24);
}

uint64_t sub_214C26A28@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v21 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0, &qword_214CEE3D0);
  v11 = *(v17 - 8);
  v12 = v17 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v15 = &v6 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v6);
  v16 = &v6 - v7;
  v21 = &v6 - v7;
  v8 = 1;
  v2 = MUICatchUpFeedbackType.title.getter(1);
  v10 = v20;
  v20[0] = v2;
  v20[1] = v3;
  v4 = sub_214A6BC90();
  v9 = MUICatchUpFeedbackType.imageName(selected:)(v4 & 1);
  sub_214B075A0();
  sub_214CCEFA4();
  v14 = sub_214B1AC20();
  sub_214B061F0(v15, v17, v16);
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v15, v17);
  (*(v11 + 16))(v15, v16, v17);
  sub_214B061F0(v15, v17, v13);
  v19(v15, v17);
  return (v19)(v16, v17);
}

uint64_t sub_214C26C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for MUIHighlightedMessagesRowView(0);
  swift_getKeyPath();
  return sub_214CCE144();
}

uint64_t sub_214C26D08@<X0>(uint64_t a1@<X8>)
{
  v5 = *(type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0) + 20);
  v3 = sub_214CCCF24();
  return (*(*(v3 - 8) + 16))(a1, v2 + v5);
}

uint64_t sub_214C26DD4@<X0>(uint64_t a1@<X8>)
{
  v51 = &v267;
  v131 = a1;
  v269 = 0;
  v135 = &v267;
  v267 = 0u;
  v268 = 0u;
  v89 = 0;
  v99 = sub_214CCCF24();
  v53 = *(v99 - 8);
  v52 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v99);
  v102 = &v51 - v52;
  v269 = v1;
  v101 = *(v53 + 16);
  v100 = v53 + 16;
  v101(v2);
  v263 = sub_214CCEA64();
  v264 = v3;
  v265 = v4;
  v266 = v5;
  v55 = v263;
  v56 = v3;
  v54 = v4;
  v57 = v5;
  sub_214C26DAC(v263);
  v6 = v70;
  v259 = v55;
  v260 = v56;
  v129 = 1;
  v261 = v54 & 1;
  v262 = v57;
  v109 = 0;
  v255 = sub_214CCE9E4();
  v256 = v7;
  v257 = v8;
  v258 = v9;
  v59 = v255;
  v60 = v7;
  v58 = v8;
  v61 = v9;
  sub_214B072EC(v55, v56, v54 & 1);

  nullsub_1();
  v104 = sub_214C29848();
  v251 = v59;
  v252 = v60;
  v253 = v58 & 1 & v129;
  v254 = v61;
  v103 = &unk_2826E9938;
  v247 = sub_214CCEA04();
  v248 = v10;
  v249 = v11;
  v250 = v12;
  v66 = v247;
  v67 = v10;
  v68 = v11;
  v69 = v12;
  sub_214B072EC(v59, v60, v58 & 1);

  v87 = " ";
  v88 = 1;
  sub_214CCF614(" ", v51);
  sub_214CCE4B4();
  v243 = 0;
  v244 = 0;
  v245 = 0;
  v246 = v129 & 1;
  v239 = sub_214CCEA54();
  v240 = v13;
  v241 = v14;
  v242 = v15;
  v63 = v239;
  v64 = v13;
  v62 = v14;
  v65 = v15;
  v235 = v66;
  v236 = v67;
  v237 = v68 & 1 & v129;
  v238 = v69;
  v231 = v239;
  v232 = v13;
  v233 = v14 & 1 & v129;
  v234 = v15;
  v227 = sub_214CCEA24();
  v228 = v16;
  v229 = v17;
  v230 = v18;
  v83 = v227;
  v84 = v16;
  v85 = v17;
  v86 = v18;
  sub_214B072EC(v63, v64, v62 & 1);

  sub_214B072EC(v66, v67, v68 & 1);

  v98 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(v89);
  v223 = sub_214C27958(*(v6 + *(v98 + 24)) & 1);
  v224 = v19;
  v225 = v20;
  v226 = v21;
  v72 = v223;
  v73 = v19;
  v71 = v20;
  v74 = v21;
  sub_214C26DAC(v223);
  v22 = v70;
  v219 = v72;
  v220 = v73;
  v221 = v71 & 1 & v129;
  v222 = v74;
  v215 = sub_214CCE9E4();
  v216 = v23;
  v217 = v24;
  v218 = v25;
  v76 = v215;
  v77 = v23;
  v75 = v24;
  v78 = v25;
  sub_214B072EC(v72, v73, v71 & 1);

  v214 = sub_214C22D88();
  v210 = v76;
  v211 = v77;
  v212 = v75 & 1 & v129;
  v213 = v78;
  v206 = sub_214CCEA04();
  v207 = v26;
  v208 = v27;
  v209 = v28;
  v80 = v206;
  v81 = v26;
  v79 = v27;
  v82 = v28;
  sub_214B072EC(v76, v77, v75 & 1);

  v202 = v83;
  v203 = v84;
  v204 = v85 & 1 & v129;
  v205 = v86;
  v198 = v80;
  v199 = v81;
  v200 = v79 & 1 & v129;
  v201 = v82;
  v194 = sub_214CCEA24();
  v195 = v29;
  v196 = v30;
  v197 = v31;
  v94 = v194;
  v95 = v29;
  v96 = v30;
  v97 = v31;
  sub_214B072EC(v80, v81, v79 & 1);

  sub_214B072EC(v83, v84, v85 & 1);

  sub_214CCF614(v87, v88, v129 & 1);
  sub_214CCE4B4();
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v193 = v129 & 1;
  v186 = sub_214CCEA54();
  v187 = v32;
  v188 = v33;
  v189 = v34;
  v91 = v186;
  v92 = v32;
  v90 = v33;
  v93 = v34;
  v182 = v94;
  v183 = v95;
  v184 = v96 & 1 & v129;
  v185 = v97;
  v178 = v186;
  v179 = v32;
  v180 = v33 & 1 & v129;
  v181 = v34;
  v174 = sub_214CCEA24();
  v175 = v35;
  v176 = v36;
  v177 = v37;
  v118 = v174;
  v119 = v35;
  v120 = v36;
  v121 = v37;
  sub_214B072EC(v91, v92, v90 & 1);

  sub_214B072EC(v94, v95, v96 & 1);

  (v101)(v102, v22 + *(v98 + 20), v99);
  v170 = sub_214CCEA64();
  v171 = v38;
  v172 = v39;
  v173 = v40;
  v106 = v170;
  v107 = v38;
  v105 = v39;
  v108 = v40;
  nullsub_1();
  v166 = v106;
  v167 = v107;
  v168 = v105 & 1 & v129;
  v169 = v108;
  v162 = sub_214CCEA04();
  v163 = v41;
  v164 = v42;
  v165 = v43;
  v111 = v162;
  v112 = v41;
  v110 = v42;
  v113 = v43;
  sub_214B072EC(v106, v107, v105 & 1);

  sub_214CCE954();
  v158 = v111;
  v159 = v112;
  v160 = v110 & 1 & v129;
  v161 = v113;
  v154 = sub_214CCE9E4();
  v155 = v44;
  v156 = v45;
  v157 = v46;
  v115 = v154;
  v116 = v44;
  v114 = v45;
  v117 = v46;
  sub_214B072EC(v111, v112, v110 & 1);

  v150 = v118;
  v151 = v119;
  v152 = v120 & 1 & v129;
  v153 = v121;
  v146 = v115;
  v147 = v116;
  v148 = v114 & 1 & v129;
  v149 = v117;
  v142 = sub_214CCEA24();
  v143 = v47;
  v144 = v48;
  v145 = v49;
  v122 = v142;
  v123 = v47;
  v124 = v48;
  v125 = v49;
  sub_214B072EC(v115, v116, v114 & 1);

  sub_214B072EC(v118, v119, v120 & 1);

  v126 = v139;
  v139[0] = v122;
  v139[1] = v123;
  v140 = v124 & 1 & v129;
  v141 = v125;
  v132 = MEMORY[0x277CE0BD8];
  v133 = MEMORY[0x277CE0BC8];
  sub_214B061F0(v139, MEMORY[0x277CE0BD8], v135);
  sub_214B07618(v126);
  v127 = v267;
  v128 = v268;
  v130 = *(&v268 + 1);
  sub_214B0755C(v267, *(&v267 + 1), v268 & 1);

  v134 = &v136;
  v136 = v127;
  v137 = v128 & 1 & v129;
  v138 = v130;
  sub_214B061F0(&v136, v132, v131);
  sub_214B07618(v134);
  return sub_214B07618(v135);
}

uint64_t sub_214C27958(char a1)
{
  v22 = 0;
  v23 = a1 & 1;
  if (a1)
  {
    MEMORY[0x277D82BE0](@"text.line.2.summary");
    sub_214CCF564();
    sub_214CCEF54();
    MEMORY[0x277D82BD8](@"text.line.2.summary");
    v16 = sub_214CCEA84();
    v17 = v1;
    v18 = v2;
    v19 = v3;
    v12 = v16;
    v10 = v1;
    v11 = v2;
    sub_214CCF614("Summary", 7, 1);
    v7 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614("Summary Icon Description", 24, 1);
    sub_214B1C228();
    v8 = sub_214CCCF54();
    v9 = v4;

    MEMORY[0x277D82BD8](v7);

    v15[0] = v8;
    v15[1] = v9;
    sub_214B075A0();
    v14 = sub_214CCEA14();
    sub_214A61B48(v15);
    sub_214B072EC(v12, v10, v11 & 1);

    return v14;
  }

  else
  {
    sub_214CCF614("·", 2, 0);
    sub_214CCE4B4();
    v5 = [objc_opt_self() mui_MailUIBundle];
    v20 = "Unicode character that's displayed in place of the summary symbol when the accompanying summary is not a generated summary.";
    v21 = 123;
    return sub_214CCEA54();
  }
}

uint64_t sub_214C27D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v22 = sub_214CCE6E4();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v14 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v23 = &v12 - v14;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v14);
  v19 = &v12 - v15;
  v31 = &v12 - v15;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v18 = &v12 - v16;
  v30 = a1;
  v17 = sub_214CCEEC4();
  v29 = v17;
  sub_214CCE414();
  (*(v20 + 16))(v19, v18, v22);
  sub_214CCE6D4();
  sub_214C298C4();
  v26 = sub_214CCF4A4();
  v24 = *(v20 + 8);
  v25 = v20 + 8;
  v24(v23, v22);
  if (v26)
  {
    v24(v19, v22);

    v27 = v17;
  }

  else
  {
    v24(v19, v22);
    v28 = sub_214CCEEE4();
  }

  v6 = sub_214CCE1C4();
  v7 = v22;
  v8 = v24;
  v9 = v6;
  v10 = v18;
  *v13 = v9;
  v8(v10, v7);
}

uint64_t sub_214C28054(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  v7 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214C3DC18(v7, a2, a3);
  MEMORY[0x277D82BD8](v7);
}

uint64_t sub_214C280F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v8 = a1;
  v4[2] = sub_214C29CE8;
  v4[1] = sub_214C29CF0;
  v21 = 0;
  v20 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0, &qword_214CEE3D0);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v6 = *(v9 + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](sub_214C29CE8);
  v13 = v4 - v5;
  v7 = v5;
  MEMORY[0x28223BE20](v2);
  v14 = v4 - v7;
  v21 = v4 - v7;
  v20 = v8;
  v19 = v8;
  v18 = v8;
  sub_214CCEF84();
  v12 = sub_214B1AC20();
  sub_214B061F0(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_214B061F0(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_214C2830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  v26 = a1;
  v22 = MUICatchUpFeedbackFeature.title.getter(a1);
  v23 = v2;
  sub_214B075A0();
  v18 = sub_214CCEA74();
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v15[0] = v18;
  v15[1] = v3;
  v16 = v4 & 1;
  v17 = v5;
  v11 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v15, MEMORY[0x277CE0BD8], &v24);
  sub_214B07618(v15);
  v7 = v24;
  v8 = v25;
  v9 = *(&v25 + 1);
  sub_214B0755C(v24, *(&v24 + 1), v25 & 1);

  v12 = v7;
  v13 = v8 & 1;
  v14 = v9;
  sub_214B061F0(&v12, v11, a2);
  sub_214B07618(&v12);
  return sub_214B07618(&v24);
}

void sub_214C28470(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[0] = 0;
  v7[1] = a1;
  MUICatchUpFeedbackFeature.imageName.getter(a1);
  v6 = sub_214CCEF54();
  v4 = MEMORY[0x277CE1088];
  sub_214B061F0(&v6, MEMORY[0x277CE1088], v7);
  sub_214A75F80();
  v2 = v7[0];

  v5 = v2;
  sub_214B061F0(&v5, v4, a2);
  sub_214A75F80();
  sub_214A75F80();
}

unint64_t sub_214C28520()
{
  v2 = qword_27CA372A0;
  if (!qword_27CA372A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37268, &qword_214CF3900);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C285A8(uint64_t a1)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372A8, &unk_214CF3930) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v13);
  }

  else
  {
  }

  v6 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v13 + *(v6 + 28)));

  v7 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0, &qword_214CF3940) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(v7);
  v12 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B8, &qword_214CF3948) + 48);
  v9 = sub_214CCCF24();
  v8 = *(*(v9 - 8) + 8);
  v8(v12);
  v3 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0);
  (v8)(v12 + *(v3 + 20), v9);
  v10 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0, &unk_214CF3950) + 36);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220, &unk_214CF36B0) + 28);
  v4 = sub_214CCEF74();
  (*(*(v4 - 8) + 8))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8, &unk_214CF3960);

  return a1;
}

uint64_t type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(uint64_t a1)
{
  v2 = qword_27CA37360;
  if (!qword_27CA37360)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_214C2893C()
{
  v2 = qword_27CA372D0;
  if (!qword_27CA372D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37270, &qword_214CF3908);
    sub_214C28520();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C289E0()
{
  v2 = qword_27CA372D8;
  if (!qword_27CA372D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37278, &qword_214CF3910);
    sub_214C2893C();
    sub_214C1FAB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C28A88(uint64_t a1)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372A8, &unk_214CF3930) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v13);
  }

  else
  {
  }

  v6 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v13 + *(v6 + 28)));

  v7 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0, &qword_214CF3940) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(v7);
  v12 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B8, &qword_214CF3948) + 48);
  v9 = sub_214CCCF24();
  v8 = *(*(v9 - 8) + 8);
  v8(v12);
  v3 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0);
  (v8)(v12 + *(v3 + 20), v9);
  v10 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0, &unk_214CF3950) + 36);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220, &unk_214CF36B0) + 28);
  v4 = sub_214CCEF74();
  (*(*(v4 - 8) + 8))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8, &unk_214CF3960);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37278, &qword_214CF3910);

  return a1;
}

uint64_t sub_214C28DCC(uint64_t a1)
{
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372A8, &unk_214CF3930) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v15);
  }

  else
  {
  }

  v6 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v15 + *(v6 + 28)));

  v7 = a1 + v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0, &qword_214CF3940) + 36);
  v13 = sub_214CCE854();
  v14 = *(*(v13 - 8) + 8);
  v14(v7);
  v12 = a1 + v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B8, &qword_214CF3948) + 48);
  v9 = sub_214CCCF24();
  v8 = *(*(v9 - 8) + 8);
  v8(v12);
  v2 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0);
  (v8)(v12 + *(v2 + 20), v9);
  v10 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0, &unk_214CF3950) + 36);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220, &unk_214CF36B0) + 28);
  v3 = sub_214CCEF74();
  (*(*(v3 - 8) + 8))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8, &unk_214CF3960);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37278, &qword_214CF3910);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37280, &qword_214CF3918);
  (v14)(a1 + *(v4 + 36), v13);
  return a1;
}

unint64_t sub_214C2915C()
{
  v2 = qword_27CA372E8;
  if (!qword_27CA372E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37280, &qword_214CF3918);
    sub_214C289E0();
    sub_214B0B870();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C29204()
{
  v2 = qword_27CA372F0;
  if (!qword_27CA372F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372E0, &qword_214CF3970);
    sub_214C292AC();
    sub_214C293E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C292AC()
{
  v2 = qword_27CA372F8;
  if (!qword_27CA372F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37300, &qword_214CF3978);
    sub_214C2935C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2935C()
{
  v2 = qword_27CA37308;
  if (!qword_27CA37308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37310, &qword_214CF3980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C293E4()
{
  v2 = qword_27CA37318;
  if (!qword_27CA37318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37320, &qword_214CF3988);
    sub_214C29494();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C29494()
{
  v2 = qword_27CA37328;
  if (!qword_27CA37328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37330, &unk_214CF3990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37328);
    return WitnessTable;
  }

  return v2;
}

void *sub_214C2951C(void *a1, void *a2)
{
  v5 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v5;
  v7 = a1[1];

  a2[1] = v7;
  v8 = *(type metadata accessor for MUIHighlightedMessagesRowView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260, &qword_214CF38F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE6E4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v4 = *(a1 + v8);

    *(a2 + v8) = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_214C2966C(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  v5 = *(type metadata accessor for MUIHighlightedMessagesRowView(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260, &qword_214CF38F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE6E4();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v5, a1 + v5, *(*(v7 - 8) + 64));
  }

  return a2;
}

uint64_t sub_214C29794()
{
  v6 = *(type metadata accessor for MUIHighlightedMessagesRowView(0) - 8);
  v1 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v2 = (v1 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + v2);
  v4 = *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_214C28054((v0 + v1), v3, v4);
}

unint64_t sub_214C29848()
{
  v2 = qword_27CA37338;
  if (!qword_27CA37338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C298C4()
{
  v2 = qword_27CA37340;
  if (!qword_27CA37340)
  {
    sub_214CCE6E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C299C8(uint64_t a1)
{
  v5 = type metadata accessor for MUIHighlightedMessage();
  if (v1 <= 0x3F)
  {
    v5 = type metadata accessor for MUIHighlightedMessagesViewModel(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_214C29ACC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_214C29ACC(uint64_t a1)
{
  v5 = qword_27CA37358;
  if (!qword_27CA37358)
  {
    sub_214CCE6E4();
    v4 = sub_214CCE134();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27CA37358);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_214C29BB8(uint64_t a1)
{
  v3 = sub_214CCCF24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_214C29D00(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37370, &qword_214CF3E08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37320, &qword_214CF3988);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37300, &qword_214CF3978);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214C29E10(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37370, &qword_214CF3E08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37320, &qword_214CF3988);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37300, &qword_214CF3978);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214C29F20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37370, &qword_214CF3E08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37320, &qword_214CF3988);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37300, &qword_214CF3978);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_214C2A010()
{
  v2 = qword_27CA37380;
  if (!qword_27CA37380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37378, &qword_214CF3E10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2A0A0()
{
  v2 = qword_27CA373A0;
  if (!qword_27CA373A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372B0, &qword_214CF3940);
    sub_214C201CC();
    sub_214B0B870();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2A148(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v4 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + *(v4 + 28)));

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0, &qword_214CF3940) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(v5);
  return a1;
}

unint64_t sub_214C2A2D0()
{
  v2 = qword_27CA373A8;
  if (!qword_27CA373A8)
  {
    type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2A350(uint64_t a1)
{
  v4 = sub_214CCCF24();
  v3 = *(*(v4 - 8) + 8);
  v3(a1);
  v1 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0);
  (v3)(a1 + *(v1 + 20), v4);
  return a1;
}

unint64_t sub_214C2A3EC()
{
  v2 = qword_27CA373B0;
  if (!qword_27CA373B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372C0, &unk_214CF3950);
    sub_214C2A2D0();
    sub_214C22340();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2A494(uint64_t a1)
{
  v5 = sub_214CCCF24();
  v4 = *(*(v5 - 8) + 8);
  v4(a1);
  v1 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0);
  (v4)(a1 + *(v1 + 20), v5);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0, &unk_214CF3950) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220, &unk_214CF36B0) + 28);
  v2 = sub_214CCEF74();
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

unint64_t sub_214C2A5C0()
{
  v2 = qword_27CA373B8;
  if (!qword_27CA373B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372C8, &unk_214CF3960);
    sub_214C2A3EC();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2A668(uint64_t a1)
{
  v5 = sub_214CCCF24();
  v4 = *(*(v5 - 8) + 8);
  v4(a1);
  v1 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0);
  (v4)(a1 + *(v1 + 20), v5);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0, &unk_214CF3950) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220, &unk_214CF36B0) + 28);
  v2 = sub_214CCEF74();
  (*(*(v2 - 8) + 8))(v6 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8, &unk_214CF3960);

  return a1;
}

unint64_t sub_214C2A7D0()
{
  v2 = qword_27CA373C0;
  if (!qword_27CA373C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37388, &qword_214CF3E18);
    sub_214C2A5C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2A874()
{
  v2 = qword_27CA373C8;
  if (!qword_27CA373C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37390, &qword_214CF3E20);
    sub_214C2A7D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2A918()
{
  v2 = qword_27CA373D0;
  if (!qword_27CA373D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37398, &qword_214CF3E28);
    sub_214C2A874();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373D0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214C2A9BC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70, &qword_214CF3520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v21 = *a1;

    *a2 = v21;
  }

  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MUIHighlightedMessagesAvatarView(0);
  v8 = (a2 + v16[5]);
  v7 = (a1 + v16[5]);
  v6 = *v7;

  *v8 = v6;
  v9 = v7[1];

  v8[1] = v9;
  v12 = (a2 + v16[6]);
  v11 = (a1 + v16[6]);
  v10 = *v11;
  swift_unknownObjectRetain();
  *v12 = v10;
  v13 = v11[1];

  v12[1] = v13;
  v14 = v16[7];
  v15 = *(a1 + v14);
  MEMORY[0x277D82BE0](v15);
  *(a2 + v14) = v15;
  *(a2 + v16[8]) = *(a1 + v16[8]);
  v17 = v16[9];
  v18 = *(a1 + v17);

  *(a2 + v17) = v18;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0, &qword_214CF3940);
  v20 = a2 + *(v3 + 36);
  v19 = a1 + *(v3 + 36);
  v4 = sub_214CCE854();
  (*(*(v4 - 8) + 16))(v20, v19);
  return a2;
}

uint64_t sub_214C2AC44(uint64_t a1, uint64_t a2)
{
  v7 = sub_214CCCF24();
  v8 = *(*(v7 - 8) + 16);
  v8(a2, a1);
  v9 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView(0);
  (v8)(a2 + *(v9 + 20), a1 + *(v9 + 20), v7);
  *(a2 + *(v9 + 24)) = *(a1 + *(v9 + 24));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0, &unk_214CF3950) + 36);
  v11 = *(a1 + v10);

  *(a2 + v10) = v11;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220, &unk_214CF36B0) + 28);
  v2 = sub_214CCEF74();
  (*(*(v2 - 8) + 16))(a2 + v10 + v12, a1 + v10 + v12);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8, &unk_214CF3960) + 36);
  v14 = *(a1 + v13);

  *(a2 + v13) = v14;
  v15 = *(a1 + v13 + 8);

  *(a2 + v13 + 8) = v15;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37388, &qword_214CF3E18);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37390, &qword_214CF3E20);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37398, &qword_214CF3E28);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_214C2AF00@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  type metadata accessor for MUIHighlightedMessagesViewModel(0);
  sub_214C2B5B8();
  v9 = sub_214CCE154();
  v5 = v1;

  __b[0] = v9;
  LOBYTE(__b[1]) = v5 & 1;
  swift_getKeyPath();
  sub_214CCE144();
  sub_214C2B1A8(v11, v12 & 1);
  __b[2] = v11;
  LOBYTE(__b[3]) = v12 & 1;
  v10 = sub_214C2BAEC();
  v6 = v2;
  v8 = v3;

  MEMORY[0x277D82BE0](v8);
  __b[4] = v10;
  LOBYTE(__b[5]) = v6 & 1;
  __b[6] = v8;
  sub_214C2B638(__b);
  result = v9;
  *a1 = v9;
  *(a1 + 8) = v5 & 1;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12 & 1;
  *(a1 + 32) = v10;
  *(a1 + 40) = v6 & 1;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_214C2B0B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  v5 = a1[2];
  v6 = *(a1 + 24);
  sub_214C2B1A8(v5, v6 & 1);
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  v8 = a1[4];
  v9 = *(a1 + 40);

  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v10 = a1[6];
  MEMORY[0x277D82BE0](v10);
  result = a2;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_214C2B1A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_214C2B1DC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v15 = MEMORY[0x277CE0C50];
  v32 = 0;
  v31 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373D8, &qword_214CF3E30);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v4 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v20 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v21 = &v4 - v5;
  v32 = &v4 - v5;
  v31 = v1;
  v6 = __dst;
  v7 = 56;
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  sub_214C2B0B0(__dst, v30);
  v10 = v29;
  memcpy(v29, v6, v7);
  v9 = *v8;

  v12 = type metadata accessor for MUIHighlightedMessagesViewModel(0);
  v13 = sub_214C2B53C();
  v14 = sub_214C2B5B8();
  v11 = &unk_2826E9A58;
  sub_214CCEB54();

  sub_214C2B638(v10);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_214B061F0(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

unint64_t sub_214C2B53C()
{
  v2 = qword_27CA373E0;
  if (!qword_27CA373E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2B5B8()
{
  v2 = qword_280C7D950;
  if (!qword_280C7D950)
  {
    type metadata accessor for MUIHighlightedMessagesViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2B638(uint64_t a1)
{

  sub_214C2B698(*(a1 + 16), *(a1 + 24) & 1);

  MEMORY[0x277D82BD8](*(a1 + 48));
  return a1;
}

uint64_t sub_214C2B698(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_214C2B6CC()
{
  v3 = 0;
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  sub_214C2B0B0(__dst, v2);
  sub_214C2B72C();
  return sub_214C2B638(__dst);
}

double sub_214C2B72C()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);

  MEMORY[0x277D82BE0](v4);
  sub_214C2E5EC(v3, v2 & 1, v4);

  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

void *sub_214C2B7C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_214C2AF00(&v5);
  __src[0] = a1;
  __src[1] = v5;
  LOBYTE(__src[2]) = v6 & 1;
  __src[3] = v7;
  LOBYTE(__src[4]) = v8 & 1;
  __src[5] = v9;
  LOBYTE(__src[6]) = v10 & 1;
  __src[7] = v11;
  return memcpy(a2, __src, 0x40uLL);
}

uint64_t sub_214C2B8AC()
{
  v4 = *v0;
  v5 = *(v0 + 8);
  sub_214C2E668(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373E8, &qword_214CF3E38);
  sub_214CCE124();
  sub_214A75F80();
  return v2;
}

uint64_t sub_214C2B934()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_214C2B970(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

double sub_214C2B9C0()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_214C2E6BC(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373F0, &qword_214CF3E40);
  sub_214CCE124();
  sub_214C2E714(&v4);
  return v2;
}

uint64_t sub_214C2BA48()
{
  v2 = *(v0 + 16);
  sub_214C2B1A8(v2, *(v0 + 24) & 1);
  return v2;
}

uint64_t sub_214C2BA88(uint64_t a1, char a2)
{
  sub_214C2B1A8(a1, a2 & 1);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  sub_214C2B698(v3, v4 & 1);
  return sub_214C2B698(a1, a2 & 1);
}

uint64_t sub_214C2BAEC()
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  type metadata accessor for MUIHighlightedMessagesViewModel(0);
  sub_214C2B5B8();
  v2 = sub_214CCE154();
  v3 = v0;

  v5 = v2;
  LOBYTE(v6) = v3 & 1;
  v4 = sub_214C161F0();
  MEMORY[0x277D82BE0](v4);
  v7 = v4;
  sub_214C2F374(&v5);
  return v2;
}

uint64_t sub_214C2BBBC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);

  MEMORY[0x277D82BE0](v3);
  return v2;
}

uint64_t sub_214C2BC30@<X0>(uint64_t a1@<X8>)
{
  v33 = v69;
  v56 = a1;
  v29 = sub_214C2F164;
  memset(&v70[16], 0, 24);
  v21 = 0;
  v46 = sub_214CCE7B4();
  v14 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v49 = (&v13 - v14);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373F8, &qword_214CF3E48);
  v15 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v40 = &v13 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37400, &qword_214CF3E50);
  v16 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v50 = &v13 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37408, &qword_214CF3E58);
  v17 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v55 = &v13 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37410, &qword_214CF3E60);
  v18 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v59 = &v13 - v18;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v13 - v18);
  v3 = v33;
  v60 = &v13 - v19;
  *(v33 + 7) = &v13 - v19;
  *(v3 + 6) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418, &qword_214CF3E68);
  v4 = swift_allocBox();
  v5 = v33;
  v61 = v4;
  v22 = v6;
  *(v33 + 5) = v6;
  v7 = *v1;
  v20 = &v76;
  *(v5 + 72) = v7;
  v77 = *(v1 + 8);
  sub_214C2E668(&v76, v70);
  *(v33 + 1) = *(v33 + 72);
  v69[16] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373E8, &qword_214CF3E38);
  sub_214CCE124();
  v24 = *v33;
  sub_214A75F80();
  v23 = type metadata accessor for MUIHighlightedMessagesViewModel(v21);
  sub_214C2B5B8();
  sub_214CCF144();
  v31 = sub_214CCE534();
  v25 = sub_214C2C3B4(v61);
  v26 = v71;
  sub_214C3518C(v71);

  v27 = __dst;
  v42 = 80;
  memcpy(__dst, v26 + 5, sizeof(__dst));
  sub_214C21934(__dst, &v68);
  sub_214C14F3C(v26);
  v28 = *(v33 + 71);
  sub_214C219C8(v27);

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37420, &qword_214CF3E70);
  sub_214C2F16C();
  sub_214CCF064();

  v8 = v32;
  v9 = v33;
  *(v33 + 29) = *(v32 + 32);
  *(v9 + 60) = *(v8 + 48);
  sub_214C2F1F4(v74, &v67);
  v10 = *(v33 + 29);
  v39 = &v65;
  v65 = v10;
  v66 = *(v33 + 60);
  v36 = sub_214C2F270();
  v37 = sub_214C2F2F8();
  v35 = &unk_2826E9AE0;
  v38 = sub_214C2E5C4(v34, &unk_2826E9AE0);
  sub_214CCEAD4();
  sub_214C2F374(v39);
  sub_214A9F0F0(v40);
  v41 = sub_214C2C3B4(v61);
  v43 = v72;
  sub_214C3518C(v72);

  v44 = v73;
  memcpy(v73, v43 + 5, v42);
  sub_214C21934(v73, &v64);
  sub_214C14F3C(v43);
  sub_214C333A4(v49);
  sub_214C219C8(v44);
  v47 = sub_214C2F3B4();
  v48 = sub_214C2F4E4();
  v63 = sub_214B07A90();
  v62 = v63;
  sub_214CCEE04();
  sub_214C2F564(v49);
  sub_214A9F244(v50);
  v54 = *MEMORY[0x277D258E0];
  MEMORY[0x277D82BE0](v54);
  v52 = sub_214CCF564();
  v53 = v11;
  sub_214C2F5E0();
  sub_214CCECC4();

  MEMORY[0x277D82BD8](v54);
  sub_214A9F3DC(v55);
  v58 = sub_214C2F710();
  sub_214B061F0(v59, v57, v60);
  sub_214A9F5F4(v59);
  sub_214A9F854(v60, v59);
  sub_214B061F0(v59, v57, v56);
  sub_214A9F5F4(v59);
  sub_214A9F5F4(v60);
}

uint64_t sub_214C2C294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v4 = a1;
  v11 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418, &qword_214CF3E68);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v2 = &v4 - v5;
  v9 = &v4 - v5;
  v11 = swift_projectBox();
  (*(v7 + 16))(v2, v11, v10);
  sub_214CCF134();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_214C2C3B4(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418, &qword_214CF3E68);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v1 = &v3 - v5;
  v8 = &v3 - v5;
  v12 = swift_projectBox();
  (*(v6 + 16))(v1, v12, v9);
  sub_214CCF114();
  v10 = v11;
  (*(v6 + 8))(v8, v9);
  return v10;
}

uint64_t sub_214C2C4DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418, &qword_214CF3E68);
  swift_projectBox();

  swift_beginAccess();
  sub_214CCF124();
  swift_endAccess();
}

uint64_t sub_214C2C594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v53 = a1;
  v34 = MEMORY[0x277CDEAE8];
  v50 = sub_214C304D4;
  v65 = MEMORY[0x277CDEF88];
  v73 = MEMORY[0x277CDEB28];
  v79 = MEMORY[0x277CDEC30];
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v21 = 0;
  v62 = sub_214CCE284();
  v55 = *(v62 - 8);
  v56 = v62 - 8;
  v12 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v57 = &v11 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418, &qword_214CF3E68);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v13 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v45 = &v11 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374D8, &qword_214CF4408);
  v58 = *(v61 - 8);
  v59 = v61 - 8;
  v14 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v60 = &v11 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374E0, &qword_214CF4410);
  v66 = *(v69 - 8);
  v67 = v69 - 8;
  v15 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v68 = &v11 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374E8, &qword_214CF4418);
  v16 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v70 = &v11 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374F0, &unk_214CF4420);
  v74 = *(v77 - 8);
  v75 = v77 - 8;
  v17 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77);
  v76 = &v11 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37460, &qword_214CF3E98);
  v81 = *(v90 - 8);
  v82 = v90 - 8;
  v18 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v88 = &v11 - v18;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v93 = &v11 - v19;
  v102 = &v11 - v19;
  v38 = sub_214CCE504();
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v20 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v37 = &v11 - v20;
  v30 = sub_214CCE834();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v22 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v29 = &v11 - v22;
  v32 = type metadata accessor for MUIHighlightedMessagesHeaderView(v4);
  v23 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v5 = (&v11 - v23);
  v31 = &v11 - v23;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448, &qword_214CF3E80);
  v39 = *(v42 - 8);
  v40 = v42 - 8;
  v24 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v41 = &v11 - v24;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450, &qword_214CF3E88);
  v25 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v89 = &v11 - v25;
  v26 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v94 = &v11 - v26;
  v101 = &v11 - v26;
  v100 = swift_projectBox();
  v8 = sub_214C2C3B4(v53);
  sub_214C20DDC(v8, v5);
  sub_214CCE824();
  v33 = sub_214C3029C();
  sub_214CCEC64();
  (*(v27 + 8))(v29, v30);
  sub_214C3031C(v31);
  sub_214CCE4F4();
  v99[6] = v32;
  v99[7] = v33;
  v80 = 1;
  swift_getOpaqueTypeConformance2();
  sub_214CCECA4();
  v9 = v45;
  (*(v35 + 8))(v37, v38);
  (*(v39 + 8))(v41, v42);
  v84 = sub_214C303E4();
  sub_214B061F0(v89, v83, v94);
  sub_214A9FD90(v89);
  sub_214C2C294(v53, v9);
  KeyPath = swift_getKeyPath();
  sub_214CCF154();
  v47 = v99[3];
  v48 = v99[4];
  v49 = v99[5];
  (*(v43 + 8))(v45, v46);
  v52 = v99;
  v99[0] = v47;
  v99[1] = v48;
  v99[2] = v49;

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37508, &qword_214CF4458);
  sub_214C304DC();
  sub_214CCE9C4();

  sub_214C2E5AC();
  v63 = sub_214C30564();
  v64 = MEMORY[0x277CDD980];
  sub_214CCEE34();
  (*(v55 + 8))(v57, v62);
  (*(v58 + 8))(v60, v61);
  v98[6] = v61;
  v98[7] = v62;
  v98[8] = v63;
  v98[9] = v64;
  swift_getOpaqueTypeConformance2();
  sub_214CCEE14();
  (*(v66 + 8))(v68, v69);
  v72 = sub_214C305EC();
  sub_214CCEC74();
  sub_214A9FE84(v70);
  v98[4] = v71;
  v98[5] = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214CCECD4();
  (*(v74 + 8))(v76, v77);
  v98[2] = v77;
  v98[3] = OpaqueTypeConformance2;
  v85 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v88, v90, v93);
  v92 = *(v81 + 8);
  v91 = v81 + 8;
  v92(v88, v90);
  sub_214A9FEEC(v94, v89);
  v87 = v98;
  v98[0] = v89;
  (*(v81 + 16))(v88, v93, v90);
  v98[1] = v88;
  v97[0] = v83;
  v97[1] = v90;
  v95 = v84;
  v96 = v85;
  sub_214C663A4(v87, 2uLL, v97, v86);
  v92(v88, v90);
  sub_214A9FD90(v89);
  v92(v93, v90);
  return sub_214A9FD90(v94);
}