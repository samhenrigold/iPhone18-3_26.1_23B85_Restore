void sub_2516D7B34(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    sub_2516D7BB0(a1, a3, a4);
  }

  else
  {
    (a3)(0, a2);
  }
}

void sub_2516D7BB0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F453888 != -1)
  {
    swift_once();
  }

  v4 = sub_251702F84();
  __swift_project_value_buffer(v4, static Logger.testVerification);
  v5 = a1;
  v6 = sub_251702F64();
  v7 = sub_251703324();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
    v11 = sub_251703194();
    v13 = sub_251693FCC(v11, v12, aBlock);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_25167E000, v6, v7, "Failed to receive test metadata %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2530803C0](v9, -1, -1);
    MEMORY[0x2530803C0](v8, -1, -1);
  }

  _s3__C4CodeOMa_0(0);
  aBlock[0] = 1;
  sub_2516D8D8C(&qword_27F453B98, _s3__C4CodeOMa_0, &unk_251707D64);
  if (sub_251702CA4())
  {
    v14 = a1;
    v15 = sub_251702F64();
    v16 = sub_251703324();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
    v20 = sub_251703194();
    v22 = sub_251693FCC(v20, v21, aBlock);

    *(v17 + 4) = v22;
    v23 = "Test Verification Unknown error %s";
  }

  else
  {
    aBlock[0] = 5;
    v24 = sub_251702CA4();
    v25 = a1;
    v15 = sub_251702F64();
    v16 = sub_251703324();

    v26 = os_log_type_enabled(v15, v16);
    if (v24)
    {
      if (!v26)
      {
        goto LABEL_14;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v27 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v28 = sub_251703194();
      v30 = sub_251693FCC(v28, v29, aBlock);

      *(v17 + 4) = v30;
      v23 = "Verification Code Invalid error: %s";
    }

    else
    {
      if (!v26)
      {
        goto LABEL_14;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v31 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v32 = sub_251703194();
      v34 = sub_251693FCC(v32, v33, aBlock);

      *(v17 + 4) = v34;
      v23 = "Unhandled Test Verification error: %s";
    }
  }

  _os_log_impl(&dword_25167E000, v15, v16, v23, v17, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x2530803C0](v18, -1, -1);
  MEMORY[0x2530803C0](v17, -1, -1);
LABEL_14:

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v35 = sub_251703134();

  v36 = sub_251703134();

  v37 = [objc_opt_self() alertControllerWithTitle:v35 message:v36 preferredStyle:{1, 0xE000000000000000}];

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v38 = swift_allocObject();
  v38[2] = a2;
  v38[3] = a3;
  v38[4] = a1;
  v39 = a1;

  v40 = sub_251703134();

  aBlock[4] = sub_2516CF848;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25169F470;
  aBlock[3] = &block_descriptor_43;
  v41 = _Block_copy(aBlock);

  v42 = [objc_opt_self() actionWithTitle:v40 style:0 handler:{v41, 0xE000000000000000}];
  _Block_release(v41);

  [v37 addAction_];
  [v48 presentViewController:v37 animated:1 completion:0];
  v43 = *&v48[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView];
  if (v43)
  {
    v44 = v43;
    v45 = sub_251703134();
    [v44 setStringValue_];
  }
}

uint64_t sub_2516D8324(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_251702E64();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a2(v5);
  return sub_25168B718(v5, &qword_27F454000, &unk_251708500);
}

id VerificationCodeEntryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_251703134();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

unint64_t sub_2516D8518(uint64_t a1)
{
  sub_251703164();
  sub_2517036E4();
  sub_2517031A4();
  v2 = sub_251703724();

  return sub_2516D88C4(a1, v2);
}

unint64_t sub_2516D85A8(uint64_t a1)
{
  sub_2517036E4();
  type metadata accessor for CFString(0);
  sub_2516D8D8C(&qword_27F4544C0, type metadata accessor for CFString, &unk_251707C10);
  sub_251702F44();
  v2 = sub_251703724();

  return sub_2516D86E4(a1, v2);
}

unint64_t sub_2516D865C(uint64_t a1)
{
  v2 = sub_2517033A4();

  return sub_2516D87F0(a1, v2);
}

unint64_t sub_2516D86A0(uint64_t a1)
{
  v2 = sub_2517034B4();

  return sub_2516D89C8(a1, v2);
}

unint64_t sub_2516D86E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2516D8D8C(&qword_27F4544C0, type metadata accessor for CFString, &unk_251707C10);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251702F34();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2516D87F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25168CD90(0, &qword_27F453DF0, 0x277CC5C98);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2517033B4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2516D88C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_251703164();
      v8 = v7;
      if (v6 == sub_251703164() && v8 == v9)
      {
        break;
      }

      v11 = sub_251703624();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2516D89C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2516D8A90(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25307F890](v9, a1);
      sub_2516CF794(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_2516D8AEC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v3 = sub_251702C94();
  v5 = v4;
  v6 = [objc_opt_self() systemBackgroundColor];
  v7 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *(v1 + v2) = LoadingStatusView.init(with:backgroundColor:)(v3, v5, v6);
  *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView) = 0;
  *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView) = 0;
  *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_keyboardHeight) = 0;
  sub_251703584();
  __break(1u);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2516D8C84()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_2516D4AC0();
}

uint64_t sub_2516D8CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516D8D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id VerificationFinishedViewController.init(flow:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_primaryButton;
  *&v3[v7] = [objc_opt_self() boldButton];
  v8 = &v3[OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_flow];
  *v8 = a1;
  *(v8 + 1) = a2;
  if (!a1)
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    swift_beginAccess();
    if (static ENUIPublicHealthAgencyModel.activeRegion)
    {
      v9 = *(static ENUIPublicHealthAgencyModel.activeRegion + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8);
      v25 = *(static ENUIPublicHealthAgencyModel.activeRegion + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);

      sub_251702C94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_251708520;
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = sub_25169F41C();
      *(v10 + 32) = v25;
      *(v10 + 40) = v9;
      sub_251703184();
    }

    else
    {
      v26 = ObjectType;
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v11 = sub_251702F84();
      __swift_project_value_buffer(v11, static Logger.general);
      v12 = sub_251702F64();
      v13 = sub_251703324();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_25167E000, v12, v13, "No active region found, presenting non-cobranded thank you screen instead", v14, 2u);
        MEMORY[0x2530803C0](v14, -1, -1);
      }

      sub_251702C94();
      ObjectType = v26;
    }

    goto LABEL_17;
  }

  swift_unknownObjectRetain_n();
  if (sub_25168A810())
  {
    type metadata accessor for VerificationOnboardingFlow(0);
    if (swift_dynamicCastClass())
    {
      if (qword_28151EB58 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_28151EB58 == -1)
    {
LABEL_11:
      sub_251702C94();
      sub_251702C94();
      swift_unknownObjectRelease();
LABEL_17:
      v15 = sub_251703134();

      v16 = sub_251703134();

      v17 = sub_251703134();
      v18 = [objc_opt_self() systemImageNamed_];

      v27.receiver = v3;
      v27.super_class = ObjectType;
      v19 = objc_msgSendSuper2(&v27, sel_initWithTitle_detailText_icon_contentLayout_, v15, v16, v18, 3);

      v20 = v19;
      v21 = [v20 headerView];
      v22 = [objc_opt_self() systemPinkColor];
      [v21 setTintColor_];

      swift_unknownObjectRelease();
      return v20;
    }

    swift_once();
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
  v24 = sub_251703194();
  MEMORY[0x25307F580](v24);

  result = sub_251703584();
  __break(1u);
  return result;
}

id VerificationFinishedViewController.init(regionDisplayName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_primaryButton;
  *&v2[v5] = [objc_opt_self() boldButton];
  v6 = &v2[OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_flow];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_251708520;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_25169F41C();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    sub_251703184();
  }

  else
  {

    sub_251702C94();
  }

  sub_251702C94();
  v8 = sub_251703134();

  v9 = sub_251703134();

  v10 = sub_251703134();
  v11 = [objc_opt_self() systemImageNamed_];

  v18.receiver = v2;
  v18.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v8, v9, v11, 3);

  v13 = v12;
  v14 = [v13 headerView];
  v15 = [objc_opt_self() systemPinkColor];
  [v14 setTintColor_];

  return v13;
}

Swift::Void __swiftcall VerificationFinishedViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_2516D98C8();
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];
}

void sub_2516D98C8()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_primaryButton];
  v2 = sub_251703134();
  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];

  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;

    v6 = [objc_opt_self() systemGroupedBackgroundColor];
    [v5 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id VerificationFinishedViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id VerificationFinishedViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id VerificationFinishedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VerificationFinishedViewController.step.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_flow))
  {
    return 15;
  }

  type metadata accessor for VerificationOnboardingFlow(0);
  if (swift_dynamicCastClass())
  {
    return 15;
  }

  type metadata accessor for PreAuthorizationFlow(0);
  if (swift_dynamicCastClass())
  {
    return 20;
  }

  v2 = qword_27F453878;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_251702F84();
  __swift_project_value_buffer(v3, static Logger.general);
  swift_unknownObjectRetain();
  v4 = sub_251702F64();
  v5 = sub_251703324();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v8 = sub_251703194();
    v10 = sub_251693FCC(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25167E000, v4, v5, "Incorrect flow for VerificationFinishedViewController: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2530803C0](v7, -1, -1);
    MEMORY[0x2530803C0](v6, -1, -1);
  }

  result = sub_251703584();
  __break(1u);
  return result;
}

double sub_2516DA110(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_251702DC4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_2516C47D0(v6, v10);

  return result;
}

id OnboardingHeaderView.__allocating_init(header:insets:proxyDisabled:corners:)(void *a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageView;
  *&v16[v17] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageViewWidthConstraint] = 0;
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_labelContainerLeadingConstraint] = 0;
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageWidthConstraint] = 0;
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageHeightConstraint] = 0;
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header] = a1;
  v18 = &v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets];
  *v18 = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_proxyDisabled] = a2;
  v25.receiver = v16;
  v25.super_class = v8;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2516DA6E8();
  v21 = [v20 layer];
  [v21 setCornerRadius_];

  v22 = [v20 layer];
  [v22 setCornerCurve_];

  v23 = [v20 layer];
  [v23 setMaskedCorners_];

  return v20;
}

id OnboardingHeaderView.init(header:insets:proxyDisabled:corners:)(void *a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageView;
  *&v7[v15] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageViewWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_labelContainerLeadingConstraint] = 0;
  *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageHeightConstraint] = 0;
  *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header] = a1;
  v16 = &v7[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets];
  *v16 = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v7[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_proxyDisabled] = a2;
  v23.receiver = v7;
  v23.super_class = type metadata accessor for OnboardingHeaderView();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2516DA6E8();
  v19 = [v18 layer];
  [v19 setCornerRadius_];

  v20 = [v18 layer];
  [v20 setCornerCurve_];

  v21 = [v18 layer];
  [v21 setMaskedCorners_];

  return v18;
}

void sub_2516DA6E8()
{
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header];
  [v0 setBackgroundColor_];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  [v2 setTextAlignment_];
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor;
  [v2 setTextColor_];
  v4 = *MEMORY[0x277D76A28];
  v5 = *MEMORY[0x277D743F8];
  v6 = sub_2516C19DC(*MEMORY[0x277D76A28], *MEMORY[0x277D743F8], 0, 0x8000, 0, 0);
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];

  v7 = sub_251703134();

  [v2 setText_];

  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setNumberOfLines_];
  [v12 setTextAlignment_];
  [v12 setTextColor_];
  v8 = sub_2516C19DC(v4, v5, 0, 0x8000, 0, 0);
  [v12 setFont_];

  [v12 setAdjustsFontForContentSizeCategory_];

  v9 = sub_251703134();

  [v12 setText_];

  v10 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageView];
  [v10 setContentMode_];
  v11 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style);
  if ((v11 - 1) >= 3)
  {
    if (v11)
    {
      sub_251703634();
      __break(1u);
      return;
    }

    sub_2516DACB0(v2, v12, v10);
  }

  else
  {
    [v2 setAlpha_];
    [v12 setAlpha_];
    sub_2516DB734(v10);
  }

  sub_2516DC6B0();
}

void sub_2516DAA2C()
{
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header];
  [v0 setBackgroundColor_];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  [v2 setTextAlignment_];
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor;
  [v2 setTextColor_];
  v4 = *MEMORY[0x277D76A28];
  v5 = *MEMORY[0x277D743F8];
  v6 = sub_2516C19DC(*MEMORY[0x277D76A28], *MEMORY[0x277D743F8], 0, 0x8000, 0, 0);
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];

  v7 = sub_251703134();

  [v2 setText_];

  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setNumberOfLines_];
  [v10 setTextAlignment_];
  [v10 setTextColor_];
  v8 = sub_2516C19DC(v4, v5, 0, 0x8000, 0, 0);
  [v10 setFont_];

  [v10 setAdjustsFontForContentSizeCategory_];

  v9 = sub_251703134();

  [v10 setText_];

  sub_2516DBED0(v2, v10);
}

void sub_2516DACB0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v96 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  inited = swift_initStackObject();
  *(inited + 32) = a3;
  *(inited + 16) = xmmword_2517068A0;
  *(inited + 40) = v11;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v13 = inited & 0xC000000000000001;
  v14 = a3;
  v99 = v11;
  v100 = a1;
  v101 = a2;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  for (i = v14; ; i = MEMORY[0x25307F910](0, inited))
  {
    v16 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addSubview_];

    if (v13)
    {
      v17 = MEMORY[0x25307F910](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_22;
      }

      v17 = *(inited + 40);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addSubview_];

    if (v13)
    {
      v19 = MEMORY[0x25307F910](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_22;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addSubview_];

    if (v13)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v21 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v21 = MEMORY[0x25307F910](3, inited);
LABEL_13:
  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = v99;
  [v99 addSubview_];
  [v23 addSubview_];
  sub_25169479C(*&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header] + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL, v10);
  v24 = sub_251702DA4();
  v25 = (*(*(v24 - 8) + 48))(v10, 1, v24);
  sub_2516B5AC4(v10);
  v26 = [v14 widthAnchor];
  v27 = v26;
  if (v25 == 1)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 62.0;
  }

  if (v25 == 1)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 16.0;
  }

  v30 = [v26 constraintEqualToConstant_];

  v31 = OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageViewWidthConstraint;
  v32 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageViewWidthConstraint];
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageViewWidthConstraint] = v30;

  v33 = [v23 leadingAnchor];
  v34 = [v14 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:v29];

  v36 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_labelContainerLeadingConstraint];
  v97 = OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_labelContainerLeadingConstraint;
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_labelContainerLeadingConstraint] = v35;

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_251709350;
  v38 = [v14 leadingAnchor];
  v39 = [v4 leadingAnchor];
  v40 = &v4[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets];
  v41 = [v38 constraintEqualToAnchor:v39 constant:*&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets + 8]];

  *(v37 + 32) = v41;
  v42 = [v14 centerYAnchor];
  v43 = [v4 centerYAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v37 + 40) = v44;
  v45 = [v14 heightAnchor];
  v46 = [v45 constraintEqualToConstant_];

  *(v37 + 48) = v46;
  v47 = *&v4[v31];
  if (v47)
  {
    *(v37 + 56) = v47;
    v48 = v47;
    v49 = [v14 topAnchor];
    v50 = [v4 topAnchor];
    v51 = *v40;
    v52 = [v49 constraintGreaterThanOrEqualToAnchor:v50 constant:*v40];

    *(v37 + 64) = v52;
    v53 = [v14 bottomAnchor];
    v54 = [v4 bottomAnchor];
    v55 = -v40[2];
    v56 = [v53 constraintLessThanOrEqualToAnchor:v54 constant:v55];

    *(v37 + 72) = v56;
    v57 = [v23 topAnchor];
    v58 = [v4 topAnchor];
    v59 = [v57 constraintGreaterThanOrEqualToAnchor:v58 constant:v51];

    *(v37 + 80) = v59;
    v60 = [v23 bottomAnchor];
    v61 = [v4 bottomAnchor];
    v62 = [v60 constraintLessThanOrEqualToAnchor:v61 constant:v55];

    *(v37 + 88) = v62;
    v63 = *&v4[v97];
    if (v63)
    {
      v98 = objc_opt_self();
      *(v37 + 96) = v63;
      v64 = v63;
      v65 = [v23 trailingAnchor];
      v66 = v23;
      v67 = [v4 trailingAnchor];
      v68 = [v65 constraintEqualToAnchor:v67 constant:-v40[3]];

      *(v37 + 104) = v68;
      v69 = [v66 centerYAnchor];
      v70 = [v4 centerYAnchor];
      v71 = [v69 constraintEqualToAnchor_];

      *(v37 + 112) = v71;
      v72 = v100;
      v73 = [v100 topAnchor];
      v74 = [v66 topAnchor];
      v75 = [v73 constraintGreaterThanOrEqualToAnchor_];

      *(v37 + 120) = v75;
      v76 = [v72 leadingAnchor];
      v77 = [v66 leadingAnchor];
      v78 = [v76 constraintEqualToAnchor_];

      *(v37 + 128) = v78;
      v79 = [v72 trailingAnchor];
      v80 = [v66 trailingAnchor];
      v81 = [v79 constraintEqualToAnchor_];

      *(v37 + 136) = v81;
      v82 = v101;
      v83 = [v101 topAnchor];
      v84 = [v72 bottomAnchor];
      v85 = [v83 constraintEqualToAnchor_];

      *(v37 + 144) = v85;
      v86 = [v82 leadingAnchor];
      v87 = [v72 leadingAnchor];
      v88 = [v86 constraintEqualToAnchor_];

      *(v37 + 152) = v88;
      v89 = [v82 trailingAnchor];
      v90 = [v72 trailingAnchor];
      v91 = [v89 constraintEqualToAnchor_];

      *(v37 + 160) = v91;
      v92 = [v82 bottomAnchor];
      v93 = [v66 bottomAnchor];
      v94 = [v92 constraintEqualToAnchor_];

      *(v37 + 168) = v94;
      sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
      v95 = sub_2517031F4();

      [v98 activateConstraints_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2516DB734(void *a1)
{
  v2 = v1;
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [a1 widthAnchor];
  v5 = [a1 image];
  if (v5)
  {
    v6 = v5;
    [v5 size];
    v8 = v7;
  }

  else
  {
    v8 = 287.0;
  }

  v9 = [v4 constraintEqualToConstant_];

  v10 = [a1 heightAnchor];
  v11 = [a1 image];
  if (v11)
  {
    v12 = v11;
    [v11 size];
    v14 = v13;
  }

  else
  {
    v14 = 62.0;
  }

  v15 = [v10 constraintEqualToConstant_];

  v16 = *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageWidthConstraint];
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageWidthConstraint] = v9;
  v53 = v9;

  v17 = *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageHeightConstraint];
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageHeightConstraint] = v15;
  v18 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2517068A0;
  v20 = [a1 topAnchor];
  v21 = [v2 topAnchor];
  v22 = &v2[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets];
  v23 = [v20 constraintEqualToAnchor:v21 constant:*&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets]];

  *(v19 + 32) = v23;
  v24 = [a1 bottomAnchor];
  v25 = [v2 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-v22[2]];

  *(v19 + 40) = v26;
  *(v19 + 48) = v53;
  *(v19 + 56) = v18;
  v27 = *(*&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header] + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style);
  if (v27 > 2)
  {
    if (v27 == 3)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_251707F60;
      v35 = v53;
      v36 = v18;
      v37 = [a1 leftAnchor];
      v38 = [v2 leftAnchor];
      v39 = [v37 constraintEqualToAnchor:v38 constant:-v22[3]];

      *(inited + 32) = v39;
      v40 = [a1 rightAnchor];
      v41 = [v2 rightAnchor];
      v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:v22[1]];
LABEL_16:
      v48 = v42;

      *(inited + 40) = v48;
      sub_2516DBDD8(inited, sub_2516DE1E8);
LABEL_17:
      LODWORD(v33) = 1148846080;
      [a1 setContentHuggingPriority:0 forAxis:v33];
      [v2 addSubview_];
      v49 = objc_opt_self();
      sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
      v50 = sub_2517031F4();

      [v49 activateConstraints_];

      return;
    }
  }

  else
  {
    switch(v27)
    {
      case 1:
        v28 = v53;
        v29 = v18;
        v30 = [a1 centerXAnchor];
        v31 = [v2 centerXAnchor];
        v32 = [v30 constraintEqualToAnchor_];

        MEMORY[0x25307F5B0]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_251703224();
        }

        sub_251703244();
        goto LABEL_17;
      case 2:
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_251707F60;
        v43 = v53;
        v44 = v18;
        v45 = [a1 leftAnchor];
        v46 = [v2 leftAnchor];
        v47 = [v45 constraintEqualToAnchor:v46 constant:v22[1]];

        *(inited + 32) = v47;
        v40 = [a1 rightAnchor];
        v41 = [v2 rightAnchor];
        v42 = [v40 constraintLessThanOrEqualToAnchor:v41 constant:-v22[3]];
        goto LABEL_16;
      case 0:
        sub_251703584();
        __break(1u);
        break;
    }
  }

  v51 = v53;
  v52 = v18;
  sub_251703634();
  __break(1u);
}

