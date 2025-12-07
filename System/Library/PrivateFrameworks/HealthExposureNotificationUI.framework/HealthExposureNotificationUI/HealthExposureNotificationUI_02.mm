void sub_2516BB5B8(void *a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_statusView];
  [*&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] stopAnimating];
  [v4 setHidden_];
  v5 = [a2 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 setUserInteractionEnabled_];
  }

  if (a1)
  {
    v8 = a1;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v9 = sub_251702F84();
    __swift_project_value_buffer(v9, static Logger.testVerification);
    v10 = a1;
    v11 = sub_251702F64();
    v12 = sub_251703324();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315138;
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v16 = sub_251703194();
      v18 = sub_251693FCC(v16, v17, &aBlock);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_25167E000, v11, v12, "Finish test verification session failed: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2530803C0](v14, -1, -1);
      MEMORY[0x2530803C0](v13, -1, -1);
    }

    _s3__C4CodeOMa_0(0);
    aBlock = 4;
    v19 = a1;
    sub_2516BD31C();
    v20 = sub_251702CA4();

    if (v20 & 1) != 0 || (aBlock = 6, v21 = a1, v22 = sub_251702CA4(), a1, (v22) || (aBlock = 7, v23 = a1, v24 = sub_251702CA4(), a1, (v24) || (aBlock = 8, v25 = a1, v26 = sub_251702CA4(), a1, (v26))
    {
      if (qword_28151EB58 != -1)
      {
        swift_once();
      }

      sub_251702C94();
      sub_251702C94();
LABEL_16:
      v27 = 0;
LABEL_17:
      v28 = sub_251703134();

      v29 = sub_251703134();

      v30 = [objc_opt_self() alertControllerWithTitle:v28 message:v29 preferredStyle:{1, 0xE000000000000000}];

      if (qword_28151EB58 != -1)
      {
        swift_once();
      }

      sub_251702C94();
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      *(v31 + 24) = a2;
      v32 = a2;
      v33 = sub_251703134();

      v49 = sub_2516BD374;
      v50 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_25169F470;
      v48 = &block_descriptor_19;
      v34 = _Block_copy(&aBlock);

      v35 = [objc_opt_self() actionWithTitle:v33 style:0 handler:{v34, 0xE000000000000000}];
      _Block_release(v34);

      [v30 addAction_];
      [v32 presentViewController:v30 animated:1 completion:0];
      [*&v32[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_primaryButton] setEnabled_];

      return;
    }

    aBlock = 11;
    v39 = a1;
    v40 = sub_251702CA4();

    if (v40)
    {
      if (qword_28151EB58 != -1)
      {
        swift_once();
      }

      sub_251702C94();
      if ([objc_opt_self() wapiCapability])
      {
        v41 = 1312902231;
      }

      else
      {
        v41 = 1229343063;
      }

      aBlock = 0;
      v46 = 0xE000000000000000;
      sub_251703534();
      MEMORY[0x25307F580](0xD00000000000002ALL, 0x800000025170E430);
      MEMORY[0x25307F580](v41, 0xE400000000000000);

      MEMORY[0x25307F580](0x4D5F524F5252455FLL, 0xEE00454741535345);
      sub_251702C94();

      goto LABEL_16;
    }

    aBlock = 13;
    v42 = a1;
    v43 = sub_251702CA4();

    if (v43)
    {
      if (qword_28151EB58 == -1)
      {
        goto LABEL_34;
      }
    }

    else if (qword_28151EB58 == -1)
    {
LABEL_34:
      sub_251702C94();
      sub_251702C94();
      v27 = 1;
      goto LABEL_17;
    }

    swift_once();
    goto LABEL_34;
  }

  v36 = objc_allocWithZone(type metadata accessor for VerificationFinishedViewController());

  v44 = VerificationFinishedViewController.init(flow:)(v37, &protocol witness table for VerificationOnboardingFlow);
  v38 = [a2 navigationController];
  [v38 pushViewController:v44 animated:1];
}

double sub_2516BBF6C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow);
    swift_beginAccess();
    v4 = *(v3 + 16);

    v4(2);
  }

  return result;
}

uint64_t sub_2516BC028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v31 - v2;
  v4 = sub_251702E64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - v8;
  v36 = v0;
  v10 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(v10 + v11, v3, &qword_27F454000, &unk_251708500);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25168B718(v3, &qword_27F454000, &unk_251708500);
    result = sub_251703584();
    __break(1u);
  }

  else
  {
    v34 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *(v5 + 32);
    v32(v9, v3, v4);
    v35 = v5;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    v31[1] = qword_28151F0E0;
    v31[2] = *algn_28151F0D8;
    v31[3] = static LocalizationSource.main;
    sub_251702C94();
    v12 = sub_251703134();

    v13 = sub_251703134();
    v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:0];

    sub_251702C94();
    v15 = v34;
    v16 = v35;
    (*(v35 + 16))(v34, v9, v4);
    v17 = v4;
    v18 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v19 = swift_allocObject();
    v33 = v9;
    v20 = v19;
    v21 = v36;
    *(v19 + 16) = v36;
    v22 = v19 + v18;
    v23 = v17;
    v32(v22, v15, v17);
    v36 = v21;
    v24 = sub_251703134();

    aBlock[4] = sub_2516BCF34;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25169F470;
    aBlock[3] = &block_descriptor_5;
    v25 = _Block_copy(aBlock);

    v26 = objc_opt_self();
    v27 = [v26 actionWithTitle:v24 style:2 handler:v25];
    _Block_release(v25);

    [v14 addAction_];
    sub_251702C94();
    v28 = sub_251703134();

    v29 = [v26 actionWithTitle:v28 style:1 handler:0];

    [v14 addAction_];
    [v36 presentViewController:v14 animated:1 completion:0];

    return (*(v16 + 8))(v33, v23);
  }

  return result;
}

void sub_2516BC5B4(uint64_t a1, void *a2, char *a3)
{
  v36 = a3;
  v4 = sub_251702E64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v35 = *(v7 - 8);
  v8 = v35[8];
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = [a2 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 view];

    if (!v15)
    {
      __break(1u);
      return;
    }

    [v15 setUserInteractionEnabled_];
  }

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v34 = static ENManagerAdapter.defaultAdapter;
  v16 = type metadata accessor for SymptomOnset(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  sub_251699D18(v12, v10, &unk_27F4538B0, &unk_2517068C0);
  (*(v5 + 16))(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v4);
  v18 = *(v35 + 80);
  v35 = a2;
  v36 = v12;
  v19 = (v18 + 16) & ~v18;
  v20 = v19 + v8;
  v21 = (v20 + 9) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v5 + 80);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v4;
  v23 = (v22 + v21 + 8) & ~v22;
  v24 = v23 + v6;
  v25 = (v23 + v6) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_2516ABAC8(v10, v26 + v19);
  *(v26 + v20) = 514;
  v27 = v33;
  v28 = v34;
  *(v26 + v21) = v34;
  (*(v5 + 32))(v26 + v23, v32, v27);
  *(v26 + v24) = 0;
  v29 = v26 + v25;
  *(v29 + 8) = sub_2516BCFC0;
  *(v29 + 16) = v17;
  v30 = v28;
  v31 = v35;

  sub_2516C59C8(sub_2516BCFC8, v26);

  sub_25168B718(v36, &unk_27F4538B0, &unk_2517068C0);
}

void sub_2516BC96C(void *a1, char *a2)
{
  v4 = [a2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 view];

    if (!v6)
    {
      __break(1u);
      return;
    }

    [v6 setUserInteractionEnabled_];
  }

  if (a1)
  {
    v7 = a1;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v8 = sub_251702F84();
    __swift_project_value_buffer(v8, static Logger.testVerification);
    v9 = a1;
    v10 = sub_251702F64();
    v11 = sub_251703324();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136315138;
      v14 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v15 = sub_251703194();
      v17 = sub_251693FCC(v15, v16, v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_25167E000, v10, v11, "Finish test verification session opt out failed: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2530803C0](v13, -1, -1);
      MEMORY[0x2530803C0](v12, -1, -1);
    }

    else
    {
    }
  }

  v18 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow];
  swift_beginAccess();
  v19 = *(v18 + 16);

  v19(2);
}

id VerificationSummaryViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id VerificationSummaryViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id VerificationSummaryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516BCF34(uint64_t a1)
{
  v3 = *(sub_251702E64() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  sub_2516BC5B4(a1, v4, v5);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_251702E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for SymptomOnset(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    v10 = sub_251702E24();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v0 + v3, 1, v10))
    {
      (*(v11 + 8))(v0 + v3, v10);
    }
  }

  v12 = (v4 + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, ((v13 + v8) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | v7 | 7);
}

void sub_2516BD1F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_251702E64() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v0 + v4);
  v9 = *(v0 + v7);
  v10 = v0 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v0 + v3 + 1);
  v14 = *(v0 + v3);

  sub_2516CD9A8(v0 + v2, v14, v13, v8, v0 + v6, v9, v11, v12);
}

unint64_t sub_2516BD31C()
{
  result = qword_27F453B98;
  if (!qword_27F453B98)
  {
    _s3__C4CodeOMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F453B98);
  }

  return result;
}

id AuthorizationViewController.init(with:bundleIdentifier:region:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = *MEMORY[0x277D85000];
  v10 = sub_2516C059C(a1, a2, a3, a4, a5, a6);
  (*(*(*((v9 & v8) + 0x50) - 8) + 8))(a1);
  return v10;
}

BOOL sub_2516BD448()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  v2 = v1[1];
  result = v2 == 0;
  if (v2)
  {
    if (*v1 == 0xD000000000000015 && v2 == 0x800000025170E650)
    {
      return 1;
    }

    v5 = v2 == 0;
    v6 = sub_251703624();
    result = v5;
    if (v6)
    {
      return 1;
    }
  }

  return result;
}

_BYTE *sub_2516BD4EC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_2516BE46C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2516BD56C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_2516BE4E4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2516BD61C()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = sub_2516BD4EC();
  v6 = *((v4 & v2) + 0x58);
  v7 = *((v4 & v2) + 0x50);
  v6[2](v7, v6);
  v8 = *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_titleLabel];
  v9 = sub_251703134();

  [v8 setText_];

  v10 = sub_2516BD56C();
  v6[7](v7, v6);
  v11 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
  if (!v11)
  {
    __break(1u);
    goto LABEL_41;
  }

  v12 = v11;
  v13 = sub_251703134();

  [v12 setTitle:v13 forState:0];

  v14 = v6[8];
  v15 = *(v0 + *((*v3 & *v0) + 0x98));
  v14(v7, v6);
  v16 = *&v15[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton];
  if (!v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = v16;
  v18 = sub_251703134();

  [v17 setTitle:v18 forState:0];

  v19 = *(v0 + *((*v3 & *v0) + 0x80));
  if (v19)
  {
    v20 = v6[3];
    v85 = v19;
    v20(v7, v6);
    if (v21)
    {
      v22 = *(v0 + *((*v3 & *v0) + 0x90));
      v23 = *&v22[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
      v24 = v22;
      v25 = sub_251703134();

      [v23 setText_];
    }

    else
    {
      v6[4](v7, v6);
      if (!v31)
      {
        goto LABEL_15;
      }

      v32 = *(v0 + *((*v3 & *v0) + 0x90));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_251708520;
      v35 = *&v85[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
      v34 = *&v85[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
      *(v33 + 56) = MEMORY[0x277D837D0];
      *(v33 + 64) = sub_25169F41C();
      *(v33 + 32) = v35;
      *(v33 + 40) = v34;
      v24 = v32;

      sub_251703184();

      v36 = *&v24[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
      v25 = sub_251703134();

      [v36 setText_];
    }

LABEL_15:
    v37 = *((*v3 & *v1) + 0x90);
    v38 = *(v1 + v37);
    ENUIPublicHealthAgencyModel.installedAppIcon.getter();
    v40 = v39;
    [*&v38[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView] setImage_];
    v41 = sub_2516DE6E0();
    [v41 setHidden_];

    v42 = [*(*(v1 + v37) + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView) image];
    if (v42)
    {
      v83 = v42;

      v43 = v83;
    }

    else
    {
      v43 = v85;
      v44 = *&v85[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8];
      if (v44)
      {
        v45 = *&v85[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId];
        v46 = swift_allocObject();
        *(v46 + 16) = v1;
        v47 = swift_allocObject();
        *(v47 + 16) = sub_2516C0D14;
        *(v47 + 24) = v46;

        v48 = v1;

        sub_2516C39D0(0, 0, v45, v44);
        v50 = v49;
        v51 = swift_allocObject();
        *(v51 + 16) = sub_2516C0D1C;
        *(v51 + 24) = v47;
        aBlock[4] = sub_2516C0D28;
        aBlock[5] = v51;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2516C2438;
        aBlock[3] = &block_descriptor_6;
        v52 = _Block_copy(aBlock);

        [v50 addFinishBlock_];
        _Block_release(v52);

        return;
      }
    }

    goto LABEL_37;
  }

  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v26 = sub_251702F84();
  __swift_project_value_buffer(v26, static Logger.general);
  v27 = sub_251702F64();
  v28 = sub_251703314();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_25167E000, v27, v28, "did not get agencyModel for pre-auth consent screen", v29, 2u);
    MEMORY[0x2530803C0](v29, -1, -1);
  }

  if (*(v1 + *((*v3 & *v1) + 0x78) + 8))
  {
    v30 = sub_251703134();
  }

  else
  {
    v30 = 0;
  }

  v86 = [objc_opt_self() applicationProxyForIdentifier_];

  if (v86)
  {
    v53 = [v86 appState];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 isInstalled];

      if (!v55)
      {
        goto LABEL_36;
      }

      v6[3](v7, v6);
      if (v56)
      {
        v57 = *(v1 + *((*v3 & *v1) + 0x90));
        v58 = *&v57[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
        v59 = v57;
        v60 = sub_251703134();

        [v58 setText_];
LABEL_29:

LABEL_30:
        v70 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithResourceProxy_];
        v71 = [objc_opt_self() imageDescriptorNamed_];
        v72 = [v70 prepareImageForDescriptor_];
        v73 = v72;
        if (v72)
        {
          v74 = [v72 CGImage];
          if (v74)
          {
            v75 = v74;
            v76 = *(v1 + *((*v3 & *v1) + 0x90));
            v77 = objc_allocWithZone(MEMORY[0x277D755B8]);
            v78 = v76;
            v79 = [v77 initWithCGImage_];
            [*&v78[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView] setImage_];
            v84 = sub_2516DE6E0();
            [v84 setHidden_];

            v43 = v84;
LABEL_37:

            return;
          }
        }

        v80 = sub_251702F64();
        v81 = sub_251703324();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_25167E000, v80, v81, "Did not get an image for pre-auth consent screen", v82, 2u);
          MEMORY[0x2530803C0](v82, -1, -1);
        }

LABEL_36:
        v43 = v86;
        goto LABEL_37;
      }

      v6[4](v7, v6);
      if (!v61)
      {
        goto LABEL_30;
      }

      v62 = *(v1 + *((*v3 & *v1) + 0x90));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_251708520;
      v59 = v62;
      v64 = [v86 localizedName];
      if (v64)
      {
        v65 = v64;
        v66 = sub_251703164();
        v68 = v67;

        *(v63 + 56) = MEMORY[0x277D837D0];
        *(v63 + 64) = sub_25169F41C();
        *(v63 + 32) = v66;
        *(v63 + 40) = v68;
        sub_251703184();

        v69 = *&v59[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
        v60 = sub_251703134();

        [v69 setText_];
        goto LABEL_29;
      }

LABEL_43:
      __break(1u);
      return;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }
}

uint64_t sub_2516BE178(uint64_t result)
{
  v2 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  if (*v2)
  {
    return (*v2)(result & 1);
  }

  return result;
}

void _s28HealthExposureNotificationUI27AuthorizationViewControllerC06scrollF9DidScrollyySo08UIScrollF0CF_0_0()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x88));
  [v1 layoutIfNeeded];
  [v1 contentOffset];
  v3 = v2;
  [v1 frame];
  v4 = v3 + CGRectGetHeight(v12);
  [v1 contentInset];
  v6 = v4 - v5;
  [v1 contentSize];
  v8 = v7 <= v6;
  v9 = sub_2516BD56C();
  v10 = *&v9[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_visualEffectView];

  [v10 setHidden_];
}

void sub_2516BE2E0()
{
  type metadata accessor for OnboardingInfoViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v0 presentViewController:v2 animated:1 completion:0];
}

uint64_t AuthorizationDisplayableStyle.hashValue.getter(char a1)
{
  sub_2517036E4();
  MEMORY[0x25307FAC0](a1 & 1);
  return sub_251703724();
}

uint64_t AuthorizationViewController.completionHandler.getter()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60));
  sub_2516C08EC(v1);
  return v1;
}

_BYTE *sub_2516BE46C()
{
  v0 = sub_2516BD448();
  v1 = objc_allocWithZone(type metadata accessor for AuthorizationHeaderView());
  v2 = sub_2516DE998(v0, 0.0, 0.0, 0.0, 0.0);
  [v2 setLayoutMargins_];
  return v2;
}

char *sub_2516BE4E4(void *a1)
{
  v1 = (*(*((*MEMORY[0x277D85000] & *a1) + 0x58) + 72))(*((*MEMORY[0x277D85000] & *a1) + 0x50));
  v2 = objc_allocWithZone(type metadata accessor for AuthorizationFooterView());
  v3 = sub_251699D9C(v1 & 1, 0.0, 0.0, 0.0, 0.0);
  [v3 setLayoutMargins_];
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_delegate + 8] = &off_2863949E0;
  swift_unknownObjectWeakAssign();
  return v3;
}

id AuthorizationViewController.__allocating_init(with:bundleIdentifier:region:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = sub_2516C059C(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 10) - 8) + 8))(a1);
  return v15;
}

