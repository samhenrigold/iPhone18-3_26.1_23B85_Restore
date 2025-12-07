id sub_240921DD8@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_240921ECC(char a1)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AISAAUISignInViewController();
  v17.receiver = v1;
  v17.super_class = v7;
  objc_msgSendSuper2(&v17, sel_viewDidAppear_, a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) == 1)
  {
    *(v1 + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) = 0;
    result = [v1 username];
    if (result)
    {
      v9 = result;
      v10 = sub_240A2BF4C();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        result = [v1 canEditUsername];
        if ((result & 1) == 0)
        {
          return [v1 nextButtonTapped];
        }
      }
    }
  }

  else
  {
    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C29C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "triggerNextButtonTappedOnAppear already triggered. Skipping", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_24092225C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AISAAUISignInViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2409222B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C2CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "AAUISignInViewControllerWrapper makeUIViewController", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v10 = [objc_allocWithZone(type metadata accessor for AISAAUISignInViewController()) initWithNibName:0 bundle:0];
  [v10 setAllowsAccountCreation_];
  [v10 setShowServiceIcons_];
  v11 = *(a2 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_selectedMember);
  if (v11)
  {
    v12 = [v11 appleID];
  }

  else
  {
    v12 = 0;
  }

  [v10 setUsername_];

  v13 = [v10 username];
  v14 = v13;
  if (v13)
  {
  }

  [v10 setCanEditUsername_];
  [v10 setDelegate_];
  v15 = *(a2 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step + 8);
  ObjectType = swift_getObjectType();
  (*(v15 + 32))(ObjectType, v15);
  v17 = sub_240A2C15C();

  [v10 setPrivacyLinkIdentifiers_];

  v18 = sub_240986400();
  [v10 setHeaderImage_];

  [v10 setTableViewStyle_];
  v19 = [objc_opt_self() secondarySystemBackgroundColor];
  [v10 setCellBackgroundColor_];

  [v10 setShouldShowSystemBackButton_];
  [v10 setChildSetupFlow_];
  if ([v10 respondsToSelector_])
  {
    [v10 setHideCreationAndForgotPasswordButton_];
  }

  return v10;
}

uint64_t sub_240922640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409228A4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2409226A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409228A4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240922708(uint64_t a1)
{
  sub_2409228A4();
  sub_240A2B7CC();
  __break(1u);
}

unint64_t sub_24092276C()
{
  result = qword_27E50B900;
  if (!qword_27E50B900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B908, &qword_240A314A0);
    sub_2409227F8();
    sub_24092284C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B900);
  }

  return result;
}

unint64_t sub_2409227F8()
{
  result = qword_27E50B910;
  if (!qword_27E50B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B910);
  }

  return result;
}

unint64_t sub_24092284C()
{
  result = qword_27E50B918;
  if (!qword_27E50B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B918);
  }

  return result;
}

unint64_t sub_2409228A4()
{
  result = qword_27E50B920[0];
  if (!qword_27E50B920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E50B920);
  }

  return result;
}

uint64_t sub_2409228F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_240922998(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t NonReactiveState.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t sub_240922B4C(uint64_t a1)
{
  v3 = *v1;
  sub_240922ED4(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_240922BC8(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_2409228F8(v9);
  return sub_240922CDC;
}

void sub_240922CDC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_240922ED4(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_240922ED4(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NonReactiveState.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_240922ED4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_240922998(v2);
}

uint64_t sub_240922F90(uint64_t a1)
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

uint64_t sub_2409230D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_240919298(a3, v25 - v10, &unk_27E50B420, &qword_240A30800);
  v12 = sub_240A2C24C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_240919300(v11, &unk_27E50B420, &qword_240A30800);
  }

  else
  {
    sub_240A2C23C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_240A2C1BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_240A2BFBC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2409233D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_240919298(a3, v25 - v10, &unk_27E50B420, &qword_240A30800);
  v12 = sub_240A2C24C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_240919300(v11, &unk_27E50B420, &qword_240A30800);
  }

  else
  {
    sub_240A2C23C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_240A2C1BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_240A2BFBC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB08, &qword_240A31670);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB08, &qword_240A31670);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2409236E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2409F6188(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_240925A1C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_240938B64();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_240A28CDC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2409237E0()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50B9B0);
  __swift_project_value_buffer(v0, qword_27E50B9B0);
  return sub_240A2AE5C();
}

uint64_t sub_24092382C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_240A2946C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[6] = v4;
  v2[7] = sub_240A2C21C();
  v2[8] = sub_240A2C20C();
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_24092394C;

  return sub_2409DC2D8(v4);
}

uint64_t sub_24092394C()
{
  *(*v1 + 80) = v0;

  v3 = sub_240A2C1BC();
  if (v0)
  {
    v4 = sub_240923BC0;
  }

  else
  {
    v4 = sub_240923AA8;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_240923AA8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  v5 = swift_allocObject();
  swift_weakInit();

  sub_240923F54(v4, v1, sub_240926BD4, v5);

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_240923BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240923C30(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_240A2C24C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_240A2C21C();

  v10 = a2;
  v11 = sub_240A2C20C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a3;
  v12[5] = a1;
  v12[6] = a2;
  sub_2409233D4(0, 0, v8, &unk_240A31690, v12);
}

uint64_t sub_240923D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a4;
  v6[7] = a6;
  v6[5] = a1;
  sub_240A2C21C();
  v6[8] = sub_240A2C20C();
  v8 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240923E14, v8, v7);
}

uint64_t sub_240923E14()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2409DD518(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240923EBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240915E50;

  return sub_24092382C(a1);
}

void sub_240923F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler);
  v9 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler);
  v10 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler + 8);
  *v8 = a3;
  v8[1] = a4;

  sub_24090C1A0(v9, v10);
  v11 = [objc_opt_self() defaultStore];
  if (v11)
  {
    v12 = v11;
    v22 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    [v22 setDelegate_];
    v13 = [objc_allocWithZone(MEMORY[0x277CECA58]) initWithAccountManager:v22 presenter:a1];
    v14 = OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_remoteUIPresenter;
    v15 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_remoteUIPresenter);
    *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_remoteUIPresenter) = v13;
    v16 = v13;

    if (v16)
    {
      [v16 setDelegate_];
    }

    v17 = *(v4 + v14);
    if (v17)
    {
      v18 = v17;
      v19 = sub_240A2943C();
      v20 = swift_allocObject();
      *(v20 + 16) = a3;
      *(v20 + 24) = a4;
      aBlock[4] = sub_240926950;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_240A1EFE0;
      aBlock[3] = &block_descriptor_3;
      v21 = _Block_copy(aBlock);

      [v18 loadRequest:v19 completion:v21];

      _Block_release(v21);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24092418C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7D0, &unk_240A315C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v3 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  v4 = v3;
  v5 = [a1 accountStore];
  v6 = [v5 aa_primaryAppleAccount];

  if (v6)
  {
    *(inited + 40) = v6;
    sub_2409265DC(inited);
    swift_setDeallocating();
    sub_240919300(inited + 32, &qword_27E50B9D0, &unk_240A356C0);
  }

  else
  {
    __break(1u);
  }
}

void sub_2409243EC(void *a1)
{
  sub_240A2ABAC();
  if (v2)
  {
    v3 = sub_240A2BF1C();

    sub_240A2ABEC();
    if (v4)
    {
LABEL_3:
      v6 = sub_240A2BF1C();

      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    sub_240A2ABEC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  [a1 ak:v3 addAuthorizationHeaderWithAltIdentityToken:v6 forAltDSID:?];
}

void sub_24092450C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler + 8);
    swift_beginAccess();
    sub_24090C23C(v1, v2);

    v1(v3, 0);
    sub_24090C1A0(v1, v2);
  }
}

uint64_t sub_240924650(void *a1)
{
  v1 = [a1 allHeaderFields];
  v2 = sub_240A2BEBC();

  strcpy(v12, "X-Apple-DSID");
  BYTE13(v12[0]) = 0;
  HIWORD(v12[0]) = -5120;
  sub_240A2C44C();
  if (*(v2 + 16) && (v3 = sub_240925A94(v11), (v4 & 1) != 0))
  {
    sub_240913DC0(*(v2 + 56) + 32 * v3, v10);
    sub_2409266D4(v11);
    sub_24091C780(v10, v12);
    sub_240913DC0(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    if (swift_dynamicCast())
    {
      v5 = *&v10[0];
    }

    else
    {
      v5 = 0;
    }

    swift_beginAccess();
    sub_2409236E8(v5, 1684632420, 0xE400000000000000);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_2409266D4(v11);
  }

  *&v12[0] = 0xD000000000000014;
  *(&v12[0] + 1) = 0x8000000240A3B080;
  sub_240A2C44C();
  if (*(v2 + 16) && (v6 = sub_240925A94(v11), (v7 & 1) != 0))
  {
    sub_240913DC0(*(v2 + 56) + 32 * v6, v10);
    sub_2409266D4(v11);

    sub_24091C780(v10, v12);
    sub_240913DC0(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    if (swift_dynamicCast())
    {
      v8 = *&v10[0];
    }

    else
    {
      v8 = 0;
    }

    swift_beginAccess();
    sub_2409236E8(v8, 0x44495344746C61, 0xE700000000000000);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    return sub_2409266D4(v11);
  }
}

void sub_240924A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v27 = sub_240A2BF4C();
  v28 = v5;
  sub_240A2C44C();
  if (*(a1 + 16) && (v6 = sub_240925A94(v29), (v7 & 1) != 0))
  {
    sub_240913DC0(*(a1 + 56) + 32 * v6, v30);
    sub_2409266D4(v29);
    if (swift_dynamicCast())
    {
      v9 = v27;
      v8 = v28;
      if (v9 == sub_240A2BF4C() && v8 == v10)
      {

LABEL_17:
        v21 = sub_240A2C24C();
        (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_240A2C21C();

        v23 = sub_240A2C20C();
        v24 = swift_allocObject();
        v25 = MEMORY[0x277D85700];
        v24[2] = v23;
        v24[3] = v25;
        v24[4] = v22;

        sub_2409230D4(0, 0, v4, &unk_240A315D8, v24);

        return;
      }

      v12 = sub_240A2C66C();

      if (v12)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    sub_2409266D4(v29);
  }

  if (qword_27E50AEC0 != -1)
  {
    swift_once();
  }

  v13 = sub_240A2B00C();
  __swift_project_value_buffer(v13, qword_27E50B9B0);

  v14 = sub_240A2AFFC();
  v15 = sub_240A2C29C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v16 = 136315138;
    v18 = sub_240A2BECC();
    v20 = sub_240925464(v18, v19, v29);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2408FE000, v14, v15, "AISFlowStepChildMigration: RemoteUI handled button %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245CCDDB0](v17, -1, -1);
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }
}

uint64_t sub_240924DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_240A2C21C();
  *(v4 + 48) = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240924E54, v6, v5);
}

uint64_t sub_240924E54()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27E50AEC0 != -1)
    {
      swift_once();
    }

    v3 = sub_240A2B00C();
    __swift_project_value_buffer(v3, qword_27E50B9B0);
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C29C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "AISFlowStepChildMigration: User did not agree to family or iCloud terms. Tearing down flow", v6, 2u);
      MEMORY[0x245CCDDB0](v6, -1, -1);
    }

    v7 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler + 8];
      sub_24090C23C(*&v2[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler], v8);
      v9 = sub_24092624C(MEMORY[0x277D84F90]);
      sub_240926FD4();
      v10 = swift_allocError();
      *v11 = xmmword_240A315B0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      v7(v9, v10);
      sub_24090C1A0(v7, v8);
    }

    else
    {
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

id RemoteUIPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteUIPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteUIPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409251F0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2409252E8;

  return v6(a1);
}

