void sub_25169E7C4()
{
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___authorityTextView) = 0;
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___footerView) = 0;
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_titleLabelTopOffset;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;

  *(v0 + v1) = v4 * 0.09;
  sub_251703584();
  __break(1u);
}

id OnboardingRegionChangeSummaryViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_25169F004(a1, a3, v7, ObjectType, a2);
}

id OnboardingRegionChangeSummaryViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_25169F004(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingRegionChangeSummaryViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_25169EA38();
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];
}

void sub_25169EA38()
{
  if (*(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics) != 1)
  {
    if (qword_28151EB58 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_28151EB58 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_primaryButton];
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

id OnboardingRegionChangeSummaryViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id OnboardingRegionChangeSummaryViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id OnboardingRegionChangeSummaryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25169F004(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_primaryButton;
  *&a3[v9] = [objc_opt_self() boldButton];
  v10 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_flow];
  *v10 = a1;
  *(v10 + 1) = a5;
  v32 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel] = a2;
  v11 = qword_28151EB58;
  swift_unknownObjectRetain();
  v34 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251708520;
  v13 = (*&a3[v32] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v15 = *v13;
  v14 = v13[1];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v16 = sub_25169F41C();
  *(v12 + 64) = v16;
  *(v12 + 32) = v15;
  *(v12 + 40) = v14;

  sub_251703184();

  sub_251702C94();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251708520;
  v18 = (*&a3[v32] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v20 = *v18;
  v19 = v18[1];
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v16;
  *(v17 + 32) = v20;
  *(v17 + 40) = v19;

  sub_251703184();

  v21 = sub_251703134();

  v22 = sub_251703134();

  v23 = sub_251703134();
  v24 = [objc_opt_self() systemImageNamed_];

  v35.receiver = a3;
  v35.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v35, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, v24, 3);

  v26 = v25;
  v27 = [v26 headerView];
  v28 = [objc_opt_self() systemPinkColor];
  [v27 setTintColor_];

  v29 = [v26 headerView];
  LODWORD(v30) = 1036831949;
  [v29 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v26;
}

unint64_t sub_25169F41C()
{
  result = qword_27F454180;
  if (!qword_27F454180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454180);
  }

  return result;
}

void sub_25169F470(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_25169F4F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2516AB3C4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *StandardOnboardingFlow.healthAgencyModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void StandardOnboardingFlow.healthAgencyModel.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t StandardOnboardingFlow.__allocating_init(agencyModel:exposureManager:isFromAvailabilityAlert:deepLinkInitiated:subsequentFlow:completion:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  v15 = MEMORY[0x277D84F90];
  *(v14 + 64) = 0;
  *(v14 + 72) = v15;
  *(v14 + 97) = 0;
  swift_beginAccess();
  *(v14 + 32) = a1;
  *(v14 + 16) = a6;
  *(v14 + 24) = a7;
  *(v14 + 96) = a3;
  *(v14 + 97) = a4;
  *(v14 + 80) = a2;
  *(v14 + 88) = a5;
  return v14;
}

uint64_t StandardOnboardingFlow.init(agencyModel:exposureManager:isFromAvailabilityAlert:deepLinkInitiated:subsequentFlow:completion:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  v15 = MEMORY[0x277D84F90];
  *(v7 + 64) = 0;
  *(v7 + 72) = v15;
  *(v7 + 97) = 0;
  swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  *(v7 + 96) = a3;
  *(v7 + 97) = a4;
  *(v7 + 80) = a2;
  *(v7 + 88) = a5;
  return v7;
}

void *StandardOnboardingFlow.initialViewController.getter()
{
  if (*(v0 + 97) != 1)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v3 = sub_251702F84();
    __swift_project_value_buffer(v3, static Logger.general);
    v4 = sub_251702F64();
    v5 = sub_251703314();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25167E000, v4, v5, "Deeplink processing: current region has an app, and its app is installed", v6, 2u);
      MEMORY[0x2530803C0](v6, -1, -1);
    }

    v7 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

    return sub_2516A91DC(v8, v2, v7, &protocol witness table for StandardOnboardingFlow);
  }

  if (*&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] != 1)
  {

LABEL_16:
    v16 = *(v0 + 96);
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController());

    return OnboardingWelcomeViewController.init(flow:fromAvailabilityAlert:)(v17, v16);
  }

  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v10 = sub_251702F84();
  __swift_project_value_buffer(v10, static Logger.general);
  v11 = sub_251702F64();
  v12 = sub_251703314();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25167E000, v11, v12, "Deeplink processing: current region is an app only region, but its app wasn't installed", v13, 2u);
    MEMORY[0x2530803C0](v13, -1, -1);
  }

  v14 = objc_allocWithZone(type metadata accessor for OnboardingOpenAppStoreViewController());

  return sub_2516A9708(v15, v2, v14, &protocol witness table for StandardOnboardingFlow);
}

double StandardOnboardingFlow.didTapNext(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_2516A7D48(a1, v2, ObjectType, a2);
}

uint64_t PreAuthorizationFlow.__allocating_init(agencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PreAuthorizationFlow.init(agencyModel:exposureManager:completion:)(a1, a2, a3, a4);
  return v8;
}

void StandardOnboardingFlow.didTapCancel(from:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  sub_2516A84AC(a1, v2);
}

void *sub_25169FC34()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[4];
  if (v2)
  {
    v68 = v2;
    v3 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
    v4 = sub_2516AAD40(v3);

    if (qword_27F453858 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      swift_beginAccess();
      v5 = static ENUIPublicHealthAgencyModel.availableRegions;
      if ((v4 & 0xC000000000000001) != 0)
      {
        if (v4 >= 0)
        {
          v4 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v6 = sub_251703474();
        v4 = sub_2516A5B44(v4, v6, &qword_27F454080, &qword_251708908, type metadata accessor for ENUIPublicHealthAgencyModel);
      }

      else
      {
      }

      v17 = sub_2516A5D3C(v5, v4);

      v67 = v1;
      if ((v17 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_251703464();
        type metadata accessor for ENUIPublicHealthAgencyModel(0);
        sub_2516AB9D0();
        sub_2517032F4();
        v19 = v71;
        v18 = v72;
        v20 = v73;
        v4 = v74;
        v21 = v75;
      }

      else
      {
        v22 = -1 << *(v17 + 32);
        v18 = v17 + 56;
        v20 = ~v22;
        v23 = -v22;
        v24 = v23 < 64 ? ~(-1 << v23) : -1;
        v21 = v24 & *(v17 + 56);

        v4 = 0;
        v19 = v17;
      }

      v1 = ((v20 + 64) >> 6);
      if (v19 < 0)
      {
        break;
      }

      while (1)
      {
        v28 = v4;
        v29 = v21;
        v26 = v4;
        if (!v21)
        {
          break;
        }

LABEL_27:
        v27 = (v29 - 1) & v29;
        v25 = *(*(v19 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v25)
        {
          goto LABEL_31;
        }

LABEL_28:
        sub_25168CD90(0, &qword_27F454078, 0x277D82BB8);
        if (sub_2517033B4())
        {
          sub_2516ABA28(v19);

          if (qword_27F453878 != -1)
          {
            swift_once();
          }

          v61 = sub_251702F84();
          __swift_project_value_buffer(v61, static Logger.general);
          v62 = sub_251702F64();
          v63 = sub_251703314();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_25167E000, v62, v63, "Selected region is already authorized", v64, 2u);
            MEMORY[0x2530803C0](v64, -1, -1);
          }

          v65 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

          v56 = sub_2516A91DC(v66, v25, v65, &protocol witness table for StandardOnboardingFlow);

          return v56;
        }

        v4 = v26;
        v21 = v27;
        if (v19 < 0)
        {
          goto LABEL_20;
        }
      }

      while (1)
      {
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v26 >= v1)
        {
          goto LABEL_31;
        }

        v29 = *(v18 + 8 * v26);
        ++v28;
        if (v29)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

LABEL_20:
    if (sub_251703494())
    {
      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      swift_dynamicCast();
      v25 = v69;
      v26 = v4;
      v27 = v21;
      if (v69)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    sub_2516ABA28(v19);

    if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v30 = sub_251702F84();
      __swift_project_value_buffer(v30, static Logger.general);
      v31 = sub_251702F64();
      v32 = sub_251703314();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_25167E000, v31, v32, "For the selected region, user has already installed the app, transitioning to the Open App view", v33, 2u);
        MEMORY[0x2530803C0](v33, -1, -1);
      }

      v34 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

      return sub_2516A91DC(v35, v68, v34, &protocol witness table for StandardOnboardingFlow);
    }

    else
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v36 = sub_251702F84();
      __swift_project_value_buffer(v36, static Logger.general);
      v37 = v68;
      v38 = sub_251702F64();
      v39 = sub_251703314();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = *(v37 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion);

        _os_log_impl(&dword_25167E000, v38, v39, "Proceed with adding region with region of version %ld", v40, 0xCu);
        MEMORY[0x2530803C0](v40, -1, -1);
      }

      else
      {

        v38 = v37;
      }

      if (*(&v37->isa + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) < 2)
      {
        v59 = objc_allocWithZone(type metadata accessor for OnboardingOpenAppStoreViewController());

        return sub_2516A9708(v60, v37, v59, &protocol witness table for StandardOnboardingFlow);
      }

      else
      {
        v41 = type metadata accessor for OnboardingLegalConsentViewController();
        v42 = objc_allocWithZone(v41);
        v43 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
        v44 = objc_opt_self();

        *&v42[v43] = [v44 boldButton];
        v45 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
        *&v42[v45] = [objc_opt_self() linkButton];
        v46 = &v42[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
        *v46 = v67;
        v46[1] = &protocol witness table for StandardOnboardingFlow;
        v47 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
        *&v42[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v37;
        v42[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 1;
        v42[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 1;
        v48 = qword_28151EB58;
        v49 = v37;

        if (v48 != -1)
        {
          swift_once();
        }

        sub_251702C94();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_251708520;
        v51 = (*&v42[v47] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
        v53 = *v51;
        v52 = v51[1];
        *(v50 + 56) = MEMORY[0x277D837D0];
        *(v50 + 64) = sub_25169F41C();
        *(v50 + 32) = v53;
        *(v50 + 40) = v52;

        sub_251703184();

        v54 = sub_251703134();

        v70.receiver = v42;
        v70.super_class = v41;
        v55 = objc_msgSendSuper2(&v70, sel_initWithTitle_detailText_icon_contentLayout_, v54, 0, 0, 2, 0xE000000000000000);

        v56 = v55;
        [v56 set:1 shouldInlineButtontray:?];
        v57 = [v56 headerView];
        LODWORD(v58) = 1036831949;
        [v57 setTitleHyphenationFactor_];

        return v56;
      }
    }
  }

  else
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v7 = sub_251702F84();
    __swift_project_value_buffer(v7, static Logger.general);
    v8 = sub_251702F64();
    v9 = sub_251703314();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25167E000, v8, v9, "No configs available", v10, 2u);
      MEMORY[0x2530803C0](v10, -1, -1);
    }

    swift_beginAccess();
    v11 = v1[5];
    v12 = v1[6];
    v13 = v1[7];
    v14 = v1[8];
    v15 = objc_allocWithZone(type metadata accessor for OnboardingRegionNotAvailableViewController());

    sub_2516AB3D4(v11, v12, v13, v14);
    return sub_2516A9AA0(v1, v11, v12, v13, v14, v15, &protocol witness table for StandardOnboardingFlow);
  }
}

uint64_t StandardOnboardingFlow.deinit()
{

  sub_2516AB418(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t StandardOnboardingFlow.__deallocating_deinit()
{

  sub_2516AB418(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_2516A07F8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_2516A7D48(a1, v2, ObjectType, a2);
}

void sub_2516A0848(void *a1, uint64_t a2)
{
  swift_getObjectType();

  sub_2516A84AC(a1, v2);
}

uint64_t _s28HealthExposureNotificationUI22StandardOnboardingFlowC21currentSelectedRegionAA0J11NameAndCodeVSgvg_0()
{
  swift_beginAccess();
  v1 = v0[5];
  sub_2516AB3D4(v1, v0[6], v0[7], v0[8]);
  return v1;
}

void _s28HealthExposureNotificationUI22StandardOnboardingFlowC21currentSelectedRegionAA0J11NameAndCodeVSgvs_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = v4[5];
  v10 = v4[6];
  v11 = v4[7];
  v12 = v4[8];
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  sub_2516AB418(v9, v10, v11, v12);
}

uint64_t AddRegionOnboardingFlow.__allocating_init(agencyModel:exposureManager:deepLinkIntiated:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  v11 = MEMORY[0x277D84F90];
  *(v10 + 64) = 0;
  *(v10 + 72) = v11;
  *(v10 + 80) = 0;
  swift_beginAccess();
  *(v10 + 32) = a1;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 88) = a2;
  *(v10 + 80) = a3;
  return v10;
}

uint64_t AddRegionOnboardingFlow.init(agencyModel:exposureManager:deepLinkIntiated:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  v11 = MEMORY[0x277D84F90];
  *(v5 + 64) = 0;
  *(v5 + 72) = v11;
  *(v5 + 80) = 0;
  swift_beginAccess();
  *(v5 + 32) = a1;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  *(v5 + 88) = a2;
  *(v5 + 80) = a3;
  return v5;
}

void *AddRegionOnboardingFlow.initialViewController.getter()
{
  if (*(v0 + 80) == 1 && [*(v0 + 88) areAvailabilityAlertsEnabled] && (objc_msgSend(objc_opt_self(), sel_locationServicesEnabled) & 1) != 0)
  {
    return sub_2516A1778();
  }

  swift_beginAccess();
  if (*(v0 + 32))
  {
    return sub_2516A1778();
  }

  v2 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

  return sub_2516A9CEC(v3, 0, v2, &protocol witness table for AddRegionOnboardingFlow);
}

void AddRegionOnboardingFlow.didTapNext(from:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v55 = a1;
  v7 = (*(a2 + 8))(ObjectType, a2);
  if (v7 <= 3)
  {
    if (!v7)
    {
      swift_beginAccess();
      v14 = v2[4];
      if (v14)
      {
        v15 = type metadata accessor for OnboardingLegalConsentViewController();
        v16 = objc_allocWithZone(v15);
        v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
        v18 = objc_opt_self();
        v19 = v14;

        *&v16[v17] = [v18 boldButton];
        v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
        *&v16[v20] = [objc_opt_self() linkButton];
        v21 = &v16[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
        *v21 = v3;
        v21[1] = &protocol witness table for AddRegionOnboardingFlow;
        v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
        *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v19;
        v16[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 0;
        v16[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 1;
        v23 = qword_28151EB58;
        v24 = v19;

        if (v23 != -1)
        {
          swift_once();
        }

        sub_251702C94();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_251708520;
        v26 = (*&v16[v22] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
        v28 = *v26;
        v27 = v26[1];
        *(v25 + 56) = MEMORY[0x277D837D0];
        *(v25 + 64) = sub_25169F41C();
        *(v25 + 32) = v28;
        *(v25 + 40) = v27;

        sub_251703184();

        v29 = sub_251703134();

        v54.receiver = v16;
        v54.super_class = v15;
        v30 = objc_msgSendSuper2(&v54, sel_initWithTitle_detailText_icon_contentLayout_, v29, 0, 0, 2, 0xE000000000000000);

        v31 = v30;
        [v31 set:1 shouldInlineButtontray:?];
        v32 = [v31 headerView];
        LODWORD(v33) = 1036831949;
        [v32 setTitleHyphenationFactor_];

        v8 = v31;
      }

      else
      {
        swift_beginAccess();
        v38 = v2[5];
        v39 = v3[6];
        v40 = v3[7];
        v41 = v3[8];
        v42 = objc_allocWithZone(type metadata accessor for OnboardingRegionNotAvailableViewController());

        sub_2516AB3D4(v38, v39, v40, v41);
        v8 = sub_2516A9AA0(v3, v38, v39, v40, v41, v42, &protocol witness table for AddRegionOnboardingFlow);
      }

      goto LABEL_26;
    }

    if (v7 != 1)
    {
      if (v7 == 2)
      {
LABEL_5:
        v8 = sub_2516A1778();
        v9 = 1;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    swift_beginAccess();
    if (v2[6])
    {
      swift_beginAccess();
      v34 = v2[9];
      if (!*(v34 + 16))
      {
        goto LABEL_5;
      }

      v35 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

      v8 = sub_2516A9CEC(v3, v34, v35, &protocol witness table for AddRegionOnboardingFlow);
      goto LABEL_26;
    }

LABEL_23:
    swift_beginAccess();
    v10 = v2[2];

    v11 = 0;
    goto LABEL_24;
  }

  if (v7 - 6 < 3)
  {
    swift_beginAccess();
    v10 = v2[2];

    v11 = 3;
LABEL_24:
    v10(v11);
LABEL_34:

    return;
  }

  if (v7 == 4)
  {
    swift_beginAccess();
    v36 = v2[4];
    if (v36)
    {
      v37 = objc_allocWithZone(type metadata accessor for OnboardingRegionChangeSummaryViewController());

      v8 = sub_2516AA6B0(v3, v36, v37);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v7 != 5 || (swift_beginAccess(), (v12 = v2[4]) == 0) || v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics] != 1)
  {
LABEL_13:
    swift_beginAccess();
    v10 = v2[2];

    v11 = 1;
    goto LABEL_24;
  }

  v13 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());

  v8 = sub_2516AA1E4(v3, v12, v13, &protocol witness table for AddRegionOnboardingFlow);
LABEL_26:
  v9 = 0;
LABEL_27:
  v43 = v8;
  v44 = [a1 navigationController];
  if (v44)
  {
    v45 = v44;
    [v44 pushViewController:v43 animated:1];
  }

  if (v9)
  {
    swift_beginAccess();
    v46 = v3[4];
    if (v46)
    {
      v47 = qword_28151EB60;
      v48 = *(v46 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
      if (v47 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v49 = static ENManagerAdapter.defaultAdapter;
      v50 = swift_allocObject();
      v50[2] = 1;
      v50[3] = v49;
      v50[4] = v48;
      v51 = v49;
      v52 = v48;
      v53 = v51;
      sub_2516C59C8(sub_2516AB45C, v50);

      goto LABEL_34;
    }
  }
}

void AddRegionOnboardingFlow.didTapCancel(from:)(void *a1)
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  sub_251702C94();
  sub_251702C94();
  v1 = sub_251703134();

  v2 = sub_251703134();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{0, 0xE000000000000000}];

  v4 = swift_allocObject();
  *(v4 + 16) = v14;
  *(v4 + 24) = a1;

  v16 = a1;
  v5 = sub_251703134();

  v21 = sub_2516AB468;
  v22 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_25169F470;
  v20 = &block_descriptor_2;
  v6 = _Block_copy(&aBlock);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:2 handler:v6];
  _Block_release(v6);

  [v3 addAction_];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = v3;
  v11 = sub_251703134();

  v21 = sub_251699CE8;
  v22 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_25169F470;
  v20 = &block_descriptor_9;
  v12 = _Block_copy(&aBlock);

  v13 = [v7 actionWithTitle:v11 style:1 handler:v12];
  _Block_release(v12);

  [v10 addAction_];
  [v16 presentViewController:v10 animated:1 completion:0];
}

void *sub_2516A1778()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[4];
  if (v2)
  {
    v52 = v2;
    v3 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
    v4 = sub_2516AAD40(v3);

    if (qword_27F453858 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      swift_beginAccess();
      v5 = static ENUIPublicHealthAgencyModel.availableRegions;
      if ((v4 & 0xC000000000000001) != 0)
      {
        if (v4 >= 0)
        {
          v4 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v6 = sub_251703474();
        v4 = sub_2516A5B44(v4, v6, &qword_27F454080, &qword_251708908, type metadata accessor for ENUIPublicHealthAgencyModel);
      }

      else
      {
      }

      v17 = sub_2516A5D3C(v5, v4);

      if ((v17 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_251703464();
        type metadata accessor for ENUIPublicHealthAgencyModel(0);
        sub_2516AB9D0();
        sub_2517032F4();
        v19 = v54;
        v18 = v55;
        v20 = v56;
        v21 = v57;
        v4 = v58;
      }

      else
      {
        v22 = -1 << *(v17 + 32);
        v18 = v17 + 56;
        v20 = ~v22;
        v23 = -v22;
        v24 = v23 < 64 ? ~(-1 << v23) : -1;
        v4 = v24 & *(v17 + 56);

        v21 = 0;
        v19 = v17;
      }

      if (v19 < 0)
      {
        break;
      }

      while (1)
      {
        v28 = v21;
        v29 = v4;
        v26 = v21;
        if (!v4)
        {
          break;
        }

LABEL_27:
        v27 = (v29 - 1) & v29;
        v25 = *(*(v19 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v25)
        {
          goto LABEL_31;
        }

LABEL_28:
        sub_25168CD90(0, &qword_27F454078, 0x277D82BB8);
        if (sub_2517033B4())
        {
          sub_2516ABA28(v19);

          if (qword_27F453878 != -1)
          {
            swift_once();
          }

          v46 = sub_251702F84();
          __swift_project_value_buffer(v46, static Logger.general);
          v47 = sub_251702F64();
          v48 = sub_251703314();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_25167E000, v47, v48, "Selected region is already authorized", v49, 2u);
            MEMORY[0x2530803C0](v49, -1, -1);
          }

          v50 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

          v43 = sub_2516A91DC(v51, v25, v50, &protocol witness table for AddRegionOnboardingFlow);

          return v43;
        }

        v21 = v26;
        v4 = v27;
        if (v19 < 0)
        {
          goto LABEL_20;
        }
      }

      while (1)
      {
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v26 >= ((v20 + 64) >> 6))
        {
          goto LABEL_31;
        }

        v29 = *(v18 + 8 * v26);
        ++v28;
        if (v29)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

LABEL_20:
    if (sub_251703494())
    {
      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      swift_dynamicCast();
      v25 = v53;
      v26 = v21;
      v27 = v4;
      if (v53)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    sub_2516ABA28(v19);

    if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v30 = sub_251702F84();
      __swift_project_value_buffer(v30, static Logger.general);
      v31 = sub_251702F64();
      v32 = sub_251703314();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_25167E000, v31, v32, "For the selected region, user has already installed the app, transitioning to the Open App view", v33, 2u);
        MEMORY[0x2530803C0](v33, -1, -1);
      }

      v34 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

      return sub_2516A91DC(v35, v52, v34, &protocol witness table for AddRegionOnboardingFlow);
    }

    else
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v36 = sub_251702F84();
      __swift_project_value_buffer(v36, static Logger.general);
      v37 = v52;
      v38 = sub_251702F64();
      v39 = sub_251703314();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = *(v37 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion);

        _os_log_impl(&dword_25167E000, v38, v39, "Proceed with adding region with region of version %ld", v40, 0xCu);
        MEMORY[0x2530803C0](v40, -1, -1);
      }

      else
      {

        v38 = v37;
      }

      if (*(&v37->isa + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) < 2)
      {
        v44 = objc_allocWithZone(type metadata accessor for OnboardingOpenAppStoreViewController());

        return sub_2516A9708(v45, v37, v44, &protocol witness table for AddRegionOnboardingFlow);
      }

      else
      {
        v41 = objc_allocWithZone(type metadata accessor for OnboardingAddRegionWelcomeViewController());

        v43 = sub_2516AA380(v42, v41);

        return v43;
      }
    }
  }

  else
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v7 = sub_251702F84();
    __swift_project_value_buffer(v7, static Logger.general);
    v8 = sub_251702F64();
    v9 = sub_251703314();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25167E000, v8, v9, "No configs available", v10, 2u);
      MEMORY[0x2530803C0](v10, -1, -1);
    }

    swift_beginAccess();
    v11 = v1[5];
    v12 = v1[6];
    v13 = v1[7];
    v14 = v1[8];
    v15 = objc_allocWithZone(type metadata accessor for OnboardingRegionNotAvailableViewController());

    sub_2516AB3D4(v11, v12, v13, v14);
    return sub_2516A9AA0(v1, v11, v12, v13, v14, v15, &protocol witness table for AddRegionOnboardingFlow);
  }
}