Swift::Void __swiftcall AuthorizationViewController.viewDidLoad()()
{
  v2 = v1;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v147 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v149.receiver = v1;
  v149.super_class = type metadata accessor for AuthorizationViewController(0, v147, v4, v0);
  objc_msgSendSuper2(&v149, sel_viewDidLoad);
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_46;
  }

  v6 = v5;
  v7 = [objc_opt_self() systemBackgroundColor];
  [v6 setBackgroundColor_];

  v8 = *(v2 + *((*v3 & *v2) + 0x88));
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setDelegate_];
  v9 = [v2 view];
  if (!v9)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v10 = v9;
  [v9 addSubview_];

  v11 = [v8 leadingAnchor];
  v12 = [v2 view];
  if (!v12)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  [v15 setActive_];

  v16 = [v8 trailingAnchor];
  v17 = [v2 view];
  if (!v17)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  [v20 setActive_];

  v21 = [v8 topAnchor];
  v22 = [v2 view];
  if (!v22)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v23 = v22;
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 topAnchor];
  v26 = [v21 constraintEqualToAnchor_];

  [v26 setActive_];
  v27 = [v8 bottomAnchor];
  v28 = [v2 view];
  if (!v28)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v29 = v28;
  v30 = [v28 safeAreaLayoutGuide];

  v31 = [v30 bottomAnchor];
  v32 = [v27 constraintEqualToAnchor_];

  [v32 setActive_];
  v33 = sub_2516BD4EC();
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];

  v34 = *((*MEMORY[0x277D85000] & *v2) + 0x90);
  [v8 addSubview_];
  v35 = [*(v2 + v34) leadingAnchor];
  v36 = [v8 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  [v37 setActive_];
  v38 = [*(v2 + v34) trailingAnchor];
  v39 = [v8 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  [v40 setActive_];
  v41 = [*(v2 + v34) topAnchor];
  v42 = [v8 topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:64.0];

  [v43 setActive_];
  v148 = v34;
  v44 = [*(v2 + v34) widthAnchor];
  v45 = [v2 view];
  if (!v45)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v46 = v45;
  v47 = [v45 widthAnchor];

  v48 = [v44 constraintEqualToAnchor_];
  [v48 setActive_];

  type metadata accessor for MultilineButton();
  v49 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v49 addTarget:v2 action:sel_didTapLearnMoreButton forControlEvents:64];
  v50 = qword_28151EB58;
  v51 = v49;
  if (v50 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v52 = sub_251703134();

  [v51 setTitle:v52 forState:{0, 0xE000000000000000}];

  v53 = [v51 titleLabel];
  if (v53)
  {
    [v53 setTextAlignment_];
  }

  v54 = [v51 titleLabel];

  [v54 setNumberOfLines_];
  v55 = [v51 titleLabel];

  if (v55)
  {
    v56 = [objc_opt_self() preferredFontForTextStyle_];
    [v55 setFont_];
  }

  v57 = [v51 titleLabel];

  [v57 setAdjustsFontForContentSizeCategory_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_251708140;
  *(v58 + 32) = v51;
  v59 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v146 = v51;
  v60 = sub_2517031F4();

  v61 = [v59 initWithArrangedSubviews_];

  v62 = MEMORY[0x277D85000];
  v63 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
  v64 = *(v2 + v63);
  *(v2 + v63) = v61;

  v65 = *(v2 + *((*v62 & *v2) + 0xA0));
  if (!v65)
  {
    goto LABEL_52;
  }

  [v65 setAxis_];
  v66 = *(v2 + *((*v62 & *v2) + 0xA0));
  if (!v66)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v66 setAlignment_];
  v67 = *(v2 + *((*v62 & *v2) + 0xA0));
  if (!v67)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  [v67 setTranslatesAutoresizingMaskIntoConstraints_];
  if (!*(v2 + *((*v62 & *v2) + 0xA0)))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v8 addSubview_];
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2517068A0;
  v69 = *(v2 + *((*v62 & *v2) + 0xA0));
  if (!v69)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v70 = [v69 leadingAnchor];
  v71 = [v8 leadingAnchor];
  v72 = [v70 &selRef:v71 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v68 + 32) = v72;
  v73 = *(v2 + *((*v62 & *v2) + 0xA0));
  if (!v73)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v74 = [v73 trailingAnchor];
  v75 = [v8 trailingAnchor];
  v76 = [v74 &selRef:v75 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v68 + 40) = v76;
  v77 = *(v2 + *((*v62 & *v2) + 0xA0));
  if (!v77)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v78 = [v77 topAnchor];
  v79 = [*(v2 + v148) bottomAnchor];
  v80 = [v78 &selRef:v79 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v68 + 48) = v80;
  v81 = *(v2 + *((*v62 & *v2) + 0xA0));
  if (!v81)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v82 = objc_opt_self();
  v83 = [v81 bottomAnchor];
  v84 = [v8 bottomAnchor];
  v85 = [v83 constraintLessThanOrEqualToAnchor_];

  *(v68 + 56) = v85;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v86 = sub_2517031F4();

  [v82 activateConstraints_];

  v87 = sub_2516BD56C();
  [v87 setTranslatesAutoresizingMaskIntoConstraints_];

  v88 = [v2 view];
  if (!v88)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v89 = v88;
  v90 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  [v88 addSubview_];

  v91 = [*(v2 + v90) leadingAnchor];
  v92 = [v2 view];
  if (!v92)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v93 = v92;
  v94 = [v92 leadingAnchor];

  v95 = [v91 &selRef:v94 notifyChangeObserversForChangeFrom:? to:? + 5];
  [v95 setActive_];

  v96 = [*(v2 + v90) trailingAnchor];
  v97 = [v2 view];
  if (!v97)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v98 = v97;
  v99 = [v97 trailingAnchor];

  v100 = [v96 &selRef:v99 notifyChangeObserversForChangeFrom:? to:? + 5];
  [v100 setActive_];

  v101 = [*(v2 + v90) bottomAnchor];
  v102 = [v2 view];
  if (!v102)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v103 = v102;
  v104 = [v102 bottomAnchor];

  v105 = [v101 &selRef:v104 notifyChangeObserversForChangeFrom:? to:? + 5];
  [v105 setActive_];

  v106 = *(v4 + 16);
  v107 = *(v2 + v148);
  v106(v147, v4);
  v108 = *&v107[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_titleLabel];
  v109 = sub_251703134();

  [v108 setText_];

  v110 = *(v4 + 40);
  v111 = *(v2 + v90);
  v110(v147, v4);
  v113 = *&v111[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel];
  if (!v113)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v112)
  {
    v114 = v113;
    v115 = sub_251703134();
  }

  else
  {
    v116 = v113;
    v115 = 0;
  }

  [v113 setText_];

  v117 = *(v4 + 56);
  v118 = *(v2 + v90);
  v117(v147, v4);
  v119 = *&v118[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
  if (!v119)
  {
    goto LABEL_65;
  }

  v120 = v119;
  v121 = sub_251703134();

  [v120 setTitle:v121 forState:0];

  v122 = *(v4 + 64);
  v123 = *(v2 + v90);
  v122(v147, v4);
  v124 = *&v123[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton];
  if (!v124)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v125 = v124;
  v126 = sub_251703134();

  [v125 setTitle:v126 forState:0];

  if (sub_2516BD448())
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v127 = sub_251702F84();
    __swift_project_value_buffer(v127, static Logger.general);
    v128 = sub_251702F64();
    v129 = sub_251703314();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_25167E000, v128, v129, "Setting legal consent text for ENX Pre-Auth Consent Screen", v130, 2u);
      MEMORY[0x2530803C0](v130, -1, -1);
    }

    (*(v4 + 24))(v147, v4);
    if (!v131)
    {
      goto LABEL_40;
    }

    v132 = *(v2 + v148);
    v133 = *&v132[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
    v134 = v132;
    v135 = sub_251703134();
    [v133 setText_];

    v136 = [v2 view];
    if (v136)
    {
      v137 = v136;

      [v137 layoutIfNeeded];

LABEL_40:
      return;
    }

    goto LABEL_68;
  }

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v138 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x78));
  v139 = v138[1];
  if (v139)
  {
    v140 = *v138;
    v141 = static ENManagerAdapter.defaultAdapter;
    v142 = swift_allocObject();
    *(v142 + 16) = v2;
    v143 = swift_allocObject();
    v143[2] = sub_2516C0914;
    v143[3] = v142;
    v143[4] = v140;
    v143[5] = v139;
    v144 = v141;
    v145 = v2;

    sub_2516C59C8(sub_2516C091C, v143);

    return;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void sub_2516BFA50(void *a1, void *a2)
{
  v2 = *((*MEMORY[0x277D85000] & *a2) + 0x80);
  v3 = *(a2 + v2);
  *(a2 + v2) = a1;
  v4 = a1;

  sub_2516BD61C();
}

void sub_2516BFAA8(void *a1)
{
  v1 = a1;
  AuthorizationViewController.viewDidLoad()();
}

Swift::Void __swiftcall AuthorizationViewController.viewDidLayoutSubviews()()
{
  v2 = MEMORY[0x277D85000];
  v3 = type metadata accessor for AuthorizationViewController(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58), v0);
  v33.receiver = v1;
  v33.super_class = v3;
  objc_msgSendSuper2(&v33, sel_viewDidLayoutSubviews);
  v4 = *(v1 + *((*v2 & *v1) + 0x88));
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  Width = CGRectGetWidth(v34);
  v16 = *(v1 + *((*v2 & *v1) + 0xA0));
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = Width;
  [v16 frame];
  [v4 setContentSize_];
  v18 = sub_2516BD56C();
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v36.origin.x = v20;
  v36.origin.y = v22;
  v36.size.width = v24;
  v36.size.height = v26;
  Height = CGRectGetHeight(v36);
  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 safeAreaInsets];
    v31 = v30;

    v32 = Height - v31;
    [v4 setContentInset_];
    [v4 setScrollIndicatorInsets_];
    _s28HealthExposureNotificationUI27AuthorizationViewControllerC06scrollF9DidScrollyySo08UIScrollF0CF_0_0();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_2516BFD0C(void *a1)
{
  v1 = a1;
  AuthorizationViewController.viewDidLayoutSubviews()();
}

uint64_t sub_2516BFD54(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_251703084();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2517030B4();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v12 = sub_251703364();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  aBlock[4] = sub_2516C0D48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a3;

  sub_2517030A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  MEMORY[0x25307F740](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

void sub_2516BFFF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2516BD4EC();
  [*&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView] setImage_];
  v4 = sub_2516DE6E0();
  [v4 setHidden_];
}

void sub_2516C0098(void *a1)
{
  v1 = a1;
  sub_2516BE168();
}

void sub_2516C00E0(void *a1)
{
  v1 = a1;
  sub_2516BE170();
}

void sub_2516C0128(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s28HealthExposureNotificationUI27AuthorizationViewControllerC06scrollF9DidScrollyySo08UIScrollF0CF_0(v5);
}

void sub_2516C0188(void *a1)
{
  v1 = a1;
  sub_2516BE2E0();
}

id AuthorizationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void sub_2516C0284(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_2516C0A5C();
}

id AuthorizationViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AuthorizationViewController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_2516C0364(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = &a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)];
  v6 = sub_2516C0D04(*v5, v5[1]);
  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x68)], v6);

  v7 = *&a1[*((*v3 & *a1) + 0xA0)];
}

id sub_2516C059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = MEMORY[0x277D85000];
  v12 = *v6;
  v13 = *MEMORY[0x277D85000];
  *&v7[*((*MEMORY[0x277D85000] & v12) + 0x80)] = 0;
  v14 = *((*v11 & *v7) + 0x88);
  *&v7[v14] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *&v7[*((*v11 & *v7) + 0x90)] = 0;
  *&v7[*((*v11 & *v7) + 0x98)] = 0;
  *&v7[*((*v11 & *v7) + 0xA0)] = 0;
  v15 = *((v13 & v12) + 0x58);
  v16 = *((v13 & v12) + 0x50);
  (*(v15 + 24))(v16, v15);
  if (v17)
  {

    (*(v15 + 32))(v16, v15);
    if (v18)
    {

      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v19 = sub_251702F84();
      __swift_project_value_buffer(v19, static Logger.general);
      v20 = sub_251702F64();
      v21 = sub_251703324();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_25167E000, v20, v21, "Ambiguous AuthorizationDisplayable: both detailText and detailTextTemplate are set, will be using detailText", v22, 2u);
        MEMORY[0x2530803C0](v22, -1, -1);
      }
    }
  }

  (*(*(v16 - 8) + 16))(&v7[*((*v11 & *v7) + 0x68)], a1, v16);
  v23 = &v7[*((*v11 & *v7) + 0x78)];
  *v23 = a2;
  *(v23 + 1) = a3;
  *&v7[*((*v11 & *v7) + 0x70)] = a4;
  v24 = &v7[*((*v11 & *v7) + 0x60)];
  *v24 = a5;
  *(v24 + 1) = a6;
  v30.receiver = v7;
  v30.super_class = type metadata accessor for AuthorizationViewController(0, v16, v15, v25);
  return objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2516C08EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2516C0928()
{
  v1 = MEMORY[0x277D85000];
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x80)) = 0;
  v2 = *((*v1 & *v0) + 0x88);
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *(v0 + *((*v1 & *v0) + 0x90)) = 0;
  *(v0 + *((*v1 & *v0) + 0x98)) = 0;
  *(v0 + *((*v1 & *v0) + 0xA0)) = 0;
  sub_251703584();
  __break(1u);
}

unint64_t sub_2516C0A90()
{
  result = qword_27F4542C8[0];
  if (!qword_27F4542C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F4542C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationDisplayableStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthorizationDisplayableStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2516C0C44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_2516C0D04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2516C0D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251702EA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_251693E20(a2, a3, 0);
  if (result)
  {
    v11 = result;
    v12 = [result applicationState];
    v13 = [v12 isInstalled];

    if (v13)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CC5CC8]) initWithRegion_];
      v15 = [objc_opt_self() currentLocale];
      sub_251702E84();

      v16 = sub_251702E74();
      (*(v7 + 8))(v9, v6);
      [v14 setLocale_];

      v17 = [v11 localizedName];
      if (!v17)
      {
        sub_251703164();
        v17 = sub_251703134();
      }

      [v14 setDisplayName_];

      v18 = [objc_allocWithZone(MEMORY[0x277CC5CB8]) initWithRegion_];
      v19 = objc_opt_self();
      v20 = [v19 systemDarkGrayColor];
      sub_251701AB4();

      sub_2516C10C0();
      v21 = sub_2517031F4();

      [v18 setAgencyColor_];

      v22 = [v19 systemWhiteColor];
      sub_251701AB4();

      v23 = sub_2517031F4();

      [v18 setAgencyHeaderTextColor_];

      [v18 setLocalizedConfiguration_];
      [v18 setAgencyHeaderStyle_];

      return v18;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_2516C10C0()
{
  result = qword_28151E850;
  if (!qword_28151E850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28151E850);
  }

  return result;
}

id OnboardingRegionNotAvailableViewController.__allocating_init(flow:region:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  ObjectType = swift_getObjectType();

  return sub_2516C1780(a1, a3, a4, a5, a6, v13, ObjectType, a2);
}

id OnboardingRegionNotAvailableViewController.init(flow:region:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_2516C1780(a1, a3, a4, a5, a6, v6, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingRegionNotAvailableViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516C1258();
}

void sub_2516C1258()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_primaryButton];
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

id OnboardingRegionNotAvailableViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id OnboardingRegionNotAvailableViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id OnboardingRegionNotAvailableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516C1780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_primaryButton;
  *&a6[v16] = [objc_opt_self() boldButton];
  v17 = &a6[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_flow];
  *v17 = a1;
  *(v17 + 1) = a8;
  v18 = &a6[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_region];
  *v18 = a2;
  *(v18 + 1) = a3;
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v19 = qword_28151EB58;
  swift_unknownObjectRetain();
  if (v19 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v20 = sub_251703134();

  v21 = sub_251703134();

  v27.receiver = a6;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, sel_initWithTitle_detailText_icon_contentLayout_, v20, v21, 0, 3, 0xE000000000000000);

  v23 = v22;
  v24 = [v23 headerView];
  LODWORD(v25) = 1036831949;
  [v24 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v23;
}

id sub_2516C19DC(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, void *a6)
{
  if (!a6)
  {
    v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = objc_opt_self();
  v12 = a6;
  v13 = [v11 _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (v13)
  {
    v14 = v13;
    v15 = [v14 fontDescriptor];

    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_6:
    v16 = [v15 fontDescriptorWithSymbolicTraits_];

    v15 = v16;
    goto LABEL_7;
  }

  v15 = 0;
  if (a4)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((a3 & 1) == 0)
  {
    v17 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454388, &qword_251708F50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708520;
    v19 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454390, &qword_251708F58);
    v20 = swift_initStackObject();
    v21 = MEMORY[0x277D74430];
    *(v20 + 16) = xmmword_251708520;
    v22 = *v21;
    *(v20 + 32) = *v21;
    *(v20 + 40) = a2;
    v23 = v19;
    v24 = v22;
    v25 = sub_251698BAC(v20);
    swift_setDeallocating();
    sub_25168B718(v20 + 32, &qword_27F454398, &qword_251708F60);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4543A0, &qword_251708F68);
    *(inited + 40) = v25;
    sub_251698C9C(inited);
    swift_setDeallocating();
    sub_25168B718(inited + 32, &qword_27F453F30, &qword_2517083D8);
    if (!v15)
    {

      a5 = v17;
      goto LABEL_18;
    }

    type metadata accessor for AttributeName(0);
    sub_2516C1F38();
    v26 = sub_2517030F4();

    v27 = [v15 fontDescriptorByAddingAttributes_];

    v15 = v27;
    a5 = v17;
  }

  if (a5)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    v28 = [v15 fontDescriptorWithDesign_];

    v15 = v28;
  }

  if (v15)
  {
    v29 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
    goto LABEL_23;
  }