uint64_t sub_2409252E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240925408(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_240925464(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_240925464(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_240925530(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_240913DC0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_240925530(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24092563C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_240A2C4CC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24092563C(uint64_t a1, unint64_t a2)
{
  v3 = sub_240925688(a1, a2);
  sub_2409257B8(&unk_28528BBE0);
  return v3;
}

void *sub_240925688(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2409258A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_240A2C4CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_240A2C0EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2409258A4(v10, 0);
        result = sub_240A2C46C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2409257B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_240925918(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2409258A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB30, &qword_240A316C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_240925918(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB30, &qword_240A316C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_240925A0C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_240925A1C(uint64_t a1, uint64_t a2)
{
  sub_240A2C72C();
  sub_240A2C09C();
  v4 = sub_240A2C74C();

  return sub_240925C00(a1, a2, v4);
}

unint64_t sub_240925A94(uint64_t a1)
{
  v2 = sub_240A2C42C();

  return sub_240925CB8(a1, v2);
}

unint64_t sub_240925AD8(uint64_t a1)
{
  sub_240A2BF4C();
  sub_240A2C72C();
  sub_240A2C09C();
  v2 = sub_240A2C74C();

  return sub_240925F40(a1, v2);
}

unint64_t sub_240925B68(uint64_t a1)
{
  sub_240A299DC();
  sub_240926A1C(&qword_27E50BAC0, MEMORY[0x277CED3D8], MEMORY[0x277CED3E0]);
  v2 = sub_240A2BEEC();

  return sub_240925D80(a1, v2);
}

unint64_t sub_240925C00(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_240A2C66C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_240925CB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24092702C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CCD100](v9, a1);
      sub_2409266D4(v9);
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

unint64_t sub_240925D80(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_240A299DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_240926A1C(&qword_27E50BAC8, MEMORY[0x277CED3D8], MEMORY[0x277CED3E8]);
      v15 = sub_240A2BF0C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_240925F40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_240A2BF4C();
      v8 = v7;
      if (v6 == sub_240A2BF4C() && v8 == v9)
      {
        break;
      }

      v11 = sub_240A2C66C();

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

uint64_t sub_240926044(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_240926138;

  return v5(v2 + 32);
}

uint64_t sub_240926138()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_24092624C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
    v3 = sub_240A2C5CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_240925A1C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_240926374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C010, &unk_240A31650);
    v3 = sub_240A2C5CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_240919298(v4, &v13, &qword_27E50BB00, &unk_240A38260);
      v5 = v13;
      v6 = v14;
      result = sub_240925A1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24091C780(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2409264C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BAE0, &qword_240A31648);
    v3 = sub_240A2C5CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_240925A1C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2409265DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB38, &unk_240A316D0);
    v3 = sub_240A2C5CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_240925AD8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_240926728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_240924DBC(a1, v4, v5, v6);
}

uint64_t sub_240926950(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    v4 = *(v2 + 16);
    v6 = sub_24092624C(MEMORY[0x277D84F90]);
    v4(v6, a2);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
}

{
}

unint64_t sub_2409269D0()
{
  result = qword_27E50C600;
  if (!qword_27E50C600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50C600);
  }

  return result;
}

uint64_t sub_240926A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240926A64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return sub_240926044(a1, v4);
}

uint64_t sub_240926B1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240915E50;

  return sub_240926044(a1, v4);
}

uint64_t sub_240926BDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240916360;

  return sub_240923D78(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_240926CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
    v3 = sub_240A2C5CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_240919298(v4, v13, &qword_27E50BB48, &qword_240A316E0);
      result = sub_240925A94(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_24091C780(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_240926E04(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_240A2C5CC();
    v10 = a1 + 32;

    while (1)
    {
      sub_240919298(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_240925AD8(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_24091C780(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_240926F1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return sub_2409251F0(a1, v4);
}

unint64_t sub_240926FD4()
{
  result = qword_27E50DCF0;
  if (!qword_27E50DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DCF0);
  }

  return result;
}

uint64_t sub_240927088@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = sub_240A299DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB78, &qword_240A32E80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  sub_240919298(v5, v18 - v12, &qword_27E50BB78, &qword_240A32E80);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710);
    return (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_2409272C4()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50BB60);
  __swift_project_value_buffer(v0, qword_27E50BB60);
  return sub_240A2AE9C();
}

uint64_t sub_240927310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB78, &qword_240A32E80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_240A2992C();
  v7 = sub_240A299DC();
  v8 = (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  MEMORY[0x28223BE20](v8);
  *&v10[-16] = a1;
  sub_240927088(sub_240927538, &v10[-32], a2);
  return sub_240919300(v6, &qword_27E50BB78, &qword_240A32E80);
}

uint64_t sub_240927468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710) + 48);
  v7 = sub_240A299DC();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = sub_240A2995C();
  return (*(*(v8 - 8) + 16))(a3 + v6, a2, v8);
}

uint64_t type metadata accessor for FamilyPicker(uint64_t a1)
{
  result = qword_27E50BB88;
  if (!qword_27E50BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409275CC(uint64_t a1)
{
  sub_240927750(319, &qword_27E50BB98, &qword_27E50BBA0, &qword_240A31740, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_240927750(319, &qword_27E50BBA8, &qword_27E50BBB0, &qword_240A31748, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_240927750(319, &qword_27E50BBB8, &unk_27E50BFC0, &qword_240A31750, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_240927750(319, &qword_27E50BBC0, &qword_27E50BFD0, qword_240A31758, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_240919DC0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240927750(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2409277D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2C53C();
  v44 = *(v4 - 8);
  v45 = *(v44 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = sub_240A2C55C();
  v42 = *(v10 - 8);
  v43 = *(v42 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for FamilyPicker(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  *a1 = sub_240A2B58C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBC8, &qword_240A317B0);
  sub_240927C50(v2, a1 + *(v18 + 44));
  sub_24092AE2C(v2, &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v40 = swift_allocObject();
  sub_24092AE90(&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v19);
  sub_240A2C54C();
  v39 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBD0, &qword_240A317C8) + 36));
  sub_240A2B2CC();
  sub_240A2C22C();
  v47 = xmmword_240A31700;
  sub_24092DDF4(&qword_27E50BBD8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  v37 = v7;
  v38 = v10;
  sub_240A2C69C();
  sub_24092DDF4(&qword_27E50BBE0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  v36 = v4;
  sub_240A2C56C();
  v20 = v44;
  (*(v44 + 8))(v7, v4);
  v21 = *(v20 + 32);
  v21(v7, v9, v4);
  v46 = 1;
  v22 = v41;
  v23 = v42 + 32;
  v24 = *(v42 + 32);
  v24(v41, v14, v10);
  v25 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v26 = (v45 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v23 + 48) + v26 + 17) & ~*(v23 + 48);
  v28 = (v43 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v21((v29 + v25), v37, v36);
  v30 = v29 + v26;
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = v46;
  result = (v24)(v29 + v27, v22, v38);
  v32 = (v29 + v28);
  v33 = v40;
  *v32 = &unk_240A317C0;
  v32[1] = v33;
  v34 = v39;
  *v39 = &unk_240A317D8;
  v34[1] = v29;
  return result;
}

uint64_t sub_240927C50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for FamilyPicker(0);
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_240A2AFDC();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v21 = a1[2];
  v8 = v21;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC08, &qword_240A31888);
  sub_240A2BC5C();
  v21 = v8;
  v22 = v9;
  sub_240A2BC5C();
  if (v23 >> 62)
  {
    sub_240A2C59C();
  }

  v11 = a1[5];
  v23 = a1[4];
  v10 = v23;
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC20, &qword_240A318D0);
  sub_240A2BC7C();
  sub_240A2AFCC();
  v21 = v10;
  v22 = v11;
  sub_240A2BC5C();
  v21 = v23;
  sub_24092AE2C(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v13 = swift_allocObject();
  sub_24092AE90(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFC0, &qword_240A31750);
  sub_24092DDF4(&qword_27E50BC28, MEMORY[0x277D435C8], MEMORY[0x277D435C0]);
  sub_24092DC20();
  v14 = v19;
  sub_240A2BAFC();

  return (*(v18 + 8))(v7, v14);
}

uint64_t sub_240927F68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_240A299DC();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *a2;
  if (qword_27E50AEC8 != -1)
  {
    swift_once();
  }

  v16 = sub_240A2B00C();
  __swift_project_value_buffer(v16, qword_27E50BB60);

  v17 = sub_240A2AFFC();
  v18 = sub_240A2C29C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43 = a3;
    v44 = v12;
    v42 = v20;
    v45 = v15;
    v46[0] = v20;
    *v19 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFC0, &qword_240A31750);
    v21 = sub_240A2BF9C();
    v23 = v6;
    v24 = sub_240925464(v21, v22, v46);

    *(v19 + 4) = v24;
    v6 = v23;
    _os_log_impl(&dword_2408FE000, v17, v18, "selected member changed to %s", v19, 0xCu);
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    v26 = v25;
    a3 = v43;
    v12 = v44;
    MEMORY[0x245CCDDB0](v26, -1, -1);
    MEMORY[0x245CCDDB0](v19, -1, -1);
  }

  if (v15)
  {
    sub_240A2AF7C();
    if (v27)
    {

      sub_240A299AC();
      v28 = a3[1];
      v46[0] = *a3;
      v46[1] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC10, &qword_240A31890);
      sub_240A2BC5C();
      v29 = v45;
      if (*(v45 + 16))
      {
        v30 = sub_240925B68(v8);
        if (v31)
        {
          v32 = v30;
          v43 = v8;
          v33 = *(v29 + 56);
          v34 = sub_240A2995C();
          v42 = v5;
          v35 = v34;
          v36 = *(v34 - 8);
          v44 = v12;
          v37 = a3;
          v38 = v36;
          (*(v36 + 16))(v14, v33 + *(v36 + 72) * v32, v34);

          (*(v6 + 8))(v43, v42);

          (*(v38 + 56))(v14, 0, 1, v35);
          a3 = v37;
          v12 = v44;
          goto LABEL_12;
        }
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  v39 = sub_240A2995C();
  (*(*(v39 - 8) + 56))(v14, 1, 1, v39);
LABEL_12:
  v40 = type metadata accessor for FamilyPicker(0);
  sub_240919298(v14, v12, &qword_27E50BFD0, qword_240A31758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718);
  sub_240A2BCFC();
  result = sub_240919300(v14, &qword_27E50BFD0, qword_240A31758);
  if (v15)
  {

    if (sub_240A2AF5C())
    {
      (*(a3 + *(v40 + 36)))();
    }
  }

  return result;
}

uint64_t sub_2409284AC()
{
  *(v0 + 72) = sub_240A2C21C();
  *(v0 + 80) = sub_240A2C20C();
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240928544, v2, v1);
}

uint64_t sub_240928544()
{
  v1 = v0[8];

  v2 = *(v1 + 24);
  v0[2] = *(v1 + 16);
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC08, &qword_240A31888);
  sub_240A2BC5C();
  v0[11] = v0[6];

  return MEMORY[0x2822009F8](sub_2409285E4, 0, 0);
}

uint64_t sub_2409285E4()
{
  v1 = v0[11];
  if (v1 >> 62)
  {
    v9 = sub_240A2C59C();

    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
LABEL_3:
      if (qword_27E50AEC8 != -1)
      {
        swift_once();
      }

      v3 = sub_240A2B00C();
      __swift_project_value_buffer(v3, qword_27E50BB60);
      v4 = sub_240A2AFFC();
      v5 = sub_240A2C29C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_2408FE000, v4, v5, "Presentables non-empty, or members empty, skipping image fetch", v6, 2u);
        MEMORY[0x245CCDDB0](v6, -1, -1);
      }

      v7 = v0[1];

      return v7();
    }
  }

  v0[12] = sub_240A2C20C();
  v11 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24092879C, v11, v10);
}

uint64_t sub_24092879C()
{
  v1 = v0[8];

  v2 = v1[1];
  v0[4] = *v1;
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC10, &qword_240A31890);
  sub_240A2BC5C();
  v0[13] = v0[7];

  return MEMORY[0x2822009F8](sub_24092883C, 0, 0);
}

uint64_t sub_24092883C()
{
  v1 = *(v0[13] + 16);

  if (v1)
  {
    v2 = v0[8];
    v3 = sub_240A2995C();
    v4 = swift_task_alloc();
    v0[14] = v4;
    *(v4 + 16) = v2;
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_240928A2C;
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v5, v3, v6, 0, 0, &unk_240A318A0, v4, v3);
  }

  else
  {
    if (qword_27E50AEC8 != -1)
    {
      swift_once();
    }

    v7 = sub_240A2B00C();
    __swift_project_value_buffer(v7, qword_27E50BB60);
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C29C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v8, v9, "Presentables non-empty, or members empty, skipping image fetch", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_240928A2C()
{

  return MEMORY[0x2822009F8](sub_240928B44, 0, 0);
}

uint64_t sub_240928B44(uint64_t a1)
{
  *(v1 + 128) = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240928BD0, v3, v2);
}

uint64_t sub_240928BD0()
{

  sub_24092A8BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240928C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v4 = sub_240A299DC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC18, &qword_240A318A8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v6 = sub_240A2995C();
  v3[32] = v6;
  v7 = *(v6 - 8);
  v3[33] = v7;
  v3[34] = *(v7 + 64);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240928E88, 0, 0);
}

uint64_t sub_240928E88()
{
  sub_240A2AFBC();
  swift_allocObject();
  v0[40] = sub_240A2AFAC();
  v0[41] = sub_240A2C21C();
  v0[42] = sub_240A2C20C();
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240928F40, v2, v1);
}

uint64_t sub_240928F40()
{
  v1 = v0[20];

  v2 = *v1;
  v0[43] = *v1;
  v3 = v1[1];
  v0[44] = v3;
  v0[9] = v2;
  v0[10] = v3;
  v0[45] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC10, &qword_240A31890);
  sub_240A2BC5C();
  v0[46] = v0[15];

  return MEMORY[0x2822009F8](sub_240928FF0, 0, 0);
}

uint64_t sub_240928FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(v4 + 368);
  v7 = v6 + 64;
  v8 = -1;
  v9 = -1 << *(v6 + 32);
  v10 = *(v4 + 264);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v11 = v8 & *(v6 + 64);
  v12 = (63 - v9) >> 6;
  v46 = (v10 + 8);
  v38 = *(v4 + 272) + 7;
  v49 = v6 + 64;
  v47 = v12;
  v48 = *(v4 + 264);
  v39 = *(v4 + 368);
  while (v11)
  {
LABEL_11:
    v15 = *(v4 + 304);
    v14 = *(v4 + 312);
    v16 = *(v4 + 256);
    v17 = *(v10 + 16);
    v17(v14, *(v6 + 56) + *(v10 + 72) * (__clz(__rbit64(v11)) | (v5 << 6)), v16, a4);
    v50 = *(v10 + 32);
    v50(v15, v14, v16);
    v18 = sub_240A2993C();
    if (v19 >> 60 == 15)
    {
      v20 = *(v4 + 296);
      v43 = *(v4 + 320);
      v44 = *(v4 + 304);
      v40 = v20;
      v41 = *(v4 + 256);
      v21 = *(v4 + 200);
      v42 = *(v4 + 192);
      v22 = sub_240A2C24C();
      v23 = *(v22 - 8);
      (*(v23 + 56))(v21, 1, 1, v22);
      (v17)(v20, v44, v41);
      v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v45 = (v25 + 16);
      *(v25 + 24) = 0;
      v26 = v25;
      v50(v25 + v24, v40, v41);
      *(v26 + ((v38 + v24) & 0xFFFFFFFFFFFFFFF8)) = v43;
      sub_240919298(v21, v42, &unk_27E50B420, &qword_240A30800);
      v27 = (*(v23 + 48))(v42, 1, v22);

      v28 = *(v4 + 192);
      if (v27 == 1)
      {
        sub_240919300(*(v4 + 192), &unk_27E50B420, &qword_240A30800);
      }

      else
      {
        sub_240A2C23C();
        (*(v23 + 8))(v28, v22);
      }

      v12 = v47;
      if (*v45)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v29 = sub_240A2C1BC();
        v31 = v30;
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v32 = **(v4 + 152);
      v33 = swift_allocObject();
      *(v33 + 16) = &unk_240A318B8;
      *(v33 + 24) = v26;

      if (v31 | v29)
      {
        v34 = v4 + 16;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = v29;
        *(v4 + 40) = v31;
      }

      else
      {
        v34 = 0;
      }

      v6 = v39;
      v35 = *(v4 + 200);
      *(v4 + 48) = 1;
      *(v4 + 56) = v34;
      *(v4 + 64) = v32;
      swift_task_create();

      sub_240919300(v35, &unk_27E50B420, &qword_240A30800);
      v7 = v49;
    }

    else
    {
      sub_24092D94C(v18, v19);
      v7 = v49;
      v12 = v47;
    }

    v11 &= v11 - 1;
    a1 = (*v46)(*(v4 + 304), *(v4 + 256));
    v10 = v48;
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](a1, a2, a3, a4);
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v13);
    ++v5;
    if (v11)
    {
      v5 = v13;
      goto LABEL_11;
    }
  }

  sub_240A2C1DC();
  *(v4 + 376) = 0;
  v36 = swift_task_alloc();
  *(v4 + 384) = v36;
  *v36 = v4;
  v36[1] = sub_2409294E0;
  a1 = *(v4 + 224);
  a4 = *(v4 + 232);
  a2 = 0;
  a3 = 0;

  return MEMORY[0x2822002E8](a1, a2, a3, a4);
}

uint64_t sub_2409294E0()
{

  return MEMORY[0x2822009F8](sub_2409295DC, 0, 0);
}

uint64_t sub_2409295DC()
{
  v34 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];
  v4 = *(v2 + 48);
  v0[49] = v4;
  v0[50] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    (*(v0[30] + 8))(v0[31], v0[29]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[36];
    v8 = *(v2 + 32);
    v0[51] = v8;
    v0[52] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v7, v3, v1);
    if (qword_27E50AEC8 != -1)
    {
      swift_once();
    }

    v9 = v0[35];
    v10 = v0[36];
    v11 = v0[32];
    v12 = v0[33];
    v13 = sub_240A2B00C();
    __swift_project_value_buffer(v13, qword_27E50BB60);
    v14 = *(v12 + 16);
    v0[53] = v14;
    v0[54] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v9, v10, v11);
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[37];
      v18 = v0[35];
      v20 = v0[32];
      v19 = v0[33];
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v21 = 136315138;
      v14(v17, v18, v20);
      v22 = sub_240A2BF9C();
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v18, v20);
      v26 = sub_240925464(v22, v24, &v33);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2408FE000, v15, v16, "Updating member: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x245CCDDB0](v32, -1, -1);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    else
    {
      v27 = v0[35];
      v28 = v0[32];
      v29 = v0[33];

      v25 = *(v29 + 8);
      v25(v27, v28);
    }

    v0[55] = v25;
    v0[56] = sub_240A2C20C();
    v31 = sub_240A2C1BC();

    return MEMORY[0x2822009F8](sub_24092998C, v31, v30);
  }
}

uint64_t sub_24092998C()
{
  v1 = *(v0 + 376);

  sub_240A2992C();
  if (v1)
  {
  }

  else
  {
    v2 = *(v0 + 392);
    v3 = *(v0 + 352);
    v4 = *(v0 + 344);
    v5 = *(v0 + 256);
    v6 = *(v0 + 264);
    v7 = *(v0 + 216);
    (*(v0 + 424))(v7, *(v0 + 288), v5);
    v8 = *(v6 + 56);
    v8(v7, 0, 1, v5);
    *(v0 + 88) = v4;
    *(v0 + 96) = v3;

    sub_240A2BC5C();
    if (v2(v7, 1, v5) == 1)
    {
      v9 = *(v0 + 184);
      sub_240919300(*(v0 + 216), &qword_27E50BFD0, qword_240A31758);
      v10 = *(v0 + 128);
      v11 = sub_240925B68(v9);
      if (v12)
      {
        v13 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *(v0 + 128);
        *(v0 + 144) = v10;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_240938CD4();
          v10 = *(v0 + 144);
        }

        v15 = *(v0 + 408);
        v16 = *(v0 + 256);
        v17 = *(v0 + 264);
        v18 = *(v0 + 208);
        (*(*(v0 + 176) + 8))(*(v10 + 48) + *(*(v0 + 176) + 72) * v13, *(v0 + 168));
        v15(v18, *(v10 + 56) + *(v17 + 72) * v13, v16);
        sub_240A28E8C(v13, v10);
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      v25 = *(v0 + 208);
      v27 = *(v0 + 176);
      v26 = *(v0 + 184);
      v28 = *(v0 + 168);
      v8(v25, v19, 1, *(v0 + 256));
      sub_240919300(v25, &qword_27E50BFD0, qword_240A31758);
      (*(v27 + 8))(v26, v28);
    }

    else
    {
      v20 = *(v0 + 296);
      v22 = *(v0 + 176);
      v21 = *(v0 + 184);
      v23 = *(v0 + 168);
      (*(v0 + 408))(v20, *(v0 + 216), *(v0 + 256));
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v0 + 128);
      sub_2409F6304(v20, v21, v24);
      (*(v22 + 8))(v21, v23);
      v10 = v31;
    }

    v29 = *(v0 + 352);
    *(v0 + 104) = *(v0 + 344);
    *(v0 + 112) = v29;
    *(v0 + 136) = v10;
    sub_240A2BC6C();
  }

  *(v0 + 456) = 0;

  return MEMORY[0x2822009F8](sub_240929C54, 0, 0);
}