uint64_t AddRegionOnboardingFlow.deinit()
{

  sub_2516AB418(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t AddRegionOnboardingFlow.__deallocating_deinit()
{

  sub_2516AB418(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2516A1F98(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

id AnalyticsConsentOnboardingFlow.initialViewController.getter()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());
  v3 = v1;

  return sub_2516AA1E4(v4, v3, v2, &protocol witness table for AnalyticsConsentOnboardingFlow);
}

uint64_t AnalyticsConsentOnboardingFlow.completionHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

double AnalyticsConsentOnboardingFlow.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  return result;
}

uint64_t AnalyticsConsentOnboardingFlow.__allocating_init(agencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a1;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 72) = a2;
  v9 = a1;
  return v8;
}

uint64_t AnalyticsConsentOnboardingFlow.init(agencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a1;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  *(v4 + 72) = a2;
  v9 = a1;
  return v4;
}

void AnalyticsConsentOnboardingFlow.didTapNext(from:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 8))(ObjectType, a2) == 9)
  {
    swift_beginAccess();
    v5 = *(v2 + 80);

    v5(1);
  }

  else
  {
    sub_251703584();
    __break(1u);
  }
}

double AnalyticsConsentOnboardingFlow.didTapCancel(from:)()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  v1(0);

  return result;
}

uint64_t AnalyticsConsentOnboardingFlow.deinit()
{
  sub_2516AB418(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t AnalyticsConsentOnboardingFlow.__deallocating_deinit()
{
  sub_2516AB418(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_2516A25F4()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());
  v3 = v1;

  return sub_2516AA1E4(v4, v3, v2, &protocol witness table for AnalyticsConsentOnboardingFlow);
}

uint64_t sub_2516A2650()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

double sub_2516A269C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  return result;
}

double sub_2516A2744()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  v1(0);

  return result;
}

uint64_t _s28HealthExposureNotificationUI22StandardOnboardingFlowC17completionHandleryyAA0G6ResultOcvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double _s28HealthExposureNotificationUI22StandardOnboardingFlowC17completionHandleryyAA0G6ResultOcvs_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

void *VerificationOnboardingFlow.healthAgencyModel.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void VerificationOnboardingFlow.healthAgencyModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t VerificationOnboardingFlow.currentSelectedRegion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  swift_beginAccess();
  v2 = *v1;
  sub_2516AB3D4(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

void VerificationOnboardingFlow.currentSelectedRegion.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_2516AB418(v10, v11, v12, v13);
}

double VerificationOnboardingFlow.currentSelectedRegionSubdivisionCodes.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t VerificationOnboardingFlow.currentSelectedRegionSubdivisionCodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2516A2CAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_251699D18(v4 + v8, a4, a2, a3);
}

uint64_t sub_2516A2D34(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_2516AB4D4(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t VerificationOnboardingFlow.hasTraveled.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerificationOnboardingFlow.hasTraveled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerificationOnboardingFlow.isVaccinated.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerificationOnboardingFlow.isVaccinated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerificationOnboardingFlow.reportType.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerificationOnboardingFlow.reportType.setter(int a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerificationOnboardingFlow.__allocating_init(sessionIdentifier:agencyModel:exposureManager:reportType:enteredFromMainScreen:completion:)(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  v15 = sub_251702E64();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel) = 0;
  v17 = (v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  *v17 = 0u;
  v17[1] = 0u;
  *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes) = MEMORY[0x277D84F90];
  v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  v19 = type metadata accessor for SymptomOnset(0);
  (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
  *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled) = 2;
  *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated) = 2;
  swift_beginAccess();
  sub_2516AB4D4(a1, v13 + v14, &qword_27F454000, &unk_251708500);
  swift_endAccess();
  *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType) = a4;
  swift_beginAccess();
  *(v13 + v16) = a2;
  *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) = a2;
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;
  *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_exposureManager) = a3;
  *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) = a5;
  v20 = a2;
  return v13;
}

uint64_t VerificationOnboardingFlow.init(sessionIdentifier:agencyModel:exposureManager:reportType:enteredFromMainScreen:completion:)(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  v15 = sub_251702E64();
  (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel) = 0;
  v17 = (v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  *v17 = 0u;
  v17[1] = 0u;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes) = MEMORY[0x277D84F90];
  v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  v19 = type metadata accessor for SymptomOnset(0);
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled) = 2;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated) = 2;
  swift_beginAccess();
  sub_2516AB4D4(a1, v7 + v14, &qword_27F454000, &unk_251708500);
  swift_endAccess();
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType) = a4;
  swift_beginAccess();
  v20 = *(v7 + v16);
  *(v7 + v16) = a2;
  v21 = a2;

  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) = v21;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_exposureManager) = a3;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) = a5;
  return v7;
}

id VerificationOnboardingFlow.initialViewController.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType;
  swift_beginAccess();
  v3 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
  if (*(v1 + v2) == 3)
  {
    v4 = objc_allocWithZone(type metadata accessor for SelfReportVerificationWelcomeViewController());
    v5 = v3;

    v7 = sub_25169E258(v6, v5);

    return v7;
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for VerificationWelcomeViewController());

    return VerificationWelcomeViewController.init(flow:agencyModel:)(v1, v3);
  }
}

double VerificationOnboardingFlow.didTapNext(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_2516A6B5C(a1, v2, ObjectType, a2);
}

void VerificationOnboardingFlow.didTapCancel(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A708C(a1, v2, ObjectType, a2);
}

id sub_2516A3614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
  if (*&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentStatus])
  {
    v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
    swift_beginAccess();
    sub_251699D18(a1 + v6, v4, &qword_27F454000, &unk_251708500);
    v7 = sub_251702E64();
    LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
    sub_25168B718(v4, &qword_27F454000, &unk_251708500);
    if (v6 == 1)
    {
      v8 = objc_allocWithZone(type metadata accessor for VerificationCodeEntryViewController());
      v9 = v5;

      return VerificationCodeEntryViewController.init(flow:agencyModel:)(v10, v9);
    }

    else
    {
      return sub_2516A3A24(a1);
    }
  }

  else
  {
    v12 = type metadata accessor for OnboardingLegalConsentViewController();
    v13 = objc_allocWithZone(v12);
    v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
    v15 = objc_opt_self();
    v16 = v5;

    *&v13[v14] = [v15 boldButton];
    v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
    *&v13[v17] = [objc_opt_self() linkButton];
    v18 = &v13[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
    *v18 = a1;
    v18[1] = &protocol witness table for VerificationOnboardingFlow;
    v19 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
    *&v13[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v16;
    v13[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 0;
    v13[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 0;
    v20 = qword_28151EB58;
    v21 = v16;

    if (v20 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_251708520;
    v23 = (*&v13[v19] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v25 = *v23;
    v24 = v23[1];
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_25169F41C();
    *(v22 + 32) = v25;
    *(v22 + 40) = v24;

    sub_251703184();

    v26 = sub_251703134();

    v32.receiver = v13;
    v32.super_class = v12;
    v27 = objc_msgSendSuper2(&v32, sel_initWithTitle_detailText_icon_contentLayout_, v26, 0, 0, 2);

    v28 = v27;
    [v28 set:1 shouldInlineButtontray:?];
    v29 = [v28 headerView];
    LODWORD(v30) = 1036831949;
    [v29 setTitleHyphenationFactor_];

    return v28;
  }
}

id sub_2516A3A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  v5 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
  v6 = *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText + 8];
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v7 = *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText] & 0xFFFFFFFFFFFFLL;
  }

  if (v7 && (v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset, swift_beginAccess(), sub_251699D18(a1 + v8, v4, &unk_27F4538B0, &unk_2517068C0), v9 = type metadata accessor for SymptomOnset(0), LODWORD(v8) = (*(*(v9 - 8) + 48))(v4, 1, v9), sub_25168B718(v4, &unk_27F4538B0, &unk_2517068C0), v8 == 1))
  {
    v10 = objc_allocWithZone(type metadata accessor for VerificationSymptomDateEntryViewController(0));
    v11 = v5;

    return sub_2516A8F0C(v12, v11, v10, &protocol witness table for VerificationOnboardingFlow);
  }

  else
  {
    v14 = *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8];
    if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v15 = *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = objc_allocWithZone(type metadata accessor for VerificationTravelStatusViewController());
      v17 = v5;

      return sub_2516A895C(v18, v17, v16, &protocol witness table for VerificationOnboardingFlow);
    }

    else
    {
      v19 = *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
      if ((v19 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v20 = *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
      }

      if (v20 && (([v5 supportsFeatures_] & 1) != 0 || (v21 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v5[v21] == 2)))
      {
        v22 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());
        v23 = v5;

        return sub_2516A8C34(v24, v23, v22, &protocol witness table for VerificationOnboardingFlow);
      }

      else
      {
        objc_allocWithZone(type metadata accessor for VerificationSummaryViewController());
        v25 = v5;

        return VerificationSummaryViewController.init(flow:agencyModel:)(v26, v25);
      }
    }
  }
}

void sub_2516A3CE8(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454098, &qword_251708928);
  MEMORY[0x28223BE20](v9);
  v11 = (v25 - v10);
  sub_251699D18(a1, v25 - v10, &qword_27F454098, &qword_251708928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *v11;
    a3(v12);
  }

  else
  {
    v14 = *v11;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4540A0, &qword_251708930);
    sub_2516ABAC8(v11 + *(v15 + 48), v8);
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v16 = sub_251702F84();
    __swift_project_value_buffer(v16, static Logger.testVerification);
    v17 = sub_251702F64();
    v18 = sub_251703314();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136315138;
      v25[1] = v14;
      type metadata accessor for ENDiagnosisReportType(0);
      v21 = sub_251703194();
      v23 = sub_251693FCC(v21, v22, v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_25167E000, v17, v18, "Metadata for report type: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2530803C0](v20, -1, -1);
      MEMORY[0x2530803C0](v19, -1, -1);
    }

    v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
    swift_beginAccess();
    sub_2516ABCA0(v8, a2 + v24);
    swift_endAccess();
    a3(0);
    sub_25168B718(v8, &unk_27F4538B0, &unk_2517068C0);
  }
}

uint64_t VerificationOnboardingFlow.deinit()
{

  sub_25168B718(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier, &qword_27F454000, &unk_251708500);

  sub_2516AB418(*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion), *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion + 8), *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion + 16), *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion + 24));

  swift_unknownObjectRelease();
  sub_25168B718(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset, &unk_27F4538B0, &unk_2517068C0);
  return v0;
}

uint64_t VerificationOnboardingFlow.__deallocating_deinit()
{
  VerificationOnboardingFlow.deinit();

  return swift_deallocClassInstance();
}

void *sub_2516A40E8()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2516A4134(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2516A41EC()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  swift_beginAccess();
  v2 = *v1;
  sub_2516AB3D4(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

void sub_2516A4264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_2516AB418(v10, v11, v12, v13);
}

double sub_2516A433C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2516A4384(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_2516A4450(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_2516A6B5C(a1, v2, ObjectType, a2);
}

void sub_2516A44A0(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A708C(a1, v2, ObjectType, a2);
}

void *PreAuthorizationFlow.healthAgencyModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void PreAuthorizationFlow.healthAgencyModel.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2516A45D0()
{
  swift_beginAccess();
  v1 = v0[4];
  sub_2516AB3D4(v1, v0[5], v0[6], v0[7]);
  return v1;
}

void sub_2516A4640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  sub_2516AB418(v9, v10, v11, v12);
}

double sub_2516A4700()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2516A473C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_2516A484C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 72) = a1;
  return a2(v5);
}

uint64_t PreAuthorizationFlow.hasTraveled.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PreAuthorizationFlow.hasTraveled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PreAuthorizationFlow.isVaccinated.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PreAuthorizationFlow.isVaccinated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PreAuthorizationFlow.initialViewController.getter()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(type metadata accessor for PreAuthorizationWelcomeViewController());
  v3 = v1;

  return PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(v4, v3);
}

uint64_t PreAuthorizationFlow.completionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double PreAuthorizationFlow.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t PreAuthorizationFlow.init(agencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset;
  v10 = type metadata accessor for SymptomOnset(0);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled) = 2;
  *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated) = 2;
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a1;
  v11 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  *v11 = a3;
  v11[1] = a4;
  *(v4 + 72) = a2;
  v12 = a1;
  return v4;
}

id sub_2516A4DE4()
{
  v1 = *(v0 + 24);
  v2 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText + 8];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText] & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = objc_allocWithZone(type metadata accessor for VerificationSymptomDateEntryViewController(0));
    v5 = v1;

    return sub_2516A8F0C(v6, v5, v4, &protocol witness table for PreAuthorizationFlow);
  }

  else
  {
    v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8];
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = objc_allocWithZone(type metadata accessor for VerificationTravelStatusViewController());
      v11 = v1;

      return sub_2516A895C(v12, v11, v10, &protocol witness table for PreAuthorizationFlow);
    }

    else
    {
      v13 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
      if ((v13 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v14 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
      }

      if (v14 && (([*(v0 + 24) supportsFeatures_] & 1) != 0 || (v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v1[v15] == 2)))
      {
        v16 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());
        v17 = v1;

        return sub_2516A8C34(v18, v17, v16, &protocol witness table for PreAuthorizationFlow);
      }

      else
      {
        objc_allocWithZone(type metadata accessor for VerificationFinishedViewController());

        return VerificationFinishedViewController.init(flow:)(v19, &protocol witness table for PreAuthorizationFlow);
      }
    }
  }
}

void PreAuthorizationFlow.didTapNext(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A7650(a1, v2, ObjectType, a2);
}

void sub_2516A4FF0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v3 = sub_251702F84();
    __swift_project_value_buffer(v3, static Logger.general);
    v4 = a1;
    v5 = sub_251702F64();
    v6 = sub_251703324();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v10 = sub_251703194();
      v12 = sub_251693FCC(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_25167E000, v5, v6, "reporting symptomOnset, travelStatus and vaccinationStatus failed. Error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x2530803C0](v8, -1, -1);
      MEMORY[0x2530803C0](v7, -1, -1);
    }

    else
    {
    }
  }
}