uint64_t sub_2516DBDD8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_251703474();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_251703474();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2516DE040(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2516DBED0(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v3 subviews];
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v7 = sub_251703214();

  if (v7 >> 62)
  {
    v8 = sub_251703474();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      if (v8 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x25307F910](i, v7);
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        v11 = v10;
        [v10 removeFromSuperview];
      }
    }
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251707F70;
  *(inited + 32) = v12;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  v14 = inited & 0xC000000000000001;
  v15 = v12;
  v62 = a1;
  v63 = a2;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (j = v15; ; j = MEMORY[0x25307F910](0, inited))
  {
    v17 = j;
    [j setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 addSubview_];

    if (v14)
    {
      v18 = MEMORY[0x25307F910](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_20;
      }

      v18 = *(inited + 40);
    }

    v19 = v18;
    [v18 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 addSubview_];

    if (v14)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v20 = *(inited + 48);
      goto LABEL_19;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v20 = MEMORY[0x25307F910](2, inited);
LABEL_19:
  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v15 addSubview_];
  [v15 addSubview_];
  v61 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251709360;
  v23 = [v15 leadingAnchor];
  v24 = [v3 &selRef_setBackBarButtonItem_ + 1];
  v25 = &v3[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets];
  v26 = [v23 constraintEqualToAnchor:v24 constant:*&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets + 8]];

  *(v22 + 32) = v26;
  v27 = [v15 topAnchor];
  v28 = [v3 &selRef_navigationController];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28 constant:*v25];

  *(v22 + 40) = v29;
  v30 = [v15 bottomAnchor];
  v31 = [v3 &selRef_didTapLearnMoreButton + 5];
  v32 = [v30 constraintLessThanOrEqualToAnchor:v31 constant:-v25[2]];

  *(v22 + 48) = v32;
  v33 = [v15 trailingAnchor];
  v34 = [v3 &selRef_body + 4];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-v25[3]];

  *(v22 + 56) = v35;
  v36 = [v15 centerYAnchor];
  v37 = [v3 centerYAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v22 + 64) = v38;
  v39 = [v62 topAnchor];
  v40 = [v15 topAnchor];
  v41 = [v39 constraintGreaterThanOrEqualToAnchor_];

  *(v22 + 72) = v41;
  v42 = [v62 leadingAnchor];
  v43 = [v15 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v22 + 80) = v44;
  v45 = [v62 &selRef_body + 4];
  v46 = [v15 &selRef_body + 4];
  v47 = [v45 constraintEqualToAnchor_];

  *(v22 + 88) = v47;
  v48 = [v63 topAnchor];
  v49 = [v62 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v22 + 96) = v50;
  v51 = [v63 leadingAnchor];
  v52 = [v62 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v22 + 104) = v53;
  v54 = [v63 trailingAnchor];
  v55 = [v62 trailingAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v22 + 112) = v56;
  v57 = [v63 bottomAnchor];
  v58 = [v15 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v22 + 120) = v59;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v60 = sub_2517031F4();

  [v61 activateConstraints_];
}

void sub_2516DC6B0()
{
  v1 = sub_251702C54();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_251702DA4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header);
  sub_25169479C(v15 + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v47 = v2;
    (*(v9 + 32))(v14, v7, v8);
    v16 = [objc_opt_self() defaultSessionConfiguration];
    v17 = v16;
    v49 = v0;
    if ((*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_proxyDisabled) & 1) == 0)
    {
      [v16 set:*MEMORY[0x277CC5BF0] sourceApplicationSecondaryIdentifier:?];
    }

    v18 = objc_opt_self();
    v48 = v17;
    v19 = [v18 sessionWithConfiguration_];
    v20 = [v19 configuration];
    v21 = [v20 URLCache];

    if (!v21)
    {
      goto LABEL_24;
    }

    (*(v9 + 16))(v12, v14, v8);
    sub_251702C24();
    v22 = sub_251702C04();
    (*(v47 + 8))(v4, v1);
    v23 = [v21 cachedResponseForRequest_];

    if (!v23)
    {
      goto LABEL_24;
    }

    v24 = [v23 data];
    v25 = sub_251702DC4();
    v27 = v26;

    v28 = v27;
    v29 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v33 = *(v25 + 16);
        v34 = *(v25 + 24);
        v30 = sub_2516C47E4(v25, v28);
        if (v33 == v34)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      sub_2516C47E4(v25, v27);
    }

    else
    {
      if (!v29)
      {
        v30 = sub_2516C47E4(v25, v27);
        if ((v27 & 0xFF000000000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_20:
        v35 = [v23 data];
        v36 = sub_251702DC4();
        v38 = v37;

        v39 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v40 = sub_251702DB4();
        v41 = [v39 initWithData_];

        sub_2516C47E4(v36, v38);
        if (v41)
        {
          sub_2516DD1D8(v41);

LABEL_25:
          (*(v9 + 8))(v14, v8);
          return;
        }

        goto LABEL_23;
      }

      v30 = sub_2516C47E4(v25, v27);
      if (v25 != v25 >> 32)
      {
        goto LABEL_20;
      }
    }

LABEL_23:

LABEL_24:
    v42 = sub_251702D74();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2516DE000;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2516DA110;
    aBlock[3] = &block_descriptor_11;
    v44 = _Block_copy(aBlock);

    v45 = [v19 dataTaskWithURL:v42 completionHandler:v44];
    _Block_release(v44);

    [v45 resume];
    goto LABEL_25;
  }

  sub_2516B5AC4(v7);
  if (*(v15 + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style))
  {
    sub_2516DAA2C();
  }

  else
  {
    v31 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageViewWidthConstraint);
    if (v31)
    {
      [v31 setConstant_];
    }

    v32 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_labelContainerLeadingConstraint);
    if (v32)
    {
      [v32 setConstant_];
    }
  }
}

void *sub_2516DCCA8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_251703084();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2517030B4();
  v25 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
    v24 = sub_251703364();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a4;
    v17[5] = v16;
    aBlock[4] = sub_2516DE020;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251693A80;
    aBlock[3] = &block_descriptor_22_1;
    v18 = _Block_copy(aBlock);
    v23 = v12;
    v19 = v18;
    sub_2516DE02C(a1, a2);
    v20 = a4;
    v21 = v16;

    sub_2517030A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2516DE540(&qword_28151E980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
    sub_2516DE588(&qword_28151E970, &qword_27F454360, &qword_251708170, MEMORY[0x277D83970]);
    sub_251703434();
    v22 = v24;
    MEMORY[0x25307F740](0, v14, v11, v19);
    _Block_release(v19);

    (*(v9 + 8))(v11, v8);
    return (*(v25 + 8))(v14, v23);
  }

  return result;
}

void sub_2516DCFF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    if (*(a1 + 16) != *(a1 + 24))
    {
LABEL_11:
      v6 = a1;
      v7 = a2;
      sub_2516DE02C(a1, a2);
      a1 = v6;
      a2 = v7;
      if (!a3)
      {
        goto LABEL_22;
      }

LABEL_12:
      sub_2516C47D0(a1, a2);
    }

LABEL_13:
    if (*(*(a4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header) + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style))
    {
      sub_2516DAA2C();
    }

    else
    {
      v9 = *(a4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageViewWidthConstraint);
      if (v9)
      {
        [v9 setConstant_];
      }

      v10 = *(a4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_labelContainerLeadingConstraint);
      if (v10)
      {

        [v10 setConstant_];
      }
    }

    return;
  }

  if (v5)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((a2 & 0xFF000000000000) == 0 || a3)
  {
    goto LABEL_12;
  }

LABEL_22:
  v11 = a1;
  v12 = a2;
  v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_2516C477C(v11, v12);
  v14 = sub_251702DB4();
  v15 = [v13 initWithData_];

  v16 = sub_2516C47D0(v11, v12);
  if (v15)
  {
    sub_2516DD1D8(v15);
  }

  else
  {
    [*(a4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageView) setImage_];
  }

  sub_2516C47D0(v11, v12);
}

id sub_2516DD1D8(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageView) setImage_];
  [a1 size];
  v4 = v3;
  [a1 size];
  v6 = v4 / v5;
  [a1 size];
  v8 = v7;
  [a1 size];
  v10 = 287.0;
  if (v8 > 287.0)
  {
    v9 = 287.0 / v6;
  }

  else
  {
    v10 = v8;
  }

  if (v9 <= 62.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 62.0;
  }

  if (v9 > 62.0)
  {
    v10 = v6 * 62.0;
  }

  [*(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageWidthConstraint) setConstant_];
  v12 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageHeightConstraint);

  return [v12 setConstant_];
}

id OnboardingHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *sub_2516DD44C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI27OnboardingAuthorityTextView_textView;
  *&v8[v14] = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  v15 = type metadata accessor for OnboardingHeaderView();
  v16 = objc_allocWithZone(v15);
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageView;
  v18 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v19 = a1;
  *&v16[v17] = [v18 init];
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageViewWidthConstraint] = 0;
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_labelContainerLeadingConstraint] = 0;
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageWidthConstraint] = 0;
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_imageHeightConstraint] = 0;
  *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_header] = v19;
  v20 = &v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_insets];
  *v20 = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v16[OBJC_IVAR____TtC28HealthExposureNotificationUI20OnboardingHeaderView_proxyDisabled] = 0;
  v90.receiver = v16;
  v90.super_class = v15;
  v88 = v19;
  v21 = objc_msgSendSuper2(&v90, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2516DA6E8();
  v22 = [v21 layer];
  [v22 setCornerRadius_];

  v23 = [v21 &selRef_appBundleID];
  v87 = *MEMORY[0x277CDA138];
  [v23 setCornerCurve_];

  v24 = [v21 &selRef_appBundleID];
  [v24 setMaskedCorners_];

  *&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI27OnboardingAuthorityTextView_headerView] = v21;
  v89.receiver = v8;
  v89.super_class = type metadata accessor for OnboardingAuthorityTextView();
  v25 = objc_msgSendSuper2(&v89, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v26 = objc_allocWithZone(MEMORY[0x277D74240]);
  v27 = v25;
  v28 = [v26 init];
  [v28 setParagraphSpacing_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251709370;
  v30 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v31 = *MEMORY[0x277D76918];
  v32 = *MEMORY[0x277D74418];
  v33 = *MEMORY[0x277D76820];
  v34 = v30;
  v35 = sub_2516C19DC(v31, v32, 0, 0x10000, 1, v33);
  v36 = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 40) = v35;
  v37 = *MEMORY[0x277D74118];
  *(inited + 64) = v36;
  *(inited + 72) = v37;
  v38 = sub_25168CD90(0, &qword_27F454538, 0x277D74240);
  *(inited + 80) = v28;
  v39 = *MEMORY[0x277D740C0];
  *(inited + 104) = v38;
  *(inited + 112) = v39;
  v40 = objc_opt_self();
  v41 = v37;
  v86 = v28;
  v42 = v39;
  v43 = [v40 labelColor];
  *(inited + 144) = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 120) = v43;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v44 = OBJC_IVAR____TtC28HealthExposureNotificationUI27OnboardingAuthorityTextView_textView;
  v45 = *&v27[OBJC_IVAR____TtC28HealthExposureNotificationUI27OnboardingAuthorityTextView_textView];
  v46 = [v40 secondarySystemBackgroundColor];
  [v45 setBackgroundColor_];

  [*&v27[v44] setEditable_];
  v47 = *&v27[v44];
  v48 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v49 = v47;
  v50 = sub_251703134();

  type metadata accessor for Key(0);
  sub_2516DE540(&qword_28151E910, type metadata accessor for Key, &unk_251707D20);
  v51 = sub_2517030F4();

  v52 = [v48 initWithString:v50 attributes:v51];

  [v49 setAttributedText_];
  [*&v27[v44] setAdjustsFontForContentSizeCategory_];
  [*&v27[v44] setShowsVerticalScrollIndicator_];
  [*&v27[v44] setScrollEnabled_];
  [*&v27[v44] setTextContainerInset_];
  v53 = [*&v27[v44] textContainer];
  [v53 setLineFragmentPadding_];

  [*&v27[v44] setDataDetectorTypes_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_251707F60;
  v55 = *&v27[OBJC_IVAR____TtC28HealthExposureNotificationUI27OnboardingAuthorityTextView_headerView];
  *(v54 + 32) = v55;
  v56 = *&v27[v44];
  *(v54 + 40) = v56;
  v57 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v58 = v55;
  v59 = v56;
  v60 = sub_2517031F4();

  v61 = [v57 initWithArrangedSubviews_];

  v62 = v61;
  [v62 setTranslatesAutoresizingMaskIntoConstraints_];
  [v62 setAxis_];
  v63 = v27;
  [v63 addSubview_];
  v64 = objc_opt_self();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_2517068A0;
  v66 = [v62 leadingAnchor];
  v67 = [v63 leadingAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v65 + 32) = v68;
  v69 = [v62 trailingAnchor];
  v70 = [v63 trailingAnchor];

  v71 = [v69 constraintEqualToAnchor_];
  *(v65 + 40) = v71;
  v72 = [v62 topAnchor];
  v73 = [v63 topAnchor];

  v74 = [v72 constraintEqualToAnchor_];
  *(v65 + 48) = v74;
  v75 = [v62 bottomAnchor];

  v76 = [v63 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v65 + 56) = v77;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v78 = sub_2517031F4();

  [v64 activateConstraints_];

  [v63 setClipsToBounds_];
  v79 = [v63 layer];

  [v79 setCornerRadius_];
  v80 = [v63 layer];

  [v80 setCornerCurve_];
  v81 = [v63 layer];

  [v81 setBorderWidth_];
  v82 = [v63 layer];

  v83 = [v40 systemGray5Color];
  v84 = [v83 CGColor];

  [v82 setBorderColor_];
  return v63;
}

id sub_2516DDF58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2516DE02C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2516C477C(a1, a2);
  }

  return a1;
}

uint64_t sub_2516DE040(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_251703474();
LABEL_9:
  result = sub_251703554();
  *v2 = result;
  return result;
}

void (*sub_2516DE0E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25307F910](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2516DE5D4;
  }

  __break(1u);
  return result;
}

void (*sub_2516DE160(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25307F910](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2516DE1E0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2516DE1E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251703474();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_251703474();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2516DE588(&qword_27F454530, &qword_27F454528, "ʠ", MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454528, "ʠ");
            v9 = sub_2516DE0E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2516DE39C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251703474();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_251703474();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2516DE588(&qword_27F454548, &qword_27F454540, qword_251709420, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454540, qword_251709420);
            v9 = sub_2516DE160(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ENUIPublicHealthAgencyModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2516DE540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2516DE588(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *NSBundle.exposureNotificationUI.unsafeMutableAddressor()
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  return &static NSBundle.exposureNotificationUI;
}

id sub_2516DE62C()
{
  type metadata accessor for OnboardingWelcomeViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.exposureNotificationUI = result;
  return result;
}

id static NSBundle.exposureNotificationUI.getter()
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.exposureNotificationUI;

  return v1;
}

id sub_2516DE6E0()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___iconStack;
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___iconStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___iconStack);
  }

  else
  {
    v4 = sub_2516DE744(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2516DE744(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_251707F70;
  v3 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView);
  v4 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_arrowImageView);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_peopleImageView);
  *(v2 + 48) = v5;
  v6 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_2516DFEE4();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = sub_2517031F4();

  v11 = [v6 initWithArrangedSubviews_];

  [v11 setAxis_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setDistribution_];
  [v11 setSpacing_];
  return v11;
}

id sub_2516DE880()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___sharrowImageView;
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___sharrowImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___sharrowImageView);
  }

  else
  {
    if (qword_28151E860 != -1)
    {
      swift_once();
    }

    v4 = static NSBundle.exposureNotificationUI;
    v5 = sub_251703134();
    v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

_BYTE *sub_2516DE998(char a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_displayingForFirstParty] = 2;
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_arrowImageView;
  v13 = sub_251703134();
  v14 = objc_opt_self();
  v15 = [v14 _systemImageNamed_];

  v16 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v5[v12] = v16;
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_peopleImageView;
  v18 = sub_251703134();
  v19 = [v14 _systemImageNamed_];

  v20 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v5[v17] = v20;
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___iconStack] = 0;
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___sharrowImageView] = 0;
  v21 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_titleLabel;
  *&v5[v21] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel;
  *&v5[v22] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v26.receiver = v5;
  v26.super_class = type metadata accessor for AuthorizationHeaderView();
  v23 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a2, a3, a4, a5);
  v23[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_displayingForFirstParty] = a1;
  v24 = v23;
  sub_2516DF0D0();

  return v24;
}

id sub_2516DEBC0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_displayingForFirstParty] = 2;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_arrowImageView;
  v11 = sub_251703134();
  v12 = objc_opt_self();
  v13 = [v12 _systemImageNamed_];

  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v4[v10] = v14;
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_peopleImageView;
  v16 = sub_251703134();
  v17 = [v12 _systemImageNamed_];

  v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v4[v15] = v18;
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___iconStack] = 0;
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___sharrowImageView] = 0;
  v19 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_titleLabel;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v29.receiver = v4;
  v29.super_class = type metadata accessor for AuthorizationHeaderView();
  v21 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = qword_27F453878;
  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = sub_251702F84();
  __swift_project_value_buffer(v24, static Logger.general);
  v25 = sub_251702F64();
  v26 = sub_251703314();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_25167E000, v25, v26, "Not supported", v27, 2u);
    MEMORY[0x2530803C0](v27, -1, -1);
  }

  return v23;
}

id sub_2516DEEAC(void *a1)
{
  v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_displayingForFirstParty] = 2;
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_arrowImageView;
  v5 = sub_251703134();
  v6 = objc_opt_self();
  v7 = [v6 _systemImageNamed_];

  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v1[v4] = v8;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_peopleImageView;
  v10 = sub_251703134();
  v11 = [v6 _systemImageNamed_];

  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v1[v9] = v12;
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___iconStack] = 0;
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___sharrowImageView] = 0;
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_titleLabel;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel;
  *&v1[v14] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v19.receiver = v1;
  v19.super_class = type metadata accessor for AuthorizationHeaderView();
  v15 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    sub_2516DF0D0();
  }

  return v16;
}

void sub_2516DF0D0()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_displayingForFirstParty;
  v3 = v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_displayingForFirstParty];
  if (v3 == 2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v3)
  {
    v4 = sub_2516DE880();
  }

  else
  {
    v4 = sub_2516DE6E0();
  }

  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_titleLabel];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setTextAlignment_];
  [v6 setNumberOfLines_];
  LODWORD(v7) = 1036831949;
  [v6 _setHyphenationFactor_];
  v8 = objc_opt_self();
  v9 = [v8 _preferredFontForTextStyle_variant_];
  [v6 setFont_];

  v10 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setTextAlignment_];
  [v10 setNumberOfLines_];
  v11 = [v8 preferredFontForTextStyle_];
  [v10 setFont_];

  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v12 = v0[v2];
  if (v12 == 2)
  {
    goto LABEL_13;
  }

  if (v12)
  {
    sub_2516DF7B0();
  }

  else
  {
    sub_2516DF900();
  }

  v13 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView];
  v14 = [v13 widthAnchor];
  v15 = [v14 constraintEqualToConstant_];

  [v15 setActive_];
  v16 = [v13 heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  [v17 &selRef_appBundleID];
  v18 = [v6 leadingAnchor];
  v19 = [v0 layoutMarginsGuide];
  v20 = [v19 &selRef_setBackBarButtonItem_ + 1];

  v21 = [v18 constraintEqualToAnchor_];
  [v21 &selRef_appBundleID];

  v22 = [v6 trailingAnchor];
  v23 = [v0 &off_2796C32A8 + 1];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  [v25 &selRef_appBundleID];

  v26 = [v6 topAnchor];
  v27 = [v5 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:32.0];

  [v28 &selRef_appBundleID];
  v29 = [v10 leadingAnchor];
  v30 = [v0 layoutMarginsGuide];
  v31 = [v30 leadingAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  [v32 &selRef_appBundleID];

  v33 = [v10 trailingAnchor];
  v34 = [v0 layoutMarginsGuide];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  [v36 &selRef_appBundleID];

  v37 = [v10 topAnchor];
  v38 = [v6 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:16.0];

  [v39 &selRef_appBundleID];
  v40 = [v10 bottomAnchor];
  v41 = [v0 layoutMarginsGuide];
  v42 = [v41 bottomAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  [v43 &selRef_appBundleID];

  [v44 setImage_];
  v45 = sub_2516DE6E0();
  [v45 setHidden_];
}

void sub_2516DF7B0()
{
  v1 = sub_2516DE880();
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___sharrowImageView;
  v3 = [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___sharrowImageView] centerXAnchor];
  v4 = [v0 centerXAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  [v5 setActive_];
  v6 = [*&v0[v2] topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:24.0];

  [v8 setActive_];
}

void sub_2516DF900()
{
  [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_arrowImageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_peopleImageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setContentMode_];
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  [v1 setTintColor_];

  [v2 setContentMode_];
  v5 = [v3 labelColor];
  [v2 setTintColor_];

  v29 = [objc_opt_self() boldSystemFontOfSize_];
  v6 = [objc_opt_self() configurationWithFont_];
  v7 = [v0 traitCollection];
  [v7 layoutDirection];

  v8 = v6;
  v9 = sub_251703134();

  v10 = objc_opt_self();
  v11 = [v10 systemImageNamed:v9 withConfiguration:v8];

  [v1 setImage_];
  v12 = sub_251703134();
  v13 = [v10 systemImageNamed:v12 withConfiguration:v8];

  [v2 setImage_];
  v14 = sub_2516DE6E0();
  v15 = [v14 centerXAnchor];

  v16 = [v0 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  [v17 setActive_];
  v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___iconStack;
  v19 = [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView____lazy_storage___iconStack] topAnchor];
  v20 = [v0 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:24.0];

  [v21 setActive_];
  v22 = [*&v0[v18] leadingAnchor];
  v23 = [v0 layoutMarginsGuide];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintGreaterThanOrEqualToAnchor_];
  [v25 setActive_];

  v26 = [*&v0[v18] trailingAnchor];
  v27 = [v0 layoutMarginsGuide];
  v28 = [v27 trailingAnchor];

  v30 = [v26 constraintLessThanOrEqualToAnchor_];
  [v30 setActive_];
}

id sub_2516DFDF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AuthorizationHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2516DFEE4()
{
  result = qword_28151E888;
  if (!qword_28151E888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28151E888);
  }

  return result;
}

id PreAuthorizationConsentViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v5[qword_27F454590] = 2;
  *&v5[qword_27F454598] = a1;
  *&v5[qword_27F4545A0] = a2;
  v6 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];

  v7 = a2;
  v8 = v6;
  sub_2516E0EFC(v11);
  v9 = sub_25168D488(v11, 0, 0, v6, 0, 0);

  return v9;
}