uint64_t sub_240929C54()
{
  (*(v0 + 440))(*(v0 + 288), *(v0 + 256));
  *(v0 + 376) = *(v0 + 456);
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_2409294E0;
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  return MEMORY[0x2822002E8](v2, 0, 0, v3);
}

uint64_t sub_240929D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_240A2995C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240929E04, 0, 0);
}

uint64_t sub_240929E04()
{
  if (qword_27E50AEC8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_240A2B00C();
  v0[11] = __swift_project_value_buffer(v5, qword_27E50BB60);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_240A2991C();
    *(v13 + 4) = v15;
    *v14 = v15;
    v16 = *(v12 + 8);
    v16(v10, v11);
    _os_log_impl(&dword_2408FE000, v7, v8, "Fetching image for member: %@", v13, 0xCu);
    sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  else
  {

    v16 = *(v12 + 8);
    v16(v10, v11);
  }

  v0[14] = v16;
  v17 = sub_240A2991C();
  v0[15] = v17;
  if (v17)
  {
    v18 = v17;
    v19 = swift_task_alloc();
    v0[16] = v19;
    *v19 = v0;
    v19[1] = sub_24092A04C;
    v17 = v18;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821A4A38](v17);
}

uint64_t sub_24092A04C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;
  *(v4 + 152) = v2;

  if (v2)
  {
    v5 = sub_24092A3F4;
  }

  else
  {

    v5 = sub_24092A16C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24092A16C()
{
  v24 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 24), *(v0 + 40));
  sub_24092D9B4(v2, v1);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  sub_24092D960(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 72);
    v21 = *(v0 + 40);
    v22 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 138412546;
    v11 = sub_240A2991C();
    *(v8 + 4) = v11;
    *v9 = v11;
    v22(v7, v21);
    *(v8 + 12) = 2080;
    sub_24092D9B4(v6, v5);
    v12 = sub_240A295BC();
    v14 = v13;
    sub_24092D960(v6, v5);
    v15 = sub_240925464(v12, v14, &v23);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully fetched image for member: %@: %s", v8, 0x16u);
    sub_240919300(v9, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  else
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 72);
    v18 = *(v0 + 40);

    v16(v17, v18);
  }

  (*(v0 + 96))(*(v0 + 16), *(v0 + 24), *(v0 + 40));
  sub_240A2994C();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24092A3F4()
{
  v30 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);

  v2(v3, v5, v4);
  v6 = v1;
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C2AC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 112);
  if (v9)
  {
    v11 = *(v0 + 96);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 40);
    v27 = *(v0 + 152);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v15 = 136315394;
    v11(v13, v12, v14);
    v17 = sub_240A2BF9C();
    v19 = v18;
    v10(v12, v14);
    v20 = sub_240925464(v17, v19, &v29);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v27;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    _os_log_impl(&dword_2408FE000, v7, v8, "Failed to fetch image data for member: %s with error: %@", v15, 0x16u);
    sub_240919300(v16, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x245CCDDB0](v28, -1, -1);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  else
  {
    v23 = *(v0 + 64);
    v24 = *(v0 + 40);

    v10(v23, v24);
  }

  (*(v0 + 96))(*(v0 + 16), *(v0 + 24), *(v0 + 40));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24092A694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_240919298(a1, v20 - v9, &unk_27E50B420, &qword_240A30800);
  v11 = sub_240A2C24C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_240919300(v10, &unk_27E50B420, &qword_240A30800);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_240A2C1BC();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_240A2C23C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBE8, &qword_240A31828);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_24092A8BC()
{
  v1 = v0;
  if (qword_27E50AEC8 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50BB60);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Updating presentables with new members", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC10, &qword_240A31890);
  sub_240A2BC5C();
  sub_24092AAEC(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC08, &qword_240A31888);
  sub_240A2BC6C();
  result = type metadata accessor for FamilyPicker(0);
  if (*(v1 + *(result + 32)) == 1)
  {
    sub_240A2AF8C();
    sub_240A2AF4C();

    v7 = sub_240A2BC5C();
    MEMORY[0x245CCCE10](v7);
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_240A2C17C();
    }

    sub_240A2C19C();
    sub_240A2BC6C();
  }

  return result;
}

uint64_t sub_24092AAEC(uint64_t a1)
{
  v3 = sub_240A2995C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v20[1] = v1;
    v31 = MEMORY[0x277D84F90];
    sub_240A2C50C();
    v28 = a1 + 64;
    result = sub_240A2C40C();
    v8 = result;
    v9 = 0;
    v30 = *(a1 + 36);
    v25 = (v4 + 8);
    v26 = v4 + 16;
    v21 = a1 + 72;
    v22 = v6;
    v23 = v4;
    v24 = v3;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v28 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      if (v30 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v27 = v9;
      (*(v4 + 16))(v29, *(a1 + 56) + *(v4 + 72) * v8, v3);
      result = sub_240A2991C();
      if (!result)
      {
        goto LABEL_27;
      }

      sub_240A2993C();
      sub_240A2AF8C();
      swift_allocObject();
      sub_240A2AF6C();
      (*v25)(v29, v3);
      sub_240A2C4EC();
      sub_240A2C51C();
      sub_240A2C52C();
      result = sub_240A2C4FC();
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_24;
      }

      v13 = *(v28 + 8 * v12);
      if ((v13 & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v30 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v8 & 0x3F));
      if (v14)
      {
        v10 = __clz(__rbit64(v14)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v22;
        v4 = v23;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v11 = v22;
        v17 = (v21 + 8 * v12);
        v4 = v23;
        while (v16 < (v10 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_24092D768(v8, v30, 0);
            v10 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_24092D768(v8, v30, 0);
      }

LABEL_4:
      v9 = v27 + 1;
      v8 = v10;
      v3 = v24;
      if (v27 + 1 == v11)
      {
        return v31;
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
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_24092AE2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyPicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24092AE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24092AEF4()
{
  v2 = *(type metadata accessor for FamilyPicker(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240915E50;

  return sub_24092848C(v0 + v3);
}

uint64_t sub_24092AFC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 25) = a4;
  *(v7 + 56) = a3;
  *(v7 + 64) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  v8 = sub_240A2B00C();
  *(v7 + 88) = v8;
  *(v7 + 96) = *(v8 - 8);
  *(v7 + 104) = swift_task_alloc();
  v9 = sub_240A2C55C();
  *(v7 + 112) = v9;
  v10 = *(v9 - 8);
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 + 64);
  *(v7 + 136) = swift_task_alloc();
  v11 = sub_240A2C53C();
  *(v7 + 144) = v11;
  v12 = *(v11 - 8);
  *(v7 + 152) = v12;
  *(v7 + 160) = *(v12 + 64);
  *(v7 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24092B154, 0, 0);
}

uint64_t sub_24092B154()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v22 = *(v0 + 144);
  v28 = *(v0 + 136);
  v24 = *(v0 + 160);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v20 = v4;
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v30 = *(v0 + 25);
  v23 = *(v0 + 64);
  v26 = *(v0 + 48);
  v27 = *(v0 + 56);
  v21 = *(v0 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v0 + 176) = v8;
  *(v8 + 16) = &unk_240A317F0;
  *(v8 + 24) = v7;
  v25 = swift_allocObject();
  *(v0 + 184) = v25;
  *(v25 + 16) = &unk_240A31800;
  *(v25 + 24) = v8;
  v9 = *(v2 + 16);

  v9(v1, v21, v22);
  (*(v3 + 16))(v28, v23, v4);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = (v24 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v3 + 80) + v11 + 17) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v0 + 192) = v13;
  (*(v2 + 32))(v13 + v10, v1, v22);
  v14 = v13 + v11;
  *v14 = v26;
  *(v14 + 8) = v27;
  *(v14 + 16) = v30 & 1;
  (*(v3 + 32))(v13 + v12, v28, v20);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBE8, &qword_240A31828);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBF0, &qword_240A31830);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  v17[2] = &unk_240A31810;
  v17[3] = v25;
  v17[4] = &unk_240A31820;
  v17[5] = v13;

  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  *v18 = v0;
  v18[1] = sub_24092B464;

  return MEMORY[0x282200600](v0 + 16, v15, v16, 0, 0, &unk_240A31840, v17, v15);
}

uint64_t sub_24092B464()
{

  return MEMORY[0x2822009F8](sub_24092B57C, 0, 0);
}

uint64_t sub_24092B57C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    *(v0 + 32) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    swift_willThrowTypedImpl();

    sub_240A2AE9C();
    v2 = v1;
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C29C();
    sub_24092D078(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_2408FE000, v3, v4, "Failed to finish action in time: %@", v5, 0xCu);
      sub_240919300(v6, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v6, -1, -1);
      MEMORY[0x245CCDDB0](v5, -1, -1);

      sub_24092D078(v1, 1);
    }

    else
    {
      sub_24092D078(v1, 1);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24092B79C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2409252E8;

  return v4();
}

uint64_t sub_24092B884(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_240915E50;

  return v5();
}

uint64_t sub_24092B96C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4 & 1;
  v8 = swift_task_alloc();
  *(v5 + 40) = v8;
  v9 = sub_240A2C55C();
  v10 = sub_24092DDF4(&qword_27E50BBD8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v8 = v5;
  v8[1] = sub_24092BA80;

  return MEMORY[0x282200488](a1, v5 + 16, a5, v9, v10);
}

uint64_t sub_24092BA80()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24092BBBC;
  }

  else
  {
    v2 = sub_24092BB94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24092BBBC()
{
  v1 = sub_240A2C25C();
  v2 = *(v0 + 48);
  if (v1)
  {

    v2 = 0;
  }

  *(v0 + 56) = (v1 & 1) == 0;
  v3 = *(v0 + 8);

  return v3(v2, ((v1 & 1) == 0) | 0x100u);
}

uint64_t sub_24092BC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBF8, &qword_240A31850);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24092BD50, 0, 0);
}

uint64_t sub_24092BD50()
{
  v1 = v0[12];
  v2 = v0[8];
  v13 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = sub_240A2C24C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;

  sub_24092A694(v1, &unk_240A31860, v8);
  sub_240919300(v1, &unk_27E50B420, &qword_240A30800);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v13;
  v9[5] = v2;

  sub_24092A694(v1, &unk_240A31868, v9);
  sub_240919300(v1, &unk_27E50B420, &qword_240A30800);
  v0[13] = *v5;
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBE8, &qword_240A31828);
  sub_240A2C1DC();
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_24092BF80;
  v11 = v0[9];

  return MEMORY[0x2822002E8](v0 + 2, 0, 0, v11);
}

uint64_t sub_24092BF80()
{

  return MEMORY[0x2822009F8](sub_24092C07C, 0, 0);
}

uint64_t sub_24092C07C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 >> 8 > 0xFE)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    sub_24092D37C();
    v1 = swift_allocError();
    LOBYTE(v2) = 1;
    *v3 = 1;
LABEL_13:
    sub_240A2C1FC();

    v10 = *(v0 + 8);

    return v10(v1, v2 & 1);
  }

  if ((v2 & 0x100) == 0)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    goto LABEL_13;
  }

  if (v2)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
LABEL_12:
    LOBYTE(v2) = 1;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);
    sub_24092D37C();
    v1 = swift_allocError();
    *v9 = 0;
    (*(v7 + 8))(v6, v8);
    goto LABEL_12;
  }

  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_24092BF80;
  v5 = *(v0 + 72);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v5);
}

uint64_t sub_24092C26C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24092DE3C;

  return v6(a1);
}

uint64_t sub_24092C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_240915E50;

  return sub_24092AFC0(a1, v10, v11, v12, a3, a4, a5);
}

uint64_t sub_24092C43C()
{
  v2 = *(sub_240A2C53C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_240A2C55C() - 8);
  v6 = (v4 + *(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_240916360;

  return sub_24092C364(v0 + v3, v0 + v4, v0 + v6, v8, v9);
}

uint64_t sub_24092C5D0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240915E50;

  return sub_24092B79C(v2);
}

uint64_t sub_24092C67C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return sub_24092B884(a1, v4);
}

uint64_t sub_24092C734(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_24092C828;

  return v5(v2 + 16);
}

uint64_t sub_24092C828()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24092C974;
  }

  else
  {
    v2 = sub_24092C93C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24092C93C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48) != 0;
  *(v0 + 24) = v3;
  *v2 = v1;
  *(v2 + 8) = v3;
  *(v2 + 9) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_24092C974()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = *(v0 + 32);
  *(v0 + 24) = v1 != 0;
  *v2 = v1;
  *(v2 + 8) = v1 != 0;
  *(v2 + 9) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_24092C9AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return sub_24092C734(a1, v4);
}

uint64_t sub_24092CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_24092CB28;

  return sub_24092B96C(a2, v7, v8, v9, a4);
}

uint64_t sub_24092CB28(uint64_t a1, __int16 a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 9) = HIBYTE(a2) & 1;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_24092CC50(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_240A2C53C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_240A2C55C() - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_240916360;

  return sub_24092CA64(a1, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_24092CDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_24092CE78;

  return sub_24092BC44(a2, a3, a4, a5, a6);
}

uint64_t sub_24092CE78(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_24092CF9C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_240916360;

  return sub_24092CDB0(a1, a2, v6, v7, v9, v8);
}

void sub_24092D078(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_24092D084(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_24092D178;

  return v7(v4 + 16);
}

uint64_t sub_24092D178()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  *(v2 + 9) = v5;
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_24092D2B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_24092D084(a1, v4, v5, v6);
}

unint64_t sub_24092D37C()
{
  result = qword_27E50BC00;
  if (!qword_27E50BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC00);
  }

  return result;
}

uint64_t sub_24092D3D0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_24092D4C4;

  return v5(v2 + 16);
}

uint64_t sub_24092D4C4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  *(v2 + 9) = v5;
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_24092D600(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return sub_24092D3D0(a1, v4);
}

uint64_t sub_24092D6B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240916360;

  return sub_240928C38(a1, a2, v6);
}

uint64_t sub_24092D768(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_24092D774(uint64_t a1)
{
  v4 = *(sub_240A2995C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240916360;

  return sub_240929D1C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24092D894(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return sub_24092C26C(a1, v4);
}

uint64_t sub_24092D94C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24092D960(result, a2);
  }

  return result;
}

uint64_t sub_24092D960(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24092D9B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for FamilyPicker(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 28);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718) + 32);
  v7 = sub_240A2995C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24092DBA0(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for FamilyPicker(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_240927F68(a1, a2, v6);
}

unint64_t sub_24092DC20()
{
  result = qword_27E50BC30;
  if (!qword_27E50BC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BFC0, &qword_240A31750);
    sub_24092DDF4(&qword_27E50BC38, MEMORY[0x277D433F0], MEMORY[0x277D433F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC30);
  }

  return result;
}

unint64_t sub_24092DCD4()
{
  result = qword_27E50BC40;
  if (!qword_27E50BC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BBD0, &qword_240A317C8);
    sub_24092DD90();
    sub_24092DDF4(&qword_27E50F4A0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC40);
  }

  return result;
}