double PreAuthorizationFlow.didTapCancel(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  v2 = *v1;

  v2(0);

  return result;
}

uint64_t PreAuthorizationFlow.deinit()
{
  sub_2516AB418(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  swift_unknownObjectRelease();
  sub_25168B718(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset, &unk_27F4538B0, &unk_2517068C0);

  return v0;
}

uint64_t PreAuthorizationFlow.__deallocating_deinit()
{
  sub_2516AB418(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  swift_unknownObjectRelease();
  sub_25168B718(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset, &unk_27F4538B0, &unk_2517068C0);

  return swift_deallocClassInstance();
}

id sub_2516A5390()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(type metadata accessor for PreAuthorizationWelcomeViewController());
  v3 = v1;

  return PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(v4, v3);
}

uint64_t sub_2516A53E4()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_2516A543C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_2516A54FC(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A7650(a1, v2, ObjectType, a2);
}

double sub_2516A554C()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  v2 = *v1;

  v2(0);

  return result;
}

void sub_2516A55F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese];
    if (v13)
    {
      v33 = a5;
      v14 = (v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version);
      v15 = v14[1];
      v32 = *v14;
      swift_beginAccess();
      if (static ENUIPublicHealthAgencyModel.activeRegion)
      {
        v16 = *(static ENUIPublicHealthAgencyModel.activeRegion + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
        v31 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];
        sub_25168CD90(0, &qword_27F453DF0, 0x277CC5C98);
        v30 = v12;

        v17 = a3;
        v18 = v16;
        v19 = v31;
        v20 = sub_2517033B4();

        a3 = v17;
        if (v20)
        {

          goto LABEL_10;
        }
      }

      else
      {
        v21 = v12;
      }

      if (qword_28151EB60 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v22 = static ENManagerAdapter.defaultAdapter;
      v23 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];
      v24 = swift_allocObject();
      v24[2] = v32;
      v24[3] = v15;
      v24[4] = 3;
      v24[5] = 0;
      v24[6] = 0;
      v24[7] = v22;
      v24[8] = v23;
      v24[9] = sub_2516A58DC;
      v24[10] = 0;
      v25 = v22;
      v26 = v23;
      v27 = v25;
      v28 = v26;
      sub_2516C59C8(v33, v24);
    }
  }

LABEL_10:
  aBlock[4] = a6;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = a7;
  v29 = _Block_copy(aBlock);

  [a3 dismissViewControllerAnimated:1 completion:v29];
  _Block_release(v29);
}

void sub_2516A58DC()
{
  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v0 = sub_251702F84();
  __swift_project_value_buffer(v0, static Logger.general);
  oslog = sub_251702F64();
  v1 = sub_251703314();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25167E000, oslog, v1, "User deferred legal consent", v2, 2u);
    MEMORY[0x2530803C0](v2, -1, -1);
  }
}

void sub_2516A59C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5[4] = sub_2516AB9BC;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_251693A80;
  v5[3] = &block_descriptor_46;
  v4 = _Block_copy(v5);

  [a2 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

double sub_2516A5A90(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);

  v2(0);

  return result;
}

uint64_t sub_2516A5B44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_251703504();
    v21 = v8;
    sub_251703464();
    if (sub_251703494())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_2516A6494(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_2517033A4();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_251703494());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_2516A5D3C(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v53[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = sub_251703474();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = (v2 + 56);
      while (1)
      {
        if (v50)
        {
          a1 = MEMORY[0x25307F910](v4, v49);
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_2517033A4();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      while (1)
      {
        v12 = *(*(v2 + 48) + 8 * v8);
        v13 = sub_2517033B4();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        MEMORY[0x28223BE20](v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = *(v2 + 16);
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = sub_251703474();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = sub_2516A6968(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = MEMORY[0x25307F910](v4, v49);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = sub_2517033A4();
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(*(v24 + 48) + 8 * v26);
              v31 = sub_2517033B4();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v17;

      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      sub_2516A6738(v39, v42, v37, v8, v53);
      v2 = v40;

      MEMORY[0x2530803C0](v39, -1, -1);
    }

LABEL_40:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_2516A6220(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454090, &unk_251708918);
  v4 = sub_2517034F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2517036E4();
      sub_2517031A4();
      v21 = sub_251703724();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_2516A6494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_2517034F4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_2517033A4();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_2516A66B4(uint64_t a1, uint64_t a2)
{
  sub_2517033A4();
  result = sub_251703454();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2516A6738(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_251703474();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_2516A6968(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x25307F910](v5[1]);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = sub_2517033A4();
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = sub_2517033B4();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_2517033B4();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2516A6968(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454080, &qword_251708908);
  result = sub_251703514();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2517033A4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
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

double sub_2516A6B5C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2516A6C30(a1, a2, a3, a4);
  if (v6)
  {
    v11 = v6;
    v7 = [a1 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 pushViewController:v11 animated:1];
    }
  }

  else
  {
    swift_beginAccess();
    v10 = *(a2 + 16);

    v10(1);
  }

  return result;
}

id sub_2516A6C30(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41[-v8];
  ObjectType = swift_getObjectType();
  v42 = a1;
  v11 = (*(a4 + 8))(ObjectType, a4);
  result = 0;
  if (v11 <= 0xBu)
  {
    switch(v11)
    {
      case 4u:
        v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
        swift_beginAccess();
        sub_251699D18(a2 + v24, v9, &qword_27F454000, &unk_251708500);
        v25 = sub_251702E64();
        LODWORD(v24) = (*(*(v25 - 8) + 48))(v9, 1, v25);
        sub_25168B718(v9, &qword_27F454000, &unk_251708500);
        if (v24 == 1)
        {
          v26 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
          v27 = objc_allocWithZone(type metadata accessor for VerificationCodeEntryViewController());

          return VerificationCodeEntryViewController.init(flow:agencyModel:)(a2, v26);
        }

        break;
      case 0xAu:
        return sub_2516A3614(a2);
      case 0xBu:
        break;
      default:
        return result;
    }

    return sub_2516A3A24(a2);
  }

  if (v11 > 0xDu)
  {
    if (v11 == 14)
    {
      v34 = objc_allocWithZone(type metadata accessor for VerificationFinishedViewController());

      return VerificationFinishedViewController.init(flow:)(v35, &protocol witness table for VerificationOnboardingFlow);
    }

    if (v11 != 21)
    {
      return result;
    }

    v20 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
    v21 = objc_allocWithZone(type metadata accessor for VerificationSummaryViewController());

    v22 = v20;
    v23 = a2;
  }

  else if (v11 == 12)
  {
    v28 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
    v29 = *&v28[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8];
    if ((v29 & 0x2000000000000000) != 0)
    {
      v30 = HIBYTE(v29) & 0xF;
    }

    else
    {
      v30 = *&v28[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText] & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = objc_allocWithZone(type metadata accessor for VerificationTravelStatusViewController());
      v32 = v28;

      return sub_2516A895C(v33, v32, v31, &protocol witness table for VerificationOnboardingFlow);
    }

    v36 = *&v28[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
    if ((v36 & 0x2000000000000000) != 0)
    {
      v37 = HIBYTE(v36) & 0xF;
    }

    else
    {
      v37 = *&v28[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      if (([*(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) supportsFeatures_] & 1) != 0 || (v38 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v28[v38] == 2))
      {
        v17 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());
        v39 = v28;

        v18 = v39;
        return sub_2516A8C34(v19, v18, v17, &protocol witness table for VerificationOnboardingFlow);
      }
    }

    objc_allocWithZone(type metadata accessor for VerificationSummaryViewController());
    v40 = v28;

    v22 = v40;
  }

  else
  {
    v13 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
    v14 = *&v13[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
    if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v15 = *&v13[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      if (([*(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) supportsFeatures_] & 1) != 0 || (v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v13[v16] == 2))
      {
        v17 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());

        v18 = v13;
        v19 = a2;
        return sub_2516A8C34(v19, v18, v17, &protocol witness table for VerificationOnboardingFlow);
      }
    }

    objc_allocWithZone(type metadata accessor for VerificationSummaryViewController());

    v22 = v13;
    v23 = a2;
  }

  return VerificationSummaryViewController.init(flow:agencyModel:)(v23, v22);
}

void sub_2516A708C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v32 - v8;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(a2 + v10, v9, &qword_27F454000, &unk_251708500);
  v11 = sub_251702E64();
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_25168B718(v9, &qword_27F454000, &unk_251708500);
  if (v10 == 1)
  {
    ObjectType = swift_getObjectType();
    aBlock = a1;
    v13 = *(a4 + 8);
    if (v13(ObjectType, a4) == 10)
    {
      swift_beginAccess();
      v14 = *(a2 + 16);

      v15 = 0;
LABEL_7:
      v14(v15);

      return;
    }
  }

  else
  {
    v13 = *(a4 + 8);
  }

  v16 = swift_getObjectType();
  aBlock = a1;
  if (v13(v16, a4) == 14)
  {
    swift_beginAccess();
    v14 = *(a2 + 16);

    v15 = 2;
    goto LABEL_7;
  }

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v17 = sub_251702C94();
  v32[0] = v18;
  v32[1] = v17;
  sub_251702C94();
  v19 = sub_251703134();

  v20 = sub_251703134();

  v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:0];

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v33 = a1;

  v23 = sub_251703134();

  v38 = sub_25169D78C;
  v39 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_25169F470;
  v37 = &block_descriptor_67;
  v24 = _Block_copy(&aBlock);

  v25 = objc_opt_self();
  v26 = [v25 actionWithTitle:v23 style:2 handler:v24];
  _Block_release(v24);

  [v21 addAction_];
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  v28 = v21;
  v29 = sub_251703134();

  v38 = sub_2516ABF30;
  v39 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_25169F470;
  v37 = &block_descriptor_73;
  v30 = _Block_copy(&aBlock);

  v31 = [v25 actionWithTitle:v29 style:1 handler:v30];
  _Block_release(v30);

  [v28 addAction_];
  [v33 presentViewController:v28 animated:1 completion:0];
}

void sub_2516A7650(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v60[-v15];
  ObjectType = swift_getObjectType();
  v65 = a1;
  v18 = (*(a4 + 8))(ObjectType, a4);
  if (v18 > 0x10)
  {
    switch(v18)
    {
      case 0x11u:
        v43 = sub_2516A4DE4();
        if (v43)
        {
          goto LABEL_31;
        }

        break;
      case 0x14u:
        v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset;
        swift_beginAccess();
        v64 = v20;
        sub_251699D18(a2 + v20, v16, &unk_27F4538B0, &unk_2517068C0);
        v21 = type metadata accessor for SymptomOnset(0);
        LODWORD(v20) = (*(*(v21 - 8) + 48))(v16, 1, v21);
        sub_25168B718(v16, &unk_27F4538B0, &unk_2517068C0);
        if (v20 != 1 || (v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled, swift_beginAccess(), *(a2 + v22) != 2) || (v23 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated, swift_beginAccess(), *(a2 + v23) != 2))
        {
          if (qword_28151EB60 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v63 = static ENManagerAdapter.defaultAdapter;
          v62 = *(*(a2 + 24) + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
          sub_251699D18(a2 + v64, v14, &unk_27F4538B0, &unk_2517068C0);
          v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled;
          swift_beginAccess();
          LODWORD(v64) = *(a2 + v24);
          v25 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated;
          swift_beginAccess();
          v61 = *(a2 + v25);
          sub_251699D18(v14, v11, &unk_27F4538B0, &unk_2517068C0);
          v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
          v27 = v26 + v9;
          v28 = (v26 + v9 + 9) & 0xFFFFFFFFFFFFFFF8;
          v29 = (v26 + v9 + 25) & 0xFFFFFFFFFFFFFFF8;
          v30 = swift_allocObject();
          sub_2516ABAC8(v11, v30 + v26);
          v31 = (v30 + v27);
          *v31 = v64;
          v31[1] = v61;
          v32 = v30 + v28;
          v34 = v62;
          v33 = v63;
          *v32 = v63;
          *(v32 + 8) = 1;
          *(v30 + v29) = v34;
          v35 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v35 = sub_2516A4FF0;
          v35[1] = 0;
          v36 = v33;
          v37 = v34;
          v38 = v36;
          v39 = v37;
          sub_2516C59C8(sub_2516ABB38, v30);

          sub_25168B718(v14, &unk_27F4538B0, &unk_2517068C0);
        }

        break;
      case 0x15u:
        goto LABEL_30;
      default:
        goto LABEL_34;
    }

    v48 = (a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
    swift_beginAccess();
    v49 = *v48;

    v49(1);

    return;
  }

  if (v18 != 12)
  {
    if (v18 == 13)
    {
      v19 = *(a2 + 24);
      goto LABEL_18;
    }

    if (v18 == 16)
    {
      v50 = *(a2 + 24);
      v51 = objc_allocWithZone(type metadata accessor for PreAuthorizationConsentViewController(0));
      v51[qword_27F454590] = 2;
      *&v51[qword_27F454598] = a2;
      *&v51[qword_27F4545A0] = v50;
      v52 = *&v50[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];

      v53 = v50;
      v54 = v52;
      sub_2516E0EFC(v66);
      v43 = sub_25168D488(v66, 0, 0, v52, 0, 0);
      goto LABEL_31;
    }

LABEL_34:
    sub_251703584();
    __break(1u);
    return;
  }

  v19 = *(a2 + 24);
  v40 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8];
  if ((v40 & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v41 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText] & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
LABEL_18:
    v44 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
    if ((v44 & 0x2000000000000000) != 0)
    {
      v45 = HIBYTE(v44) & 0xF;
    }

    else
    {
      v45 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      if (([v19 supportsFeatures_] & 1) != 0 || (v46 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v19[v46] == 2))
      {
        v47 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());

        v43 = sub_2516A8C34(a2, v19, v47, &protocol witness table for PreAuthorizationFlow);
        goto LABEL_31;
      }
    }

LABEL_30:
    v55 = objc_allocWithZone(type metadata accessor for VerificationFinishedViewController());

    v43 = VerificationFinishedViewController.init(flow:)(v56, &protocol witness table for PreAuthorizationFlow);
    goto LABEL_31;
  }

  v42 = objc_allocWithZone(type metadata accessor for VerificationTravelStatusViewController());

  v43 = sub_2516A895C(a2, v19, v42, &protocol witness table for PreAuthorizationFlow);
LABEL_31:
  v57 = v43;
  v58 = [a1 navigationController];
  if (v58)
  {
    v59 = v58;
    [v58 pushViewController:v57 animated:1];
  }
}

double sub_2516A7D48(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v59 = a1;
  v8 = (*(a4 + 8))(ObjectType, a4);
  if (v8 > 4)
  {
    if ((v8 - 6) < 3)
    {
      swift_beginAccess();
      v9 = a2[2];

      v9(3);
      goto LABEL_40;
    }

    if (v8 != 5)
    {
      if (v8 != 9)
      {
        goto LABEL_38;
      }

      swift_beginAccess();
      v13 = a2[4];
      if (!v13)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (a2[11] == 5 && *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isPreauthorizationDomainAllowed) == 1)
      {
        v37 = a2[10];
        swift_beginAccess();
        v38 = a2[2];
        v39 = a2[3];
        type metadata accessor for PreAuthorizationFlow(0);
        v40 = swift_allocObject();
        PreAuthorizationFlow.init(agencyModel:exposureManager:completion:)(v13, v37, v38, v39);
        v41 = objc_allocWithZone(type metadata accessor for PreAuthorizationWelcomeViewController());
        v42 = v13;
        swift_unknownObjectRetain();

        v12 = PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(v40, v42);
        goto LABEL_28;
      }

LABEL_38:
      swift_beginAccess();
      v54 = a2[2];

      v54(1);
      goto LABEL_40;
    }

    swift_beginAccess();
    v13 = a2[4];
    if (!v13)
    {
      goto LABEL_38;
    }

    if ((*(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics) & 1) == 0)
    {
      goto LABEL_25;
    }

    v36 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());

    v12 = sub_2516AA1E4(a2, v13, v36, &protocol witness table for StandardOnboardingFlow);
LABEL_28:
    v16 = v12;
LABEL_29:
    LODWORD(v17) = 0;
    goto LABEL_30;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_17;
    }

    if (v8 != 4)
    {
      goto LABEL_38;
    }

    swift_beginAccess();
    v14 = a2[4];
    if (v14)
    {
      v15 = objc_allocWithZone(type metadata accessor for OnboardingSummaryViewController());

      v12 = sub_2516A9EB4(a2, v14, v15);
      goto LABEL_28;
    }

LABEL_39:
    swift_beginAccess();
    v55 = a2[2];

    v55(0);
    goto LABEL_40;
  }

  if (!v8)
  {
    swift_beginAccess();
    v17 = a2[4];
    if (!v17)
    {
      v56 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

      v16 = sub_2516A9CEC(v57, 0, v56, &protocol witness table for StandardOnboardingFlow);
      goto LABEL_30;
    }

    v18 = type metadata accessor for OnboardingLegalConsentViewController();
    v19 = objc_allocWithZone(v18);
    v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
    v21 = objc_opt_self();
    v22 = v17;

    *&v19[v20] = [v21 boldButton];
    v23 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
    *&v19[v23] = [objc_opt_self() linkButton];
    v24 = &v19[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
    *v24 = a2;
    v24[1] = &protocol witness table for StandardOnboardingFlow;
    v25 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
    *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v22;
    v19[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 1;
    v19[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 1;
    v26 = qword_28151EB58;
    v27 = v22;

    if (v26 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_251708520;
    v29 = (*&v19[v25] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v31 = *v29;
    v30 = v29[1];
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = sub_25169F41C();
    *(v28 + 32) = v31;
    *(v28 + 40) = v30;

    sub_251703184();

    v32 = sub_251703134();

    v58.receiver = v19;
    v58.super_class = v18;
    v33 = objc_msgSendSuper2(&v58, sel_initWithTitle_detailText_icon_contentLayout_, v32, 0, 0, 2, 0xE000000000000000);

    v16 = v33;
    [v16 set:1 shouldInlineButtontray:?];
    v34 = [v16 headerView];
    LODWORD(v35) = 1036831949;
    [v34 setTitleHyphenationFactor_];

    goto LABEL_29;
  }

  swift_beginAccess();
  if (!a2[6])
  {
    goto LABEL_39;
  }

  swift_beginAccess();
  v10 = a2[9];
  if (*(v10 + 16))
  {
    v11 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

    v12 = sub_2516A9CEC(a2, v10, v11, &protocol witness table for StandardOnboardingFlow);
    goto LABEL_28;
  }

LABEL_17:
  v16 = sub_25169FC34();
  LODWORD(v17) = 1;
LABEL_30:
  v43 = [a1 navigationController];
  if (v43)
  {
    v44 = v43;
    [v43 pushViewController:v16 animated:1];
  }

  if (!v17 || (swift_beginAccess(), (v45 = a2[4]) == 0))
  {

    return result;
  }

  v46 = qword_28151EB60;
  v47 = *(v45 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  if (v46 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v48 = static ENManagerAdapter.defaultAdapter;
  v49 = swift_allocObject();
  v49[2] = 1;
  v49[3] = v48;
  v49[4] = v47;
  v50 = v48;
  v51 = v47;
  v52 = v50;
  sub_2516C59C8(sub_2516ABFD8, v49);

LABEL_40:

  return result;
}

void sub_2516A84AC(void *a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
    sub_251702C94();
    sub_251702C94();
    v3 = sub_251703134();

    v4 = sub_251703134();

    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:{0, 0xE000000000000000}];

    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a1;

    v19 = a1;
    v7 = sub_251703134();

    v24 = sub_2516ABEA0;
    v25 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25169F470;
    v23 = &block_descriptor_90;
    v8 = _Block_copy(&aBlock);

    v9 = objc_opt_self();
    v10 = [v9 actionWithTitle:v7 style:2 handler:v8];
    _Block_release(v8);

    [v5 addAction_];
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v12 = v5;
    v13 = sub_251703134();

    v24 = sub_2516ABF30;
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25169F470;
    v23 = &block_descriptor_97;
    v14 = _Block_copy(&aBlock);

    v15 = [v9 actionWithTitle:v13 style:1 handler:v14];
    _Block_release(v14);

    [v12 addAction_];
    [v19 presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    v24 = sub_2516ABF60;
    v25 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_251693A80;
    v23 = &block_descriptor_84;
    v17 = _Block_copy(&aBlock);

    [a1 dismissViewControllerAnimated:1 completion:v17];
    _Block_release(v17);
  }
}

id sub_2516A895C(unint64_t a1, void *a2, _BYTE *a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] = 2;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource] = 0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell;
  v10 = type metadata accessor for VerificationCheckmarkCell();
  *&a3[v9] = [objc_allocWithZone(v10) initWithStyle:0 reuseIdentifier:0];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell;
  *&a3[v11] = [objc_allocWithZone(v10) initWithStyle:0 reuseIdentifier:0];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton;
  *&a3[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_secondaryButton;
  *&a3[v13] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v14 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow];
    *v14 = a1;
    v14[1] = a4;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_healthAgencyModel] = a2;
    v15 = qword_28151EB58;

    v16 = a2;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v17 = sub_251703134();

    v22.receiver = a3;
    v22.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_, v17, 0, 0, 0xE000000000000000);

    v19 = v18;
    [v19 set:1 shouldInlineButtontray:?];

    return v19;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v21 = sub_251703194();
    MEMORY[0x25307F580](v21);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

id sub_2516A8C34(unint64_t a1, void *a2, _BYTE *a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] = 2;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource] = 0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell;
  v10 = type metadata accessor for VerificationCheckmarkCell();
  *&a3[v9] = [objc_allocWithZone(v10) initWithStyle:0 reuseIdentifier:0];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell;
  *&a3[v11] = [objc_allocWithZone(v10) initWithStyle:0 reuseIdentifier:0];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_primaryButton;
  *&a3[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_secondaryButton;
  *&a3[v13] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v14 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_flow];
    *v14 = a1;
    v14[1] = a4;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_healthAgencyModel] = a2;
    v15 = qword_28151EB58;

    v16 = a2;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v17 = sub_251703134();

    v22.receiver = a3;
    v22.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_, v17, 0, 0, 0xE000000000000000);

    v19 = v18;
    [v19 set:1 shouldInlineButtontray:?];

    return v19;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v21 = sub_251703194();
    MEMORY[0x25307F580](v21);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

id sub_2516A8F0C(unint64_t a1, void *a2, _BYTE *a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms] = 2;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
  v10 = sub_251702E24();
  (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_isShowingDatePicker] = 0;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource] = 0;
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_primaryButton;
  *&a3[v11] = [objc_opt_self() boldButton];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_secondaryButton;
  *&a3[v12] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v13 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_flow];
    *v13 = a1;
    v13[1] = a4;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_healthAgencyModel] = a2;
    v14 = qword_28151EB58;

    v15 = a2;
    if (v14 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v16 = sub_251703134();

    v21.receiver = a3;
    v21.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_icon_, v16, 0, 0, 0xE000000000000000);

    v18 = v17;
    [v18 set:1 shouldInlineButtontray:?];

    return v18;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v20 = sub_251703194();
    MEMORY[0x25307F580](v20);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