uint64_t PreAuthorizationDialogue.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PreAuthorizationDialogue.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PreAuthorizationDialogue.detailText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PreAuthorizationDialogue.detailText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PreAuthorizationDialogue.detailTextTemplate.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PreAuthorizationDialogue.detailTextTemplate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PreAuthorizationDialogue.explainers.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PreAuthorizationDialogue.footerText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PreAuthorizationDialogue.footerText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PreAuthorizationDialogue.primaryButtonTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PreAuthorizationDialogue.primaryButtonTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t PreAuthorizationDialogue.secondaryButtonTitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t PreAuthorizationDialogue.secondaryButtonTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

void __swiftcall PreAuthorizationDialogue.init()(HealthExposureNotificationUI::PreAuthorizationDialogue *__return_ptr retstr)
{
  sub_2516E0EFC(v5);
  v2 = v5[5];
  retstr->footerText = v5[4];
  retstr->primaryButtonTitle = v2;
  retstr->secondaryButtonTitle = v5[6];
  retstr->style = v6;
  v3 = v5[1];
  *&retstr->icon.super.isa = v5[0];
  *&retstr->title._object = v3;
  v4 = v5[3];
  *&retstr->detailText.value._object = v5[2];
  *&retstr->detailTextTemplate.value._object = v4;
}

double sub_2516E0464@<D0>(uint64_t a1@<X8>)
{
  sub_2516E0EFC(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

id PreAuthorizationConsentViewController.init(flow:agencyModel:)(uint64_t a1, char *a2)
{
  *(v2 + qword_27F454590) = 2;
  *(v2 + qword_27F454598) = a1;
  *(v2 + qword_27F4545A0) = a2;
  v4 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];

  v5 = a2;
  v6 = v4;
  sub_2516E0EFC(v9);
  v7 = sub_25168D488(v9, 0, 0, v4, 0, 0);

  return v7;
}

void sub_2516E05A0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = a1;
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v6 = sub_251702F84();
      __swift_project_value_buffer(v6, static Logger.general);
      v7 = a1;
      v8 = sub_251702F64();
      v9 = sub_251703324();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v26[0] = v11;
        *v10 = 136315138;
        v12 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
        v13 = sub_251703194();
        v15 = sub_251693FCC(v13, v14, v26);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_25167E000, v8, v9, "PreAuth failed with error: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x2530803C0](v11, -1, -1);
        MEMORY[0x2530803C0](v10, -1, -1);
      }

      v16 = (*&v4[qword_27F454598] + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
      swift_beginAccess();
      v17 = *v16;

      v17(4);
    }

    else
    {
      v18 = *(Strong + qword_27F454598);

      v19 = v4;
      v20 = sub_2516A4DE4();
      if (v20)
      {
        v21 = v20;
        v22 = [v19 navigationController];
        if (v22)
        {
          v23 = v22;
          [v22 pushViewController:v21 animated:1];
        }

        else
        {
        }
      }

      else
      {
        v24 = (v18 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
        swift_beginAccess();
        v25 = *v24;

        v25(1);
      }
    }
  }
}

void sub_2516E0898(void *a1)
{
  v1 = a1;
  sub_2516E057C();
}

void sub_2516E0904(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3;
  v8 = *(v3 + qword_27F454598);
  swift_beginAccess();
  v9 = *(v8 + 72);
  v10 = *(*(v7 + qword_27F4545A0) + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2516C5814;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v13 = v10;

  [v9 setPreAuthorizeDiagnosisKeysEnabled:a3 & 1 forRegion:v13 completion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

double sub_2516E0A4C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = a1;
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v7 = sub_251702F84();
      __swift_project_value_buffer(v7, static Logger.general);
      v8 = a1;
      v9 = sub_251702F64();
      v10 = sub_251703324();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21[0] = v12;
        *v11 = 136315138;
        v13 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
        v14 = sub_251703194();
        v16 = sub_251693FCC(v14, v15, v21);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_25167E000, v9, v10, "Revoking PreAuth failed with error: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x2530803C0](v12, -1, -1);
        MEMORY[0x2530803C0](v11, -1, -1);
      }

      v17 = (*&v5[qword_27F454598] + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
      swift_beginAccess();
      v18 = *v17;

      v18(4);
    }

    else
    {
      v19 = (*(Strong + qword_27F454598) + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
      swift_beginAccess();
      v20 = *v19;

      v20(0);
    }
  }

  return result;
}

void sub_2516E0CB0(void *a1)
{
  v1 = a1;
  sub_2516E08E0();
}

void sub_2516E0CF8(uint64_t a1)
{
  *(a1 + qword_27F454590) = 2;
  sub_251703584();
  __break(1u);
}

void sub_2516E0D94()
{

  v1 = *(v0 + qword_27F4545A0);
}

id PreAuthorizationConsentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516E0E0C(uint64_t a1)
{

  v2 = *(a1 + qword_27F4545A0);
}

void sub_2516E0E58(void **a1)
{
  v1 = *a1;

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_2516E0EFC(void *__return_ptr a1@<X8>)
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v2 = static NSBundle.exposureNotificationUI;
  v3 = sub_251703134();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  if (v4)
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    v5 = sub_251702C94();
    v23 = v6;
    v24 = v5;
    v22 = sub_251702C94();
    v8 = v7;
    v9 = sub_251702C94();
    v11 = v10;
    v12 = sub_251702C94();
    v14 = v13;
    v15 = sub_251702C94();
    *&v26 = v4;
    *(&v26 + 1) = v24;
    *&v27 = v23;
    *(&v27 + 1) = v22;
    v28 = v8;
    *&v29 = 0;
    *(&v29 + 1) = MEMORY[0x277D84F90];
    *&v30 = v9;
    *(&v30 + 1) = v11;
    *&v31 = v12;
    *(&v31 + 1) = v14;
    *&v32 = v15;
    *(&v32 + 1) = v16;
    v33 = 1;
    v34[0] = v4;
    v34[1] = v24;
    v34[2] = v23;
    v34[3] = v22;
    v34[4] = v8;
    v34[5] = 0;
    v34[6] = 0;
    v34[7] = MEMORY[0x277D84F90];
    v34[8] = v9;
    v34[9] = v11;
    v34[10] = v12;
    v34[11] = v14;
    v34[12] = v15;
    v34[13] = v16;
    v35 = 1;
    sub_2516E12DC(&v26, v25);
    sub_2516E1314(v34);
    v17 = v31;
    v18 = v32;
    v19 = v29;
    *(a1 + 4) = v30;
    *(a1 + 5) = v17;
    *(a1 + 6) = v18;
    v20 = v27;
    v21 = v28;
    *a1 = v26;
    *(a1 + 1) = v20;
    *(a1 + 112) = v33;
    *(a1 + 2) = v21;
    *(a1 + 3) = v19;
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for PreAuthorizationConsentViewController(uint64_t a1)
{
  result = qword_27F4545A8;
  if (!qword_27F4545A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t FlowStep.hashValue.getter(unsigned __int8 a1)
{
  sub_2517036E4();
  MEMORY[0x25307FAC0](a1);
  return sub_251703724();
}

unint64_t sub_2516E13E0()
{
  result = qword_27F4545B8;
  if (!qword_27F4545B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4545B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __swiftcall RegionNameAndCode.init(displayName:code:)(HealthExposureNotificationUI::RegionNameAndCode_optional *__return_ptr retstr, Swift::String_optional displayName, Swift::String_optional code)
{
  if (!displayName.value._object || !code.value._object)
  {
  }
}

uint64_t sub_2516E1688()
{
  if (*v0)
  {
    return 1701080931;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_2516E16C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_251703624() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251703624();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2516E17BC(uint64_t a1)
{
  v2 = sub_2516E317C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516E17F8(uint64_t a1)
{
  v2 = sub_2516E317C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static RegionNameAndCode.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_251703624(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_251703624();
    }
  }

  return result;
}

uint64_t RegionNameAndCode.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4545C0, &qword_251709650);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2516E317C();
  sub_251703754();
  v14 = 0;
  sub_2517035F4();
  if (!v5)
  {
    v13 = 1;
    sub_2517035F4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t RegionNameAndCode.init(from:)(void *a1)
{
  result = sub_2516E4248(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_2516E1A9C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2516E4248(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_2516E1C6C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_251703624(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_251703624();
    }
  }

  return result;
}

uint64_t sub_2516E1D8C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251703054();

  return v3;
}

void sub_2516E1E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a3;
  v39 = a2;
  v3 = sub_251703084();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2517030B4();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 supportedRegions];
  v8 = sub_2517032D4();

  v9 = [v6 _deviceLanguage];
  if (v9)
  {
    v6 = v9;
    v48 = [objc_allocWithZone(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier_];

    v10 = 1 << *(v8 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v8 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = v14;
      if (!v12)
      {
        break;
      }

LABEL_9:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = (*(v8 + 48) + ((v14 << 10) | (16 * v17)));
      v19 = *v18;
      v6 = v18[1];

      v20 = sub_251703134();
      v21 = [v48 localizedStringForRegion:v20 context:3 short:0];

      if (v21)
      {
        v22 = sub_251703164();
        v37 = v23;
        v38 = v22;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2516E33E0(0, *(v15 + 2) + 1, 1, v15);
        }

        v25 = *(v15 + 2);
        v24 = *(v15 + 3);
        if (v25 >= v24 >> 1)
        {
          v15 = sub_2516E33E0((v24 > 1), v25 + 1, 1, v15);
        }

        *(v15 + 2) = v25 + 1;
        v26 = &v15[32 * v25];
        v27 = v37;
        *(v26 + 4) = v38;
        *(v26 + 5) = v27;
        *(v26 + 6) = v19;
        *(v26 + 7) = v6;
      }

      else
      {
      }
    }

    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        aBlock[0] = v15;

        sub_2516E35F8(aBlock);

        v28 = aBlock[0];
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock[0] = v28;
        v29 = v40;

        sub_251703064();
        sub_25169D7BC();
        v30 = sub_251703364();
        v31 = swift_allocObject();
        v32 = v41;
        *(v31 + 16) = v39;
        *(v31 + 24) = v32;
        *(v31 + 32) = v29;
        aBlock[4] = sub_2516E4860;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_251693A80;
        aBlock[3] = &block_descriptor_48_0;
        v33 = _Block_copy(aBlock);

        v34 = v42;
        sub_2517030A4();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_251694ABC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
        sub_251694B14();
        v35 = v44;
        v36 = v47;
        sub_251703434();
        MEMORY[0x25307F740](0, v34, v35, v33);

        _Block_release(v33);
        (*(v46 + 8))(v35, v36);
        (*(v43 + 8))(v34, v45);
        return;
      }

      v12 = *(v8 + 56 + 8 * v14);
      ++v16;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
}

double sub_2516E2390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v22 = a3;
  v23 = a1;
  v25 = a2;
  v5 = sub_251703084();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2517030B4();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251703094();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25169D7BC();
  (*(v13 + 104))(v15, *MEMORY[0x277D851B8], v12);
  v16 = sub_251703384();
  (*(v13 + 8))(v15, v12);
  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = v24;
  v17[3] = v18;
  v19 = v26;
  v17[4] = v25;
  aBlock[4] = v19;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = v27;
  v20 = _Block_copy(aBlock);

  sub_2517030A4();
  v29 = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  MEMORY[0x25307F740](0, v11, v8, v20);
  _Block_release(v20);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v28);

  return result;
}

uint64_t sub_2516E26D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a3;
  v40 = a2;
  v3 = sub_251703084();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2517030B4();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4538A0 != -1)
  {
LABEL_29:
    swift_once();
  }

  rawValue = subdivisionsList._rawValue;
  v7 = *(subdivisionsList._rawValue + 2);
  if (!v7)
  {
    v49 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v8 = 0;
  v9 = subdivisionsList._rawValue + 32;
  v39 = v7 - 1;
  v49 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if (v10 >= rawValue[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      v11 = *&v9[8 * v10];
      v12 = *(v11 + 16);

      if (v12)
      {
        sub_2516CE534(0x4E79616C70736964, 0xEB00000000656D61);
        if (v13)
        {
          v14 = qword_27F453860;

          if (v14 != -1)
          {
            swift_once();
          }

          v15 = sub_251702C94();
          v17 = v16;

          if (!*(v11 + 16))
          {
LABEL_17:
            v18 = 0;
            v12 = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v15 = 0;
          v17 = 0;
          if (!*(v11 + 16))
          {
            goto LABEL_17;
          }
        }

        v19 = sub_2516CE534(1701080931, 0xE400000000000000);
        if ((v20 & 1) == 0)
        {
          goto LABEL_17;
        }

        v21 = (*(v11 + 56) + 16 * v19);
        v18 = *v21;
        v12 = v21[1];
      }

      else
      {
        v17 = 0;
        v15 = 0;
        v18 = 0;
      }

LABEL_18:

      if (v17)
      {
        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        goto LABEL_27;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_2516E33E0(0, *(v49 + 2) + 1, 1, v49);
    }

    v23 = *(v49 + 2);
    v22 = *(v49 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v38 = v23 + 1;
      v27 = sub_2516E33E0((v22 > 1), v23 + 1, 1, v49);
      v24 = v38;
      v49 = v27;
    }

    v8 = v10 + 1;
    v25 = v49;
    *(v49 + 2) = v24;
    v26 = &v25[32 * v23];
    *(v26 + 4) = v15;
    *(v26 + 5) = v17;
    *(v26 + 6) = v18;
    *(v26 + 7) = v12;
  }

  while (v39 != v10);
LABEL_27:
  aBlock[0] = v49;

  sub_2516E35F8(aBlock);

  v28 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v28;
  v29 = v41;

  sub_251703064();
  sub_25169D7BC();
  v30 = sub_251703364();
  v31 = swift_allocObject();
  v32 = v42;
  *(v31 + 16) = v40;
  *(v31 + 24) = v32;
  *(v31 + 32) = v29;
  aBlock[4] = sub_2516E47F0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_42;
  v33 = _Block_copy(aBlock);

  v34 = v43;
  sub_2517030A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v35 = v45;
  v36 = v48;
  sub_251703434();
  MEMORY[0x25307F740](0, v34, v35, v33);
  _Block_release(v33);

  (*(v47 + 8))(v35, v36);
  return (*(v44 + 8))(v34, v46);
}

uint64_t sub_2516E2C70(void (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251703054();

  a1();
}

uint64_t RegionsProvider.deinit()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__countries;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4545E0, &qword_251709668);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__states, v2);
  v3(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__subdivisions, v2);
  return v0;
}

uint64_t RegionsProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__countries;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4545E0, &qword_251709668);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__states, v2);
  v3(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__subdivisions, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2516E2EB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4545E0, &qword_251709668);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__countries;
  v6 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4545D0, &unk_251709658);
  sub_251703044();
  v7 = *(v2 + 32);
  v7(v0 + v5, v4, v1);
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__states;
  v12 = v6;
  sub_251703044();
  v7(v0 + v8, v4, v1);
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI15RegionsProvider__subdivisions;
  v12 = v6;
  sub_251703044();
  v7(v0 + v9, v4, v1);
  return v0;
}

void sub_2516E3074(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251703054();

  *a4 = v5;
}

uint64_t sub_2516E3104(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_251703064();
}

unint64_t sub_2516E317C()
{
  result = qword_27F4545C8;
  if (!qword_27F4545C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4545C8);
  }

  return result;
}