unint64_t sub_24092DD90()
{
  result = qword_27E50BC48;
  if (!qword_27E50BC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BC50, &qword_240A318D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC48);
  }

  return result;
}

uint64_t sub_24092DDF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24092DE40()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50BC58);
  __swift_project_value_buffer(v0, qword_27E50BC58);
  return sub_240A2AE5C();
}

char *AgeMigrationCardViewController.init(ageMigrationController:model:terminationHandler:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v66 = a4;
  v70 = a3;
  v7 = type metadata accessor for AgeMigrationView(0);
  v8 = MEMORY[0x28223BE20](v7);
  v63 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (v59 - v12);
  v14 = sub_240A2A39C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AED0 != -1)
  {
    swift_once();
  }

  v69 = v13;
  v18 = sub_240A2B00C();
  v19 = __swift_project_value_buffer(v18, qword_27E50BC58);
  swift_unknownObjectRetain();
  v64 = v19;
  v20 = sub_240A2AFFC();
  v21 = sub_240A2C29C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    v59[1] = v7;
    v72 = a2;
    v73[0] = v59[0];
    *v22 = 136315138;
    v71 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC90, &unk_240A31950);
    v23 = sub_240A2BF9C();
    v25 = a1;
    v26 = v17;
    v27 = a2;
    v28 = v15;
    v29 = v14;
    v30 = sub_240925464(v23, v24, v73);

    *(v22 + 4) = v30;
    v14 = v29;
    v15 = v28;
    a2 = v27;
    v17 = v26;
    a1 = v25;
    _os_log_impl(&dword_2408FE000, v20, v21, "Creating card view controller with value %s", v22, 0xCu);
    v31 = v59[0];
    __swift_destroy_boxed_opaque_existential_0(v59[0]);
    MEMORY[0x245CCDDB0](v31, -1, -1);
    MEMORY[0x245CCDDB0](v22, -1, -1);
  }

  v60 = a2;
  v61 = v15;
  v65 = v14;
  v32 = v67;
  v33 = &v67[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_ageMigrationController];
  *v33 = a1;
  v33[1] = a2;
  (*(v15 + 16))(v17, v70, v14);
  v34 = objc_allocWithZone(type metadata accessor for AgeMigrationViewModel(0));
  ObjectType = swift_getObjectType();
  v36 = swift_unknownObjectRetain_n();
  v37 = sub_2409B87D4(v36, v17, 0, 0, v34, ObjectType, a2);
  KeyPath = swift_getKeyPath();
  v39 = v69;
  *v69 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  sub_24092F0D8();
  v40 = v37;
  sub_240A2BD9C();
  v41 = v62;
  sub_24092F130(v39, v62);
  v42 = objc_allocWithZone(type metadata accessor for AgeMigrationHostingController(0));
  sub_24092F130(v41, v63);
  v43 = sub_240A2B5EC();
  sub_24092F194(v41);
  *&v32[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_hostingController] = v43;
  v44 = &v32[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_terminationHandler];
  v45 = v68;
  *v44 = v66;
  v44[1] = v45;
  v46 = type metadata accessor for AgeMigrationCardViewController();
  v74.receiver = v32;
  v74.super_class = v46;

  v47 = objc_msgSendSuper2(&v74, sel_initWithContentView_, 0);
  v48 = swift_getKeyPath();
  MEMORY[0x28223BE20](v48);
  v59[-4] = v40;
  v59[-3] = v47;
  v59[-2] = &off_28528CEE8;
  v71 = v40;
  v49 = v47;
  sub_240A296DC();

  swift_unknownObjectRetain();
  v50 = sub_240A2AFFC();
  v51 = sub_240A2C29C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 136315138;
    v71 = a1;
    v72 = v60;
    v73[0] = v53;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC90, &unk_240A31950);
    v54 = sub_240A2BF9C();
    v56 = sub_240925464(v54, v55, v73);
    v67 = v49;
    v57 = v56;

    *(v52 + 4) = v57;
    _os_log_impl(&dword_2408FE000, v50, v51, "End of card init, value: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245CCDDB0](v53, -1, -1);
    MEMORY[0x245CCDDB0](v52, -1, -1);
    swift_unknownObjectRelease();

    v49 = v67;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v61 + 8))(v70, v65);
  sub_24092F194(v39);
  return v49;
}

void sub_24092E544()
{
  v1 = sub_240A2B80C();
  MEMORY[0x28223BE20](v1 - 8);
  v60.receiver = v0;
  v60.super_class = type metadata accessor for AgeMigrationCardViewController();
  objc_msgSendSuper2(&v60, sel_viewDidLoad);
  if (qword_27E50AED0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50BC58);
  v3 = v0;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v58 = v7;
    *v6 = 136315138;
    v59 = *&v3[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_ageMigrationController];
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC90, &unk_240A31950);
    v8 = sub_240A2BF9C();
    v10 = sub_240925464(v8, v9, &v58);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2408FE000, v4, v5, "viewdidload, age migration controller value %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v11 = *&v3[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_hostingController];
  sub_240A2B7FC();
  sub_240A2B5AC();
  v12 = sub_240A2B3BC();
  v14 = sub_240A2B5BC();
  if ((*v13 & v12) != 0)
  {
    *v13 &= ~v12;
  }

  v14(&v59, 0);
  v15 = [v11 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  [v11 willMoveToParentViewController_];
  [v3 addChildViewController_];
  v17 = [v3 view];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v11 view];
  if (!v19)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = v19;
  [v18 addSubview_];

  v21 = [v3 view];
  if (!v21)
  {
    v22 = sub_240A2AFFC();
    v56 = sub_240A2C2BC();
    if (os_log_type_enabled(v22, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      MEMORY[0x245CCDDB0](v57, -1, -1);
    }

    goto LABEL_20;
  }

  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_240A318E0;
  v24 = [v11 view];
  if (!v24)
  {
    goto LABEL_24;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v22 topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v23 + 32) = v28;
  v29 = [v11 view];
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v22 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v23 + 40) = v33;
  v34 = [v11 view];
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v22 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v23 + 48) = v38;
  v39 = [v11 view];
  if (!v39)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v22 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v23 + 56) = v43;
  v44 = [v11 view];
  if (!v44)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v45 = v44;
  v46 = [v44 centerXAnchor];

  v47 = [v22 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v23 + 64) = v48;
  v49 = [v11 view];
  if (v49)
  {
    v50 = v49;
    v51 = objc_opt_self();
    v52 = [v50 centerYAnchor];

    v53 = [v22 centerYAnchor];
    v54 = [v52 constraintEqualToAnchor_];

    *(v23 + 72) = v54;
    sub_24092F234();
    v55 = sub_240A2C15C();

    [v51 activateConstraints_];

    [v11 didMoveToParentViewController_];
LABEL_20:

    return;
  }

LABEL_29:
  __break(1u);
}

id AgeMigrationCardViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id AgeMigrationCardViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AgeMigrationCardViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24092EDD4(void *a1)
{
  v2 = v1;
  if (qword_27E50AED0 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50BC58);
  v5 = a1;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_240A2BF4C();
    v14 = v13;

    v15 = sub_240925464(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v6, v7, "AgeMigrationViewModel requested termination. VM: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  return (*(v2 + OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_terminationHandler))();
}

uint64_t sub_24092EF88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24092F0D8();
  sub_240A296EC();

  v4 = v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_24092F014(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24092F0D8();
  sub_240A296DC();
}

unint64_t sub_24092F0D8()
{
  result = qword_27E50BC78;
  if (!qword_27E50BC78)
  {
    type metadata accessor for AgeMigrationViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC78);
  }

  return result;
}

uint64_t sub_24092F130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24092F194(uint64_t a1)
{
  v2 = type metadata accessor for AgeMigrationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24092F234()
{
  result = qword_27E50BFA0;
  if (!qword_27E50BFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50BFA0);
  }

  return result;
}

uint64_t AISFamilyPickerSelectionProtocol.isValid.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8))())
  {
    return 1;
  }

  v4 = (*(a2 + 16))(a1, a2);
  if (v4)
  {

    return 1;
  }

  v6 = *(a2 + 24);

  return v6(a1, a2);
}

void *AISFamilyPickerSelectionProtocol.account.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))(a1);
  if (result)
  {
    v3 = result;
    v4 = sub_24092F424(result);

    return v4;
  }

  return result;
}

void *sub_24092F424(void *a1)
{
  sub_240A2BF4C();
  v2 = objc_allocWithZone(MEMORY[0x277CB8F58]);
  v3 = sub_240A2BF1C();

  v4 = [v2 initWithIdentifier:v3 description:0];

  v5 = [objc_allocWithZone(MEMORY[0x277CB8F30]) initWithAccountType_];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 appleID];
    [v7 setUsername_];
  }

  v9 = [a1 dsid];
  if (v9)
  {
    v10 = v9;
    if (v6)
    {
      v11 = *MEMORY[0x277CF0058];
      v12 = v6;
      [v12 setAccountProperty:v10 forKey:v11];
    }
  }

  v13 = [a1 altDSID];
  if (v13)
  {
    v14 = v13;
    if (v6)
    {
      v15 = *MEMORY[0x277CEFF08];
      v16 = v6;
      [v16 setAccountProperty:v14 forKey:v15];
    }
  }

  v17 = [a1 firstName];
  if (v17)
  {
    v18 = v17;
    v19 = v6;
    [v19 aa:v18 setFirstName:?];
  }

  v20 = [a1 lastName];
  if (v20)
  {
    v21 = v20;
    v22 = v6;
    [v22 aa:v21 setLastName:?];
  }

  return v6;
}

uint64_t AppleIDSignInError.hashValue.getter()
{
  v1 = *v0;
  sub_240A2C72C();
  MEMORY[0x245CCD400](v1);
  return sub_240A2C74C();
}

uint64_t sub_24092F720()
{
  v1 = *v0;
  sub_240A2C72C();
  MEMORY[0x245CCD400](v1);
  return sub_240A2C74C();
}

uint64_t sub_24092F768()
{
  v1 = *v0;
  sub_240A2C72C();
  MEMORY[0x245CCD400](v1);
  return sub_240A2C74C();
}

void *AppleIDSignInView.init(configuration:onSkip:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a3;
  v11 = sub_240A2B33C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  type metadata accessor for AppleIDSignInView(0);
  sub_240A2B32C();
  (*(v12 + 16))(v15, v17, v11);
  sub_240A2BC4C();
  (*(v12 + 8))(v17, v11);
  type metadata accessor for AISSignInSettings();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a4;
  result[4] = a5;
  result[5] = a2;
  result[6] = v20;
  *a6 = sub_24092F93C;
  *(a6 + 8) = result;
  *(a6 + 16) = 0;
  return result;
}

uint64_t AppleIDSignInView.body.getter@<X0>(void *a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  MEMORY[0x28223BE20](v1 - 8);
  v18 = &v17 - v2;
  v23 = type metadata accessor for SignInOptionsView(0);
  MEMORY[0x28223BE20](v23);
  v19 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCA0, &qword_240A31A18);
  MEMORY[0x28223BE20](v20);
  v22 = &v17 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCA8, &qword_240A31A20);
  MEMORY[0x28223BE20](v21);
  v6 = (&v17 - v5);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 shieldSignInOrCreateFlows];

  type metadata accessor for AISSignInSettings();
  sub_240900CB8(qword_2812101B0, type metadata accessor for AISSignInSettings, &protocol conformance descriptor for AISSignInSettings);
  v9 = sub_240A2B1EC();
  type metadata accessor for AppleIDSignInView(0);
  if (v8)
  {
    type metadata accessor for PasswordSignInView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCB0, &qword_240A31A28);
    sub_240A2BC7C();
    *v6 = v9;
    v10 = sub_240A2B1EC();
    v11 = sub_240A2B0AC();
    v12 = v22;
    v13 = (v6 + *(v21 + 36));
    *v13 = v11;
    v13[1] = v10;
    sub_24092FF04(v6, v12);
    swift_storeEnumTagMultiPayload();
    sub_24092FD88();
    sub_240900CB8(&qword_27E50BCD8, type metadata accessor for SignInOptionsView, &unk_240A365CC);
    sub_240A2B6EC();
    return sub_24092FF74(v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCB0, &qword_240A31A28);
    v15 = v18;
    sub_240A2BC7C();
    v16 = v19;
    sub_2409CC9E8(v9, v15, v19);
    sub_24092FD24(v16, v22);
    swift_storeEnumTagMultiPayload();
    sub_24092FD88();
    sub_240900CB8(&qword_27E50BCD8, type metadata accessor for SignInOptionsView, &unk_240A365CC);
    sub_240A2B6EC();
    return sub_24092FEA8(v16);
  }
}

uint64_t sub_24092FD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInOptionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24092FD88()
{
  result = qword_27E50BCB8;
  if (!qword_27E50BCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BCA8, &qword_240A31A20);
    sub_240900CB8(&qword_27E50BCC0, type metadata accessor for PasswordSignInView, &unk_240A34D5C);
    sub_24092FE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BCB8);
  }

  return result;
}

unint64_t sub_24092FE44()
{
  result = qword_27E50BCC8;
  if (!qword_27E50BCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BCD0, &qword_240A31A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BCC8);
  }

  return result;
}