void *sub_2516A91DC(void *a1, void *a2, char *a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_primaryButton;
  *&a3[v8] = [objc_opt_self() boldButton];
  v9 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_flow];
  *v9 = a1;
  *(v9 + 1) = a4;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_healthAgencyModel] = a2;

  v10 = a2;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (*&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] < 2)
    {
      goto LABEL_12;
    }

    v11 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8];
    if (v11)
    {
      v12 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId];
      if (qword_28151EB60 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = static ENManagerAdapter.defaultAdapter;
      _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0(v12, v11);
      v15 = v14;

      if (v15)
      {
        goto LABEL_12;
      }
    }
  }

  if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) != 0 && v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized] != 1)
  {
LABEL_12:
    swift_beginAccess();
    v16 = a1[6];
    if (v16)
    {
      v18 = a1[7];
      v17 = a1[8];
      v19 = a1[5];
      sub_2516AB3D4(v19, a1[6], v18, v17);

      sub_2516AB418(v19, v16, v18, v17);
    }

    else
    {
      v19 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
      v16 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
    }

    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_251708520;
    *(v20 + 56) = MEMORY[0x277D837D0];
    v21 = sub_25169F41C();
    *(v20 + 64) = v21;
    *(v20 + 32) = v19;
    *(v20 + 40) = v16;
    sub_251703184();

    sub_251702C94();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_251708520;
    v24 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
    v23 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = v21;
    *(v22 + 32) = v24;
    *(v22 + 40) = v23;

    sub_251703184();
  }

  else
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
  }

  v25 = sub_251703134();

  v26 = sub_251703134();

  v32.receiver = a3;
  v32.super_class = type metadata accessor for OnboardingRegionAlreadyExistsViewController();
  v27 = objc_msgSendSuper2(&v32, sel_initWithTitle_detailText_icon_contentLayout_, v25, v26, 0, 3, 0xE000000000000000);

  v28 = v27;
  v29 = [v28 headerView];
  LODWORD(v30) = 1036831949;
  [v29 setTitleHyphenationFactor_];

  return v28;
}

id sub_2516A9708(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_appStoreURL];
  *v8 = 0xD000000000000029;
  *(v8 + 1) = 0x800000025170A8C0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_primaryButton;
  *&a3[v9] = [objc_opt_self() boldButton];
  v10 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_flow];
  *v10 = a1;
  *(v10 + 1) = a4;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_healthAgencyModel] = a2;
  v11 = qword_28151EB58;

  v12 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_251708520;
  v14 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v15 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_25169F41C();
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;

  sub_251703184();

  v16 = sub_251703134();

  v17 = sub_251703134();

  v18 = sub_251703134();
  v19 = [objc_opt_self() systemImageNamed_];

  v28.receiver = a3;
  v28.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, v19, 3);

  v21 = v20;
  v22 = [v21 headerView];
  v23 = [objc_opt_self() systemBlueColor];
  [v22 setTintColor_];

  v24 = [v21 headerView];
  LODWORD(v25) = 1036831949;
  [v24 setTitleHyphenationFactor_];

  return v21;
}

id sub_2516A9AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_primaryButton;
  *&a6[v15] = [objc_opt_self() boldButton];
  v16 = &a6[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_flow];
  *v16 = a1;
  *(v16 + 1) = a7;
  v17 = &a6[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_region];
  *v17 = a2;
  *(v17 + 1) = a3;
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  v18 = qword_28151EB58;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v19 = sub_251703134();

  v20 = sub_251703134();

  v26.receiver = a6;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v19, v20, 0, 3, 0xE000000000000000);

  v22 = v21;
  v23 = [v22 headerView];
  LODWORD(v24) = 1036831949;
  [v23 setTitleHyphenationFactor_];

  return v22;
}

id sub_2516A9CEC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v10 = sub_251702C94();
  v12 = v11;
  v13 = [objc_opt_self() systemBackgroundColor];
  v14 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&a3[v9] = LoadingStatusView.init(with:backgroundColor:)(v10, v12, v13);
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView;
  *&a3[v15] = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider;
  type metadata accessor for RegionsProvider(0);
  swift_allocObject();
  *&a3[v16] = sub_2516E2EB8();
  v17 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
  *v17 = a1;
  *(v17 + 1) = a4;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType] = a2;
  v19.receiver = a3;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
}

id sub_2516A9EB4(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_primaryButton;
  *&a3[v7] = [objc_opt_self() boldButton];
  v8 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_flow];
  *v8 = a1;
  *(v8 + 1) = &protocol witness table for StandardOnboardingFlow;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_healthAgencyModel] = a2;
  v9 = qword_28151EB58;

  v22 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v10 = sub_251703134();

  sub_251702C94();
  v11 = sub_251703134();

  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.exposureNotificationUI;
  v13 = sub_251703134();
  v14 = [objc_opt_self() imageNamed:v13 inBundle:{v12, 0xE000000000000000}];

  v23.receiver = a3;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_contentLayout_, v10, v11, v14, 3);

  v16 = v15;
  v17 = [v16 headerView];
  v18 = [objc_opt_self() systemPinkColor];
  [v17 setTintColor_];

  v19 = [v16 headerView];
  LODWORD(v20) = 1036831949;
  [v19 setTitleHyphenationFactor_];

  return v16;
}

id sub_2516AA1E4(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_primaryButton;
  *&a3[v9] = [objc_opt_self() boldButton];
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_secondaryButton;
  *&a3[v10] = [objc_opt_self() linkButton];
  v11 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_flow];
  *v11 = a1;
  *(v11 + 1) = a4;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel] = a2;
  v12 = qword_28151EB58;

  v13 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v14 = sub_251703134();

  v17.receiver = a3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v14, 0, 0, 3, 0xE000000000000000);

  return v15;
}

id sub_2516AA380(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_primaryButton;
  *&a2[v5] = [objc_opt_self() boldButton];
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_secondaryButton;
  *&a2[v6] = [objc_opt_self() linkButton];
  v7 = &a2[OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow];
  *v7 = a1;
  *(v7 + 1) = &protocol witness table for AddRegionOnboardingFlow;
  v8 = qword_28151EB58;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v9 = sub_251703134();

  sub_251702C94();
  v10 = sub_251703134();

  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.exposureNotificationUI;
  v12 = sub_251703134();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:{v11, 0xE000000000000000}];

  v21.receiver = a2;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_icon_contentLayout_, v9, v10, v13, 2);

  v15 = v14;
  v16 = [v15 headerView];
  v17 = [objc_opt_self() systemPinkColor];
  [v16 setTintColor_];

  v18 = [v15 headerView];
  LODWORD(v19) = 1036831949;
  [v18 setTitleHyphenationFactor_];

  return v15;
}

id sub_2516AA6B0(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_primaryButton;
  *&a3[v6] = [objc_opt_self() boldButton];
  v7 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_flow];
  *v7 = a1;
  *(v7 + 1) = &protocol witness table for AddRegionOnboardingFlow;
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel] = a2;
  v9 = qword_28151EB58;

  v32 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_251708520;
  v11 = (*&a3[v8] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v30 = v8;
  v13 = *v11;
  v12 = v11[1];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v14 = sub_25169F41C();
  *(v10 + 64) = v14;
  *(v10 + 32) = v13;
  *(v10 + 40) = v12;

  sub_251703184();

  sub_251702C94();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251708520;
  v16 = (*&a3[v30] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v18 = *v16;
  v17 = v16[1];
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = v14;
  *(v15 + 32) = v18;
  *(v15 + 40) = v17;

  sub_251703184();

  v19 = sub_251703134();

  v20 = sub_251703134();

  v21 = sub_251703134();
  v22 = [objc_opt_self() systemImageNamed_];

  v33.receiver = a3;
  v33.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_icon_contentLayout_, v19, v20, v22, 3);

  v24 = v23;
  v25 = [v24 headerView];
  v26 = [objc_opt_self() systemPinkColor];
  [v25 setTintColor_];

  v27 = [v24 headerView];
  LODWORD(v28) = 1036831949;
  [v27 setTitleHyphenationFactor_];

  return v24;
}

uint64_t _s28HealthExposureNotificationUI12SymptomOnsetO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251702E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymptomOnset(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4540A8, &qword_251708938);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_2516ABD10(a1, &v20 - v13);
  sub_2516ABD10(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2516ABD10(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = sub_251702DF4();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_2516ABD74(v14);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25168B718(v14, &qword_27F4540A8, &qword_251708938);
    v17 = 0;
    return v17 & 1;
  }

  sub_2516ABD74(v14);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_2516AAD40(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251703474())
  {
    v4 = type metadata accessor for ENUIPublicHealthAgencyModel(0);
    v5 = sub_2516AB9D0();
    result = MEMORY[0x25307F6B0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25307F910](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2516F0548(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_251703474();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2516AAE70(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_251702E64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v45 = v14;
  MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  v49 = v2;
  sub_251699D18(v2 + v17, v6, &qword_27F454000, &unk_251708500);
  v51 = v8;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25168B718(v6, &qword_27F454000, &unk_251708500);
    result = sub_251703584();
    __break(1u);
  }

  else
  {
    v50 = a2;
    v43 = *(v51 + 32);
    v44 = v51 + 32;
    v43(v16, v6, v7);
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v18 = sub_251702F84();
    __swift_project_value_buffer(v18, static Logger.testVerification);
    v19 = *(v51 + 16);
    v48 = v16;
    v19(v13, v16, v7);
    v20 = sub_251702F64();
    v21 = sub_251703314();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = v19;
      v24 = swift_slowAlloc();
      v52[0] = v24;
      *v22 = 136315138;
      v25 = sub_251702E34();
      v27 = v26;
      v42 = *(v51 + 8);
      v42(v13, v7);
      v28 = sub_251693FCC(v25, v27, v52);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_25167E000, v20, v21, "Fetch Test Metadata for session %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v29 = v24;
      v19 = v23;
      MEMORY[0x2530803C0](v29, -1, -1);
      MEMORY[0x2530803C0](v22, -1, -1);
    }

    else
    {

      v42 = *(v51 + 8);
      v42(v13, v7);
    }

    v30 = v48;
    if (qword_28151EB60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v31 = static ENManagerAdapter.defaultAdapter;
    v32 = swift_allocObject();
    v33 = v50;
    v35 = v46;
    v34 = v47;
    *(v32 + 2) = v49;
    *(v32 + 3) = v34;
    *(v32 + 4) = v33;
    v19(v35, v30, v7);
    v36 = (*(v51 + 80) + 24) & ~*(v51 + 80);
    v37 = (v45 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v31;
    v43((v38 + v36), v35, v7);
    v39 = (v38 + v37);
    *v39 = sub_2516ABC00;
    v39[1] = v32;
    v40 = v31;

    sub_2516C59C8(sub_2516ABC0C, v38);

    return (v42)(v30, v7);
  }

  return result;
}

unint64_t sub_2516AB3C4(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

double sub_2516AB3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void sub_2516AB418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2516AB4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2516AB560()
{
  result = qword_27F454028;
  if (!qword_27F454028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454028);
  }

  return result;
}

uint64_t sub_2516AB658(uint64_t a1)
{
  v1 = sub_251702E24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2516AB6D8(uint64_t a1)
{
  sub_2516AB844(319, &qword_27F454050, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_2516AB844(319, &qword_27F454058, type metadata accessor for SymptomOnset);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2516AB844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517033E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2516AB8C0(uint64_t a1)
{
  sub_2516AB844(319, &qword_27F454058, type metadata accessor for SymptomOnset);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2516AB9D0()
{
  result = qword_27F454070;
  if (!qword_27F454070)
  {
    type metadata accessor for ENUIPublicHealthAgencyModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454070);
  }

  return result;
}

uint64_t sub_2516ABA30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25307F6B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2516F0760(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2516ABAC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2516ABB38()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v3);
  v7 = v0 + v4;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v5);
  v11 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = v6[1];
  v15 = *v6;

  sub_2516CAB38(v0 + v2, v15, v14, v8, v9, v10, v12, v13);
}

void sub_2516ABC0C()
{
  v1 = *(sub_251702E64() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_2516CCB80(v3, v0 + v2, v5, v6);
}

uint64_t sub_2516ABCA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516ABD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymptomOnset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516ABD74(uint64_t a1)
{
  v2 = type metadata accessor for SymptomOnset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_51Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_primaryButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_secondaryButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_flow] = a1;
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_healthAgencyModel] = a2;
  v8 = qword_28151EB58;

  v9 = a2;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v10 = sub_251703134();

  v13.receiver = v2;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v10, 0, 0, 2, 0xE000000000000000);

  return v11;
}

Swift::Void __swiftcall PreAuthorizationWelcomeViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516AC1E4();
}

void sub_2516AC1E4()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_primaryButton];
  v3 = sub_251703134();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_secondaryButton];
  v6 = sub_251703134();

  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapCancel forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_healthAgencyModel];
  v9 = *(v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
  v10 = (v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText);
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
  v14 = v9;

  v15 = sub_2516DD44C(v14, v11, v12, 20.0, 20.0, 20.0, 20.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 contentView];
  [v16 addSubview_];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2517068A0;
  v19 = [v15 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v18 + 32) = v22;
  v23 = [v15 trailingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v18 + 40) = v26;
  v27 = [v15 topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v18 + 48) = v30;
  v31 = [v15 bottomAnchor];

  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v18 + 56) = v34;
  sub_25168B5B4();
  v35 = sub_2517031F4();

  [v17 activateConstraints_];
}

id PreAuthorizationWelcomeViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id PreAuthorizationWelcomeViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id PreAuthorizationWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516ACB7C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = objc_allocWithZone(type metadata accessor for PreAuthorizationConsentViewController(0));
  v5[qword_27F454590] = 2;
  *&v5[qword_27F454598] = a2;
  *&v5[qword_27F4545A0] = v4;
  v6 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];

  v7 = v4;
  v8 = v6;
  sub_2516E0EFC(v13);
  v12 = sub_25168D488(v13, 0, 0, v6, 0, 0);
  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v12 animated:1];

    v11 = v10;
  }

  else
  {
    v11 = v12;
  }
}