char *sub_2516E31D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454648, &unk_251709960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2516E32DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454630, &qword_251709948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2516E33E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454638, &qword_251709950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2516E34EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454638, &qword_251709950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2516E35F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2516E4234(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2516E3664(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2516E3664(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251703604();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_251703234();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2516E3864(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2516E375C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2516E375C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_2516B4924();
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_2517033F4();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
      v15 = *(v10 + 16);
      *(v10 + 32) = *v10;
      *(v10 + 48) = v15;
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 24) = v14;
      v10 -= 32;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2516E3864(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v92 = result;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v93 = v6;
        v13 = 32 * v11;
        v14 = *a3 + 32 * v11 + 72;
        sub_2516B4924();
        result = sub_2517033F4();
        v15 = v11;
        v16 = result;
        v95 = v15;
        v4 = v15 + 2;
        while (v8 != v4)
        {
          result = sub_2517033F4();
          ++v4;
          v14 += 32;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v4 - 1;
            break;
          }
        }

        if (v16 == -1)
        {
          v11 = v95;
          v7 = v92;
          if (v8 < v95)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return result;
          }

          if (v95 < v8)
          {
            v64 = 32 * v8 - 16;
            v65 = v13 + 24;
            v66 = v8;
            v67 = v95;
            v6 = v93;
            while (1)
            {
              if (v67 != --v66)
              {
                v74 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v68 = (v74 + v65);
                v69 = v74 + v64;
                v70 = *(v68 - 3);
                v71 = *(v68 - 1);
                v72 = *v68;
                v73 = *v69;
                *(v68 - 3) = *(v69 - 16);
                *(v68 - 1) = v73;
                *(v69 - 16) = v70;
                *v69 = v71;
                *(v69 + 8) = v72;
              }

              ++v67;
              v64 -= 32;
              v65 += 32;
              if (v67 >= v66)
              {
                goto LABEL_12;
              }
            }
          }

          v6 = v93;
        }

        else
        {
          v7 = v92;
          v6 = v93;
          v11 = v95;
        }
      }

LABEL_12:
      v17 = a3[1];
      if (v8 >= v17)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_120;
      }

      if (v11 + a4 < v17)
      {
        v17 = v11 + a4;
      }

      if (v17 < v11)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v8 == v17)
      {
LABEL_20:
        v18 = v8;
      }

      else
      {
        v98 = v17;
        v94 = v6;
        v75 = v11;
        v76 = *a3;
        sub_2516B4924();
        v77 = v76 + 32 * v8 - 32;
        v96 = v75;
        v4 = v75 - v8;
        do
        {
          v78 = v4;
          v79 = v77;
          do
          {
            result = sub_2517033F4();
            if (result != -1)
            {
              break;
            }

            if (!v76)
            {
              goto LABEL_124;
            }

            v80 = *(v79 + 32);
            v81 = *(v79 + 40);
            v82 = *(v79 + 48);
            v83 = *(v79 + 56);
            v84 = *(v79 + 16);
            *(v79 + 32) = *v79;
            *(v79 + 48) = v84;
            *v79 = v80;
            *(v79 + 8) = v81;
            *(v79 + 16) = v82;
            *(v79 + 24) = v83;
            v79 -= 32;
          }

          while (!__CFADD__(v78++, 1));
          ++v8;
          v77 += 32;
          --v4;
        }

        while (v8 != v98);
        v7 = v92;
        v6 = v94;
        v11 = v96;
        v18 = v98;
      }

      if (v18 < v11)
      {
        goto LABEL_118;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2516E32DC(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v4 = *(v10 + 2);
      v19 = *(v10 + 3);
      v20 = v4 + 1;
      if (v4 >= v19 >> 1)
      {
        result = sub_2516E32DC((v19 > 1), v4 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v20;
      v21 = &v10[16 * v4];
      *(v21 + 4) = v11;
      *(v21 + 5) = v18;
      v22 = *v7;
      if (!*v7)
      {
        goto LABEL_128;
      }

      v97 = v18;
      if (v4)
      {
        while (1)
        {
          v23 = v20 - 1;
          if (v20 >= 4)
          {
            break;
          }

          if (v20 == 3)
          {
            v24 = *(v10 + 4);
            v25 = *(v10 + 5);
            v34 = __OFSUB__(v25, v24);
            v26 = v25 - v24;
            v27 = v34;
LABEL_41:
            if (v27)
            {
              goto LABEL_107;
            }

            v40 = &v10[16 * v20];
            v42 = *v40;
            v41 = *(v40 + 1);
            v43 = __OFSUB__(v41, v42);
            v44 = v41 - v42;
            v45 = v43;
            if (v43)
            {
              goto LABEL_110;
            }

            v46 = &v10[16 * v23 + 32];
            v48 = *v46;
            v47 = *(v46 + 1);
            v34 = __OFSUB__(v47, v48);
            v49 = v47 - v48;
            if (v34)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v44, v49))
            {
              goto LABEL_114;
            }

            if (v44 + v49 >= v26)
            {
              if (v26 < v49)
              {
                v23 = v20 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v50 = &v10[16 * v20];
          v52 = *v50;
          v51 = *(v50 + 1);
          v34 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          v45 = v34;
LABEL_55:
          if (v45)
          {
            goto LABEL_109;
          }

          v53 = &v10[16 * v23];
          v55 = *(v53 + 4);
          v54 = *(v53 + 5);
          v34 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v34)
          {
            goto LABEL_112;
          }

          if (v56 < v44)
          {
            goto LABEL_3;
          }

LABEL_62:
          v4 = v23 - 1;
          if (v23 - 1 >= v20)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v61 = *&v10[16 * v4 + 32];
          v62 = *&v10[16 * v23 + 40];
          sub_2516E3F04((*a3 + 32 * v61), (*a3 + 32 * *&v10[16 * v23 + 32]), (*a3 + 32 * v62), v22);
          if (v6)
          {
          }

          if (v62 < v61)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2516E4220(v10);
          }

          if (v4 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v63 = &v10[16 * v4];
          *(v63 + 4) = v61;
          *(v63 + 5) = v62;
          result = sub_2516E4194(v23);
          v20 = *(v10 + 2);
          if (v20 <= 1)
          {
            goto LABEL_3;
          }
        }

        v28 = &v10[16 * v20 + 32];
        v29 = *(v28 - 64);
        v30 = *(v28 - 56);
        v34 = __OFSUB__(v30, v29);
        v31 = v30 - v29;
        if (v34)
        {
          goto LABEL_105;
        }

        v33 = *(v28 - 48);
        v32 = *(v28 - 40);
        v34 = __OFSUB__(v32, v33);
        v26 = v32 - v33;
        v27 = v34;
        if (v34)
        {
          goto LABEL_106;
        }

        v35 = &v10[16 * v20];
        v37 = *v35;
        v36 = *(v35 + 1);
        v34 = __OFSUB__(v36, v37);
        v38 = v36 - v37;
        if (v34)
        {
          goto LABEL_108;
        }

        v34 = __OFADD__(v26, v38);
        v39 = v26 + v38;
        if (v34)
        {
          goto LABEL_111;
        }

        if (v39 >= v31)
        {
          v57 = &v10[16 * v23 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v34 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v34)
          {
            goto LABEL_115;
          }

          if (v26 < v60)
          {
            v23 = v20 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v97;
      if (v97 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_90:
  v86 = v7;
  v7 = v6;
  v6 = *v86;
  if (!*v86)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = a3;
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_2516E4220(v10);
    v10 = result;
  }

  v87 = *(v10 + 2);
  if (v87 >= 2)
  {
    while (1)
    {
      v88 = *v4;
      if (!*v4)
      {
        goto LABEL_126;
      }

      v4 = *&v10[16 * v87];
      v89 = *&v10[16 * v87 + 24];
      sub_2516E3F04((v88 + 32 * v4), (v88 + 32 * *&v10[16 * v87 + 16]), (v88 + 32 * v89), v6);
      if (v7)
      {
      }

      if (v89 < v4)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2516E4220(v10);
      }

      if (v87 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v90 = &v10[16 * v87];
      *v90 = v4;
      *(v90 + 1) = v89;
      result = sub_2516E4194(v87 - 1);
      v87 = *(v10 + 2);
      v4 = a3;
      if (v87 <= 1)
      {
      }
    }
  }
}

uint64_t sub_2516E3F04(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v13] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_2516B4924();
LABEL_27:
      v23 = v6 - 32;
      v5 -= 32;
      v18 = v14;
      do
      {
        v19 = v5 + 32;
        v18 -= 32;
        if (sub_2517033F4() == -1)
        {
          if (v19 != v6)
          {
            v21 = *(v6 - 1);
            *v5 = *v23;
            *(v5 + 1) = v21;
          }

          if (v14 <= v4 || (v6 -= 32, v23 <= v7))
          {
            v6 = v23;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          v20 = *(v18 + 1);
          *v5 = *v18;
          *(v5 + 1) = v20;
        }

        v5 -= 32;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[32 * v10] <= a4)
    {
      memmove(a4, __src, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_2516B4924();
      while (sub_2517033F4() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 32;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      v17 = *(v15 + 1);
      *v7 = *v15;
      *(v7 + 1) = v17;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_2516E4194(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2516E4220(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2516E4248(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454640, &qword_251709958);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2516E317C();
  sub_251703744();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_2517035E4();
    v10 = 1;
    sub_2517035E4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2516E44A0()
{
  result = qword_27F4545F8;
  if (!qword_27F4545F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4545F8);
  }

  return result;
}

uint64_t sub_2516E44F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2516E453C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for RegionsProvider(uint64_t a1)
{
  result = qword_27F454600;
  if (!qword_27F454600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2516E45E0(uint64_t a1)
{
  sub_2516E4674(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2516E4674(uint64_t a1)
{
  if (!qword_27F454610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4545D0, &unk_251709658);
    v1 = sub_251703074();
    if (!v2)
    {
      atomic_store(v1, &qword_27F454610);
    }
  }
}

unint64_t sub_2516E46EC()
{
  result = qword_27F454618;
  if (!qword_27F454618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454618);
  }

  return result;
}

unint64_t sub_2516E4744()
{
  result = qword_27F454620;
  if (!qword_27F454620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454620);
  }

  return result;
}

unint64_t sub_2516E479C()
{
  result = qword_27F454628;
  if (!qword_27F454628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454628);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t KeyReleaseDialogue.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t KeyReleaseDialogue.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t KeyReleaseDialogue.detailText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t KeyReleaseDialogue.detailText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t KeyReleaseDialogue.detailTextTemplate.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t KeyReleaseDialogue.detailTextTemplate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t KeyReleaseDialogue.explainers.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t KeyReleaseDialogue.footerText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t KeyReleaseDialogue.footerText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t KeyReleaseDialogue.primaryButtonTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t KeyReleaseDialogue.primaryButtonTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t KeyReleaseDialogue.secondaryButtonTitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t KeyReleaseDialogue.secondaryButtonTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

void __swiftcall KeyReleaseDialogue.init()(HealthExposureNotificationUI::KeyReleaseDialogue *__return_ptr retstr)
{
  sub_2516E4F44(v5);
  v2 = v5[5];
  retstr->footerText = v5[4];
  retstr->primaryButtonTitle = v2;
  retstr->secondaryButtonTitle = v5[6];
  retstr->style = v6;
  v3 = v5[1];
  *&retstr->icon.super.isa = v5[0];
  *&retstr->title._object = v3;
  v4 = v5[3];
  *&retstr->detailText.value._object = v5[2];
  *&retstr->detailTextTemplate.value._object = v4;
}

double sub_2516E4D20@<D0>(uint64_t a1@<X8>)
{
  sub_2516E4F44(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

id sub_2516E4DFC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id KeyReleaseAuthorizationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516E4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v12;
  v17[6] = *(a1 + 96);
  v18 = *(a1 + 112);
  v13 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v13;
  v14 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v14;
  v15 = objc_allocWithZone(v6);
  return _s28HealthExposureNotificationUI37KeyReleaseAuthorizationViewControllerC4with16bundleIdentifier6region17completionHandlerAcA0eF8DialogueV_SSSgSo8ENRegionCSgySbcSgtcfc_0(v17, a2, a3, a4, a5, a6);
}

void sub_2516E4F44(uint64_t a1@<X8>)
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v2 = static NSBundle.exposureNotificationUI;
  v3 = sub_251703134();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  if (v4)
  {
    v21 = v4;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    v20 = sub_251702C94();
    v6 = v5;
    v7 = sub_251702C94();
    v9 = v8;
    v10 = sub_251702C94();
    v12 = v11;
    v13 = sub_251702C94();
    *&v23 = v21;
    *(&v23 + 1) = v20;
    v24 = v6;
    *&v25 = 0;
    *(&v25 + 1) = v7;
    *&v26 = v9;
    *(&v26 + 1) = MEMORY[0x277D84F90];
    v27 = 0uLL;
    *&v28 = v10;
    *(&v28 + 1) = v12;
    *&v29 = v13;
    *(&v29 + 1) = v14;
    v30 = 0;
    v31[0] = v21;
    v31[1] = v20;
    v31[2] = v6;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = v7;
    v31[6] = v9;
    v31[7] = MEMORY[0x277D84F90];
    v31[8] = 0;
    v31[9] = 0;
    v31[10] = v10;
    v31[11] = v12;
    v31[12] = v13;
    v31[13] = v14;
    v32 = 0;
    sub_2516E5264(&v23, v22);
    sub_2516E529C(v31);
    v15 = v28;
    v16 = v29;
    v17 = v26;
    *(a1 + 64) = v27;
    *(a1 + 80) = v15;
    *(a1 + 96) = v16;
    v18 = v24;
    v19 = v25;
    *a1 = v23;
    *(a1 + 16) = v18;
    *(a1 + 112) = v30;
    *(a1 + 32) = v19;
    *(a1 + 48) = v17;
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for KeyReleaseAuthorizationViewController(uint64_t a1)
{
  result = qword_27F454650;
  if (!qword_27F454650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2516E53C0()
{
  v0 = sub_251702F84();
  __swift_allocate_value_buffer(v0, static Logger.testVerification);
  __swift_project_value_buffer(v0, static Logger.testVerification);

  return sub_251702F74();
}

uint64_t sub_2516E54F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_251702F84();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_251702F74();
}

uint64_t sub_2516E55A0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_251702F84();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_2516E5618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_251702F84();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::OpaquePointer *subdivisionsList.unsafeMutableAddressor()
{
  if (qword_27F4538A0 != -1)
  {
    swift_once();
  }

  return &subdivisionsList;
}

uint64_t sub_2516E5764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454670, &qword_251709A60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251709A50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454678, &qword_251709A68);
  inited = swift_initStackObject();
  *(inited + 32) = 1701080931;
  *(inited + 16) = xmmword_2517068B0;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x4C412D5355;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x4E79616C70736964;
  *(inited + 72) = 0xEB00000000656D61;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v2 = static LocalizationSource.main;

  v3 = sub_251702C94();
  v5 = v4;

  *(inited + 80) = v3;
  *(inited + 88) = v5;
  v6 = sub_251699838(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454680, &unk_251709A70);
  swift_arrayDestroy();
  *(v0 + 32) = v6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2517068B0;
  *(v7 + 32) = 1701080931;
  *(v7 + 40) = 0xE400000000000000;
  *(v7 + 48) = 0x4B412D5355;
  *(v7 + 56) = 0xE500000000000000;
  *(v7 + 64) = 0x4E79616C70736964;
  *(v7 + 72) = 0xEB00000000656D61;
  v8 = static LocalizationSource.main;

  v9 = sub_251702C94();
  v10 = v0;
  v12 = v11;

  *(v7 + 80) = v9;
  *(v7 + 88) = v12;
  v13 = sub_251699838(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[5] = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2517068B0;
  *(v14 + 32) = 1701080931;
  *(v14 + 40) = 0xE400000000000000;
  *(v14 + 48) = 0x5A412D5355;
  *(v14 + 56) = 0xE500000000000000;
  *(v14 + 64) = 0x4E79616C70736964;
  *(v14 + 72) = 0xEB00000000656D61;
  v15 = static LocalizationSource.main;

  v16 = sub_251702C94();
  v18 = v17;

  *(v14 + 80) = v16;
  *(v14 + 88) = v18;
  v19 = sub_251699838(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[6] = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_2517068B0;
  *(v20 + 32) = 1701080931;
  *(v20 + 40) = 0xE400000000000000;
  *(v20 + 48) = 0x52412D5355;
  *(v20 + 56) = 0xE500000000000000;
  *(v20 + 64) = 0x4E79616C70736964;
  *(v20 + 72) = 0xEB00000000656D61;
  v21 = static LocalizationSource.main;

  v22 = sub_251702C94();
  v24 = v23;

  *(v20 + 80) = v22;
  *(v20 + 88) = v24;
  v25 = sub_251699838(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[7] = v25;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_2517068B0;
  *(v26 + 32) = 1701080931;
  *(v26 + 40) = 0xE400000000000000;
  *(v26 + 48) = 0x41432D5355;
  *(v26 + 56) = 0xE500000000000000;
  *(v26 + 64) = 0x4E79616C70736964;
  *(v26 + 72) = 0xEB00000000656D61;
  v27 = static LocalizationSource.main;

  v28 = sub_251702C94();
  v30 = v29;

  *(v26 + 80) = v28;
  *(v26 + 88) = v30;
  v31 = sub_251699838(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[8] = v31;
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_2517068B0;
  *(v32 + 32) = 1701080931;
  *(v32 + 40) = 0xE400000000000000;
  *(v32 + 48) = 0x4F432D5355;
  *(v32 + 56) = 0xE500000000000000;
  *(v32 + 64) = 0x4E79616C70736964;
  *(v32 + 72) = 0xEB00000000656D61;
  v33 = static LocalizationSource.main;

  v34 = sub_251702C94();
  v36 = v35;

  *(v32 + 80) = v34;
  *(v32 + 88) = v36;
  v37 = sub_251699838(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[9] = v37;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_2517068B0;
  *(v38 + 32) = 1701080931;
  *(v38 + 40) = 0xE400000000000000;
  *(v38 + 48) = 0x54432D5355;
  *(v38 + 56) = 0xE500000000000000;
  *(v38 + 64) = 0x4E79616C70736964;
  *(v38 + 72) = 0xEB00000000656D61;
  v39 = static LocalizationSource.main;

  v40 = sub_251702C94();
  v42 = v41;

  *(v38 + 80) = v40;
  *(v38 + 88) = v42;
  v43 = sub_251699838(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[10] = v43;
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_2517068B0;
  *(v44 + 32) = 1701080931;
  *(v44 + 40) = 0xE400000000000000;
  *(v44 + 48) = 0x45442D5355;
  *(v44 + 56) = 0xE500000000000000;
  *(v44 + 64) = 0x4E79616C70736964;
  *(v44 + 72) = 0xEB00000000656D61;
  v45 = static LocalizationSource.main;

  v46 = sub_251702C94();
  v48 = v47;

  *(v44 + 80) = v46;
  *(v44 + 88) = v48;
  v49 = sub_251699838(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[11] = v49;
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_2517068B0;
  *(v50 + 32) = 1701080931;
  *(v50 + 40) = 0xE400000000000000;
  *(v50 + 48) = 0x4C462D5355;
  *(v50 + 56) = 0xE500000000000000;
  *(v50 + 64) = 0x4E79616C70736964;
  *(v50 + 72) = 0xEB00000000656D61;
  v51 = static LocalizationSource.main;

  v52 = sub_251702C94();
  v54 = v53;

  *(v50 + 80) = v52;
  *(v50 + 88) = v54;
  v55 = sub_251699838(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[12] = v55;
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_2517068B0;
  *(v56 + 32) = 1701080931;
  *(v56 + 40) = 0xE400000000000000;
  *(v56 + 48) = 0x41472D5355;
  *(v56 + 56) = 0xE500000000000000;
  *(v56 + 64) = 0x4E79616C70736964;
  *(v56 + 72) = 0xEB00000000656D61;
  v57 = static LocalizationSource.main;

  v58 = sub_251702C94();
  v60 = v59;

  *(v56 + 80) = v58;
  *(v56 + 88) = v60;
  v61 = sub_251699838(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10[13] = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_2517068B0;
  *(v62 + 32) = 1701080931;
  *(v62 + 40) = 0xE400000000000000;
  *(v62 + 48) = 0x49482D5355;
  *(v62 + 56) = 0xE500000000000000;
  *(v62 + 64) = 0x4E79616C70736964;
  *(v62 + 72) = 0xEB00000000656D61;
  v63 = static LocalizationSource.main;

  v64 = sub_251702C94();
  v66 = v65;

  *(v62 + 80) = v64;
  *(v62 + 88) = v66;
  v67 = sub_251699838(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[14] = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2517068B0;
  *(v68 + 32) = 1701080931;
  *(v68 + 40) = 0xE400000000000000;
  *(v68 + 48) = 0x44492D5355;
  *(v68 + 56) = 0xE500000000000000;
  *(v68 + 64) = 0x4E79616C70736964;
  *(v68 + 72) = 0xEB00000000656D61;
  v69 = static LocalizationSource.main;

  v70 = sub_251702C94();
  v72 = v71;

  *(v68 + 80) = v70;
  *(v68 + 88) = v72;
  v73 = sub_251699838(v68);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[15] = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_2517068B0;
  *(v74 + 32) = 1701080931;
  *(v74 + 40) = 0xE400000000000000;
  *(v74 + 48) = 0x4C492D5355;
  *(v74 + 56) = 0xE500000000000000;
  *(v74 + 64) = 0x4E79616C70736964;
  *(v74 + 72) = 0xEB00000000656D61;
  v75 = static LocalizationSource.main;

  v76 = sub_251702C94();
  v78 = v77;

  *(v74 + 80) = v76;
  *(v74 + 88) = v78;
  v79 = sub_251699838(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[16] = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_2517068B0;
  *(v80 + 32) = 1701080931;
  *(v80 + 40) = 0xE400000000000000;
  *(v80 + 48) = 0x4E492D5355;
  *(v80 + 56) = 0xE500000000000000;
  *(v80 + 64) = 0x4E79616C70736964;
  *(v80 + 72) = 0xEB00000000656D61;
  v81 = static LocalizationSource.main;

  v82 = sub_251702C94();
  v84 = v83;

  *(v80 + 80) = v82;
  *(v80 + 88) = v84;
  v85 = sub_251699838(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[17] = v85;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_2517068B0;
  *(v86 + 32) = 1701080931;
  *(v86 + 40) = 0xE400000000000000;
  *(v86 + 48) = 0x41492D5355;
  *(v86 + 56) = 0xE500000000000000;
  *(v86 + 64) = 0x4E79616C70736964;
  *(v86 + 72) = 0xEB00000000656D61;
  v87 = static LocalizationSource.main;

  v88 = sub_251702C94();
  v90 = v89;

  *(v86 + 80) = v88;
  *(v86 + 88) = v90;
  v91 = sub_251699838(v86);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[18] = v91;
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_2517068B0;
  *(v92 + 32) = 1701080931;
  *(v92 + 40) = 0xE400000000000000;
  *(v92 + 48) = 0x534B2D5355;
  *(v92 + 56) = 0xE500000000000000;
  *(v92 + 64) = 0x4E79616C70736964;
  *(v92 + 72) = 0xEB00000000656D61;
  v93 = static LocalizationSource.main;

  v94 = sub_251702C94();
  v96 = v95;

  *(v92 + 80) = v94;
  *(v92 + 88) = v96;
  v97 = sub_251699838(v92);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[19] = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_2517068B0;
  *(v98 + 32) = 1701080931;
  *(v98 + 40) = 0xE400000000000000;
  *(v98 + 48) = 0x594B2D5355;
  *(v98 + 56) = 0xE500000000000000;
  *(v98 + 64) = 0x4E79616C70736964;
  *(v98 + 72) = 0xEB00000000656D61;
  v99 = static LocalizationSource.main;

  v100 = sub_251702C94();
  v102 = v101;

  *(v98 + 80) = v100;
  *(v98 + 88) = v102;
  v103 = sub_251699838(v98);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[20] = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_2517068B0;
  *(v104 + 32) = 1701080931;
  *(v104 + 40) = 0xE400000000000000;
  *(v104 + 48) = 0x414C2D5355;
  *(v104 + 56) = 0xE500000000000000;
  *(v104 + 64) = 0x4E79616C70736964;
  *(v104 + 72) = 0xEB00000000656D61;
  v105 = static LocalizationSource.main;

  v106 = sub_251702C94();
  v108 = v107;

  *(v104 + 80) = v106;
  *(v104 + 88) = v108;
  v109 = sub_251699838(v104);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[21] = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_2517068B0;
  *(v110 + 32) = 1701080931;
  *(v110 + 40) = 0xE400000000000000;
  *(v110 + 48) = 0x454D2D5355;
  *(v110 + 56) = 0xE500000000000000;
  *(v110 + 64) = 0x4E79616C70736964;
  *(v110 + 72) = 0xEB00000000656D61;
  v111 = static LocalizationSource.main;

  v112 = sub_251702C94();
  v114 = v113;

  *(v110 + 80) = v112;
  *(v110 + 88) = v114;
  v115 = sub_251699838(v110);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[22] = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_2517068B0;
  *(v116 + 32) = 1701080931;
  *(v116 + 40) = 0xE400000000000000;
  *(v116 + 48) = 0x444D2D5355;
  *(v116 + 56) = 0xE500000000000000;
  *(v116 + 64) = 0x4E79616C70736964;
  *(v116 + 72) = 0xEB00000000656D61;
  v117 = static LocalizationSource.main;

  v118 = sub_251702C94();
  v120 = v119;

  *(v116 + 80) = v118;
  *(v116 + 88) = v120;
  v121 = sub_251699838(v116);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[23] = v121;
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_2517068B0;
  *(v122 + 32) = 1701080931;
  *(v122 + 40) = 0xE400000000000000;
  *(v122 + 48) = 0x414D2D5355;
  *(v122 + 56) = 0xE500000000000000;
  *(v122 + 64) = 0x4E79616C70736964;
  *(v122 + 72) = 0xEB00000000656D61;
  v123 = static LocalizationSource.main;

  v124 = sub_251702C94();
  v126 = v125;

  *(v122 + 80) = v124;
  *(v122 + 88) = v126;
  v127 = sub_251699838(v122);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[24] = v127;
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_2517068B0;
  *(v128 + 32) = 1701080931;
  *(v128 + 40) = 0xE400000000000000;
  *(v128 + 48) = 0x494D2D5355;
  *(v128 + 56) = 0xE500000000000000;
  *(v128 + 64) = 0x4E79616C70736964;
  *(v128 + 72) = 0xEB00000000656D61;
  v129 = static LocalizationSource.main;

  v130 = sub_251702C94();
  v132 = v131;

  *(v128 + 80) = v130;
  *(v128 + 88) = v132;
  v133 = sub_251699838(v128);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[25] = v133;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_2517068B0;
  *(v134 + 32) = 1701080931;
  *(v134 + 40) = 0xE400000000000000;
  *(v134 + 48) = 0x4E4D2D5355;
  *(v134 + 56) = 0xE500000000000000;
  *(v134 + 64) = 0x4E79616C70736964;
  *(v134 + 72) = 0xEB00000000656D61;
  v135 = static LocalizationSource.main;

  v136 = sub_251702C94();
  v138 = v137;

  *(v134 + 80) = v136;
  *(v134 + 88) = v138;
  v139 = sub_251699838(v134);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[26] = v139;
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_2517068B0;
  *(v140 + 32) = 1701080931;
  *(v140 + 40) = 0xE400000000000000;
  *(v140 + 48) = 0x534D2D5355;
  *(v140 + 56) = 0xE500000000000000;
  *(v140 + 64) = 0x4E79616C70736964;
  *(v140 + 72) = 0xEB00000000656D61;
  v141 = static LocalizationSource.main;

  v142 = sub_251702C94();
  v144 = v143;

  *(v140 + 80) = v142;
  *(v140 + 88) = v144;
  v145 = sub_251699838(v140);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[27] = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_2517068B0;
  *(v146 + 32) = 1701080931;
  *(v146 + 40) = 0xE400000000000000;
  *(v146 + 48) = 0x4F4D2D5355;
  *(v146 + 56) = 0xE500000000000000;
  *(v146 + 64) = 0x4E79616C70736964;
  *(v146 + 72) = 0xEB00000000656D61;
  v147 = static LocalizationSource.main;

  v148 = sub_251702C94();
  v150 = v149;

  *(v146 + 80) = v148;
  *(v146 + 88) = v150;
  v151 = sub_251699838(v146);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[28] = v151;
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_2517068B0;
  *(v152 + 32) = 1701080931;
  *(v152 + 40) = 0xE400000000000000;
  *(v152 + 48) = 0x544D2D5355;
  *(v152 + 56) = 0xE500000000000000;
  *(v152 + 64) = 0x4E79616C70736964;
  *(v152 + 72) = 0xEB00000000656D61;
  v153 = static LocalizationSource.main;

  v154 = sub_251702C94();
  v156 = v155;

  *(v152 + 80) = v154;
  *(v152 + 88) = v156;
  v157 = sub_251699838(v152);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[29] = v157;
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_2517068B0;
  *(v158 + 32) = 1701080931;
  *(v158 + 40) = 0xE400000000000000;
  *(v158 + 48) = 0x454E2D5355;
  *(v158 + 56) = 0xE500000000000000;
  *(v158 + 64) = 0x4E79616C70736964;
  *(v158 + 72) = 0xEB00000000656D61;
  v159 = static LocalizationSource.main;

  v160 = sub_251702C94();
  v162 = v161;

  *(v158 + 80) = v160;
  *(v158 + 88) = v162;
  v163 = sub_251699838(v158);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[30] = v163;
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_2517068B0;
  *(v164 + 32) = 1701080931;
  *(v164 + 40) = 0xE400000000000000;
  *(v164 + 48) = 0x564E2D5355;
  *(v164 + 56) = 0xE500000000000000;
  *(v164 + 64) = 0x4E79616C70736964;
  *(v164 + 72) = 0xEB00000000656D61;
  v165 = static LocalizationSource.main;

  v166 = sub_251702C94();
  v168 = v167;

  *(v164 + 80) = v166;
  *(v164 + 88) = v168;
  v169 = sub_251699838(v164);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[31] = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_2517068B0;
  *(v170 + 32) = 1701080931;
  *(v170 + 40) = 0xE400000000000000;
  *(v170 + 48) = 0x484E2D5355;
  *(v170 + 56) = 0xE500000000000000;
  *(v170 + 64) = 0x4E79616C70736964;
  *(v170 + 72) = 0xEB00000000656D61;
  v171 = static LocalizationSource.main;

  v172 = sub_251702C94();
  v174 = v173;

  *(v170 + 80) = v172;
  *(v170 + 88) = v174;
  v175 = sub_251699838(v170);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[32] = v175;
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_2517068B0;
  *(v176 + 32) = 1701080931;
  *(v176 + 40) = 0xE400000000000000;
  *(v176 + 48) = 0x4A4E2D5355;
  *(v176 + 56) = 0xE500000000000000;
  *(v176 + 64) = 0x4E79616C70736964;
  *(v176 + 72) = 0xEB00000000656D61;
  v177 = static LocalizationSource.main;

  v178 = sub_251702C94();
  v180 = v179;

  *(v176 + 80) = v178;
  *(v176 + 88) = v180;
  v181 = sub_251699838(v176);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[33] = v181;
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_2517068B0;
  *(v182 + 32) = 1701080931;
  *(v182 + 40) = 0xE400000000000000;
  *(v182 + 48) = 0x4D4E2D5355;
  *(v182 + 56) = 0xE500000000000000;
  *(v182 + 64) = 0x4E79616C70736964;
  *(v182 + 72) = 0xEB00000000656D61;
  v183 = static LocalizationSource.main;

  v184 = sub_251702C94();
  v186 = v185;

  *(v182 + 80) = v184;
  *(v182 + 88) = v186;
  v187 = sub_251699838(v182);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[34] = v187;
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_2517068B0;
  *(v188 + 32) = 1701080931;
  *(v188 + 40) = 0xE400000000000000;
  *(v188 + 48) = 0x594E2D5355;
  *(v188 + 56) = 0xE500000000000000;
  *(v188 + 64) = 0x4E79616C70736964;
  *(v188 + 72) = 0xEB00000000656D61;
  v189 = static LocalizationSource.main;

  v190 = sub_251702C94();
  v192 = v191;

  *(v188 + 80) = v190;
  *(v188 + 88) = v192;
  v193 = sub_251699838(v188);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[35] = v193;
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_2517068B0;
  *(v194 + 32) = 1701080931;
  *(v194 + 40) = 0xE400000000000000;
  *(v194 + 48) = 0x434E2D5355;
  *(v194 + 56) = 0xE500000000000000;
  *(v194 + 64) = 0x4E79616C70736964;
  *(v194 + 72) = 0xEB00000000656D61;
  v195 = static LocalizationSource.main;

  v196 = sub_251702C94();
  v198 = v197;

  *(v194 + 80) = v196;
  *(v194 + 88) = v198;
  v199 = sub_251699838(v194);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[36] = v199;
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_2517068B0;
  *(v200 + 32) = 1701080931;
  *(v200 + 40) = 0xE400000000000000;
  *(v200 + 48) = 0x444E2D5355;
  *(v200 + 56) = 0xE500000000000000;
  *(v200 + 64) = 0x4E79616C70736964;
  *(v200 + 72) = 0xEB00000000656D61;
  v201 = static LocalizationSource.main;

  v202 = sub_251702C94();
  v204 = v203;

  *(v200 + 80) = v202;
  *(v200 + 88) = v204;
  v205 = sub_251699838(v200);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[37] = v205;
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_2517068B0;
  *(v206 + 32) = 1701080931;
  *(v206 + 40) = 0xE400000000000000;
  *(v206 + 48) = 0x484F2D5355;
  *(v206 + 56) = 0xE500000000000000;
  *(v206 + 64) = 0x4E79616C70736964;
  *(v206 + 72) = 0xEB00000000656D61;
  v207 = static LocalizationSource.main;

  v208 = sub_251702C94();
  v210 = v209;

  *(v206 + 80) = v208;
  *(v206 + 88) = v210;
  v211 = sub_251699838(v206);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[38] = v211;
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_2517068B0;
  *(v212 + 32) = 1701080931;
  *(v212 + 40) = 0xE400000000000000;
  *(v212 + 48) = 0x4B4F2D5355;
  *(v212 + 56) = 0xE500000000000000;
  *(v212 + 64) = 0x4E79616C70736964;
  *(v212 + 72) = 0xEB00000000656D61;
  v213 = static LocalizationSource.main;

  v214 = sub_251702C94();
  v216 = v215;

  *(v212 + 80) = v214;
  *(v212 + 88) = v216;
  v217 = sub_251699838(v212);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[39] = v217;
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_2517068B0;
  *(v218 + 32) = 1701080931;
  *(v218 + 40) = 0xE400000000000000;
  *(v218 + 48) = 0x524F2D5355;
  *(v218 + 56) = 0xE500000000000000;
  *(v218 + 64) = 0x4E79616C70736964;
  *(v218 + 72) = 0xEB00000000656D61;
  v219 = static LocalizationSource.main;

  v220 = sub_251702C94();
  v222 = v221;

  *(v218 + 80) = v220;
  *(v218 + 88) = v222;
  v223 = sub_251699838(v218);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[40] = v223;
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_2517068B0;
  *(v224 + 32) = 1701080931;
  *(v224 + 40) = 0xE400000000000000;
  *(v224 + 48) = 0x41502D5355;
  *(v224 + 56) = 0xE500000000000000;
  *(v224 + 64) = 0x4E79616C70736964;
  *(v224 + 72) = 0xEB00000000656D61;
  v225 = static LocalizationSource.main;

  v226 = sub_251702C94();
  v228 = v227;

  *(v224 + 80) = v226;
  *(v224 + 88) = v228;
  v229 = sub_251699838(v224);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[41] = v229;
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_2517068B0;
  *(v230 + 32) = 1701080931;
  *(v230 + 40) = 0xE400000000000000;
  *(v230 + 48) = 0x49522D5355;
  *(v230 + 56) = 0xE500000000000000;
  *(v230 + 64) = 0x4E79616C70736964;
  *(v230 + 72) = 0xEB00000000656D61;
  v231 = static LocalizationSource.main;

  v232 = sub_251702C94();
  v234 = v233;

  *(v230 + 80) = v232;
  *(v230 + 88) = v234;
  v235 = sub_251699838(v230);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[42] = v235;
  v236 = swift_allocObject();
  *(v236 + 16) = xmmword_2517068B0;
  *(v236 + 32) = 1701080931;
  *(v236 + 40) = 0xE400000000000000;
  *(v236 + 48) = 0x43532D5355;
  *(v236 + 56) = 0xE500000000000000;
  *(v236 + 64) = 0x4E79616C70736964;
  *(v236 + 72) = 0xEB00000000656D61;
  v237 = static LocalizationSource.main;

  v238 = sub_251702C94();
  v240 = v239;

  *(v236 + 80) = v238;
  *(v236 + 88) = v240;
  v241 = sub_251699838(v236);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[43] = v241;
  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_2517068B0;
  *(v242 + 32) = 1701080931;
  *(v242 + 40) = 0xE400000000000000;
  *(v242 + 48) = 0x44532D5355;
  *(v242 + 56) = 0xE500000000000000;
  *(v242 + 64) = 0x4E79616C70736964;
  *(v242 + 72) = 0xEB00000000656D61;
  v243 = static LocalizationSource.main;

  v244 = sub_251702C94();
  v246 = v245;

  *(v242 + 80) = v244;
  *(v242 + 88) = v246;
  v247 = sub_251699838(v242);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[44] = v247;
  v248 = swift_allocObject();
  *(v248 + 16) = xmmword_2517068B0;
  *(v248 + 32) = 1701080931;
  *(v248 + 40) = 0xE400000000000000;
  *(v248 + 48) = 0x4E542D5355;
  *(v248 + 56) = 0xE500000000000000;
  *(v248 + 64) = 0x4E79616C70736964;
  *(v248 + 72) = 0xEB00000000656D61;
  v249 = static LocalizationSource.main;

  v250 = sub_251702C94();
  v252 = v251;

  *(v248 + 80) = v250;
  *(v248 + 88) = v252;
  v253 = sub_251699838(v248);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[45] = v253;
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_2517068B0;
  *(v254 + 32) = 1701080931;
  *(v254 + 40) = 0xE400000000000000;
  *(v254 + 48) = 0x58542D5355;
  *(v254 + 56) = 0xE500000000000000;
  *(v254 + 64) = 0x4E79616C70736964;
  *(v254 + 72) = 0xEB00000000656D61;
  v255 = static LocalizationSource.main;

  v256 = sub_251702C94();
  v258 = v257;

  *(v254 + 80) = v256;
  *(v254 + 88) = v258;
  v259 = sub_251699838(v254);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[46] = v259;
  v260 = swift_allocObject();
  *(v260 + 16) = xmmword_2517068B0;
  *(v260 + 32) = 1701080931;
  *(v260 + 40) = 0xE400000000000000;
  *(v260 + 48) = 0x54552D5355;
  *(v260 + 56) = 0xE500000000000000;
  *(v260 + 64) = 0x4E79616C70736964;
  *(v260 + 72) = 0xEB00000000656D61;
  v261 = static LocalizationSource.main;

  v262 = sub_251702C94();
  v264 = v263;

  *(v260 + 80) = v262;
  *(v260 + 88) = v264;
  v265 = sub_251699838(v260);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[47] = v265;
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_2517068B0;
  *(v266 + 32) = 1701080931;
  *(v266 + 40) = 0xE400000000000000;
  *(v266 + 48) = 0x54562D5355;
  *(v266 + 56) = 0xE500000000000000;
  *(v266 + 64) = 0x4E79616C70736964;
  *(v266 + 72) = 0xEB00000000656D61;
  v267 = static LocalizationSource.main;

  v268 = sub_251702C94();
  v270 = v269;

  *(v266 + 80) = v268;
  *(v266 + 88) = v270;
  v271 = sub_251699838(v266);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[48] = v271;
  v272 = swift_allocObject();
  *(v272 + 16) = xmmword_2517068B0;
  *(v272 + 32) = 1701080931;
  *(v272 + 40) = 0xE400000000000000;
  *(v272 + 48) = 0x41562D5355;
  *(v272 + 56) = 0xE500000000000000;
  *(v272 + 64) = 0x4E79616C70736964;
  *(v272 + 72) = 0xEB00000000656D61;
  v273 = static LocalizationSource.main;

  v274 = sub_251702C94();
  v276 = v275;

  *(v272 + 80) = v274;
  *(v272 + 88) = v276;
  v277 = sub_251699838(v272);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[49] = v277;
  v278 = swift_allocObject();
  *(v278 + 16) = xmmword_2517068B0;
  *(v278 + 32) = 1701080931;
  *(v278 + 40) = 0xE400000000000000;
  *(v278 + 48) = 0x41572D5355;
  *(v278 + 56) = 0xE500000000000000;
  *(v278 + 64) = 0x4E79616C70736964;
  *(v278 + 72) = 0xEB00000000656D61;
  v279 = static LocalizationSource.main;

  v280 = sub_251702C94();
  v282 = v281;

  *(v278 + 80) = v280;
  *(v278 + 88) = v282;
  v283 = sub_251699838(v278);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[50] = v283;
  v284 = swift_allocObject();
  *(v284 + 16) = xmmword_2517068B0;
  *(v284 + 32) = 1701080931;
  *(v284 + 40) = 0xE400000000000000;
  *(v284 + 48) = 0x56572D5355;
  *(v284 + 56) = 0xE500000000000000;
  *(v284 + 64) = 0x4E79616C70736964;
  *(v284 + 72) = 0xEB00000000656D61;
  v285 = static LocalizationSource.main;

  v286 = sub_251702C94();
  v288 = v287;

  *(v284 + 80) = v286;
  *(v284 + 88) = v288;
  v289 = sub_251699838(v284);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[51] = v289;
  v290 = swift_allocObject();
  *(v290 + 16) = xmmword_2517068B0;
  *(v290 + 32) = 1701080931;
  *(v290 + 40) = 0xE400000000000000;
  *(v290 + 48) = 0x49572D5355;
  *(v290 + 56) = 0xE500000000000000;
  *(v290 + 64) = 0x4E79616C70736964;
  *(v290 + 72) = 0xEB00000000656D61;
  v291 = static LocalizationSource.main;

  v292 = sub_251702C94();
  v294 = v293;

  *(v290 + 80) = v292;
  *(v290 + 88) = v294;
  v295 = sub_251699838(v290);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[52] = v295;
  v296 = swift_allocObject();
  *(v296 + 16) = xmmword_2517068B0;
  *(v296 + 32) = 1701080931;
  *(v296 + 40) = 0xE400000000000000;
  *(v296 + 48) = 0x59572D5355;
  *(v296 + 56) = 0xE500000000000000;
  *(v296 + 64) = 0x4E79616C70736964;
  *(v296 + 72) = 0xEB00000000656D61;
  v297 = static LocalizationSource.main;

  v298 = sub_251702C94();
  v300 = v299;

  *(v296 + 80) = v298;
  *(v296 + 88) = v300;
  v301 = sub_251699838(v296);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[53] = v301;
  v302 = swift_allocObject();
  *(v302 + 16) = xmmword_2517068B0;
  *(v302 + 32) = 1701080931;
  *(v302 + 40) = 0xE400000000000000;
  *(v302 + 48) = 0x43442D5355;
  *(v302 + 56) = 0xE500000000000000;
  *(v302 + 64) = 0x4E79616C70736964;
  *(v302 + 72) = 0xEB00000000656D61;
  v303 = static LocalizationSource.main;

  v304 = sub_251702C94();
  v306 = v305;

  *(v302 + 80) = v304;
  *(v302 + 88) = v306;
  v307 = sub_251699838(v302);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[54] = v307;
  v308 = swift_allocObject();
  *(v308 + 16) = xmmword_2517068B0;
  *(v308 + 32) = 1701080931;
  *(v308 + 40) = 0xE400000000000000;
  *(v308 + 48) = 0x474E452D4247;
  *(v308 + 56) = 0xE600000000000000;
  *(v308 + 64) = 0x4E79616C70736964;
  *(v308 + 72) = 0xEB00000000656D61;
  v309 = static LocalizationSource.main;

  v310 = sub_251702C94();
  v312 = v311;

  *(v308 + 80) = v310;
  *(v308 + 88) = v312;
  v313 = sub_251699838(v308);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[55] = v313;
  v314 = swift_allocObject();
  *(v314 + 16) = xmmword_2517068B0;
  *(v314 + 32) = 1701080931;
  *(v314 + 40) = 0xE400000000000000;
  *(v314 + 48) = 0x52494E2D4247;
  *(v314 + 56) = 0xE600000000000000;
  *(v314 + 64) = 0x4E79616C70736964;
  *(v314 + 72) = 0xEB00000000656D61;
  v315 = static LocalizationSource.main;

  v316 = sub_251702C94();
  v318 = v317;

  *(v314 + 80) = v316;
  *(v314 + 88) = v318;
  v319 = sub_251699838(v314);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[56] = v319;
  v320 = swift_allocObject();
  *(v320 + 16) = xmmword_2517068B0;
  *(v320 + 32) = 1701080931;
  *(v320 + 40) = 0xE400000000000000;
  *(v320 + 48) = 0x5443532D4247;
  *(v320 + 56) = 0xE600000000000000;
  *(v320 + 64) = 0x4E79616C70736964;
  *(v320 + 72) = 0xEB00000000656D61;
  v321 = static LocalizationSource.main;

  v322 = sub_251702C94();
  v324 = v323;

  *(v320 + 80) = v322;
  *(v320 + 88) = v324;
  v325 = sub_251699838(v320);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[57] = v325;
  v326 = swift_allocObject();
  *(v326 + 16) = xmmword_2517068B0;
  *(v326 + 32) = 1701080931;
  *(v326 + 40) = 0xE400000000000000;
  *(v326 + 48) = 0x534C572D4247;
  *(v326 + 56) = 0xE600000000000000;
  *(v326 + 64) = 0x4E79616C70736964;
  *(v326 + 72) = 0xEB00000000656D61;
  v327 = static LocalizationSource.main;

  v328 = sub_251702C94();
  v330 = v329;

  *(v326 + 80) = v328;
  *(v326 + 88) = v330;
  v331 = sub_251699838(v326);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[58] = v331;
  v332 = swift_allocObject();
  *(v332 + 16) = xmmword_2517068B0;
  *(v332 + 32) = 1701080931;
  *(v332 + 40) = 0xE400000000000000;
  *(v332 + 48) = 0x4E412D4E49;
  *(v332 + 56) = 0xE500000000000000;
  *(v332 + 64) = 0x4E79616C70736964;
  *(v332 + 72) = 0xEB00000000656D61;
  v333 = static LocalizationSource.main;

  v334 = sub_251702C94();
  v336 = v335;

  *(v332 + 80) = v334;
  *(v332 + 88) = v336;
  v337 = sub_251699838(v332);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[59] = v337;
  v338 = swift_allocObject();
  *(v338 + 16) = xmmword_2517068B0;
  *(v338 + 32) = 1701080931;
  *(v338 + 40) = 0xE400000000000000;
  *(v338 + 48) = 0x50412D4E49;
  *(v338 + 56) = 0xE500000000000000;
  *(v338 + 64) = 0x4E79616C70736964;
  *(v338 + 72) = 0xEB00000000656D61;
  v339 = static LocalizationSource.main;

  v340 = sub_251702C94();
  v342 = v341;

  *(v338 + 80) = v340;
  *(v338 + 88) = v342;
  v343 = sub_251699838(v338);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[60] = v343;
  v344 = swift_allocObject();
  *(v344 + 32) = 1701080931;
  *(v344 + 16) = xmmword_2517068B0;
  *(v344 + 40) = 0xE400000000000000;
  *(v344 + 48) = 0x52412D4E49;
  *(v344 + 56) = 0xE500000000000000;
  *(v344 + 64) = 0x4E79616C70736964;
  *(v344 + 72) = 0xEB00000000656D61;
  v345 = static LocalizationSource.main;

  v346 = sub_251702C94();
  v348 = v347;

  *(v344 + 80) = v346;
  *(v344 + 88) = v348;
  v349 = sub_251699838(v344);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[61] = v349;
  v350 = swift_allocObject();
  *(v350 + 16) = xmmword_2517068B0;
  *(v350 + 32) = 1701080931;
  *(v350 + 40) = 0xE400000000000000;
  *(v350 + 48) = 0x53412D4E49;
  *(v350 + 56) = 0xE500000000000000;
  *(v350 + 64) = 0x4E79616C70736964;
  *(v350 + 72) = 0xEB00000000656D61;
  v351 = static LocalizationSource.main;

  v352 = sub_251702C94();
  v354 = v353;

  *(v350 + 80) = v352;
  *(v350 + 88) = v354;
  v355 = sub_251699838(v350);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[62] = v355;
  v356 = swift_allocObject();
  *(v356 + 16) = xmmword_2517068B0;
  *(v356 + 32) = 1701080931;
  *(v356 + 40) = 0xE400000000000000;
  *(v356 + 48) = 0x52422D4E49;
  *(v356 + 56) = 0xE500000000000000;
  *(v356 + 64) = 0x4E79616C70736964;
  *(v356 + 72) = 0xEB00000000656D61;
  v357 = static LocalizationSource.main;

  v358 = sub_251702C94();
  v360 = v359;

  *(v356 + 80) = v358;
  *(v356 + 88) = v360;
  v361 = sub_251699838(v356);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[63] = v361;
  v362 = swift_allocObject();
  *(v362 + 16) = xmmword_2517068B0;
  *(v362 + 32) = 1701080931;
  *(v362 + 40) = 0xE400000000000000;
  *(v362 + 48) = 0x48432D4E49;
  *(v362 + 56) = 0xE500000000000000;
  *(v362 + 64) = 0x4E79616C70736964;
  *(v362 + 72) = 0xEB00000000656D61;
  v363 = static LocalizationSource.main;

  v364 = sub_251702C94();
  v366 = v365;

  *(v362 + 80) = v364;
  *(v362 + 88) = v366;
  v367 = sub_251699838(v362);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[64] = v367;
  v368 = swift_allocObject();
  *(v368 + 16) = xmmword_2517068B0;
  *(v368 + 32) = 1701080931;
  *(v368 + 40) = 0xE400000000000000;
  *(v368 + 48) = 0x54432D4E49;
  *(v368 + 56) = 0xE500000000000000;
  *(v368 + 64) = 0x4E79616C70736964;
  *(v368 + 72) = 0xEB00000000656D61;
  v369 = static LocalizationSource.main;

  v370 = sub_251702C94();
  v372 = v371;

  *(v368 + 80) = v370;
  *(v368 + 88) = v372;
  v373 = sub_251699838(v368);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[65] = v373;
  v374 = swift_allocObject();
  *(v374 + 16) = xmmword_2517068B0;
  *(v374 + 32) = 1701080931;
  *(v374 + 40) = 0xE400000000000000;
  *(v374 + 48) = 0x44442D4E49;
  *(v374 + 56) = 0xE500000000000000;
  *(v374 + 64) = 0x4E79616C70736964;
  *(v374 + 72) = 0xEB00000000656D61;
  v375 = static LocalizationSource.main;

  v376 = sub_251702C94();
  v378 = v377;

  *(v374 + 80) = v376;
  *(v374 + 88) = v378;
  v379 = sub_251699838(v374);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[66] = v379;
  v380 = swift_allocObject();
  *(v380 + 16) = xmmword_2517068B0;
  *(v380 + 32) = 1701080931;
  *(v380 + 40) = 0xE400000000000000;
  *(v380 + 48) = 0x4C442D4E49;
  *(v380 + 56) = 0xE500000000000000;
  *(v380 + 64) = 0x4E79616C70736964;
  *(v380 + 72) = 0xEB00000000656D61;
  v381 = static LocalizationSource.main;

  v382 = sub_251702C94();
  v384 = v383;

  *(v380 + 80) = v382;
  *(v380 + 88) = v384;
  v385 = sub_251699838(v380);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[67] = v385;
  v386 = swift_allocObject();
  *(v386 + 16) = xmmword_2517068B0;
  *(v386 + 32) = 1701080931;
  *(v386 + 40) = 0xE400000000000000;
  *(v386 + 48) = 0x4E442D4E49;
  *(v386 + 56) = 0xE500000000000000;
  *(v386 + 64) = 0x4E79616C70736964;
  *(v386 + 72) = 0xEB00000000656D61;
  v387 = static LocalizationSource.main;

  v388 = sub_251702C94();
  v390 = v389;

  *(v386 + 80) = v388;
  *(v386 + 88) = v390;
  v391 = sub_251699838(v386);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[68] = v391;
  v392 = swift_allocObject();
  *(v392 + 16) = xmmword_2517068B0;
  *(v392 + 32) = 1701080931;
  *(v392 + 40) = 0xE400000000000000;
  *(v392 + 48) = 0x41472D4E49;
  *(v392 + 56) = 0xE500000000000000;
  *(v392 + 64) = 0x4E79616C70736964;
  *(v392 + 72) = 0xEB00000000656D61;
  v393 = static LocalizationSource.main;

  v394 = sub_251702C94();
  v396 = v395;

  *(v392 + 80) = v394;
  *(v392 + 88) = v396;
  v397 = sub_251699838(v392);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[69] = v397;
  v398 = swift_allocObject();
  *(v398 + 16) = xmmword_2517068B0;
  *(v398 + 32) = 1701080931;
  *(v398 + 40) = 0xE400000000000000;
  *(v398 + 48) = 0x4A472D4E49;
  *(v398 + 56) = 0xE500000000000000;
  *(v398 + 64) = 0x4E79616C70736964;
  *(v398 + 72) = 0xEB00000000656D61;
  v399 = static LocalizationSource.main;

  v400 = sub_251702C94();
  v402 = v401;

  *(v398 + 80) = v400;
  *(v398 + 88) = v402;
  v403 = sub_251699838(v398);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[70] = v403;
  v404 = swift_allocObject();
  *(v404 + 16) = xmmword_2517068B0;
  *(v404 + 32) = 1701080931;
  *(v404 + 40) = 0xE400000000000000;
  *(v404 + 48) = 0x50482D4E49;
  *(v404 + 56) = 0xE500000000000000;
  *(v404 + 64) = 0x4E79616C70736964;
  *(v404 + 72) = 0xEB00000000656D61;
  v405 = static LocalizationSource.main;

  v406 = sub_251702C94();
  v408 = v407;

  *(v404 + 80) = v406;
  *(v404 + 88) = v408;
  v409 = sub_251699838(v404);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[71] = v409;
  v410 = swift_allocObject();
  *(v410 + 16) = xmmword_2517068B0;
  *(v410 + 32) = 1701080931;
  *(v410 + 40) = 0xE400000000000000;
  *(v410 + 48) = 0x52482D4E49;
  *(v410 + 56) = 0xE500000000000000;
  *(v410 + 64) = 0x4E79616C70736964;
  *(v410 + 72) = 0xEB00000000656D61;
  v411 = static LocalizationSource.main;

  v412 = sub_251702C94();
  v414 = v413;

  *(v410 + 80) = v412;
  *(v410 + 88) = v414;
  v415 = sub_251699838(v410);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[72] = v415;
  v416 = swift_allocObject();
  *(v416 + 16) = xmmword_2517068B0;
  *(v416 + 32) = 1701080931;
  *(v416 + 40) = 0xE400000000000000;
  *(v416 + 48) = 0x484A2D4E49;
  *(v416 + 56) = 0xE500000000000000;
  *(v416 + 64) = 0x4E79616C70736964;
  *(v416 + 72) = 0xEB00000000656D61;
  v417 = static LocalizationSource.main;

  v418 = sub_251702C94();
  v420 = v419;

  *(v416 + 80) = v418;
  *(v416 + 88) = v420;
  v421 = sub_251699838(v416);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[73] = v421;
  v422 = swift_allocObject();
  *(v422 + 16) = xmmword_2517068B0;
  *(v422 + 32) = 1701080931;
  *(v422 + 40) = 0xE400000000000000;
  *(v422 + 48) = 0x4B4A2D4E49;
  *(v422 + 56) = 0xE500000000000000;
  *(v422 + 64) = 0x4E79616C70736964;
  *(v422 + 72) = 0xEB00000000656D61;
  v423 = static LocalizationSource.main;

  v424 = sub_251702C94();
  v426 = v425;

  *(v422 + 80) = v424;
  *(v422 + 88) = v426;
  v427 = sub_251699838(v422);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[74] = v427;
  v428 = swift_allocObject();
  *(v428 + 16) = xmmword_2517068B0;
  *(v428 + 32) = 1701080931;
  *(v428 + 40) = 0xE400000000000000;
  *(v428 + 48) = 0x414B2D4E49;
  *(v428 + 56) = 0xE500000000000000;
  *(v428 + 64) = 0x4E79616C70736964;
  *(v428 + 72) = 0xEB00000000656D61;
  v429 = static LocalizationSource.main;

  v430 = sub_251702C94();
  v432 = v431;

  *(v428 + 80) = v430;
  *(v428 + 88) = v432;
  v433 = sub_251699838(v428);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[75] = v433;
  v434 = swift_allocObject();
  *(v434 + 16) = xmmword_2517068B0;
  *(v434 + 32) = 1701080931;
  *(v434 + 40) = 0xE400000000000000;
  *(v434 + 48) = 0x4C4B2D4E49;
  *(v434 + 56) = 0xE500000000000000;
  *(v434 + 64) = 0x4E79616C70736964;
  *(v434 + 72) = 0xEB00000000656D61;
  v435 = static LocalizationSource.main;

  v436 = sub_251702C94();
  v438 = v437;

  *(v434 + 80) = v436;
  *(v434 + 88) = v438;
  v439 = sub_251699838(v434);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[76] = v439;
  v440 = swift_allocObject();
  *(v440 + 16) = xmmword_2517068B0;
  *(v440 + 32) = 1701080931;
  *(v440 + 40) = 0xE400000000000000;
  *(v440 + 48) = 0x444C2D4E49;
  *(v440 + 56) = 0xE500000000000000;
  *(v440 + 64) = 0x4E79616C70736964;
  *(v440 + 72) = 0xEB00000000656D61;
  v441 = static LocalizationSource.main;

  v442 = sub_251702C94();
  v444 = v443;

  *(v440 + 80) = v442;
  *(v440 + 88) = v444;
  v445 = sub_251699838(v440);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[77] = v445;
  v446 = swift_allocObject();
  *(v446 + 16) = xmmword_2517068B0;
  *(v446 + 32) = 1701080931;
  *(v446 + 40) = 0xE400000000000000;
  *(v446 + 48) = 0x484D2D4E49;
  *(v446 + 56) = 0xE500000000000000;
  *(v446 + 64) = 0x4E79616C70736964;
  *(v446 + 72) = 0xEB00000000656D61;
  v447 = static LocalizationSource.main;

  v448 = sub_251702C94();
  v450 = v449;

  *(v446 + 80) = v448;
  *(v446 + 88) = v450;
  v451 = sub_251699838(v446);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[78] = v451;
  v452 = swift_allocObject();
  *(v452 + 16) = xmmword_2517068B0;
  *(v452 + 32) = 1701080931;
  *(v452 + 40) = 0xE400000000000000;
  *(v452 + 48) = 0x4C4D2D4E49;
  *(v452 + 56) = 0xE500000000000000;
  *(v452 + 64) = 0x4E79616C70736964;
  *(v452 + 72) = 0xEB00000000656D61;
  v453 = static LocalizationSource.main;

  v454 = sub_251702C94();
  v456 = v455;

  *(v452 + 80) = v454;
  *(v452 + 88) = v456;
  v457 = sub_251699838(v452);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[79] = v457;
  v458 = swift_allocObject();
  *(v458 + 16) = xmmword_2517068B0;
  *(v458 + 32) = 1701080931;
  *(v458 + 40) = 0xE400000000000000;
  *(v458 + 48) = 0x4E4D2D4E49;
  *(v458 + 56) = 0xE500000000000000;
  *(v458 + 64) = 0x4E79616C70736964;
  *(v458 + 72) = 0xEB00000000656D61;
  v459 = static LocalizationSource.main;

  v460 = sub_251702C94();
  v462 = v461;

  *(v458 + 80) = v460;
  *(v458 + 88) = v462;
  v463 = sub_251699838(v458);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[80] = v463;
  v464 = swift_allocObject();
  *(v464 + 16) = xmmword_2517068B0;
  *(v464 + 32) = 1701080931;
  *(v464 + 40) = 0xE400000000000000;
  *(v464 + 48) = 0x504D2D4E49;
  *(v464 + 56) = 0xE500000000000000;
  *(v464 + 64) = 0x4E79616C70736964;
  *(v464 + 72) = 0xEB00000000656D61;
  v465 = static LocalizationSource.main;

  v466 = sub_251702C94();
  v468 = v467;

  *(v464 + 80) = v466;
  *(v464 + 88) = v468;
  v469 = sub_251699838(v464);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[81] = v469;
  v470 = swift_allocObject();
  *(v470 + 16) = xmmword_2517068B0;
  *(v470 + 32) = 1701080931;
  *(v470 + 40) = 0xE400000000000000;
  *(v470 + 48) = 0x5A4D2D4E49;
  *(v470 + 56) = 0xE500000000000000;
  *(v470 + 64) = 0x4E79616C70736964;
  *(v470 + 72) = 0xEB00000000656D61;
  v471 = static LocalizationSource.main;

  v472 = sub_251702C94();
  v474 = v473;

  *(v470 + 80) = v472;
  *(v470 + 88) = v474;
  v475 = sub_251699838(v470);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[82] = v475;
  v476 = swift_allocObject();
  *(v476 + 16) = xmmword_2517068B0;
  *(v476 + 32) = 1701080931;
  *(v476 + 40) = 0xE400000000000000;
  *(v476 + 48) = 0x4C4E2D4E49;
  *(v476 + 56) = 0xE500000000000000;
  *(v476 + 64) = 0x4E79616C70736964;
  *(v476 + 72) = 0xEB00000000656D61;
  v477 = static LocalizationSource.main;

  v478 = sub_251702C94();
  v480 = v479;

  *(v476 + 80) = v478;
  *(v476 + 88) = v480;
  v481 = sub_251699838(v476);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[83] = v481;
  v482 = swift_allocObject();
  *(v482 + 16) = xmmword_2517068B0;
  *(v482 + 32) = 1701080931;
  *(v482 + 40) = 0xE400000000000000;
  *(v482 + 48) = 0x524F2D4E49;
  *(v482 + 56) = 0xE500000000000000;
  *(v482 + 64) = 0x4E79616C70736964;
  *(v482 + 72) = 0xEB00000000656D61;
  v483 = static LocalizationSource.main;

  v484 = sub_251702C94();
  v486 = v485;

  *(v482 + 80) = v484;
  *(v482 + 88) = v486;
  v487 = sub_251699838(v482);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[84] = v487;
  v488 = swift_allocObject();
  *(v488 + 16) = xmmword_2517068B0;
  *(v488 + 32) = 1701080931;
  *(v488 + 40) = 0xE400000000000000;
  *(v488 + 48) = 0x42502D4E49;
  *(v488 + 56) = 0xE500000000000000;
  *(v488 + 64) = 0x4E79616C70736964;
  *(v488 + 72) = 0xEB00000000656D61;
  v489 = static LocalizationSource.main;

  v490 = sub_251702C94();
  v492 = v491;

  *(v488 + 80) = v490;
  *(v488 + 88) = v492;
  v493 = sub_251699838(v488);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[85] = v493;
  v494 = swift_allocObject();
  *(v494 + 16) = xmmword_2517068B0;
  *(v494 + 32) = 1701080931;
  *(v494 + 40) = 0xE400000000000000;
  *(v494 + 48) = 0x59502D4E49;
  *(v494 + 56) = 0xE500000000000000;
  *(v494 + 64) = 0x4E79616C70736964;
  *(v494 + 72) = 0xEB00000000656D61;
  v495 = static LocalizationSource.main;

  v496 = sub_251702C94();
  v498 = v497;

  *(v494 + 80) = v496;
  *(v494 + 88) = v498;
  v499 = sub_251699838(v494);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[86] = v499;
  v500 = swift_allocObject();
  *(v500 + 16) = xmmword_2517068B0;
  *(v500 + 32) = 1701080931;
  *(v500 + 40) = 0xE400000000000000;
  *(v500 + 48) = 0x4A522D4E49;
  *(v500 + 56) = 0xE500000000000000;
  *(v500 + 64) = 0x4E79616C70736964;
  *(v500 + 72) = 0xEB00000000656D61;
  v501 = static LocalizationSource.main;

  v502 = sub_251702C94();
  v504 = v503;

  *(v500 + 80) = v502;
  *(v500 + 88) = v504;
  v505 = sub_251699838(v500);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[87] = v505;
  v506 = swift_allocObject();
  *(v506 + 16) = xmmword_2517068B0;
  *(v506 + 32) = 1701080931;
  *(v506 + 40) = 0xE400000000000000;
  *(v506 + 48) = 0x4B532D4E49;
  *(v506 + 56) = 0xE500000000000000;
  *(v506 + 64) = 0x4E79616C70736964;
  *(v506 + 72) = 0xEB00000000656D61;
  v507 = static LocalizationSource.main;

  v508 = sub_251702C94();
  v510 = v509;

  *(v506 + 80) = v508;
  *(v506 + 88) = v510;
  v511 = sub_251699838(v506);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[88] = v511;
  v512 = swift_allocObject();
  *(v512 + 16) = xmmword_2517068B0;
  *(v512 + 32) = 1701080931;
  *(v512 + 40) = 0xE400000000000000;
  *(v512 + 48) = 0x47542D4E49;
  *(v512 + 56) = 0xE500000000000000;
  *(v512 + 64) = 0x4E79616C70736964;
  *(v512 + 72) = 0xEB00000000656D61;
  v513 = static LocalizationSource.main;

  v514 = sub_251702C94();
  v516 = v515;

  *(v512 + 80) = v514;
  *(v512 + 88) = v516;
  v517 = sub_251699838(v512);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[89] = v517;
  v518 = swift_allocObject();
  *(v518 + 16) = xmmword_2517068B0;
  *(v518 + 32) = 1701080931;
  *(v518 + 40) = 0xE400000000000000;
  *(v518 + 48) = 0x4E542D4E49;
  *(v518 + 56) = 0xE500000000000000;
  *(v518 + 64) = 0x4E79616C70736964;
  *(v518 + 72) = 0xEB00000000656D61;
  v519 = static LocalizationSource.main;

  v520 = sub_251702C94();
  v522 = v521;

  *(v518 + 80) = v520;
  *(v518 + 88) = v522;
  v523 = sub_251699838(v518);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[90] = v523;
  v524 = swift_allocObject();
  *(v524 + 16) = xmmword_2517068B0;
  *(v524 + 32) = 1701080931;
  *(v524 + 40) = 0xE400000000000000;
  *(v524 + 48) = 0x52542D4E49;
  *(v524 + 56) = 0xE500000000000000;
  *(v524 + 64) = 0x4E79616C70736964;
  *(v524 + 72) = 0xEB00000000656D61;
  v525 = static LocalizationSource.main;

  v526 = sub_251702C94();
  v528 = v527;

  *(v524 + 80) = v526;
  *(v524 + 88) = v528;
  v529 = sub_251699838(v524);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[91] = v529;
  v530 = swift_allocObject();
  *(v530 + 16) = xmmword_2517068B0;
  *(v530 + 32) = 1701080931;
  *(v530 + 40) = 0xE400000000000000;
  *(v530 + 48) = 0x50552D4E49;
  *(v530 + 56) = 0xE500000000000000;
  *(v530 + 64) = 0x4E79616C70736964;
  *(v530 + 72) = 0xEB00000000656D61;
  v531 = static LocalizationSource.main;

  v532 = sub_251702C94();
  v534 = v533;

  *(v530 + 80) = v532;
  *(v530 + 88) = v534;
  v535 = sub_251699838(v530);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[92] = v535;
  v536 = swift_allocObject();
  *(v536 + 16) = xmmword_2517068B0;
  *(v536 + 32) = 1701080931;
  *(v536 + 40) = 0xE400000000000000;
  *(v536 + 48) = 0x54552D4E49;
  *(v536 + 56) = 0xE500000000000000;
  *(v536 + 64) = 0x4E79616C70736964;
  *(v536 + 72) = 0xEB00000000656D61;
  v537 = static LocalizationSource.main;

  v538 = sub_251702C94();
  v540 = v539;

  *(v536 + 80) = v538;
  *(v536 + 88) = v540;
  v541 = sub_251699838(v536);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[93] = v541;
  v542 = swift_allocObject();
  *(v542 + 16) = xmmword_2517068B0;
  *(v542 + 32) = 1701080931;
  *(v542 + 40) = 0xE400000000000000;
  *(v542 + 48) = 0x42572D4E49;
  *(v542 + 56) = 0xE500000000000000;
  *(v542 + 64) = 0x4E79616C70736964;
  *(v542 + 72) = 0xEB00000000656D61;
  v543 = static LocalizationSource.main;

  v544 = sub_251702C94();
  v546 = v545;

  *(v542 + 80) = v544;
  *(v542 + 88) = v546;
  v547 = sub_251699838(v542);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[94] = v547;
  v548 = swift_allocObject();
  *(v548 + 16) = xmmword_2517068B0;
  *(v548 + 32) = 1701080931;
  *(v548 + 40) = 0xE400000000000000;
  *(v548 + 48) = 0x5547412D584DLL;
  *(v548 + 56) = 0xE600000000000000;
  *(v548 + 64) = 0x4E79616C70736964;
  *(v548 + 72) = 0xEB00000000656D61;
  v549 = static LocalizationSource.main;

  v550 = sub_251702C94();
  v552 = v551;

  *(v548 + 80) = v550;
  *(v548 + 88) = v552;
  v553 = sub_251699838(v548);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[95] = v553;
  v554 = swift_allocObject();
  *(v554 + 16) = xmmword_2517068B0;
  *(v554 + 32) = 1701080931;
  *(v554 + 40) = 0xE400000000000000;
  *(v554 + 48) = 0x4E43422D584DLL;
  *(v554 + 56) = 0xE600000000000000;
  *(v554 + 64) = 0x4E79616C70736964;
  *(v554 + 72) = 0xEB00000000656D61;
  v555 = static LocalizationSource.main;

  v556 = sub_251702C94();
  v558 = v557;

  *(v554 + 80) = v556;
  *(v554 + 88) = v558;
  v559 = sub_251699838(v554);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[96] = v559;
  v560 = swift_allocObject();
  *(v560 + 16) = xmmword_2517068B0;
  *(v560 + 32) = 1701080931;
  *(v560 + 40) = 0xE400000000000000;
  *(v560 + 48) = 0x5343422D584DLL;
  *(v560 + 56) = 0xE600000000000000;
  *(v560 + 64) = 0x4E79616C70736964;
  *(v560 + 72) = 0xEB00000000656D61;
  v561 = static LocalizationSource.main;

  v562 = sub_251702C94();
  v564 = v563;

  *(v560 + 80) = v562;
  *(v560 + 88) = v564;
  v565 = sub_251699838(v560);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[97] = v565;
  v566 = swift_allocObject();
  *(v566 + 16) = xmmword_2517068B0;
  *(v566 + 32) = 1701080931;
  *(v566 + 40) = 0xE400000000000000;
  *(v566 + 48) = 0x4D41432D584DLL;
  *(v566 + 56) = 0xE600000000000000;
  *(v566 + 64) = 0x4E79616C70736964;
  *(v566 + 72) = 0xEB00000000656D61;
  v567 = static LocalizationSource.main;

  v568 = sub_251702C94();
  v570 = v569;

  *(v566 + 80) = v568;
  *(v566 + 88) = v570;
  v571 = sub_251699838(v566);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[98] = v571;
  v572 = swift_allocObject();
  *(v572 + 16) = xmmword_2517068B0;
  *(v572 + 32) = 1701080931;
  *(v572 + 40) = 0xE400000000000000;
  *(v572 + 48) = 0x4848432D584DLL;
  *(v572 + 56) = 0xE600000000000000;
  *(v572 + 64) = 0x4E79616C70736964;
  *(v572 + 72) = 0xEB00000000656D61;
  v573 = static LocalizationSource.main;

  v574 = sub_251702C94();
  v576 = v575;

  *(v572 + 80) = v574;
  *(v572 + 88) = v576;
  v577 = sub_251699838(v572);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[99] = v577;
  v578 = swift_allocObject();
  *(v578 + 16) = xmmword_2517068B0;
  *(v578 + 32) = 1701080931;
  *(v578 + 40) = 0xE400000000000000;
  *(v578 + 48) = 0x5048432D584DLL;
  *(v578 + 56) = 0xE600000000000000;
  *(v578 + 64) = 0x4E79616C70736964;
  *(v578 + 72) = 0xEB00000000656D61;
  v579 = static LocalizationSource.main;

  v580 = sub_251702C94();
  v582 = v581;

  *(v578 + 80) = v580;
  *(v578 + 88) = v582;
  v583 = sub_251699838(v578);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[100] = v583;
  v584 = swift_allocObject();
  *(v584 + 16) = xmmword_2517068B0;
  *(v584 + 32) = 1701080931;
  *(v584 + 40) = 0xE400000000000000;
  *(v584 + 48) = 0x584D432D584DLL;
  *(v584 + 56) = 0xE600000000000000;
  *(v584 + 64) = 0x4E79616C70736964;
  *(v584 + 72) = 0xEB00000000656D61;
  v585 = static LocalizationSource.main;

  v586 = sub_251702C94();
  v588 = v587;

  *(v584 + 80) = v586;
  *(v584 + 88) = v588;
  v589 = sub_251699838(v584);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[101] = v589;
  v590 = swift_allocObject();
  *(v590 + 16) = xmmword_2517068B0;
  *(v590 + 32) = 1701080931;
  *(v590 + 40) = 0xE400000000000000;
  *(v590 + 48) = 0x414F432D584DLL;
  *(v590 + 56) = 0xE600000000000000;
  *(v590 + 64) = 0x4E79616C70736964;
  *(v590 + 72) = 0xEB00000000656D61;
  v591 = static LocalizationSource.main;

  v592 = sub_251702C94();
  v594 = v593;

  *(v590 + 80) = v592;
  *(v590 + 88) = v594;
  v595 = sub_251699838(v590);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[102] = v595;
  v596 = swift_allocObject();
  *(v596 + 16) = xmmword_2517068B0;
  *(v596 + 32) = 1701080931;
  *(v596 + 40) = 0xE400000000000000;
  *(v596 + 48) = 0x4C4F432D584DLL;
  *(v596 + 56) = 0xE600000000000000;
  *(v596 + 64) = 0x4E79616C70736964;
  *(v596 + 72) = 0xEB00000000656D61;
  v597 = static LocalizationSource.main;

  v598 = sub_251702C94();
  v600 = v599;

  *(v596 + 80) = v598;
  *(v596 + 88) = v600;
  v601 = sub_251699838(v596);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[103] = v601;
  v602 = swift_allocObject();
  *(v602 + 16) = xmmword_2517068B0;
  *(v602 + 32) = 1701080931;
  *(v602 + 40) = 0xE400000000000000;
  *(v602 + 48) = 0x5255442D584DLL;
  *(v602 + 56) = 0xE600000000000000;
  *(v602 + 64) = 0x4E79616C70736964;
  *(v602 + 72) = 0xEB00000000656D61;
  v603 = static LocalizationSource.main;

  v604 = sub_251702C94();
  v606 = v605;

  *(v602 + 80) = v604;
  *(v602 + 88) = v606;
  v607 = sub_251699838(v602);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[104] = v607;
  v608 = swift_allocObject();
  *(v608 + 16) = xmmword_2517068B0;
  *(v608 + 32) = 1701080931;
  *(v608 + 40) = 0xE400000000000000;
  *(v608 + 48) = 0x4F52472D584DLL;
  *(v608 + 56) = 0xE600000000000000;
  *(v608 + 64) = 0x4E79616C70736964;
  *(v608 + 72) = 0xEB00000000656D61;
  v609 = static LocalizationSource.main;

  v610 = sub_251702C94();
  v612 = v611;

  *(v608 + 80) = v610;
  *(v608 + 88) = v612;
  v613 = sub_251699838(v608);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[105] = v613;
  v614 = swift_allocObject();
  *(v614 + 16) = xmmword_2517068B0;
  *(v614 + 32) = 1701080931;
  *(v614 + 40) = 0xE400000000000000;
  *(v614 + 48) = 0x4155472D584DLL;
  *(v614 + 56) = 0xE600000000000000;
  *(v614 + 64) = 0x4E79616C70736964;
  *(v614 + 72) = 0xEB00000000656D61;
  v615 = static LocalizationSource.main;

  v616 = sub_251702C94();
  v618 = v617;

  *(v614 + 80) = v616;
  *(v614 + 88) = v618;
  v619 = sub_251699838(v614);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[106] = v619;
  v620 = swift_allocObject();
  *(v620 + 16) = xmmword_2517068B0;
  *(v620 + 32) = 1701080931;
  *(v620 + 40) = 0xE400000000000000;
  *(v620 + 48) = 0x4449482D584DLL;
  *(v620 + 56) = 0xE600000000000000;
  *(v620 + 64) = 0x4E79616C70736964;
  *(v620 + 72) = 0xEB00000000656D61;
  v621 = static LocalizationSource.main;

  v622 = sub_251702C94();
  v624 = v623;

  *(v620 + 80) = v622;
  *(v620 + 88) = v624;
  v625 = sub_251699838(v620);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[107] = v625;
  v626 = swift_allocObject();
  *(v626 + 16) = xmmword_2517068B0;
  *(v626 + 32) = 1701080931;
  *(v626 + 40) = 0xE400000000000000;
  *(v626 + 48) = 0x4C414A2D584DLL;
  *(v626 + 56) = 0xE600000000000000;
  *(v626 + 64) = 0x4E79616C70736964;
  *(v626 + 72) = 0xEB00000000656D61;
  v627 = static LocalizationSource.main;

  v628 = sub_251702C94();
  v630 = v629;

  *(v626 + 80) = v628;
  *(v626 + 88) = v630;
  v631 = sub_251699838(v626);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[108] = v631;
  v632 = swift_allocObject();
  *(v632 + 16) = xmmword_2517068B0;
  *(v632 + 32) = 1701080931;
  *(v632 + 40) = 0xE400000000000000;
  *(v632 + 48) = 0x58454D2D584DLL;
  *(v632 + 56) = 0xE600000000000000;
  *(v632 + 64) = 0x4E79616C70736964;
  *(v632 + 72) = 0xEB00000000656D61;
  v633 = static LocalizationSource.main;

  v634 = sub_251702C94();
  v636 = v635;

  *(v632 + 80) = v634;
  *(v632 + 88) = v636;
  v637 = sub_251699838(v632);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[109] = v637;
  v638 = swift_allocObject();
  *(v638 + 16) = xmmword_2517068B0;
  *(v638 + 32) = 1701080931;
  *(v638 + 40) = 0xE400000000000000;
  *(v638 + 48) = 0x43494D2D584DLL;
  *(v638 + 56) = 0xE600000000000000;
  *(v638 + 64) = 0x4E79616C70736964;
  *(v638 + 72) = 0xEB00000000656D61;
  v639 = static LocalizationSource.main;

  v640 = sub_251702C94();
  v642 = v641;

  *(v638 + 80) = v640;
  *(v638 + 88) = v642;
  v643 = sub_251699838(v638);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[110] = v643;
  v644 = swift_allocObject();
  *(v644 + 16) = xmmword_2517068B0;
  *(v644 + 32) = 1701080931;
  *(v644 + 40) = 0xE400000000000000;
  *(v644 + 48) = 0x524F4D2D584DLL;
  *(v644 + 56) = 0xE600000000000000;
  *(v644 + 64) = 0x4E79616C70736964;
  *(v644 + 72) = 0xEB00000000656D61;
  v645 = static LocalizationSource.main;

  v646 = sub_251702C94();
  v648 = v647;

  *(v644 + 80) = v646;
  *(v644 + 88) = v648;
  v649 = sub_251699838(v644);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[111] = v649;
  v650 = swift_allocObject();
  *(v650 + 16) = xmmword_2517068B0;
  *(v650 + 32) = 1701080931;
  *(v650 + 40) = 0xE400000000000000;
  *(v650 + 48) = 0x59414E2D584DLL;
  *(v650 + 56) = 0xE600000000000000;
  *(v650 + 64) = 0x4E79616C70736964;
  *(v650 + 72) = 0xEB00000000656D61;
  v651 = static LocalizationSource.main;

  v652 = sub_251702C94();
  v654 = v653;

  *(v650 + 80) = v652;
  *(v650 + 88) = v654;
  v655 = sub_251699838(v650);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[112] = v655;
  v656 = swift_allocObject();
  *(v656 + 16) = xmmword_2517068B0;
  *(v656 + 32) = 1701080931;
  *(v656 + 40) = 0xE400000000000000;
  *(v656 + 48) = 0x454C4E2D584DLL;
  *(v656 + 56) = 0xE600000000000000;
  *(v656 + 64) = 0x4E79616C70736964;
  *(v656 + 72) = 0xEB00000000656D61;
  v657 = static LocalizationSource.main;

  v658 = sub_251702C94();
  v660 = v659;

  *(v656 + 80) = v658;
  *(v656 + 88) = v660;
  v661 = sub_251699838(v656);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[113] = v661;
  v662 = swift_allocObject();
  *(v662 + 16) = xmmword_2517068B0;
  *(v662 + 32) = 1701080931;
  *(v662 + 40) = 0xE400000000000000;
  *(v662 + 48) = 0x58414F2D584DLL;
  *(v662 + 56) = 0xE600000000000000;
  *(v662 + 64) = 0x4E79616C70736964;
  *(v662 + 72) = 0xEB00000000656D61;
  v663 = static LocalizationSource.main;

  v664 = sub_251702C94();
  v666 = v665;

  *(v662 + 80) = v664;
  *(v662 + 88) = v666;
  v667 = sub_251699838(v662);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[114] = v667;
  v668 = swift_allocObject();
  *(v668 + 16) = xmmword_2517068B0;
  *(v668 + 32) = 1701080931;
  *(v668 + 40) = 0xE400000000000000;
  *(v668 + 48) = 0x4555502D584DLL;
  *(v668 + 56) = 0xE600000000000000;
  *(v668 + 64) = 0x4E79616C70736964;
  *(v668 + 72) = 0xEB00000000656D61;
  v669 = static LocalizationSource.main;

  v670 = sub_251702C94();
  v672 = v671;

  *(v668 + 80) = v670;
  *(v668 + 88) = v672;
  v673 = sub_251699838(v668);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[115] = v673;
  v674 = swift_allocObject();
  *(v674 + 16) = xmmword_2517068B0;
  *(v674 + 32) = 1701080931;
  *(v674 + 40) = 0xE400000000000000;
  *(v674 + 48) = 0x4555512D584DLL;
  *(v674 + 56) = 0xE600000000000000;
  *(v674 + 64) = 0x4E79616C70736964;
  *(v674 + 72) = 0xEB00000000656D61;
  v675 = static LocalizationSource.main;

  v676 = sub_251702C94();
  v678 = v677;

  *(v674 + 80) = v676;
  *(v674 + 88) = v678;
  v679 = sub_251699838(v674);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[116] = v679;
  v680 = swift_allocObject();
  *(v680 + 16) = xmmword_2517068B0;
  *(v680 + 32) = 1701080931;
  *(v680 + 40) = 0xE400000000000000;
  *(v680 + 48) = 0x4F4F522D584DLL;
  *(v680 + 56) = 0xE600000000000000;
  *(v680 + 64) = 0x4E79616C70736964;
  *(v680 + 72) = 0xEB00000000656D61;
  v681 = static LocalizationSource.main;

  v682 = sub_251702C94();
  v684 = v683;

  *(v680 + 80) = v682;
  *(v680 + 88) = v684;
  v685 = sub_251699838(v680);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[117] = v685;
  v686 = swift_allocObject();
  *(v686 + 16) = xmmword_2517068B0;
  *(v686 + 32) = 1701080931;
  *(v686 + 40) = 0xE400000000000000;
  *(v686 + 48) = 0x4E49532D584DLL;
  *(v686 + 56) = 0xE600000000000000;
  *(v686 + 64) = 0x4E79616C70736964;
  *(v686 + 72) = 0xEB00000000656D61;
  v687 = static LocalizationSource.main;

  v688 = sub_251702C94();
  v690 = v689;

  *(v686 + 80) = v688;
  *(v686 + 88) = v690;
  v691 = sub_251699838(v686);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[118] = v691;
  v692 = swift_allocObject();
  *(v692 + 16) = xmmword_2517068B0;
  *(v692 + 32) = 1701080931;
  *(v692 + 40) = 0xE400000000000000;
  *(v692 + 48) = 0x504C532D584DLL;
  *(v692 + 56) = 0xE600000000000000;
  *(v692 + 64) = 0x4E79616C70736964;
  *(v692 + 72) = 0xEB00000000656D61;
  v693 = static LocalizationSource.main;

  v694 = sub_251702C94();
  v696 = v695;

  *(v692 + 80) = v694;
  *(v692 + 88) = v696;
  v697 = sub_251699838(v692);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[119] = v697;
  v698 = swift_allocObject();
  *(v698 + 16) = xmmword_2517068B0;
  *(v698 + 32) = 1701080931;
  *(v698 + 40) = 0xE400000000000000;
  *(v698 + 48) = 0x4E4F532D584DLL;
  *(v698 + 56) = 0xE600000000000000;
  *(v698 + 64) = 0x4E79616C70736964;
  *(v698 + 72) = 0xEB00000000656D61;
  v699 = static LocalizationSource.main;

  v700 = sub_251702C94();
  v702 = v701;

  *(v698 + 80) = v700;
  *(v698 + 88) = v702;
  v703 = sub_251699838(v698);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[120] = v703;
  v704 = swift_allocObject();
  *(v704 + 16) = xmmword_2517068B0;
  *(v704 + 32) = 1701080931;
  *(v704 + 40) = 0xE400000000000000;
  *(v704 + 48) = 0x4241542D584DLL;
  *(v704 + 56) = 0xE600000000000000;
  *(v704 + 64) = 0x4E79616C70736964;
  *(v704 + 72) = 0xEB00000000656D61;
  v705 = static LocalizationSource.main;

  v706 = sub_251702C94();
  v708 = v707;

  *(v704 + 80) = v706;
  *(v704 + 88) = v708;
  v709 = sub_251699838(v704);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[121] = v709;
  v710 = swift_allocObject();
  *(v710 + 16) = xmmword_2517068B0;
  *(v710 + 32) = 1701080931;
  *(v710 + 40) = 0xE400000000000000;
  *(v710 + 48) = 0x4D41542D584DLL;
  *(v710 + 56) = 0xE600000000000000;
  *(v710 + 64) = 0x4E79616C70736964;
  *(v710 + 72) = 0xEB00000000656D61;
  v711 = static LocalizationSource.main;

  v712 = sub_251702C94();
  v714 = v713;

  *(v710 + 80) = v712;
  *(v710 + 88) = v714;
  v715 = sub_251699838(v710);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[122] = v715;
  v716 = swift_allocObject();
  *(v716 + 16) = xmmword_2517068B0;
  *(v716 + 32) = 1701080931;
  *(v716 + 40) = 0xE400000000000000;
  *(v716 + 48) = 0x414C542D584DLL;
  *(v716 + 56) = 0xE600000000000000;
  *(v716 + 64) = 0x4E79616C70736964;
  *(v716 + 72) = 0xEB00000000656D61;
  v717 = static LocalizationSource.main;

  v718 = sub_251702C94();
  v720 = v719;

  *(v716 + 80) = v718;
  *(v716 + 88) = v720;
  v721 = sub_251699838(v716);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[123] = v721;
  v722 = swift_allocObject();
  *(v722 + 16) = xmmword_2517068B0;
  *(v722 + 32) = 1701080931;
  *(v722 + 40) = 0xE400000000000000;
  *(v722 + 48) = 0x5245562D584DLL;
  *(v722 + 56) = 0xE600000000000000;
  *(v722 + 64) = 0x4E79616C70736964;
  *(v722 + 72) = 0xEB00000000656D61;
  v723 = static LocalizationSource.main;

  v724 = sub_251702C94();
  v726 = v725;

  *(v722 + 80) = v724;
  *(v722 + 88) = v726;
  v727 = sub_251699838(v722);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[124] = v727;
  v728 = swift_allocObject();
  *(v728 + 16) = xmmword_2517068B0;
  *(v728 + 32) = 1701080931;
  *(v728 + 40) = 0xE400000000000000;
  *(v728 + 48) = 0x4355592D584DLL;
  *(v728 + 56) = 0xE600000000000000;
  *(v728 + 64) = 0x4E79616C70736964;
  *(v728 + 72) = 0xEB00000000656D61;
  v729 = static LocalizationSource.main;

  v730 = sub_251702C94();
  v732 = v731;

  *(v728 + 80) = v730;
  *(v728 + 88) = v732;
  v733 = sub_251699838(v728);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[125] = v733;
  v734 = swift_allocObject();
  *(v734 + 16) = xmmword_2517068B0;
  *(v734 + 32) = 1701080931;
  *(v734 + 40) = 0xE400000000000000;
  *(v734 + 48) = 0x43415A2D584DLL;
  *(v734 + 56) = 0xE600000000000000;
  *(v734 + 64) = 0x4E79616C70736964;
  *(v734 + 72) = 0xEB00000000656D61;
  v735 = static LocalizationSource.main;

  v736 = sub_251702C94();
  v738 = v737;

  *(v734 + 80) = v736;
  *(v734 + 88) = v738;
  v739 = sub_251699838(v734);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[126] = v739;
  v740 = swift_allocObject();
  *(v740 + 16) = xmmword_2517068B0;
  *(v740 + 32) = 1701080931;
  *(v740 + 40) = 0xE400000000000000;
  *(v740 + 48) = 0x5443412D5541;
  *(v740 + 56) = 0xE600000000000000;
  *(v740 + 64) = 0x4E79616C70736964;
  *(v740 + 72) = 0xEB00000000656D61;
  v741 = static LocalizationSource.main;

  v742 = sub_251702C94();
  v744 = v743;

  *(v740 + 80) = v742;
  *(v740 + 88) = v744;
  v745 = sub_251699838(v740);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[127] = v745;
  v746 = swift_allocObject();
  *(v746 + 16) = xmmword_2517068B0;
  *(v746 + 32) = 1701080931;
  *(v746 + 40) = 0xE400000000000000;
  *(v746 + 48) = 0x57534E2D5541;
  *(v746 + 56) = 0xE600000000000000;
  *(v746 + 64) = 0x4E79616C70736964;
  *(v746 + 72) = 0xEB00000000656D61;
  v747 = static LocalizationSource.main;

  v748 = sub_251702C94();
  v750 = v749;

  *(v746 + 80) = v748;
  *(v746 + 88) = v750;
  v751 = sub_251699838(v746);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[128] = v751;
  v752 = swift_allocObject();
  *(v752 + 16) = xmmword_2517068B0;
  *(v752 + 32) = 1701080931;
  *(v752 + 40) = 0xE400000000000000;
  *(v752 + 48) = 0x544E2D5541;
  *(v752 + 56) = 0xE500000000000000;
  *(v752 + 64) = 0x4E79616C70736964;
  *(v752 + 72) = 0xEB00000000656D61;
  v753 = static LocalizationSource.main;

  v754 = sub_251702C94();
  v756 = v755;

  *(v752 + 80) = v754;
  *(v752 + 88) = v756;
  v757 = sub_251699838(v752);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[129] = v757;
  v758 = swift_allocObject();
  *(v758 + 16) = xmmword_2517068B0;
  *(v758 + 32) = 1701080931;
  *(v758 + 40) = 0xE400000000000000;
  *(v758 + 48) = 0x444C512D5541;
  *(v758 + 56) = 0xE600000000000000;
  *(v758 + 64) = 0x4E79616C70736964;
  *(v758 + 72) = 0xEB00000000656D61;
  v759 = static LocalizationSource.main;

  v760 = sub_251702C94();
  v762 = v761;

  *(v758 + 80) = v760;
  *(v758 + 88) = v762;
  v763 = sub_251699838(v758);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[130] = v763;
  v764 = swift_allocObject();
  *(v764 + 16) = xmmword_2517068B0;
  *(v764 + 32) = 1701080931;
  *(v764 + 40) = 0xE400000000000000;
  *(v764 + 48) = 0x41532D5541;
  *(v764 + 56) = 0xE500000000000000;
  *(v764 + 64) = 0x4E79616C70736964;
  *(v764 + 72) = 0xEB00000000656D61;
  v765 = static LocalizationSource.main;

  v766 = sub_251702C94();
  v768 = v767;

  *(v764 + 80) = v766;
  *(v764 + 88) = v768;
  v769 = sub_251699838(v764);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[131] = v769;
  v770 = swift_allocObject();
  *(v770 + 16) = xmmword_2517068B0;
  *(v770 + 32) = 1701080931;
  *(v770 + 40) = 0xE400000000000000;
  *(v770 + 48) = 0x5341542D5541;
  *(v770 + 56) = 0xE600000000000000;
  *(v770 + 64) = 0x4E79616C70736964;
  *(v770 + 72) = 0xEB00000000656D61;
  v771 = static LocalizationSource.main;

  v772 = sub_251702C94();
  v774 = v773;

  *(v770 + 80) = v772;
  *(v770 + 88) = v774;
  v775 = sub_251699838(v770);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[132] = v775;
  v776 = swift_allocObject();
  *(v776 + 16) = xmmword_2517068B0;
  *(v776 + 32) = 1701080931;
  *(v776 + 40) = 0xE400000000000000;
  *(v776 + 48) = 0x4349562D5541;
  *(v776 + 56) = 0xE600000000000000;
  *(v776 + 64) = 0x4E79616C70736964;
  *(v776 + 72) = 0xEB00000000656D61;
  v777 = static LocalizationSource.main;

  v778 = sub_251702C94();
  v780 = v779;

  *(v776 + 80) = v778;
  *(v776 + 88) = v780;
  v781 = sub_251699838(v776);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[133] = v781;
  v782 = swift_allocObject();
  *(v782 + 16) = xmmword_2517068B0;
  *(v782 + 32) = 1701080931;
  *(v782 + 40) = 0xE400000000000000;
  *(v782 + 48) = 0x41572D5541;
  *(v782 + 56) = 0xE500000000000000;
  *(v782 + 64) = 0x4E79616C70736964;
  *(v782 + 72) = 0xEB00000000656D61;
  v783 = static LocalizationSource.main;

  v784 = sub_251702C94();
  v786 = v785;

  *(v782 + 80) = v784;
  *(v782 + 88) = v786;
  v787 = sub_251699838(v782);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[134] = v787;
  v788 = swift_allocObject();
  *(v788 + 16) = xmmword_2517068B0;
  *(v788 + 32) = 1701080931;
  *(v788 + 40) = 0xE400000000000000;
  *(v788 + 48) = 0x43412D5242;
  *(v788 + 56) = 0xE500000000000000;
  *(v788 + 64) = 0x4E79616C70736964;
  *(v788 + 72) = 0xEB00000000656D61;
  v789 = static LocalizationSource.main;

  v790 = sub_251702C94();
  v792 = v791;

  *(v788 + 80) = v790;
  *(v788 + 88) = v792;
  v793 = sub_251699838(v788);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[135] = v793;
  v794 = swift_allocObject();
  *(v794 + 16) = xmmword_2517068B0;
  *(v794 + 32) = 1701080931;
  *(v794 + 40) = 0xE400000000000000;
  *(v794 + 48) = 0x4C412D5242;
  *(v794 + 56) = 0xE500000000000000;
  *(v794 + 64) = 0x4E79616C70736964;
  *(v794 + 72) = 0xEB00000000656D61;
  v795 = static LocalizationSource.main;

  v796 = sub_251702C94();
  v798 = v797;

  *(v794 + 80) = v796;
  *(v794 + 88) = v798;
  v799 = sub_251699838(v794);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[136] = v799;
  v800 = swift_allocObject();
  *(v800 + 16) = xmmword_2517068B0;
  *(v800 + 32) = 1701080931;
  *(v800 + 40) = 0xE400000000000000;
  *(v800 + 48) = 0x4D412D5242;
  *(v800 + 56) = 0xE500000000000000;
  *(v800 + 64) = 0x4E79616C70736964;
  *(v800 + 72) = 0xEB00000000656D61;
  v801 = static LocalizationSource.main;

  v802 = sub_251702C94();
  v804 = v803;

  *(v800 + 80) = v802;
  *(v800 + 88) = v804;
  v805 = sub_251699838(v800);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[137] = v805;
  v806 = swift_allocObject();
  *(v806 + 16) = xmmword_2517068B0;
  *(v806 + 32) = 1701080931;
  *(v806 + 40) = 0xE400000000000000;
  *(v806 + 48) = 0x50412D5242;
  *(v806 + 56) = 0xE500000000000000;
  *(v806 + 64) = 0x4E79616C70736964;
  *(v806 + 72) = 0xEB00000000656D61;
  v807 = static LocalizationSource.main;

  v808 = sub_251702C94();
  v810 = v809;

  *(v806 + 80) = v808;
  *(v806 + 88) = v810;
  v811 = sub_251699838(v806);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[138] = v811;
  v812 = swift_allocObject();
  *(v812 + 16) = xmmword_2517068B0;
  *(v812 + 32) = 1701080931;
  *(v812 + 40) = 0xE400000000000000;
  *(v812 + 48) = 0x41422D5242;
  *(v812 + 56) = 0xE500000000000000;
  *(v812 + 64) = 0x4E79616C70736964;
  *(v812 + 72) = 0xEB00000000656D61;
  v813 = static LocalizationSource.main;

  v814 = sub_251702C94();
  v816 = v815;

  *(v812 + 80) = v814;
  *(v812 + 88) = v816;
  v817 = sub_251699838(v812);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[139] = v817;
  v818 = swift_allocObject();
  *(v818 + 16) = xmmword_2517068B0;
  *(v818 + 32) = 1701080931;
  *(v818 + 40) = 0xE400000000000000;
  *(v818 + 48) = 0x45432D5242;
  *(v818 + 56) = 0xE500000000000000;
  *(v818 + 64) = 0x4E79616C70736964;
  *(v818 + 72) = 0xEB00000000656D61;
  v819 = static LocalizationSource.main;

  v820 = sub_251702C94();
  v822 = v821;

  *(v818 + 80) = v820;
  *(v818 + 88) = v822;
  v823 = sub_251699838(v818);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[140] = v823;
  v824 = swift_allocObject();
  *(v824 + 16) = xmmword_2517068B0;
  *(v824 + 32) = 1701080931;
  *(v824 + 40) = 0xE400000000000000;
  *(v824 + 48) = 0x46442D5242;
  *(v824 + 56) = 0xE500000000000000;
  *(v824 + 64) = 0x4E79616C70736964;
  *(v824 + 72) = 0xEB00000000656D61;
  v825 = static LocalizationSource.main;

  v826 = sub_251702C94();
  v828 = v827;

  *(v824 + 80) = v826;
  *(v824 + 88) = v828;
  v829 = sub_251699838(v824);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[141] = v829;
  v830 = swift_allocObject();
  *(v830 + 16) = xmmword_2517068B0;
  *(v830 + 32) = 1701080931;
  *(v830 + 40) = 0xE400000000000000;
  *(v830 + 48) = 0x53452D5242;
  *(v830 + 56) = 0xE500000000000000;
  *(v830 + 64) = 0x4E79616C70736964;
  *(v830 + 72) = 0xEB00000000656D61;
  v831 = static LocalizationSource.main;

  v832 = sub_251702C94();
  v834 = v833;

  *(v830 + 80) = v832;
  *(v830 + 88) = v834;
  v835 = sub_251699838(v830);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[142] = v835;
  v836 = swift_allocObject();
  *(v836 + 16) = xmmword_2517068B0;
  *(v836 + 32) = 1701080931;
  *(v836 + 40) = 0xE400000000000000;
  *(v836 + 48) = 0x4F472D5242;
  *(v836 + 56) = 0xE500000000000000;
  *(v836 + 64) = 0x4E79616C70736964;
  *(v836 + 72) = 0xEB00000000656D61;
  v837 = static LocalizationSource.main;

  v838 = sub_251702C94();
  v840 = v839;

  *(v836 + 80) = v838;
  *(v836 + 88) = v840;
  v841 = sub_251699838(v836);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[143] = v841;
  v842 = swift_allocObject();
  *(v842 + 16) = xmmword_2517068B0;
  *(v842 + 32) = 1701080931;
  *(v842 + 40) = 0xE400000000000000;
  *(v842 + 48) = 0x414D2D5242;
  *(v842 + 56) = 0xE500000000000000;
  *(v842 + 64) = 0x4E79616C70736964;
  *(v842 + 72) = 0xEB00000000656D61;
  v843 = static LocalizationSource.main;

  v844 = sub_251702C94();
  v846 = v845;

  *(v842 + 80) = v844;
  *(v842 + 88) = v846;
  v847 = sub_251699838(v842);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[144] = v847;
  v848 = swift_allocObject();
  *(v848 + 16) = xmmword_2517068B0;
  *(v848 + 32) = 1701080931;
  *(v848 + 40) = 0xE400000000000000;
  *(v848 + 48) = 0x474D2D5242;
  *(v848 + 56) = 0xE500000000000000;
  *(v848 + 64) = 0x4E79616C70736964;
  *(v848 + 72) = 0xEB00000000656D61;
  v849 = static LocalizationSource.main;

  v850 = sub_251702C94();
  v852 = v851;

  *(v848 + 80) = v850;
  *(v848 + 88) = v852;
  v853 = sub_251699838(v848);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[145] = v853;
  v854 = swift_allocObject();
  *(v854 + 16) = xmmword_2517068B0;
  *(v854 + 32) = 1701080931;
  *(v854 + 40) = 0xE400000000000000;
  *(v854 + 48) = 0x534D2D5242;
  *(v854 + 56) = 0xE500000000000000;
  *(v854 + 64) = 0x4E79616C70736964;
  *(v854 + 72) = 0xEB00000000656D61;
  v855 = static LocalizationSource.main;

  v856 = sub_251702C94();
  v858 = v857;

  *(v854 + 80) = v856;
  *(v854 + 88) = v858;
  v859 = sub_251699838(v854);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[146] = v859;
  v860 = swift_allocObject();
  *(v860 + 16) = xmmword_2517068B0;
  *(v860 + 32) = 1701080931;
  *(v860 + 40) = 0xE400000000000000;
  *(v860 + 48) = 0x544D2D5242;
  *(v860 + 56) = 0xE500000000000000;
  *(v860 + 64) = 0x4E79616C70736964;
  *(v860 + 72) = 0xEB00000000656D61;
  v861 = static LocalizationSource.main;

  v862 = sub_251702C94();
  v864 = v863;

  *(v860 + 80) = v862;
  *(v860 + 88) = v864;
  v865 = sub_251699838(v860);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[147] = v865;
  v866 = swift_allocObject();
  *(v866 + 16) = xmmword_2517068B0;
  *(v866 + 32) = 1701080931;
  *(v866 + 40) = 0xE400000000000000;
  *(v866 + 48) = 0x41502D5242;
  *(v866 + 56) = 0xE500000000000000;
  *(v866 + 64) = 0x4E79616C70736964;
  *(v866 + 72) = 0xEB00000000656D61;
  v867 = static LocalizationSource.main;

  v868 = sub_251702C94();
  v870 = v869;

  *(v866 + 80) = v868;
  *(v866 + 88) = v870;
  v871 = sub_251699838(v866);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[148] = v871;
  v872 = swift_allocObject();
  *(v872 + 16) = xmmword_2517068B0;
  *(v872 + 32) = 1701080931;
  *(v872 + 40) = 0xE400000000000000;
  *(v872 + 48) = 0x42502D5242;
  *(v872 + 56) = 0xE500000000000000;
  *(v872 + 64) = 0x4E79616C70736964;
  *(v872 + 72) = 0xEB00000000656D61;
  v873 = static LocalizationSource.main;

  v874 = sub_251702C94();
  v876 = v875;

  *(v872 + 80) = v874;
  *(v872 + 88) = v876;
  v877 = sub_251699838(v872);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[149] = v877;
  v878 = swift_allocObject();
  *(v878 + 16) = xmmword_2517068B0;
  *(v878 + 32) = 1701080931;
  *(v878 + 40) = 0xE400000000000000;
  *(v878 + 48) = 0x45502D5242;
  *(v878 + 56) = 0xE500000000000000;
  *(v878 + 64) = 0x4E79616C70736964;
  *(v878 + 72) = 0xEB00000000656D61;
  v879 = static LocalizationSource.main;

  v880 = sub_251702C94();
  v882 = v881;

  *(v878 + 80) = v880;
  *(v878 + 88) = v882;
  v883 = sub_251699838(v878);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[150] = v883;
  v884 = swift_allocObject();
  *(v884 + 16) = xmmword_2517068B0;
  *(v884 + 32) = 1701080931;
  *(v884 + 40) = 0xE400000000000000;
  *(v884 + 48) = 0x49502D5242;
  *(v884 + 56) = 0xE500000000000000;
  *(v884 + 64) = 0x4E79616C70736964;
  *(v884 + 72) = 0xEB00000000656D61;
  v885 = static LocalizationSource.main;

  v886 = sub_251702C94();
  v888 = v887;

  *(v884 + 80) = v886;
  *(v884 + 88) = v888;
  v889 = sub_251699838(v884);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[151] = v889;
  v890 = swift_allocObject();
  *(v890 + 16) = xmmword_2517068B0;
  *(v890 + 32) = 1701080931;
  *(v890 + 40) = 0xE400000000000000;
  *(v890 + 48) = 0x52502D5242;
  *(v890 + 56) = 0xE500000000000000;
  *(v890 + 64) = 0x4E79616C70736964;
  *(v890 + 72) = 0xEB00000000656D61;
  v891 = static LocalizationSource.main;

  v892 = sub_251702C94();
  v894 = v893;

  *(v890 + 80) = v892;
  *(v890 + 88) = v894;
  v895 = sub_251699838(v890);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[152] = v895;
  v896 = swift_allocObject();
  *(v896 + 16) = xmmword_2517068B0;
  *(v896 + 32) = 1701080931;
  *(v896 + 40) = 0xE400000000000000;
  *(v896 + 48) = 0x4A522D5242;
  *(v896 + 56) = 0xE500000000000000;
  *(v896 + 64) = 0x4E79616C70736964;
  *(v896 + 72) = 0xEB00000000656D61;
  v897 = static LocalizationSource.main;

  v898 = sub_251702C94();
  v900 = v899;

  *(v896 + 80) = v898;
  *(v896 + 88) = v900;
  v901 = sub_251699838(v896);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[153] = v901;
  v902 = swift_allocObject();
  *(v902 + 16) = xmmword_2517068B0;
  *(v902 + 32) = 1701080931;
  *(v902 + 40) = 0xE400000000000000;
  *(v902 + 48) = 0x4E522D5242;
  *(v902 + 56) = 0xE500000000000000;
  *(v902 + 64) = 0x4E79616C70736964;
  *(v902 + 72) = 0xEB00000000656D61;
  v903 = static LocalizationSource.main;

  v904 = sub_251702C94();
  v906 = v905;

  *(v902 + 80) = v904;
  *(v902 + 88) = v906;
  v907 = sub_251699838(v902);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[154] = v907;
  v908 = swift_allocObject();
  *(v908 + 16) = xmmword_2517068B0;
  *(v908 + 32) = 1701080931;
  *(v908 + 40) = 0xE400000000000000;
  *(v908 + 48) = 0x4F522D5242;
  *(v908 + 56) = 0xE500000000000000;
  *(v908 + 64) = 0x4E79616C70736964;
  *(v908 + 72) = 0xEB00000000656D61;
  v909 = static LocalizationSource.main;

  v910 = sub_251702C94();
  v912 = v911;

  *(v908 + 80) = v910;
  *(v908 + 88) = v912;
  v913 = sub_251699838(v908);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[155] = v913;
  v914 = swift_allocObject();
  *(v914 + 16) = xmmword_2517068B0;
  *(v914 + 32) = 1701080931;
  *(v914 + 40) = 0xE400000000000000;
  *(v914 + 48) = 0x52522D5242;
  *(v914 + 56) = 0xE500000000000000;
  *(v914 + 64) = 0x4E79616C70736964;
  *(v914 + 72) = 0xEB00000000656D61;
  v915 = static LocalizationSource.main;

  v916 = sub_251702C94();
  v918 = v917;

  *(v914 + 80) = v916;
  *(v914 + 88) = v918;
  v919 = sub_251699838(v914);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[156] = v919;
  v920 = swift_allocObject();
  *(v920 + 16) = xmmword_2517068B0;
  *(v920 + 32) = 1701080931;
  *(v920 + 40) = 0xE400000000000000;
  *(v920 + 48) = 0x53522D5242;
  *(v920 + 56) = 0xE500000000000000;
  *(v920 + 64) = 0x4E79616C70736964;
  *(v920 + 72) = 0xEB00000000656D61;
  v921 = static LocalizationSource.main;

  v922 = sub_251702C94();
  v924 = v923;

  *(v920 + 80) = v922;
  *(v920 + 88) = v924;
  v925 = sub_251699838(v920);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[157] = v925;
  v926 = swift_allocObject();
  *(v926 + 16) = xmmword_2517068B0;
  *(v926 + 32) = 1701080931;
  *(v926 + 40) = 0xE400000000000000;
  *(v926 + 48) = 0x43532D5242;
  *(v926 + 56) = 0xE500000000000000;
  *(v926 + 64) = 0x4E79616C70736964;
  *(v926 + 72) = 0xEB00000000656D61;
  v927 = static LocalizationSource.main;

  v928 = sub_251702C94();
  v930 = v929;

  *(v926 + 80) = v928;
  *(v926 + 88) = v930;
  v931 = sub_251699838(v926);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[158] = v931;
  v932 = swift_allocObject();
  *(v932 + 16) = xmmword_2517068B0;
  *(v932 + 32) = 1701080931;
  *(v932 + 40) = 0xE400000000000000;
  *(v932 + 48) = 0x45532D5242;
  *(v932 + 56) = 0xE500000000000000;
  *(v932 + 64) = 0x4E79616C70736964;
  *(v932 + 72) = 0xEB00000000656D61;
  v933 = static LocalizationSource.main;

  v934 = sub_251702C94();
  v936 = v935;

  *(v932 + 80) = v934;
  *(v932 + 88) = v936;
  v937 = sub_251699838(v932);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[159] = v937;
  v938 = swift_allocObject();
  *(v938 + 16) = xmmword_2517068B0;
  *(v938 + 32) = 1701080931;
  *(v938 + 40) = 0xE400000000000000;
  *(v938 + 48) = 0x50532D5242;
  *(v938 + 56) = 0xE500000000000000;
  *(v938 + 64) = 0x4E79616C70736964;
  *(v938 + 72) = 0xEB00000000656D61;
  v939 = static LocalizationSource.main;

  v940 = sub_251702C94();
  v942 = v941;

  *(v938 + 80) = v940;
  *(v938 + 88) = v942;
  v943 = sub_251699838(v938);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10[160] = v943;
  v944 = swift_allocObject();
  *(v944 + 16) = xmmword_2517068B0;
  *(v944 + 32) = 1701080931;
  *(v944 + 40) = 0xE400000000000000;
  *(v944 + 48) = 0x4F542D5242;
  *(v944 + 56) = 0xE500000000000000;
  *(v944 + 64) = 0x4E79616C70736964;
  *(v944 + 72) = 0xEB00000000656D61;
  v945 = static LocalizationSource.main;

  v946 = sub_251702C94();
  v948 = v947;

  *(v944 + 80) = v946;
  *(v944 + 88) = v948;
  v949 = sub_251699838(v944);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v10[161] = v949;
  subdivisionsList._rawValue = v10;
  return result;
}

void sub_2516EFBAC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusChangeObservers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_251703464();
    type metadata accessor for ENManagerAdapter.StatusChangeObserver();
    sub_2516F17B0();
    sub_2517032F4();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_18:
      sub_2516ABA28(v6);

      return;
    }

    while (1)
    {
      (*&v17[OBJC_IVAR___ENStatusChangeObserver_didChangeHandler])(a1, a2);

      v8 = v15;
      v9 = v16;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_251703494())
      {
        type metadata accessor for ENManagerAdapter.StatusChangeObserver();
        swift_dynamicCast();
        v17 = v20;
        v15 = v8;
        v16 = v9;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id ENManagerAdapter.StatusChangeObserver.__allocating_init(adapter:didChangeHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR___ENStatusChangeObserver_active] = 0;
  swift_unknownObjectWeakAssign();
  v8 = &v7[OBJC_IVAR___ENStatusChangeObserver_didChangeHandler];
  *v8 = a2;
  v8[1] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id ENManagerAdapter.StatusChangeObserver.init(adapter:didChangeHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___ENStatusChangeObserver_active] = 0;
  swift_unknownObjectWeakAssign();
  v7 = &v3[OBJC_IVAR___ENStatusChangeObserver_didChangeHandler];
  *v7 = a2;
  v7[1] = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

uint64_t ENManagerAdapter.StatusChangeObserver.active.getter()
{
  v1 = OBJC_IVAR___ENStatusChangeObserver_active;
  swift_beginAccess();
  return *(v0 + v1);
}

void ENManagerAdapter.StatusChangeObserver.active.setter(char a1)
{
  v3 = OBJC_IVAR___ENStatusChangeObserver_active;
  swift_beginAccess();
  v1[v3] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (a1)
    {
      sub_2516F08B0(&v7, v1);
      v6 = v7;
    }

    else
    {
      v6 = sub_2516F161C(v1);
    }

    swift_endAccess();
  }
}

uint64_t (*ENManagerAdapter.StatusChangeObserver.active.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___ENStatusChangeObserver_active;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2516F0290;
}

void sub_2516F0290(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = v3[3];
      v6 = Strong;
      if (*(v5 + v3[4]) == 1)
      {
        swift_beginAccess();
        sub_2516F08B0(&v9, v5);
        v7 = v9;
        swift_endAccess();
      }

      else
      {
        swift_beginAccess();
        v8 = sub_2516F161C(v5);
        swift_endAccess();
      }
    }
  }

  free(v3);
}

id ENManagerAdapter.StatusChangeObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR___ENStatusChangeObserver_active;
  swift_beginAccess();
  v0[v1] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ENManagerAdapter.StatusChangeObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2516F0548(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_251703484();

    if (v9)
    {

      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_251703474();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2516A5AF4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2516A620C(v20 + 1);
    }

    v18 = v8;
    sub_2516ABFB4();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ENUIPublicHealthAgencyModel(0);
  v11 = sub_2517033A4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2516F0AC0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2517033B4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2516F0760(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2517036E4();
  sub_2517031A4();
  v8 = sub_251703724();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_251703624() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2516F0C40(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2516F08B0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_251703484();

    if (v9)
    {

      type metadata accessor for ENManagerAdapter.StatusChangeObserver();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_251703474();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2516A5B1C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2516A6480(v20 + 1);
    }

    v18 = v8;
    sub_2516ABFB4();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  v11 = sub_2517033A4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2516F0DC0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2517033B4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

void sub_2516F0AC0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2516A620C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2516F1098(&qword_27F454080, &qword_251708908);
      goto LABEL_12;
    }

    sub_2516F1410(v6 + 1, &qword_27F454080, &qword_251708908);
  }

  v8 = *v3;
  v9 = sub_2517033A4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ENUIPublicHealthAgencyModel(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2517033B4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_251703644();
  __break(1u);
}

void sub_2516F0C40(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2516A6220(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2516F0F3C();
      goto LABEL_16;
    }

    sub_2516F11D8(v8 + 1);
  }

  v10 = *v4;
  sub_2517036E4();
  sub_2517031A4();
  v11 = sub_251703724();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_251703624() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_251703644();
  __break(1u);
}

void sub_2516F0DC0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2516A6480(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2516F1098(&qword_27F454088, &qword_251708910);
      goto LABEL_12;
    }

    sub_2516F1410(v6 + 1, &qword_27F454088, &qword_251708910);
  }

  v8 = *v3;
  v9 = sub_2517033A4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ENManagerAdapter.StatusChangeObserver();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2517033B4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_251703644();
  __break(1u);
}

void sub_2516F0F3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454090, &unk_251708918);
  v2 = *v0;
  v3 = sub_2517034E4();
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

void sub_2516F1098(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2517034E4();
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
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

void sub_2516F11D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454090, &unk_251708918);
  v4 = sub_2517034F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2517036E4();

      sub_2517031A4();
      v20 = sub_251703724();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}