uint64_t sub_24092FEA8(uint64_t a1)
{
  v2 = type metadata accessor for SignInOptionsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24092FF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCA8, &qword_240A31A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24092FF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCA8, &qword_240A31A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24092FFE0()
{
  result = qword_27E50BCE0;
  if (!qword_27E50BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIDSignInError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleIDSignInError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2409301E0()
{
  result = qword_27E50BCE8;
  if (!qword_27E50BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BCF0, &unk_240A31B98);
    sub_24092FD88();
    sub_240900CB8(&qword_27E50BCD8, type metadata accessor for SignInOptionsView, &unk_240A365CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BCE8);
  }

  return result;
}

uint64_t _s15FlowDescriptionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15FlowDescriptionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for DiscoveryView(uint64_t a1)
{
  result = qword_27E50BD40;
  if (!qword_27E50BD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240930460(uint64_t a1)
{
  sub_24093070C(319, &qword_27E50BD50, MEMORY[0x277CED7B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_240930654();
    if (v2 <= 0x3F)
    {
      sub_2409306A4(319);
      if (v3 <= 0x3F)
      {
        sub_24093070C(319, &unk_27E50BD70, MEMORY[0x277CED338], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_24093070C(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24093070C(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24093070C(319, &unk_27E50BD88, type metadata accessor for AKUserAgeRange, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_240930654()
{
  if (!qword_27E50BD58)
  {
    v0 = sub_240A2BC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50BD58);
    }
  }
}

void sub_2409306A4(uint64_t a1)
{
  if (!qword_27E50BD60)
  {
    sub_2409194E8(255, &qword_27E50D8D0, 0x277D750C8);
    v1 = sub_240A2C3BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50BD60);
    }
  }
}

void sub_24093070C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_240930774()
{
  result = qword_27E50BD98;
  if (!qword_27E50BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BD98);
  }

  return result;
}

uint64_t sub_2409307C8()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50BD00);
  __swift_project_value_buffer(v0, qword_27E50BD00);
  return sub_240A2AE9C();
}

uint64_t sub_240930814@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v274 = a1;
  v278 = a2;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v231 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v230 = &v211 - v2;
  v3 = sub_240A2A01C();
  v228 = *(v3 - 8);
  v229 = v3;
  MEMORY[0x28223BE20](v3);
  v227 = &v211 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A29F6C();
  v225 = *(v5 - 8);
  v226 = v5;
  MEMORY[0x28223BE20](v5);
  v224 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA8, &qword_240A31C90);
  MEMORY[0x28223BE20](v243);
  v244 = (&v211 - v7);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDB0, &qword_240A31C98);
  MEMORY[0x28223BE20](v267);
  v245 = &v211 - v8;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDB8, &qword_240A31CA0);
  MEMORY[0x28223BE20](v241);
  v223 = (&v211 - v9);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDC0, &qword_240A31CA8);
  MEMORY[0x28223BE20](v238);
  v240 = &v211 - v10;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA60, &unk_240A352E0);
  MEMORY[0x28223BE20](v235);
  v236 = (&v211 - v11);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v214 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v213 = &v211 - v12;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA70, &qword_240A352F0);
  MEMORY[0x28223BE20](v219);
  v221 = &v211 - v13;
  v220 = type metadata accessor for TeenSetupContinueOnParentOrGuardianView(0);
  MEMORY[0x28223BE20](v220);
  v212 = (&v211 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDE0, &qword_240A31CB0);
  MEMORY[0x28223BE20](v233);
  v232 = &v211 - v15;
  v16 = sub_240A2B52C();
  v217 = *(v16 - 8);
  v218 = v16;
  MEMORY[0x28223BE20](v16);
  v216 = &v211 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDE8, &unk_240A35000);
  MEMORY[0x28223BE20](v237);
  v234 = &v211 - v18;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDF0, &qword_240A31CB8);
  MEMORY[0x28223BE20](v242);
  v239 = &v211 - v19;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDF8, &qword_240A31CC0);
  MEMORY[0x28223BE20](v262);
  v247 = &v211 - v20;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE00, &qword_240A31CC8);
  MEMORY[0x28223BE20](v275);
  v277 = &v211 - v21;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE08, &qword_240A31CD0);
  MEMORY[0x28223BE20](v263);
  v265 = &v211 - v22;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE10, &qword_240A31CD8);
  MEMORY[0x28223BE20](v259);
  v260 = &v211 - v23;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE18, &qword_240A31CE0);
  MEMORY[0x28223BE20](v264);
  v261 = &v211 - v24;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE20, &qword_240A31CE8);
  MEMORY[0x28223BE20](v276);
  v266 = &v211 - v25;
  v26 = sub_240A2975C();
  v256 = *(v26 - 8);
  v257 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v211 = &v211 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v215 = &v211 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v254 = &v211 - v32;
  MEMORY[0x28223BE20](v31);
  *&v273 = &v211 - v33;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  MEMORY[0x28223BE20](v253);
  v271 = &v211 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x28223BE20](v35 - 8);
  v272 = &v211 - v36;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE30, &qword_240A31CF0);
  v37 = MEMORY[0x28223BE20](v268);
  v246 = &v211 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v251 = &v211 - v39;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v40 = MEMORY[0x28223BE20](v269);
  v42 = &v211 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v249 = &v211 - v43;
  v270 = sub_240A2A10C();
  *&v280 = *(v270 - 8);
  v44 = MEMORY[0x28223BE20](v270);
  v248 = &v211 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v252 = &v211 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v250 = &v211 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v211 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v211 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v211 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = &v211 - v59;
  v258 = type metadata accessor for DiscoveringView(0);
  v61 = MEMORY[0x28223BE20](v258);
  v63 = &v211 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v255 = &v211 - v64;
  v65 = sub_240A29F2C();
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v68 = &v211 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v68, v274, v65);
  v69 = (*(v66 + 88))(v68, v65);
  if (v69 != *MEMORY[0x277CED6F8])
  {
    v115 = v269;
    v116 = v281;
    if (v69 == *MEMORY[0x277CED6F0])
    {
      v117 = v269;
      sub_240A2BD1C();
      swift_getKeyPath();
      v118 = v246;
      sub_240A2BD0C();

      sub_240919300(v42, &qword_27E50BD18, &qword_240A33940);
      swift_getKeyPath();
      v119 = v247;
      sub_240A2BD0C();

      sub_240919300(v118, &qword_27E50BE30, &qword_240A31CF0);
      v120 = v248;
      MEMORY[0x245CCC9B0](v117);
      v121 = sub_240A2A0FC();
      *&v280 = *(v280 + 8);
      v122 = v270;
      (v280)(v120, v270);
      v123 = type metadata accessor for DiscoveredView(0);
      v124 = v119 + v123[5];
      LOBYTE(v294) = 0;
      sub_240A2BC4C();
      v125 = *(&v287 + 1);
      *v124 = v287;
      *(v124 + 8) = v125;
      *(v119 + v123[6]) = v121;
      v126 = v123[7];
      *(v119 + v126) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
      swift_storeEnumTagMultiPayload();
      v127 = v123[8];
      *(v119 + v127) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v128 = v119 + v123[9];
      *v128 = swift_getKeyPath();
      *(v128 + 8) = 0;
      KeyPath = swift_getKeyPath();
      MEMORY[0x245CCC9B0](v117);
      v130 = (v119 + *(v262 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE68, &qword_240A31CF8);
      sub_240A29FAC();
      (v280)(v120, v122);
      *v130 = KeyPath;
      v131 = &qword_27E50BDF8;
      v132 = &qword_240A31CC0;
      sub_240919298(v119, v260, &qword_27E50BDF8, &qword_240A31CC0);
      swift_storeEnumTagMultiPayload();
      sub_24093A824(&qword_27E50BE48, type metadata accessor for DiscoveringView, &unk_240A36E78);
      sub_2409367C0();
      v133 = v261;
      sub_240A2B6EC();
      v134 = &qword_27E50BE18;
      v135 = &qword_240A31CE0;
      sub_240919298(v133, v265, &qword_27E50BE18, &qword_240A31CE0);
    }

    else
    {
      if (v69 != *MEMORY[0x277CED700])
      {
        v157 = v270;
        if (v69 != *MEMORY[0x277CED708])
        {
          sub_240A2B56C();
          v167 = v230;
          sub_240A2B23C();
          v168 = v231;
          v169 = v279;
          (*(v231 + 16))(v277, v167, v279);
          swift_storeEnumTagMultiPayload();
          sub_240936678();
          sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
          sub_240A2B6EC();
          (*(v168 + 8))(v167, v169);
          return (*(v66 + 8))(v68, v65);
        }

        v158 = v248;
        MEMORY[0x245CCC9B0](v269);
        v159 = v224;
        sub_240A29F8C();
        (*(v280 + 8))(v158, v157);
        v160 = v227;
        sub_240A29F4C();
        (*(v225 + 8))(v159, v226);
        v161 = sub_240A2A00C();
        (*(v228 + 8))(v160, v229);
        v162 = *(v161 + 16);

        if (v162)
        {
          sub_24093409C(&v287);
          v294 = v287;
          v295 = v288;
          LOBYTE(v296) = v289;
          BYTE1(v296) = 1;
        }

        else
        {
          sub_24093382C(&v287);
          v294 = v287;
          v295 = v288;
          LOWORD(v296) = v289;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
        sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
        sub_240A2B6EC();
        v174 = v288;
        v175 = v289;
        v176 = BYTE1(v289);
        v280 = v287;
        v273 = v288;
        v177 = v244;
        *v244 = v287;
        v177[1] = v174;
        *(v177 + 32) = v175;
        *(v177 + 33) = v176;
        swift_storeEnumTagMultiPayload();
        v281 = v280;
        *&v280 = *(&v280 + 1);
        v178 = *(&v273 + 1);
        v274 = v273;
        sub_240937080(v281, *(&v280 + 1), v273, *(&v273 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF30, &qword_240A31D10);
        sub_240936934();
        sub_240936FD0();
        v179 = v245;
        sub_240A2B6EC();
        sub_240919298(v179, v265, &qword_27E50BDB0, &qword_240A31C98);
        swift_storeEnumTagMultiPayload();
        sub_240936704();
        sub_2409368A8();
        v180 = v266;
        sub_240A2B6EC();
        sub_240919300(v179, &qword_27E50BDB0, &qword_240A31C98);
        sub_240919298(v180, v277, &qword_27E50BE20, &qword_240A31CE8);
        swift_storeEnumTagMultiPayload();
        sub_240936678();
        sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
        sub_240A2B6EC();
        sub_2409370D8(v281, v280, v274, v178);
        v181 = v180;
        v182 = &qword_27E50BE20;
        v183 = &qword_240A31CE8;
        return sub_240919300(v181, v182, v183);
      }

      v136 = v248;
      MEMORY[0x245CCC9B0](v269);
      sub_240A2A0FC();
      v137 = v280 + 8;
      v138 = *(v280 + 8);
      v139 = v270;
      v138(v136, v270);
      if (sub_240A2A0EC())
      {
        *&v280 = v137;
        v140 = type metadata accessor for DiscoveryView(0);
        v141 = &v116[*(v140 + 48)];
        v142 = *v141;
        if ((v141[8] & 1) == 0)
        {

          sub_240A2C2BC();
          v143 = sub_240A2B84C();
          sub_240A2AFEC();

          v144 = v216;
          sub_240A2B51C();
          swift_getAtKeyPath();
          sub_24090C1E4(v142, 0);
          (*(v217 + 8))(v144, v218);
          v142 = v287;
        }

        v145 = v232;
        if (v142 == 2)
        {
          goto LABEL_20;
        }

        v146 = &v116[*(v140 + 52)];
        v147 = *v146;
        if ((v146[8] & 1) == 0)
        {

          sub_240A2C2BC();
          v148 = sub_240A2B84C();
          sub_240A2AFEC();

          v149 = v216;
          sub_240A2B51C();
          swift_getAtKeyPath();
          sub_24090C1E4(v147, 0);
          (*(v217 + 8))(v149, v218);
          v147 = v287;
        }

        if (v147 == 2)
        {
LABEL_20:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
          v150 = v215;
          sub_240A2BC5C();
          v152 = v256;
          v151 = v257;
          v153 = (*(v256 + 88))(v150, v257);
          v154 = *MEMORY[0x277CED258];
          (*(v152 + 8))(v150, v151);
          if (v153 == v154)
          {
            v155 = swift_getKeyPath();
            v156 = v212;
            *v212 = v155;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
            swift_storeEnumTagMultiPayload();
            sub_24093A034(v156, v221, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
            swift_storeEnumTagMultiPayload();
            sub_24093A824(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
            sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
            sub_240A2B6EC();
            sub_240939FD4(v156, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
          }

          else
          {
            v170 = v213;
            sub_240A2B22C();
            v171 = v214;
            v172 = v222;
            (*(v214 + 16))(v221, v170, v222);
            swift_storeEnumTagMultiPayload();
            sub_24093A824(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
            sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
            sub_240A2B6EC();
            (*(v171 + 8))(v170, v172);
          }

          v173 = v234;
          v119 = v239;
          sub_240919298(v145, v236, &qword_27E50BDE0, &qword_240A31CB0);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
          sub_240936A78();
          sub_240936B60();
          sub_240A2B6EC();
          sub_240919300(v145, &qword_27E50BDE0, &qword_240A31CB0);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
          v184 = v211;
          sub_240A2BC5C();
          v185 = v257;
          v186 = v256 + 88;
          v187 = (*(v256 + 88))(v184, v257);
          v188 = (v186 - 80);
          if (v187 == *MEMORY[0x277CED240])
          {
            (*v188)(v184, v185);
            v189 = v248;
            MEMORY[0x245CCC9B0](v115);
            v190 = sub_240A29DFC();
            v192 = v191;
            v138(v189, v139);
            started = type metadata accessor for SetupStartViewController();
            v194 = objc_allocWithZone(started);
            v195 = &v194[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
            *v195 = v190;
            v195[1] = v192;
            v292.receiver = v194;
            v292.super_class = started;
            v196 = objc_msgSendSuper2(&v292, sel_initWithContentView_, 0);
            LOBYTE(v294) = 1;
            sub_240A2BD3C();
            v197 = v287;
            v198 = v288;
            sub_240A2C06C();
            v199 = v196;
            v200 = sub_240A2BF1C();

            [v199 showActivityIndicatorWithStatus_];

            LOBYTE(v200) = sub_240A2B88C();
            v201 = sub_240A2B3AC();
            v293 = 0;
            *&v294 = v199;
            *(&v294 + 1) = MEMORY[0x277D84F90];
            v295 = v197;
            LOBYTE(v296) = v198;
            *(&v296 + 1) = v282;
            DWORD1(v296) = *(&v282 + 3);
            *(&v296 + 1) = v201;
            LOWORD(v297) = v200;
          }

          else
          {
            (*v188)(v184, v185);
            v202 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
            LOBYTE(v294) = 1;
            sub_240A2BD3C();
            v203 = v287;
            v204 = v288;
            sub_240A2C06C();
            v205 = v202;
            v206 = sub_240A2BF1C();

            [v205 showActivityIndicatorWithStatus_];

            LOBYTE(v206) = sub_240A2B88C();
            v207 = sub_240A2B3AC();
            v293 = 1;
            *&v294 = v205;
            *(&v294 + 1) = MEMORY[0x277D84F90];
            v295 = v203;
            LOBYTE(v296) = v204;
            *(&v296 + 1) = v282;
            DWORD1(v296) = *(&v282 + 3);
            *(&v296 + 1) = v207;
            LOBYTE(v297) = v206;
            BYTE1(v297) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
          sub_240936BEC();
          sub_240936CA4();
          sub_240A2B6EC();
          v119 = v239;
          v208 = v288;
          v209 = v236;
          *v236 = v287;
          v209[1] = v208;
          v209[2] = v289;
          *(v209 + 24) = v290;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
          sub_240936A78();
          sub_240936B60();
          v173 = v234;
          sub_240A2B6EC();
        }

        v164 = &qword_27E50BDE8;
        v165 = &unk_240A35000;
        sub_240919298(v173, v240, &qword_27E50BDE8, &unk_240A35000);
        swift_storeEnumTagMultiPayload();
        sub_2409369EC();
        sub_240936D5C(&qword_27E50BEF0, &qword_27E50BDB8, &qword_240A31CA0, sub_240936E0C);
        sub_240A2B6EC();
        v166 = v173;
      }

      else
      {
        v163 = v223;
        sub_240933180(v223);
        v164 = &qword_27E50BDB8;
        v165 = &qword_240A31CA0;
        sub_240919298(v163, v240, &qword_27E50BDB8, &qword_240A31CA0);
        swift_storeEnumTagMultiPayload();
        sub_2409369EC();
        sub_240936D5C(&qword_27E50BEF0, &qword_27E50BDB8, &qword_240A31CA0, sub_240936E0C);
        v119 = v239;
        sub_240A2B6EC();
        v166 = v163;
      }

      sub_240919300(v166, v164, v165);
      v131 = &qword_27E50BDF0;
      v132 = &qword_240A31CB8;
      sub_240919298(v119, v244, &qword_27E50BDF0, &qword_240A31CB8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF30, &qword_240A31D10);
      sub_240936934();
      sub_240936FD0();
      v133 = v245;
      sub_240A2B6EC();
      v134 = &qword_27E50BDB0;
      v135 = &qword_240A31C98;
      sub_240919298(v133, v265, &qword_27E50BDB0, &qword_240A31C98);
    }

    swift_storeEnumTagMultiPayload();
    sub_240936704();
    sub_2409368A8();
    v210 = v266;
    sub_240A2B6EC();
    sub_240919300(v133, v134, v135);
    sub_240919298(v210, v277, &qword_27E50BE20, &qword_240A31CE8);
    swift_storeEnumTagMultiPayload();
    sub_240936678();
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    sub_240919300(v210, &qword_27E50BE20, &qword_240A31CE8);
    v181 = v119;
    v182 = v131;
    v183 = v132;
    return sub_240919300(v181, v182, v183);
  }

  v244 = v63;
  v70 = v269;
  v71 = v281;
  MEMORY[0x245CCC9B0](v269);
  LODWORD(v274) = sub_240A2A07C();
  v72 = *(v280 + 8);
  v73 = v270;
  v72(v60, v270);
  v74 = v55;
  v75 = v72;
  MEMORY[0x245CCC9B0](v70);
  LODWORD(v280) = sub_240A2A0FC();
  v72(v58, v73);
  MEMORY[0x245CCC9B0](v70);
  v76 = sub_240A2A0BC();
  v78 = v77;
  v79 = v74;
  v80 = v73;
  v75(v79, v73);
  v243 = v75;
  if (v78)
  {
    v81 = v76;
  }

  else
  {
    v81 = 0;
  }

  v82 = 0xE000000000000000;
  if (v78)
  {
    v82 = v78;
  }

  v247 = v82;
  v248 = v81;
  v83 = v70;
  MEMORY[0x245CCC9B0](v70);
  LODWORD(v246) = sub_240932DE0();
  v75(v52, v80);
  v84 = type metadata accessor for DiscoveryView(0);
  LODWORD(v245) = v71[*(v84 + 24)];
  v85 = v249;
  sub_240A2BD1C();
  swift_getKeyPath();
  v86 = v251;
  sub_240A2BD0C();

  sub_240919300(v85, &qword_27E50BD18, &qword_240A33940);
  swift_getKeyPath();
  sub_240A2BD0C();

  sub_240919300(v86, &qword_27E50BE30, &qword_240A31CF0);
  v87 = v250;
  MEMORY[0x245CCC9B0](v83);
  v268 = sub_240A2A06C();
  v251 = v88;
  v89 = v80;
  v90 = v243;
  v243(v87, v80);
  v91 = v90;
  v92 = *&v71[*(v84 + 28)];
  v93 = v92;
  sub_240A2BD1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  sub_240A2BC5C();
  v94 = v252;
  MEMORY[0x245CCC9B0](v83);
  sub_240A2A0FC();
  v95 = sub_240A2A0EC();
  v96 = 0;
  if ((v95 & 1) == 0)
  {
    v96 = sub_240A2A03C();
  }

  v91(v94, v89);
  sub_240A245C4(v96, v95 & 1, &v294);
  v97 = v244;
  *v244 = v274 & 1;
  *(v97 + 1) = v280;
  v98 = v247;
  *(v97 + 1) = v248;
  *(v97 + 2) = v98;
  *(v97 + 24) = v246 & 1;
  *(v97 + 25) = v245;
  v99 = v258;
  sub_24093A86C(v272, v97 + *(v258 + 36), &qword_27E50BE28, qword_240A320C0);
  v100 = (v97 + v99[10]);
  v101 = v251;
  *v100 = v268;
  v100[1] = v101;
  *(v97 + v99[11]) = v92;
  sub_24093A86C(v271, v97 + v99[12], &qword_27E50BD20, &qword_240A31BC0);
  v103 = v256;
  v102 = v257;
  v104 = v273;
  (*(v256 + 16))(v254, v273, v257);
  sub_240A2BC4C();
  (*(v103 + 8))(v104, v102);
  v105 = (v97 + v99[14]);
  v284 = v296;
  v285 = v297;
  v286 = v298;
  v282 = v294;
  v283 = v295;
  sub_240A2BC4C();
  v106 = v290;
  v105[2] = v289;
  v105[3] = v106;
  v105[4] = v291;
  v107 = v288;
  *v105 = v287;
  v105[1] = v107;
  v108 = v99[15];
  *(v97 + v108) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v109 = v97 + v99[16];
  *v109 = swift_getKeyPath();
  v109[8] = 0;
  v110 = v99[17];
  *(v97 + v110) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v111 = v255;
  sub_24093A09C(v97, v255, type metadata accessor for DiscoveringView);
  sub_24093A034(v111, v260, type metadata accessor for DiscoveringView);
  swift_storeEnumTagMultiPayload();
  sub_24093A824(&qword_27E50BE48, type metadata accessor for DiscoveringView, &unk_240A36E78);
  sub_2409367C0();
  v112 = v261;
  sub_240A2B6EC();
  sub_240919298(v112, v265, &qword_27E50BE18, &qword_240A31CE0);
  swift_storeEnumTagMultiPayload();
  sub_240936704();
  sub_2409368A8();
  v113 = v266;
  sub_240A2B6EC();
  sub_240919300(v112, &qword_27E50BE18, &qword_240A31CE0);
  sub_240919298(v113, v277, &qword_27E50BE20, &qword_240A31CE8);
  swift_storeEnumTagMultiPayload();
  sub_240936678();
  sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
  sub_240A2B6EC();
  sub_240919300(v113, &qword_27E50BE20, &qword_240A31CE8);
  return sub_240939FD4(v111, type metadata accessor for DiscoveringView);
}

uint64_t sub_240932DE0()
{
  v35 = sub_240A2AE0C();
  v0 = *(v35 - 8);
  v1 = MEMORY[0x28223BE20](v35);
  v34 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v1);
  v33 = &v23[-v3];
  v32 = sub_240A2AE2C();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF58, &qword_240A31E78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-v7];
  sub_240A2A0FC();
  v24 = sub_240A2A0EC();
  sub_240A29F9C();
  v9 = sub_240A29D8C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_240919300(v8, &qword_27E50BF58, &qword_240A31E78);
LABEL_9:
    v22 = 1;
    return v22 & 1;
  }

  else
  {
    v11 = sub_240A29D7C();
    result = (*(v10 + 8))(v8, v9);
    v13 = 0;
    v29 = *(v11 + 16);
    v30 = v11;
    v28 = v4 + 16;
    v27 = *MEMORY[0x277CEDD88];
    v14 = (v0 + 8);
    v25 = v4 + 8;
    v26 = (v0 + 104);
    v15 = v32;
    while (1)
    {
      if (v29 == v13)
      {

        goto LABEL_9;
      }

      if (v13 >= *(v30 + 16))
      {
        break;
      }

      v16 = v31;
      (*(v4 + 16))(v31, v30 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13++, v15);
      v17 = v33;
      sub_240A2AE1C();
      v19 = v34;
      v18 = v35;
      (*v26)(v34, v27, v35);
      v20 = MEMORY[0x245CCBAC0](v17, v19);
      v21 = *v14;
      (*v14)(v19, v18);
      v21(v17, v18);
      result = (*(v4 + 8))(v16, v15);
      if (v20)
      {

        v22 = v24;
        return v22 & 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240933180@<X0>(void *a1@<X8>)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF60, &qword_240A31E80);
  MEMORY[0x28223BE20](v34);
  v32 = &v26 - v1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF18, &qword_240A31D08);
  MEMORY[0x28223BE20](v30);
  v26 = (&v26 - v2);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF68, &qword_240A31E88);
  MEMORY[0x28223BE20](v27);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF00, &qword_240A31D00);
  MEMORY[0x28223BE20](v33);
  v29 = &v26 - v7;
  v8 = sub_240A2A10C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  sub_240A2A0FC();
  v16 = *(v9 + 8);
  v16(v14, v8);
  if (sub_240A2A0EC())
  {
    MEMORY[0x245CCC9B0](v15);
    v17 = sub_240A2A07C();
    v16(v12, v8);
    if (v17)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x245CCC9B0](v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE68, &qword_240A31CF8);
      v19 = v26;
      sub_240A29FAC();
      v16(v14, v8);
      *v19 = KeyPath;
      sub_240919298(v19, v28, &qword_27E50BF18, &qword_240A31D08);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
      sub_240936EC4();
      v20 = v29;
      sub_240A2B6EC();
      sub_240919300(v19, &qword_27E50BF18, &qword_240A31D08);
    }

    else
    {
      v36 = sub_240A2BFDC();
      v37 = v24;
      sub_24091C4F8();
      sub_240A2B24C();
      v25 = v31;
      (*(v31 + 16))(v28, v6, v4);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
      sub_240936EC4();
      v20 = v29;
      sub_240A2B6EC();
      (*(v25 + 8))(v6, v4);
    }

    sub_240919298(v20, v32, &unk_27E50BF00, &qword_240A31D00);
    swift_storeEnumTagMultiPayload();
    sub_240936E0C();
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    return sub_240919300(v20, &unk_27E50BF00, &qword_240A31D00);
  }

  else
  {
    v36 = sub_240A2C06C();
    v37 = v21;
    sub_24091C4F8();
    sub_240A2B24C();
    v22 = v31;
    (*(v31 + 16))(v32, v6, v4);
    swift_storeEnumTagMultiPayload();
    sub_240936E0C();
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    return (*(v22 + 8))(v6, v4);
  }
}

void sub_24093382C(void *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for DiscoveryView(0);
  v4 = v3 - 8;
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = v5;
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A2B52C();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() systemBlueColor];
  v9 = [objc_opt_self() configurationWithHierarchicalColor_];

  aBlock = 0xD000000000000022;
  v58 = 0x8000000240A3B260;
  v59 = v9;
  LOBYTE(v60) = 1;
  v10 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v11 = sub_2409E0A0C(&aBlock);
  sub_240A2C01C();
  v12 = *(v4 + 56);
  v56 = v2;
  v13 = v2 + v12;
  v14 = *v13;
  v47 = *(v13 + 8);
  if ((v47 & 1) == 0)
  {

    sub_240A2C2BC();
    v15 = sub_240A2B84C();
    sub_240A2AFEC();

    v16 = v48;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v14, 0);
    (*(v49 + 8))(v16, v6);
  }

  v45 = v6;
  sub_240A2BFFC();
  v63 = 1;
  sub_240A2BD3C();
  v51 = v58;
  v52 = aBlock;
  v50 = v59;
  v63 = 1;
  sub_240A2BD3C();
  v17 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  [v17 setDismissalType_];
  v18 = sub_240A2BF1C();

  [v17 setTitle_];

  v19 = sub_240A2BF1C();

  [v17 setSubtitle_];

  sub_240A2C01C();
  v20 = v55;
  sub_24093A034(v56, v55, type metadata accessor for DiscoveryView);
  v21 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v22 = swift_allocObject();
  sub_24093A09C(v20, v22 + v21, type metadata accessor for DiscoveryView);
  v23 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v24 = swift_allocObject();
  v24[2] = sub_24093A104;
  v24[3] = v22;
  v24[4] = v23;
  v25 = v17;

  v26 = sub_240A2BF1C();

  v61 = sub_24093A11C;
  v62 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v46 = &v59;
  v59 = sub_2409DFF20;
  v60 = &block_descriptor_4;
  v27 = _Block_copy(&aBlock);
  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v26 style:0 handler:v27];

  _Block_release(v27);

  v30 = [v25 addAction_];

  if ((v47 & 1) == 0)
  {

    sub_240A2C2BC();
    v31 = sub_240A2B84C();
    sub_240A2AFEC();

    v32 = v48;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v14, 0);
    (*(v49 + 8))(v32, v45);
  }

  sub_240A2BFFC();
  v33 = v55;
  sub_24093A034(v56, v55, type metadata accessor for DiscoveryView);
  v34 = swift_allocObject();
  sub_24093A09C(v33, v34 + v21, type metadata accessor for DiscoveryView);
  v35 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v36 = swift_allocObject();
  v36[2] = sub_24093A138;
  v36[3] = v34;
  v36[4] = v35;
  v37 = v25;

  v38 = sub_240A2BF1C();

  v61 = sub_24093A8F4;
  v62 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2409DFF20;
  v60 = &block_descriptor_49;
  v39 = _Block_copy(&aBlock);
  v40 = [v28 actionWithTitle:v38 style:1 handler:v39];

  _Block_release(v39);

  v41 = [v37 addAction_];

  v42 = v53;
  *v53 = v37;
  v43 = v51;
  v44 = v52;
  v42[1] = MEMORY[0x277D84F90];
  v42[2] = v44;
  v42[3] = v43;
  *(v42 + 32) = v50;
}