LABEL_18:
  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v30 = sub_251702F84();
  __swift_project_value_buffer(v30, static Logger.general);
  v31 = a1;
  v32 = sub_251702F64();
  v33 = sub_251703334();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v47 = a5;
    v35 = swift_slowAlloc();
    v49[0] = v35;
    *v34 = 136315906;
    v36 = sub_251703164();
    v38 = sub_251693FCC(v36, v37, v49);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454380, &qword_251708F48);
    v39 = sub_251703194();
    v41 = sub_251693FCC(v39, v40, v49);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    type metadata accessor for SymbolicTraits(0);
    v42 = sub_251703194();
    v44 = sub_251693FCC(v42, v43, v49);

    *(v34 + 24) = v44;
    *(v34 + 32) = 1024;
    *(v34 + 34) = v47 & 1;
    _os_log_impl(&dword_25167E000, v32, v33, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %{BOOL}d. Using only the text style", v34, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x2530803C0](v35, -1, -1);
    MEMORY[0x2530803C0](v34, -1, -1);
  }

  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v29 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
LABEL_23:
  v45 = v29;

  return v45;
}

unint64_t sub_2516C1F38()
{
  result = qword_28151E8C8;
  if (!qword_28151E8C8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E8C8);
  }

  return result;
}

id sub_2516C1F94(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4543B0, &qword_251709078);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_251708520;
      *(inited + 32) = sub_251703164();
      v3 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v7;
      *(inited + 48) = 0x64616F6C6E776F44;
      v5 = -2;
      v6 = 0xEF64656C69614620;
      goto LABEL_9;
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708520;
    *(inited + 32) = sub_251703164();
    v3 = inited + 32;
    v6 = 0x800000025170E7E0;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v9;
    *(inited + 48) = 0xD000000000000015;
LABEL_8:
    v5 = -2;
    goto LABEL_9;
  }

  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708520;
    *(inited + 32) = sub_251703164();
    v3 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    v6 = 0x800000025170E800;
    *(inited + 40) = v8;
    *(inited + 48) = 0xD000000000000011;
    goto LABEL_8;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251708520;
  *(inited + 32) = sub_251703164();
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = 0x6E776F6E6B6E55;
  v5 = -1;
  v6 = 0xE700000000000000;
LABEL_9:
  *(inited + 56) = v6;
  sub_251699708(inited);
  swift_setDeallocating();
  sub_25168B718(v3, &qword_27F453F08, &qword_2517083B0);
  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v11 = sub_251703134();
  v12 = sub_2517030F4();

  v13 = [v10 initWithDomain:v11 code:v5 userInfo:v12];

  return v13;
}

uint64_t AppStoreAssetError.hashValue.getter(unsigned __int8 a1)
{
  sub_2517036E4();
  MEMORY[0x25307FAC0](a1);
  return sub_251703724();
}

uint64_t sub_2516C22BC(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!a1)
  {
    return a3(0, 0, 1);
  }

  v5 = [a1 allItems];
  sub_25168CD90(0, &qword_27F4543B8, 0x277CEE518);
  v6 = sub_251703214();

  if (v6 >> 62)
  {
    result = sub_251703474();
    if (!result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_9;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25307F910](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  v10 = [v9 displayName];

  if (!v10)
  {
    return a3(0, 0, 1);
  }

  v11 = sub_251703164();
  v13 = v12;

  if (a2)
  {
LABEL_9:

    return a3(0, 0, 1);
  }

  a3(v11, v13, 0);
}

void sub_2516C2438(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2516C24C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = sub_251702DA4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    a3(0, 1);
    return;
  }

  v19 = v16;
  v34 = a1;
  v20 = [v34 allItems];
  sub_25168CD90(0, &qword_27F4543B8, 0x277CEE518);
  v21 = sub_251703214();

  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_21:
    a1 = v15;
LABEL_22:

    goto LABEL_23;
  }

  if (!sub_251703474())
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v21 & 0xC000000000000001) != 0)
  {
    a1 = v15;
    v22 = MEMORY[0x25307F910](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    a1 = v15;
    v22 = *(v21 + 32);
  }

  v23 = v22;

  v24 = [v23 artwork];

  if (!v24)
  {
LABEL_23:
    (*(a1 + 56))(v13, 1, 1, v19);
LABEL_24:
    sub_25168B718(v13, &qword_27F453E10, &unk_251708160);
    a3(1, 1);

    return;
  }

  sub_25168CD90(0, &qword_27F4543C0, 0x277CEE520);
  v21 = sub_251703214();

  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_27:
  if (!sub_251703474())
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x25307F910](0, v21);
LABEL_15:
    v26 = v25;

    v27 = [v26 URLWithHeight:80 width:80 cropStyle:*MEMORY[0x277CEE1C8] format:*MEMORY[0x277CEE1D8]];

    if (v27)
    {
      sub_251702D84();

      (*(a1 + 56))(v11, 0, 1, v19);
    }

    else
    {
      (*(a1 + 56))(v11, 1, 1, v19);
    }

    sub_2516C4704(v11, v13);
    if ((*(a1 + 48))(v13, 1, v19) != 1)
    {
      (*(a1 + 32))(v18, v13, v19);
      v28 = [objc_opt_self() sharedSession];
      v29 = sub_251702D74();
      v30 = swift_allocObject();
      *(v30 + 16) = a3;
      *(v30 + 24) = a4;
      aBlock[4] = sub_2516C4774;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2516DA110;
      aBlock[3] = &block_descriptor_34;
      v31 = _Block_copy(aBlock);

      v32 = [v28 dataTaskWithURL:v29 completionHandler:v31];
      _Block_release(v31);

      [v32 resume];
      (*(a1 + 8))(v18, v19);
      return;
    }

    goto LABEL_24;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v21 + 32);
    goto LABEL_15;
  }

  __break(1u);
}

double sub_2516C29F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, double))
{
  if (a2 >> 60 != 15 && a4 == 0)
  {
    v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_2516C477C(a1, a2);
    sub_2516C477C(a1, a2);
    v11 = sub_251702DB4();
    v12 = [v10 initWithData_];

    v13 = sub_2516C47D0(a1, a2);
    if (v12)
    {
      v14 = v12;
      (a5)(v12, 0);
    }

    else
    {
      a5(3, 1, v13);
    }

    return sub_2516C47D0(a1, a2);
  }

  else
  {
    (a5)(2, 1, a3, a4);
  }

  return result;
}

void sub_2516C2B18(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 || !a1)
  {
    a3(0, 1);
    return;
  }

  v8 = [a1 allItems];
  sub_25168CD90(0, &qword_27F4543B8, 0x277CEE518);
  v9 = sub_251703214();

  if (v9 >> 62)
  {
LABEL_28:
    v10 = sub_251703474();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_29:

LABEL_30:
    a3(1, 1);
    return;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_5:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x25307F910](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v15 = [v12 bundleIdentifier];
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = a6;
    v17 = v15;
    v18 = sub_251703164();
    v20 = v19;

    if (v18 == a5 && v20 == v16)
    {
      break;
    }

    a6 = v16;
    v22 = sub_251703624();

    if (v22)
    {
      goto LABEL_21;
    }

LABEL_6:

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_29;
    }
  }

LABEL_21:

  v23 = [v13 iTunesStoreIdentifier];
  if (!v23)
  {

    goto LABEL_30;
  }

  v24 = v23;
  v26 = v23;
  a3(v24, 0);
}

void sub_2516C2D90(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v5 = sub_2516C1F94(a1);
    a4(0, 0, v5);
  }

  else
  {
    a4(a1, a2, 0);
  }
}

void sub_2516C2E40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = sub_251703134();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

void sub_2516C2EA4(uint64_t a1, char a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v4 = sub_2516C1F94(a1);
    a3(0, v4);
  }

  else
  {
    a3(a1, 0);
  }
}

double sub_2516C2F50(int a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_251703164();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  a7(v10, v12, a6, v13);

  return result;
}

void static AppStoreAssetManager.accessAppFor(_:presentingViewController:completion:)(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
  if (!v7)
  {
    v14 = 0;
LABEL_7:
    a3(v14);
    return;
  }

  v8 = v4;
  v10 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v12 = v11;
      v13 = sub_251703134();
      [v12 openApplicationWithBundleID_];
    }

    v14 = 1;
    goto LABEL_7;
  }

  v15 = [a2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setUserInteractionEnabled_];

    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = v8;
    v17[4] = a3;
    v17[5] = a4;
    v18 = a2;

    sub_2516C39D0(0, 0, v10, v7);
    v20 = v19;
    v21 = swift_allocObject();
    v21[2] = sub_2516C403C;
    v21[3] = v17;
    v21[4] = v10;
    v21[5] = v7;
    v23[4] = sub_2516C4040;
    v23[5] = v21;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_2516C2438;
    v23[3] = &block_descriptor_7;
    v22 = _Block_copy(v23);

    [v20 addFinishBlock_];
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2516C3228(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v10 = sub_251703084();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2517030B4();
  v13 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v26 = sub_251703364();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2 & 1;
  v17 = v24;
  v18 = v25;
  *(v16 + 40) = a4;
  *(v16 + 48) = v17;
  *(v16 + 56) = v18;
  aBlock[4] = sub_2516C4844;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_40;
  v19 = _Block_copy(aBlock);
  v20 = a3;
  sub_2516C4858(a1, a2 & 1);

  sub_2517030A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  v21 = v26;
  MEMORY[0x25307F740](0, v15, v12, v19);
  _Block_release(v19);

  (*(v28 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v27);
}

id sub_2516C34F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = a3;
  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result setUserInteractionEnabled_];

    if (v6)
    {
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
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        v16 = sub_251703194();
        v18 = sub_251693FCC(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_25167E000, v12, v13, "Failed to fetch app identifier: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x2530803C0](v15, -1, -1);
        MEMORY[0x2530803C0](v14, -1, -1);
      }

      v19 = 0;
    }

    else
    {
      sub_2516C44E8(a2, a1);
      v19 = 1;
    }

    return a5(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static AppStoreAssetManager.openAppStore(from:)()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_251703134();
    [v1 openApplicationWithBundleID_];
  }

  else
  {
    __break(1u);
  }
}

id AppStoreAssetManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStoreAssetManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreAssetManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppStoreAssetManager.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppStoreAssetManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2516C39D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = [v8 bagKeySet];
  if (!v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v9;
  v10 = [v8 bagSubProfile];
  if (!v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10;
  v12 = [v8 bagSubProfileVersion];
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  [objc_opt_self() registerBagKeySet:v4 forProfile:v11 profileVersion:v12];

  v14 = [v8 bagSubProfile];
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v14;
  v15 = [v8 bagSubProfileVersion];
  if (!v15)
  {
LABEL_24:

    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [objc_opt_self() bagForProfile:v4 profileVersion:v15];

  sub_251703164();
  v18 = objc_allocWithZone(MEMORY[0x277CEE510]);
  v19 = v17;
  v20 = sub_251703134();
  v21 = sub_251703134();

  v22 = [v18 initWithBag:v19 caller:v20 keyProfile:v21];

  v36[0] = a1;
  v36[1] = a2;

  if (a2)
  {

    v23 = MEMORY[0x277D84F90];
    v24 = a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2516E31D0(0, *(v23 + 2) + 1, 1, v23);
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_2516E31D0((v25 > 1), v26 + 1, 1, v23);
    }

    *(v23 + 2) = v26 + 1;
    v27 = &v23[16 * v26];
    *(v27 + 4) = a1;
    *(v27 + 5) = a2;
  }

  else
  {
    v24 = a3;
  }

  sub_25168B718(v36, &qword_27F4543C8, &qword_251709080);
  v35[0] = v24;
  v35[1] = a4;

  if (a4)
  {

    v28 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_2516E31D0(0, *(v28 + 2) + 1, 1, v28);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_2516E31D0((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[16 * v30];
    *(v31 + 4) = v24;
    *(v31 + 5) = a4;
  }

  sub_25168B718(v35, &qword_27F4543C8, &qword_251709080);
  v32 = sub_2517031F4();

  v33 = sub_2517031F4();

  [v22 performLookupWithBundleIdentifiers:v32 itemIdentifiers:v33];
}

void _s28HealthExposureNotificationUI20AppStoreAssetManagerC05fetchg3ForE8BundleId_10completionySS_ySo7UIImageCSg_So7NSErrorCSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_2516C39D0(0, 0, a1, a2);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2516C0D1C;
  *(v11 + 24) = v8;
  v13[4] = sub_2516C0D28;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C2438;
  v13[3] = &block_descriptor_58;
  v12 = _Block_copy(v13);

  [v10 addFinishBlock_];
  _Block_release(v12);
}

void _s28HealthExposureNotificationUI20AppStoreAssetManagerC05fetchg7NameForE8BundleId_10completionySS_ySSSg_So7NSErrorCSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_2516C39D0(0, 0, a1, a2);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2516C4864;
  *(v11 + 24) = v8;
  v13[4] = sub_2516C4870;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C2438;
  v13[3] = &block_descriptor_49_0;
  v12 = _Block_copy(v13);

  [v10 addFinishBlock_];
  _Block_release(v12);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2516C408C()
{
  result = qword_27F4543A8;
  if (!qword_27F4543A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4543A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreAssetError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreAssetError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2516C4230(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
  if (v9)
  {
    v10 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
    _Block_copy(a4);
    if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) == 0)
    {
      v14 = [a2 view];
      if (v14)
      {
        v15 = v14;
        [v14 setUserInteractionEnabled_];

        v16 = swift_allocObject();
        v16[2] = a2;
        v16[3] = a3;
        v16[4] = sub_2516C464C;
        v16[5] = v8;
        v17 = a2;

        sub_2516C39D0(0, 0, v10, v9);
        v19 = v18;
        v20 = swift_allocObject();
        v20[2] = sub_2516C48A4;
        v20[3] = v16;
        v20[4] = v10;
        v20[5] = v9;
        v22[4] = sub_2516C488C;
        v22[5] = v20;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 1107296256;
        v22[2] = sub_2516C2438;
        v22[3] = &block_descriptor_22;
        v21 = _Block_copy(v22);

        [v19 addFinishBlock_];
        _Block_release(v21);
      }

      else
      {
        _Block_release(a4);
        __break(1u);
      }

      return;
    }

    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v12 = v11;
      v13 = sub_251703134();
      [v12 openApplicationWithBundleID_];
    }

    a4[2](a4, 1);
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4, 0);
  }
}

void sub_2516C44E8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CDD3A8]) initWithNibName:0 bundle:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4543B0, &qword_251709078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251708520;
  *(inited + 32) = sub_251703164();
  *(inited + 40) = v6;
  *(inited + 72) = sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
  *(inited + 48) = a1;
  v7 = a1;
  sub_251699708(inited);
  swift_setDeallocating();
  sub_25168B718(inited + 32, &qword_27F453F08, &qword_2517083B0);
  v8 = sub_2517030F4();

  [v4 loadProductWithParameters:v8 completionBlock:0];

  [a2 presentViewController:v4 animated:1 completion:0];
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2516C4704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516C477C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_2516C47D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2516C47E4(result, a2);
  }

  return v2;
}

double sub_2516C47E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

void sub_2516C4838(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_2516C4858(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t *ENManagerAdapter.defaultAdapter.unsafeMutableAddressor()
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  return &static ENManagerAdapter.defaultAdapter;
}

uint64_t ENManagerAdapter.exposureNotificationStatus.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENManagerAdapter.exposureNotificationStatus.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ENManagerAdapter.isExposureLoggingDataPresent.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENManagerAdapter.isExposureLoggingDataPresent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ENManagerAdapter.areAvailabilityAlertsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENManagerAdapter.areAvailabilityAlertsEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ENManagerAdapter.isAvailabilityAlertsSwitchEnabled.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENManagerAdapter.isAvailabilityAlertsSwitchEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2516C4F44()
{
  result = [objc_allocWithZone(type metadata accessor for ENManagerAdapter()) init];
  static ENManagerAdapter.defaultAdapter = result;
  return result;
}

id ENManagerAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ENManagerAdapter.defaultAdapter.getter()
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static ENManagerAdapter.defaultAdapter;

  return v0;
}

void static ENManagerAdapter.defaultAdapter.setter(uint64_t a1)
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static ENManagerAdapter.defaultAdapter;
  static ENManagerAdapter.defaultAdapter = a1;
}

uint64_t (*static ENManagerAdapter.defaultAdapter.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

char *ENManagerAdapter.init()()
{
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus] = 0;
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusObservation] = 0;
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusChangeObservers] = MEMORY[0x277D84FA0];
  v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent] = 0;
  v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled] = 0;
  v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled] = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CC5C90]) init];
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_manager] = v1;
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_activationGroup] = dispatch_group_create();
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ENManagerAdapter();
  v2 = objc_msgSendSuper2(&v14, sel_init);
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_manager;
  v4 = *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_manager];
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v5 = v2;
  v6 = v4;
  v7 = sub_251703364();
  [v6 setDispatchQueue_];

  dispatch_group_enter(*&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_activationGroup]);
  v8 = *&v2[v3];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v13[4] = sub_2516C5750;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C5814;
  v13[3] = &block_descriptor_8;
  v10 = _Block_copy(v13);
  v11 = v8;

  [v11 activateWithCompletionHandler_];
  _Block_release(v10);

  return v5;
}

void sub_2516C55D0(int a1, char *a2)
{
  v3 = [a2 manager];
  v4 = [v3 exposureNotificationStatus];

  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  swift_beginAccess();
  *&a2[v5] = v4;
  dispatch_group_leave(*&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_activationGroup]);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = nullsub_1;
  v6[4] = 0;
  v7 = a2;
  sub_2516C59C8(sub_2516CFD28, v6);

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_251702D54();

  v9 = *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusObservation];
  *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusObservation] = v8;
}

void sub_2516C5758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong manager];
    v6 = [v5 exposureNotificationStatus];

    v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
    swift_beginAccess();
    v8 = *&v4[v7];
    *&v4[v7] = v6;
    [v4 notifyChangeObserversForChangeFrom:v8 to:v6];
  }
}

void sub_2516C5814(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ENManagerAdapter.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusObservation];
  if (v2)
  {
    v3 = v2;
    sub_251702CB4();
  }

  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_manager] invalidate];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ENManagerAdapter();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