void sub_2516ACD80()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = objc_opt_self();
  v3 = [v2 systemPinkColor];
  [v1 setBackgroundColor_];

  v4 = [v1 layer];
  [v4 setCornerRadius_];

  [v1 setContentMode_];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = [v6 localizedStringFromNumber:v7 numberStyle:1];

  if (!v8)
  {
    sub_251703164();
    v8 = sub_251703134();
  }

  [v5 setText_];

  v9 = [v2 systemWhiteColor];
  [v5 setTextColor_];

  v10 = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  [v5 setFont_];

  [v5 setNumberOfLines_];
  [v5 setAdjustsFontForContentSizeCategory_];
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = v0;
  if (*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title + 8])
  {
    v13 = sub_251703134();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText_];

  v14 = sub_2516C19DC(*MEMORY[0x277D769D0], *MEMORY[0x277D74420], 0, 0, 0, 0);
  [v11 setFont_];

  [v11 setAdjustsFontForContentSizeCategory_];
  [v11 setNumberOfLines_];
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setUserInteractionEnabled_];
  v16 = sub_2516AD880();
  [v15 setAttributedText_];

  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  inited = swift_initStackObject();
  *(inited + 32) = v1;
  *(inited + 16) = xmmword_2517068A0;
  *(inited + 40) = v5;
  *(inited + 48) = v11;
  *(inited + 56) = v15;
  v18 = inited & 0xC000000000000001;
  v19 = v5;
  v20 = v11;
  v21 = v15;
  v77 = v19;
  v22 = v20;
  v75 = v21;
  v23 = v1;
  v24 = v23;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  for (i = v23; ; i = MEMORY[0x25307F910](0, inited))
  {
    v26 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 addSubview_];

    if (v18)
    {
      v27 = MEMORY[0x25307F910](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_19;
      }

      v27 = *(inited + 40);
    }

    v28 = v27;
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 addSubview_];

    if (v18)
    {
      v29 = MEMORY[0x25307F910](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_19;
      }

      v29 = *(inited + 48);
    }

    v30 = v29;
    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 addSubview_];

    if (v18)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v31 = *(inited + 56);
      goto LABEL_18;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v31 = MEMORY[0x25307F910](3, inited);
LABEL_18:
  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = v12;
  v76 = v12;
  [v12 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v74 = objc_opt_self();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2517089B0;
  v35 = [v24 leadingAnchor];
  v36 = [v33 &selRef_setBackBarButtonItem_ + 1];
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [v24 centerYAnchor];
  v39 = [v22 centerYAnchor];
  v40 = [v38 &selRef:v39 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v34 + 40) = v40;
  v41 = [v24 widthAnchor];
  v42 = [v41 constraintEqualToConstant_];

  *(v34 + 48) = v42;
  v43 = [v24 heightAnchor];
  v44 = [v24 widthAnchor];
  v45 = [v43 &selRef:v44 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v34 + 56) = v45;
  v46 = [v77 centerXAnchor];
  v47 = [v24 centerXAnchor];
  v48 = [v46 &selRef:v47 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v34 + 64) = v48;
  v49 = [v77 centerYAnchor];

  v50 = [v24 centerYAnchor];
  v51 = [v49 &selRef:v50 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v34 + 72) = v51;
  v52 = [v22 topAnchor];
  v53 = [v76 topAnchor];
  v54 = [v52 &selRef:v53 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v34 + 80) = v54;
  v55 = [v22 leadingAnchor];
  v56 = [v24 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:12.0];

  *(v34 + 88) = v57;
  v58 = [v22 trailingAnchor];
  v59 = [v76 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:-12.0];

  *(v34 + 96) = v60;
  v61 = [v75 topAnchor];
  v62 = [v22 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:2.0];

  *(v34 + 104) = v63;
  v64 = [v75 leadingAnchor];
  v65 = [v22 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v34 + 112) = v66;
  v67 = [v75 trailingAnchor];
  v68 = [v22 trailingAnchor];

  v69 = [v67 constraintEqualToAnchor_];
  *(v34 + 120) = v69;
  v70 = [v75 bottomAnchor];

  v71 = [v76 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(v34 + 128) = v72;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v73 = sub_2517031F4();

  [v74 activateConstraints_];
}

id sub_2516AD880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  v2 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_2517068B0;
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title + 8);
  v5 = objc_opt_self();
  v6 = v3;
  v7 = &selRef_labelColor;
  if (v4)
  {
    v7 = &selRef_secondaryLabelColor;
  }

  v8 = [v5 *v7];
  v9 = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277D769D0];
  v13 = v10;
  v14 = [v11 preferredFontForTextStyle_];
  *(inited + 104) = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 80) = v14;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v16 = sub_251703134();
  type metadata accessor for Key(0);
  sub_2516AE954();
  v17 = sub_2517030F4();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

id sub_2516ADB4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_textStack;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_iconView;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_icon] = a1;
  v14 = &v5[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_details];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v5[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_highlightedText];
  *v15 = a4;
  *(v15 + 1) = a5;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2516ADC84();

  return v17;
}

void sub_2516ADC84()
{
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_iconView];
  [v1 setImage_];
  [v1 setContentMode_];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setUserInteractionEnabled_];
  v3 = sub_2516AE300();
  [v2 setAttributedText_];

  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251707F60;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v38 = v2;
  v5 = v1;
  v6 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v5; ; i = MEMORY[0x25307F910](0, inited))
  {
    v8 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v9 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v9 = MEMORY[0x25307F910](1, inited);
LABEL_7:
  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v37 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_251708350;
  v12 = [v6 leadingAnchor];
  v13 = [v0 &selRef_setBackBarButtonItem_ + 1];
  v14 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v14;
  v15 = [v6 topAnchor];
  v16 = [v0 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:6.0];

  *(v11 + 40) = v17;
  v18 = [v6 widthAnchor];
  v19 = [v18 constraintEqualToConstant_];

  *(v11 + 48) = v19;
  v20 = [v6 heightAnchor];
  v21 = [v6 widthAnchor];
  v22 = [v20 &selRef:v21 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v11 + 56) = v22;
  v23 = [v38 topAnchor];
  v24 = [v0 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:2.0];

  *(v11 + 64) = v25;
  v26 = [v38 leadingAnchor];
  v27 = [v6 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:12.0];

  *(v11 + 72) = v28;
  v29 = [v38 trailingAnchor];
  v30 = [v0 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-12.0];

  *(v11 + 80) = v31;
  v32 = [v38 bottomAnchor];

  v33 = [v0 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v11 + 88) = v34;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v35 = sub_2517031F4();

  [v37 activateConstraints_];

  v36 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_didTapText_];
  [v38 addGestureRecognizer_];
}

id sub_2516AE300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517068B0;
  v2 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v3 = objc_opt_self();
  v32 = v2;
  v33 = v3;
  v4 = [v3 labelColor];
  v5 = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x277D740A8];
  v31 = v5;
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277D769D0];
  v29 = v6;
  v30 = v8;
  v9 = [v7 preferredFontForTextStyle_];
  v10 = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 104) = v10;
  *(inited + 80) = v9;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v12 = sub_251703134();
  type metadata accessor for Key(0);
  sub_2516AE954();
  v13 = sub_2517030F4();

  v14 = [v11 initWithString:v12 attributes:v13];

  if (*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_highlightedText + 8))
  {
    v15 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v16 = sub_251703134();
    v17 = [v15 initWithString_];

    v18 = sub_251703134();
    v19 = [v17 rangeOfString_];
    v21 = v20;

    if (v21 >= 1)
    {
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_2517068B0;
      *(v22 + 32) = v29;
      v23 = *MEMORY[0x277D74418];
      v24 = v29;
      *(v22 + 40) = sub_2516C19DC(v30, v23, 0, 0, 0, 0);
      *(v22 + 64) = v10;
      *(v22 + 72) = v32;
      v25 = v32;
      v26 = [v33 systemBlueColor];
      *(v22 + 104) = v31;
      *(v22 + 80) = v26;
      sub_251698DC4(v22);
      swift_setDeallocating();
      swift_arrayDestroy();
      v27 = sub_2517030F4();

      [v14 addAttributes:v27 range:{v19, v21}];
    }
  }

  return v14;
}

unint64_t sub_2516AE954()
{
  result = qword_28151E910;
  if (!qword_28151E910)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E910);
  }

  return result;
}

Swift::Void __swiftcall OnboardingInfoViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516AE9EC();
}

void sub_2516AE9EC()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 _setAutoScrollEdgeTransitionDistance_];

  v3 = [v0 navigationItem];
  [v3 _setManualScrollEdgeAppearanceEnabled_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 systemBackgroundColor];
  [v5 setBackgroundColor_];

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView];
  [v8 setAlwaysBounceVertical_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = v9;
  v194 = v6;
  v195 = v1;
  [v9 addSubview_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v192 = v8;
  v193 = v11;
  [v8 addSubview_];
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_28151EB58 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    sub_251702C94();
    v13 = sub_251703134();

    [v12 setText_];

    v14 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
    [v12 setFont_];

    [v12 setAdjustsFontForContentSizeCategory_];
    [v12 setNumberOfLines_];
    [v12 setTextAlignment_];
    v15 = sub_251702C94();
    v17 = v16;
    v18 = sub_251702C94();
    v20 = v19;
    v21 = type metadata accessor for NumberedTextView();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_number] = 1;
    v23 = &v22[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title];
    *v23 = v15;
    v23[1] = v17;
    v24 = &v22[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details];
    *v24 = v18;
    v24[1] = v20;
    v198.receiver = v22;
    v198.super_class = v21;
    v190 = objc_msgSendSuper2(&v198, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
    sub_2516ACD80();
    v25 = sub_251702C94();
    v27 = v26;
    v28 = sub_251702C94();
    v30 = v29;
    v31 = objc_allocWithZone(v21);
    *&v31[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_number] = 2;
    v32 = &v31[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title];
    *v32 = v25;
    v32[1] = v27;
    v33 = &v31[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details];
    *v33 = v28;
    v33[1] = v30;
    v197.receiver = v31;
    v197.super_class = v21;
    v188 = objc_msgSendSuper2(&v197, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
    sub_2516ACD80();
    v34 = sub_251702C94();
    v36 = v35;
    v37 = sub_251702C94();
    v39 = v38;
    v40 = objc_allocWithZone(v21);
    *&v40[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_number] = 3;
    v41 = &v40[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title];
    *v41 = v34;
    v41[1] = v36;
    v42 = &v40[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details];
    *v42 = v37;
    v42[1] = v39;
    v196.receiver = v40;
    v196.super_class = v21;
    v43 = objc_msgSendSuper2(&v196, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
    sub_2516ACD80();
    v44 = sub_251703134();
    v45 = [objc_opt_self() systemImageNamed_];

    v46 = sub_251702C94();
    v48 = v47;
    v49 = sub_251702C94();
    v51 = v50;
    v52 = objc_allocWithZone(type metadata accessor for IconTextView());
    v53 = sub_2516ADB4C(v45, v46, v48, v49, v51);
    *&v53[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_delegate + 8] = &off_2863943E8;
    swift_unknownObjectWeakAssign();
    v54 = v190;
    v55 = [v194 systemPinkColor];
    [v54 setTintColor_];

    v56 = v188;
    v57 = [v194 systemPinkColor];
    [v56 setTintColor_];

    v58 = v43;
    v59 = [v194 systemPinkColor];
    [v58 setTintColor_];

    v60 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v61 = [v194 separatorColor];
    [v60 setBackgroundColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708A20;
    *(inited + 32) = v12;
    *(inited + 40) = v54;
    *(inited + 48) = v56;
    *(inited + 56) = v58;
    *(inited + 64) = v60;
    *(inited + 72) = v53;
    v63 = inited & 0xC000000000000001;
    v64 = v12;
    v65 = v53;
    v191 = v54;
    v12 = v56;
    v187 = v58;
    v194 = v64;
    v66 = v65;
    v67 = v60;
    if ((inited & 0xC000000000000001) != 0)
    {
      v71 = MEMORY[0x25307F910](0, inited);
      v68 = v195;
      v69 = v193;
      v70 = &selRef_setDidEnterDigit_;
    }

    else
    {
      v68 = v195;
      v69 = v193;
      v70 = &selRef_setDidEnterDigit_;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v71 = v194;
    }

    [v71 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      v72 = MEMORY[0x25307F910](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_29;
      }

      v72 = *(inited + 40);
    }

    v73 = v72;
    [v72 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      v74 = MEMORY[0x25307F910](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_29;
      }

      v74 = *(inited + 48);
    }

    v75 = v74;
    [v74 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      v76 = MEMORY[0x25307F910](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_29;
      }

      v76 = *(inited + 56);
    }

    v77 = v76;
    [v76 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      v78 = MEMORY[0x25307F910](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_29;
      }

      v78 = *(inited + 64);
    }

    v79 = v78;
    [v78 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v80 = *(inited + 72);
      goto LABEL_22;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v80 = MEMORY[0x25307F910](5, inited);
LABEL_22:
  v81 = v80;
  [v80 v70[187]];
  [v69 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_251708A30;
  v83 = [v192 widthAnchor];
  v84 = [v68 view];
  if (!v84)
  {
    goto LABEL_39;
  }

  v85 = v84;
  v86 = [v84 widthAnchor];

  v87 = [v83 constraintEqualToAnchor_];
  *(v82 + 32) = v87;
  v88 = [v192 centerXAnchor];
  v89 = [v68 view];
  if (!v89)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v90 = v89;
  v91 = [v89 centerXAnchor];

  v92 = [v88 constraintEqualToAnchor_];
  *(v82 + 40) = v92;
  v93 = [v192 topAnchor];
  v94 = [v68 view];
  if (!v94)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v95 = v94;
  v96 = [v94 safeAreaLayoutGuide];

  v97 = [v96 topAnchor];
  v98 = [v93 constraintEqualToAnchor_];

  *(v82 + 48) = v98;
  v99 = [v192 bottomAnchor];
  v100 = [v195 view];
  if (!v100)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v101 = v100;
  v102 = [v100 bottomAnchor];

  v103 = [v99 constraintEqualToAnchor_];
  *(v82 + 56) = v103;
  v104 = [v193 widthAnchor];
  v105 = [v195 view];
  if (!v105)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v106 = v105;
  v107 = [v105 safeAreaLayoutGuide];

  v108 = [v107 widthAnchor];
  v109 = [v104 constraintEqualToAnchor_];

  *(v82 + 64) = v109;
  v110 = [v193 centerXAnchor];
  v111 = [v195 view];
  if (v111)
  {
    v112 = v111;
    v189 = objc_opt_self();
    v113 = [v112 safeAreaLayoutGuide];

    v114 = [v113 centerXAnchor];
    v115 = [v110 constraintEqualToAnchor_];

    *(v82 + 72) = v115;
    v116 = [v193 topAnchor];
    v117 = [v192 &selRef_navigationController];
    v118 = [v116 constraintEqualToAnchor_];

    *(v82 + 80) = v118;
    v119 = [v193 bottomAnchor];
    v120 = [v192 &selRef_didTapLearnMoreButton + 5];
    v121 = [v119 constraintEqualToAnchor_];

    *(v82 + 88) = v121;
    v122 = [v194 leadingAnchor];
    v123 = [v193 leadingAnchor];
    v124 = [v122 constraintEqualToAnchor:v123 constant:20.0];

    *(v82 + 96) = v124;
    v125 = [v194 trailingAnchor];
    v126 = [v193 trailingAnchor];
    v127 = [v125 constraintEqualToAnchor:v126 constant:-20.0];

    *(v82 + 104) = v127;
    v128 = [v194 topAnchor];
    v129 = [v193 topAnchor];
    v130 = [v128 &selRef:v129 getEntitiesWithCompletion:20.0 + 6];

    *(v82 + 112) = v130;
    v131 = [v191 leadingAnchor];
    v132 = [v193 leadingAnchor];
    v133 = [v131 &selRef:v132 getEntitiesWithCompletion:20.0 + 6];

    *(v82 + 120) = v133;
    v134 = [v191 trailingAnchor];
    v135 = [v193 trailingAnchor];
    v136 = [v134 &selRef:v135 getEntitiesWithCompletion:-10.0 + 6];

    *(v82 + 128) = v136;
    v137 = [v191 &selRef_navigationController];
    v138 = [v194 bottomAnchor];

    v139 = [v137 &selRef:v138 getEntitiesWithCompletion:24.0 + 6];
    *(v82 + 136) = v139;
    v140 = [v12 leadingAnchor];
    v141 = [v193 leadingAnchor];
    v142 = [v140 &selRef:v141 getEntitiesWithCompletion:20.0 + 6];

    *(v82 + 144) = v142;
    v143 = [v12 trailingAnchor];
    v144 = [v193 trailingAnchor];
    v145 = [v143 &selRef:v144 getEntitiesWithCompletion:-10.0 + 6];

    *(v82 + 152) = v145;
    v146 = [v12 topAnchor];
    v147 = [v191 bottomAnchor];

    v148 = [v146 &selRef:v147 getEntitiesWithCompletion:20.0 + 6];
    *(v82 + 160) = v148;
    v149 = [v187 leadingAnchor];
    v150 = [v193 leadingAnchor];
    v151 = [v149 &selRef:v150 getEntitiesWithCompletion:20.0 + 6];

    *(v82 + 168) = v151;
    v152 = [v187 trailingAnchor];
    v153 = [v193 trailingAnchor];
    v154 = [v152 &selRef:v153 getEntitiesWithCompletion:-10.0 + 6];

    *(v82 + 176) = v154;
    v155 = [v187 topAnchor];
    v156 = [v12 &selRef_didTapLearnMoreButton + 5];

    v157 = [v155 &selRef:v156 getEntitiesWithCompletion:20.0 + 6];
    *(v82 + 184) = v157;
    v158 = [v67 leadingAnchor];
    v159 = [v193 leadingAnchor];
    v160 = [v158 &selRef:v159 getEntitiesWithCompletion:20.0 + 6];

    *(v82 + 192) = v160;
    v161 = [v67 trailingAnchor];
    v162 = [v193 trailingAnchor];
    v163 = [v161 &selRef:v162 getEntitiesWithCompletion:-10.0 + 6];

    *(v82 + 200) = v163;
    v164 = [v67 heightAnchor];
    v165 = [objc_opt_self() mainScreen];
    [v165 scale];
    v167 = v166;

    v168 = [v164 constraintEqualToConstant_];
    *(v82 + 208) = v168;
    v169 = [v67 topAnchor];
    v170 = [v187 bottomAnchor];

    v171 = [v169 &selRef:v170 getEntitiesWithCompletion:20.0 + 6];
    *(v82 + 216) = v171;
    v172 = [v66 leadingAnchor];
    v173 = [v193 leadingAnchor];
    v174 = [v172 &selRef:v173 getEntitiesWithCompletion:20.0 + 6];

    *(v82 + 224) = v174;
    v175 = [v66 trailingAnchor];
    v176 = [v193 trailingAnchor];
    v177 = [v175 &selRef:v176 getEntitiesWithCompletion:-10.0 + 6];

    *(v82 + 232) = v177;
    v178 = [v66 topAnchor];
    v179 = [v67 bottomAnchor];
    v180 = [v178 &selRef:v179 getEntitiesWithCompletion:20.0 + 6];

    *(v82 + 240) = v180;
    v181 = [v66 bottomAnchor];

    v182 = [v193 bottomAnchor];
    v183 = [v181 &selRef:v182 getEntitiesWithCompletion:-20.0 + 6];

    *(v82 + 248) = v183;
    sub_25168B5B4();
    v184 = sub_2517031F4();

    [v189 activateConstraints_];

    v185 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v195 action:sel_didTapDone];
    v186 = [v195 navigationItem];
    [v186 setRightBarButtonItem_];

    return;
  }

LABEL_44:
  __break(1u);
}

Swift::Void __swiftcall OnboardingInfoViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0}];
}

id OnboardingInfoViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id OnboardingInfoViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  if (a2)
  {
    v8 = sub_251703134();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id OnboardingInfoViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id OnboardingInfoViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id OnboardingInfoViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516B0724()
{
  v1 = sub_251703134();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = [v2 splashController];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 setModalPresentationStyle_];

  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_didTapDone];
  v6 = [v2 splashController];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 navigationItem];

  [v8 setRightBarButtonItem_];
  v9 = [v2 splashController];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v0 presentViewController:v11 animated:1 completion:0];
}