uint64_t sub_24093409C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_240A2B52C();
  v72 = *(v3 - 1);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_240A29DBC();
  v5 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = (v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DiscoveryView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24093A034(v1, v12, type metadata accessor for DiscoveryView);
  sub_240A2C21C();
  v13 = sub_240A2C20C();
  v14 = *(v10 + 80);
  v70 = ~v14;
  v15 = (v14 + 32) & ~v14;
  v77 = v11;
  v79 = v14;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  v78 = v12;
  sub_24093A09C(v12, v16 + v15, type metadata accessor for DiscoveryView);
  v18 = sub_240A2C20C();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  sub_240A2BD2C();
  v75 = v82;
  v76 = aBlock;
  v69 = v83;
  sub_240945D78(v7);
  sub_240A2C00C();
  (*(v5 + 8))(v7, v80);
  v20 = *(v9 + 56);
  v80 = v2;
  v21 = v2 + v20;
  v22 = *v21;
  v23 = *(v21 + 8);
  if ((v23 & 1) == 0)
  {

    sub_240A2C2BC();
    v24 = sub_240A2B84C();
    sub_240A2AFEC();

    v25 = v71;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v22, 0);
    (*(v72 + 1))(v25, v73);
  }

  sub_240A2BFFC();
  v87[0] = 1;

  sub_240A2BD3C();
  v26 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  [v26 setDismissalType_];
  v27 = sub_240A2BF1C();

  [v26 setTitle_];

  v28 = sub_240A2BF1C();

  [v26 setSubtitle_];

  v29 = v78;
  sub_24093A034(v80, v78, type metadata accessor for DiscoveryView);
  v30 = (v79 + 16) & v70;
  v31 = swift_allocObject();
  sub_24093A09C(v29, v31 + v30, type metadata accessor for DiscoveryView);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_24093A224;
  *(v32 + 24) = v31;
  *(v32 + 32) = 1;
  v87[0] = v69;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_24093A294;
  *(v33 + 24) = v32;

  v34 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_240937BD4(0, v34[2] + 1, 1, v34, &qword_27E50BF80, &qword_240A31E90);
  }

  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_240937BD4((v35 > 1), v36 + 1, 1, v34, &qword_27E50BF80, &qword_240A31E90);
  }

  v34[2] = v36 + 1;
  v37 = &v34[2 * v36];
  v37[4] = sub_24093A2A0;
  v37[5] = v33;
  v69 = v87[0];
  sub_240A2C06C();
  v38 = v78;
  sub_24093A034(v80, v78, type metadata accessor for DiscoveryView);
  v39 = swift_allocObject();
  v70 = v30;
  sub_24093A09C(v38, v39 + v30, type metadata accessor for DiscoveryView);
  v40 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v41 = swift_allocObject();
  v41[2] = sub_24093A2CC;
  v41[3] = v39;
  v41[4] = v40;
  v42 = v26;

  v43 = sub_240A2BF1C();

  v85 = sub_24093A8F4;
  v86 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v68[1] = &v83;
  v83 = sub_2409DFF20;
  v84 = &block_descriptor_75;
  v44 = _Block_copy(&aBlock);
  v68[0] = objc_opt_self();
  v45 = [v68[0] actionWithTitle:v43 style:0 handler:v44];

  _Block_release(v44);

  v46 = [v42 addAction_];

  if ((v23 & 1) == 0)
  {

    sub_240A2C2BC();
    v47 = sub_240A2B84C();
    sub_240A2AFEC();

    v48 = v71;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v22, 0);
    (*(v72 + 1))(v48, v73);
  }

  sub_240A2BFFC();
  v73 = type metadata accessor for DiscoveryView;
  v49 = v78;
  sub_24093A034(v80, v78, type metadata accessor for DiscoveryView);
  v50 = v70;
  v51 = swift_allocObject();
  v72 = type metadata accessor for DiscoveryView;
  sub_24093A09C(v49, v51 + v50, type metadata accessor for DiscoveryView);
  v52 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v53 = swift_allocObject();
  v53[2] = sub_24093A8F8;
  v53[3] = v51;
  v53[4] = v52;
  v54 = v42;

  v55 = sub_240A2BF1C();

  v85 = sub_24093A8F4;
  v86 = v53;
  aBlock = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v83 = sub_2409DFF20;
  v84 = &block_descriptor_86;
  v56 = _Block_copy(&aBlock);
  v57 = [v68[0] actionWithTitle:v55 style:1 handler:v56];

  _Block_release(v56);

  v58 = [v54 addAction_];

  sub_24093A034(v80, v49, v73);
  v59 = swift_allocObject();
  sub_24093A09C(v49, v59 + v50, v72);
  LOBYTE(aBlock) = v69;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_24093A420;
  *(v60 + 24) = v59;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_240937BD4(0, v34[2] + 1, 1, v34, &qword_27E50BF80, &qword_240A31E90);
  }

  v62 = v34[2];
  v61 = v34[3];
  if (v62 >= v61 >> 1)
  {
    v34 = sub_240937BD4((v61 > 1), v62 + 1, 1, v34, &qword_27E50BF80, &qword_240A31E90);
  }

  v63 = v76;

  v64 = v75;

  v34[2] = v62 + 1;
  v66 = &v34[2 * v62];
  v66[4] = sub_24093A8F0;
  v66[5] = v60;
  LOBYTE(v66) = aBlock;
  v67 = v74;
  *v74 = v54;
  v67[1] = v34;
  v67[2] = v63;
  v67[3] = v64;
  *(v67 + 32) = v66;
  return result;
}