double sub_2516C59C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_251703084();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2517030B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_activationGroup);
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v13 = sub_251703364();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_415;
  v14 = _Block_copy(aBlock);

  sub_2517030A4();
  v16[1] = MEMORY[0x277D84F90];
  sub_2516CFAA4(&qword_28151E980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  sub_251703344();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);

  return result;
}

void sub_2516C5C98(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v35 = sub_251703084();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2517030B4();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = [a1 manager];
  v10 = sub_251703134();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = a1;
  v44 = sub_2516CFA54;
  v45 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_2516C623C;
  v43 = &block_descriptor_380;
  v12 = _Block_copy(&aBlock);
  v13 = v8;
  v14 = a1;

  [v9 getInfoForKey:v10 completion:v12];
  _Block_release(v12);

  dispatch_group_enter(v13);
  v15 = [v14 manager];
  v16 = sub_251703134();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v44 = sub_2516CFA78;
  v45 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_2516C623C;
  v43 = &block_descriptor_386;
  v18 = _Block_copy(&aBlock);
  v19 = v13;
  v20 = v14;

  [v15 getInfoForKey:v16 completion:v18];
  _Block_release(v18);

  dispatch_group_enter(v19);
  v21 = [v20 manager];
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  v44 = sub_2516CFA9C;
  v45 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_2516C6470;
  v43 = &block_descriptor_392;
  v23 = _Block_copy(&aBlock);
  v24 = v19;
  v25 = v20;

  [v21 getRegionMonitorEnabledWithCompletionHandler_];
  _Block_release(v23);

  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v26 = sub_251703364();
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v33;
  *(v27 + 24) = v28;
  v44 = sub_25169E198;
  v45 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_251693A80;
  v43 = &block_descriptor_398;
  v29 = _Block_copy(&aBlock);

  sub_2517030A4();
  v39 = MEMORY[0x277D84F90];
  sub_2516CFAA4(&qword_28151E980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v30 = v32;
  v31 = v35;
  sub_251703434();
  sub_251703344();
  _Block_release(v29);

  (*(v38 + 8))(v30, v31);
  (*(v36 + 8))(v7, v37);
}

uint64_t sub_2516C623C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_251699CD8(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_25168B718(v10, &qword_27F454430, qword_251709108);
}

void sub_2516C62EC(uint64_t a1, uint64_t a2, dispatch_group_t group, uint64_t a4, uint64_t *a5)
{
  if (!a2)
  {
    sub_251699D18(a1, v11, &qword_27F454430, qword_251709108);
    if (v12)
    {
      if (swift_dynamicCast())
      {
        v8 = v10;
LABEL_10:
        v9 = *a5;
        swift_beginAccess();
        *(a4 + v9) = v8;
        dispatch_group_leave(group);
        return;
      }
    }

    else
    {
      sub_25168B718(v11, &qword_27F454430, qword_251709108);
    }

    v8 = 0;
    goto LABEL_10;
  }

  dispatch_group_leave(group);
}

void sub_2516C63E0(char a1, uint64_t a2, dispatch_group_t group, uint64_t a4)
{
  if (a2)
  {

    dispatch_group_leave(group);
  }

  else
  {
    v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
    swift_beginAccess();
    *(a4 + v6) = a1 & 1;
    dispatch_group_leave(group);
  }
}

void sub_2516C6470(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

double ENManagerAdapter.onboardingDidStart(forRegion:source:)(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a2;
  v5[3] = v2;
  v5[4] = a1;
  v6 = v2;
  v7 = a1;
  sub_2516C59C8(sub_2516AB45C, v5);

  return result;
}

void sub_2516C6658(uint64_t a1, id a2, uint64_t a3)
{
  v4 = [a2 manager];
  v5 = sub_251703134();

  v7[4] = sub_2516C67E4;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2516C5814;
  v7[3] = &block_descriptor_412;
  v6 = _Block_copy(v7);
  [v4 onboardingDidStartForRegion:a3 withSource:v5 completion:v6];
  _Block_release(v6);
}

double ENManagerAdapter.didEnterLegalConsentPage(forRegion:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = a1;
  sub_2516C59C8(sub_2516C69F4, v3);

  return result;
}

void sub_2516C6924(void *a1, uint64_t a2)
{
  v3 = [a1 manager];
  v5[4] = sub_2516C69FC;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2516C5814;
  v5[3] = &block_descriptor_361;
  v4 = _Block_copy(v5);
  [v3 didEnterLegalConsentPage:a2 completionHandler:v4];
  _Block_release(v4);
}

void sub_2516C6A08(void *a1, const char *a2, ...)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v5 = sub_251702F84();
    __swift_project_value_buffer(v5, static Logger.general);
    v6 = a1;
    v7 = sub_251702F64();
    v8 = sub_251703324();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v12 = sub_251703194();
      v14 = sub_251693FCC(v12, v13, &v15);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25167E000, v7, v8, a2, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2530803C0](v10, -1, -1);
      MEMORY[0x2530803C0](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2516C6C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 manager];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2516C6D78;
  v9[3] = &block_descriptor_409;
  v8 = _Block_copy(v9);

  [v7 fetchSubdivisionsForCountry:a2 completion:v8];
  _Block_release(v8);
}

uint64_t sub_2516C6D78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_251703214();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_2516C6E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_2517031F4();
    if (a2)
    {
LABEL_3:
      v6 = sub_251702D34();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_2516C6F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 manager];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2516C5814;
  v9[3] = &block_descriptor_358;
  v8 = _Block_copy(v9);

  [v7 setActiveEntityWithRegion:a2 completion:v8];
  _Block_release(v8);
}

void sub_2516C7030(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_251702D34();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

double ENManagerAdapter.setActivePhaseOneApp(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = v4;

  sub_2516C59C8(sub_2516C7238, v9);

  return result;
}

void sub_2516C713C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 manager];
  v8 = sub_251703134();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2516C5814;
  v10[3] = &block_descriptor_355;
  v9 = _Block_copy(v10);

  [v7 setActiveEntityWithAppBundleID:v8 completion:v9];
  _Block_release(v9);
}

void sub_2516C7370(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 manager];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_2516CF95C;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2516C2438;
  v8[3] = &block_descriptor_352;
  v7 = _Block_copy(v8);

  [v5 getLastExposureNotificationWithCompletion_];
  _Block_release(v7);
}

double sub_2516C74B4(uint64_t a1, uint64_t a2)
{
  v5 = dispatch_group_create();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 16) = MEMORY[0x277D84F90];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v2;
  v10[4] = v6;
  v10[5] = v8;
  v10[6] = v9;
  v10[7] = a1;
  v10[8] = a2;
  v11 = v5;
  v12 = v2;

  sub_2516C59C8(sub_2516CFB4C, v10);

  return result;
}

void sub_2516C75F8(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v44 = a7;
  v41 = a5;
  v38 = a4;
  v46 = sub_251703084();
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2517030B4();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_251702EA4();
  v13 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_enter(a1);
  v16 = [a2 manager];
  v17 = swift_allocObject();
  v40 = a3;
  *(v17 + 16) = a3;
  *(v17 + 24) = a1;
  v55 = sub_2516CFB60;
  v56 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_2516C7C2C;
  v54 = &block_descriptor_436;
  v18 = _Block_copy(&aBlock);

  v19 = a1;

  [v16 allRegionConfigurationsWithCompletion_];
  _Block_release(v18);

  dispatch_group_enter(v19);
  v20 = [a2 manager];
  v21 = swift_allocObject();
  v22 = v38;
  *(v21 + 16) = v38;
  *(v21 + 24) = v19;
  v55 = sub_2516CFC3C;
  v56 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_2516C7C40;
  v54 = &block_descriptor_442;
  v23 = _Block_copy(&aBlock);
  v24 = v19;

  [v20 allRegionServerConfigurationsWithCompletion_];
  _Block_release(v23);

  dispatch_group_enter(v24);
  v25 = [a2 manager];
  sub_251702E94();
  v26 = sub_251702E74();
  (*(v13 + 8))(v15, v39);
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 16) = v41;
  *(v27 + 24) = v24;
  v55 = sub_2516CFC3C;
  v56 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_2516C7D74;
  v54 = &block_descriptor_448;
  v29 = _Block_copy(&aBlock);
  v24;

  [v25 allAgencyConfigurationsForLocale:v26 withCompletion:v29];
  _Block_release(v29);

  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v30 = sub_251703364();
  v31 = swift_allocObject();
  v31[2] = v40;
  v31[3] = v22;
  v32 = v43;
  v33 = v44;
  v31[4] = v28;
  v31[5] = v32;
  v31[6] = v33;
  v55 = sub_2516CFB7C;
  v56 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_251693A80;
  v54 = &block_descriptor_454;
  v34 = _Block_copy(&aBlock);

  v35 = v42;
  sub_2517030A4();
  v50 = MEMORY[0x277D84F90];
  sub_2516CFAA4(&qword_28151E980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v37 = v45;
  v36 = v46;
  sub_251703434();
  sub_251703344();
  _Block_release(v34);

  (*(v49 + 8))(v37, v36);
  (*(v47 + 8))(v35, v48);
}

uint64_t sub_2516C7C54(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_25168CD90(0, a4, a5);
    v6 = sub_251703214();
  }

  v8 = a3;
  v7(v6, a3);
}

void sub_2516C7CF0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  *(a3 + 16) = v6;

  dispatch_group_leave(a4);
}

uint64_t sub_2516C7D88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  v8 = *(a1 + 16);

  v9 = sub_2516C8304(MEMORY[0x277D84F98], v8, (a2 + 16), (a3 + 16));

  a4(v9);
}

void sub_2516C7E2C(uint64_t *a1, id *a2, uint64_t *a3, unint64_t *a4)
{
  v46 = a1;
  v50 = *a2;
  swift_beginAccess();
  v5 = *a3;
  if (*a3 >> 62)
  {
LABEL_43:
    v6 = sub_251703474();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25307F910](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v8 = *(v5 + 8 * v7 + 32);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }
      }

      v51 = v8;
      v10 = [v8 region];
      v11 = [v10 regionCode];

      v12 = sub_251703164();
      v14 = v13;

      v15 = [v50 region];
      v16 = [v15 regionCode];

      v17 = sub_251703164();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {
        break;
      }

      v20 = sub_251703624();

      if (v20)
      {
        goto LABEL_18;
      }

      ++v7;
      if (v9 == v6)
      {
        goto LABEL_16;
      }
    }

LABEL_18:

    swift_beginAccess();
    v21 = *a4;
    if (*a4 >> 62)
    {
      v22 = sub_251703474();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      v23 = 0;
      a4 = (v21 & 0xFFFFFFFFFFFFFF8);
      v47 = v22;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x25307F910](v23, v21);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v24 = *(v21 + 8 * v23 + 32);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v49 = v24;
        v26 = [v24 region];
        v27 = [v26 regionCode];

        v28 = sub_251703164();
        v30 = v29;

        v31 = [v50 region];
        v32 = [v31 regionCode];

        v5 = sub_251703164();
        v34 = v33;

        if (v28 == v5 && v30 == v34)
        {
          break;
        }

        v35 = sub_251703624();

        if (v35)
        {
          goto LABEL_39;
        }

        ++v23;
        if (v25 == v47)
        {
          goto LABEL_33;
        }
      }

LABEL_39:

      v42 = v49;
    }

    else
    {
LABEL_33:

      v36 = [v50 region];
      v37 = [v51 appBundleID];
      if (v37)
      {
        v38 = v37;
        v39 = sub_251703164();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      v42 = sub_2516C0D88(v36, v39, v41);

      if (!v42)
      {

        return;
      }
    }

    v43 = [v50 region];
    v44 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *v46;
    sub_2516CEBB4(v44, v51, v42, v43, isUniquelyReferenced_nonNull_native);

    *v46 = v52;
  }

  else
  {
LABEL_16:
  }
}

id sub_2516C8304(id result, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v14 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v11)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x25307F910](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v9 = result;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = result;
      sub_2516C7E2C(&v14, &v13, a3, a4);

      if (v4)
      {
      }

      if (v10 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v11 = result;
    i = sub_251703474();
  }

  return result;
}

double ENManagerAdapter.fetchAgencyModel(for:reason:completionHandler:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_251703134();
  v10 = [objc_opt_self() regionWithCode_];

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v10;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  v12 = v5;
  v13 = v10;

  sub_2516C59C8(sub_2516B9B04, v11);

  return result;
}

void sub_2516C8508(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 manager];
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v13[4] = sub_2516CF950;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C8D9C;
  v13[3] = &block_descriptor_346;
  v11 = _Block_copy(v13);

  v12 = a2;

  [v9 fetchConfigurationsForRegion:v12 fetchReason:a3 completion:v11];
  _Block_release(v11);
}

void sub_2516C8628(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v33 = a3;
  if (a1)
  {
    v37 = MEMORY[0x277D84F90];
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251703474())
    {
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x25307F910](v10, a1, a3, a4);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_17;
          }

          v12 = *(a1 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v36 = v12;
        sub_2516C8958(&v36, a2, v33, &v35);

        if (v35)
        {
          MEMORY[0x25307F5B0]();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_251703224();
          }

          sub_251703244();
          v11 = v37;
        }

        ++v10;
        if (v14 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_20:
    if (v11 >> 62)
    {
      goto LABEL_39;
    }

    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_22:
      v16 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x25307F910](v16, v11, a3, a4);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:

LABEL_37:

            v29 = v33;
            goto LABEL_41;
          }
        }

        else
        {
          if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_39:
            v15 = sub_251703474();
            if (!v15)
            {
              break;
            }

            goto LABEL_22;
          }

          v17 = *(v11 + 8 * v16 + 32);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_35;
          }
        }

        v33 = v17;
        v19 = [*&v17[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] regionCode];
        v20 = sub_251703164();
        v22 = v21;

        v23 = [a7 regionCode];
        v24 = sub_251703164();
        v26 = v25;

        if (v20 == v24 && v22 == v26)
        {
          goto LABEL_36;
        }

        v28 = sub_251703624();

        if (v28)
        {
          goto LABEL_37;
        }

        ++v16;
      }

      while (v18 != v15);
    }

    v29 = 0;
LABEL_41:
    v34 = v29;
    a5();
  }

  else
  {
    (a5)(0, 0, a3, a4);
  }
}

id sub_2516C8958@<X0>(id *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  if (!a2)
  {
    goto LABEL_38;
  }

  v5 = a2;
  v48 = *a1;
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_37:
    v7 = sub_251703474();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_38:
    result = 0;
    goto LABEL_47;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_38;
  }

LABEL_4:
  a4 = 0;
  v45 = v5;
  v46 = v5 & 0xC000000000000001;
  while (!v46)
  {
    if (a4 >= *(v6 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v8 = *(v5 + 8 * a4 + 32);
    v9 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      goto LABEL_15;
    }

LABEL_8:
    v49 = v8;
    v10 = [v8 region];
    v11 = [v10 regionCode];

    v12 = sub_251703164();
    v14 = v13;

    v15 = [v48 region];
    v16 = [v15 regionCode];

    v17 = sub_251703164();
    v19 = v18;

    if (v12 == v17 && v14 == v19)
    {
      goto LABEL_16;
    }

    v20 = sub_251703624();

    if (v20)
    {
      goto LABEL_17;
    }

    ++a4;
    v5 = v45;
    if (v9 == v7)
    {
LABEL_32:
      result = 0;
      a4 = v43;
      goto LABEL_47;
    }
  }

  v8 = MEMORY[0x25307F910](a4, v5);
  v9 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
LABEL_16:

LABEL_17:
  if (a3)
  {
    v5 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 >> 62)
    {
      v6 = sub_251703474();
      if (v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_20:
        a4 = 0;
        while (1)
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x25307F910](a4, a3);
            v22 = a4 + 1;
            if (__OFADD__(a4, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (a4 >= *(v5 + 16))
            {
              goto LABEL_36;
            }

            v21 = *(a3 + 8 * a4 + 32);
            v22 = a4 + 1;
            if (__OFADD__(a4, 1))
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          v47 = v21;
          v23 = [v21 region];
          v24 = [v23 regionCode];

          v25 = sub_251703164();
          v27 = v26;

          v28 = [v48 region];
          v29 = [v28 regionCode];

          v30 = sub_251703164();
          v32 = v31;

          if (v25 == v30 && v27 == v32)
          {
            break;
          }

          v33 = sub_251703624();

          if (v33)
          {
            goto LABEL_34;
          }

          ++a4;
          v5 = a3 & 0xFFFFFFFFFFFFFF8;
          if (v22 == v6)
          {
            goto LABEL_40;
          }
        }

LABEL_34:
        a4 = v43;
        v35 = v49;
        v36 = v47;
        goto LABEL_45;
      }
    }
  }

LABEL_40:
  v37 = [v48 region];
  v38 = [v49 appBundleID];
  if (v38)
  {
    v39 = v38;
    v40 = sub_251703164();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
  }

  a4 = v43;
  v36 = sub_2516C0D88(v37, v40, v42);

  if (v36)
  {
    v35 = v49;
LABEL_45:
    result = sub_251694F00(v48, v35, v36, 0);
    goto LABEL_47;
  }

  result = 0;
LABEL_47:
  *a4 = result;
  return result;
}

uint64_t sub_2516C8D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_25168CD90(0, &qword_28151E918, 0x277CC5CA8);
    v8 = sub_251703214();
  }

  if (a3)
  {
    sub_25168CD90(0, &qword_28151E8D0, 0x277CC5CD8);
    a3 = sub_251703214();
  }

  if (a4)
  {
    sub_25168CD90(0, &qword_28151E8A8, 0x277CC5CB8);
    a4 = sub_251703214();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);
}

void sub_2516C8FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_251702D34();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_2516C9084(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 manager];
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2516C9158;
  v7[3] = &block_descriptor_418;
  v6 = _Block_copy(v7);

  [v5 getEntitiesWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_2516C9158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_25168CD90(0, &qword_28151E878, 0x277CC5C10);
    v9 = sub_251703214();
  }

  if (a4)
  {
    sub_25168CD90(0, &qword_28151E878, 0x277CC5C10);
    a4 = sub_251703214();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(a2, v9, a4, a5, a6);
}