id OnboardingWelcomeViewController.__allocating_init(flow:fromAvailabilityAlert:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return OnboardingWelcomeViewController.init(flow:fromAvailabilityAlert:)(a1, v3);
}

id OnboardingWelcomeViewController.init(flow:fromAvailabilityAlert:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_isFromAvailabilityAlert;
  v2[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_isFromAvailabilityAlert] = 0;
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_notificationPreview;
  type metadata accessor for NotificationPreviewView();
  *&v2[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_primaryButton;
  *&v2[v8] = [objc_opt_self() boldButton];
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_secondaryButton;
  *&v2[v9] = [objc_opt_self() linkButton];
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton;
  type metadata accessor for MultilineButton();
  *&v2[v12] = [swift_getObjCClassFromMetadata() buttonWithType_];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollView;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollViewContentSizeObserver] = 0;
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow] = a1;
  v2[v6] = a2 & 1;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2516B0B64()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_55;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollView];
  [v5 setAlwaysBounceVertical_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setDelegate_];
  v228 = v5;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v5;
  v7 = sub_251702D54();

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollViewContentSizeObserver];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollViewContentSizeObserver] = v7;

  v9 = [v1 view];
  if (!v9)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = v9;
  [v9 addSubview_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v221 = v6;
  v226 = v11;
  [v6 addSubview_];
  v12 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v14 = v13;
  v224 = v12;
  [v13 addSubview_];

  v220 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel];
  sub_2516B33E8();
  v16 = sub_251703134();

  [v15 setText_];

  v17 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
  [v15 setFont_];

  v18 = &off_2796C3000;
  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setNumberOfLines_];
  v219 = v15;
  [v15 setTextAlignment_];
  v19 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel];
  v20 = v1;
  if (qword_28151EB58 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    sub_251702C94();
    v21 = sub_251703134();

    [v19 setText_];

    v222 = *MEMORY[0x277D76918];
    v22 = sub_2516C19DC(*MEMORY[0x277D76918], *MEMORY[0x277D74418], 0, 0, 0, 0);
    [v19 setFont_];

    [v19 v18[322]];
    [v19 setNumberOfLines_];
    [v19 setTextAlignment_];
    v23 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton);
    sub_251702C94();
    v24 = sub_251703134();

    [v23 setTitle:v24 forState:{0, 0xE000000000000000}];

    v227 = v20;
    [v23 addTarget:v20 action:sel_didTapHowExposureNotificationsWork forControlEvents:64];
    v25 = [v23 titleLabel];
    [v25 setTextAlignment_];

    v26 = [v23 titleLabel];
    [v26 setNumberOfLines_];

    v27 = [v23 titleLabel];
    if (v27)
    {
      v28 = v27;
      v29 = [objc_opt_self() preferredFontForTextStyle_];
      [v28 setFont_];
    }

    v30 = [v23 titleLabel];
    [v30 setAdjustsFontForContentSizeCategory_];

    v31 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel);
    v32 = sub_2516B34F4();
    [v31 setAttributedText_];

    [v31 setAdjustsFontForContentSizeCategory_];
    [v31 setNumberOfLines_];
    [v31 &selRef_unmarkText];
    [v31 setUserInteractionEnabled_];
    v214 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v20 action:sel_didTapFooterLabel];
    [v31 addGestureRecognizer_];
    v33 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_primaryButton);
    sub_251702C94();
    v34 = sub_251703134();

    [v33 setTitle:v34 forState:{0, 0xE000000000000000}];

    v216 = v33;
    [v33 addTarget:v20 action:sel_didTapPrimaryButton forControlEvents:64];
    v35 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_secondaryButton);
    sub_251702C94();
    v36 = sub_251703134();

    v18 = v35;
    [v35 setTitle:v36 forState:{0, 0xE000000000000000}];

    [v35 addTarget:v20 action:sel_didTapSecondaryButton forControlEvents:64];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708A20;
    v38 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_notificationPreview);
    *(inited + 32) = v38;
    *(inited + 40) = v219;
    *(inited + 48) = v19;
    *(inited + 56) = v23;
    *(inited + 64) = v31;
    *(inited + 72) = v220;
    v20 = inited & 0xC000000000000001;
    v225 = v38;
    v215 = v219;
    v218 = v19;
    v39 = v23;
    v40 = v31;
    v220 = v220;
    if ((inited & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x25307F910](0, inited);
      v19 = v226;
    }

    else
    {
      v19 = v226;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v41 = v225;
    }

    [v41 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    if (v20)
    {
      v42 = MEMORY[0x25307F910](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_43;
      }

      v42 = *(inited + 40);
    }

    v43 = v42;
    [v42 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    if (v20)
    {
      v44 = MEMORY[0x25307F910](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_43;
      }

      v44 = *(inited + 48);
    }

    v45 = v44;
    [v44 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    if (v20)
    {
      v46 = MEMORY[0x25307F910](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_43;
      }

      v46 = *(inited + 56);
    }

    v47 = v46;
    [v46 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    if (v20)
    {
      v48 = MEMORY[0x25307F910](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_43;
      }

      v48 = *(inited + 64);
    }

    v49 = v48;
    [v48 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    v213 = v40;
    if (v20)
    {
      v50 = MEMORY[0x25307F910](5, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v50 = *(inited + 72);
    }

    v51 = v50;
    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_251707F60;
    *(v52 + 32) = v216;
    *(v52 + 40) = v35;
    v20 = v52 & 0xC000000000000001;
    v219 = v216;
    v217 = v35;
    if ((v52 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x25307F910](0, v52);
      v53 = v227;
    }

    else
    {
      v53 = v227;
      if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v54 = v219;
    }

    [v54 setTranslatesAutoresizingMaskIntoConstraints_];
    v18 = &off_2796C3000;
    v55 = [v224 contentView];
    [v55 addSubview_];

    if (v20)
    {
      break;
    }

    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v56 = *(v52 + 40);
      goto LABEL_31;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v56 = MEMORY[0x25307F910](1, v52);
LABEL_31:
  v57 = v56;
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  v58 = [v224 contentView];
  [v58 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v59 = [v19 heightAnchor];
  v60 = [v53 view];
  if (!v60)
  {
    goto LABEL_57;
  }

  v61 = v60;
  v62 = [v60 safeAreaLayoutGuide];

  v63 = [v62 heightAnchor];
  v64 = [v59 constraintGreaterThanOrEqualToAnchor_];

  LODWORD(v65) = 1148846080;
  [v64 setPriority_];
  v66 = [v19 heightAnchor];
  [v221 frame];
  v67 = [v66 constraintLessThanOrEqualToConstant_];

  LODWORD(v68) = 1132068864;
  [v67 setPriority_];
  v69 = [v225 heightAnchor];
  v70 = [v221 heightAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 multiplier:0.25];

  type metadata accessor for UILayoutPriority(0);
  [v67 priority];
  sub_2516B49F0(&qword_28151E948, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_251702F94();
  LODWORD(v72) = v228;
  [v71 setPriority_];
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_251708AB0;
  v74 = [v221 widthAnchor];
  v75 = [v53 view];
  if (!v75)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v76 = v75;
  v77 = [v75 widthAnchor];

  v78 = [v74 constraintEqualToAnchor_];
  *(v73 + 32) = v78;
  v79 = [v221 centerXAnchor];
  v80 = [v227 view];
  if (!v80)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v81 = v80;
  v82 = [v80 centerXAnchor];

  v83 = [v79 constraintEqualToAnchor_];
  *(v73 + 40) = v83;
  v84 = [v221 topAnchor];
  v85 = [v227 view];
  if (!v85)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v86 = v85;
  v87 = [v85 safeAreaLayoutGuide];

  v88 = [v87 topAnchor];
  v89 = [v84 constraintEqualToAnchor_];

  *(v73 + 48) = v89;
  v90 = [v221 bottomAnchor];
  v91 = [v227 view];
  if (!v91)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v92 = v91;
  v93 = [v91 bottomAnchor];

  v94 = [v90 constraintEqualToAnchor_];
  *(v73 + 56) = v94;
  v95 = [v226 &selRef_init + 6];
  v96 = [v227 view];
  if (!v96)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v97 = v96;
  v98 = [v96 safeAreaLayoutGuide];

  v99 = [v98 widthAnchor];
  v100 = [v95 constraintEqualToAnchor_];

  *(v73 + 64) = v100;
  v101 = [v226 centerXAnchor];
  v102 = [v227 view];
  if (!v102)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v103 = v102;
  v104 = [v102 safeAreaLayoutGuide];

  v105 = [v104 centerXAnchor];
  v106 = [v101 constraintEqualToAnchor_];

  *(v73 + 72) = v106;
  v107 = [v226 topAnchor];
  v108 = [v221 &selRef_navigationController];
  v109 = [v107 constraintEqualToAnchor_];

  *(v73 + 80) = v109;
  v110 = [v226 bottomAnchor];
  v111 = [v221 bottomAnchor];
  v112 = [v110 constraintEqualToAnchor_];

  *(v73 + 88) = v112;
  *(v73 + 96) = v64;
  *(v73 + 104) = v67;
  v212 = v64;
  v211 = v67;
  v113 = [v225 widthAnchor];
  v114 = [v221 widthAnchor];
  v115 = [v113 constraintEqualToAnchor_];

  *(v73 + 112) = v115;
  v116 = [v225 centerXAnchor];
  v117 = [v221 centerXAnchor];
  v118 = [v116 constraintEqualToAnchor_];

  *(v73 + 120) = v118;
  *(v73 + 128) = v71;
  v223 = v71;
  v119 = [v225 topAnchor];
  v120 = [v226 topAnchor];
  v121 = [v119 constraintEqualToAnchor_];

  *(v73 + 136) = v121;
  v122 = [v215 leadingAnchor];
  v123 = [v226 &selRef_setBackBarButtonItem_ + 1];
  v124 = [v122 constraintEqualToAnchor:v123 constant:16.0];

  *(v73 + 144) = v124;
  v125 = [v215 trailingAnchor];
  v126 = [v226 &selRef_body + 4];
  v127 = [v125 constraintEqualToAnchor:v126 constant:-16.0];

  *(v73 + 152) = v127;
  v128 = [v215 &selRef_navigationController];
  v129 = [v225 bottomAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 constant:17.0];

  *(v73 + 160) = v130;
  v131 = [v218 &selRef_setBackBarButtonItem_ + 1];
  v132 = [v226 &selRef_setBackBarButtonItem_ + 1];
  v133 = [v131 &selRef:v132 getEntitiesWithCompletion:16.0 + 6];

  *(v73 + 168) = v133;
  v134 = [v218 trailingAnchor];
  v135 = [v226 trailingAnchor];
  v136 = [v134 &selRef:v135 getEntitiesWithCompletion:-16.0 + 6];

  *(v73 + 176) = v136;
  v137 = [v218 topAnchor];
  v138 = [v215 bottomAnchor];
  v139 = [v137 &selRef:v138 getEntitiesWithCompletion:12.0 + 6];

  *(v73 + 184) = v139;
  v140 = [v39 leadingAnchor];
  v141 = [v226 leadingAnchor];
  v142 = [v140 &selRef:v141 getEntitiesWithCompletion:16.0 + 6];

  *(v73 + 192) = v142;
  v143 = [v39 trailingAnchor];
  v144 = [v226 trailingAnchor];
  v145 = [v143 &selRef:v144 getEntitiesWithCompletion:-16.0 + 6];

  *(v73 + 200) = v145;
  v146 = [v39 topAnchor];
  v147 = [v218 bottomAnchor];
  v148 = [v146 &selRef:v147 getEntitiesWithCompletion:7.0 + 6];

  *(v73 + 208) = v148;
  v149 = [v213 leadingAnchor];
  v150 = [v226 leadingAnchor];
  v151 = [v149 &selRef:v150 getEntitiesWithCompletion:32.0 + 6];

  *(v73 + 216) = v151;
  v152 = [v213 trailingAnchor];
  v153 = [v226 trailingAnchor];
  v154 = [v152 &selRef:v153 getEntitiesWithCompletion:-32.0 + 6];

  *(v73 + 224) = v154;
  v155 = [v213 topAnchor];
  v156 = [v39 &selRef_didTapLearnMoreButton + 5];
  v157 = [v155 constraintGreaterThanOrEqualToAnchor:v156 constant:16.0];

  *(v73 + 232) = v157;
  v158 = [v213 &selRef_didTapLearnMoreButton + 5];
  v159 = [v220 topAnchor];
  v160 = [v158 &selRef:v159 getEntitiesWithCompletion:0.0 + 6];

  *(v73 + 240) = v160;
  v161 = [v220 heightAnchor];
  v162 = [v224 heightAnchor];
  v163 = [v161 constraintEqualToAnchor_];

  *(v73 + 248) = v163;
  v164 = [v220 &selRef_didTapLearnMoreButton + 5];
  v165 = [v226 &selRef_didTapLearnMoreButton + 5];
  v166 = [v164 constraintEqualToAnchor_];

  *(v73 + 256) = v166;
  v167 = [v224 leadingAnchor];
  v168 = [v227 view];
  if (!v168)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v169 = v168;
  v170 = [v168 leadingAnchor];

  v171 = [v167 constraintEqualToAnchor_];
  *(v73 + 264) = v171;
  v172 = [v224 trailingAnchor];
  v173 = [v227 &selRef_systemImageNamed_];
  if (!v173)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v174 = v173;
  v175 = [v173 trailingAnchor];

  v176 = [v172 constraintEqualToAnchor_];
  *(v73 + 272) = v176;
  v177 = [v224 &selRef_didTapLearnMoreButton + 5];
  v178 = [v227 &selRef_systemImageNamed_];
  if (!v178)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v179 = v178;
  v180 = [v178 &selRef_didTapLearnMoreButton + 5];

  v181 = [v177 constraintEqualToAnchor_];
  *(v73 + 280) = v181;
  v182 = [v219 leadingAnchor];
  v183 = [v224 leadingAnchor];
  v184 = [v182 constraintEqualToAnchor:v183 constant:16.0];

  *(v73 + 288) = v184;
  v185 = [v219 trailingAnchor];
  v186 = [v224 trailingAnchor];
  v187 = [v185 constraintEqualToAnchor:v186 constant:-16.0];

  *(v73 + 296) = v187;
  v188 = [v219 topAnchor];
  v189 = [v224 topAnchor];
  v190 = [v188 constraintGreaterThanOrEqualToAnchor:v189 constant:24.0];

  *(v73 + 304) = v190;
  v191 = [v219 bottomAnchor];
  v192 = [v217 topAnchor];
  v193 = [v191 constraintEqualToAnchor:v192 constant:-16.0];

  *(v73 + 312) = v193;
  v194 = [v217 leadingAnchor];
  v195 = [v219 leadingAnchor];
  v196 = [v194 constraintEqualToAnchor_];

  *(v73 + 320) = v196;
  v197 = [v217 trailingAnchor];
  v198 = [v219 trailingAnchor];
  v199 = [v197 constraintEqualToAnchor_];

  *(v73 + 328) = v199;
  v200 = [v217 heightAnchor];
  v201 = [v219 heightAnchor];
  v202 = [v200 constraintEqualToAnchor_];

  *(v73 + 336) = v202;
  v203 = [v217 bottomAnchor];
  v204 = [v227 view];
  if (v204)
  {
    v205 = v204;

    v206 = objc_opt_self();
    v207 = [v205 safeAreaLayoutGuide];

    v208 = [v207 bottomAnchor];
    v209 = [v203 constraintEqualToAnchor:v208 constant:-5.0];

    *(v73 + 344) = v209;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v210 = sub_2517031F4();

    [v206 activateConstraints_];

    return;
  }

LABEL_67:
  __break(1u);
}

Swift::Void __swiftcall OnboardingWelcomeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    [v3 setNavigationBarHidden:1 animated:v4];
  }

  sub_2516FB810();
}

Swift::Void __swiftcall OnboardingWelcomeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  OnboardingWelcomeViewController.updateForScrollOffsetChange()();
}

Swift::Void __swiftcall OnboardingWelcomeViewController.updateForScrollOffsetChange()()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollView);
  [v1 contentSize];
  v3 = v2;
  [v1 contentInset];
  v5 = v3 + v4;
  [v1 bounds];
  v6 = v5 - CGRectGetHeight(v13);
  [v1 contentOffset];
  v7 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray);
  if (v6 <= v8)
  {
    v10 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray);

    [v10 setEffect_];
  }

  else
  {
    v9 = [*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray) effect];
    if (!v9)
    {
      v11 = [objc_opt_self() effectWithStyle_];
      [v7 setEffect_];
      v9 = v11;
    }
  }
}

uint64_t sub_2516B2D98(SEL *a1, uint64_t (*a2)(id))
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, *a1);
  return a2(v5);
}

void sub_2516B2E0C(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = *a3;
  v7 = v9.receiver;
  v8 = objc_msgSendSuper2(&v9, v6);
  a4(v8);
}

Swift::Void __swiftcall OnboardingWelcomeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  sub_2516FBCEC();
}

Swift::Void __swiftcall OnboardingWelcomeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v22.receiver = v1;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

LABEL_9:
    v12 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel];
    v13 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
    [v12 setFont_];

    v14 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel];
    v15 = *MEMORY[0x277D76918];
    v16 = sub_2516C19DC(*MEMORY[0x277D76918], *MEMORY[0x277D74418], 0, 0, 0, 0);
    [v14 setFont_];

    v17 = [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton] titleLabel];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() preferredFontForTextStyle_];
      [v18 setFont_];
    }

    v20 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel];
    v21 = sub_2516B34F4();
    [v20 setAttributedText_];

    return;
  }

  v5 = [(objc_class *)isa preferredContentSizeCategory];
  v6 = sub_251703164();
  v8 = v7;
  if (v6 == sub_251703164() && v8 == v9)
  {

    return;
  }

  v11 = sub_251703624();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }
}

Swift::Void __swiftcall OnboardingWelcomeViewController.updateContentWithCurrentTraits()()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel);
  v2 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
  [v1 setFont_];

  v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel);
  v4 = *MEMORY[0x277D76918];
  v5 = sub_2516C19DC(*MEMORY[0x277D76918], *MEMORY[0x277D74418], 0, 0, 0, 0);
  [v3 setFont_];

  v6 = [*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton) titleLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() preferredFontForTextStyle_];
    [v7 setFont_];
  }

  v9 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel);
  v10 = sub_2516B34F4();
  [v9 setAttributedText_];
}

void sub_2516B3394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OnboardingWelcomeViewController.updateForScrollOffsetChange()();
  }
}

uint64_t sub_2516B33E8()
{
  if (*(*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow) + 96) == 1)
  {
    if (qword_28151EB58 == -1)
    {
      return sub_251702C94();
    }

    goto LABEL_6;
  }

  if (qword_28151EB58 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_251702C94();
}