uint64_t sub_240934CBC(void *a1, void *a2)
{
  v4 = sub_240A2A10C();
  MEMORY[0x28223BE20](v4 - 8);
  [a2 setEnabled_];
  v5 = sub_240A2BF1C();
  [a1 showActivityIndicatorWithStatus_];

  if (qword_27E50AED8 != -1)
  {
    swift_once();
  }

  v6 = sub_240A2B00C();
  __swift_project_value_buffer(v6, qword_27E50BD00);
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "User selected to add new teen account, proceeding", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  v11 = sub_240A29F7C();
  v12 = sub_240A29F3C();
  sub_240A29FBC();
  v12(v16, 0);
  v11(v17, 0);
  sub_240A2BCFC();
  MEMORY[0x245CCC9B0](v10);
  v13 = sub_240A29F7C();
  v14 = sub_240A29F3C();
  sub_240A29FEC();
  v14(v16, 0);
  v13(v17, 0);
  return sub_240A2BCFC();
}

uint64_t sub_240934F38@<X0>(_BYTE *a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v18 = sub_240A2A01C();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A29F6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A2A10C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0](v15);
  sub_240A29F8C();
  (*(v12 + 8))(v14, v11);
  sub_240A29F4C();
  (*(v8 + 8))(v10, v7);
  sub_240A29FCC();
  (*(v4 + 8))(v6, v18);
  v16 = sub_240A2995C();
  LOBYTE(v8) = (*(*(v16 - 8) + 48))(v3, 1, v16) != 1;
  result = sub_240919300(v3, &qword_27E50BFD0, qword_240A31758);
  *v19 = v8;
  return result;
}

uint64_t sub_240935224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v64 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v48 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFB0, &qword_240A31EA8);
  MEMORY[0x28223BE20](v63);
  v62 = &v48 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE30, &qword_240A31CF0);
  MEMORY[0x28223BE20](v61);
  v60 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x28223BE20](v6);
  v58 = &v48 - v7;
  v8 = type metadata accessor for DiscoveryView(0);
  v56 = *(v8 - 8);
  v55 = *(v56 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_240A2A01C();
  v67 = *(v52 - 8);
  v10 = MEMORY[0x28223BE20](v52);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = sub_240A29F6C();
  v15 = *(v14 - 8);
  v65 = v14;
  v66 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = sub_240A2A10C();
  v49 = v21;
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v51 = v6;
  MEMORY[0x245CCC9B0](v6);
  sub_240A29F8C();
  v28 = *(v22 + 8);
  v28(v27, v21);
  sub_240A29F4C();
  v29 = *(v66 + 8);
  v66 += 8;
  v29(v20, v65);
  v57 = sub_240A2A00C();
  v30 = *(v67 + 8);
  v67 += 8;
  v31 = v52;
  v30(v13, v52);
  v32 = v50;
  MEMORY[0x245CCC9B0](v6);
  sub_240A29F8C();
  v28(v25, v49);
  v33 = v53;
  sub_240A29F4C();
  v34 = v18;
  v35 = v59;
  v29(v34, v65);
  LOBYTE(v22) = sub_240A29FFC();
  v30(v33, v31);
  v36 = v54;
  sub_24093A034(v32, v54, type metadata accessor for DiscoveryView);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = swift_allocObject();
  sub_24093A09C(v36, v38 + v37, type metadata accessor for DiscoveryView);
  v39 = v58;
  sub_240A2BD1C();
  swift_getKeyPath();
  v40 = v60;
  sub_240A2BD0C();

  sub_240919300(v39, &qword_27E50BD18, &qword_240A33940);
  swift_getKeyPath();
  v41 = v62;
  sub_240A2BD0C();

  sub_240919300(v40, &qword_27E50BE30, &qword_240A31CF0);
  swift_getKeyPath();
  sub_240A2BD0C();
  v42 = v64;

  sub_240919300(v41, &unk_27E50BFB0, &qword_240A31EA8);
  v69[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBB0, &qword_240A31748);
  sub_240A2BC4C();
  v43 = *(&v70 + 1);
  *(v42 + 16) = v70;
  *(v42 + 24) = v43;
  v69[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFC0, &qword_240A31750);
  sub_240A2BC4C();
  *(v42 + 32) = v70;
  *&v70 = v57;
  *(&v70 + 1) = sub_240927310;
  v71 = 0;
  v72 = sub_2409391CC;
  v73 = 0;
  v74 = sub_24093923C;
  v75 = 0;
  v69[0] = MEMORY[0x277D84F98];
  sub_24093934C(&v70, 1, v69);
  v68 = v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBA0, &qword_240A31740);
  sub_240A2BC4C();
  v44 = v69[1];
  *v42 = v69[0];
  *(v42 + 8) = v44;
  v45 = type metadata accessor for FamilyPicker(0);
  result = sub_24093A86C(v35, v42 + v45[7], &qword_27E50BB80, &unk_240A31718);
  *(v42 + v45[8]) = v22 & 1;
  v47 = (v42 + v45[9]);
  *v47 = sub_24093A7C4;
  v47[1] = v38;
  return result;
}

uint64_t sub_240935A2C()
{
  v0 = sub_240A2A10C();
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27E50AED8 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50BD00);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "User selected to add new teen account, proceeding", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  v6 = sub_240A29F7C();
  v7 = sub_240A29F3C();
  sub_240A29FBC();
  v7(v11, 0);
  v6(v12, 0);
  sub_240A2BCFC();
  MEMORY[0x245CCC9B0](v5);
  v8 = sub_240A29F7C();
  v9 = sub_240A29F3C();
  sub_240A29FEC();
  v9(v11, 0);
  v8(v12, 0);
  return sub_240A2BCFC();
}

uint64_t sub_240935C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_240935D34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  MEMORY[0x28223BE20](v2 - 8);
  sub_240919298(a1, &v5 - v3, &qword_27E50BFD0, qword_240A31758);
  return sub_240A29FDC();
}

uint64_t sub_240935DDC(void *a1, void *a2)
{
  v4 = sub_240A2A10C();
  MEMORY[0x28223BE20](v4 - 8);
  [a2 setEnabled_];
  v5 = sub_240A2BF1C();
  [a1 showActivityIndicatorWithStatus_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  v6 = sub_240A29F7C();
  v7 = sub_240A29F3C();
  sub_240A29FEC();
  v7(v9, 0);
  v6(v10, 0);
  return sub_240A2BCFC();
}

uint64_t sub_240935F34(void *a1, void *a2)
{
  v4 = sub_240A2A10C();
  MEMORY[0x28223BE20](v4 - 8);
  [a2 setEnabled_];
  v5 = sub_240A2BF1C();
  [a1 showActivityIndicatorWithStatus_];

  if (qword_27E50AED8 != -1)
  {
    swift_once();
  }

  v6 = sub_240A2B00C();
  __swift_project_value_buffer(v6, qword_27E50BD00);
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "User selected to add existing teen account, proceeding", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  v10 = sub_240A29F7C();
  v11 = sub_240A29F3C();
  sub_240A29FEC();
  v11(v13, 0);
  v10(v14, 0);
  return sub_240A2BCFC();
}

void sub_240936140(void *a1)
{
  v19 = sub_240A2A01C();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_240A29F6C();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A10C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 actions];
  sub_2409194E8(0, &qword_27E50BF78, 0x277D432F0);
  v13 = sub_240A2C16C();

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x245CCD150](1, v13);
    goto LABEL_4;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v14 = *(v13 + 40);
LABEL_4:
    v15 = v14;

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
    MEMORY[0x245CCC9B0](v16);
    sub_240A29F8C();
    (*(v9 + 8))(v11, v8);
    sub_240A29F4C();
    (*(v5 + 8))(v7, v18);
    v17 = sub_240A29FFC();
    (*(v2 + 8))(v4, v19);
    [v15 setEnabled_];

    return;
  }

  __break(1u);
}

uint64_t sub_24093641C@<X0>(void *a1@<X8>)
{
  v14 = a1;
  v15 = sub_240A29F2C();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240A29F6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A10C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0](v12);
  sub_240A29F8C();
  (*(v9 + 8))(v11, v8);
  sub_240A29F5C();
  (*(v5 + 8))(v7, v4);
  sub_240930814(v3, v14);
  return (*(v1 + 8))(v3, v15);
}

unint64_t sub_240936678()
{
  result = qword_27E50BE38;
  if (!qword_27E50BE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BE20, &qword_240A31CE8);
    sub_240936704();
    sub_2409368A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE38);
  }

  return result;
}

unint64_t sub_240936704()
{
  result = qword_27E50BE40;
  if (!qword_27E50BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BE18, &qword_240A31CE0);
    sub_24093A824(&qword_27E50BE48, type metadata accessor for DiscoveringView, &unk_240A36E78);
    sub_2409367C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE40);
  }

  return result;
}

unint64_t sub_2409367C0()
{
  result = qword_27E50BE50;
  if (!qword_27E50BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDF8, &qword_240A31CC0);
    sub_24093A824(&qword_27E50BE58, type metadata accessor for DiscoveredView, &unk_240A35938);
    sub_24091CE28(&qword_27E50BE60, &qword_27E50BE68, &qword_240A31CF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE50);
  }

  return result;
}

unint64_t sub_2409368A8()
{
  result = qword_27E50BE70;
  if (!qword_27E50BE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDB0, &qword_240A31C98);
    sub_240936934();
    sub_240936FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE70);
  }

  return result;
}

unint64_t sub_240936934()
{
  result = qword_27E50BE78;
  if (!qword_27E50BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDF0, &qword_240A31CB8);
    sub_2409369EC();
    sub_240936D5C(&qword_27E50BEF0, &qword_27E50BDB8, &qword_240A31CA0, sub_240936E0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE78);
  }

  return result;
}

unint64_t sub_2409369EC()
{
  result = qword_27E50BE80;
  if (!qword_27E50BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDE8, &unk_240A35000);
    sub_240936A78();
    sub_240936B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE80);
  }

  return result;
}

unint64_t sub_240936A78()
{
  result = qword_27E50D780;
  if (!qword_27E50D780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDE0, &qword_240A31CB0);
    sub_24093A824(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D780);
  }

  return result;
}

unint64_t sub_240936B60()
{
  result = qword_27E50BEA0;
  if (!qword_27E50BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D790, &unk_240A38E20);
    sub_240936BEC();
    sub_240936CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BEA0);
  }

  return result;
}

unint64_t sub_240936BEC()
{
  result = qword_27E50BEB0;
  if (!qword_27E50BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D7A0, &unk_240A35020);
    sub_24091CE28(&unk_27E50BEC0, &unk_27E50D7B0, &unk_240A38E30, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BEB0);
  }

  return result;
}

unint64_t sub_240936CA4()
{
  result = qword_27E50BED0;
  if (!qword_27E50BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D7C0, &unk_240A35030);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BED0);
  }

  return result;
}

uint64_t sub_240936D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240936E0C()
{
  result = qword_27E50BEF8;
  if (!qword_27E50BEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BF00, &qword_240A31D00);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240936EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BEF8);
  }

  return result;
}

unint64_t sub_240936EC4()
{
  result = qword_27E50BF10;
  if (!qword_27E50BF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BF18, &qword_240A31D08);
    sub_240936F7C();
    sub_24091CE28(&qword_27E50BE60, &qword_27E50BE68, &qword_240A31CF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BF10);
  }

  return result;
}

unint64_t sub_240936F7C()
{
  result = qword_27E50BF20;
  if (!qword_27E50BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BF20);
  }

  return result;
}

unint64_t sub_240936FD0()
{
  result = qword_27E50BF28;
  if (!qword_27E50BF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BF30, &qword_240A31D10);
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BF28);
  }

  return result;
}

uint64_t sub_240937080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = a1;
}

uint64_t sub_2409370D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

void sub_240937130(void *a1, void (*a2)(uint64_t), uint64_t a3, char a4)
{
  v7 = sub_240A2B80C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for FamilyPicker(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  a2(v9);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF90, &qword_240A31EA0));
  v11 = sub_240A2B5EC();
  sub_240A2B7FC();
  sub_240A2B5AC();
  v12 = sub_240A2B3BC();
  v14 = sub_240A2B5BC();
  if ((*v13 & v12) != 0)
  {
    *v13 &= ~v12;
  }

  v14(v84, 0);
  v15 = v11;
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  [v15 willMoveToParentViewController_];
  [a1 addChildViewController_];
  if (a4)
  {
    v18 = [a1 contentView];
  }

  else
  {
    v18 = [a1 view];
    if (!v18)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  v19 = [v15 view];
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v19;
  [v18 addSubview_];

  [v15 didMoveToParentViewController_];
  if (a4)
  {
    v21 = [a1 contentView];
    v22 = [v21 mainContentGuide];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_240A318E0;
    v24 = [v15 view];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 leadingAnchor];

      v27 = [v22 leadingAnchor];
      v28 = [v26 constraintEqualToAnchor_];

      *(v23 + 32) = v28;
      v29 = [v15 view];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 trailingAnchor];

        v32 = [v22 trailingAnchor];
        v33 = [v31 constraintEqualToAnchor_];

        *(v23 + 40) = v33;
        v34 = [v15 view];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 topAnchor];

          v37 = [v22 topAnchor];
          v38 = [v36 constraintEqualToAnchor_];

          *(v23 + 48) = v38;
          v39 = [v15 view];
          if (v39)
          {
            v40 = v39;
            v41 = [v39 bottomAnchor];

            v42 = [v22 bottomAnchor];
            v43 = [v41 constraintEqualToAnchor_];

            *(v23 + 56) = v43;
            v44 = [v15 view];
            if (v44)
            {
              v45 = v44;
              v46 = [v44 centerXAnchor];

              v47 = [v22 centerXAnchor];
              v48 = [v46 constraintEqualToAnchor_];

              *(v23 + 64) = v48;
              v49 = [v15 view];

              if (v49)
              {
                v50 = [v49 centerYAnchor];

                v51 = [v22 centerYAnchor];
                v52 = [v50 constraintEqualToAnchor_];

                *(v23 + 72) = v52;
                sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
                v53 = sub_240A2C15C();

                [v18 addConstraints_];

LABEL_23:
                return;
              }

              goto LABEL_37;
            }

            goto LABEL_35;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_240A318E0;
  v55 = [v15 view];
  if (!v55)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v56 = v55;
  v57 = [v55 leadingAnchor];

  v58 = [v18 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v54 + 32) = v59;
  v60 = [v15 view];
  if (!v60)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v61 = v60;
  v62 = [v60 trailingAnchor];

  v63 = [v18 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v54 + 40) = v64;
  v65 = [v15 view];
  if (!v65)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v66 = v65;
  v67 = [v65 topAnchor];

  v68 = [v18 topAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v54 + 48) = v69;
  v70 = [v15 view];
  if (!v70)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v71 = v70;
  v72 = [v70 bottomAnchor];

  v73 = [v18 bottomAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v54 + 56) = v74;
  v75 = [v15 view];
  if (!v75)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v76 = v75;
  v77 = [v75 centerXAnchor];

  v78 = [v18 centerXAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v54 + 64) = v79;
  v80 = [v15 view];

  if (v80)
  {
    v81 = [v80 centerYAnchor];

    v82 = [v18 centerYAnchor];
    v83 = [v81 constraintEqualToAnchor_];

    *(v54 + 72) = v83;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v53 = sub_240A2C15C();

    [v18 addConstraints_];
    goto LABEL_23;
  }

LABEL_38:
  __break(1u);
}