void sub_2516C92AC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  if (a2)
  {
    sub_25168CD90(0, &qword_28151E878, 0x277CC5C10);
    v10 = sub_2517031F4();
  }

  if (a3)
  {
    sub_25168CD90(0, &qword_28151E878, 0x277CC5C10);
    a3 = sub_2517031F4();
  }

  if (a5)
  {
    v12 = sub_251702D34();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a6 + 16))(a6, a1, v10, a3, a4);
}

void sub_2516C93C8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251703474())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25307F910](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8];
      if (v13)
      {
        v18 = v10;
        v14 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId] == a3 && v13 == a4;
        if (v14 || (v15 = sub_251703624(), v11 = v18, (v15 & 1) != 0))
        {

          v16 = v18;
          goto LABEL_22;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v16 = 0;
LABEL_22:
  v19 = v16;
  a1();
}

double sub_2516C9594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;

  sub_2516C59C8(a6, v11);

  return result;
}

void sub_2516C9628(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
  v9 = v8;
  v21 = a2;
  v22 = a1;
  if (v8 >> 62)
  {
LABEL_20:
    v10 = sub_251703474();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x25307F910](v11, v9);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v20 = v23;
            goto LABEL_22;
          }
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v12 = *(v9 + 8 * v11 + 32);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_16;
          }
        }

        v23 = v12;
        v14 = [*&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] regionCode];
        v15 = sub_251703164();
        v17 = v16;

        if (v15 == a3 && v17 == a4)
        {
          goto LABEL_17;
        }

        v19 = sub_251703624();

        if (v19)
        {
          goto LABEL_18;
        }

        ++v11;
      }

      while (v13 != v10);
    }
  }

  v20 = 0;
LABEL_22:
  v24 = v20;
  v22();
}

void sub_2516C9828(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = _Block_copy(aBlock);
  v12 = sub_251703164();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = v15;
  v16[4] = v12;
  v16[5] = v14;
  v17 = a1;

  sub_2516C59C8(a8, v16);
}

void sub_2516C9930(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 manager];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_2516CF908;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2516C9B84;
  v8[3] = &block_descriptor_340;
  v7 = _Block_copy(v8);

  [v5 getRegionVisitHistoryWithCompletion_];
  _Block_release(v7);
}

unint64_t sub_2516C9A38(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!result)
  {
    return a3(0, 0);
  }

  v4 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    return a3(0, 0);
  }

  v15 = result;
  v5 = sub_251703474();
  result = v15;
  if (!v5)
  {
    return a3(0, 0);
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_15:
    v8 = MEMORY[0x25307F910](v7, result);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= *(v4 + 16))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = *(result + 8 * v7 + 32);
LABEL_9:
  v9 = v8;
  v10 = [v8 region];
  v11 = [v10 regionCode];

  v12 = sub_251703164();
  v14 = v13;

  a3(v12, v14);
}

void sub_2516C9BD4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_251703134();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void sub_2516C9C50(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 manager];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_2516CF8AC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2516C7C2C;
  v8[3] = &block_descriptor_334;
  v7 = _Block_copy(v8);

  [v5 allRegionConfigurationsWithCompletion_];
  _Block_release(v7);
}

void sub_2516C9D94(uint64_t a1, uint64_t a2)
{
  sub_25168CD90(0, &qword_28151E918, 0x277CC5CA8);
  v3 = sub_2517031F4();
  (*(a2 + 16))(a2, v3);
}

double ENManagerAdapter.setShareAnalytics(_:region:version:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a1;
  *(v13 + 40) = v6;
  *(v13 + 48) = a2;
  *(v13 + 56) = a5;
  *(v13 + 64) = a6;

  v14 = v6;
  v15 = a2;

  sub_2516C59C8(sub_2516CA030, v13);

  return result;
}

void sub_2516C9ED0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = objc_allocWithZone(MEMORY[0x277CC5CF0]);
  v13 = sub_251703134();
  v14 = [v12 initWithConsentVersion_];

  if (a3)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [v14 setDifferentialPrivacyConsent_];
  v16 = [a4 manager];
  v18[4] = a6;
  v18[5] = a7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2516C5814;
  v18[3] = &block_descriptor_328;
  v17 = _Block_copy(v18);

  [v16 setRegionUserConsent:v14 region:a5 completionHandler:v17];
  _Block_release(v17);
}

void sub_2516CA1E8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_251702D34();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

double ENManagerAdapter.setTravelStatus(_:region:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = v4;
  v11 = a2;

  sub_2516C59C8(sub_2516CA3EC, v9);

  return result;
}

void sub_2516CA300(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 manager];
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2516C5814;
  v11[3] = &block_descriptor_322;
  v10 = _Block_copy(v11);

  [v9 setTravelStatusEnabled:a2 & 1 region:a3 completionHandler:v10];
  _Block_release(v10);
}

void sub_2516CA51C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = [a1 manager];
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C6470;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  [v11 *a6];
  _Block_release(v12);
}

void sub_2516CA668(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = _Block_copy(aBlock);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a7;
  v14[5] = v13;
  v15 = a3;
  v17 = a1;
  v16 = v15;

  sub_2516C59C8(a8, v14);
}

void ENManagerAdapter.setPreAuthorizeDiagnosisKeysEnabled(enabled:for:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 manager];
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2516C5814;
  v11[3] = &block_descriptor_59;
  v10 = _Block_copy(v11);

  [v9 setPreAuthorizeDiagnosisKeysEnabled:a1 & 1 region:a2 completionHandler:v10];
  _Block_release(v10);
}

double ENManagerAdapter.setPreAuthorizeDiagnosisKeysEnabled(enabled:for:symptomOnset:hasTraveled:isVaccinated:completion:)(int a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v29 = a1;
  v30 = a5;
  v28 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v27[-v14];
  sub_251699D18(a3, &v27[-v14], &unk_27F4538B0, &unk_2517068C0);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = v16 + v13;
  v18 = (v17 + 25) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_2516ABAC8(v15, v19 + v16);
  v20 = (v19 + v17);
  *v20 = v28;
  v21 = v29;
  v20[1] = v30;
  v22 = v19 + ((v17 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v7;
  *(v22 + 8) = v21;
  *(v19 + v18) = a2;
  v23 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v31;
  v23[1] = a7;
  v24 = v7;
  v25 = a2;

  sub_2516C59C8(sub_2516ABB38, v19);

  return result;
}

void sub_2516CAB38(uint64_t a1, char a2, char a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v63 = a5;
  v60 = a4;
  v12 = sub_251702E24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - v17;
  sub_251699D18(a1, &v59 - v17, &unk_27F4538B0, &unk_2517068C0);
  v19 = type metadata accessor for SymptomOnset(0);
  v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  v21 = MEMORY[0x277D84F98];
  if (v20 != 1)
  {
    v59 = a6;
    if ((*(v13 + 48))(v18, 1, v12) == 1)
    {
      v22 = sub_251703164();
      v24 = v23;
      v68 = MEMORY[0x277D839B0];
      LOBYTE(aBlock) = 0;
      sub_251699CD8(&aBlock, v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v21;
      sub_2516CED6C(v65, v22, v24, isUniquelyReferenced_nonNull_native);

      v21 = v64;
    }

    else
    {
      (*(v13 + 32))(v15, v18, v12);
      v26 = sub_251703164();
      v28 = v27;
      v68 = MEMORY[0x277D839B0];
      LOBYTE(aBlock) = 1;
      sub_251699CD8(&aBlock, v65);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v21;
      sub_2516CED6C(v65, v26, v28, v29);

      v30 = v64;
      v31 = sub_251703164();
      v33 = v32;
      v68 = v12;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (*(v13 + 16))(boxed_opaque_existential_0, v15, v12);
      sub_251699CD8(&aBlock, v65);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v30;
      sub_2516CED6C(v65, v31, v33, v35);

      v21 = v64;
      (*(v13 + 8))(v15, v12);
    }

    a6 = v59;
  }

  if (a2 != 2)
  {
    v36 = sub_251703164();
    v38 = v37;
    v68 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = a2 & 1;
    sub_251699CD8(&aBlock, v65);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v21;
    sub_2516CED6C(v65, v36, v38, v39);

    v21 = v64;
  }

  if (a3 != 2)
  {
    v40 = sub_251703164();
    v42 = v41;
    v68 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = a3 & 1;
    sub_251699CD8(&aBlock, v65);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v21;
    sub_2516CED6C(v65, v40, v42, v43);
  }

  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v44 = sub_251702F84();
  __swift_project_value_buffer(v44, static Logger.general);
  v45 = sub_251702F64();
  v46 = sub_251703314();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&aBlock = v48;
    *v47 = 136315138;

    v49 = sub_251703114();
    v51 = v50;

    v52 = sub_251693FCC(v49, v51, &aBlock);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_25167E000, v45, v46, "have metadata: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x2530803C0](v48, -1, -1);
    MEMORY[0x2530803C0](v47, -1, -1);
  }

  v53 = [v60 manager];

  sub_2516CB1CC(v54);

  v55 = sub_2517030F4();

  v56 = swift_allocObject();
  v57 = v62;
  *(v56 + 16) = v61;
  *(v56 + 24) = v57;
  v69 = sub_2516CF884;
  v70 = v56;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v67 = sub_2516C5814;
  v68 = &block_descriptor_316;
  v58 = _Block_copy(&aBlock);

  [v53 setPreAuthorizeDiagnosisKeysEnabled:v63 & 1 region:a6 metadata:v55 completionHandler:v58];
  _Block_release(v58);
}

void sub_2516CB1CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454418, &unk_2517090E0);
    v2 = sub_2517035C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_251696894(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_251699CD8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_251699CD8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_251699CD8(v31, v32);
    v16 = sub_2517034B4();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_251699CD8(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

double sub_2516CB4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = v4;

  sub_2516C59C8(a4, v8);

  return result;
}

void sub_2516CB538(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 manager];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v10[4] = sub_2516CF878;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2516C5814;
  v10[3] = &block_descriptor_307;
  v8 = _Block_copy(v10);

  v9 = a1;

  [v6 setExposureNotificationEnabled:0 completionHandler:v8];
  _Block_release(v8);
}

void sub_2516CB658(uint64_t a1, void (*a2)(uint64_t, void, uint64_t, id), uint64_t a3, id a4)
{
  if (a1)
  {
    a2(a1, a2, a3, a4);
  }

  else
  {
    v6 = [a4 manager];
    v8[4] = a2;
    v8[5] = a3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_2516C5814;
    v8[3] = &block_descriptor_310;
    v7 = _Block_copy(v8);

    [v6 resetAllDataWithCompletionHandler_];
    _Block_release(v7);
  }
}

void sub_2516CB77C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a6;
  v12[4] = v11;
  v13 = a1;

  sub_2516C59C8(a7, v12);
}

void sub_2516CB86C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v15 = [a1 manager];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v19[4] = a6;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2516C5814;
  v19[3] = a7;
  v17 = _Block_copy(v19);
  v18 = a1;

  [v15 *a8];
  _Block_release(v17);
}

double sub_2516CB9D4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a7;
  v15[4] = v14;

  v16 = a1;
  v17 = a2;

  sub_2516C59C8(a8, v15);

  return result;
}

double sub_2516CBB00(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v11 = v5;

  sub_2516C59C8(a5, v10);

  return result;
}

void sub_2516CBB8C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 manager];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2516C5814;
  v9[3] = &block_descriptor_288;
  v8 = _Block_copy(v9);

  [v7 setWeeklySummaryAlertEnabled:a2 & 1 completion:v8];
  _Block_release(v8);
}

void sub_2516CBCBC(void *a1, int a2, char a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = _Block_copy(aBlock);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  *(v14 + 32) = a7;
  *(v14 + 40) = v13;
  v15 = a1;

  sub_2516C59C8(a8, v14);
}

double ENManagerAdapter.setUserConsent(_:region:text:version:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a1;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = v8;
  v17[8] = a2;
  v17[9] = a7;
  v17[10] = a8;

  v18 = v8;
  v19 = a2;

  sub_2516C59C8(sub_2516AB9CC, v17);

  return result;
}

void sub_2516CBE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = objc_allocWithZone(MEMORY[0x277CC5CF0]);
  v15 = sub_251703134();
  v16 = [v14 initWithConsentVersion_];

  [v16 setConsent_];
  if (a5)
  {
    a5 = sub_251703134();
  }

  [v16 setConsentText_];

  v17 = [a6 manager];
  v19[4] = a8;
  v19[5] = a9;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2516C5814;
  v19[3] = &block_descriptor_285;
  v18 = _Block_copy(v19);

  [v17 setRegionUserConsent:v16 region:a7 completionHandler:v18];
  _Block_release(v18);
}

double ENManagerAdapter.startTestVerificationSession(verificationCode:region:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a5;
  v12 = a3;

  v13 = v5;

  sub_2516C59C8(sub_2516CC344, v11);

  return result;
}

void sub_2516CC218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [a1 manager];
  v10 = sub_251703134();
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;
  v13[4] = sub_2516CF7E8;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516CC8BC;
  v13[3] = &block_descriptor_282;
  v12 = _Block_copy(v13);

  [v9 startTestVerificationSessionWithCode:v10 region:a4 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_2516CC354(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v40 = a2;
  v41 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454420, &unk_2517090F8);
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v39 - v10;
  v12 = sub_251702E64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251699D18(a1, v11, &qword_27F454000, &unk_251708500);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = v8;
    v39[1] = a4;
    v17 = v41;
    sub_25168B718(v11, &qword_27F454000, &unk_251708500);
    v18 = v40;
    if (v40)
    {
      v19 = v40;
      v20 = v16;
      if (qword_27F453888 != -1)
      {
        swift_once();
      }

      v21 = sub_251702F84();
      __swift_project_value_buffer(v21, static Logger.testVerification);
      v22 = v18;
      v23 = sub_251702F64();
      v24 = sub_251703324();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42 = v18;
        v43 = v26;
        *v25 = 136315138;
        v27 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
        v28 = sub_251703194();
        v30 = sub_251693FCC(v28, v29, &v43);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_25167E000, v23, v24, "Error when starting test verification: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x2530803C0](v26, -1, -1);
        MEMORY[0x2530803C0](v25, -1, -1);
      }

      *v20 = v18;
      swift_storeEnumTagMultiPayload();
      v31 = v18;
      v17(v20);
    }

    else
    {
      v20 = v16;
      if (qword_27F453888 != -1)
      {
        swift_once();
      }

      v33 = sub_251702F84();
      __swift_project_value_buffer(v33, static Logger.testVerification);
      v34 = sub_251702F64();
      v35 = sub_251703324();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_25167E000, v34, v35, "Did not receive any start test verification error", v36, 2u);
        MEMORY[0x2530803C0](v36, -1, -1);
      }

      type metadata accessor for ENError(0);
      v42 = 1;
      sub_251699708(MEMORY[0x277D84F90]);
      sub_2516CFAA4(&unk_27F453B60, type metadata accessor for ENError, &unk_251707C80);
      sub_251702D24();
      v37 = v43;
      *v20 = v43;
      swift_storeEnumTagMultiPayload();
      v38 = v37;
      v17(v20);
    }

    return sub_25168B718(v20, &qword_27F454420, &unk_2517090F8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    swift_storeEnumTagMultiPayload();
    v41(v8);
    sub_25168B718(v8, &qword_27F454420, &unk_2517090F8);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_2516CC8BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_251702E54();
    v10 = sub_251702E64();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_251702E64();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_25168B718(v8, &qword_27F454000, &unk_251708500);
}

double ENManagerAdapter.fetchTestMetadata(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_251702E64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v8 + 32))(v11 + v10, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  v13 = v3;

  sub_2516C59C8(sub_2516ABC0C, v11);

  return result;
}