id sub_2516B34F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454188, &qword_251708B28);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v40 - v1;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v3 = sub_251702C94();
  v46 = v3;
  v5 = v4;
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v6 = swift_allocObject();
  v45 = xmmword_251708520;
  *(v6 + 16) = xmmword_251708520;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_25169F41C();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  v7 = sub_251703184();
  v9 = v8;

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517068B0;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = *MEMORY[0x277D76938];
  v13 = *MEMORY[0x277D74418];
  v14 = v11;
  v15 = sub_2516C19DC(v12, v13, 0, 0, 0, 0);
  v16 = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 40) = v15;
  v17 = *MEMORY[0x277D740C0];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  v18 = objc_opt_self();
  v42 = v17;
  v43 = v18;
  v19 = [v18 secondaryLabelColor];
  v41 = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 104) = v41;
  *(inited + 80) = v19;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v21 = sub_251703134();
  type metadata accessor for Key(0);
  v23 = v22;
  sub_2516B49F0(&qword_28151E910, type metadata accessor for Key, &unk_251707D20);
  v40[1] = v23;
  v24 = sub_2517030F4();

  v25 = [v20 initWithString:v21 attributes:v24];

  v49 = v7;
  v50 = v9;
  v47 = v46;
  v48 = v5;
  v26 = sub_251702EA4();
  (*(*(v26 - 8) + 56))(v2, 1, 1, v26);
  sub_2516B4924();
  v27 = sub_251703404();
  v29 = v28;
  LOBYTE(v23) = v30;
  sub_25168B718(v2, &qword_27F454188, &qword_251708B28);

  if (v23)
  {
  }

  else
  {
    v49 = v27;
    v50 = v29;
    v47 = v7;
    v48 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4541A0, qword_251708B40);
    sub_2516B4978();
    v31 = sub_2517033D4();
    v33 = v32;
    v34 = swift_initStackObject();
    *(v34 + 16) = v45;
    v35 = v42;
    *(v34 + 32) = v42;
    v36 = v35;
    v37 = [v43 systemBlueColor];
    *(v34 + 64) = v41;
    *(v34 + 40) = v37;
    sub_251698DC4(v34);
    swift_setDeallocating();
    sub_25168B718(v34 + 32, &qword_27F453F18, &qword_2517083C0);
    v38 = sub_2517030F4();

    [v25 addAttributes:v38 range:{v31, v33}];
  }

  return v25;
}

id OnboardingWelcomeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id OnboardingWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516B3EF4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = type metadata accessor for OnboardingLegalConsentViewController();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
    v8 = objc_opt_self();
    v9 = v4;

    *&v6[v7] = [v8 boldButton];
    v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
    *&v6[v10] = [objc_opt_self() linkButton];
    v11 = &v6[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
    *v11 = a2;
    v11[1] = &protocol witness table for StandardOnboardingFlow;
    v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
    *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v9;
    v6[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 1;
    v6[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 1;
    v13 = qword_28151EB58;
    v14 = v9;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_251708520;
    v16 = (*&v6[v12] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v18 = *v16;
    v17 = v16[1];
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_25169F41C();
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;

    sub_251703184();

    v19 = sub_251703134();

    v28.receiver = v6;
    v28.super_class = v5;
    v20 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v19, 0, 0, 2, 0xE000000000000000);

    v21 = v20;
    [v21 set:1 shouldInlineButtontray:?];
    v22 = [v21 headerView];
    LODWORD(v23) = 1036831949;
    [v22 setTitleHyphenationFactor_];
  }

  else
  {
    v24 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

    v21 = sub_2516A9CE0(v25, 0, v24);
  }

  v26 = [a1 navigationController];
  if (v26)
  {
    v27 = v26;
    [v26 pushViewController:v21 animated:1];

    v21 = v27;
  }
}

void sub_2516B4250(void *a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
    sub_251702C94();
    sub_251702C94();
    v3 = sub_251703134();

    v4 = sub_251703134();

    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:{0, 0xE000000000000000}];

    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a1;

    v19 = a1;
    v7 = sub_251703134();

    v24 = sub_2516B4758;
    v25 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25169F470;
    v23 = &block_descriptor_4;
    v8 = _Block_copy(&aBlock);

    v9 = objc_opt_self();
    v10 = [v9 actionWithTitle:v7 style:2 handler:v8];
    _Block_release(v8);

    [v5 addAction_];
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v12 = v5;
    v13 = sub_251703134();

    v24 = sub_25169D7AC;
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25169F470;
    v23 = &block_descriptor_10;
    v14 = _Block_copy(&aBlock);

    v15 = [v9 actionWithTitle:v13 style:1 handler:v14];
    _Block_release(v14);

    [v12 addAction_];
    [v19 presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    v24 = sub_2516B4724;
    v25 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_251693A80;
    v23 = &block_descriptor_3;
    v17 = _Block_copy(&aBlock);

    [a1 dismissViewControllerAnimated:1 completion:v17];
    _Block_release(v17);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2516B4760()
{
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_isFromAvailabilityAlert) = 0;
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_notificationPreview;
  type metadata accessor for NotificationPreviewView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_primaryButton;
  *(v0 + v2) = [objc_opt_self() boldButton];
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_secondaryButton;
  *(v0 + v3) = [objc_opt_self() linkButton];
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton;
  type metadata accessor for MultilineButton();
  *(v0 + v6) = [swift_getObjCClassFromMetadata() buttonWithType_];
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollViewContentSizeObserver) = 0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  sub_251703584();
  __break(1u);
}

unint64_t sub_2516B4924()
{
  result = qword_28151E978;
  if (!qword_28151E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E978);
  }

  return result;
}

unint64_t sub_2516B4978()
{
  result = qword_28151E968;
  if (!qword_28151E968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4541A0, qword_251708B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E968);
  }

  return result;
}

uint64_t sub_2516B49F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id TurndownViewController.init(turndownEntity:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI22TurndownViewController_primaryButton;
  *&v1[v4] = [objc_opt_self() boldButton];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI22TurndownViewController_turndownEntity] = a1;
  v5 = qword_27F453868;
  v6 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v7 = [v6 localizedAgencyName];
  if (v7)
  {
    v8 = v6;
    v9 = ObjectType;
    v10 = v7;
    v11 = sub_251703164();
    v19 = v12;
    v13 = v11;

    ObjectType = v9;
    v6 = v8;
    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_251708520;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_25169F41C();
    *(v14 + 32) = v13;
    *(v14 + 40) = v19;
    sub_251703184();
  }

  else
  {
    sub_251702C94();
  }

  v15 = sub_251703134();

  v16 = sub_251703134();

  v20.receiver = v1;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_contentLayout_, v15, v16, 0, 2, 0xE000000000000000);

  return v17;
}

Swift::Void __swiftcall TurndownViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516B4D7C();
}

void sub_2516B4D7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v73 - v3;
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI22TurndownViewController_primaryButton];
  v6 = sub_251703134();
  [v5 setTitle:v6 forState:0];

  [v5 addTarget:v1 action:sel_didTapPrimaryButton forControlEvents:64];
  v7 = [v1 buttonTray];
  [v7 addButton_];

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI22TurndownViewController_turndownEntity];
  v9 = [v8 localizedAgencyTurndownMessage];
  if (v9)
  {
    v10 = v9;
    v11 = sub_251703164();
    v75 = v12;
    v76 = v11;

    v13 = [v8 agencyHeaderStyle];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 integerValue];

      v16 = sub_25169478C(v15);
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      v74 = v18;
    }

    else
    {
      v74 = 0;
    }

    v19 = [v8 localizedAgencyName];
    if (v19)
    {
      v20 = v19;
      v73 = sub_251703164();
      v22 = v21;
    }

    else
    {
      v73 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = [v8 localizedRegionName];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v28 = [v8 region];
      if (!v28 || (v29 = v28, v24 = [v28 subdivisionCode], v29, !v24))
      {
        v25 = 0;
        v27 = 0xE000000000000000;
        goto LABEL_22;
      }
    }

    v25 = sub_251703164();
    v27 = v26;

LABEL_22:
    v30 = [v8 agencyColor];
    if (!v30)
    {
      goto LABEL_25;
    }

    v31 = [v8 agencyColor];
    if (!v31)
    {
      __break(1u);
      goto LABEL_36;
    }

    v32 = v31;
    sub_25168CD90(0, &qword_28151E880, 0x277D75348);
    sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
    v33 = sub_251703214();

    sub_251701920(v33);
    if (!v34)
    {
LABEL_25:
      v34 = [objc_opt_self() systemPinkColor];
    }

    v35 = v34;
    v36 = [v8 agencyHeaderTextColor];
    if (!v36)
    {

      v41 = [objc_opt_self() labelColor];
      goto LABEL_31;
    }

    v37 = [v8 agencyHeaderTextColor];
    if (v37)
    {
      v38 = v37;

      sub_25168CD90(0, &qword_28151E880, 0x277D75348);
      sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
      v39 = sub_251703214();

      sub_251701920(v39);
      if (v40)
      {
LABEL_32:
        v42 = v40;
        v43 = [v8 localizedAgencyImageURL];
        if (v43)
        {
          v44 = v43;
          sub_251703164();
        }

        sub_251702D94();

        v45 = type metadata accessor for ENUIPublicHealthHeader(0);
        v46 = objc_allocWithZone(v45);
        v47 = &v46[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title];
        *v47 = v73;
        v47[1] = v22;
        v48 = &v46[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle];
        *v48 = v25;
        v48[1] = v27;
        *&v46[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_backgroundColor] = v35;
        *&v46[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor] = v42;
        sub_25169479C(v4, &v46[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL]);
        *&v46[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style] = v74;
        v77.receiver = v46;
        v77.super_class = v45;
        v49 = objc_msgSendSuper2(&v77, sel_init);
        sub_2516B5AC4(v4);
        v50 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
        v51 = v49;
        v52 = sub_2516DD44C(v51, v76, v75, 20.0, 20.0, 20.0, 20.0);
        [v52 setTranslatesAutoresizingMaskIntoConstraints_];
        v53 = [v1 contentView];
        [v53 addSubview_];

        v54 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_2517068A0;
        v56 = [v52 leadingAnchor];
        v57 = [v1 contentView];
        v58 = [v57 leadingAnchor];

        v59 = [v56 constraintEqualToAnchor_];
        *(v55 + 32) = v59;
        v60 = [v52 trailingAnchor];
        v61 = [v1 contentView];
        v62 = [v61 trailingAnchor];

        v63 = [v60 constraintEqualToAnchor_];
        *(v55 + 40) = v63;
        v64 = [v52 topAnchor];
        v65 = [v1 contentView];
        v66 = [v65 topAnchor];

        v67 = [v64 constraintEqualToAnchor_];
        *(v55 + 48) = v67;
        v68 = [v52 bottomAnchor];

        v69 = [v1 contentView];
        v70 = [v69 bottomAnchor];

        v71 = [v68 constraintEqualToAnchor_];
        *(v55 + 56) = v71;
        sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
        v72 = sub_2517031F4();

        [v54 activateConstraints_];

        return;
      }

      v41 = [objc_opt_self() labelColor];
LABEL_31:
      v40 = v41;
      goto LABEL_32;
    }

LABEL_36:
    __break(1u);
    return;
  }
}

void sub_2516B568C()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_251703134();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_251703134();
    [v3 removeObjectForKey_];
  }
}

id TurndownViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id TurndownViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id TurndownViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2516B5AC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OnboardingRegionSelectionViewController.__allocating_init(flow:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2516B8F14(a1, a3, v7, ObjectType, a2);
}

uint64_t sub_2516B5B94(uint64_t a1)
{
  if (a1)
  {
    if (qword_28151EB58 == -1)
    {
      return sub_251702C94();
    }

    goto LABEL_6;
  }

  if (qword_28151EB58 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_251702C94();
}

uint64_t static SelectionType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return sub_2516B5CAC(a1, a2);
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_2516B5CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_251703624() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2516B5D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_2516B5CAC(v2, v3);
    }

    return 0;
  }

  return !v3;
}

char *sub_2516B5D74(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_imageDimension] = 0x404F000000000000;
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_iconTitlePadding] = 0x4028000000000000;
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView;
  v6 = sub_251703134();
  v7 = [objc_opt_self() _systemImageNamed_];

  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v2[v5] = v8;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = &v2[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_title];
  *v10 = a1;
  *(v10 + 1) = a2;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for RegionSelectionHeaderView();
  v11 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView;
  v13 = *&v11[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView];
  v14 = v11;
  [v14 addSubview_];
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel;
  [v14 addSubview_];
  v16 = *&v11[v12];
  v17 = [objc_opt_self() systemPinkColor];
  [v16 setTintColor_];

  v18 = *&v14[v15];
  v19 = sub_251703134();
  [v18 setText_];

  v20 = *&v14[v15];
  v21 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
  [v20 setFont_];

  [*&v14[v15] setNumberOfLines_];
  [*&v14[v15] setTextAlignment_];

  return v14;
}

id sub_2516B5FF4()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for RegionSelectionHeaderView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v16);
  [v0 layoutMargins];
  v3 = Width - v2;
  [v0 layoutMargins];
  v5 = v3 - v4;
  v6 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView];
  [v6 frame];
  [v0 layoutMargins];
  v8 = v7;
  [v6 setFrame_];
  v9 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel];
  [v9 sizeThatFits_];
  v11 = v10;
  v13 = v12;
  [v9 frame];
  v17.origin.x = (Width + -62.0) * 0.5;
  v17.origin.y = v8;
  v17.size.width = 62.0;
  v17.size.height = 62.0;
  return [v9 setFrame_];
}

double sub_2516B61BC(double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_title + 8];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_title] & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    [v1 layoutMargins];
    v6 = a1 - v5;
    [v1 layoutMargins];
    [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel] sizeThatFits_];
    [v1 layoutMargins];
    [v1 layoutMargins];
  }

  return a1;
}

id sub_2516B630C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegionSelectionHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516B63A0()
{
  if (!*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_251703054();

    return;
  }

  v2 = sub_2516ABA30(v1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_251703054();

  v3 = v23;
  v22 = *(v23 + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

  v4 = 0;
  v5 = v2 + 56;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v4;
    while (1)
    {
      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v4 = v7 + 1;
      if (*(v2 + 16))
      {
        break;
      }

LABEL_6:
      v7 = v4;
      if (v4 == v22)
      {
        goto LABEL_25;
      }
    }

    v8 = (v23 + 32 + 32 * v7);
    v9 = v8[1];
    v21 = *v8;
    v11 = v8[2];
    v10 = v8[3];
    sub_2517036E4();

    sub_2517031A4();
    v12 = sub_251703724();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
LABEL_5:

      goto LABEL_6;
    }

    v15 = ~v13;
    while (1)
    {
      v16 = (*(v2 + 48) + 16 * v14);
      v17 = *v16 == v11 && v16[1] == v10;
      if (v17 || (sub_251703624() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2516B8EF4(0, *(v6 + 16) + 1, 1);
    }

    v19 = *(v6 + 16);
    v18 = *(v6 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2516B8EF4((v18 > 1), v19 + 1, 1);
    }

    *(v6 + 16) = v19 + 1;
    v20 = (v6 + 32 * v19);
    v20[4] = v21;
    v20[5] = v9;
    v20[6] = v11;
    v20[7] = v10;
    v3 = v23;
  }

  while (v4 != v22);
LABEL_25:
}

id OnboardingRegionSelectionViewController.init(flow:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_2516B8F14(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingRegionSelectionViewController.viewDidLoad()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  sub_2516B67E0();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (v1)
  {
    RegionsProvider.loadSubdivisions(_:)(sub_2516B90D8, v2);
  }

  else
  {
    RegionsProvider.loadCountries(_:)(sub_2516B9C68, v2);
  }
}

void sub_2516B67E0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor_];

  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView];
  sub_25168CD90(0, &qword_27F454288, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_251703134();
  [v5 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  [v5 setDataSource_];
  [v5 setDelegate_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor_];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  [v9 addSubview_];

  sub_2516B72E8();
  v11 = [v0 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView];
  [v11 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_251708350;
  v15 = [v5 leadingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v14 + 32) = v19;
  v20 = [v5 trailingAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v14 + 40) = v24;
  v25 = [v5 topAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v14 + 48) = v29;
  v30 = [v5 bottomAnchor];
  v31 = [v0 view];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v14 + 56) = v34;
  v35 = [v13 leadingAnchor];
  v36 = [v0 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v14 + 64) = v39;
  v40 = [v13 trailingAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 constraintEqualToAnchor_];
  *(v14 + 72) = v44;
  v45 = [v13 topAnchor];
  v46 = [v0 view];
  if (!v46)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = [v45 constraintEqualToAnchor_];
  *(v14 + 80) = v49;
  v50 = [v13 bottomAnchor];
  v51 = [v0 view];
  if (!v51)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = objc_opt_self();
  v54 = [v52 bottomAnchor];

  v55 = [v50 constraintEqualToAnchor_];
  *(v14 + 88) = v55;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v56 = sub_2517031F4();

  [v53 activateConstraints_];

  v57 = [v5 tableHeaderView];
  [v57 layoutIfNeeded];

  v58 = [v5 tableHeaderView];
  [v5 setTableHeaderView_];

  v59 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_didTapCancel];
  v60 = [v0 navigationItem];
  [v60 setRightBarButtonItem_];

  v61 = [v0 navigationItem];
  [v61 _setAutoScrollEdgeTransitionDistance_];

  v62 = [v0 navigationItem];
  [v62 _setManualScrollEdgeAppearanceEnabled_];
}

void sub_2516B6F58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView);

    [v4 reloadData];
  }
}

Swift::Void __swiftcall OnboardingRegionSelectionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    [v3 setNavigationBarHidden:0 animated:v4];
  }

  v6 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8];
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(0, ObjectType, v6);
}

Swift::Void __swiftcall OnboardingRegionSelectionViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1);
  if ([v1 isMovingFromParentViewController])
  {
    v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8];
    ObjectType = swift_getObjectType();
    (*(v3 + 64))(MEMORY[0x277D84F90], ObjectType, v3);
  }
}

void sub_2516B72E8()
{
  v1 = v0;
  v2 = sub_2516B5B94(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType]);
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for RegionSelectionHeaderView());
  v22 = sub_2516B5D74(v2, v4);
  [v22 setLayoutMargins_];
  [v22 frame];
  v7 = v6;
  v9 = v8;
  v10 = [v1 view];
  if (v10)
  {
    v11 = v10;
    [v10 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v24.origin.x = v13;
    v24.origin.y = v15;
    v24.size.width = v17;
    v24.size.height = v19;
    [v22 sizeThatFits_];
    [v22 setFrame_];
    [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView] setTableHeaderView_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Int __swiftcall OnboardingRegionSelectionViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  sub_2516B63A0();
  v3 = *(v2 + 16);

  return v3;
}

unint64_t OnboardingRegionSelectionViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = sub_251703134();
  v3 = sub_251702EB4();
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:v3];

  v5 = [v4 textLabel];
  if (v5)
  {
    v6 = v5;
    sub_2516B63A0();
    v8 = v7;
    result = sub_251702ED4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v8 + 16))
    {

      v10 = sub_251703134();

      [v6 setText_];

      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

LABEL_5:
  [v4 setAccessoryType_];
  v11 = objc_opt_self();
  v12 = v4;
  v13 = [v11 secondarySystemBackgroundColor];
  [v12 setBackgroundColor_];

  v14 = [v12 textLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setNumberOfLines_];
  }

  return v12;
}