char *sub_240937AB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C040, &qword_240A31F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_240937BD4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF88, &qword_240A31E98);
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_240937D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C010, &unk_240A31650);
  v33 = v4;
  result = sub_240A2C5BC();
  v7 = result;
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
    v14 = result + 64;
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
      if (v33)
      {
        sub_24091C780(v24, v34);
      }

      else
      {
        sub_240913DC0(v24, v34);
      }

      sub_240A2C72C();
      sub_240A2C09C();
      result = sub_240A2C74C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24091C780(v34, (*(v7 + 56) + 32 * v15));
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_240937FB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
  v34 = v4;
  result = sub_240A2C5BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_240A2C72C();
      sub_240A2C09C();
      result = sub_240A2C74C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_240938260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_240A2995C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A299DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C000, &qword_240A31F28);
  v47 = v4;
  result = sub_240A2C5BC();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_24093A824(&qword_27E50BAC0, MEMORY[0x277CED3D8], MEMORY[0x277CED3E0]);
      result = sub_240A2BEEC();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_240938708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
  result = sub_240A2C5BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_24091C780((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_24092702C(v23, &v36);
        sub_240913DC0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_240A2C42C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_24091C780(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_2409389C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C010, &unk_240A31650);
  v2 = *v0;
  v3 = sub_240A2C5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_240913DC0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24091C780(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_240938B64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
  v2 = *v0;
  v3 = sub_240A2C5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

  return result;
}

char *sub_240938CD4()
{
  v1 = v0;
  v41 = sub_240A2995C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_240A299DC();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C000, &qword_240A31F28);
  v4 = *v0;
  v5 = sub_240A2C5AC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_240939028()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
  v2 = *v0;
  v3 = sub_240A2C5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 40 * v17;
        sub_24092702C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_240913DC0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_24091C780(v22, (*(v4 + 56) + v17));
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

  return result;
}

uint64_t sub_24093923C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFE0, &qword_240A31F18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_240919298(a1, &v9 - v5, &qword_27E50BFE0, &qword_240A31F18);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return sub_24093A86C(v6, a2, &unk_27E50BFF0, &qword_240A31710);
  }

  __break(1u);
  return result;
}

void sub_24093934C(uint64_t *a1, int a2, void *a3)
{
  v93 = a3;
  v89 = a2;
  v92 = sub_240A299DC();
  v86 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v94 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A2995C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v91 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v113 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD8, &qword_240A31F10);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v17);
  v85 = &v81 - v20;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFE0, &qword_240A31F18);
  v114 = *(v112 - 8);
  v21 = MEMORY[0x28223BE20](v112);
  v83 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v104 = &v81 - v24;
  MEMORY[0x28223BE20](v23);
  v88 = &v81 - v25;
  v26 = *a1;
  v97 = a1[1];
  v27 = a1[2];
  v103 = a1[3];
  v117 = v26;
  v28 = a1[4];
  v82 = a1[5];
  v29 = a1[6];
  v30 = *(v26 + 16);
  sub_240919298(&v117, v115, &qword_27E50BFE8, &qword_240A31F20);
  v96 = v6 + 16;
  v106 = (v6 + 48);
  v107 = (v6 + 56);
  v101 = v6;
  v102 = (v6 + 32);
  v31 = (v6 + 8);
  v32 = v30;
  v99 = v31;
  v110 = (v114 + 48);
  v111 = (v114 + 56);
  v90 = (v86 + 32);
  v100 = v27;

  v105 = v28;

  v84 = v29;

  v33 = 0;
  v109 = v5;
  while (2)
  {
    v34 = v108;
    if (v33 == v32)
    {
LABEL_3:
      v35 = 1;
      v114 = v32;
      goto LABEL_7;
    }

    while (1)
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v33 >= *(v26 + 16))
      {
        goto LABEL_33;
      }

      (*(v101 + 16))(v34, v26 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v33, v5);
      v35 = 0;
      v114 = v33 + 1;
LABEL_7:
      v36 = 1;
      (*v107)(v34, v35, 1, v5);
      v37 = v34;
      v38 = v113;
      sub_24093A86C(v37, v113, &qword_27E50BFD0, qword_240A31758);
      if ((*v106)(v38, 1, v5) != 1)
      {
        v39 = v98;
        (*v102)(v98, v113, v5);
        v97(v39);
        (*v99)(v39, v5);
        v36 = 0;
      }

      v40 = v26;
      v41 = v112;
      v42 = *v111;
      (*v111)(v19, v36, 1, v112);
      v43 = *v110;
      if ((*v110)(v19, 1, v41) == 1)
      {
        sub_240919300(v19, &qword_27E50BFD8, &qword_240A31F10);
        v48 = 1;
        v49 = v85;
        goto LABEL_15;
      }

      v44 = v32;
      v45 = v19;
      v46 = v19;
      v47 = v104;
      sub_24093A86C(v46, v104, &qword_27E50BFE0, &qword_240A31F18);
      if (v103(v47))
      {
        break;
      }

      sub_240919300(v47, &qword_27E50BFE0, &qword_240A31F18);
      v34 = v108;
      v5 = v109;
      v19 = v45;
      v32 = v44;
      v33 = v114;
      if (v114 == v44)
      {
        goto LABEL_3;
      }
    }

    v50 = v85;
    sub_24093A86C(v47, v85, &qword_27E50BFE0, &qword_240A31F18);
    v49 = v50;
    v48 = 0;
    v19 = v45;
    v32 = v44;
LABEL_15:
    v95 = 1;
    v51 = v49;
    v52 = v112;
    v42(v49, v48, 1, v112);
    v53 = v87;
    sub_24093A86C(v51, v87, &qword_27E50BFD8, &qword_240A31F10);
    if (v43(v53, 1, v52) != 1)
    {
      v54 = v83;
      sub_24093A86C(v87, v83, &qword_27E50BFE0, &qword_240A31F18);
      v82(v54);
      sub_240919300(v54, &qword_27E50BFE0, &qword_240A31F18);
      v95 = 0;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710);
    v56 = v88;
    (*(*(v55 - 8) + 56))(v88, v95, 1, v55);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710);
    if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
    {
      sub_240919300(&v117, &qword_27E50BFE8, &qword_240A31F20);

      sub_240919300(&v117, &qword_27E50BFE8, &qword_240A31F20);

      return;
    }

    v58 = *(v57 + 48);
    v59 = *v90;
    v60 = v94;
    (*v90)(v94, v56, v92);
    v61 = *v102;
    (*v102)(v91, &v56[v58], v109);
    v62 = *v93;
    v64 = sub_240925B68(v60);
    v65 = v62[2];
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_34;
    }

    v68 = v59;
    if (v62[3] >= v67)
    {
      v26 = v40;
      if (v89)
      {
        v5 = v109;
        if (v63)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v77 = v63;
        sub_240938CD4();
        v78 = v77;
        v5 = v109;
        if (v78)
        {
          goto LABEL_28;
        }
      }

LABEL_25:
      v73 = *v93;
      *(*v93 + 8 * (v64 >> 6) + 64) |= 1 << v64;
      v68(v73[6] + *(v86 + 72) * v64, v94, v92);
      v61((v73[7] + *(v101 + 72) * v64), v91, v5);
      v74 = v73[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (!v75)
      {
        v73[2] = v76;
        v89 = 1;
        v33 = v114;
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

  v69 = v63;
  sub_240938260(v67, v89 & 1);
  v70 = sub_240925B68(v94);
  if ((v69 & 1) != (v71 & 1))
  {
LABEL_36:
    sub_240A2C68C();
    __break(1u);
    goto LABEL_37;
  }

  v64 = v70;
  v72 = v69;
  v26 = v40;
  v5 = v109;
  if ((v72 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  v79 = swift_allocError();
  swift_willThrow();
  sub_240919300(&v117, &qword_27E50BFE8, &qword_240A31F20);

  v116 = v79;
  v80 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_240919300(&v117, &qword_27E50BFE8, &qword_240A31F20);
    (*v99)(v91, v5);
    (*(v86 + 8))(v94, v92);

    return;
  }

LABEL_37:
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_240A2C47C();
  MEMORY[0x245CCCD90](0xD00000000000001BLL, 0x8000000240A3B3B0);
  sub_240A2C57C();
  MEMORY[0x245CCCD90](39, 0xE100000000000000);
  sub_240A2C58C();
  __break(1u);
}

uint64_t sub_240939FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24093A034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24093A09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24093A1B0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for DiscoveryView(0);

  return sub_240934F38(a1);
}

uint64_t sub_24093A224@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiscoveryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_240935224(v4, a1);
}

uint64_t sub_24093A2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DiscoveryView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t objectdestroy_37Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24093A3B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3(Strong, a1);
}

void sub_24093A420(void *a1)
{
  type metadata accessor for DiscoveryView(0);

  sub_240936140(a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for DiscoveryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940) + 32);
  v7 = sub_240A2A10C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + v1[8];

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v10 = sub_240A2976C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 6, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v12 = v5 + v1[9];
  v13 = sub_240A2975C();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A29DBC();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_240A29DBC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  sub_24090C1E4(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_24090C1E4(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24093A7C4()
{
  type metadata accessor for DiscoveryView(0);

  return sub_240935A2C();
}

uint64_t sub_24093A824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24093A86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_24093A8FC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24093A95C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24093A9A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *RepairCardViewController.init(contextBuilder:reportHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v43 = a2;
  v7 = sub_240A29A9C();
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for RepairView(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController] = 0;
  v20 = type metadata accessor for RepairCardViewController();
  v48.receiver = v4;
  v48.super_class = v20;
  v21 = objc_msgSendSuper2(&v48, sel_initWithContentView_, 0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a3;
  v23[4] = a4;
  sub_240A2A27C();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  v24 = v21;

  sub_240A2C32C();
  v25 = sub_240A2B01C();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = sub_240A2A25C();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  sub_240919298(v12, v39, &qword_27E50C058, &qword_240A31F50);
  sub_240A2BC4C();
  sub_24093B450(v12);
  v28 = v19 + *(v17 + 44);
  v44 = 0;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C070, &qword_240A31F68);
  sub_240A2BC4C();
  v29 = v47;
  *v28 = v46;
  *(v28 + 2) = v29;
  v30 = *(v17 + 48);
  *(v19 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  sub_240A29A4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C078, &qword_240A31FA8);
  swift_allocObject();
  v44 = sub_240A29CDC();
  sub_240A2BC4C();

  v31 = *(&v46 + 1);
  v19[5] = v46;
  v19[6] = v31;
  v32 = v43;
  *v19 = v42;
  v19[1] = v32;
  v19[2] = sub_24093B444;
  v19[3] = v23;
  v19[4] = v26;
  v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C080, qword_240A31FB0));
  v34 = sub_240A2B5EC();

  v35 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v36 = *&v24[v35];
  *&v24[v35] = v34;

  return v24;
}

void sub_24093AF64(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_240A2C24C();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_240919298(a1, v10, &qword_27E50C088, &unk_240A32000);
    sub_240A2C21C();
    v17 = v15;

    v18 = sub_240A2C20C();
    v19 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v18;
    v20[3] = v21;
    v20[4] = v17;
    v20[5] = a3;
    v20[6] = a4;
    sub_24093BCB8(v10, v20 + v19);
    sub_2409230D4(0, 0, v13, &unk_240A32018, v20);
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_24093B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v7[12] = v8;
  v7[13] = *(v8 + 64);
  v7[14] = swift_task_alloc();
  sub_240A2C21C();
  v7[15] = sub_240A2C20C();
  v10 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24093B2AC, v10, v9);
}

uint64_t sub_24093B2AC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  sub_240919298(v4, v1, &qword_27E50C088, &unk_240A32000);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v3;
  sub_24093BCB8(v1, v8 + v7);
  v0[6] = sub_24093BE40;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2409EC704;
  v0[5] = &block_descriptor_5;
  v9 = _Block_copy(v0 + 2);

  [v5 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24093B450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24093B4B8()
{
  v1 = v0;
  v2 = sub_240A2B80C();
  MEMORY[0x28223BE20](v2 - 8);
  v63.receiver = v0;
  v63.super_class = type metadata accessor for RepairCardViewController();
  objc_msgSendSuper2(&v63, sel_viewDidLoad);
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!v4)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
  sub_240A2B7FC();
  sub_240A2B5AC();

  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = sub_240A2B3BC();
  v10 = sub_240A2B5BC();
  if ((*v9 & v8) != 0)
  {
    *v9 &= ~v8;
  }

  v10(v62, 0);

  v11 = *&v1[v3];
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v14 willMoveToParentViewController_];
  if (!*&v1[v3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addChildViewController_];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v15;
  v17 = *&v1[v3];
  if (!v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = [v17 view];
  if (!v18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = v18;
  [v16 addSubview_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_240A318E0;
  v23 = *&v1[v3];
  if (!v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v24 = [v23 view];
  if (!v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v21 topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 32) = v28;
  v29 = *&v1[v3];
  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v21 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v22 + 40) = v34;
  v35 = *&v1[v3];
  if (!v35)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = [v35 view];
  if (!v36)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v21 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v22 + 48) = v40;
  v41 = *&v1[v3];
  if (!v41)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v42 = [v41 view];
  if (!v42)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v21 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v22 + 56) = v46;
  v47 = *&v1[v3];
  if (!v47)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v48 = [v47 view];
  if (!v48)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v49 = v48;
  v50 = [v48 centerXAnchor];

  v51 = [v21 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v22 + 64) = v52;
  v53 = *&v1[v3];
  if (!v53)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v54 = [v53 view];
  if (!v54)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v55 = v54;
  v56 = objc_opt_self();
  v57 = [v55 centerYAnchor];

  v58 = [v21 centerYAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v22 + 72) = v59;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v60 = sub_240A2C15C();

  [v56 activateConstraints_];

  v61 = *&v1[v3];
  if (v61)
  {
    [v61 didMoveToParentViewController_];

    return;
  }

LABEL_49:
  __break(1u);
}

id RepairCardViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id RepairCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RepairCardViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24093BCB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24093BD28(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_240915E50;

  return sub_24093B1A4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24093BECC()
{
  v1[8] = v0;
  v2 = sub_240A2B00C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_240A2C21C();
  v1[13] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x2822009F8](sub_24093BFCC, v4, v3);
}

uint64_t sub_24093BFCC()
{
  swift_beginAccess();
  v1 = sub_240A2AB3C();
  if (v1 == sub_240A2AB3C())
  {

    sub_240A2AE9C();
    v2 = sub_240A2AFFC();
    v3 = sub_240A2C29C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2408FE000, v2, v3, "AISFlowStepLocationSetup settings flow. Skipping...", v4, 2u);
      MEMORY[0x245CCDDB0](v4, -1, -1);
    }

    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[10];

    (*(v7 + 8))(v5, v6);
    sub_2409F4D78();
LABEL_12:

    v21 = v0[1];

    return v21();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (!Strong)
  {

    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2BC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "AISFlowStepLocationSetup delegate is nil! Skipping...", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);
    goto LABEL_12;
  }

  v9 = *(v0[8] + 24);
  v10 = [objc_allocWithZone(sub_240A2983C()) init];
  v0[17] = v10;
  ObjectType = swift_getObjectType();
  v22 = (*(v9 + 24) + **(v9 + 24));
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_24093C338;

  return v22(v10, ObjectType, v9);
}

uint64_t sub_24093C338(char a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x2822009F8](sub_24093C460, v4, v3);
}

uint64_t sub_24093C460()
{
  *(*(v0 + 64) + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_locationServicesEnabled) = *(v0 + 160);
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_24093C518;

  return sub_2409127E4();
}

uint64_t sub_24093C518()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24093C638, v3, v2);
}

uint64_t sub_24093C638()
{
  v1 = *(v0 + 136);

  sub_240A2982C();

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24093C6C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDA88];
  v3 = sub_240A2A4AC();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_24093C798()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_guardianAuthResponse);
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_childAuthResponse);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_locationServicesEnabled);
  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_settings);
  v5 = objc_allocWithZone(sub_240A2983C());
  v6 = v1;
  v7 = v2;

  v8 = [v5 init];
  v9 = sub_240A2A12C();
  v10 = sub_240A2A11C();
  type metadata accessor for AISFlowStepChildAccountRepair(0);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error) = 0;
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_guardianAuthResponse) = v6;
  v14[4] = MEMORY[0x277CED7C0];
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults) = v7;
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_locationServicesEnabled) = v3;
  v14[3] = v9;
  v14[0] = v10;
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings) = v4;
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask) = v8;
  sub_240919A14(v14, v11 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager);
  v12 = (v11 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider);
  *v12 = sub_24097B004;
  v12[1] = 0;
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = 0;
  sub_240A2B0DC();
  __swift_destroy_boxed_opaque_existential_0(v14);
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v11;
}