void sub_2516CCB80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 manager];
  v7 = sub_251702E44();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2516CF78C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2516CD698;
  v10[3] = &block_descriptor_276;
  v9 = _Block_copy(v10);

  [v6 fetchTestMetadataForSession:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_2516CCC98(uint64_t a1, void *a2, void (*a3)(_DWORD *))
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454098, &qword_251708928);
  MEMORY[0x28223BE20](v5);
  v7 = (&v59 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v59 - v9;
  v11 = sub_251702E24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  if (a1)
  {
    v64 = 0x795474726F706572;
    v65 = 0xEA00000000006570;
    sub_2517034D4();
    if (*(a1 + 16) && (v18 = sub_2516D86A0(v66), (v19 & 1) != 0))
    {
      sub_251696894(*(a1 + 56) + 32 * v18, v67);
      sub_2516CF794(v66);
      sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v62 = v64;
        v61 = sub_251703734();
        v64 = 0x74706D7953736168;
        v65 = 0xEB00000000736D6FLL;
        sub_2517034D4();
        if (*(a1 + 16) && (v20 = sub_2516D86A0(v66), (v21 & 1) != 0))
        {
          sub_251696894(*(a1 + 56) + 32 * v20, v67);
          sub_2516CF794(v66);
          if (swift_dynamicCast())
          {
            v22 = v64;
            LODWORD(v60) = [v64 BOOLValue];

            if ((v60 & 1) == 0)
            {
              (*(v12 + 56))(v17, 1, 1, v11);
              goto LABEL_36;
            }

            v64 = 0xD000000000000010;
            v65 = 0x800000025170A9D0;
            sub_2517034D4();
            if (*(a1 + 16) && (v23 = sub_2516D86A0(v66), (v24 & 1) != 0))
            {
              sub_251696894(*(a1 + 56) + 32 * v23, v67);
              sub_2516CF794(v66);
              v25 = swift_dynamicCast();
              v26 = *(v12 + 56);
              v26(v10, v25 ^ 1u, 1, v11);
              if ((*(v12 + 48))(v10, 1, v11) != 1)
              {
                v60 = v26;
                v27 = *(v12 + 32);
                v27(v14, v10, v11);
                v27(v17, v14, v11);
                v60(v17, 0, 1, v11);
LABEL_36:
                v56 = 0;
                goto LABEL_34;
              }
            }

            else
            {
              sub_2516CF794(v66);
              (*(v12 + 56))(v10, 1, 1, v11);
            }

            sub_25168B718(v10, &unk_27F4538C0, &qword_2517090F0);
          }
        }

        else
        {
          sub_2516CF794(v66);
        }

        v56 = 1;
LABEL_34:
        v57 = type metadata accessor for SymptomOnset(0);
        (*(*(v57 - 8) + 56))(v17, v56, 1, v57);
        v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4540A0, &qword_251708930) + 48);
        *v7 = v61;
        sub_251699D18(v17, v7 + v58, &unk_27F4538B0, &unk_2517068C0);
        swift_storeEnumTagMultiPayload();
        v63(v7);

        sub_25168B718(v7, &qword_27F454098, &qword_251708928);
        v54 = v17;
        v52 = &unk_27F4538B0;
        v53 = &unk_2517068C0;
        return sub_25168B718(v54, v52, v53);
      }
    }

    else
    {
      sub_2516CF794(v66);
    }

    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v28 = sub_251702F84();
    __swift_project_value_buffer(v28, static Logger.testVerification);
    v29 = sub_251702F64();
    v30 = sub_251703324();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_25167E000, v29, v30, "Did not receive a report type", v31, 2u);
      MEMORY[0x2530803C0](v31, -1, -1);
    }

    type metadata accessor for ENError(0);
    v67[0] = 1;
    sub_251699708(MEMORY[0x277D84F90]);
    sub_2516CFAA4(&unk_27F453B60, type metadata accessor for ENError, &unk_251707C80);
    sub_251702D24();
    v32 = v66[0];
    *v7 = v66[0];
    swift_storeEnumTagMultiPayload();
    v33 = v32;
    v63(v7);
  }

  else if (a2)
  {
    v34 = a2;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v35 = sub_251702F84();
    __swift_project_value_buffer(v35, static Logger.testVerification);
    v36 = a2;
    v37 = sub_251702F64();
    v38 = sub_251703324();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v66[0] = v40;
      *v39 = 136315138;
      v67[0] = a2;
      v41 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v42 = sub_251703194();
      v44 = sub_251693FCC(v42, v43, v66);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_25167E000, v37, v38, "Did not receive any test metadata: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2530803C0](v40, -1, -1);
      MEMORY[0x2530803C0](v39, -1, -1);
    }

    *v7 = a2;
    swift_storeEnumTagMultiPayload();
    v45 = a2;
    v63(v7);
  }

  else
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v46 = sub_251702F84();
    __swift_project_value_buffer(v46, static Logger.testVerification);
    v47 = sub_251702F64();
    v48 = sub_251703324();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_25167E000, v47, v48, "Did not receive any test metadata error", v49, 2u);
      MEMORY[0x2530803C0](v49, -1, -1);
    }

    type metadata accessor for ENError(0);
    v67[0] = 1;
    sub_251699708(MEMORY[0x277D84F90]);
    sub_2516CFAA4(&unk_27F453B60, type metadata accessor for ENError, &unk_251707C80);
    sub_251702D24();
    v50 = v66[0];
    *v7 = v66[0];
    swift_storeEnumTagMultiPayload();
    v51 = v50;
    v63(v7);
  }

  v52 = &qword_27F454098;
  v53 = &qword_251708928;
  v54 = v7;
  return sub_25168B718(v54, v52, v53);
}

uint64_t sub_2516CD698(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_251703104();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

double ENManagerAdapter.finishSession(_:userDidConsent:symptomOnset:hasTraveled:isVaccinated:completionHandler:)(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v33 = a4;
  v34 = a5;
  v36 = a2;
  v32 = a1;
  v8 = sub_251702E64();
  v31 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v30 - v15;
  sub_251699D18(a3, &v30 - v15, &unk_27F4538B0, &unk_2517068C0);
  (*(v9 + 16))(v11, v32, v8);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = v17 + v14;
  v19 = (v17 + v14 + 9) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v9 + 80) + v19 + 8) & ~*(v9 + 80);
  v21 = v20 + v10;
  v22 = swift_allocObject();
  sub_2516ABAC8(v16, v22 + v17);
  v23 = (v22 + v18);
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;
  v25 = v35;
  *(v22 + v19) = v35;
  (*(v9 + 32))(v22 + v20, v11, v31);
  *(v22 + v21) = v36;
  v26 = v22 + (v21 & 0xFFFFFFFFFFFFFFF8);
  v27 = v38;
  *(v26 + 8) = v37;
  *(v26 + 16) = v27;
  v28 = v25;

  sub_2516C59C8(sub_2516BD1F8, v22);

  return result;
}

void sub_2516CD9A8(uint64_t a1, char a2, char a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v55 = a8;
  v52 = a4;
  v53 = a5;
  v12 = sub_251702E24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50[-v17];
  sub_251699D18(a1, &v50[-v17], &unk_27F4538B0, &unk_2517068C0);
  v19 = type metadata accessor for SymptomOnset(0);
  v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  v21 = MEMORY[0x277D84F98];
  if (v20 != 1)
  {
    v51 = a6;
    if ((*(v13 + 48))(v18, 1, v12) == 1)
    {
      v22 = sub_251703164();
      v24 = v23;
      v60 = MEMORY[0x277D839B0];
      LOBYTE(aBlock) = 0;
      sub_251699CD8(&aBlock, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v21;
      sub_2516CED6C(v57, v22, v24, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      (*(v13 + 32))(v15, v18, v12);
      v26 = sub_251703164();
      v28 = v27;
      v60 = MEMORY[0x277D839B0];
      LOBYTE(aBlock) = 1;
      sub_251699CD8(&aBlock, v57);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v21;
      sub_2516CED6C(v57, v26, v28, v29);

      v30 = v56;
      v31 = sub_251703164();
      v33 = v32;
      v60 = v12;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (*(v13 + 16))(boxed_opaque_existential_0, v15, v12);
      sub_251699CD8(&aBlock, v57);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v30;
      sub_2516CED6C(v57, v31, v33, v35);

      (*(v13 + 8))(v15, v12);
    }

    v21 = v56;
    LOBYTE(a6) = v51;
  }

  if (a2 != 2)
  {
    v36 = sub_251703164();
    v38 = v37;
    v60 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = a2 & 1;
    sub_251699CD8(&aBlock, v57);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v21;
    sub_2516CED6C(v57, v36, v38, v39);

    v21 = v56;
  }

  if (a3 != 2)
  {
    v40 = sub_251703164();
    v42 = v41;
    v60 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = a3 & 1;
    sub_251699CD8(&aBlock, v57);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v21;
    sub_2516CED6C(v57, v40, v42, v43);

    v21 = v56;
  }

  v44 = [v52 manager];
  v45 = sub_251702E44();
  sub_2516CB1CC(v21);

  v46 = sub_2517030F4();

  v47 = swift_allocObject();
  v48 = v55;
  *(v47 + 16) = v54;
  *(v47 + 24) = v48;
  v61 = sub_2516CF6FC;
  v62 = v47;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v59 = sub_2516C6470;
  v60 = &block_descriptor_270;
  v49 = _Block_copy(&aBlock);

  [v44 finishTestVerificationForSession:v45 userDidConsent:a6 & 1 metadata:v46 completionHandler:v49];
  _Block_release(v49);
}

double sub_2516CDF1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v11 = v5;
  v12 = a1;

  sub_2516C59C8(a5, v10);

  return result;
}

void sub_2516CDFA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 manager];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2516CF6F4;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2516CE400;
  v10[3] = &block_descriptor_264;
  v9 = _Block_copy(v10);

  [v7 startSelfReportWebSession:a2 completionHandler:v9];
  _Block_release(v9);
}

void sub_2516CE0B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void (*a6)(id *))
{
  if (a2)
  {
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = 0;
    (a6)(&v25, a2, a3, a4, a5);
  }

  else if (a5)
  {
    v8 = a5;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v9 = sub_251702F84();
    __swift_project_value_buffer(v9, static Logger.testVerification);
    v10 = a5;
    v11 = sub_251702F64();
    v12 = sub_251703324();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      v15 = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v16 = sub_251703194();
      v18 = sub_251693FCC(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_25167E000, v11, v12, "WebReport: Error when starting web report session: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2530803C0](v14, -1, -1);
      MEMORY[0x2530803C0](v13, -1, -1);
    }

    v25 = a5;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v19 = a5;
    a6(&v25);
  }

  else
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v20 = sub_251702F84();
    __swift_project_value_buffer(v20, static Logger.testVerification);
    v21 = sub_251702F64();
    v22 = sub_251703324();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25167E000, v21, v22, "WebReport: Unknown Error", v23, 2u);
      MEMORY[0x2530803C0](v23, -1, -1);
    }

    type metadata accessor for ENError(0);
    sub_251699708(MEMORY[0x277D84F90]);
    sub_2516CFAA4(&unk_27F453B60, type metadata accessor for ENError, &unk_251707C80);
    sub_251702D24();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v24 = v25;
    a6(&v25);
  }
}

uint64_t sub_2516CE400(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_251703164();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_251703164();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

unint64_t sub_2516CE534(uint64_t a1, uint64_t a2)
{
  sub_2517036E4();
  sub_2517031A4();
  v4 = sub_251703724();

  return sub_2516CE5AC(a1, a2, v4);
}

unint64_t sub_2516CE5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_251703624())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_2516CE664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454438, &qword_251709170);
  v41 = v4;
  v6 = sub_2517035B4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v41 & 1) == 0)
      {
        v26 = v21;
        v27 = v24;
        v28 = v23;
        v29 = v25;
      }

      v30 = sub_2517033A4();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v25;
      ++*(v7 + 16);
      v5 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v41)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_2516CE8FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F00, "̗");
  v34 = v4;
  v6 = sub_2517035B4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_251699CD8(v24, v35);
      }

      else
      {
        sub_251696894(v24, v35);
      }

      sub_2517036E4();
      sub_2517031A4();
      v25 = sub_251703724();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_251699CD8(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_2516CEBB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_2516D865C(a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_2516CE664(v17, a5 & 1);
      v12 = sub_2516D865C(a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_25168CD90(0, &qword_27F453DF0, 0x277CC5C98);
        sub_251703654();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      sub_2516CEF28();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    v23 = v22[7] + 24 * v12;
    v24 = *(v23 + 8);
    v31 = *v23;
    v25 = *(v23 + 16);
    *v23 = a1;
    *(v23 + 8) = a2;
    *(v23 + 16) = a3;

    return;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a4;
  v26 = (v22[7] + 24 * v12);
  *v26 = a1;
  v26[1] = a2;
  v26[2] = a3;
  v27 = v22[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;

  v29 = a4;
}

void sub_2516CED6C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2516CE534(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2516CF0B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2516CE8FC(v16, a4 & 1);
    v11 = sub_2516CE534(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_251703654();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_251699CD8(a1, v22);
  }

  else
  {
    sub_2516CEEBC(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2516CEEBC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_251699CD8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_2516CEF28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454438, &qword_251709170);
  v2 = *v0;
  v3 = sub_2517035A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;
        v24 = v18;
        v25 = v20;
        v26 = v21;
        v27 = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_2516CF0B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F00, "̗");
  v2 = *v0;
  v3 = sub_2517035A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_251696894(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251699CD8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0(uint64_t a1, uint64_t a2)
{
  if (!*MEMORY[0x277D6C158])
  {
    __break(1u);
    goto LABEL_5;
  }

  *MEMORY[0x277D6C158];
  v2 = TCCAccessCopyInformation();
  if (!v2)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v2;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454440, &qword_251709178);
  sub_251703204();
LABEL_6:
  __break(1u);
}

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_46Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2516CF8AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v2(v3);
}

uint64_t objectdestroy_303Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_296Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2516CFAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id OnboardingLegalConsentViewController.__allocating_init(flow:agencyModel:showsTurnOnExposureNotificationsAlert:shouldSetActiveRegion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  v11 = objc_allocWithZone(v5);
  ObjectType = swift_getObjectType();

  return sub_2516D1B00(a1, a3, v7, v6, v11, ObjectType, a2);
}

id OnboardingLegalConsentViewController.init(flow:agencyModel:showsTurnOnExposureNotificationsAlert:shouldSetActiveRegion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  ObjectType = swift_getObjectType();

  return sub_2516D1B00(a1, a3, v7, v6, v5, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingLegalConsentViewController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  sub_2516CFF04();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);

    [(*(v1 + 80))(ObjectType v1)];
    swift_unknownObjectRelease();
  }
}

void sub_2516CFF04()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v2 = 0xE000000000000000;
  sub_251702C94();
  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton];
  v4 = sub_251703134();

  [v3 setTitle:v4 forState:{0, 0xE000000000000000}];

  [v3 addTarget:v1 action:sel_didTapPrimaryButton forControlEvents:64];
  v5 = [v1 buttonTray];
  [v5 addButton_];

  sub_251702C94();
  v6 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton];
  v7 = sub_251703134();

  [v6 setTitle:v7 forState:{0, 0xE000000000000000}];

  [v6 addTarget:v1 action:sel_didTapSecondaryButton forControlEvents:64];
  v8 = [v1 buttonTray];
  [v8 addButton_];

  v9 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel];
  v10 = *(v9 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
  v11 = *(v9 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese);
  if (v11)
  {
    v12 = (v11 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text);
    v13 = *v12;
    v2 = v12[1];
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
  v15 = sub_2516DD44C(v10, v13, v2, 20.0, 20.0, 20.0, 20.0);
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

  v30 = [v27 constraintEqualToAnchor:v29 constant:10.0];
  *(v18 + 48) = v30;
  v31 = [v15 bottomAnchor];

  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v18 + 56) = v34;
  sub_25168B5B4();
  v35 = sub_2517031F4();

  [v17 activateConstraints_];

  v36 = [v1 navigationItem];
  v37 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v36 setRightBarButtonItem_];
}

void sub_2516D0500()
{
  if (v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] == 1)
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_251708520;
    v2 = (*(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header) + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title);
    v4 = *v2;
    v3 = v2[1];
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 64) = sub_25169F41C();
    *(v1 + 32) = v4;
    *(v1 + 40) = v3;

    sub_251703184();

    sub_251702C94();
    v5 = sub_251703134();

    v6 = sub_251703134();

    v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:{1, 0xE000000000000000}];

    sub_251702C94();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v9 = sub_251703134();

    v22 = sub_2516D1E30;
    v23 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_25169F470;
    v21 = &block_descriptor_22_0;
    v10 = _Block_copy(&aBlock);

    v11 = objc_opt_self();
    v12 = [v11 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
    _Block_release(v10);

    [v7 addAction_];
    sub_251702C94();
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = v7;
    v15 = sub_251703134();

    v22 = sub_251699CE8;
    v23 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_25169F470;
    v21 = &block_descriptor_28;
    v16 = _Block_copy(&aBlock);

    v17 = [v11 actionWithTitle:v15 style:1 handler:{v16, 0xE000000000000000}];
    _Block_release(v16);

    [v14 addAction_];
    [v14 setPreferredAction_];
    [v0 presentViewController:v14 animated:1 completion:0];
  }

  else
  {

    sub_2516D0A10();
  }
}

void sub_2516D0A10()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 80))(ObjectType, v1);
  v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel);
  v5 = *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese;
  if (*(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese))
  {
    v7 = v5;

    v8 = sub_251703134();

    if (*(v4 + v6))
    {
    }
  }

  else
  {
    v9 = v5;
    v8 = 0;
  }

  v10 = sub_251703134();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_2516D1DF0;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C5814;
  v13[3] = &block_descriptor_4_0;
  v12 = _Block_copy(v13);

  [v3 setUserConsent:2 region:v5 text:v8 version:v10 completion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

void sub_2516D0C58()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v1 = sub_251703134();

  v2 = sub_251703134();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{0, 0xE000000000000000}];

  sub_251702C94();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_251703134();

  v18 = sub_2516D1E00;
  v19 = v4;
  v15 = 1107296256;
  aBlock = MEMORY[0x277D85DD0];
  v16 = sub_25169F470;
  v17 = &block_descriptor_12;
  v6 = _Block_copy(&aBlock);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:2 handler:{v6, 0xE000000000000000}];
  _Block_release(v6);

  [v3 addAction_];
  sub_251702C94();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = v3;
  v11 = sub_251703134();

  v18 = sub_2516ABF30;
  v19 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_25169F470;
  v17 = &block_descriptor_18;
  v12 = _Block_copy(&aBlock);

  v13 = [v7 actionWithTitle:v11 style:1 handler:{v12, 0xE000000000000000}];
  _Block_release(v12);

  [v10 addAction_];
  [v0 presentViewController:v10 animated:1 completion:0];
}

void sub_2516D107C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_2516D10D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel);
  v2 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  if (*(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese))
  {
  }

  v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 80);
  v6 = v2;
  v7 = v5(ObjectType, v3);
  v8 = sub_251703134();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_2516D1DD0;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2516C5814;
  v11[3] = &block_descriptor_9;
  v10 = _Block_copy(v11);

  [v7 setUserConsent:1 region:v6 text:0 version:v8 completion:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();
}

void sub_2516D1380(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 96))(ObjectType, v5);
      v7(0);
    }

    else
    {
      v8 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion);
      v9 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
      v10 = swift_getObjectType();
      if (v8 == 1)
      {
        v11 = (*(v9 + 80))(v10, v9);
        v12 = *(*&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_2516D1DF8;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2516C5814;
        aBlock[3] = &block_descriptor_8;
        v14 = _Block_copy(aBlock);
        v15 = v12;

        [v11 setActiveRegion:v15 completion:v14];
        _Block_release(v14);

        swift_unknownObjectRelease();
      }

      else
      {
        v16 = *(v9 + 120);
        swift_unknownObjectRetain();
        v17 = v4;
        v16();
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2516D15B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
    ObjectType = swift_getObjectType();
    if (a1)
    {
      v7 = (*(v5 + 96))(ObjectType, v5);
      v7(0);
    }

    else
    {
      v8 = *(v5 + 120);
      swift_unknownObjectRetain();
      v9 = v4;
      v8();
      swift_unknownObjectRelease();
    }
  }
}