double OnboardingRegionSelectionViewController.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_251702EB4();
  [a1 deselectRowAtIndexPath:v7 animated:1];

  v8 = *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView);
  [*&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] startAnimating];
  [v8 setHidden_];
  sub_2516B63A0();
  v10 = v9;
  v11 = a2;
  v12 = sub_251702ED4();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= v10[2])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = &v10[4 * v12];
  v3 = v13[4];
  a2 = v13[5];
  v11 = v13[6];
  a1 = v13[7];

  if (!*(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType))
  {
    v15 = sub_251703134();
    v10 = [objc_opt_self() regionWithCode_];

    if (qword_28151EB60 == -1)
    {
LABEL_8:
      swift_beginAccess();
      v16 = static ENManagerAdapter.defaultAdapter;
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v3;
      v18[4] = a2;
      v18[5] = v11;
      v18[6] = a1;
      v19 = swift_allocObject();
      v19[2] = v16;
      v19[3] = v10;
      v19[4] = sub_2516B9990;
      v19[5] = v18;
      v20 = v16;

      v21 = v10;

      sub_2516C59C8(sub_2516B99A0, v19);

      return result;
    }

LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  sub_2516B93A8(v11);

  return result;
}

void sub_2516B7B34(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v63 = a4;
  v64 = a6;
  v62 = a2;
  v69 = a1;
  v9 = sub_251703084();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2517030B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2517030D4();
  v66 = *(v68 - 8);
  v15 = MEMORY[0x28223BE20](v68);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v58 = v13;
    v59 = v12;
    v60 = v10;
    v61 = v9;
    if (v69)
    {
      v62 = v19;
      v22 = Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow;
      v57 = Strong;
      v23 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8);
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 40);
      v26 = v69;

      swift_unknownObjectRetain();

      v27 = a5;
      v28 = v64;
      v25(v63, v27, v64, a7, ObjectType, v23);
      swift_unknownObjectRelease();
      if (v26[2])
      {
        sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
        v29 = sub_251703364();
        sub_2517030C4();
        v30 = v62;
        sub_2517030E4();
        v66 = *(v66 + 1);
        v66(v17, v68);
        v31 = swift_allocObject();
        v32 = v57;
        *(v31 + 16) = v57;
        v33 = v32;
        v74 = sub_2516B9C54;
        v75 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v71 = 1107296256;
        v72 = sub_251693A80;
        v73 = &block_descriptor_21;
        v34 = _Block_copy(&aBlock);
        v64 = v33;

        v35 = v65;
        sub_2517030A4();
        aBlock = MEMORY[0x277D84F90];
        sub_251694ABC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
        sub_251694B14();
        v36 = v67;
        v37 = v61;
        sub_251703434();
        MEMORY[0x25307F720](v30, v35, v36, v34);
        _Block_release(v34);

        (*(v60 + 8))(v36, v37);
        (*(v58 + 8))(v35, v59);
        v66(v30, v68);
        v38 = *(v22 + 8);
        v39 = swift_getObjectType();
        v40 = *(v38 + 64);
        swift_unknownObjectRetain();
        v40(v69, v39, v38);
        swift_unknownObjectRelease();
        v41 = *(v22 + 8);
        v42 = swift_getObjectType();
        v43 = *(v41 + 120);
        v44 = v64;
        swift_unknownObjectRetain();
        v43(v44, &protocol witness table for OnboardingRegionSelectionViewController, v42, v41);
        swift_unknownObjectRelease();

        v21 = v57;
      }

      else
      {

        v21 = v57;
        sub_2516B93A8(v28);
      }
    }

    else
    {
      sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
      v45 = sub_251703364();
      sub_2517030C4();
      sub_2517030E4();
      v69 = *(v66 + 1);
      (v69)(v17, v68);
      v46 = swift_allocObject();
      *(v46 + 16) = v21;
      v74 = sub_2516B9C4C;
      v75 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v71 = 1107296256;
      v72 = sub_251693A80;
      v73 = &block_descriptor_4;
      v47 = _Block_copy(&aBlock);
      v66 = v21;

      v48 = v65;
      sub_2517030A4();
      aBlock = MEMORY[0x277D84F90];
      sub_251694ABC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
      sub_251694B14();
      v49 = v67;
      v50 = v61;
      sub_251703434();
      MEMORY[0x25307F720](v19, v48, v49, v47);
      _Block_release(v47);

      (*(v60 + 8))(v49, v50);
      (*(v58 + 8))(v48, v59);
      (v69)(v19, v68);
      if (v62)
      {
        sub_2516B82AC();
      }

      else
      {
        v51 = v66;
        v52 = *(v66 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8);
        v53 = swift_getObjectType();
        v54 = *(v52 + 120);
        v55 = v51;
        swift_unknownObjectRetain();
        v54(v55, &protocol witness table for OnboardingRegionSelectionViewController, v53, v52);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2516B82AC()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v1 = sub_251703134();

  v2 = sub_251703134();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{1, 0xE000000000000000}];

  sub_251702C94();
  v4 = sub_251703134();

  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:{0, 0xE000000000000000}];

  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_2516B85E0(void *a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a1;
  v11 = a1;

  swift_beginAccess();
  v12 = *(a4 + 16);
  *(a4 + 16) = a2;
  v13 = a2;

  dispatch_group_leave(a5);
}

void sub_2516B8680(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v48 = a2;
  v46 = a1;
  v5 = sub_251703084();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2517030B4();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2517030D4();
  v43 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v18 = sub_251703364();
  sub_2517030C4();
  sub_2517030E4();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v20 = swift_allocObject();
  v21 = v46;
  *(v20 + 16) = v46;
  aBlock[4] = sub_2516B9BD8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_54_0;
  v22 = _Block_copy(aBlock);
  v46 = v21;

  sub_2517030A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  MEMORY[0x25307F720](v17, v10, v7, v22);
  _Block_release(v22);

  (*(v47 + 8))(v7, v5);
  (*(v44 + 8))(v10, v45);
  v19(v17, v43);
  v23 = v48;
  swift_beginAccess();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v23 + 16);
LABEL_5:
    v30 = v46;
    v31 = *&v46[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8];
    ObjectType = swift_getObjectType();
    v33 = *(v31 + 16);
    v34 = v24;
    v35 = v25;
    v33(v25, ObjectType, v31);
    (*(v31 + 120))(v30, &protocol witness table for OnboardingRegionSelectionViewController, ObjectType, v31);

    return;
  }

  v26 = v40;
  v27 = v41;
  v28 = v42;
  swift_beginAccess();
  v29 = *(v28 + 16);
  if (v29)
  {
    v25 = v29;
    v24 = 0;
    goto LABEL_5;
  }

  swift_beginAccess();
  if (*(v26 + 16) || (swift_beginAccess(), *(v27 + 16)))
  {
    sub_2516B82AC();
  }

  else
  {
    v36 = v46;
    v37 = *&v46[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8];
    v38 = swift_getObjectType();
    (*(v37 + 120))(v36, &protocol witness table for OnboardingRegionSelectionViewController, v38, v37);
  }
}

Swift::Void __swiftcall OnboardingRegionSelectionViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = [v1 traitCollection];
  if (v3)
  {
    v4 = v3;
    if (isa)
    {
      sub_25168CD90(0, &qword_27F4541E0, 0x277D75C80);
      v5 = isa;
      v6 = sub_2517033B4();

      if (v6)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!isa)
  {
    return;
  }

  sub_2516B72E8();
}

id OnboardingRegionSelectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id OnboardingRegionSelectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OnboardingRegionSelectionViewController.step.getter()
{
  if (*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2516B8ED4()
{
  if (*(*v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

char *sub_2516B8EF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2516E34EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_2516B8F14(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v11 = sub_251702C94();
  v13 = v12;
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&a3[v10] = LoadingStatusView.init(with:backgroundColor:)(v11, v13, v14);
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView;
  *&a3[v16] = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider;
  type metadata accessor for RegionsProvider(0);
  swift_allocObject();
  *&a3[v17] = sub_2516E2EB8();
  v18 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
  *v18 = a1;
  *(v18 + 1) = a5;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType] = a2;
  v20.receiver = a3;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2516B90F4()
{
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_imageDimension) = 0x404F000000000000;
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_iconTitlePadding) = 0x4028000000000000;
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView;
  v2 = sub_251703134();
  v3 = [objc_opt_self() _systemImageNamed_];

  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_251703584();
  __break(1u);
}

void sub_2516B9210()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v3 = sub_251702C94();
  v5 = v4;
  v6 = [objc_opt_self() systemBackgroundColor];
  v7 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *(v1 + v2) = LoadingStatusView.init(with:backgroundColor:)(v3, v5, v6);
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider;
  type metadata accessor for RegionsProvider(0);
  swift_allocObject();
  *(v1 + v9) = sub_2516E2EB8();
  sub_251703584();
  __break(1u);
}

double sub_2516B93A8(uint64_t a1)
{
  v1 = sub_251703084();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1);
  v49 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2517030B4();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = dispatch_group_create();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  dispatch_group_enter(v5);
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static ENManagerAdapter.defaultAdapter;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v5;
  v12 = v10;

  v13 = v5;
  v14 = sub_251703134();
  v52 = v9;
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 regionWithCode_];
  v43 = v8;
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  *(v19 + 24) = v18;
  *(v19 + 32) = 1;
  *(v19 + 40) = sub_2516B9C58;
  *(v19 + 48) = v11;
  v20 = v12;
  v21 = v18;

  sub_2516C59C8(sub_2516B9B04, v19);

  dispatch_group_enter(v13);
  v22 = static ENManagerAdapter.defaultAdapter;
  v23 = swift_allocObject();
  v23[2] = v6;
  v23[3] = v7;
  v23[4] = v13;
  v44 = v13;
  v24 = v22;

  v25 = sub_251703134();
  v26 = [v16 regionWithCode_];

  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  *(v27 + 32) = 0;
  *(v27 + 40) = sub_2516B9B50;
  *(v27 + 48) = v23;
  v28 = v24;
  v29 = v26;

  sub_2516C59C8(sub_2516B9C50, v27);

  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v30 = sub_251703364();
  v31 = swift_allocObject();
  v32 = v45;
  v33 = v43;
  v31[2] = v45;
  v31[3] = v33;
  v34 = v52;
  v31[4] = v6;
  v31[5] = v34;
  v31[6] = v7;
  aBlock[4] = sub_2516B9BC8;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_48;
  v35 = _Block_copy(aBlock);

  v36 = v32;
  v37 = v46;
  sub_2517030A4();
  v53 = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v38 = v49;
  v39 = v51;
  sub_251703434();
  v40 = v44;
  sub_251703344();
  _Block_release(v35);

  (*(v50 + 8))(v38, v39);
  (*(v47 + 8))(v37, v48);

  return result;
}

uint64_t sub_2516B99B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2516B9A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2516B9A5C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2516B9A74(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_2516B9BDC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView);
  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] stopAnimating];

  return [v1 setHidden_];
}

id VerificationSummaryViewController.init(flow:agencyModel:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v31[0] = qword_28151F0E0;
  v31[1] = static LocalizationSource.main;
  v10 = sub_251702C94();
  v12 = v11;
  v13 = [objc_opt_self() systemGroupedBackgroundColor];
  v14 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&v3[v9] = LoadingStatusView.init(with:backgroundColor:)(v10, v12, v13);
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_primaryButton;
  *&v3[v15] = [objc_opt_self() boldButton];
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_secondaryButton;
  *&v3[v16] = [objc_opt_self() linkButton];
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow] = a1;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_healthAgencyModel] = a2;
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  swift_beginAccess();
  sub_251699D18(a1 + v17, v8, &unk_27F4538B0, &unk_2517068C0);
  v18 = type metadata accessor for SymptomOnset(0);
  (*(*(v18 - 8) + 48))(v8, 1, v18);

  v19 = a2;
  sub_25168B718(v8, &unk_27F4538B0, &unk_2517068C0);
  swift_beginAccess();
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251708520;
  v32 = v19;
  v21 = &v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v22 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v23 = *(v21 + 1);
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_25169F41C();
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;

  sub_251703184();

  sub_251702C94();
  v24 = sub_251703134();

  v25 = sub_251703134();

  sub_25168CD90(0, &unk_27F4542B8, 0x277D37648);
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v26 = static NSBundle.exposureNotificationUI;
  v27 = sub_251703134();
  v28 = [swift_getObjCClassFromMetadata() imageNamed:v27 inBundle:v26];

  v34.receiver = v3;
  v34.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v34, sel_initWithTitle_detailText_icon_contentLayout_, v24, v25, v28, 2);

  return v29;
}

Swift::Void __swiftcall VerificationSummaryViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_2516BA430();
  v1 = [v0 navigationItem];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = 0u;
  v6 = 0u;
  v2 = sub_251703134();

  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = [v3 initWithTitle:v2 style:0 target:0 action:{0, v5, v6}];

  swift_unknownObjectRelease();
  [v1 setBackBarButtonItem_];
}

void sub_2516BA430()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_primaryButton];
  v2 = sub_251703134();
  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];

  sub_251702C94();
  v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_secondaryButton];
  v5 = sub_251703134();
  [v4 setTitle:v5 forState:{0, 0xE000000000000000}];

  [v4 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton_];

  type metadata accessor for MultilineButton();
  v7 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v7 addTarget:v0 action:sel_didTapLearnMoreButton forControlEvents:64];
  v8 = v7;
  sub_251702C94();
  v9 = sub_251703134();

  [v8 setTitle:v9 forState:{0, 0xE000000000000000}];

  v10 = [v8 titleLabel];
  if (v10)
  {
    [v10 setTextAlignment_];
  }

  v11 = [v8 titleLabel];

  [v11 setNumberOfLines_];
  v12 = [v8 titleLabel];

  if (v12)
  {
    v13 = [objc_opt_self() preferredFontForTextStyle_];
    [v12 setFont_];
  }

  v14 = [v8 titleLabel];

  if (v14)
  {
    [v14 setAdjustsFontForContentSizeCategory_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251708140;
  *(v15 + 32) = v8;
  v16 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v67 = v8;
  v17 = sub_2517031F4();

  v18 = [v16 initWithArrangedSubviews_];

  [v18 setAxis_];
  [v18 setAlignment_];
  v19 = v18;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v0 contentView];
  [v20 addSubview_];

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2517068A0;
  v23 = [v19 leadingAnchor];
  v24 = [v0 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v22 + 32) = v26;
  v27 = [v19 trailingAnchor];
  v28 = [v0 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v22 + 40) = v30;
  v31 = [v19 topAnchor];
  v32 = [v0 contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v22 + 48) = v34;
  v35 = [v19 bottomAnchor];

  v36 = [v0 contentView];
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v22 + 56) = v38;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v39 = sub_2517031F4();

  [v21 activateConstraints_];

  v40 = [v0 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = [objc_opt_self() systemGroupedBackgroundColor];
  [v41 setBackgroundColor_];

  v43 = [v0 view];
  if (!v43)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v43;
  v45 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_statusView];
  [v43 addSubview_];

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2517068A0;
  v47 = [v45 leadingAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = v48;
  v50 = [v48 leadingAnchor];

  v51 = [v47 constraintEqualToAnchor_];
  *(v46 + 32) = v51;
  v52 = [v45 topAnchor];
  v53 = [v0 view];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = v53;
  v55 = [v53 topAnchor];

  v56 = [v52 constraintEqualToAnchor_];
  *(v46 + 40) = v56;
  v57 = [v45 trailingAnchor];
  v58 = [v0 view];
  if (!v58)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v59 = v58;
  v60 = [v58 trailingAnchor];

  v61 = [v57 constraintEqualToAnchor_];
  *(v46 + 48) = v61;
  v62 = [v45 bottomAnchor];
  v63 = [v0 view];
  if (!v63)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v64 = v63;

  v65 = [v64 bottomAnchor];

  v66 = [v62 constraintEqualToAnchor_];
  *(v46 + 56) = v66;
  v68 = sub_2517031F4();

  [v21 activateConstraints_];
}

uint64_t sub_2516BAF7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v56 = *(v1 - 8);
  v2 = *(v56 + 8);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v57 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = sub_251702E64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_primaryButton] setEnabled_];
  v15 = [v0 navigationController];
  if (v15)
  {
    v16 = v10;
    v17 = v15;
    v18 = [v15 view];

    if (!v18)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v18 setUserInteractionEnabled_];

    v10 = v16;
  }

  v19 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow];
  v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(v19 + v20, v8, &qword_27F454000, &unk_251708500);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_9:
    sub_25168B718(v8, &qword_27F454000, &unk_251708500);
    result = sub_251703584();
    __break(1u);
    return result;
  }

  v53 = *(v10 + 32);
  v54 = v10 + 32;
  v53(v14, v8, v9);
  v21 = v14;
  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  swift_beginAccess();
  sub_251699D18(v19 + v22, v5, &unk_27F4538B0, &unk_2517068C0);
  v23 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
  swift_beginAccess();
  v52 = *(v19 + v23);
  v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated;
  swift_beginAccess();
  v51 = *(v19 + v24);
  v25 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_statusView];
  [*&v25[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] startAnimating];
  [v25 setHidden_];
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v47 = static ENManagerAdapter.defaultAdapter;
  v48 = swift_allocObject();
  *(v48 + 16) = v0;
  v26 = v57;
  sub_251699D18(v5, v57, &unk_27F4538B0, &unk_2517068C0);
  v27 = v55;
  (*(v10 + 16))(v55, v21, v9);
  v28 = (v56[80] + 16) & ~v56[80];
  v56 = v21;
  v29 = v10;
  v50 = v10;
  v30 = v28 + v2;
  v31 = (v28 + v2 + 9) & 0xFFFFFFFFFFFFFFF8;
  v32 = *(v29 + 80);
  v46 = v0;
  v33 = (v32 + v31 + 8) & ~v32;
  v49 = v5;
  v34 = v33 + v11;
  v35 = (v33 + v11) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_2516ABAC8(v26, v36 + v28);
  v37 = (v36 + v30);
  v38 = v51;
  *v37 = v52;
  v37[1] = v38;
  v39 = v47;
  *(v36 + v31) = v47;
  v53((v36 + v33), v27, v9);
  *(v36 + v34) = 1;
  v40 = v36 + v35;
  v41 = v48;
  *(v40 + 8) = sub_2516BCFCC;
  *(v40 + 16) = v41;
  v42 = v39;
  v43 = v46;

  sub_2516C59C8(sub_2516BD384, v36);

  sub_25168B718(v49, &unk_27F4538B0, &unk_2517068C0);
  return (*(v50 + 8))(v56, v9);
}