double sub_2516D16FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = a1 == 0;
    v6 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
    v7 = Strong;
    ObjectType = swift_getObjectType();
    v9 = (*(v6 + 96))(ObjectType, v6);
    v9(2 * v5);
  }

  return result;
}

id OnboardingLegalConsentViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id OnboardingLegalConsentViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id OnboardingLegalConsentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516D1B00(uint64_t a1, void *a2, char a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
  *&a5[v14] = [objc_opt_self() boldButton];
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
  *&a5[v15] = [objc_opt_self() linkButton];
  v16 = &a5[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
  *v16 = a1;
  v16[1] = a7;
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
  *&a5[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = a2;
  a5[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = a3;
  a5[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = a4;
  v18 = qword_28151EB58;
  swift_unknownObjectRetain();
  v19 = a2;
  if (v18 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251708520;
  v21 = (*&a5[v17] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v23 = *v21;
  v22 = v21[1];
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_25169F41C();
  *(v20 + 32) = v23;
  *(v20 + 40) = v22;

  sub_251703184();

  v24 = sub_251703134();

  v30.receiver = a5;
  v30.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v30, sel_initWithTitle_detailText_icon_contentLayout_, v24, 0, 0, 2, 0xE000000000000000);

  v26 = v25;
  [v26 set:1 shouldInlineButtontray:?];
  v27 = [v26 headerView];
  LODWORD(v28) = 1036831949;
  [v27 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v26;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t String.localized(source:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = sub_251702C94();
  if (*(a9 + 16))
  {
    v12 = sub_251703174();

    return v12;
  }

  return result;
}

uint64_t *LocalizationSource.sunset.unsafeMutableAddressor()
{
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  return &static LocalizationSource.sunset;
}

id sub_2516D1F6C()
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.exposureNotificationUI;
  static LocalizationSource.main = static NSBundle.exposureNotificationUI;
  *algn_28151F0D8 = 0xD000000000000028;
  qword_28151F0E0 = 0x800000025170F090;

  return v1;
}

uint64_t *LocalizationSource.main.unsafeMutableAddressor()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  return &static LocalizationSource.main;
}

uint64_t static LocalizationSource.main.getter()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v0 = static LocalizationSource.main;
  v1 = static LocalizationSource.main;

  return v0;
}

id sub_2516D20C0()
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.exposureNotificationUI;
  static LocalizationSource.states = static NSBundle.exposureNotificationUI;
  unk_27F457E00 = 0xD000000000000031;
  qword_27F457E08 = 0x800000025170F020;

  return v1;
}

uint64_t *LocalizationSource.states.unsafeMutableAddressor()
{
  if (qword_27F453860 != -1)
  {
    swift_once();
  }

  return &static LocalizationSource.states;
}

uint64_t static LocalizationSource.states.getter()
{
  if (qword_27F453860 != -1)
  {
    swift_once();
  }

  v0 = static LocalizationSource.states;
  v1 = static LocalizationSource.states;

  return v0;
}

id sub_2516D2214()
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.exposureNotificationUI;
  static LocalizationSource.sunset = static NSBundle.exposureNotificationUI;
  *algn_27F457E18 = 0xD00000000000002FLL;
  qword_27F457E20 = 0x800000025170F060;

  return v1;
}

uint64_t static LocalizationSource.sunset.getter()
{
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  v0 = static LocalizationSource.sunset;
  v1 = static LocalizationSource.sunset;

  return v0;
}

uint64_t sub_2516D232C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = sub_251702C94();
  if (*(a11 + 16))
  {
    v12 = sub_251703174();

    return v12;
  }

  return result;
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = sub_251702C94();
  if (*(a8 + 16))
  {
    v13 = sub_251703174();

    return v13;
  }

  return result;
}

id ENUILocalizedString(uint64_t a1)
{
  sub_251703164();
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();

  v1 = sub_251703134();

  return v1;
}

Swift::String __swiftcall localizedStringForObjC(_:)(Swift::String a1)
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v1 = sub_251702C94();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id ENUILocalizedStateString(uint64_t a1)
{
  sub_251703164();
  if (qword_27F453860 != -1)
  {
    swift_once();
  }

  sub_251702C94();

  v1 = sub_251703134();

  return v1;
}

Swift::String __swiftcall localizedStateStringForObjC(_:)(Swift::String a1)
{
  if (qword_27F453860 != -1)
  {
    swift_once();
  }

  v1 = sub_251702C94();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id ENUILocalizedSunsetString(uint64_t a1)
{
  sub_251703164();
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  sub_251702C94();

  v1 = sub_251703134();

  return v1;
}

Swift::String __swiftcall localizedSunsetStringForObjC(_:)(Swift::String a1)
{
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  v1 = sub_251702C94();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2516D2888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2516D28D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id VerificationCodeEntryViewController.init(flow:agencyModel:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v11 = sub_251702C94();
  v13 = v12;
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&v3[v10] = LoadingStatusView.init(with:backgroundColor:)(v11, v13, v14);
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_keyboardHeight] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_flow] = a1;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_healthAgencyModel] = a2;

  v16 = a2;
  if ([v16 supportsFeatures_])
  {
    sub_251699D18(v16 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v9, &qword_27F453E10, &unk_251708160);
    v17 = sub_251702DA4();
    v18 = (*(*(v17 - 8) + 48))(v9, 1, v17) != 1;
    sub_25168B718(v9, &qword_27F453E10, &unk_251708160);
  }

  else
  {
    v18 = 0;
  }

  v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_regionSupportsWebReport] = v18;
  v24.receiver = v3;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 defaultCenter];
  [v22 addObserver:v21 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];

  return v21;
}

id VerificationCodeEntryViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall VerificationCodeEntryViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_2516D30AC();
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

void sub_2516D30AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v166 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = v6;
  [v6 addLayoutGuide_];

  v8 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setPreservesSuperviewLayoutMargins_];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = v9;
  v178 = v4;
  v179 = v5;
  [v9 addSubview_];

  v11 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView] = v8;
  v12 = v8;

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v176 = static LocalizationSource.main;
  sub_251702C94();
  sub_251702C94();
  v13 = objc_allocWithZone(MEMORY[0x277D37640]);
  v14 = sub_251703134();

  v15 = sub_251703134();

  v174 = [v13 initWithTitle:v14 detailText:v15 icon:0];

  v16 = [objc_allocWithZone(ENUIVerificationCodeEntryView) init];
  v17 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v177 = v12;

  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v17;
  v21[5] = v18;
  v184 = sub_2516D8C60;
  v185 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v181 = 1107296256;
  v182 = sub_251693A80;
  v183 = &block_descriptor_10;
  v22 = _Block_copy(&aBlock);

  [v16 setDidEnterDigit_];
  _Block_release(v22);
  v23 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v184 = sub_2516D8C84;
  v185 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v181 = 1107296256;
  v182 = sub_251693A80;
  v183 = &block_descriptor_16;
  v24 = _Block_copy(&aBlock);

  [v16 setDidEnterCode_];
  _Block_release(v24);
  v25 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView] = v16;
  v172 = v16;

  LODWORD(v173) = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_regionSupportsWebReport];
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v26 = swift_allocObject();
  v169 = xmmword_251708520;
  *(v26 + 16) = xmmword_251708520;
  v171 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_healthAgencyModel];
  v28 = *&v171[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v27 = *&v171[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_25169F41C();
  *(v26 + 32) = v28;
  *(v26 + 40) = v27;

  v170 = sub_251703184();
  v175 = v29;

  v176 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  v30 = sub_251703134();
  v31 = [objc_opt_self() systemImageNamed_];

  if (v31)
  {
    v32 = [objc_opt_self() systemBlueColor];
    v33 = [v31 imageWithTintColor_];
  }

  else
  {
    v33 = 0;
  }

  v34 = v176;
  [v176 setImage_];

  v35 = objc_opt_self();
  v36 = *MEMORY[0x277D76918];
  v37 = [v35 preferredFontForTextStyle_];
  sub_2516D4CA8(v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  v39 = *MEMORY[0x277D740D0];
  *(inited + 32) = *MEMORY[0x277D740D0];
  *(inited + 16) = v169;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 4;
  v40 = v39;
  sub_251698DC4(inited);
  swift_setDeallocating();
  sub_25168B718(inited + 32, &qword_27F453F18, &qword_2517083C0);
  v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v42 = sub_251703134();
  type metadata accessor for Key(0);
  sub_2516D8D8C(&qword_28151E910, type metadata accessor for Key, &unk_251707D20);
  v43 = sub_2517030F4();

  v44 = [v41 initWithString:v42 attributes:v43];

  v45 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v46 = sub_251703134();
  v47 = [v45 initWithString_];

  *&v169 = v44;
  [v47 appendAttributedString_];
  v48 = [objc_opt_self() attributedStringWithAttachment_];
  [v47 appendAttributedString_];

  type metadata accessor for MultilineButton();
  v49 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v49 addTarget:v1 action:sel_didTapHelpButton forControlEvents:64];
  v50 = v49;
  v168 = v47;
  [v50 setAttributedTitle:v47 forState:0];
  v51 = [v50 titleLabel];
  if (v51)
  {
    v52 = v51;
    [v51 setTextAlignment_];
  }

  v53 = [v50 titleLabel];

  [v53 setNumberOfLines_];
  v54 = [v50 titleLabel];

  v55 = v177;
  if (v54)
  {
    v56 = [v35 preferredFontForTextStyle_];
    [v54 setFont_];
  }

  v57 = [v50 titleLabel];

  [v57 setAdjustsFontForContentSizeCategory_];
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_251707F60;
  v59 = v174;
  v60 = v172;
  *(v58 + 32) = v174;
  *(v58 + 40) = v60;
  aBlock = v58;
  v61 = v178;
  sub_251699D18(&v171[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL], v178, &qword_27F453E10, &unk_251708160);
  v62 = sub_251702DA4();
  v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
  v172 = v60;
  v171 = v59;
  sub_25168B718(v61, &qword_27F453E10, &unk_251708160);
  v64 = v173 ^ 1;
  if (v63 != 1)
  {
    v64 = 0;
  }

  v65 = v179;
  if ((v64 & 1) == 0)
  {
    v66 = v50;
    MEMORY[0x25307F5B0]();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_251703224();
    }

    sub_251703244();
    v58 = aBlock;
  }

  v67 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v68 = sub_2517031F4();
  v69 = [v67 initWithArrangedSubviews_];

  [v69 setSpacing_];
  [v69 setAxis_];
  [v69 setAlignment_];
  [v69 setDistribution_];
  v70 = v69;
  [v70 setTranslatesAutoresizingMaskIntoConstraints_];
  v178 = v70;
  [v55 addSubview_];
  v71 = [v1 view];
  if (!v71)
  {
    goto LABEL_35;
  }

  v72 = v71;
  v166[1] = v58;
  v167 = v50;
  v174 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_statusView];
  [v71 addSubview_];

  v73 = [v1 view];
  if (!v73)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v74 = v73;
  v75 = [v73 bottomAnchor];

  v76 = [v65 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  v78 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint];
  v166[0] = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint;
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint] = v77;

  v79 = [v178 topAnchor];
  v80 = [v55 topAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  v82 = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint;
  v83 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint] = v81;

  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_251709260;
  v85 = [v55 leadingAnchor];
  v86 = [v1 view];
  if (!v86)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v87 = v86;
  v88 = [v86 leadingAnchor];

  v89 = [v85 constraintEqualToAnchor_];
  *(v84 + 32) = v89;
  v90 = [v55 trailingAnchor];
  v91 = [v1 view];
  if (!v91)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v92 = v91;
  v93 = [v91 trailingAnchor];

  v94 = [v90 constraintEqualToAnchor_];
  *(v84 + 40) = v94;
  v95 = [v55 topAnchor];
  v96 = [v1 view];
  if (!v96)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v97 = v96;
  v173 = v82;
  v98 = [v96 topAnchor];

  v99 = [v95 constraintEqualToAnchor_];
  *(v84 + 48) = v99;
  v100 = [v55 bottomAnchor];
  v101 = [v1 view];
  if (!v101)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v102 = v101;
  v103 = [v101 bottomAnchor];

  v104 = [v100 constraintEqualToAnchor_];
  *(v84 + 56) = v104;
  v105 = [v55 contentLayoutGuide];
  v106 = [v105 heightAnchor];

  v107 = [v179 heightAnchor];
  v108 = [v106 constraintGreaterThanOrEqualToAnchor_];

  *(v84 + 64) = v108;
  v109 = v178;
  v110 = [v178 leadingAnchor];
  v111 = [v55 layoutMarginsGuide];
  v112 = [v111 leadingAnchor];

  v113 = [v110 &selRef:v112 notifyChangeObserversForChangeFrom:? to:? + 5];
  *(v84 + 72) = v113;
  v114 = [v109 trailingAnchor];
  v115 = [v55 layoutMarginsGuide];
  v116 = [v115 trailingAnchor];

  v117 = [v114 &selRef:v116 notifyChangeObserversForChangeFrom:? to:? + 5];
  *(v84 + 80) = v117;
  v118 = *&v1[v173];
  if (!v118)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v84 + 88) = v118;
  v119 = v118;
  v120 = [v55 bottomAnchor];

  v121 = [v109 bottomAnchor];
  v122 = [v120 constraintEqualToAnchor:v121 constant:24.0];

  *(v84 + 96) = v122;
  v123 = v174;
  v124 = [v174 leadingAnchor];
  v125 = [v1 view];
  if (!v125)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v126 = v125;
  v127 = [v125 leadingAnchor];

  v128 = [v124 constraintEqualToAnchor_];
  *(v84 + 104) = v128;
  v129 = [v123 trailingAnchor];
  v130 = [v1 view];
  if (!v130)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v131 = v130;
  v132 = [v130 trailingAnchor];

  v133 = [v129 constraintEqualToAnchor_];
  *(v84 + 112) = v133;
  v134 = [v123 topAnchor];
  v135 = [v1 view];
  if (!v135)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v136 = v135;
  v137 = [v135 topAnchor];

  v138 = [v134 constraintEqualToAnchor_];
  *(v84 + 120) = v138;
  v139 = [v123 bottomAnchor];
  v140 = v179;
  v141 = [v179 bottomAnchor];
  v142 = [v139 constraintEqualToAnchor_];

  *(v84 + 128) = v142;
  v143 = [v140 leadingAnchor];
  v144 = [v1 &selRef_systemImageNamed_];
  if (!v144)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v145 = v144;
  v146 = [v144 leadingAnchor];

  v147 = [v143 constraintEqualToAnchor_];
  *(v84 + 136) = v147;
  v148 = [v140 trailingAnchor];
  v149 = [v1 &selRef_systemImageNamed_];
  if (!v149)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v150 = v149;
  v151 = [v149 trailingAnchor];

  v152 = [v148 constraintEqualToAnchor_];
  *(v84 + 144) = v152;
  v153 = [v140 topAnchor];
  v154 = [v1 &selRef_systemImageNamed_];
  if (!v154)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v155 = v154;
  v156 = [v154 safeAreaLayoutGuide];

  v157 = [v156 topAnchor];
  v158 = [v153 constraintEqualToAnchor_];

  *(v84 + 152) = v158;
  v159 = *&v1[v166[0]];
  v160 = v178;
  if (v159)
  {
    v161 = objc_opt_self();
    v162 = v159;

    *(v84 + 160) = v162;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v163 = sub_2517031F4();

    [v161 activateConstraints_];

    v164 = [v1 navigationItem];
    v165 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
    [v164 setRightBarButtonItem_];

    return;
  }

LABEL_48:
  __break(1u);
}

void sub_2516D47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      [v6 layoutFrame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = swift_unknownObjectUnownedLoadStrong();
      v17 = [v16 view];

      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = swift_unknownObjectUnownedLoadStrong();
      [v18 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = swift_unknownObjectUnownedLoadStrong();
      [v17 convertRect:v27 fromCoordinateSpace:{v20, v22, v24, v26}];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v77.origin.x = v9;
      v77.origin.y = v11;
      v77.size.width = v13;
      v77.size.height = v15;
      v80.origin.x = v29;
      v80.origin.y = v31;
      v80.size.width = v33;
      v80.size.height = v35;
      if (!CGRectContainsRect(v77, v80))
      {
        v36 = swift_unknownObjectUnownedLoadStrong();
        v37 = v5;
        [v36 bounds];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        v46 = swift_unknownObjectUnownedLoadStrong();
        [v37 convertRect:v46 fromCoordinateSpace:{v39, v41, v43, v45}];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v78.origin.x = v48;
        v78.origin.y = v50;
        v78.size.width = v52;
        v78.size.height = v54;
        MidY = CGRectGetMidY(v78);
        [v37 adjustedContentInset];
        v56 = v55;
        v58 = v57;
        [v37 bounds];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;

        v67 = UIEdgeInsetsInsetRect(v60, v62, v64, v66, v56, v58);
        v69 = v68;
        v71 = v70;
        v73 = v72;
        [v37 contentOffset];
        v75 = v74;
        v79.origin.x = v67;
        v79.origin.y = v69;
        v79.size.width = v71;
        v79.size.height = v73;
        [v37 setContentOffset:1 animated:{v75, MidY + CGRectGetHeight(v79) * -0.5 - v56}];
      }
    }

    else
    {
      v7 = v5;
    }
  }
}

void sub_2516D4AC0()
{
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView];
  if (v1)
  {
    v2 = [v1 stringValue];
    v3 = sub_251703164();
    v5 = v4;

    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_statusView];
    v8 = *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView];
    v9 = v0;
    [v8 startAnimating];
    [v7 setHidden_];
    if (qword_28151EB60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static ENManagerAdapter.defaultAdapter;
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = sub_2516D8CD0;
    v11[4] = v6;
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v3;
    v12[4] = v5;
    v12[5] = 0;
    v12[6] = sub_2516D8CD8;
    v12[7] = v11;
    v13 = v10;
    v14 = v9;
    v15 = v13;

    sub_2516C59C8(sub_2516CC344, v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_2516D4CA8(void *a1)
{
  v3 = [v1 image];
  if (v3)
  {
    v4 = v3;
    [v3 size];
    [v4 size];
    [a1 pointSize];
    [a1 pointSize];
    [v1 bounds];
    [v1 setBounds_];
    [a1 capHeight];
    [v1 bounds];
    [v1 bounds];
    [v1 setBounds_];
  }
}

Swift::Void __swiftcall VerificationCodeEntryViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1);
  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView];
  if (v3)
  {
    [v3 becomeFirstResponder];
  }
}

void sub_2516D4ED0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 safeAreaInsets];

    v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView;
    v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView];
    if (v4)
    {
      v5 = v4;
      [v5 contentInset];
      [v5 setContentInset_];

      v6 = *&v0[v3];
      if (v6)
      {
        v7 = v6;
        [v7 horizontalScrollIndicatorInsets];
        [v7 setHorizontalScrollIndicatorInsets_];

        v8 = *&v0[v3];
        if (v8)
        {
          v9 = v8;
          [v9 verticalScrollIndicatorInsets];
          [v9 setVerticalScrollIndicatorInsets_];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall VerificationCodeEntryViewController.viewSafeAreaInsetsDidChange()()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewSafeAreaInsetsDidChange);
  sub_2516D4ED0();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_keyboardHeight];
    v3 = v1;
    v4 = [v0 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_12;
    }

    v5 = v4;
    [v4 safeAreaInsets];
    v7 = v6;

    if (v2 > v7)
    {
      v8 = v2;
    }

    else
    {
      v8 = v7;
    }

    [v3 setConstant_];
  }

  v9 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint];
  if (!v9)
  {
    return;
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  Height = CGRectGetHeight(v28);
  v22 = [v0 view];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = Height * 0.09;
  [v22 safeAreaInsets];
  v26 = v25;

  [v11 setConstant_];
}

void sub_2516D5214()
{
  v1 = v0;
  v2 = sub_251702C74();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  sub_251703164();
  sub_2517034D4();
  if (!*(v3 + 16) || (v4 = sub_2516D86A0(v34), (v5 & 1) == 0))
  {

    sub_2516CF794(v34);
LABEL_16:
    v35 = 0u;
    v36 = 0u;
    goto LABEL_17;
  }

  sub_251696894(*(v3 + 56) + 32 * v4, &v35);
  sub_2516CF794(v34);

  if (!*(&v36 + 1))
  {
LABEL_17:
    sub_25168B718(&v35, &qword_27F454430, qword_251709108);
    return;
  }

  type metadata accessor for CGRect(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = *v34;
  v7 = *&v34[1];
  v8 = *&v34[2];
  v9 = *&v34[3];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10;
  v12 = [v10 window];

  if (!v12)
  {
    return;
  }

  v13 = v12;
  [v13 bounds];
  Height = CGRectGetHeight(v37);
  v38.origin.x = v6;
  v38.origin.y = v7;
  v38.size.width = v8;
  v38.size.height = v9;
  if (Height <= CGRectGetMinY(v38))
  {

    goto LABEL_20;
  }

  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v39.origin.x = v16;
  v39.origin.y = v18;
  v39.size.width = v20;
  v39.size.height = v22;
  v23 = CGRectGetHeight(v39);
  v40.origin.x = v6;
  v40.origin.y = v7;
  v40.size.width = v8;
  v40.size.height = v9;
  MinY = CGRectGetMinY(v40);
  v25 = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_keyboardHeight;
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_keyboardHeight] = v23 - MinY;
  sub_2516D4ED0();
  v26 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint];
  if (!v26)
  {
LABEL_20:

    return;
  }

  v27 = *&v1[v25];
  v28 = v26;
  v29 = [v1 view];
  if (!v29)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 safeAreaInsets];
  v32 = v31;

  if (v27 > v32)
  {
    v33 = v27;
  }

  else
  {
    v33 = v32;
  }

  [v28 setConstant_];
}

void sub_2516D5594()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_251702DA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_healthAgencyModel];
  if (v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_regionSupportsWebReport] == 1)
  {
    v10 = objc_allocWithZone(type metadata accessor for WebReportViewController());
    v11 = v9;
    v12 = WebReportViewController.init(agencyModel:)(v9);
    v18 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v18 setModalPresentationStyle_];
    [v1 presentViewController:v18 animated:1 completion:0];

    v13 = v18;
  }

  else
  {
    sub_251699D18(v9 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v4, &qword_27F453E10, &unk_251708160);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_25168B718(v4, &qword_27F453E10, &unk_251708160);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v14 = objc_allocWithZone(MEMORY[0x277CDB700]);
      v15 = sub_251702D74();
      v16 = [v14 initWithURL_];

      [v16 setModalPresentationStyle_];
      [v1 presentViewController:v16 animated:1 completion:0];

      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_2516D58A0(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_251702E64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251699D18(a1, v9, &qword_27F454000, &unk_251708500);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_25168B718(v9, &qword_27F454000, &unk_251708500);
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_flow];
  (*(v11 + 16))(v7, v13, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  v18 = a2;
  sub_2516D8CF4(v7, v16 + v17);
  swift_endAccess();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_2516D8CEC;
  v19[4] = v15;
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v20 = v18;

  v21 = sub_251703364();
  sub_2516AAE70(sub_2516D8D64, v19);

  return (*(v11 + 8))(v13, v10);
}

void sub_2516D5BAC(uint64_t a1, char *a2)
{
  if (!a1)
  {
    v3 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_flow];
    v4 = sub_2516A3A24(v3);
    if (v4)
    {
      v8 = v4;
      v5 = [a2 navigationController];
      if (v5)
      {
        v6 = v5;
        [v5 pushViewController:v8 animated:1];
      }
    }

    else
    {
      swift_beginAccess();
      v7 = *(v3 + 16);

      v7(1);
    }
  }
}

void sub_2516D5CE8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = sub_251702E64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454420, &unk_2517090F8);
  MEMORY[0x28223BE20](v13);
  v15 = (v30 - v14);
  v30[1] = a2;
  v16 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_statusView);
  [*&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] stopAnimating];
  [v16 setHidden_];
  sub_251699D18(a1, v15, &qword_27F454420, &unk_2517090F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v31;
    v17 = v32;
    v19 = *v15;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v20 = sub_251702F84();
    __swift_project_value_buffer(v20, static Logger.testVerification);
    v21 = v19;
    v22 = sub_251702F64();
    v23 = sub_251703324();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v19;
      v34 = v25;
      *v24 = 136315138;
      v26 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v27 = sub_251703194();
      v29 = sub_251693FCC(v27, v28, &v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_25167E000, v22, v23, "Failed to start test verification session: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x2530803C0](v25, -1, -1);
      MEMORY[0x2530803C0](v24, -1, -1);
    }

    sub_2516D60C4(v19, v18, v17);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    (*(v10 + 16))(v8, v12, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v31(v8);
    sub_25168B718(v8, &qword_27F454000, &unk_251708500);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2516D60C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  _s3__C4CodeOMa_0(0);
  aBlock = 1;
  sub_2516D8D8C(&qword_27F453B98, _s3__C4CodeOMa_0, &unk_251707D64);
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v7 = sub_251702F84();
    __swift_project_value_buffer(v7, static Logger.testVerification);
    v8 = a1;
    v9 = sub_251702F64();
    v10 = sub_251703324();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = a3;
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v11 = 136315138;
      v14 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v15 = sub_251703194();
      v17 = sub_251693FCC(v15, v16, &aBlock);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_25167E000, v9, v10, "Test Verification Unknown error %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v18 = v13;
      a3 = v12;
      MEMORY[0x2530803C0](v18, -1, -1);
      MEMORY[0x2530803C0](v11, -1, -1);
    }

    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
    goto LABEL_39;
  }

  aBlock = 2;
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v19 = sub_251702F84();
    __swift_project_value_buffer(v19, static Logger.testVerification);
    v20 = a1;
    v21 = sub_251702F64();
    v22 = sub_251703324();

    v150 = a3;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136315138;
      v25 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v26 = sub_251703194();
      v28 = sub_251693FCC(v26, v27, &aBlock);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_25167E000, v21, v22, "Verification Code Invalid error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2530803C0](v24, -1, -1);
      MEMORY[0x2530803C0](v23, -1, -1);
    }

    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_251708520;
    v30 = (*&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v31 = v4;
    v32 = *v30;
    v33 = v30[1];
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_25169F41C();
    *(v29 + 32) = v32;
    *(v29 + 40) = v33;
    v4 = v31;

    sub_251703184();

    a3 = v150;
    goto LABEL_39;
  }

  aBlock = 3;
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v34 = sub_251702F84();
    __swift_project_value_buffer(v34, static Logger.testVerification);
    v35 = a1;
    v36 = sub_251702F64();
    v37 = sub_251703324();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = a3;
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v38 = 136315138;
      v41 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v42 = sub_251703194();
      v44 = sub_251693FCC(v42, v43, &aBlock);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_25167E000, v36, v37, "Verification Code Expired error: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v45 = v40;
      a3 = v39;
      MEMORY[0x2530803C0](v45, -1, -1);
      MEMORY[0x2530803C0](v38, -1, -1);
    }

    v46 = v4;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

LABEL_38:
    sub_251702C94();
    sub_251702C94();
    v4 = v46;
    goto LABEL_39;
  }

  aBlock = 4;
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v47 = sub_251702F84();
    __swift_project_value_buffer(v47, static Logger.testVerification);
    v48 = a1;
    v49 = sub_251702F64();
    v50 = sub_251703324();

    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_36;
    }

    v51 = swift_slowAlloc();
    v52 = a3;
    v53 = swift_slowAlloc();
    aBlock = v53;
    *v51 = 136315138;
    v54 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
    v55 = sub_251703194();
    v57 = sub_251693FCC(v55, v56, &aBlock);

    *(v51 + 4) = v57;
    v58 = "Test Verification Invalid Server Response error: %s";
LABEL_35:
    _os_log_impl(&dword_25167E000, v49, v50, v58, v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v65 = v53;
    a3 = v52;
    MEMORY[0x2530803C0](v65, -1, -1);
    MEMORY[0x2530803C0](v51, -1, -1);
LABEL_36:

    v46 = v4;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    goto LABEL_38;
  }

  aBlock = 6;
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v59 = sub_251702F84();
    __swift_project_value_buffer(v59, static Logger.testVerification);
    v60 = a1;
    v49 = sub_251702F64();
    v50 = sub_251703324();

    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_36;
    }

    v51 = swift_slowAlloc();
    v52 = a3;
    v53 = swift_slowAlloc();
    aBlock = v53;
    *v51 = 136315138;
    v61 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
    v62 = sub_251703194();
    v64 = sub_251693FCC(v62, v63, &aBlock);

    *(v51 + 4) = v64;
    v58 = "Test Verification Server error: %s";
    goto LABEL_35;
  }

  aBlock = 7;
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v76 = sub_251702F84();
    __swift_project_value_buffer(v76, static Logger.testVerification);
    v77 = a1;
    v78 = sub_251702F64();
    v79 = sub_251703324();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = a3;
      v82 = swift_slowAlloc();
      aBlock = v82;
      *v80 = 136315138;
      v83 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v84 = sub_251703194();
      v86 = sub_251693FCC(v84, v85, &aBlock);

      *(v80 + 4) = v86;
      _os_log_impl(&dword_25167E000, v78, v79, "Test Verification Server Rate Limit error: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v87 = v82;
      a3 = v81;
      MEMORY[0x2530803C0](v87, -1, -1);
      MEMORY[0x2530803C0](v80, -1, -1);
    }

    v46 = v4;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    goto LABEL_38;
  }

  aBlock = 8;
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v88 = sub_251702F84();
    __swift_project_value_buffer(v88, static Logger.testVerification);
    v89 = a1;
    v90 = sub_251702F64();
    v91 = sub_251703324();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = a3;
      v94 = swift_slowAlloc();
      aBlock = v94;
      *v92 = 136315138;
      v95 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v96 = sub_251703194();
      v98 = sub_251693FCC(v96, v97, &aBlock);

      *(v92 + 4) = v98;
      _os_log_impl(&dword_25167E000, v90, v91, "Test Verification Server Timeout error: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      v99 = v94;
      a3 = v93;
      MEMORY[0x2530803C0](v99, -1, -1);
      MEMORY[0x2530803C0](v92, -1, -1);
    }

    v46 = v4;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    goto LABEL_38;
  }

  aBlock = 9;
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v100 = sub_251702F84();
    __swift_project_value_buffer(v100, static Logger.testVerification);
    v101 = a1;
    v102 = sub_251702F64();
    v103 = sub_251703324();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = a3;
      v106 = swift_slowAlloc();
      aBlock = v106;
      *v104 = 136315138;
      v107 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v108 = sub_251703194();
      v110 = sub_251693FCC(v108, v109, &aBlock);

      *(v104 + 4) = v110;
      _os_log_impl(&dword_25167E000, v102, v103, "Test Verification Region Unavailable error: %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      v111 = v106;
      a3 = v105;
      MEMORY[0x2530803C0](v111, -1, -1);
      MEMORY[0x2530803C0](v104, -1, -1);
    }

    v46 = v4;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    goto LABEL_38;
  }

  aBlock = 10;
  if (sub_251702CA4())
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v112 = sub_251702F84();
    __swift_project_value_buffer(v112, static Logger.testVerification);
    v113 = a1;
    v114 = sub_251702F64();
    v115 = sub_251703324();

    if (!os_log_type_enabled(v114, v115))
    {
      goto LABEL_74;
    }

    v116 = swift_slowAlloc();
    v117 = a3;
    v118 = swift_slowAlloc();
    aBlock = v118;
    *v116 = 136315138;
    v119 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
    v120 = sub_251703194();
    v122 = sub_251693FCC(v120, v121, &aBlock);

    *(v116 + 4) = v122;
    v123 = "Test Verification Region Unsupported error: %s";
    goto LABEL_73;
  }

  aBlock = 11;
  if ((sub_251702CA4() & 1) == 0)
  {
    type metadata accessor for Code(0);
    aBlock = 5;
    sub_2516D8D8C(&qword_27F453B40, type metadata accessor for Code, &unk_251707CE8);
    if ((sub_251702CA4() & 1) == 0)
    {
      if (qword_27F453888 != -1)
      {
        swift_once();
      }

      v144 = sub_251702F84();
      __swift_project_value_buffer(v144, static Logger.testVerification);
      v145 = a1;
      v49 = sub_251702F64();
      v50 = sub_251703324();

      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_36;
      }

      v51 = swift_slowAlloc();
      v52 = a3;
      v53 = swift_slowAlloc();
      aBlock = v53;
      *v51 = 136315138;
      v146 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v147 = sub_251703194();
      v149 = sub_251693FCC(v147, v148, &aBlock);

      *(v51 + 4) = v149;
      v58 = "Unhandled Test Verification error: %s";
      goto LABEL_35;
    }

    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v138 = sub_251702F84();
    __swift_project_value_buffer(v138, static Logger.testVerification);
    v139 = a1;
    v114 = sub_251702F64();
    v115 = sub_251703324();

    if (!os_log_type_enabled(v114, v115))
    {
LABEL_74:

      v46 = v4;
      if (qword_28151EB58 != -1)
      {
        swift_once();
      }

      goto LABEL_38;
    }

    v116 = swift_slowAlloc();
    v117 = a3;
    v118 = swift_slowAlloc();
    aBlock = v118;
    *v116 = 136315138;
    v140 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
    v141 = sub_251703194();
    v143 = sub_251693FCC(v141, v142, &aBlock);

    *(v116 + 4) = v143;
    v123 = "Test Verification Unsupported error: %s";
LABEL_73:
    _os_log_impl(&dword_25167E000, v114, v115, v123, v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v118);
    v124 = v118;
    a3 = v117;
    MEMORY[0x2530803C0](v124, -1, -1);
    MEMORY[0x2530803C0](v116, -1, -1);
    goto LABEL_74;
  }

  if (qword_27F453888 != -1)
  {
    swift_once();
  }

  v125 = sub_251702F84();
  __swift_project_value_buffer(v125, static Logger.testVerification);
  v126 = a1;
  v127 = sub_251702F64();
  v128 = sub_251703324();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = a3;
    v131 = swift_slowAlloc();
    aBlock = v131;
    *v129 = 136315138;
    v132 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
    v133 = sub_251703194();
    v135 = sub_251693FCC(v133, v134, &aBlock);

    *(v129 + 4) = v135;
    _os_log_impl(&dword_25167E000, v127, v128, "Test Verification Network error: %s", v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v131);
    v136 = v131;
    a3 = v130;
    MEMORY[0x2530803C0](v136, -1, -1);
    MEMORY[0x2530803C0](v129, -1, -1);
  }

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  if ([objc_opt_self() wapiCapability])
  {
    v137 = 1312902231;
  }

  else
  {
    v137 = 1229343063;
  }

  aBlock = 0;
  v153 = 0xE000000000000000;
  sub_251703534();
  MEMORY[0x25307F580](0xD00000000000002ALL, 0x800000025170E430);
  MEMORY[0x25307F580](v137, 0xE400000000000000);

  MEMORY[0x25307F580](0x4D5F524F5252455FLL, 0xEE00454741535345);
  sub_251702C94();

LABEL_39:
  v66 = sub_251703134();

  v67 = sub_251703134();

  v68 = [objc_opt_self() alertControllerWithTitle:v66 message:v67 preferredStyle:{1, 0xE000000000000000}];

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v69 = swift_allocObject();
  *(v69 + 16) = a2;
  *(v69 + 24) = a3;

  v70 = sub_251703134();

  v156 = sub_2516D8CE4;
  v157 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v153 = 1107296256;
  v154 = sub_25169F470;
  v155 = &block_descriptor_31_0;
  v71 = _Block_copy(&aBlock);

  v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:{v71, 0xE000000000000000}];
  _Block_release(v71);

  [v68 addAction_];
  [v4 presentViewController:v68 animated:1 completion:0];
  v73 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView];
  if (v73)
  {
    v74 = v73;
    v75 = sub_251703134();
    [v74 setStringValue_];
  }
}