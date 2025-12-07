uint64_t type metadata accessor for PMAddGroupMembersView(uint64_t a1)
{
  result = qword_27CDEE448;
  if (!qword_27CDEE448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C85C9E8(uint64_t a1)
{
  sub_21C6E9428();
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C721A6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21C85CAB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PMAddGroupMembersView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C85CAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAddGroupMembersView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85CB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAddGroupMembersView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85CBC4()
{
  v1 = *(type metadata accessor for PMAddGroupMembersView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C85C1FC(v2);
}

void sub_21C85CC4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_21C85CCB0(uint64_t result)
{
  if (*(result + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
    sub_21CB81F54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    sub_21CB84F34();
  }

  return result;
}

uint64_t sub_21C85CD7C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_21C85CDBC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21C74A72C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_21C85CE00()
{
  result = qword_27CDEE510;
  if (!qword_27CDEE510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4D0, &qword_21CBA9CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4C0, &qword_21CBA9CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4B8, &qword_21CBA9CC0);
    sub_21C72ECB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE510);
  }

  return result;
}

unint64_t sub_21C85CF38()
{
  result = qword_27CDEE520;
  if (!qword_27CDEE520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE518, &qword_21CBA9D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE520);
  }

  return result;
}

uint64_t sub_21C85CFB4()
{
  v1 = *(type metadata accessor for PMSearchable(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C85CCB0(v2);
}

unint64_t sub_21C85D014()
{
  result = qword_27CDEE540;
  if (!qword_27CDEE540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE528, &qword_21CBA9D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4E0, &qword_21CBA9CE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4D8, &qword_21CBA9CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE518, &qword_21CBA9D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4D0, &qword_21CBA9CD8);
    sub_21C85CE00();
    swift_getOpaqueTypeConformance2();
    sub_21C85CF38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE540);
  }

  return result;
}

uint64_t sub_21C85D1C0@<X0>(uint64_t a1@<X8>)
{
  sub_21C71F3FC();

  v2 = sub_21CB84054();
  v4 = v3;
  v6 = v5;
  sub_21CB83EB4();
  v7 = sub_21CB84024();
  v9 = v8;
  v11 = v10;

  sub_21C74A72C(v2, v4, v6 & 1);

  v12 = sub_21CB83FD4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_21C74A72C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

BOOL static audit_token_t.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != a7)
  {
    return 0;
  }

  v8 = (a8 ^ a4) >> 32 == 0;
  if (a4 != a8)
  {
    v8 = 0;
  }

  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a1 != a5)
  {
    v8 = 0;
  }

  return !((a7 ^ a3) >> 32) && v8;
}

double sub_21C85D35C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath(byte_21CBA9ED0);
  *&v7 = v1;
  sub_21C85F27C();
  sub_21CB810D4();

  v3 = v1[2];
  v7 = v1[1];
  v8[0] = v3;
  *(v8 + 11) = *(v1 + 43);
  sub_21C82EA84(&v7, &v6);
  v4 = v8[0];
  *a1 = v7;
  a1[1] = v4;
  result = *(v8 + 11);
  *(a1 + 27) = *(v8 + 11);
  return result;
}

uint64_t sub_21C85D3F8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA9ED0);
  *&v9 = v3;
  sub_21C85F27C();
  sub_21CB810D4();

  v4 = v3[2];
  v5 = *(v3 + 43);
  v9 = v3[1];
  v10[0] = v4;
  *(v10 + 11) = v5;
  *(a2 + 27) = v5;
  v6 = v3[2];
  *a2 = v3[1];
  a2[1] = v6;
  return sub_21C82EA84(&v9, &v8);
}

uint64_t sub_21C85D490(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA9ED0);
  sub_21C85F27C();
  sub_21CB810C4();
}

uint64_t sub_21C85D53C(_OWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  a1[1] = *a2;
  a1[2] = v2;
  *(a1 + 43) = *(a2 + 27);
  sub_21C82EA84(a2, &v4);
}

uint64_t sub_21C85D5B0()
{
  swift_getKeyPath(aP_54);
  sub_21C85F27C();
  sub_21CB810D4();

  return *(v0 + 59);
}

uint64_t sub_21C85D620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aP_54);
  sub_21C85F27C();
  sub_21CB810D4();

  *a2 = *(v3 + 59);
  return result;
}

uint64_t sub_21C85D698(char a1)
{
  if (*(v1 + 59) == (a1 & 1))
  {
    *(v1 + 59) = a1 & 1;
    swift_getKeyPath(aP_54);
    v6[0] = v1;
    sub_21C85F27C();
    sub_21CB810D4();

    v3 = sub_21C85EF6C(*(v1 + 59), v6);
    KeyPath = swift_getKeyPath(byte_21CBA9ED0, v3);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB810C4();
    sub_21C85F75C(v6);
  }

  else
  {
    v2 = swift_getKeyPath(aP_54);
    MEMORY[0x28223BE20](v2);
    v6[0] = v1;
    sub_21C85F27C();
    sub_21CB810C4();
  }
}

uint64_t sub_21C85D850(uint64_t a1, char a2)
{
  *(a1 + 59) = a2;
  swift_getKeyPath(aP_54);
  v5[0] = a1;
  sub_21C85F27C();
  sub_21CB810D4();

  v3 = sub_21C85EF6C(*(a1 + 59), v5);
  swift_getKeyPath(byte_21CBA9ED0, v3);
  v5[7] = a1;
  sub_21CB810C4();
  sub_21C85F75C(v5);
}

uint64_t sub_21C85D954()
{

  sub_21C6EA794(v0 + OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage, &unk_27CDF2CA0, &unk_21CBA5520);
  v1 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_21C85DA34@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath(byte_21CBA9ED0);
  *&v8 = v3;
  sub_21C85F27C();
  sub_21CB810D4();

  v4 = v3[2];
  v8 = v3[1];
  v9[0] = v4;
  *(v9 + 11) = *(v3 + 43);
  sub_21C82EA84(&v8, &v7);
  v5 = v9[0];
  *a1 = v8;
  a1[1] = v5;
  result = *(v9 + 11);
  *(a1 + 27) = *(v9 + 11);
  return result;
}

uint64_t sub_21C85DAD0@<X0>(uint64_t a1@<X8>)
{
  sub_21CB813A4();
  v2 = sub_21CB813C4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_21C85DBC4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB80B74();
  v4 = [objc_opt_self() criteriaForExactFQDNPasswordMatchesOfURL_];

  v5 = objc_allocWithZone(MEMORY[0x277D49B70]);
  v6 = sub_21CB85584();
  v7 = [v5 initWithString:v6 matchingType:1];

  [v4 setUserNameQuery_];
  [v4 setOptions_];
  v8 = [objc_opt_self() sharedStore];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21C85F70C;
  *(v10 + 24) = v9;
  v15[4] = sub_21C85F714;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_21C85EB8C;
  v15[3] = &block_descriptor_8;
  v11 = _Block_copy(v15);
  v12 = v4;
  v13 = v2;

  [v8 getSavedAccountsMatchingCriteria:v12 withSynchronousCompletionHandler:v11];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

char *sub_21C85DED0()
{
  v1 = _s18PresentationSourceOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider;
  _s21ConfigurationProviderCMa_0(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage;
  v8 = type metadata accessor for PMOsloBadge(0);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  sub_21CB81104();
  *(v6 + 59) = 0;
  sub_21C85EF6C(0, &v19);
  v9 = v20[0];
  *(v6 + 16) = v19;
  *(v6 + 32) = v9;
  *(v6 + 43) = *(v20 + 11);
  *&v0[v5] = v6;
  v18.receiver = v0;
  v18.super_class = PMSafariStreamlinedStrongPasswordViewController;
  v10 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5A0, &qword_21CBA9EF8);
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v17[3] = v1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_21C85F374(v3, boxed_opaque_existential_0);
  v13 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource;
  swift_beginAccess();
  v14 = v10;
  sub_21C85F3D8(v17, v10 + v13);
  swift_endAccess();

  return v14;
}

id PMSafariStreamlinedStrongPasswordViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void PMSafariStreamlinedStrongPasswordViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider;
  _s21ConfigurationProviderCMa_0(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage;
  v5 = type metadata accessor for PMOsloBadge(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  sub_21CB81104();
  *(v3 + 59) = 0;
  sub_21C85EF6C(0, &v7);
  v6 = v8[0];
  *(v3 + 16) = v7;
  *(v3 + 32) = v6;
  *(v3 + 43) = *(v8 + 11);
  *(v0 + v2) = v3;
  sub_21CB861C4();
  __break(1u);
}

Swift::Void __swiftcall PMSafariStreamlinedStrongPasswordViewController.loadView()()
{
  v1 = [objc_opt_self() sharedLogger];
  [v1 didSurfaceNewStrongPasswordView];

  v2 = *&v0[OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider];
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_21C6EDBAC(v13, v12, &unk_27CDFA2C0, &unk_21CBA68A0);
  v5 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDFA2C0, &unk_21CBA68A0);
  sub_21CB84D44();
  sub_21C6EA794(v13, &unk_27CDFA2C0, &unk_21CBA68A0);
  v15[0] = sub_21C85F118;
  v15[1] = v3;
  v15[2] = sub_21C85F120;
  v15[3] = v4;
  v18 = v2;
  v19 = 0;
  sub_21C6EA794(v20, &qword_27CDF3260, &qword_21CBAF450);
  v20[5] = 0;
  sub_21C6EDBAC(&v9, v20, &unk_27CDFA2C0, &unk_21CBA68A0);
  v16 = 0u;
  v17 = 0u;
  v6 = objc_opt_self();
  v20[6] = [v6 biometryType];
  LOBYTE(v6) = [v6 isPad];
  sub_21C6EA794(&v9, &unk_27CDFA2C0, &unk_21CBA68A0);
  v21 = v6;
  sub_21C6EDBAC(v15, &v9, &qword_27CDEE568, &qword_21CBA9E30);
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE570, &qword_21CBA9E38));
  v8 = sub_21CB827D4();
  sub_21C6EA794(v15, &qword_27CDEE568, &qword_21CBA9E30);
  [v5 setView_];
}

void sub_21C85E600(uint64_t a1, id a2)
{
  if (a1 == 1)
  {
    v5 = [a2 delegate];
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        [v6 streamlinedStrongPasswordViewControllerDeclinedStrongPassword_];
      }

      swift_unknownObjectRelease();
    }

    oslog = [objc_opt_self() sharedLogger];
    [oslog didSelectXForNewStrongPassword];
  }

  else if (a1 == 8)
  {
    v3 = [a2 delegate];
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        [v4 streamlinedStrongPasswordViewController:a2 shouldFillStrongPasswordWithFormat:0];
      }

      swift_unknownObjectRelease();
    }

    oslog = [objc_opt_self() sharedLogger];
    [oslog didSelectNewStrongPassword];
  }

  else
  {
    if (qword_27CDEA3E0 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE18550);
    oslog = sub_21CB81C64();
    v8 = sub_21CB85AF4();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      type metadata accessor for PMSafariAutoFillStrongPasswordViewAction(0);
      v11 = sub_21CB85624();
      v13 = sub_21C98E004(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21C6E5000, oslog, v8, "Performing unspecified action in streamlined strong password view: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);

      return;
    }
  }
}

id sub_21C85E8A0(int a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      [v4 streamlinedStrongPasswordViewController:a2 shouldFillStrongPasswordWithFormat:0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id PMSafariStreamlinedStrongPasswordViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_21C85EAC8(void *a1)
{
  if (a1)
  {
    v1 = [a1 matchesForPasswordAutoFill];
    sub_21C6E8F4C(0, &qword_27CDEE5A8, 0x277D49B38);
    v2 = sub_21CB85824();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (v2 >> 62)
  {
    v3 = sub_21CB85FA4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_21C85D698(v3 == 0);
}

void sub_21C85EB8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

uint64_t sub_21C85EBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s18PresentationSourceOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5D0, &unk_21CBA9F80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v15 = &v30 + *(v14 + 56) - v12;
  sub_21C85F89C(a1, &v30 - v12);
  sub_21C85F89C(a2, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5A0, &qword_21CBA9EF8);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v13, 1, v16) == 1)
  {
    if (v17(v15, 1, v16) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v33 = v7;
  v19 = v4;
  sub_21C85F89C(v13, v10);
  v20 = *(v16 + 48);
  v21 = *&v10[v20 + 8];
  v32 = *&v10[v20];
  if (v17(v15, 1, v16) == 1)
  {

    (*(v5 + 8))(v10, v19);
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDEE5D0, &unk_21CBA9F80);
    return 0;
  }

  v22 = v21;
  v23 = *&v15[v20 + 8];
  v31 = *&v15[v20];
  v24 = v19;
  v25 = v33;
  (*(v5 + 32))();
  v26 = sub_21CB80B84();
  v27 = *(v5 + 8);
  v27(v10, v24);
  if (v26)
  {
    if (v32 == v31 && v22 == v23)
    {

      v27(v25, v24);
      goto LABEL_3;
    }

    v29 = sub_21CB86344();

    v27(v25, v24);
    if (v29)
    {
LABEL_3:
      sub_21C85F900(v13);
      return 1;
    }
  }

  else
  {
    v27(v25, v24);
  }

  sub_21C85F900(v13);
  return 0;
}

double sub_21C85EF6C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  v11(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5B0, &unk_21CBA9F30);
  v15 = swift_allocObject();
  *&result = 2;
  *(v15 + 16) = xmmword_21CBA15B0;
  *(v15 + 32) = a1;
  *(v15 + 33) = 2;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = 0;
  *(a2 + 42) = 0;
  return result;
}

void sub_21C85F130(uint64_t a1)
{
  sub_21C85F210(319);
  if (v1 <= 0x3F)
  {
    sub_21CB81114();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21C85F210(uint64_t a1)
{
  if (!qword_27CDEE588)
  {
    type metadata accessor for PMOsloBadge(255);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEE588);
    }
  }
}

unint64_t sub_21C85F27C()
{
  result = qword_27CDEE598;
  if (!qword_27CDEE598)
  {
    _s21ConfigurationProviderCMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE598);
  }

  return result;
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

uint64_t sub_21C85F374(uint64_t a1, uint64_t a2)
{
  v4 = _s18PresentationSourceOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85F3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D90, &qword_21CBA9F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_21C85F448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s18PresentationSourceOMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  v10 = &v3[OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider;
  _s21ConfigurationProviderCMa_0(0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage;
  v14 = type metadata accessor for PMOsloBadge(0);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  sub_21CB81104();
  *(v12 + 59) = 0;
  sub_21C85EF6C(0, &v28);
  v15 = v29[0];
  *(v12 + 16) = v28;
  *(v12 + 32) = v15;
  *(v12 + 43) = *(v29 + 11);
  *&v3[v11] = v12;
  v27.receiver = v3;
  v27.super_class = PMSafariStreamlinedStrongPasswordViewController;
  v16 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5A0, &qword_21CBA9EF8);
  v18 = &v9[*(v17 + 48)];
  v19 = sub_21CB80BE4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v9, a1, v19);
  *v18 = a2;
  *(v18 + 1) = a3;
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v26[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  sub_21C85F374(v9, boxed_opaque_existential_0);
  v22 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource;
  swift_beginAccess();
  v23 = v16;

  sub_21C85F3D8(v26, v16 + v22);
  swift_endAccess();
  sub_21C85DBC4(a1);

  (*(v20 + 8))(a1, v19);
  return v23;
}

uint64_t sub_21C85F7D8(uint64_t a1)
{
  sub_21C85F830(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_21C85F830(uint64_t a1)
{
  if (!qword_27CDEE5C8)
  {
    sub_21CB80BE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDEE5C8);
    }
  }
}

uint64_t sub_21C85F89C(uint64_t a1, uint64_t a2)
{
  v4 = _s18PresentationSourceOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85F900(uint64_t a1)
{
  v2 = _s18PresentationSourceOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PMMiniPasswordsIsMenuBarExtra.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CDEE5D8 = a1;
  return result;
}

uint64_t sub_21C85FA5C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CDEE5D8;
  return result;
}

uint64_t EnvironmentValues.isMenuBarExtra.getter()
{
  sub_21C85FAE4();
  sub_21CB82F94();
  return v1;
}

unint64_t sub_21C85FAE4()
{
  result = qword_27CDEE5E0;
  if (!qword_27CDEE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE5E0);
  }

  return result;
}

uint64_t (*EnvironmentValues.isMenuBarExtra.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_21C85FAE4();
  sub_21CB82F94();
  *(a1 + 16) = *(a1 + 17);
  return sub_21C85FBDC;
}

uint64_t sub_21C85FC24()
{
  swift_getKeyPath(asc_21CBAA0F8);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C85FCDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBAA0F8);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_21C85FD9C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_21CBAA0F8);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
    sub_21CB810C4();
  }
}

uint64_t sub_21C85FEE4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aP_55);
  v6 = v1;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  v4 = sub_21CB85114();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21C85FFDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_21C864DFC(&qword_27CDEE658, MEMORY[0x277CDF0E0], MEMORY[0x277CDF0E8]);
  v9 = sub_21CB85574();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath(aP_55);
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
    sub_21CB810C4();
  }

  return (v10)(a1, v4);
}

uint64_t sub_21C86025C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_21C8602F8()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v48 = v1;
  v49 = v2;
  MEMORY[0x28223BE20](v1);
  v47 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMWiFiNetwork(0);
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v54 = sub_21CB80F64();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = (v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  *&v11 = MEMORY[0x28223BE20](v10 - 8).n128_u64[0];
  v13 = (v45 - v12);
  swift_getKeyPath(asc_21CBAA120, v11);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel___observationRegistrar;
  v60 = v0;
  v15 = sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v60 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);
  swift_bridgeObjectRetain_n();
  sub_21C862FC4(&v60);

  v16 = v60;
  v63 = v60;
  swift_getKeyPath(byte_21CBAA150);
  v60 = v0;
  v57 = v14;
  sub_21CB810D4();

  v55 = (v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  v17 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8);
  v18 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText) & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v17) & 0xF;
  }

  v50 = v0;
  if (!v18)
  {
    v8 = v16;
    v15 = *(v0 + 16);
    v37 = qword_27CDEA4C0;

    if (v37 != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  v19 = *(v16 + 16);

  v52 = v19;
  if (!v19)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_26:

    return sub_21C8617B8(v13, &OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks, sub_21C967BCC, byte_21CBAA1C8, sub_21C864FA4);
  }

  v54 = v15;
  v21 = 0;
  v45[1] = "_selectedNetworkIDs";
  v13 = MEMORY[0x277D84F90];
  v22 = v50;
  v46 = (v49 + 8);
  v49 = v4;
  v51 = v20;
  while (v21 < *(v20 + 16))
  {
    v23 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v15 = *(v53 + 72);
    sub_21C84BF7C(v20 + v23 + v15 * v21, v8);
    v24 = *(v8 + 3);
    v60 = *(v8 + 2);
    v61 = v24;
    swift_getKeyPath(byte_21CBAA150);
    v58 = v22;

    sub_21CB810D4();

    v25 = v55[1];
    v58 = *v55;
    v59 = v25;
    sub_21C71F3FC();
    v26 = sub_21CB85EC4();

    if (v26)
    {
      goto LABEL_17;
    }

    if (v8[*(v4 + 36)])
    {
      v27 = v47;
LABEL_14:
      sub_21CB81014();
      v28 = sub_21CB81004();
      v30 = v29;
      (*v46)(v27, v48);
      goto LABEL_16;
    }

    if (v8[*(v4 + 52)])
    {
      v27 = v47;
      goto LABEL_14;
    }

    v28 = PMWiFiNetwork.localizedSecurityType.getter();
    v30 = v31;
LABEL_16:
    v60 = v28;
    v61 = v30;
    swift_getKeyPath(byte_21CBAA150);
    v22 = v50;
    v58 = v50;
    sub_21CB810D4();

    v32 = v55[1];
    v58 = *v55;
    v59 = v32;
    v33 = sub_21CB85EC4();

    v4 = v49;
    if (v33)
    {
LABEL_17:
      sub_21C6F0E30(v8, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21C7B1204(0, v13[2] + 1, 1);
        v13 = v62;
      }

      v36 = v13[2];
      v35 = v13[3];
      if (v36 >= v35 >> 1)
      {
        sub_21C7B1204((v35 > 1), v36 + 1, 1);
        v13 = v62;
      }

      v13[2] = v36 + 1;
      sub_21C6F0E30(v56, v13 + v23 + v36 * v15);
      goto LABEL_7;
    }

    sub_21C864EF0(v8);
LABEL_7:
    ++v21;
    v20 = v51;
    if (v52 == v21)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_23:
  sub_21CB86544();
  sub_21C746438(v15, v60);

  swift_getKeyPath(byte_21CBAA178);
  swift_getKeyPath(byte_21CBAA1A0);
  sub_21CB81DB4();

  if ((*(v53 + 48))(v13, 1, v4) == 1)
  {
    sub_21C6EA794(v13, &qword_27CDEE678, &unk_21CBBA210);
    v13 = v8;
  }

  else
  {
    v39 = *v13;
    v40 = v13[1];

    v41 = sub_21C864EF0(v13);
    v60 = v39;
    v61 = v40;
    MEMORY[0x28223BE20](v41);
    v45[-2] = &v60;
    v13 = v8;
    sub_21C862ED4(sub_21C864F4C, &v45[-4], v8, type metadata accessor for PMWiFiNetwork);
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      v44 = v46;
      sub_21CB80F54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE680, &qword_21CBAA1C0);
      sub_21C6EADEC(&qword_27CDEE688, &qword_27CDEE680, &qword_21CBAA1C0, MEMORY[0x277D83960]);
      sub_21CB85564();
      (*(v52 + 8))(v44, v54);
      v13 = v63;
    }
  }

  return sub_21C8617B8(v13, &OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks, sub_21C967BCC, byte_21CBAA1C8, sub_21C864FA4);
}

uint64_t sub_21C860BD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks;

  v5 = sub_21C967BCC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_21C8602F8();
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_21CBAA120);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
    sub_21CB810C4();
  }
}

uint64_t sub_21C860D48(const char *a1)
{
  swift_getKeyPath(a1);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();
}

uint64_t sub_21C860E00@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  *a4 = *(v6 + *a3);
}

uint64_t sub_21C860F1C()
{
  swift_getKeyPath(byte_21CBAA150);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);

  return v1;
}

uint64_t sub_21C860FD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAA150);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  a2[1] = v4;
}

uint64_t sub_21C861090(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C8610D0(v1, v2);
}

uint64_t sub_21C8610D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText) == a1 && *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8) == a2;
  if (v6 || (sub_21CB86344() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;

    return sub_21C8602F8();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAA150);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
    sub_21CB810C4();
  }
}

uint64_t sub_21C861240@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBAA248);
  v5 = v1;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  swift_beginAccess();
  return sub_21C6EF0A0(v5 + v3, a1);
}

uint64_t sub_21C861308(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  swift_beginAccess();
  sub_21C6EF0A0(v1 + v6, v5);
  v7 = sub_21C864A20(v5, a1);
  sub_21C6EA794(v5, &qword_27CDEE678, &unk_21CBBA210);
  if (v7)
  {
    KeyPath = swift_getKeyPath(byte_21CBAA248);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
    sub_21CB810C4();
  }

  else
  {
    swift_beginAccess();
    sub_21C8650DC(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &qword_27CDEE678, &unk_21CBBA210);
}

uint64_t sub_21C8614EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  swift_beginAccess();
  sub_21C8650DC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C861558(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v16 - v4);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v1 + 16);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v8, v16[1]);

  swift_getKeyPath(byte_21CBAA178);
  swift_getKeyPath(byte_21CBAA1A0);
  sub_21CB81DB4();

  v10 = type metadata accessor for PMWiFiNetwork(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    sub_21C6EA794(v5, &qword_27CDEE678, &unk_21CBBA210);
    if (v6)
    {
      goto LABEL_14;
    }

LABEL_15:

    v14 = 1;
    return v14 & 1;
  }

  v12 = *v5;
  v11 = v5[1];

  sub_21C864EF0(v5);
  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_14:

    v14 = 0;
    return v14 & 1;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  if (v7 == v12 && v11 == v6)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21CB86344();
  }

  swift_bridgeObjectRelease_n();
  return v14 & 1;
}

uint64_t sub_21C8617B8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4, uint64_t a5)
{
  v9 = *a2;

  LOBYTE(a3) = a3(v10, a1);

  if (a3)
  {
    *(v5 + v9) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a4);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
    sub_21CB810C4();
  }
}

uint64_t sub_21C861918()
{
  swift_getKeyPath(aX_41);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C8619D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
  swift_beginAccess();

  v5 = sub_21C908530(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(aX_41);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
    sub_21CB810C4();
  }
}

uint64_t sub_21C861B28(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_21C861B98(uint64_t a1, char a2)
{
  v3 = v2;

  sub_21C8617B8(v6, &OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networksToForget, sub_21C7A2154, a8_21, sub_21C8650BC);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_5:
    swift_getKeyPath(aX_41);
    v15 = v3;
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);

    sub_21CB810D4();

    v15 = v3;
    swift_getKeyPath(aX_41);
    sub_21CB810F4();

    v12 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + v12);
    *(v3 + v12) = 0x8000000000000000;
    sub_21C8D4700(v8, sub_21C86503C, v3, a2 & 1, isUniquelyReferenced_nonNull_native);
    *(v3 + v12) = v14;
    swift_endAccess();
    v15 = v3;
    swift_getKeyPath(aX_41);
    sub_21CB810E4();
  }

  v8 = sub_21CAC8BB8(v7, 0);
  v9 = sub_21C89774C(&v15, v8 + 4, v7, a1);
  v10 = v15;

  result = sub_21C6F1E7C(v10);
  if (v9 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C861DEC(uint64_t a1)
{
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C861E64()
{
  swift_getKeyPath(byte_21CBAA078);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);

  return v1;
}

uint64_t sub_21C861F34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAA078);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_21C864DD0;
  a2[1] = v6;
}

uint64_t sub_21C862018(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath(byte_21CBAA078);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);

  sub_21CB810C4();
}

uint64_t sub_21C862134(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{

  sub_21C864C90(a2, a3);
}

uint64_t sub_21C862188(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath(byte_21CBAA050);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  LOBYTE(a1) = sub_21C7A2154(a1, v4);

  if ((a1 & 1) == 0)
  {
    swift_getKeyPath(byte_21CBAA078);
    sub_21CB810D4();

    v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
    swift_getKeyPath(byte_21CBAA050);

    sub_21CB810D4();

    v6(v7);
  }

  return result;
}

uint64_t sub_21C86234C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs;

  v5 = sub_21C7A2154(v4, a1);

  if (v5)
  {
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_21C862188(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAA050);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8624B4()
{
  KeyPath = swift_getKeyPath(aP_56);
  v2 = MEMORY[0x277D84FA0];
  *(v0 + 16) = KeyPath;
  *(v0 + 24) = v2;
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  v4 = *MEMORY[0x277CDF0D8];
  v5 = sub_21CB85114();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks) = v6;
  v7 = (v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  v9 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networksToForget) = v2;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration) = sub_21CB12570(v6);
  v10 = (v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
  *v10 = nullsub_1;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs) = v2;
  sub_21CB81104();
  sub_21C862620();
  return v0;
}

uint64_t sub_21C862620()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE660, &unk_21CBC3820);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = *(v0 + 16);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v6, v10);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C6EADEC(&qword_27CDEE670, &qword_27CDEE660, &unk_21CBC3820, MEMORY[0x277CBCEC8]);
  sub_21CB81E04();

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath(asc_21CBAA0F8);
  v10 = v1;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v10 = v1;
  swift_getKeyPath(asc_21CBAA0F8);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v10 = v1;
  swift_getKeyPath(asc_21CBAA0F8);
  sub_21CB810E4();
}

uint64_t sub_21C862938(uint64_t a1)
{
  v2 = sub_21CB85114();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v5, *MEMORY[0x277CDF0D8], v3);
  sub_21C85FFDC(v5);
  swift_getKeyPath(a8_21);
  v15 = a1;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v7 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networksToForget);
  swift_getKeyPath(byte_21CBAA050);
  v15 = a1;

  sub_21CB810D4();

  v15 = a1;
  swift_getKeyPath(byte_21CBAA050);
  sub_21CB810F4();

  v8 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs;
  v15 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  sub_21C864780(v7);

  v9 = *(a1 + v8);
  *(a1 + v8) = v15;
  sub_21C862188(v9);

  v15 = a1;
  swift_getKeyPath(byte_21CBAA050);
  sub_21CB810E4();

  v10 = *(a1 + 16);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v10, v15);

  swift_getKeyPath(a8_21);
  v15 = a1;
  sub_21CB810D4();

  sub_21CB63F48(v12);
}

uint64_t sub_21C862C44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21C860BD4(v3);
  }

  return result;
}

uint64_t sub_21C862CA8()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  v2 = sub_21CB85114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor, &qword_27CDEE678, &unk_21CBBA210);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel___observationRegistrar;
  v4 = sub_21CB81114();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_21C862DF0()
{
  sub_21C862CA8();

  return swift_deallocClassInstance();
}

uint64_t sub_21C862ED4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

void sub_21C862FC4(uint64_t *a1)
{
  v2 = *(type metadata accessor for PMWiFiNetwork(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21C8649F8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21C863150(v5);
  *a1 = v3;
}

uint64_t sub_21C86306C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs) = *(v0 + 24);

  sub_21C862188(v2);
}

uint64_t sub_21C8630C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_21C8630FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_21C864C90(v1, v2);
}

void sub_21C863150(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21CB862E4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMWiFiNetwork(0);
        v6 = sub_21CB85844();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PMWiFiNetwork(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21C8634E4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21C86327C(0, v2, 1, a1);
  }
}

void sub_21C86327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v37 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v35 = v18;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      sub_21C84BF7C(v21, v15);
      sub_21C84BF7C(v18, v11);
      v22 = sub_21CB85634();
      v24 = v23;
      if (v22 == sub_21CB85634() && v24 == v25)
      {

        sub_21C864EF0(v11);
        sub_21C864EF0(v15);
LABEL_5:
        a3 = v36 + 1;
        v18 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_6;
      }

      v27 = sub_21CB86344();

      sub_21C864EF0(v11);
      sub_21C864EF0(v15);
      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_21C6F0E30(v21, v38);
      swift_arrayInitWithTakeFrontToBack();
      sub_21C6F0E30(v28, v18);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21C8634E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v148 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v148);
  v139 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v147 = &v127 - v10;
  MEMORY[0x28223BE20](v11);
  v127 = &v127 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v127 - v14;
  MEMORY[0x28223BE20](v16);
  v145 = &v127 - v17;
  MEMORY[0x28223BE20](v18);
  v144 = &v127 - v19;
  MEMORY[0x28223BE20](v20);
  v134 = &v127 - v21;
  MEMORY[0x28223BE20](v22);
  v133 = &v127 - v24;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v28 = v23;
    v27 = MEMORY[0x277D84F90];
LABEL_110:
    v30 = *v135;
    if (!*v135)
    {
      goto LABEL_148;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_142:
      v27 = sub_21C864538(v27);
    }

    v150 = v27;
    v120 = *(v27 + 16);
    if (v120 >= 2)
    {
      do
      {
        v121 = *a3;
        if (!*a3)
        {
          goto LABEL_146;
        }

        v122 = a3;
        a3 = v120 - 1;
        v123 = v27;
        v27 = *(v27 + 16 * v120);
        v124 = v123;
        v125 = *&v123[16 * v120 + 24];
        sub_21C863F14(v121 + *(v28 + 72) * v27, v121 + *(v28 + 72) * *&v123[16 * v120 + 16], v121 + *(v28 + 72) * v125, v30);
        if (v5)
        {
          break;
        }

        if (v125 < v27)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_21C864538(v124);
        }

        if (v120 - 2 >= *(v124 + 2))
        {
          goto LABEL_136;
        }

        v126 = &v124[16 * v120];
        *v126 = v27;
        v126[1] = v125;
        v150 = v124;
        sub_21C8644AC(v120 - 1);
        v27 = v150;
        v120 = *(v150 + 16);
        a3 = v122;
      }

      while (v120 > 1);
    }

LABEL_120:

    return;
  }

  v128 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v136 = a3;
  v28 = v23;
  v129 = v23;
  v149 = v15;
  while (1)
  {
    v29 = v26;
    v30 = v26 + 1;
    if (v26 + 1 >= v25)
    {
      goto LABEL_36;
    }

    v141 = v25;
    v130 = v27;
    v31 = *a3;
    v32 = *(v28 + 72);
    v33 = v26 + 1;
    sub_21C84BF7C(v31 + v32 * v30, v133);
    v143 = v32;
    sub_21C84BF7C(v31 + v32 * v29, v134);
    v30 = sub_21CB85634();
    v35 = v34;
    v37 = v30 == sub_21CB85634() && v35 == v36;
    v131 = v5;
    if (v37)
    {
      LODWORD(v142) = 0;
    }

    else
    {
      LODWORD(v142) = sub_21CB86344();
    }

    sub_21C864EF0(v134);
    sub_21C864EF0(v133);
    v132 = v29;
    v38 = v29 + 2;
    v39 = v143 * (v29 + 2);
    v40 = v31 + v39;
    v41 = v33;
    v42 = v143 * v33;
    v43 = v31 + v143 * v33;
    do
    {
      v44 = v38;
      v5 = v41;
      v45 = v42;
      v27 = v39;
      if (v38 >= v141)
      {
        break;
      }

      v146 = v38;
      sub_21C84BF7C(v40, v144);
      sub_21C84BF7C(v43, v145);
      v46 = sub_21CB85634();
      v48 = v47;
      v49 = sub_21CB85634();
      v28 = v50;
      v51 = v46 == v49 && v48 == v50;
      v30 = v51 ? 0 : sub_21CB86344();
      v44 = v146;

      sub_21C864EF0(v145);
      sub_21C864EF0(v144);
      v38 = v44 + 1;
      v40 += v143;
      v43 += v143;
      v41 = v5 + 1;
      v42 = v45 + v143;
      v39 = v27 + v143;
    }

    while (((v142 ^ v30) & 1) == 0);
    v15 = v149;
    if ((v142 & 1) == 0)
    {
      goto LABEL_34;
    }

    a3 = v132;
    if (v44 < v132)
    {
      goto LABEL_139;
    }

    if (v132 < v44)
    {
      v52 = v132 * v143;
      do
      {
        if (a3 != v5)
        {
          v54 = *v136;
          if (!*v136)
          {
            goto LABEL_145;
          }

          sub_21C6F0E30(v54 + v52, v139);
          if (v52 < v45 || v54 + v52 >= (v54 + v27))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_21C6F0E30(v139, v54 + v45);
        }

        ++a3;
        v45 -= v143;
        v27 -= v143;
        v52 += v143;
      }

      while (a3 < v5--);
LABEL_34:
      v30 = v44;
      v27 = v130;
      v5 = v131;
      a3 = v136;
      v28 = v129;
      v29 = v132;
      goto LABEL_36;
    }

    v30 = v44;
    v27 = v130;
    v5 = v131;
    v28 = v129;
    v29 = v132;
    a3 = v136;
LABEL_36:
    v55 = *(a3 + 8);
    if (v30 < v55)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_138;
      }

      if (v30 - v29 < v128)
      {
        v56 = v29 + v128;
        if (__OFADD__(v29, v128))
        {
          goto LABEL_140;
        }

        if (v56 >= v55)
        {
          v56 = *(a3 + 8);
        }

        if (v56 < v29)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v30 != v56)
        {
          break;
        }
      }
    }

LABEL_59:
    if (v30 < v29)
    {
      goto LABEL_137;
    }

    v74 = a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_21C86467C(0, *(v27 + 16) + 1, 1, v27);
    }

    v76 = *(v27 + 16);
    v75 = *(v27 + 24);
    a3 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v27 = sub_21C86467C((v75 > 1), v76 + 1, 1, v27);
    }

    *(v27 + 16) = a3;
    v77 = v27 + 16 * v76;
    *(v77 + 32) = v29;
    *(v77 + 40) = v30;
    v143 = v30;
    v30 = *v135;
    if (!*v135)
    {
      goto LABEL_147;
    }

    if (v76)
    {
      while (1)
      {
        v78 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v79 = *(v27 + 32);
          v80 = *(v27 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_79:
          if (v82)
          {
            goto LABEL_126;
          }

          v95 = (v27 + 16 * a3);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_129;
          }

          v101 = (v27 + 32 + 16 * v78);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_133;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = a3 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v105 = (v27 + 16 * a3);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_93:
        if (v100)
        {
          goto LABEL_128;
        }

        v108 = v27 + 16 * v78;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_131;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_100:
        v116 = v78 - 1;
        if (v78 - 1 >= a3)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v74)
        {
          goto LABEL_144;
        }

        v117 = v27;
        v118 = v27 + 32;
        v27 = *(v27 + 32 + 16 * v116);
        a3 = *(v118 + 16 * v78 + 8);
        sub_21C863F14(*v74 + *(v28 + 72) * v27, *v74 + *(v28 + 72) * *(v118 + 16 * v78), *v74 + *(v28 + 72) * a3, v30);
        if (v5)
        {
          goto LABEL_120;
        }

        if (a3 < v27)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_21C864538(v117);
        }

        if (v116 >= *(v117 + 2))
        {
          goto LABEL_123;
        }

        v119 = &v117[16 * v116];
        *(v119 + 4) = v27;
        *(v119 + 5) = a3;
        v150 = v117;
        sub_21C8644AC(v78);
        v27 = v150;
        a3 = *(v150 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v27 + 32 + 16 * a3;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_124;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_125;
      }

      v90 = (v27 + 16 * a3);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_127;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_130;
      }

      if (v94 >= v86)
      {
        v112 = (v27 + 32 + 16 * v78);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_134;
        }

        if (v81 < v115)
        {
          v78 = a3 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v74;
    v25 = v74[1];
    v26 = v143;
    v15 = v149;
    if (v143 >= v25)
    {
      goto LABEL_110;
    }
  }

  v130 = v27;
  v131 = v5;
  v57 = *a3;
  v58 = *(v28 + 72);
  v59 = *a3 + v58 * (v30 - 1);
  v60 = v29;
  v61 = -v58;
  v132 = v60;
  v62 = v60 - v30;
  v146 = v57;
  v137 = v58;
  v63 = v57 + v30 * v58;
  v64 = v127;
  v138 = v56;
  while (2)
  {
    v142 = v59;
    v143 = v30;
    v140 = v63;
    v141 = v62;
    v65 = v63;
LABEL_48:
    sub_21C84BF7C(v65, v15);
    sub_21C84BF7C(v59, v64);
    v66 = sub_21CB85634();
    v68 = v67;
    if (v66 == sub_21CB85634() && v68 == v69)
    {

      sub_21C864EF0(v64);
      sub_21C864EF0(v15);
LABEL_46:
      v30 = v143 + 1;
      v59 = v142 + v137;
      v62 = v141 - 1;
      v63 = v140 + v137;
      if (v143 + 1 != v138)
      {
        continue;
      }

      v30 = v138;
      v27 = v130;
      v5 = v131;
      a3 = v136;
      v28 = v129;
      v29 = v132;
      goto LABEL_59;
    }

    break;
  }

  v71 = sub_21CB86344();

  sub_21C864EF0(v64);
  sub_21C864EF0(v15);
  if ((v71 & 1) == 0)
  {
    v15 = v149;
    goto LABEL_46;
  }

  if (v146)
  {
    v72 = v147;
    sub_21C6F0E30(v65, v147);
    swift_arrayInitWithTakeFrontToBack();
    sub_21C6F0E30(v72, v59);
    v59 += v61;
    v65 += v61;
    v73 = __CFADD__(v62++, 1);
    v15 = v149;
    if (v73)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_21C863F14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = a4;
  v56 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v50 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_73;
  }

  v18 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v17 != -1)
  {
    v19 = (a2 - a1) / v17;
    v59 = a1;
    v20 = v52;
    v58 = v52;
    if (v19 < v18 / v17)
    {
      v21 = v19 * v17;
      if (v52 < a1 || a1 + v21 <= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v52 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v20 = v52;
LABEL_17:
      v55 = v20 + v21;
      v57 = v20 + v21;
      if (v21 >= 1 && a2 < a3)
      {
        v53 = a3;
        while (1)
        {
          v24 = v17;
          v25 = a2;
          sub_21C84BF7C(a2, v15);
          sub_21C84BF7C(v20, v12);
          v26 = sub_21CB85634();
          v28 = v27;
          if (v26 == sub_21CB85634() && v28 == v29)
          {
            break;
          }

          v31 = sub_21CB86344();

          sub_21C864EF0(v12);
          sub_21C864EF0(v15);
          if ((v31 & 1) == 0)
          {
            goto LABEL_32;
          }

          v17 = v24;
          a2 += v24;
          if (a1 < v25 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v53;
          }

          else
          {
            v32 = v53;
            if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

LABEL_38:
          a1 += v17;
          v59 = a1;
          if (v20 >= v55 || a2 >= v32)
          {
            goto LABEL_71;
          }
        }

        sub_21C864EF0(v12);
        sub_21C864EF0(v15);
LABEL_32:
        v17 = v24;
        v33 = v20;
        v20 += v24;
        if (a1 < v33 || a1 >= v20)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v53;
        }

        else
        {
          v32 = v53;
          if (a1 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = v20;
        goto LABEL_38;
      }

      goto LABEL_71;
    }

    v22 = v18 / v17 * v17;
    if (v52 < a2 || a2 + v22 <= v52)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v52 == a2)
      {
LABEL_44:
        v34 = v20 + v22;
        if (v22 >= 1)
        {
          v35 = -v17;
          v36 = v20 + v22;
          do
          {
            v50 = v34;
            v37 = a2;
            v38 = a2 + v35;
            v39 = v34;
            v53 = v37;
            while (1)
            {
              if (v37 <= a1)
              {
                v59 = v37;
                v34 = v50;
                goto LABEL_70;
              }

              v40 = a3;
              v51 = v39;
              v41 = v35;
              v42 = v36 + v35;
              sub_21C84BF7C(v36 + v35, v54);
              v43 = v38;
              sub_21C84BF7C(v38, v55);
              v44 = sub_21CB85634();
              v46 = v45;
              v48 = v44 == sub_21CB85634() && v46 == v47;
              v49 = v48 ? 0 : sub_21CB86344();

              a3 = v40 + v41;
              sub_21C864EF0(v55);
              sub_21C864EF0(v54);
              if (v49)
              {
                break;
              }

              v39 = v42;
              v38 = v43;
              if (v40 < v36 || a3 >= v36)
              {
                swift_arrayInitWithTakeFrontToBack();
                v35 = v41;
              }

              else
              {
                v35 = v41;
                if (v40 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v36 = v42;
              v37 = v53;
              if (v42 <= v52)
              {
                v34 = v42;
                v59 = v53;
                goto LABEL_70;
              }
            }

            a2 = v43;
            if (v40 < v53 || a3 >= v53)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v41;
            }

            else
            {
              v35 = v41;
              if (v40 != v53)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v51;
          }

          while (v36 > v52);
        }

        v59 = a2;
LABEL_70:
        v57 = v34;
LABEL_71:
        sub_21C864594(&v59, &v58, &v57, type metadata accessor for PMWiFiNetwork);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v20 = v52;
    goto LABEL_44;
  }

LABEL_74:
  __break(1u);
}

uint64_t sub_21C8644AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21C864538(v3);
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

uint64_t sub_21C864594(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_21C86467C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0B8, &qword_21CBAA1F0);
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

uint64_t sub_21C864780(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21CB4BC20(v12, v13, &v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21C8648B8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21CB4BAE4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21C864A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiNetwork(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEE690, &unk_21CBAA270);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_21C6EF0A0(a1, &v20 - v12);
  sub_21C6EF0A0(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21C6EF0A0(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21C6F0E30(&v13[v15], v7);
      v18 = _s17PasswordManagerUI13PMWiFiNetworkV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_21C864EF0(v7);
      sub_21C864EF0(v10);
      sub_21C6EA794(v13, &qword_27CDEE678, &unk_21CBBA210);
      v17 = !v18;
      return v17 & 1;
    }

    sub_21C864EF0(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, qword_27CDEE690, &unk_21CBAA270);
    v17 = 1;
    return v17 & 1;
  }

  sub_21C6EA794(v13, &qword_27CDEE678, &unk_21CBBA210);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21C864C90(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v3 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
  *v3 = a1;
  v3[1] = a2;

  swift_getKeyPath(byte_21CBAA078);
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v4 = *v3;
  swift_getKeyPath(byte_21CBAA050);

  sub_21CB810D4();

  v4(v5);
}

uint64_t sub_21C864DFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C864E9C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks) = *(v0 + 24);

  return sub_21C8602F8();
}

uint64_t sub_21C864EF0(uint64_t a1)
{
  v2 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C864F4C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

uint64_t sub_21C864FC4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  *v2 = v0[3];
  v2[1] = v1;

  return sub_21C8602F8();
}

uint64_t sub_21C8650DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_21C86516C(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C71ED98();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21C86520C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_21CB85C04() - 8);
  v5 = *(v4 + 80);
  v42 = (v5 + 40) & ~v5;
  v41 = *(v4 + 84);
  v40 = *(v4 + 64);
  v6 = *(sub_21CB85BB4() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 84);
  v9 = *(v6 + 64);
  v10 = *(sub_21CB85C44() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 84);
  v13 = *(v10 + 64);
  v14 = *(sub_21CB85B74() - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(sub_21CB80DD4() - 8);
  v18 = *(*(a3 + 16) - 8);
  v19 = *(v18 + 84);
  v20 = *(v17 + 80);
  v21 = *(v18 + 80);
  if (v19 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = *(v18 + 84);
  }

  if (v41)
  {
    v23 = v40;
  }

  else
  {
    v23 = v40 + 1;
  }

  if (v8)
  {
    v24 = v9;
  }

  else
  {
    v24 = v9 + 1;
  }

  if (v12)
  {
    v25 = v13;
  }

  else
  {
    v25 = v13 + 1;
  }

  v26 = ((v11 + 16 + ((v16 + ((v15 + 48) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + v25;
  if (v26 <= ((((v42 + v23 + v7) & ~v7) + v24 + v11) & ~v11) + v25)
  {
    v26 = ((((v42 + v23 + v7) & ~v7) + v24 + v11) & ~v11) + v25;
  }

  if (*(v17 + 84))
  {
    v27 = *(v17 + 64);
  }

  else
  {
    v27 = *(v17 + 64) + 1;
  }

  v28 = ((v11 + 16 + ((v23 + ((v24 + v5 + ((v7 + ((((v20 + ((((((v27 + ((v20 + 64) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20) + v27) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7)) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + v25;
  if (v28 <= 8)
  {
    v28 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = (((v26 + (((v7 | v5 | v11 | v15) & 0xF8 ^ 0x1F8) & ((v7 | v5 | v11 | v15) + 16)) + (v7 | v5 | v11 | v20 | 7) + 1) & ~(v7 | v5 | v11 | v20 | 7)) + v28 + 8) & 0xFFFFFFFFFFFFFFF8;
  v30 = v21 + 17;
  if (a2 <= v22)
  {
    goto LABEL_42;
  }

  v31 = ((v30 + ((v29 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + *(v18 + 64);
  v32 = 8 * v31;
  if (v31 <= 3)
  {
    v35 = ((a2 - v22 + ~(-1 << v32)) >> v32) + 1;
    if (HIWORD(v35))
    {
      v33 = *(a1 + v31);
      if (!v33)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (v35 > 0xFF)
    {
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (v35 < 2)
    {
LABEL_42:
      if ((v19 & 0x80000000) != 0)
      {
        v38 = *(v18 + 48);

        return v38((v30 + ((a1 + v29 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21);
      }

      else
      {
        v37 = *(a1 + 1);
        if (v37 >= 0xFFFFFFFF)
        {
          LODWORD(v37) = -1;
        }

        return (v37 + 1);
      }
    }
  }

  v33 = *(a1 + v31);
  if (!*(a1 + v31))
  {
    goto LABEL_42;
  }

LABEL_31:
  v36 = (v33 - 1) << v32;
  if (v31 > 3)
  {
    v36 = 0;
  }

  if (v31)
  {
    if (v31 > 3)
    {
      LODWORD(v31) = 4;
    }

    if (v31 > 2)
    {
      if (v31 == 3)
      {
        LODWORD(v31) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v31) = *a1;
      }
    }

    else if (v31 == 1)
    {
      LODWORD(v31) = *a1;
    }

    else
    {
      LODWORD(v31) = *a1;
    }
  }

  return v22 + (v31 | v36) + 1;
}

void sub_21C8656DC(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_21CB85C04() - 8);
  v6 = *(v5 + 80);
  v45 = (v6 + 40) & ~v6;
  v44 = *(v5 + 84);
  v43 = *(v5 + 64);
  v7 = *(sub_21CB85BB4() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 84);
  v10 = *(v7 + 64);
  v11 = *(sub_21CB85C44() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 84);
  v14 = *(v11 + 64);
  v15 = *(sub_21CB85B74() - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_21CB80DD4() - 8);
  v19 = *(*(a4 + 16) - 8);
  v20 = *(v19 + 84);
  v21 = *(v18 + 80);
  v22 = *(v18 + 84);
  v23 = *(v18 + 64);
  v24 = *(v19 + 80);
  if (v20 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = *(v19 + 84);
  }

  v26 = v43;
  if (!v44)
  {
    v26 = v43 + 1;
  }

  if (v9)
  {
    v27 = v10;
  }

  else
  {
    v27 = v10 + 1;
  }

  if (v13)
  {
    v28 = v14;
  }

  else
  {
    v28 = v14 + 1;
  }

  v29 = ((v12 + 16 + ((v17 + ((v16 + 48) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + v28;
  if (v29 <= ((((v45 + v26 + v8) & ~v8) + v27 + v12) & ~v12) + v28)
  {
    v29 = ((((v45 + v26 + v8) & ~v8) + v27 + v12) & ~v12) + v28;
  }

  if (!v22)
  {
    ++v23;
  }

  v30 = ((v12 + 16 + ((v26 + ((v27 + v6 + ((v8 + ((((v21 + ((((((v23 + ((v21 + 64) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v21) + v23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + v28;
  if (v30 <= 8)
  {
    v30 = 8;
  }

  v31 = v30 + ((v29 + (((v8 | v6 | v12 | v16) & 0xF8 ^ 0x1F8) & ((v8 | v6 | v12 | v16) + 16)) + (v8 | v6 | v12 | v21 | 7) + 1) & ~(v8 | v6 | v12 | v21 | 7));
  v32 = (v31 + 8) & 0xFFFFFFFFFFFFFFF8;
  v33 = ((v24 + 17 + ((v32 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v24) + *(v19 + 64);
  if (a3 <= v25)
  {
    v35 = 0;
    v34 = a1;
  }

  else
  {
    v34 = a1;
    if (v33 <= 3)
    {
      v38 = ((a3 - v25 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
      if (HIWORD(v38))
      {
        v35 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v35 = v39;
        }

        else
        {
          v35 = 0;
        }
      }
    }

    else
    {
      v35 = 1;
    }
  }

  if (v25 < a2)
  {
    v36 = ~v25 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> (8 * v33)) + 1;
      if (v33)
      {
        v40 = v36 & ~(-1 << (8 * v33));
        bzero(v34, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *v34 = v40;
            if (v35 > 1)
            {
LABEL_61:
              if (v35 == 2)
              {
                *(v34 + v33) = v37;
              }

              else
              {
                *(v34 + v33) = v37;
              }

              return;
            }
          }

          else
          {
            *v34 = v36;
            if (v35 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *v34 = v40;
        *(v34 + 2) = BYTE2(v40);
      }

      if (v35 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(v34, v33);
      *v34 = v36;
      v37 = 1;
      if (v35 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v35)
    {
      *(v34 + v33) = v37;
    }

    return;
  }

  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *(v34 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(v34 + v33) = 0;
  }

  else if (v35)
  {
    *(v34 + v33) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v20 & 0x80000000) != 0)
  {
    v41 = *(v19 + 56);

    v41((v24 + 17 + ((v34 + v32 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v24, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v42 = (v31 + 8) & 0xFFFFFFF8;
    if (v42 != -32)
    {
      bzero(v34, (v42 + 32));
      *v34 = a2 & 0x7FFFFFFF;
    }
  }

  else
  {
    *(v34 + 1) = a2 - 1;
  }
}

unint64_t sub_21C865CB0()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [objc_opt_self() sharedManager];
  v8 = [v7 isAirDropPasswordsAvailable];

  if (!v8)
  {
    return 0;
  }

  v9 = type metadata accessor for PMAccount(0);
  sub_21C7B7408(v0 + *(v9 + 24), v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80EB24(v6, v3);
    v10 = v3[*(v1 + 52)];
    sub_21C866D44(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v11 = *v6;
    v10 = [*v6 isOneTimeSharable];
  }

  return v10;
}

uint64_t sub_21C865E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = sub_21CB84DF4();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v28 = &v27 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  v12 = sub_21CB828F4();
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v27 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v29 = &v27 - v16;
  (*(v5 + 16))(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v15);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v9;
  (*(v5 + 32))(v18 + v17, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v33 = v8;
  v34 = v9;
  v35 = v3;
  v19 = v28;
  sub_21CB84DA4();
  sub_21C865CB0();
  WitnessTable = swift_getWitnessTable();
  v21 = v27;
  sub_21CB848D4();
  (*(v30 + 8))(v19, v10);
  v22 = sub_21C866BD4();
  v36 = WitnessTable;
  v37 = v22;
  v23 = swift_getWitnessTable();
  v24 = v29;
  sub_21C72BE10(v21, v12, v23);
  v25 = *(v31 + 8);
  v25(v21, v12);
  sub_21C72BE10(v24, v12, v23);
  return (v25)(v24, v12);
}

uint64_t sub_21C8661E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PMAirDropAccountButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  sub_21CB858B4();
  v15 = sub_21CB858A4();
  v16 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  (*(v8 + 32))(&v17[v16], v10, v7);
  sub_21C822ECC(0, 0, v13, &unk_21CBAA300, v17);
}

uint64_t sub_21C8663E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_21CB81024();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = type metadata accessor for PMAccount.Storage(0);
  v6[12] = swift_task_alloc();
  v6[13] = sub_21CB858B4();
  v6[14] = sub_21CB858A4();

  return MEMORY[0x2822009F8](sub_21C8664EC, 0, 0);
}

uint64_t sub_21C8664EC()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = type metadata accessor for PMAccount(0);
  sub_21C7B7408(v2 + *(v3 + 24), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C866D44(v5, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v6 = *v5;
    [*v5 credentialTypes];
  }

  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  sub_21CB81014();
  sub_21CB81004();
  (*(v8 + 8))(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  v11 = PMAccount.effectiveTitle.getter();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21C7C0050();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_21CB85594();
  v16 = v15;

  v0[15] = v16;
  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_21C866714;

  return sub_21CA8A084(v14, v16);
}

uint64_t sub_21C866714()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_21C866948;
    v3 = 0;
    v4 = 0;
  }

  else
  {

    v5 = sub_21CB85874();
    v7 = v6;
    v2 = sub_21C866858;
    v3 = v5;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_21C866858()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  v5 = (v3 + *(type metadata accessor for PMAirDropAccountButton(0, v2, v1, v4) + 36));
  v6 = *v5;
  v7 = v5[1];
  LOBYTE(v5) = *(v5 + 16);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v5;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F34();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21C866948()
{

  v1 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8669CC, v1, v0);
}

uint64_t sub_21C8669CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C866A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAirDropAccountButton(0, v9, v10, v11);
  sub_21C72BE10(a1 + *(v12 + 40), a2, a3);
  sub_21C72BE10(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_21C866B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for PMAirDropAccountButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21C8661E0(v9, v5, v6, v7);
}

unint64_t sub_21C866BD4()
{
  result = qword_27CDEBC80;
  if (!qword_27CDEBC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC80);
  }

  return result;
}

uint64_t sub_21C866C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for PMAirDropAccountButton(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21C702EFC;

  return sub_21C8663E0(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_21C866D44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C866DB8()
{
  result = qword_27CDEE718[0];
  if (!qword_27CDEE718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDEE718);
  }

  return result;
}

uint64_t sub_21C866E0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EDBAC(v2, &v13 - v9, &qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21C728F30(v10, a1);
  }

  sub_21CB85B04();
  v12 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C866FDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x7472656C61;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x800000021CB89F80;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x7472656C61;
  }

  if (*a2)
  {
    v6 = 0x800000021CB89F80;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21CB86344();
  }

  return v8 & 1;
}

uint64_t sub_21C867084()
{
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21C867108(uint64_t a1)
{
  sub_21CB854C4();
}

uint64_t sub_21C867178(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21C8671F8@<X0>(char *a2@<X8>)
{
  v3 = sub_21CB86244();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21C867258(unint64_t *a1@<X8>)
{
  v2 = 0x800000021CB89F80;
  v3 = 0x7472656C61;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21C867298(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_21CB83834() - 8);
  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (!v8)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_38;
  }

  v15 = ((((v14 + ((v13 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v10 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_38;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v15)) == 0)
  {
LABEL_38:
    v23 = (a1 + v12 + 8) & 0xFFFFFFFFFFFFFFF8;
    if ((v9 & 0x80000000) != 0)
    {
      v25 = (*(*(*(a3 + 32) - 8) + 48))((((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 18) & ~v13);
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v24 = *(v23 + 8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v10 + (v16 | v22) + 1;
}

void sub_21C8674AC(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_21CB83834() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(*(a4 + 32) - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  v15 = *(v12 + 80);
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14;
  }

  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 + 1;
  }

  if (v17 <= 8)
  {
    v17 = 8;
  }

  if (v13)
  {
    v18 = *(v12 + 64);
  }

  else
  {
    v18 = *(v12 + 64) + 1;
  }

  v19 = ((((((v15 + (((v17 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((((((v15 + (((v17 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = a3 - v16 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v8 = v21;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((((((v15 + (((v17 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((((((v15 + (((v17 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v16 + a2;
      bzero(a1, ((((((v15 + (((v17 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v23;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v19) = v22;
      }

      else
      {
        *(a1 + v19) = v22;
      }
    }

    else if (v8)
    {
      *(a1 + v19) = v22;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v19) = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v8)
  {
    goto LABEL_43;
  }

  *(a1 + v19) = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  v24 = ((a1 + v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 0x80000000) != 0)
  {
    v25 = ((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 18) & ~v15);
    if (v14 >= a2)
    {
      v29 = *(v12 + 56);

      v29((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 18) & ~v15, a2 + 1);
    }

    else
    {
      if (v18 <= 3)
      {
        v26 = ~(-1 << (8 * v18));
      }

      else
      {
        v26 = -1;
      }

      if (v18)
      {
        v27 = v26 & (~v14 + a2);
        if (v18 <= 3)
        {
          v28 = v18;
        }

        else
        {
          v28 = 4;
        }

        bzero(v25, v18);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            v25[2] = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v24 = a2 & 0x7FFFFFFF;
    v24[1] = 0;
  }

  else
  {
    v24[1] = a2 - 1;
  }
}

unint64_t sub_21C8677A0()
{
  result = qword_27CDEE7A8;
  if (!qword_27CDEE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE7A8);
  }

  return result;
}

uint64_t sub_21C867804@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMAppAccountsListModel(0);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB850A4();
  v3 = type metadata accessor for PMAppAccountsList(0);
  v4 = v3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath(byte_21CBAA558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  KeyPath = swift_getKeyPath(aP_57);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v8 = (a2 + v6);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v22);

  type metadata accessor for PMGroupsStore(0);
  sub_21C87E764(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v9 = sub_21CB82674();
  v11 = v10;

  *v8 = v9;
  v8[1] = v11;
  v12 = (a2 + v3[8]);
  v13 = swift_getKeyPath(aX_42);
  sub_21CB86544();
  sub_21C704000(v13, v22);

  type metadata accessor for PMTipsStore(0);
  sub_21C87E764(&qword_27CDED870, type metadata accessor for PMTipsStore, &unk_21CBCD9D8);
  v14 = sub_21CB82674();
  v16 = v15;

  *v12 = v14;
  v12[1] = v16;
  v17 = v3[9];
  *(a2 + v17) = swift_getKeyPath(asc_21CBAA5D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v18 = v3[10];
  *(a2 + v18) = swift_getKeyPath(byte_21CBAA600);
  v19 = a2 + v3[11];
  type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
  sub_21C87E764(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  result = sub_21CB82084();
  *v19 = result;
  *(v19 + 8) = v21 & 1;
  *(a2 + v3[12]) = 0;
  return result;
}

void *sub_21C867B48(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v59 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v57 - v11;
  v12 = *(a2 + 16);
  if (!v12)
  {
    return a1;
  }

  v13 = (a2 + 32);
  v57 = type metadata accessor for PMGroupMemberImageModel(0);
  v58 = v9;
  while (1)
  {
    v64 = a1;
    v61 = v13;
    v62 = v12;
    v14 = v13[5];
    v76 = v13[4];
    v77 = v14;
    v78 = v13[6];
    v15 = v13[1];
    v72 = *v13;
    v73 = v15;
    v16 = v13[3];
    v74 = v13[2];
    v75 = v16;
    v17 = *(v59 + 64);
    v18 = swift_allocObject();
    *(v18 + 144) = 0;

    sub_21C7A33F0(&v72, v71);
    sub_21CB81104();
    v19 = v74;
    *(v18 + 72) = v75;
    v20 = v77;
    *(v18 + 88) = v76;
    *(v18 + 104) = v20;
    *(v18 + 120) = v78;
    v21 = v73;
    *(v18 + 24) = v72;
    *(v18 + 40) = v21;
    *(v18 + 16) = v17;
    *(v18 + 56) = v19;
    *(v18 + 136) = a4;
    if (*(v18 + 144))
    {
      KeyPath = swift_getKeyPath(byte_21CBAAE78, v57);
      MEMORY[0x28223BE20](KeyPath);
      *(&v57 - 2) = v18;
      *(&v57 - 1) = 0;
      v66 = v18;

      sub_21C7A33F0(&v72, v71);
      sub_21C87E764(&qword_27CDEECF8, type metadata accessor for PMGroupMemberImageModel, &unk_21CBC0188);
      v23 = v60;
      sub_21CB810C4();
      v60 = v23;
    }

    else
    {

      sub_21C7A33F0(&v72, v71);
    }

    v24 = sub_21CB858E4();
    v25 = *(v24 - 8);
    v26 = v65;
    (*(v25 + 56))(v65, 1, 1, v24);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v18;
    *(v27 + 40) = v17;
    v28 = v77;
    *(v27 + 112) = v76;
    *(v27 + 128) = v28;
    *(v27 + 144) = v78;
    v29 = v73;
    *(v27 + 48) = v72;
    *(v27 + 64) = v29;
    v30 = v75;
    *(v27 + 80) = v74;
    *(v27 + 96) = v30;
    *(v27 + 160) = a4;
    sub_21C6EDBAC(v26, v9, &qword_27CDF1D50, &qword_21CBA0C00);
    v31 = (*(v25 + 48))(v9, 1, v24);
    v63 = v17;

    sub_21C7A33F0(&v72, v71);

    if (v31 == 1)
    {
      sub_21C6EA794(v9, &qword_27CDF1D50, &qword_21CBA0C00);
    }

    else
    {
      sub_21CB858D4();
      (*(v25 + 8))(v9, v24);
    }

    v32 = *(v27 + 16);
    swift_unknownObjectRetain();

    if (v32)
    {
      swift_getObjectType();
      v33 = sub_21CB85874();
      v35 = v34;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    sub_21C6EA794(v65, &qword_27CDF1D50, &qword_21CBA0C00);
    v36 = swift_allocObject();
    *(v36 + 16) = &unk_21CBAAE68;
    *(v36 + 24) = v27;
    if (v35 | v33)
    {
      v67 = 0;
      v68 = 0;
      v69 = v33;
      v70 = v35;
    }

    v9 = v58;
    swift_task_create();

    v37 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v37;
    v39 = sub_21CB10D94(&v72);
    v41 = v37[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      break;
    }

    v45 = v40;
    if (v37[3] < v44)
    {
      sub_21C8D399C(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_21CB10D94(&v72);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_29;
      }

LABEL_21:
      a1 = v71[0];
      if (v45)
      {
        goto LABEL_3;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v55 = v39;
    sub_21C8D6A34();
    v39 = v55;
    a1 = v71[0];
    if (v45)
    {
LABEL_3:
      *(a1[7] + 8 * v39) = v18;

      sub_21C7A344C(&v72);
      goto LABEL_4;
    }

LABEL_22:
    a1[(v39 >> 6) + 8] |= 1 << v39;
    v47 = (a1[6] + 112 * v39);
    v49 = v73;
    v48 = v74;
    *v47 = v72;
    v47[1] = v49;
    v47[2] = v48;
    v50 = v75;
    v51 = v76;
    v52 = v78;
    v47[5] = v77;
    v47[6] = v52;
    v47[3] = v50;
    v47[4] = v51;
    *(a1[7] + 8 * v39) = v18;
    v53 = a1[2];
    v43 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v43)
    {
      goto LABEL_28;
    }

    a1[2] = v54;
LABEL_4:
    v13 = v61 + 7;
    v12 = v62 - 1;
    if (v62 == 1)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

uint64_t sub_21C868188()
{
  v0 = sub_21CB820E4();
  __swift_allocate_value_buffer(v0, qword_27CDEE7B0);
  __swift_project_value_buffer(v0, qword_27CDEE7B0);
  return sub_21CB820B4();
}

uint64_t sub_21C8681EC@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED878, &unk_21CBAA6A0);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = v89 - v3;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED880, &qword_21CBA7C10);
  MEMORY[0x28223BE20](v99);
  v109 = v89 - v4;
  v5 = type metadata accessor for PMAppAccountsList(0);
  v113 = *(v5 - 8);
  v115 = *(v113 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v117 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v119 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7F8, &qword_21CBAA6B0);
  MEMORY[0x28223BE20](v8);
  v10 = v89 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE800, &qword_21CBAA6B8);
  v114 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v89 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE808, &qword_21CBAA6C0);
  v118 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v105 = (v89 - v14);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE810, &qword_21CBAA6C8);
  v94 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v106 = v89 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE818, &qword_21CBAA6D0);
  v96 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v107 = v89 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE820, &qword_21CBAA6D8);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v108 = v89 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE828, &qword_21CBAA6E0);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v110 = v89 - v18;
  sub_21C8694B8(v1, v10);
  v19 = v1;
  v124 = sub_21C878088();
  v125 = v20;
  v21 = sub_21C87B60C();
  v22 = sub_21C71F3FC();
  v23 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  sub_21C6EA794(v10, &qword_27CDEE7F8, &qword_21CBAA6B0);
  sub_21CB85184();
  v121 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8B8, &qword_21CBAA738);
  v124 = v8;
  v125 = v23;
  v126 = v21;
  v127 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v124 = v11;
  v125 = v23;
  v126 = OpaqueTypeConformance2;
  v127 = v22;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x277CE1350];
  v28 = MEMORY[0x277CE1340];
  v29 = v105;
  sub_21CB84974();
  (*(v114 + 1))(v13, v11);
  v120 = v1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8C0, &qword_21CBAA740);
  v124 = v11;
  v125 = v27;
  v126 = v24;
  v127 = OpaqueTypeConformance2;
  v128 = v28;
  v129 = v26;
  v90 = swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8C8, &qword_21CBAA748);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8D0, &qword_21CBAA750);
  v32 = sub_21C87BB48();
  v124 = v31;
  v125 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v124 = v30;
  v125 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v92;
  sub_21CB84894();
  (*(v118 + 8))(v29, v35);
  v36 = v111;
  v37 = v112;
  v116 = v19;
  sub_21CB85094();
  swift_getKeyPath(a8_22);
  sub_21CB850B4();

  v118 = *(v119 + 8);
  v119 += 8;
  (v118)(v36, v37);
  v114 = type metadata accessor for PMAppAccountsList;
  v38 = v117;
  sub_21C87D2B8(v19, v117, type metadata accessor for PMAppAccountsList);
  v113 = *(v113 + 80);
  v39 = (v113 + 16) & ~v113;
  v40 = swift_allocObject();
  v105 = type metadata accessor for PMAppAccountsList;
  sub_21C87BFAC(v38, v40 + v39, type metadata accessor for PMAppAccountsList);
  v89[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE900, &unk_21CBAA790);
  v124 = v35;
  v125 = v91;
  v126 = v90;
  v127 = v34;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_21C87BC40();
  v43 = v93;
  v44 = v106;
  sub_21CB847B4();

  (*(v94 + 8))(v44, v43);
  v45 = v111;
  v46 = v112;
  v47 = v116;
  sub_21CB85094();
  swift_getKeyPath(asc_21CBAA7A0);
  sub_21CB850B4();

  (v118)(v45, v46);
  v89[1] = v122;
  LODWORD(v90) = v123;
  v48 = v117;
  sub_21C87D2B8(v47, v117, v114);
  v104 = v39;
  v49 = swift_allocObject();
  v50 = v105;
  sub_21C87BFAC(v48, v49 + v39, v105);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE910, &qword_21CBAA7C8);
  v124 = v43;
  v125 = v89[0];
  v126 = v41;
  v127 = v42;
  v93 = MEMORY[0x277CDEE28];
  v92 = swift_getOpaqueTypeConformance2();
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE918, &qword_21CBAA7D0);
  v52 = sub_21CB83994();
  v106 = v52;
  v53 = sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0, MEMORY[0x277CDDA18]);
  v124 = v51;
  v125 = v52;
  v126 = v53;
  v127 = MEMORY[0x277CDE2B8];
  v94 = MEMORY[0x277CDEB40];
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v95;
  v56 = v107;
  sub_21CB847B4();

  (*(v96 + 8))(v56, v55);
  v57 = v111;
  v58 = v112;
  v59 = v116;
  sub_21CB85094();
  sub_21CB850B4();

  (v118)(v57, v58);
  v60 = v59;
  v61 = v117;
  sub_21C87D2B8(v60, v117, v114);
  v62 = v104;
  v63 = swift_allocObject();
  sub_21C87BFAC(v61, v63 + v62, v50);
  swift_getKeyPath(byte_21CBAA800);
  v64 = v100;
  sub_21CB84F44();

  v65 = swift_allocObject();
  *(v65 + 16) = sub_21C87BD38;
  *(v65 + 24) = v63;
  v96 = _s19IdentifiableGroupIDVMa(0);

  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE928, &qword_21CBAA828);
  v124 = v55;
  v125 = v91;
  v126 = v92;
  v127 = v54;
  v107 = swift_getOpaqueTypeConformance2();
  v66 = sub_21C87E764(&qword_27CDED9F0, _s19IdentifiableGroupIDVMa, &unk_21CBB32D4);
  v67 = sub_21C87BD58();
  v68 = v97;
  v69 = v108;
  sub_21CB847C4();

  sub_21C6EA794(v64, &qword_27CDED878, &unk_21CBAA6A0);
  sub_21C6EA794(v109, &qword_27CDED880, &qword_21CBA7C10);
  v70 = v68;
  (*(v98 + 8))(v69, v68);
  v71 = v116;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAA830);
  sub_21CB850B4();

  (v118)(v57, v58);
  LODWORD(v109) = v123;
  v72 = v117;
  sub_21C87D2B8(v71, v117, v114);
  v73 = v104;
  v74 = swift_allocObject();
  sub_21C87BFAC(v72, v74 + v73, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDD0, &qword_21CBB0460);
  v124 = v70;
  v125 = v96;
  v126 = v99;
  v127 = v107;
  v128 = v66;
  v129 = v67;
  swift_getOpaqueTypeConformance2();
  v75 = type metadata accessor for PMGeneratedPasswordsLogView(255);
  v76 = sub_21C87E764(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  v124 = v75;
  v125 = v106;
  v126 = v76;
  v127 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v77 = v103;
  v78 = v101;
  v79 = v110;
  sub_21CB847B4();

  (*(v102 + 8))(v79, v78);
  *(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE940, &qword_21CBAA860) + 36)) = 1;
  sub_21CB85094();
  swift_getKeyPath(asc_21CBAA868);
  sub_21CB850B4();

  (v118)(v57, v58);
  v80 = v124;
  v81 = v125;
  v82 = v126;
  v83 = v127;
  v84 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE948, &qword_21CBAA890) + 36));
  *v84 = swift_getKeyPath(asc_21CBAA5D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v85 = type metadata accessor for PMContentListSearchable(0);
  v86 = *(v85 + 20);
  *(v84 + v86) = swift_getKeyPath(byte_21CBAA600);
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C87E764(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  result = sub_21CB821F4();
  v88 = (v84 + *(v85 + 28));
  *v88 = v80;
  v88[1] = v81;
  v88[2] = v82;
  v88[3] = v83;
  return result;
}

uint64_t sub_21C8694B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v73 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8B0, &unk_21CBAA728);
  MEMORY[0x28223BE20](v89);
  v88 = &v73 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC8, &qword_21CBAACC8);
  MEMORY[0x28223BE20](v82);
  v83 = &v73 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBD0, &qword_21CBAACD0);
  v79 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = &v73 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE860, &qword_21CBAA6F8);
  MEMORY[0x28223BE20](v94);
  v85 = &v73 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBD8, &qword_21CBAACD8);
  MEMORY[0x28223BE20](v91);
  v93 = &v73 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE848, &qword_21CBAA6F0);
  MEMORY[0x28223BE20](v90);
  v73 = (&v73 - v10);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBE0, &unk_21CBAACE0);
  v75 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v74 = &v73 - v11;
  v12 = sub_21CB83834();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v19 - 8);
  v86 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v73 - v25;
  type metadata accessor for PMAppAccountsList(0);
  v87 = a1;
  sub_21C728D50(v26);
  (*(v13 + 104))(v23, *MEMORY[0x277CE0558], v12);
  (*(v13 + 56))(v23, 0, 1, v12);
  v27 = *(v16 + 56);
  sub_21C6EDBAC(v26, v18, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v23, &v18[v27], &qword_27CDEC390, &qword_21CBA40E0);
  v28 = *(v13 + 48);
  if (v28(v18, 1, v12) != 1)
  {
    sub_21C6EDBAC(v18, v86, &qword_27CDEC390, &qword_21CBA40E0);
    if (v28(&v18[v27], 1, v12) != 1)
    {
      v34 = v76;
      (*(v13 + 32))(v76, &v18[v27], v12);
      sub_21C87E764(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v35 = v86;
      v36 = sub_21CB85574();
      v37 = *(v13 + 8);
      v37(v34, v12);
      sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
      v37(v35, v12);
      sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
      v31 = v88;
      v32 = v89;
      v30 = v87;
      v33 = &qword_27CDEE000;
      if ((v36 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v13 + 8))(v86, v12);
    v31 = v88;
LABEL_6:
    sub_21C6EA794(v18, &qword_27CDEE530, &unk_21CBA9D80);
    v32 = v89;
    v33 = &qword_27CDEE000;
    goto LABEL_9;
  }

  sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
  v29 = v28(&v18[v27], 1, v12);
  v30 = v87;
  v31 = v88;
  if (v29 != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
  v32 = v89;
  v33 = &qword_27CDEE000;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v38 = v96;
  swift_getKeyPath(byte_21CBAA9D8);
  v96 = v38;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v39 = *(v38 + v33[472]);

  v40 = *(v39 + 16);

  if (!v40)
  {
    v64 = sub_21CB85214();
    v65 = v73;
    *v73 = v64;
    *(v65 + 8) = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBE8, &qword_21CBAACF0);
    sub_21C86A2A0(v30, v65 + *(v67 + 44));
    v68 = sub_21C6EADEC(&qword_27CDEE850, &qword_27CDEE848, &qword_21CBAA6F0, MEMORY[0x277CE11A8]);
    v69 = v74;
    v70 = v90;
    sub_21CB84294();
    sub_21C6EA794(v65, &qword_27CDEE848, &qword_21CBAA6F0);
    v71 = v75;
    v72 = v92;
    (*(v75 + 16))(v93, v69, v92);
    swift_storeEnumTagMultiPayload();
    v96 = v70;
    v97 = v68;
    swift_getOpaqueTypeConformance2();
    sub_21C87B78C();
    sub_21CB83494();
    return (*(v71 + 8))(v69, v72);
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v41 = v96;
  swift_getKeyPath(byte_21CBAA9D8);
  v96 = v41;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v42 = *(v41 + v33[472]);

  v43 = *(v42 + 16);

  if (v43)
  {
    sub_21C86B768(v31);
    v44 = sub_21CB85214();
    v46 = v45;
    v47 = v31 + *(v32 + 36);
    if (sub_21C86C478())
    {
      sub_21CB85084();
      v48 = v96;
      swift_getKeyPath(asc_21CBAA868);
      v96 = v48;
      sub_21CB810D4();

      v49 = v77;
      sub_21CB83784();

      v51 = v80;
      v50 = v81;
      (*(v80 + 32))(v47, v49, v81);
      v52 = 0;
    }

    else
    {
      v52 = 1;
      v51 = v80;
      v50 = v81;
    }

    (*(v51 + 56))(v47, v52, 1, v50);
    v59 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
    *v59 = v44;
    v59[1] = v46;
    sub_21C6EDBAC(v31, v83, &qword_27CDEE8B0, &unk_21CBAA728);
    swift_storeEnumTagMultiPayload();
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    v61 = sub_21C87B854();
    v96 = v60;
    v97 = v61;
    swift_getOpaqueTypeConformance2();
    sub_21C87BA44();
    v58 = v85;
    sub_21CB83494();
    sub_21C6EA794(v31, &qword_27CDEE8B0, &unk_21CBAA728);
  }

  else
  {
    v53 = v78;
    sub_21C86B768(v78);
    v54 = v79;
    v55 = v84;
    (*(v79 + 16))(v83, v53, v84);
    swift_storeEnumTagMultiPayload();
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    v57 = sub_21C87B854();
    v96 = v56;
    v97 = v57;
    swift_getOpaqueTypeConformance2();
    sub_21C87BA44();
    v58 = v85;
    sub_21CB83494();
    (*(v54 + 8))(v53, v55);
  }

  sub_21C6EDBAC(v58, v93, &qword_27CDEE860, &qword_21CBAA6F8);
  swift_storeEnumTagMultiPayload();
  v62 = sub_21C6EADEC(&qword_27CDEE850, &qword_27CDEE848, &qword_21CBAA6F0, MEMORY[0x277CE11A8]);
  v96 = v90;
  v97 = v62;
  swift_getOpaqueTypeConformance2();
  sub_21C87B78C();
  sub_21CB83494();
  return sub_21C6EA794(v58, &qword_27CDEE860, &qword_21CBAA6F8);
}

uint64_t sub_21C86A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBF0, &qword_21CBAACF8);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBF8, &qword_21CBAAD00);
  MEMORY[0x28223BE20](v45);
  v46 = &v44 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC00, &qword_21CBAAD08);
  MEMORY[0x28223BE20](v55);
  v47 = &v44 - v9;
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC08, &unk_21CBAAD10);
  MEMORY[0x28223BE20](v50);
  v52 = &v44 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC10, &unk_21CBC2B00);
  MEMORY[0x28223BE20](v48);
  v16 = &v44 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC18, &qword_21CBAAD20);
  MEMORY[0x28223BE20](v51);
  v18 = &v44 - v17;
  v19 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PMEmptyStateDetailView(0);
  MEMORY[0x28223BE20](v22);
  v49 = (&v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC20, &qword_21CBAAD28);
  MEMORY[0x28223BE20](v27 - 8);
  v54 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v53 = &v44 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v56 = a1;
  sub_21CB85084();
  sub_21C87D2B8(v59 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v26, type metadata accessor for PMAppAccountsListModel.Configuration);

  v31 = (*(v11 + 48))(v26, 4, v10);
  if (v31 <= 1)
  {
    if (!v31)
    {
      v34 = *(v11 + 32);
      v44 = v13;
      v34(v13, v26, v10);
      (*(v11 + 16))(v21, v13, v10);
      (*(v11 + 56))(v21, 0, 6, v10);
      v35 = v49;
      sub_21C9E14F8(v21, 1, v49);
      sub_21C87D2B8(v35, v46, type metadata accessor for PMEmptyStateDetailView);
      swift_storeEnumTagMultiPayload();
      sub_21C87E764(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
      v36 = v47;
      sub_21CB83494();
      sub_21C6EDBAC(v36, v52, &qword_27CDEEC00, &qword_21CBAAD08);
      swift_storeEnumTagMultiPayload();
      sub_21C87CAD0();
      sub_21C87CB84();
      v33 = v53;
      sub_21CB83494();
      sub_21C6EA794(v36, &qword_27CDEEC00, &qword_21CBAAD08);
      sub_21C87DFE0(v35, type metadata accessor for PMEmptyStateDetailView);
      (*(v11 + 8))(v44, v10);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v31 == 2)
  {
    (*(v11 + 56))(v21, 2, 6, v10);
    v37 = v49;
    sub_21C9E14F8(v21, 1, v49);
    sub_21C87D2B8(v37, v16, type metadata accessor for PMEmptyStateDetailView);
    goto LABEL_9;
  }

  if (v31 == 3)
  {
LABEL_7:
    (*(v11 + 56))(v21, 1, 6, v10);
    v37 = v49;
    sub_21C9E14F8(v21, 1, v49);
    sub_21C87D2B8(v37, v16, type metadata accessor for PMEmptyStateDetailView);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_21C87E764(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    sub_21CB83494();
    sub_21C6EDBAC(v18, v52, &qword_27CDEEC18, &qword_21CBAAD20);
    swift_storeEnumTagMultiPayload();
    sub_21C87CAD0();
    sub_21C87CB84();
    v33 = v53;
    sub_21CB83494();
    sub_21C6EA794(v18, &qword_27CDEEC18, &qword_21CBAAD20);
    sub_21C87DFE0(v37, type metadata accessor for PMEmptyStateDetailView);
    goto LABEL_10;
  }

  swift_storeEnumTagMultiPayload();
  sub_21C87E764(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
  v32 = v47;
  sub_21CB83494();
  sub_21C6EDBAC(v32, v52, &qword_27CDEEC00, &qword_21CBAAD08);
  swift_storeEnumTagMultiPayload();
  sub_21C87CAD0();
  sub_21C87CB84();
  v33 = v53;
  sub_21CB83494();
  sub_21C6EA794(v32, &qword_27CDEEC00, &qword_21CBAAD08);
LABEL_10:
  *v7 = sub_21CB832E4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC40, &qword_21CBAAD30);
  sub_21C86ACB8(v56, &v7[*(v38 + 44)]);
  v39 = v54;
  sub_21C6EDBAC(v33, v54, &qword_27CDEEC20, &qword_21CBAAD28);
  v40 = v58;
  sub_21C6EDBAC(v7, v58, &qword_27CDEEBF0, &qword_21CBAACF8);
  v41 = v57;
  sub_21C6EDBAC(v39, v57, &qword_27CDEEC20, &qword_21CBAAD28);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC48, &qword_21CBAAD38);
  sub_21C6EDBAC(v40, v41 + *(v42 + 48), &qword_27CDEEBF0, &qword_21CBAACF8);
  sub_21C6EA794(v7, &qword_27CDEEBF0, &qword_21CBAACF8);
  sub_21C6EA794(v33, &qword_27CDEEC20, &qword_21CBAAD28);
  sub_21C6EA794(v40, &qword_27CDEEBF0, &qword_21CBAACF8);
  return sub_21C6EA794(v39, &qword_27CDEEC20, &qword_21CBAAD28);
}

uint64_t sub_21C86ACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC50, &qword_21CBAAD40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC58, &qword_21CBAAD48);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC60, &qword_21CBAAD50);
  sub_21C87CC48();
  sub_21CB83F34();
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v4 + 32))(v13, v6, v3);
  v17 = &v13[*(v8 + 44)];
  v18 = v32;
  *(v17 + 4) = v31;
  *(v17 + 5) = v18;
  *(v17 + 6) = v33;
  v19 = v28;
  *v17 = v27;
  *(v17 + 1) = v19;
  v20 = v30;
  *(v17 + 2) = v29;
  *(v17 + 3) = v20;
  sub_21C716934(v13, v16, &qword_27CDEEC58, &qword_21CBAAD48);
  sub_21C6EDBAC(v16, v10, &qword_27CDEEC58, &qword_21CBAAD48);
  v21 = v25;
  sub_21C6EDBAC(v10, v25, &qword_27CDEEC58, &qword_21CBAAD48);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC80, &qword_21CBAAD60) + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_21C6EA794(v16, &qword_27CDEEC58, &qword_21CBAAD48);
  return sub_21C6EA794(v10, &qword_27CDEEC58, &qword_21CBAAD48);
}

uint64_t sub_21C86AF8C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC88, &qword_21CBAAD68);
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for PMSharingGroup(0);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85C44();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v15 = v40;
  swift_getKeyPath(asc_21CBAA868);
  v40 = v15;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v16 = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v17 = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    v32 = v6;
    v19 = v5;
    v20 = v33;
    v21 = v34;
    sub_21CB85084();
    sub_21C87D2B8(v40 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v11, type metadata accessor for PMAppAccountsListModel.Configuration);

    v23 = v35;
    v22 = v36;
    if ((*(v35 + 48))(v11, 4, v36))
    {
      sub_21C87DFE0(v11, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    else
    {
      (*(v23 + 32))(v14, v11, v22);
      type metadata accessor for PMAppAccountsList(0);
      sub_21CA1D444(v14, v19);
      if ((*(v20 + 48))(v19, 1, v32) != 1)
      {
        sub_21C87BFAC(v19, v8, type metadata accessor for PMSharingGroup);
        sub_21C86B484(v8);
        sub_21C87DFE0(v8, type metadata accessor for PMSharingGroup);
        (*(v23 + 8))(v14, v22);
        v27 = v37;
        v29 = v38;
        v30 = v39;
        (*(v37 + 32))(v39, v21, v38);
        v26 = v29;
        v25 = v30;
        v24 = 0;
        return (*(v27 + 56))(v25, v24, 1, v26);
      }

      (*(v23 + 8))(v14, v22);
      sub_21C6EA794(v19, &qword_27CDF7670, &unk_21CBAA8F0);
    }
  }

  v24 = 1;
  v26 = v38;
  v25 = v39;
  v27 = v37;
  return (*(v27 + 56))(v25, v24, 1, v26);
}

uint64_t sub_21C86B484(uint64_t a1)
{
  v3 = type metadata accessor for PMAppAccountsList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMSharingGroup(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_21C87D2B8(a1, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSharingGroup);
  sub_21C87D2B8(v1, v6, type metadata accessor for PMAppAccountsList);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = (v9 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_21C87BFAC(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10, type metadata accessor for PMSharingGroup);
  sub_21C87BFAC(v6, v12 + v11, type metadata accessor for PMAppAccountsList);
  KeyPath = swift_getKeyPath(byte_21CBAAD70);
  v25 = 1;
  v24 = 1;
  v23 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 1;
  v19 = sub_21C87CD50;
  v20 = v12;
  v21 = KeyPath;
  v22 = 0;
  v15[1] = 0x756F724774696465;
  v15[2] = 0xE900000000000070;
  v15[3] = 0;
  sub_21CB852C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC70, &qword_21CBAAD58);
  sub_21C6EADEC(&qword_27CDEEC78, &qword_27CDEEC70, &qword_21CBAAD58, &unk_21CBBC5E8);
  sub_21CB845E4();
}

uint64_t sub_21C86B768@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v103 = sub_21CB85114();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = &v77 - v4;
  *&v93 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  MEMORY[0x28223BE20](v93);
  *&v94 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v77 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v89);
  v87 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDCD8, &unk_21CBB0390);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v77 - v17;
  v19 = type metadata accessor for PMAppAccountsList(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v97 = v21;
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v22;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE878, &qword_21CBAA708);
  MEMORY[0x28223BE20](v99);
  v88 = (&v77 - v23);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE868, &qword_21CBAA700);
  MEMORY[0x28223BE20](v108);
  v105 = &v77 - v24;
  v98 = type metadata accessor for PMAppAccountsList;
  sub_21C87D2B8(v1, v22, type metadata accessor for PMAppAccountsList);
  v96 = *(v20 + 80);
  v25 = (v96 + 16) & ~v96;
  v92 = v25;
  v86 = swift_allocObject();
  v95 = type metadata accessor for PMAppAccountsList;
  sub_21C87BFAC(v22, v86 + v25, type metadata accessor for PMAppAccountsList);
  v83 = v18;
  v82 = v1;
  sub_21CB85094();
  swift_getKeyPath(asc_21CBAAC00);
  sub_21CB850B4();

  v26 = *(v16 + 8);
  v106 = v16 + 8;
  v107 = v26;
  v81 = v15;
  v26(v18, v15);
  v28 = v118;
  v27 = v119;
  v29 = v120;
  v110[0] = 0;
  swift_getKeyPath(byte_21CBAAC28, v110);
  v115 = v28;
  v116 = v27;
  v117 = v29;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v80 = v112;
  v79 = v113;
  v78 = v114;

  sub_21CB85084();
  v77 = v111;
  v30 = type metadata accessor for PMAccount(0);
  v31 = *(*(v30 - 8) + 56);
  v32 = v85;
  v31(v85, 1, 1, v30);
  sub_21C6EDBAC(v32, v87, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB84D44();
  sub_21C6EA794(v32, &unk_27CDEBE60, &unk_21CB9FF40);
  v33 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v34 = v90;
  (*(*(v33 - 8) + 56))(v90, 1, 1, v33);
  v31((v34 + *(v93 + 20)), 1, 1, v30);
  sub_21C87D2B8(v34, v94, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21CB84D44();
  sub_21C87DFE0(v34, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v35 = v12[15];
  v36 = &v14[v12[14]];
  *&v14[v35] = swift_getKeyPath(byte_21CBAA558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v37 = &v14[v12[16]];
  *v37 = swift_getKeyPath(byte_21CBAAEA0);
  v37[8] = 0;
  v38 = v79;
  *v14 = v80;
  *(v14 + 1) = v38;
  *(v14 + 4) = v78;
  v39 = &v14[v12[13]];
  v40 = v77;
  *v39 = sub_21C87D2B4;
  v39[1] = v40;
  *v36 = 0;
  *(v36 + 1) = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED00, &qword_21CBAAED0);
  v42 = v88;
  sub_21C6EDBAC(v14, v88 + *(v41 + 36), &qword_27CDEDCD8, &unk_21CBB0390);
  v43 = v86;
  *v42 = sub_21C87D208;
  v42[1] = v43;
  sub_21C6EA794(v14, &qword_27CDEDCD8, &unk_21CBB0390);
  v44 = v83;
  v45 = v81;
  v46 = v82;
  sub_21CB85094();
  swift_getKeyPath(asc_21CBAAC00);
  sub_21CB850B4();

  v107(v44, v45);
  v47 = v118;
  v48 = v119;
  v49 = v120;
  v109[0] = 0;
  swift_getKeyPath(byte_21CBAAC28, v109);
  v115 = v47;
  v116 = v48;
  v117 = v49;
  sub_21CB84F44();

  v94 = v112;
  v93 = v113;
  v50 = v114;

  v51 = v91;
  sub_21C87D2B8(v46, v91, v98);
  v52 = v92;
  v53 = swift_allocObject();
  sub_21C87BFAC(v51, v53 + v52, v95);
  v54 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED08, &qword_21CBAAEE8) + 36);
  v55 = v93;
  *v54 = v94;
  *(v54 + 1) = v55;
  *(v54 + 4) = v50;
  *(v54 + 5) = &unk_21CBAAEE0;
  *(v54 + 6) = v53;
  sub_21CB85084();
  v56 = v112;
  v57 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE890, &qword_21CBAA710);
  sub_21C87D2B8(v56 + v57, v42 + *(v58 + 52), type metadata accessor for PMAppAccountsListModel.Configuration);

  v60 = v42 + *(v99 + 36);
  *v60 = KeyPath;
  v60[8] = 0;
  sub_21CB85084();
  v61 = v112;
  type metadata accessor for PMAppAccountsListModel(0);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB81124();
  *&v112 = v61;
  sub_21C87B960();
  v62 = v105;
  sub_21CB84394();

  sub_21C6EA794(v42, &qword_27CDEE878, &qword_21CBAA708);

  v64 = &v62[*(v108 + 36)];
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  sub_21CB85094();
  swift_getKeyPath(aX_43);
  sub_21CB850B4();

  v107(v44, v45);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v66 - 8) + 56))(v64 + v65, 0, 1, v66);
  *v64 = v63;
  sub_21CB85084();
  v67 = v112;
  swift_getKeyPath(aX_43);
  *&v112 = v67;
  sub_21CB810D4();

  v68 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  v69 = v101;
  v70 = v67 + v68;
  v71 = v100;
  v72 = v103;
  (*(v101 + 16))(v100, v70, v103);

  v73 = v102;
  (*(v69 + 104))(v102, *MEMORY[0x277CDF0D0], v72);
  sub_21CB850F4();
  v74 = *(v69 + 8);
  v74(v73, v72);
  v74(v71, v72);
  sub_21C87B854();
  v75 = v105;
  sub_21CB84674();
  return sub_21C6EA794(v75, &qword_27CDEE868, &qword_21CBAA700);
}

BOOL sub_21C86C478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  swift_getKeyPath(asc_21CBAA868);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v0 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v1 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
  swift_allocObject();
  v2 = sub_21C7D56B0(v0, v1);
  sub_21CB85084();
  swift_getKeyPath(byte_21CBAAC98);
  sub_21CB810D4();

  v3 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v4 = *(v3 + 16);

  if (v4)
  {

    return 0;
  }

  else
  {
    v6 = v2[3];

    return v6 == 0;
  }
}

uint64_t sub_21C86C630()
{
  sub_21C86C71C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE800, &qword_21CBAA6B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE7F8, &qword_21CBAA6B0);
  sub_21C87B60C();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21C86C71C()
{
  v1 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v1 - 8);
  v78 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v75 - v7;
  MEMORY[0x28223BE20](v8);
  v82 = &v75 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v75 - v11;
  MEMORY[0x28223BE20](v13);
  v86 = &v75 - v14;
  MEMORY[0x28223BE20](v15);
  v85 = &v75 - v16;
  v17 = sub_21CB85114();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v84 = v0;
  sub_21CB85084();
  v24 = v88;
  swift_getKeyPath(aX_43);
  v88 = v24;
  v79 = sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  (*(v18 + 16))(v23, v24 + v25, v17);

  (*(v18 + 104))(v20, *MEMORY[0x277CDF0D0], v17);
  LOBYTE(v25) = sub_21CB850F4();
  v26 = *(v18 + 8);
  v26(v20, v17);
  v26(v23, v17);
  if (v25)
  {
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v78 = sub_21CB81034();
    v27 = *(v78 - 8);
    v77 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v28 = swift_allocObject();
    sub_21CB81014();
    v29 = v82;
    sub_21CB81014();
    v30 = v81;
    sub_21CB81014();
    v31 = v80;
    sub_21CB81014();
    v32 = v77;
    sub_21CB80FE4();
    v33 = *(v4 + 8);
    v33(v31, v3);
    v33(v30, v3);
    v33(v29, v3);
    v33(v12, v3);
    swift_setDeallocating();
    (*(v27 + 8))(v28 + v32, v78);
    swift_deallocClassInstance();
    v34 = v85;
    sub_21CB81004();
    v33(v86, v3);
    v33(v34, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v36 = v87;
    swift_getKeyPath(aH_69);
    v87 = v36;
    sub_21CB810D4();

    v38 = sub_21C884770(v37);

    v39 = *(v38 + 16);

    v40 = MEMORY[0x277D83C10];
    *(v35 + 56) = MEMORY[0x277D83B88];
    *(v35 + 64) = v40;
    *(v35 + 32) = v39;
LABEL_12:
    v45 = sub_21CB85594();

    return v45;
  }

  v75 = v12;
  v76 = v4;
  v41 = v85;
  v77 = v3;
  sub_21CB85084();
  v42 = v78;
  sub_21C87D2B8(v87 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v78, type metadata accessor for PMAppAccountsListModel.Configuration);

  v43 = sub_21CB85C44();
  v44 = (*(*(v43 - 8) + 48))(v42, 4, v43);
  if (v44 <= 1)
  {
    if (!v44)
    {
      sub_21C87DFE0(v42, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    goto LABEL_9;
  }

  if (v44 == 2)
  {
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v57 = sub_21CB81034();
    v58 = *(v57 - 8);
    v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v60 = swift_allocObject();
    v61 = v75;
    sub_21CB81014();
    v62 = v82;
    sub_21CB81014();
    v63 = v81;
    sub_21CB81014();
    v64 = v80;
    sub_21CB81014();
    sub_21CB80FE4();
    v65 = *(v76 + 8);
    v66 = v64;
    v67 = v77;
    v65(v66, v77);
    v65(v63, v67);
    v65(v62, v67);
    v65(v61, v67);
    swift_setDeallocating();
    (*(v58 + 8))(v60 + v59, v57);
    swift_deallocClassInstance();
    v68 = v85;
    sub_21CB81004();
    v65(v86, v67);
    v65(v68, v67);
    goto LABEL_11;
  }

  if (v44 == 3)
  {
LABEL_9:
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v78 = sub_21CB81034();
    v46 = *(v78 - 8);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    v49 = v75;
    sub_21CB81014();
    v50 = v82;
    sub_21CB81014();
    v51 = v81;
    sub_21CB81014();
    v52 = v80;
    sub_21CB81014();
    sub_21CB80FE4();
    v53 = *(v76 + 8);
    v54 = v52;
    v55 = v41;
    v56 = v77;
    v53(v54, v77);
    v53(v51, v56);
    v53(v50, v56);
    v53(v49, v56);
    swift_setDeallocating();
    (*(v46 + 8))(v48 + v47, v78);
    swift_deallocClassInstance();
    sub_21CB81004();
    v53(v86, v56);
    v53(v55, v56);
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v70 = v87;
    swift_getKeyPath(byte_21CBAAC98);
    v87 = v70;
    sub_21CB810D4();

    v71 = *(v70 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    v72 = *(v71 + 16);

    v73 = MEMORY[0x277D83C10];
    *(v69 + 56) = MEMORY[0x277D83B88];
    *(v69 + 64) = v73;
    *(v69 + 32) = v72;
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_21C86D3B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8C8, &qword_21CBAA748);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  sub_21C86D4E8(v8 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8D0, &qword_21CBAA750);
  v5 = sub_21C87BB48();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21C86D4E8@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE978, &qword_21CBAA940);
  MEMORY[0x28223BE20](v109);
  v106 = &v94 - v2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8F8, &qword_21CBAA760);
  v111 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v110 = &v94 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE980, &qword_21CBAA948);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v94 - v4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v104 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v94 - v5;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE988, &qword_21CBAA958);
  v102 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v133 = &v94 - v6;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE990, &qword_21CBAA960);
  MEMORY[0x28223BE20](v120);
  v119 = &v94 - v7;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8E8, &qword_21CBAA758);
  v122 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v121 = &v94 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE998, &qword_21CBAA968);
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v97 = &v94 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9A0, &qword_21CBAA970);
  v96 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v95 = &v94 - v10;
  v11 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v101 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9A8, &qword_21CBAA978);
  MEMORY[0x28223BE20](v15 - 8);
  v103 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v118 = &v94 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9B0, &qword_21CBAA980);
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v99 = &v94 - v19;
  v20 = sub_21CB83604();
  MEMORY[0x28223BE20](v20 - 8);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9B8, &qword_21CBAA988);
  v112 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v132 = &v94 - v21;
  v22 = sub_21CB85114();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v94 - v27;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8D0, &qword_21CBAA750);
  MEMORY[0x28223BE20](v129);
  v128 = &v94 - v29;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v30 = v1;
  sub_21CB85084();
  v31 = v136;
  swift_getKeyPath(aX_43);
  v136 = v31;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v32 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  (*(v23 + 16))(v28, v31 + v32, v22);

  (*(v23 + 104))(v25, *MEMORY[0x277CDF0D8], v22);
  LOBYTE(v32) = sub_21CB850F4();
  v33 = *(v23 + 8);
  v33(v25, v22);
  v33(v28, v22);
  if (v32)
  {
    v34 = sub_21CB835A4();
    MEMORY[0x28223BE20](v34);
    *(&v94 - 2) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
    sub_21C844588();
    sub_21CB82AA4();
    sub_21CB85084();
    v35 = v134;
    swift_getKeyPath(byte_21CBAA9D8);
    v134 = v35;
    sub_21CB810D4();

    v36 = *(v35 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);

    v37 = *(v36 + 16);

    v38 = sub_21CB835F4();
    MEMORY[0x28223BE20](v38);
    *(&v94 - 16) = v37 != 0;
    *(&v94 - 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9F0, &qword_21CBAAA00);
    sub_21C6EADEC(&qword_27CDEE9F8, &qword_27CDEE9F0, &qword_21CBAAA00, MEMORY[0x277CE14C0]);
    v39 = v99;
    sub_21CB82AA4();
    sub_21CB85084();
    v40 = v100;
    sub_21C87D2B8(v134 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v100, type metadata accessor for PMAppAccountsListModel.Configuration);

    v41 = sub_21CB85C44();
    v42 = v101;
    (*(*(v41 - 8) + 56))(v101, 2, 4, v41);
    LOBYTE(v36) = sub_21C71382C(v40, v42);
    sub_21C87DFE0(v42, type metadata accessor for PMAppAccountsListModel.Configuration);
    sub_21C87DFE0(v40, type metadata accessor for PMAppAccountsListModel.Configuration);
    v43 = v30;
    v44 = v39;
    v45 = v132;
    if ((v36 & 1) != 0 || ![objc_opt_self() shouldAllowAddingNewPasswords])
    {
      v75 = v103;
      v76 = v116;
      (*(v113 + 56))(v103, 1, 1, v116);
      v77 = sub_21C6EADEC(&qword_27CDEEA00, &qword_27CDEE9A0, &qword_21CBAA970, MEMORY[0x277CDDB60]);
      v134 = v114;
      v135 = v77;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v55 = v118;
      MEMORY[0x21CF13220](v75, v76, OpaqueTypeConformance2);
      sub_21C6EA794(v75, &qword_27CDEE9A8, &qword_21CBAA978);
    }

    else
    {
      v46 = sub_21CB835F4();
      MEMORY[0x28223BE20](v46);
      *(&v94 - 2) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA08, &qword_21CBAAA08);
      sub_21C6EADEC(&qword_27CDEEA10, &qword_27CDEEA08, &qword_21CBAAA08, MEMORY[0x277CE14C0]);
      v47 = v95;
      sub_21CB82AA4();
      v48 = sub_21C6EADEC(&qword_27CDEEA00, &qword_27CDEE9A0, &qword_21CBAA970, MEMORY[0x277CDDB60]);
      v49 = v97;
      v50 = v114;
      MEMORY[0x21CF131E0](v47, v114, v48);
      v51 = v113;
      v52 = v103;
      v53 = v116;
      (*(v113 + 16))(v103, v49, v116);
      (*(v51 + 56))(v52, 0, 1, v53);
      v134 = v50;
      v135 = v48;
      v54 = swift_getOpaqueTypeConformance2();
      v55 = v118;
      MEMORY[0x21CF13220](v52, v53, v54);
      sub_21C6EA794(v52, &qword_27CDEE9A8, &qword_21CBAA978);
      (*(v51 + 8))(v49, v53);
      (*(v96 + 8))(v47, v50);
    }

    v79 = v130;
    v80 = v119;
    v81 = *(v120 + 48);
    v82 = *(v120 + 64);
    v83 = v112;
    (*(v112 + 16))(v119, v45, v126);
    v84 = v115;
    v85 = &v80[v81];
    v86 = v44;
    v87 = v117;
    (*(v115 + 16))(v85, v44, v117);
    sub_21C6EDBAC(v55, &v80[v82], &qword_27CDEE9A8, &qword_21CBAA978);
    v88 = v121;
    sub_21CB83394();
    v89 = MEMORY[0x277CDDF68];
    v90 = sub_21C6EADEC(&qword_27CDEE8E0, &qword_27CDEE8E8, &qword_21CBAA758, MEMORY[0x277CDDF68]);
    v91 = sub_21C6EADEC(&qword_27CDEE8F0, &qword_27CDEE8F8, &qword_21CBAA760, v89);
    v74 = v128;
    MEMORY[0x21CF131F0](v88, v79, v127, v90, v91);
    (*(v122 + 8))(v88, v79);
    sub_21C6EA794(v55, &qword_27CDEE9A8, &qword_21CBAA978);
    (*(v84 + 8))(v86, v87);
    (*(v83 + 8))(v132, v126);
  }

  else
  {
    v56 = sub_21CB83594();
    MEMORY[0x28223BE20](v56);
    *(&v94 - 2) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9C0, &qword_21CBAA9B8);
    sub_21C87C01C();
    sub_21CB82194();
    v57 = sub_21CB835D4();
    MEMORY[0x28223BE20](v57);
    *(&v94 - 2) = v30;
    type metadata accessor for PMPlatformRoleButton(0);
    sub_21C87E764(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    v58 = v124;
    sub_21CB82194();
    v59 = sub_21CB835F4();
    MEMORY[0x28223BE20](v59);
    *(&v94 - 2) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9E0, &qword_21CBAA9D0);
    sub_21C6EADEC(&qword_27CDEE9E8, &qword_27CDEE9E0, &qword_21CBAA9D0, MEMORY[0x277CE14C0]);
    v60 = v105;
    sub_21CB82AA4();
    v61 = *(v109 + 48);
    v62 = *(v109 + 64);
    v63 = v102;
    v64 = v106;
    (*(v102 + 16))(v106, v133, v123);
    v65 = v104;
    (*(v104 + 16))(&v64[v61], v58, v125);
    v66 = v107;
    v67 = v108;
    (*(v107 + 16))(&v64[v62], v60, v108);
    v68 = v110;
    sub_21CB83394();
    v69 = MEMORY[0x277CDDF68];
    v70 = sub_21C6EADEC(&qword_27CDEE8E0, &qword_27CDEE8E8, &qword_21CBAA758, MEMORY[0x277CDDF68]);
    v71 = sub_21C6EADEC(&qword_27CDEE8F0, &qword_27CDEE8F8, &qword_21CBAA760, v69);
    v72 = v127;
    v73 = v128;
    MEMORY[0x21CF13200](v68, v130, v127, v70, v71);
    (*(v111 + 8))(v68, v72);
    (*(v66 + 8))(v60, v67);
    (*(v65 + 8))(v124, v125);
    (*(v63 + 8))(v133, v123);
    v74 = v73;
  }

  v92 = sub_21C87BB48();
  MEMORY[0x21CF131E0](v74, v129, v92);
  return sub_21C6EA794(v74, &qword_27CDEE8D0, &qword_21CBAA750);
}

uint64_t sub_21C86E8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_21CB83994();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_21CB82644();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v55 = type metadata accessor for PMAppAccountsList(0);
  v48 = *(v55 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v55);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMEditGroupFlow(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB90, &qword_21CBA5268);
  MEMORY[0x28223BE20](v53);
  v54 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE970, &unk_21CBAA930);
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x28223BE20](v15);
  v52 = &v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v20 = type metadata accessor for PMSharingGroup(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C86F0C0(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_21C6EA794(v19, &qword_27CDF7670, &unk_21CBAA8F0);
    v24 = 1;
    v26 = v60;
    v25 = v61;
    v27 = v59;
  }

  else
  {
    sub_21C87BFAC(v19, v23, type metadata accessor for PMSharingGroup);
    sub_21C87D2B8(v23, v13, type metadata accessor for PMSharingGroup);
    sub_21C87D2B8(a1, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
    v28 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v29 = swift_allocObject();
    sub_21C87BFAC(v10, v29 + v28, type metadata accessor for PMAppAccountsList);
    v30 = &v13[v11[6]];
    *(v30 + 3) = &type metadata for PMIMessageAvailabilityProviderMain;
    *(v30 + 4) = &off_282E572E8;
    v31 = &v13[v11[5]];
    *v31 = sub_21C87BF3C;
    v31[1] = v29;
    *&v64 = &unk_282E48D50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBA0, &qword_21CBA5280);
    sub_21C6EADEC(&qword_27CDECBA8, &qword_27CDECBA0, &qword_21CBA5280, MEMORY[0x277D83970]);
    sub_21C8158AC();
    sub_21CB82654();
    v32 = v50;
    v33 = v51;
    (*(v50 + 16))(v49, v8, v51);
    sub_21CB84D44();
    (*(v32 + 8))(v8, v33);
    v34 = v11[8];
    *&v13[v34] = swift_getKeyPath(a8_23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    sub_21CB85214();
    sub_21CB82AC4();
    v35 = v54;
    sub_21C87BFAC(v13, v54, type metadata accessor for PMEditGroupFlow);
    v36 = (v35 + *(v53 + 36));
    v37 = v69;
    v36[4] = v68;
    v36[5] = v37;
    v36[6] = v70;
    v38 = v65;
    *v36 = v64;
    v36[1] = v38;
    v39 = v67;
    v36[2] = v66;
    v36[3] = v39;
    v62 = 0x756F724774696465;
    v63 = 0xE900000000000070;
    sub_21CB852C4();
    v40 = v56;
    sub_21CB834F4();
    sub_21C815788();
    v41 = v52;
    v42 = v58;
    sub_21CB84524();
    (*(v57 + 8))(v40, v42);
    sub_21C6EA794(v35, &qword_27CDECB90, &qword_21CBA5268);
    sub_21C87DFE0(v23, type metadata accessor for PMSharingGroup);
    v44 = v59;
    v43 = v60;
    v45 = v61;
    (*(v59 + 32))(v61, v41, v60);
    v24 = 0;
    v25 = v45;
    v26 = v43;
    v27 = v44;
  }

  return (*(v27 + 56))(v25, v24, 1, v26);
}

uint64_t sub_21C86F0C0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87D2B8(v11[1] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v4, type metadata accessor for PMAppAccountsListModel.Configuration);

  if ((*(v6 + 48))(v4, 4, v5))
  {
    sub_21C87DFE0(v4, type metadata accessor for PMAppAccountsListModel.Configuration);
    v9 = type metadata accessor for PMSharingGroup(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    type metadata accessor for PMAppAccountsList(0);
    sub_21CA1D444(v8, a1);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21C86F2EC(uint64_t result)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
    sub_21CB85084();
    v1 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);

    v1(2, 0);
  }

  return result;
}

uint64_t sub_21C86F380(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21CB83994();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE918, &qword_21CBAA7D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v21 = a1;
  type metadata accessor for PMMoveAccountsList(0);
  sub_21C87E764(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList, &unk_21CBC1478);
  sub_21CB82924();
  v22 = 0x756F636341646461;
  v23 = 0xEA0000000000746ELL;
  v12 = *(a1 + *(type metadata accessor for PMAppAccountsList(0) + 44) + 8);

  if ((v12 & 1) == 0)
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    v18 = v2;
    v14 = v13;
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v19 + 8))(v4, v18);
  }

  sub_21CB834F4();
  sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0, MEMORY[0x277CDDA18]);
  v15 = v20;
  sub_21CB84524();
  (*(v5 + 8))(v7, v15);
  return (*(v9 + 8))(v11, v8);
}

void *sub_21C86F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAppAccountsList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21C86F0C0(a2);
  sub_21C87D2B8(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21C87BFAC(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMAppAccountsList);
  v9 = type metadata accessor for PMMoveAccountsList(0);
  *(a2 + v9[5]) = 1;
  v10 = (a2 + v9[6]);
  *v10 = sub_21C87BF04;
  v10[1] = v8;
  v11 = (a2 + v9[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v15[1] = v12;
  result = sub_21CB84D44();
  v14 = v15[3];
  *v11 = v15[2];
  v11[1] = v14;
  return result;
}

uint64_t sub_21C86F8B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isMoveAccountsSheetPresented))
  {
    KeyPath = swift_getKeyPath(asc_21CBAA7A0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810C4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isMoveAccountsSheetPresented) = 0;
  }
}

uint64_t sub_21C86F9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v2 = sub_21CB82644();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for PMSharingGroup(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAppAccountsList(0);
  sub_21CA1D444(v30, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21C6EA794(v13, &qword_27CDF7670, &unk_21CBAA8F0);
    v18 = 1;
    v19 = v32;
  }

  else
  {
    sub_21C87BFAC(v13, v17, type metadata accessor for PMSharingGroup);
    sub_21C87D2B8(v17, v10, type metadata accessor for PMSharingGroup);
    v33 = &unk_282E48D78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE950, &qword_21CBB8DF0);
    sub_21C6EADEC(&qword_27CDEE958, &qword_27CDEE950, &qword_21CBB8DF0, MEMORY[0x277D83970]);
    sub_21C87BEA8();
    sub_21CB82654();
    v20 = v29;
    (*(v29 + 16))(v4, v7, v2);
    sub_21CB84D44();
    (*(v20 + 8))(v7, v2);
    v21 = *(v8 + 24);
    *&v10[v21] = swift_getKeyPath(a8_23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    v22 = &v10[*(v8 + 28)];
    KeyPath = swift_getKeyPath(byte_21CBAA900);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v33);

    type metadata accessor for PMAccountsState(0);
    sub_21C87E764(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
    v24 = sub_21CB82674();
    v26 = v25;

    *v22 = v24;
    v22[1] = v26;
    sub_21C87DFE0(v17, type metadata accessor for PMSharingGroup);
    v19 = v32;
    sub_21C87BFAC(v10, v32, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v18 = 0;
  }

  return (*(v31 + 56))(v19, v18, 1, v8);
}

uint64_t sub_21C86FF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[2] = a2;
  v25 = sub_21CB83994();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v24[1] = a1;
  sub_21CB85084();
  v9 = v28;
  swift_getKeyPath(asc_21CBAA868);
  *&v28 = v9;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v10 = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  v24[0] = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);

  swift_unknownObjectWeakInit();
  v11 = v6[5];
  *&v8[v11] = swift_getKeyPath(a8_23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v12 = v6[6];
  KeyPath = swift_getKeyPath(asc_21CBAA8D0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v14 = &v8[v12];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v28);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C87E764(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v15 = sub_21CB82674();
  v17 = v16;

  *v14 = v15;
  v14[1] = v17;
  v18 = &v8[v6[8]];
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_21CB84D44();
  v19 = &v8[v6[9]];
  v26 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v20 = *(&v28 + 1);
  *v19 = v28;
  *(v19 + 1) = v20;
  v21 = v6[10];
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v8[v21] = v28;
  swift_unknownObjectWeakAssign();

  v8[v6[7]] = 1;
  *v18 = v24[0];
  *(v18 + 1) = v10;
  *(v18 + 2) = 0;
  *&v28 = 0xD000000000000012;
  *(&v28 + 1) = 0x800000021CB8F740;
  type metadata accessor for PMAppAccountsList(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C87E764(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  v22 = v25;
  sub_21CB84524();
  (*(v3 + 8))(v5, v22);
  return sub_21C87DFE0(v8, type metadata accessor for PMGeneratedPasswordsLogView);
}

uint64_t sub_21C870390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a1;
  v107 = a3;
  v4 = sub_21CB82964();
  v5 = *(v4 - 8);
  v123 = v4;
  v124 = v5;
  MEMORY[0x28223BE20](v4);
  v119 = v6;
  v120 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAppAccountsList(0);
  v116 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v114 = v8;
  v117 = (&v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v89 - v10;
  v115 = sub_21CB83A14();
  v98 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v89 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED10, &qword_21CBAAF50);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v17 = &v89 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED18, &qword_21CBAAF58);
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v89 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED20, &qword_21CBAAF60);
  v109 = *(v110 - 1);
  MEMORY[0x28223BE20](v110);
  v118 = &v89 - v19;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED28, &qword_21CBAAF68);
  MEMORY[0x28223BE20](v112);
  OpaqueTypeConformance2 = &v89 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED30, &qword_21CBAAF70);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v113 = &v89 - v21;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED38, &qword_21CBAAF78);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v89 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED40, &qword_21CBAAF80);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v89 - v23;
  sub_21CB85094();
  swift_getKeyPath(aH_69);
  sub_21CB850B4();

  (*(v13 + 8))(v15, v12);
  v125 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED48, &qword_21CBAAF88);
  sub_21C6EADEC(&qword_27CDEED50, &qword_27CDEED48, &qword_21CBAAF88, MEMORY[0x277CE14C0]);
  v91 = v17;
  v24 = a2;
  sub_21CB83F14();
  v122 = v12;
  sub_21CB85084();
  v25 = v90;
  sub_21C728D50(v90);
  v26 = sub_21C8816E4(v25);

  sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
  if (v26 && (sub_21CB85084(), v27 = v126, swift_getKeyPath(byte_21CBAAB48), v126 = v27, sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0), sub_21CB810D4(), , v28 = *(v27 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption), , (v28 & 0xFE) != 2))
  {
    v29 = v97;
    sub_21CB83514();
  }

  else
  {
    v29 = v97;
    sub_21CB83A04();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED58, &qword_21CBAAF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  v31 = sub_21CB83CC4();
  *(inited + 32) = v31;
  v32 = sub_21CB83CA4();
  *(inited + 33) = v32;
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v31)
  {
    sub_21CB83CB4();
  }

  sub_21CB83CB4();
  if (sub_21CB83CB4() != v32)
  {
    sub_21CB83CB4();
  }

  v33 = v116;
  v34 = sub_21C6EADEC(&qword_27CDEED60, &qword_27CDEED10, &qword_21CBAAF50, MEMORY[0x277CDE5A0]);
  v35 = v92;
  v36 = v95;
  v37 = v91;
  sub_21CB84364();
  (*(v98 + 8))(v29, v115);
  (*(v93 + 8))(v37, v36);
  v126 = v36;
  v127 = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v96;
  sub_21CB845F4();
  (*(v94 + 8))(v35, v38);
  sub_21CB85084();
  v39 = v126;
  swift_getKeyPath(aH_69);
  v126 = v39;
  v115 = sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v41 = sub_21C884770(v40);

  v42 = *(v41 + 16);

  if (v42)
  {
    v43 = v117;
    sub_21C87D2B8(v24, v117, type metadata accessor for PMAppAccountsList);
    v44 = (v33[80] + 16) & ~v33[80];
    v42 = swift_allocObject();
    sub_21C87BFAC(v43, v42 + v44, type metadata accessor for PMAppAccountsList);
    v45 = sub_21C87DB4C;
    v46 = v120;
  }

  else
  {
    v45 = 0;
    v46 = v120;
    v43 = v117;
  }

  v47 = OpaqueTypeConformance2;
  (*(v109 + 4))(OpaqueTypeConformance2, v118, v110);
  v48 = &v47[*(v112 + 36)];
  *v48 = v45;
  v48[1] = v42;
  sub_21CB85084();
  v49 = v126;
  swift_getKeyPath(byte_21CBAAF98);
  v126 = v49;
  sub_21CB810D4();

  v50 = v24;
  v108 = v24;
  v51 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  v52 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8);

  v126 = v51;
  v127 = v52;
  v53 = v123;
  v54 = v124;
  v117 = *(v124 + 16);
  v118 = (v124 + 16);
  (v117)(v46, v121, v123);
  v110 = type metadata accessor for PMAppAccountsList;
  sub_21C87D2B8(v50, v43, type metadata accessor for PMAppAccountsList);
  v55 = v53;
  v56 = *(v54 + 80);
  v57 = (v56 + 16) & ~v56;
  v58 = v33[80];
  v97 = (v57 + v119);
  v59 = (v57 + v119 + v58) & ~v58;
  v96 = v56 | 7;
  v60 = swift_allocObject();
  v116 = *(v124 + 32);
  v124 += 32;
  v98 = v57;
  (v116)(v60 + v57, v46, v55);
  v109 = type metadata accessor for PMAppAccountsList;
  sub_21C87BFAC(v43, v60 + v59, type metadata accessor for PMAppAccountsList);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  v93 = sub_21C87D4E4();
  v95 = sub_21C87D624();
  v61 = v112;
  v62 = OpaqueTypeConformance2;
  sub_21CB84924();

  sub_21C6EA794(v62, &qword_27CDEED28, &qword_21CBAAF68);
  v63 = v108;
  sub_21CB85084();
  v64 = v126;
  swift_getKeyPath(byte_21CBAAB48);
  v126 = v64;
  sub_21CB810D4();

  LOBYTE(v59) = *(v64 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  v130 = v59;
  sub_21C87D2B8(v63, v43, v110);
  v65 = v120;
  v66 = v123;
  (v117)(v120, v121, v123);
  v67 = v43;
  v68 = (v58 + 16) & ~v58;
  v69 = (v114 + v56 + v68) & ~v56;
  v114 = v56 | v58;
  v70 = swift_allocObject();
  sub_21C87BFAC(v43, v70 + v68, v109);
  (v116)(v70 + v69, v65, v66);
  v126 = v61;
  v127 = v94;
  v128 = v93;
  v129 = v95;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = sub_21C87D6CC();
  v71 = v101;
  v72 = v100;
  v73 = v113;
  sub_21CB84934();

  (*(v99 + 8))(v73, v72);
  v74 = v108;
  sub_21CB85084();
  v75 = v126;
  swift_getKeyPath(byte_21CBAAB78);
  v126 = v75;
  sub_21CB810D4();
  v76 = v121;

  LOBYTE(v73) = *(v75 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);

  v130 = v73;
  sub_21C87D2B8(v74, v67, v110);
  v77 = v123;
  (v117)(v65, v76, v123);
  v78 = swift_allocObject();
  sub_21C87BFAC(v67, v78 + v68, v109);
  (v116)(v78 + v69, v65, v77);
  v126 = v72;
  v127 = &type metadata for PMSortOption;
  v128 = OpaqueTypeConformance2;
  v129 = v112;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_21C87DA88();
  v81 = v103;
  v82 = v104;
  sub_21CB84934();

  (*(v102 + 8))(v71, v82);
  if (qword_27CDEA3B0 != -1)
  {
    swift_once();
  }

  v83 = sub_21CB820E4();
  __swift_project_value_buffer(v83, qword_27CDEE7B0);
  v84 = v120;
  v85 = v123;
  (v117)(v120, v76, v123);
  v86 = swift_allocObject();
  (v116)(v86 + v98, v84, v85);
  v126 = v82;
  v127 = MEMORY[0x277CC9B58];
  v128 = v79;
  v129 = v80;
  swift_getOpaqueTypeConformance2();
  v87 = v106;
  sub_21CB84814();

  return (*(v105 + 8))(v81, v87);
}

void sub_21C8716AC(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    v4 = *a2;
    sub_21CB82954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
    sub_21CB85084();
    v2 = (v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
    if (*(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8))
    {
      KeyPath = swift_getKeyPath(byte_21CBAAF98);
      MEMORY[0x28223BE20](KeyPath);
      sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
      sub_21CB810C4();
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
    }
  }
}

uint64_t sub_21C871834()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v4 = v14;
  swift_getKeyPath(aH_69);
  v14 = v4;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v6 = sub_21C713194(v5);
  v8 = v7;

  if (v8)
  {
    v14 = v6;
    v15 = v8;
    sub_21CB85384();
    sub_21CB82954();
  }

  else
  {
    sub_21CB85084();
    v9 = v14;
    swift_getKeyPath(byte_21CBAAC98);
    v14 = v9;
    sub_21CB810D4();

    v10 = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    if (*(v10 + 16))
    {
      sub_21C87D2B8(v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for PMAccount);

      v11 = *v3;
      v12 = v3[1];

      sub_21C87DFE0(v3, type metadata accessor for PMAccount);
      v14 = v11;
      v15 = v12;
      sub_21CB85374();
      sub_21CB82954();
    }
  }
}

uint64_t sub_21C871AFC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = a1;
  v42 = sub_21CB853D4();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB85404();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21CB82964();
  v5 = *(v32 - 8);
  v33 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB82124();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB85424();
  v38 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v34 = &v31 - v16;
  sub_21C8582C0();
  v35 = sub_21CB85CF4();
  sub_21CB85414();
  sub_21CB85434();
  v17 = v12 + 8;
  v18 = *(v12 + 8);
  v37 = v17;
  v18(v14, v11);
  (*(v8 + 16))(v10, v36, v7);
  v20 = v31;
  v19 = v32;
  (*(v5 + 16))(v31, v39, v32);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  (*(v5 + 32))(v23 + v22, v20, v19);
  aBlock[4] = sub_21C87DBB8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);

  v25 = v40;
  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C87E764(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  v27 = v41;
  v26 = v42;
  sub_21CB85F14();
  v29 = v34;
  v28 = v35;
  MEMORY[0x21CF157D0](v34, v25, v27, v24);
  _Block_release(v24);

  (*(v45 + 8))(v27, v26);
  (*(v43 + 8))(v25, v44);
  return (v18)(v29, v38);
}

uint64_t sub_21C872088(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

unint64_t sub_21C8720D0@<X0>(unint64_t result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_21CB109D0(*a2), (v5 & 1) != 0))
  {
    v6 = (*(v4 + 56) + 24 * result);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];

    result = v9;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a3 = v7;
  a3[1] = v8;
  a3[2] = v9;
  return result;
}

uint64_t sub_21C872150(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_21C7FB8AC(*a1, v5, v6);
  return sub_21C87EC3C(v4, v5, v6, v3);
}

uint64_t sub_21C8721B0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21CB858B4();
  v2[5] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C872248, v4, v3);
}

uint64_t sub_21C872248()
{
  v1 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v2 = v0[2];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_21CB85254();
  sub_21CB82524();

  sub_21CB85084();
  sub_21CB85254();
  sub_21CB82524();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21C87238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v111 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0);
  MEMORY[0x28223BE20](v111);
  v110 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED88, &qword_21CBAAFC0);
  v135 = *(v4 - 8);
  v136 = v4;
  MEMORY[0x28223BE20](v4);
  v109 = &v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED90, &qword_21CBAAFC8);
  MEMORY[0x28223BE20](v6 - 8);
  v137 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v141 = &v109 - v9;
  v118 = sub_21CB81024();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v140 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v139 = &v109 - v14;
  v130 = type metadata accessor for PMAppAccountsCollectionView(0);
  MEMORY[0x28223BE20](v130);
  v16 = (&v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED98, &qword_21CBAAFD0);
  v120 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v119 = &v109 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDA0, &qword_21CBAAFD8);
  MEMORY[0x28223BE20](v127);
  v129 = &v109 - v18;
  v19 = type metadata accessor for PMAppAccountsList(0);
  v125 = *(v19 - 8);
  v20 = *(v125 + 64);
  MEMORY[0x28223BE20](v19);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDA8, &qword_21CBAAFE0);
  v113 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v112 = &v109 - v21;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDB0, &qword_21CBAAFE8);
  v115 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v114 = &v109 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v109 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDB8, &qword_21CBAAFF0);
  MEMORY[0x28223BE20](v26 - 8);
  v134 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v143 = &v109 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDC0, &qword_21CBAAFF8);
  MEMORY[0x28223BE20](v30 - 8);
  v133 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v132 = &v109 - v33;
  sub_21C8739BC((&v109 - v33));
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v121 = v19;
  sub_21C728D50(v25);
  v34 = sub_21C8816E4(v25);

  sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
  v123 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v20;
  v124 = a1;
  if (v34)
  {
    sub_21CB85084();
    v35 = v144;
    swift_getKeyPath(byte_21CBAB078);
    v144 = v35;
    sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810D4();

    v36 = *(v35 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedSections);

    v144 = v36;
    swift_getKeyPath(byte_21CBAB0A0);
    sub_21C87D2B8(a1, &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
    v37 = *(v125 + 80);
    v38 = swift_allocObject();
    sub_21C87BFAC(&v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + ((v37 + 16) & ~v37), type metadata accessor for PMAppAccountsList);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE20, &qword_21CBAB0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDE0, &qword_21CBAB028);
    sub_21C6EADEC(&qword_27CDEEE28, &qword_27CDEEE20, &qword_21CBAB0C0, MEMORY[0x277D83980]);
    sub_21C87DD58();
    v39 = v112;
    sub_21CB84FD4();
    sub_21CB82334();
    v40 = sub_21C87DCD4();
    v41 = v114;
    v42 = v126;
    sub_21CB84514();
    (*(v113 + 8))(v39, v42);
    v43 = v115;
    v44 = v128;
    (*(v115 + 16))(v129, v41, v128);
    swift_storeEnumTagMultiPayload();
    v144 = v42;
    v145 = v40;
    swift_getOpaqueTypeConformance2();
    v45 = sub_21C87E764(&qword_27CDEEDC8, type metadata accessor for PMAppAccountsCollectionView, &unk_21CBBCBE8);
    v144 = v130;
    v145 = v45;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v43 + 8))(v41, v44);
    v125 = v37;
  }

  else
  {
    sub_21CB85084();
    v46 = v144;
    swift_getKeyPath(byte_21CBAAC98);
    v144 = v46;
    sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810D4();

    v115 = *(v46 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    sub_21CB85084();
    v47 = v139;
    sub_21C87D2B8(v144 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v139, type metadata accessor for PMAppAccountsListModel.Configuration);

    v48 = sub_21CB85C44();
    v49 = v140;
    (*(*(v48 - 8) + 56))(v140, 1, 4, v48);
    LOBYTE(v46) = sub_21C71382C(v47, v49);
    sub_21C87DFE0(v49, type metadata accessor for PMAppAccountsListModel.Configuration);
    sub_21C87DFE0(v47, type metadata accessor for PMAppAccountsListModel.Configuration);
    if ((v46 & 1) == 0)
    {
      goto LABEL_8;
    }

    v50 = *(a1 + *(v121 + 40));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v51 = sub_21C81C2B8(v50, v144);

    v144 = v51;
    sub_21C87E764(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel, &unk_21CBAC838);
    sub_21CB810D4();

    v52 = *(v51 + 33);

    if (v52 == 1)
    {
      sub_21CB85084();
      v53 = sub_21C882110();
    }

    else
    {
LABEL_8:
      v53 = MEMORY[0x277D84F90];
    }

    v54 = v116;
    sub_21CB81014();
    v55 = sub_21CB81004();
    v57 = v56;
    (*(v117 + 8))(v54, v118);
    sub_21CB85084();
    v58 = v144;
    v144 = v58;
    sub_21CB810D4();

    v60 = *(v58 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
    v59 = *(v58 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText + 8);

    v61 = v123;
    sub_21C87D2B8(a1, v123, type metadata accessor for PMAppAccountsList);
    v62 = (*(v125 + 80) + 16) & ~*(v125 + 80);
    v125 = *(v125 + 80);
    v63 = swift_allocObject();
    sub_21C87BFAC(v61, v63 + v62, type metadata accessor for PMAppAccountsList);
    *v16 = v115;
    v16[1] = v53;
    v16[2] = v55;
    v16[3] = v57;
    v16[4] = v60;
    v16[5] = v59;
    v16[6] = sub_21C87E7E4;
    v16[7] = v63;
    v64 = v130;
    v65 = *(v130 + 36);
    *(v16 + v65) = swift_getKeyPath(asc_21CBAA5D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    sub_21CB82334();
    v66 = sub_21C87E764(&qword_27CDEEDC8, type metadata accessor for PMAppAccountsCollectionView, &unk_21CBBCBE8);
    v67 = v119;
    sub_21CB84514();
    sub_21C87DFE0(v16, type metadata accessor for PMAppAccountsCollectionView);
    v68 = v120;
    v69 = v131;
    (*(v120 + 16))(v129, v67, v131);
    swift_storeEnumTagMultiPayload();
    v70 = sub_21C87DCD4();
    v144 = v126;
    v145 = v70;
    swift_getOpaqueTypeConformance2();
    v144 = v64;
    v145 = v66;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v68 + 8))(v67, v69);
  }

  v71 = v124;
  sub_21CB85084();
  v72 = v144;
  swift_getKeyPath(asc_21CBAA868);
  v144 = v72;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v73 = *(v72 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v74 = *(v72 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v75 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v75 = v73 & 0xFFFFFFFFFFFFLL;
  }

  v76 = v141;
  if (v75)
  {
    v77 = v71;
    sub_21CB85084();
    v78 = v139;
    sub_21C87D2B8(v144 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v139, type metadata accessor for PMAppAccountsListModel.Configuration);

    v79 = sub_21CB85C44();
    v80 = *(*(v79 - 8) + 56);
    v81 = v140;
    v80(v140, 1, 4, v79);
    v82 = sub_21C71382C(v78, v81);
    sub_21C87DFE0(v81, type metadata accessor for PMAppAccountsListModel.Configuration);
    sub_21C87DFE0(v78, type metadata accessor for PMAppAccountsListModel.Configuration);
    if (v82 & 1) != 0 || (sub_21CB85084(), sub_21C87D2B8(v144 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v78, type metadata accessor for PMAppAccountsListModel.Configuration), , v80(v81, 3, 4, v79), v83 = sub_21C71382C(v78, v81), sub_21C87DFE0(v81, type metadata accessor for PMAppAccountsListModel.Configuration), sub_21C87DFE0(v78, type metadata accessor for PMAppAccountsListModel.Configuration), (v83))
    {
      sub_21CB85084();
      v84 = v144;
      swift_getKeyPath(asc_21CBAA868);
      v85 = v77;
      v144 = v84;
      sub_21CB810D4();

      v86 = *(v84 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
      v87 = *(v84 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

      v88 = v123;
      sub_21C87D2B8(v85, v123, type metadata accessor for PMAppAccountsList);
      v89 = (v125 + 16) & ~v125;
      v90 = swift_allocObject();
      sub_21C87BFAC(v88, v90 + v89, type metadata accessor for PMAppAccountsList);
      v92 = v110;
      *(v110 + 2) = KeyPath;
      *(v92 + 24) = 0;
      v93 = v111;
      v94 = *(v111 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
      swift_storeEnumTagMultiPayload();
      v95 = (v92 + *(v93 + 28));
      *v95 = v86;
      v95[1] = v87;
      type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
      swift_allocObject();

      sub_21C7D56B0(v86, v87);
      sub_21C87E764(&qword_27CDEDC18, type metadata accessor for PMGeneratedPasswordsSearchResultsModel, &unk_21CBA2038);
      *v92 = sub_21CB82674();
      *(v92 + 8) = v96;
      v97 = (v92 + *(v93 + 32));
      *v97 = sub_21C87DF54;
      v97[1] = v90;
      v144 = 0xD000000000000012;
      v145 = 0x800000021CB8F740;
      sub_21CB852C4();
      sub_21C87E764(&qword_27CDEDB30, type metadata accessor for PMGeneratedPasswordsSearchResultsRow, &unk_21CBB8038);
      v98 = v109;
      sub_21CB845E4();
      sub_21C87DFE0(v92, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
      v100 = v135;
      v99 = v136;
      v76 = v141;
      (*(v135 + 32))(v141, v98, v136);
      v101 = 0;
    }

    else
    {
      v101 = 1;
      v100 = v135;
      v99 = v136;
      v76 = v141;
    }
  }

  else
  {
    v101 = 1;
    v100 = v135;
    v99 = v136;
  }

  (*(v100 + 56))(v76, v101, 1, v99);
  v103 = v132;
  v102 = v133;
  sub_21C6EDBAC(v132, v133, &qword_27CDEEDC0, &qword_21CBAAFF8);
  v104 = v134;
  sub_21C6EDBAC(v143, v134, &qword_27CDEEDB8, &qword_21CBAAFF0);
  v105 = v137;
  sub_21C6EDBAC(v76, v137, &qword_27CDEED90, &qword_21CBAAFC8);
  v106 = v138;
  sub_21C6EDBAC(v102, v138, &qword_27CDEEDC0, &qword_21CBAAFF8);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE10, &qword_21CBAB048);
  sub_21C6EDBAC(v104, v106 + *(v107 + 48), &qword_27CDEEDB8, &qword_21CBAAFF0);
  sub_21C6EDBAC(v105, v106 + *(v107 + 64), &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C6EA794(v76, &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C6EA794(v143, &qword_27CDEEDB8, &qword_21CBAAFF0);
  sub_21C6EA794(v103, &qword_27CDEEDC0, &qword_21CBAAFF8);
  sub_21C6EA794(v105, &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C6EA794(v104, &qword_27CDEEDB8, &qword_21CBAAFF0);
  return sub_21C6EA794(v102, &qword_27CDEEDC0, &qword_21CBAAFF8);
}

uint64_t sub_21C8739BC@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC88, &qword_21CBAAD68);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v49 - v6;
  v7 = type metadata accessor for PMSharingGroup(0);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC60, &qword_21CBAAD50);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v61 = v1;
  sub_21CB85084();
  v20 = v69;
  swift_getKeyPath(asc_21CBAA868);
  *&v69 = v20;
  v56 = sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v21 = *(v20 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v22 = *(v20 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    type metadata accessor for PMAppAccountsList(0);
    swift_getKeyPath(byte_21CBAB110);
    sub_21CB81DB4();

    v71[0] = v65;
    v71[1] = v66;
    v72 = v67;
    v73 = v68;
    v69 = v63;
    v70 = v64;
    v24 = *(&v63 + 1);
    if (*(&v63 + 1))
    {
      v65 = v71[1];
      v66 = v72;
      *&v67 = v73;
      v63 = v70;
      v64 = v71[0];
      if (v69 != 2 && v69 != 3)
      {
        v50 = v69;
        sub_21CB85084();
        sub_21C87D2B8(v79 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v19, type metadata accessor for PMAppAccountsListModel.Configuration);

        v25 = sub_21CB85C44();
        (*(*(v25 - 8) + 56))(v16, 1, 4, v25);
        v26 = sub_21C71382C(v19, v16);
        sub_21C87DFE0(v16, type metadata accessor for PMAppAccountsListModel.Configuration);
        sub_21C87DFE0(v19, type metadata accessor for PMAppAccountsListModel.Configuration);
        if (v26)
        {
          v27 = swift_allocObject();
          *(v27 + 16) = v50;
          *(v27 + 24) = v24;
          v28 = v66;
          *(v27 + 64) = v65;
          *(v27 + 80) = v28;
          *(v27 + 96) = v67;
          v29 = v64;
          *(v27 + 32) = v63;
          *(v27 + 48) = v29;
          KeyPath = swift_getKeyPath(byte_21CBAAD70);
          LOBYTE(v77[0]) = 1;
          LOBYTE(v74) = 1;
          v62 = 0;
          *&v79 = 0;
          BYTE8(v79) = 1;
          *&v80 = 0;
          WORD4(v80) = 1;
          *&v81[0] = sub_21C87E154;
          *(&v81[0] + 1) = v27;
          *&v81[1] = KeyPath;
          BYTE8(v81[1]) = 0;

          goto LABEL_11;
        }
      }

      sub_21C6EA794(&v69, &unk_27CDED230, &unk_21CBA6460);
    }
  }

  v80 = 0u;
  memset(v81, 0, 25);
  v79 = 0u;
LABEL_11:
  sub_21CB85084();
  v31 = v69;
  swift_getKeyPath(asc_21CBAA868);
  *&v69 = v31;
  sub_21CB810D4();

  v32 = *(v31 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v33 = *(v31 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = 1;
    v37 = v58;
    v36 = v59;
  }

  else
  {
    v38 = v55;
    sub_21C86F0C0(v55);
    v39 = (*(v53 + 48))(v38, 1, v54);
    v37 = v58;
    if (v39 == 1)
    {
      sub_21C6EA794(v38, &qword_27CDF7670, &unk_21CBAA8F0);
      v35 = 1;
      v36 = v59;
    }

    else
    {
      v40 = v51;
      sub_21C87BFAC(v38, v51, type metadata accessor for PMSharingGroup);
      v41 = v52;
      sub_21C86B484(v40);
      sub_21C87DFE0(v40, type metadata accessor for PMSharingGroup);
      v42 = v59;
      (*(v37 + 32))(v13, v41, v59);
      v36 = v42;
      v35 = 0;
    }
  }

  (*(v37 + 56))(v13, v35, 1, v36);
  v74 = v79;
  v75 = v80;
  v76[0] = v81[0];
  *(v76 + 9) = *(v81 + 9);
  v43 = v57;
  sub_21C6EDBAC(v13, v57, &qword_27CDEEC60, &qword_21CBAAD50);
  v44 = v75;
  v77[0] = v74;
  v77[1] = v75;
  v45 = v76[0];
  v78[0] = v76[0];
  v46 = *(v76 + 9);
  *(v78 + 9) = *(v76 + 9);
  *a1 = v74;
  a1[1] = v44;
  a1[2] = v45;
  *(a1 + 41) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE38, &qword_21CBAB100);
  sub_21C6EDBAC(v43, a1 + *(v47 + 48), &qword_27CDEEC60, &qword_21CBAAD50);
  sub_21C6EDBAC(v77, &v69, &qword_27CDEEE40, &qword_21CBAB108);
  sub_21C6EA794(&v79, &qword_27CDEEE40, &qword_21CBAB108);
  sub_21C6EA794(v13, &qword_27CDEEC60, &qword_21CBAAD50);
  sub_21C6EA794(v43, &qword_27CDEEC60, &qword_21CBAAD50);
  v69 = v74;
  v70 = v75;
  v71[0] = v76[0];
  *(v71 + 9) = *(v76 + 9);
  return sub_21C6EA794(&v69, &qword_27CDEEE40, &qword_21CBAB108);
}

uint64_t sub_21C8741C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE30, &unk_21CBAB0C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDF0, &unk_21CBAB030);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v28 = *a1;
  v29 = v13;
  v30 = v14;
  v31 = a2;
  sub_21C8747DC(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  type metadata accessor for PMAppAccountsCollectionView(0);
  sub_21C87DED8();
  sub_21C87E764(&qword_27CDEEDC8, type metadata accessor for PMAppAccountsCollectionView, &unk_21CBBCBE8);
  sub_21CB85034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v15 = v32[0];
  swift_getKeyPath(byte_21CBAAB48);
  v32[0] = v15;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  LOBYTE(a2) = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  if ((a2 & 0xFE) == 2 || (, !v13))
  {
    v22 = sub_21CB83004();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  }

  else
  {
    v32[0] = v12;
    v32[1] = v13;
    sub_21C71F3FC();
    *v7 = sub_21CB84054();
    *(v7 + 1) = v16;
    v7[16] = v17 & 1;
    *(v7 + 3) = v18;
    v19 = *MEMORY[0x277CDDDD0];
    v20 = sub_21CB83004();
    v21 = *(v20 - 8);
    (*(v21 + 104))(v7, v19, v20);
    (*(v21 + 56))(v7, 0, 1, v20);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDE0, &qword_21CBAB028);
  v24 = v27;
  sub_21C716934(v7, v27 + *(v23 + 36), &qword_27CDEEE30, &unk_21CBAB0C8);
  return (*(v9 + 32))(v24, v11, v8);
}

uint64_t sub_21C874594@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = type metadata accessor for PMAppAccountsList(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v10 = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
  v9 = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText + 8);

  sub_21C87D2B8(a2, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_21C87BFAC(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PMAppAccountsList);
  v13 = MEMORY[0x277D84F90];
  *a3 = a1;
  a3[1] = v13;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  a3[4] = v10;
  a3[5] = v9;
  a3[6] = sub_21C87E0CC;
  a3[7] = v12;
  v14 = *(type metadata accessor for PMAppAccountsCollectionView(0) + 36);
  *(a3 + v14) = swift_getKeyPath(asc_21CBAA5D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C8747DC@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  if ((sub_21CB85174() & 1) == 0)
  {

    goto LABEL_5;
  }

  swift_getKeyPath(byte_21CBAAB48);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v4 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  if ((v4 & 0xFE) == 2)
  {
LABEL_5:
    sub_21C71F3FC();

    result = sub_21CB84054();
    v7 = v9 & 1;
    goto LABEL_6;
  }

  result = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
LABEL_6:
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t sub_21C874924(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v2 = *(type metadata accessor for PMAccount(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21CBA0690;
  sub_21C87D2B8(a1, v4 + v3, type metadata accessor for PMAccount);
  sub_21C884B98(v4, 0);
}

uint64_t sub_21C874A40(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PMAppAccountsList(0) + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v2 = sub_21C81C2B8(v1, v5);

  if (*(v2 + 32))
  {
    KeyPath = swift_getKeyPath(byte_21CBAB0D8);
    MEMORY[0x28223BE20](KeyPath);
    v5 = v2;
    sub_21C87E764(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel, &unk_21CBAC838);
    sub_21CB810C4();
  }

  else
  {
    *(v2 + 32) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  swift_getKeyPath(byte_21CBAA830);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  swift_getKeyPath(byte_21CBAA830);
  sub_21CB810F4();

  *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isGeneratedPasswordsSheetPresented) = (*(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isGeneratedPasswordsSheetPresented) & 1) == 0;
  swift_getKeyPath(byte_21CBAA830);
  sub_21CB810E4();
}

uint64_t sub_21C874CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 88) = xmmword_21CBA7B60;
  *(a2 + 104) = 1;
  KeyPath = swift_getKeyPath(aX_42);
  sub_21C844C40(a1, v13);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704000(KeyPath, v13[0]);

  type metadata accessor for PMTipsStore(0);
  sub_21C87E764(&qword_27CDED870, type metadata accessor for PMTipsStore, &unk_21CBCD9D8);
  v7 = sub_21CB82674();
  v9 = v8;

  *(a2 + 112) = v7;
  *(a2 + 120) = v9;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C87E764(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *(a2 + 128) = sub_21CB82B84();
  *(a2 + 136) = v10;
  sub_21CB84D44();
  v11 = v13[1];
  *(a2 + 144) = v13[0];
  *(a2 + 152) = v11;
  type metadata accessor for PMTipView(0);
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C87E764(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  return sub_21CB821F4();
}

uint64_t sub_21C874EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAppAccountsList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21C87D2B8(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21C87BFAC(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMAppAccountsList);
  sub_21CB84DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v9 = v17;
  swift_getKeyPath(byte_21CBAA9D8);
  v17 = v9;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v10 = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);

  v11 = *(v10 + 16);

  LOBYTE(v6) = v11 == 0;
  KeyPath = swift_getKeyPath(asc_21CBAAAE0);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_21C87E800;
  v15[2] = v13;
  return result;
}

uint64_t sub_21C875168@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C87528C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_21CB831C4();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA88, &qword_21CBAAA98);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA90, &qword_21CBAAAA0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA98, &qword_21CBAAAA8);
  MEMORY[0x28223BE20](v18 - 8);
  v39 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  if (a1)
  {
    sub_21C8756F8(v17);
    v23 = v7;
    v24 = *(v12 + 16);
    v24(v14, v17, v11);
    v24(v10, v14, v11);
    v25 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAA8, &qword_21CBAAAB8) + 48)];
    *v25 = 0;
    v25[8] = 1;
    v26 = *(v12 + 8);
    v26(v17, v11);
    v26(v14, v11);
    sub_21C716934(v10, v22, &qword_27CDEEA88, &qword_21CBAAA98);
    (*(v8 + 56))(v22, 0, 1, v23);
  }

  else
  {
    (*(v8 + 56))(&v37 - v21, 1, 1, v7);
  }

  v27 = v40;
  sub_21CB831B4();
  v28 = v39;
  v38 = v22;
  sub_21C6EDBAC(v22, v39, &qword_27CDEEA98, &qword_21CBAAAA8);
  v30 = v43;
  v29 = v44;
  v31 = *(v43 + 16);
  v32 = v41;
  v31(v41, v27, v44);
  v33 = v42;
  sub_21C6EDBAC(v28, v42, &qword_27CDEEA98, &qword_21CBAAAA8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAA0, &qword_21CBAAAB0);
  v31((v33 + *(v34 + 48)), v32, v29);
  v35 = *(v30 + 8);
  v35(v27, v29);
  sub_21C6EA794(v38, &qword_27CDEEA98, &qword_21CBAAAA8);
  v35(v32, v29);
  return sub_21C6EA794(v28, &qword_27CDEEA98, &qword_21CBAAAA8);
}

uint64_t sub_21C8756F8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v27 = sub_21CB81024();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAB0, &qword_21CBAAAC0);
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAB8, &qword_21CBAAAC8);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v25 = &v25 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAC0, &qword_21CBAAAD0);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - v9;
  v34 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAC8, &qword_21CBAAAD8);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21C6EADEC(&qword_27CDEEAD0, &qword_27CDEEAC8, &qword_21CBAAAD8, MEMORY[0x277CE14C0]);
  sub_21CB83F54();
  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v2 + 8))(v4, v27);
  v35 = v10;
  v36 = v12;
  sub_21C6EADEC(&qword_27CDEEAD8, &qword_27CDEEAB0, &qword_21CBAAAC0, MEMORY[0x277CDE5B0]);
  sub_21C71F3FC();
  v13 = v25;
  v14 = v26;
  sub_21CB846E4();

  (*(v28 + 8))(v6, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v15 = v35;
  swift_getKeyPath(asc_21CBAA868);
  v35 = v15;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v16 = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v17 = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  v19 = v18 != 0;
  KeyPath = swift_getKeyPath(asc_21CBAAAE0);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = v29;
  (*(v31 + 32))(v29, v13, v32);
  v23 = (v22 + *(v30 + 36));
  *v23 = KeyPath;
  v23[1] = sub_21C735744;
  v23[2] = v21;
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAE0, &qword_21CBAAB10);
  sub_21C87C4DC();
  sub_21C87C618();
  sub_21CB84974();
  return sub_21C6EA794(v22, &qword_27CDEEAC0, &qword_21CBAAAD0);
}

uint64_t sub_21C875C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82F84();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA18, &qword_21CBAAA10);
  MEMORY[0x28223BE20](v24);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA20, &qword_21CBAAA18);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_21C875FEC(v8);
  v25 = 0x756F636341646461;
  v26 = 0xEA0000000000746ELL;
  v16 = *(a1 + *(type metadata accessor for PMAppAccountsList(0) + 44) + 8);

  if ((v16 & 1) == 0)
  {
    sub_21CB85B04();
    v22 = v4;
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v23 + 8))(v6, v22);
  }

  sub_21C87C1D0();
  sub_21CB845E4();
  sub_21C6EA794(v8, &qword_27CDEEA18, &qword_21CBAAA10);
  v18 = *(v10 + 16);
  v18(v12, v15, v9);
  *a2 = 0;
  *(a2 + 8) = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA58, &qword_21CBAAA38);
  v18((a2 + *(v19 + 48)), v12, v9);
  v20 = *(v10 + 8);
  v20(v15, v9);
  return (v20)(v12, v9);
}

uint64_t sub_21C875FEC@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA38, &qword_21CBAAA20);
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v33 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA60, &qword_21CBAAA40);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v33 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA68, &unk_21CBAAA48);
  MEMORY[0x28223BE20](v37);
  v6 = (&v33 - v5);
  v7 = type metadata accessor for PMAppAccountsList(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87D2B8(v41 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v15, type metadata accessor for PMAppAccountsListModel.Configuration);

  v16 = sub_21CB85C44();
  (*(*(v16 - 8) + 56))(v12, 1, 4, v16);
  v17 = sub_21C71382C(v15, v12);
  sub_21C87DFE0(v12, type metadata accessor for PMAppAccountsListModel.Configuration);
  v18 = sub_21C87DFE0(v15, type metadata accessor for PMAppAccountsListModel.Configuration);
  if (v17)
  {
    sub_21C87D2B8(v1, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v20 = swift_allocObject();
    sub_21C87BFAC(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for PMAppAccountsList);
    *v6 = sub_21C87E7DC;
    v6[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_21C87C30C();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEA40, &unk_21CBAAA28);
    v22 = sub_21C6EADEC(&qword_27CDEEA48, &qword_27CDEEA38, &qword_21CBAAA20, MEMORY[0x277CDE5B0]);
    v23 = sub_21C87C360();
    v41 = v38;
    v42 = MEMORY[0x277CE1350];
    v43 = v21;
    v44 = v22;
    v45 = MEMORY[0x277CE1340];
    v46 = v23;
    swift_getOpaqueTypeConformance2();
    return sub_21CB83494();
  }

  else
  {
    MEMORY[0x28223BE20](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA70, &qword_21CBAAA58);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C6EADEC(&qword_27CDEEA78, &qword_27CDEEA70, &qword_21CBAAA58, MEMORY[0x277CE14C0]);
    sub_21CB83F54();
    sub_21CB85184();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA40, &unk_21CBAAA28);
    v26 = sub_21C6EADEC(&qword_27CDEEA48, &qword_27CDEEA38, &qword_21CBAAA20, MEMORY[0x277CDE5B0]);
    v27 = sub_21C87C360();
    v28 = MEMORY[0x277CE1350];
    v29 = v35;
    v30 = v38;
    sub_21CB84974();
    (*(v34 + 8))(v3, v30);
    v31 = v36;
    v32 = v39;
    (*(v36 + 16))(v6, v29, v39);
    swift_storeEnumTagMultiPayload();
    sub_21C87C30C();
    v41 = v30;
    v42 = v28;
    v43 = v25;
    v44 = v26;
    v45 = MEMORY[0x277CE1340];
    v46 = v27;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v31 + 8))(v29, v32);
  }
}

uint64_t sub_21C8766F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  MEMORY[0x28223BE20](v42);
  v45 = &v35 - v3;
  v4 = type metadata accessor for PMAppAccountsList(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21CB81024();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v39 = a1;
  sub_21CB85084();
  v14 = v49;
  swift_getKeyPath(asc_21CBAA868);
  v49 = v14;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v15 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v16 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = 1;
    v19 = v48;
  }

  else
  {
    v35 = v13;
    v36 = v10;
    v37 = v8;
    v20 = v39;
    sub_21CB85084();
    v21 = v49;
    swift_getKeyPath(aH_69);
    v49 = v21;
    sub_21CB810D4();

    sub_21CB85084();
    v22 = v49;
    swift_getKeyPath(byte_21CBAAC98);
    v49 = v22;
    sub_21CB810D4();

    v23 = (v38 + 8);
    sub_21CB81014();
    v24 = sub_21CB81004();
    v26 = v25;
    (*v23)(v7, v40);
    v49 = v24;
    v50 = v26;
    v27 = v43;
    sub_21C87D2B8(v20, v43, type metadata accessor for PMAppAccountsList);
    v28 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v29 = swift_allocObject();
    sub_21C87BFAC(v27, v29 + v28, type metadata accessor for PMAppAccountsList);
    sub_21C71F3FC();
    v30 = v36;
    sub_21CB84DE4();
    v31 = v44;
    v32 = v37;
    v33 = v35;
    (*(v44 + 16))(v45, v30, v37);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB83494();
    (*(v31 + 8))(v30, v32);
    v19 = v48;
    sub_21C716934(v33, v48, &qword_27CDEE9D8, &unk_21CBAA9C0);
    v18 = 0;
  }

  return (*(v46 + 56))(v19, v18, 1, v47);
}

uint64_t sub_21C876E30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  swift_getKeyPath(aH_69);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  swift_getKeyPath(aH_69);
  sub_21CB810F4();

  v0 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs;
  v1 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);
  *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs) = MEMORY[0x277D84FA0];
  swift_getKeyPath(aH_69);
  sub_21CB810D4();

  v2 = *(v7 + v0);

  v3 = sub_21C7A2154(v1, v2);

  if ((v3 & 1) == 0)
  {
    v4 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
    swift_getKeyPath(aH_69);

    sub_21CB810D4();

    v5 = *(v7 + v0);

    v4(v1, v5);
  }

  swift_getKeyPath(aH_69);
  sub_21CB810E4();
}

uint64_t sub_21C877070()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v4 = v19;
  sub_21CB85084();
  v5 = v19;
  swift_getKeyPath(byte_21CBAAC98);
  v19 = v5;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v6 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v7 = *(v6 + 16);
  if (v7)
  {
    v18 = v4;
    v19 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v7, 0);
    v8 = v19;
    v9 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    do
    {
      sub_21C87D2B8(v9, v3, type metadata accessor for PMAccount);
      v12 = *v3;
      v11 = v3[1];

      sub_21C87DFE0(v3, type metadata accessor for PMAccount);
      v19 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21C7B0C0C((v13 > 1), v14 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v16 = sub_21CB009AC(v8);

  sub_21C880484(v16);
}

uint64_t sub_21C877308@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMAppAccountsList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81F04();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21C87D2B8(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21C87BFAC(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAppAccountsList);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21C87CA88;
  v17[1] = v15;
  return result;
}

uint64_t sub_21C87751C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8775A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_21CB831C4();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  *&v62 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v10 = type metadata accessor for PMAppAccountsList(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = v12;
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v55 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB98, &qword_21CBACD60) - 8;
  MEMORY[0x28223BE20](v63);
  v64 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  sub_21CB81ED4();
  v21 = sub_21CB81F14();
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  v61 = type metadata accessor for PMAppAccountsList;
  v58 = v13;
  sub_21C87D2B8(a1, v13, type metadata accessor for PMAppAccountsList);
  v22 = *(v11 + 80);
  v57 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v59 = type metadata accessor for PMAppAccountsList;
  sub_21C87BFAC(v13, v23 + ((v22 + 16) & ~v22), type metadata accessor for PMAppAccountsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84D94();
  sub_21CB85084();
  v24 = v71;
  swift_getKeyPath(aH_69);
  *&v71 = v24;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v26 = sub_21C884770(v25);

  v27 = *(v26 + 16);

  v28 = v27 == 0;
  KeyPath = swift_getKeyPath(asc_21CBAAAE0);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80) + 36)];
  *v31 = KeyPath;
  v31[1] = sub_21C87E800;
  v31[2] = v30;
  sub_21CB85094();
  swift_getKeyPath(asc_21CBAAC00);
  sub_21CB850B4();

  (*(v62 + 8))(v9, v7);
  v32 = v77;
  v33 = v78;
  v34 = v79;
  v70[0] = 1;
  swift_getKeyPath(byte_21CBAAC28, v70);
  v74 = v32;
  v75 = v33;
  v76 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v62 = v71;
  v55 = v72;
  v35 = v73;

  v36 = v58;
  sub_21C87D2B8(a1, v58, v61);
  v37 = v57;
  v38 = swift_allocObject();
  sub_21C87BFAC(v36, v38 + v37, v59);
  v39 = *(v63 + 44);
  v56 = v20;
  v40 = &v20[v39];
  v41 = v55;
  *v40 = v62;
  *(v40 + 1) = v41;
  *(v40 + 4) = v35;
  *(v40 + 5) = &unk_21CBAAC80;
  *(v40 + 6) = v38;
  v42 = v65;
  sub_21CB831B4();
  v43 = v20;
  v44 = v64;
  sub_21C6EDBAC(v43, v64, &qword_27CDEEB98, &qword_21CBACD60);
  LOBYTE(v71) = 1;
  v46 = v66;
  v45 = v67;
  v47 = *(v67 + 16);
  v48 = v68;
  v47(v66, v42, v68);
  v49 = v69;
  sub_21C6EDBAC(v44, v69, &qword_27CDEEB98, &qword_21CBACD60);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB8, &qword_21CBAAC88);
  v51 = v49 + *(v50 + 48);
  v52 = v71;
  *v51 = 0;
  *(v51 + 8) = v52;
  v47((v49 + *(v50 + 64)), v46, v48);
  v53 = *(v45 + 8);
  v53(v42, v48);
  sub_21C6EA794(v56, &qword_27CDEEB98, &qword_21CBACD60);
  v53(v46, v48);
  return sub_21C6EA794(v44, &qword_27CDEEB98, &qword_21CBACD60);
}

uint64_t sub_21C877D5C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21CB85084();
  swift_getKeyPath(aH_69);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v4 = sub_21C884770(v3);

  sub_21C884B98(v4, v2);
}

uint64_t sub_21C877EAC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21CB858B4();
  v2[5] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C877F44, v4, v3);
}

uint64_t sub_21C877F44()
{
  v1 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v2 = v0[2];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_21CB85254();
  sub_21CB82524();

  sub_21CB85084();
  sub_21CB85254();
  sub_21CB82524();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21C878088()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = sub_21CB85C44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v21[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87D2B8(v21[1] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v15, type metadata accessor for PMAppAccountsListModel.Configuration);

  v16 = (*(v4 + 48))(v15, 4, v3);
  if (v16 <= 1)
  {
    if (!v16)
    {
      (*(v4 + 32))(v6, v15, v3);
      type metadata accessor for PMAppAccountsList(0);
      sub_21CA1D444(v6, v2);
      v18 = type metadata accessor for PMSharingGroup(0);
      if ((*(*(v18 - 8) + 48))(v2, 1, v18) == 1)
      {
        sub_21C6EA794(v2, &qword_27CDF7670, &unk_21CBAA8F0);
        v17 = 0;
      }

      else
      {
        v17 = *&v2[*(v18 + 20)];

        sub_21C87DFE0(v2, type metadata accessor for PMSharingGroup);
      }

      (*(v4 + 8))(v6, v3);
      return v17;
    }

LABEL_12:
    sub_21CB81014();
    sub_21CB81014();
    v17 = sub_21CB80FF4();
    v19 = *(v21[0] + 8);
    v19(v9, v7);
    v19(v12, v7);
    return v17;
  }

  if (v16 == 2)
  {
    goto LABEL_12;
  }

  if (v16 != 3)
  {
    return 0;
  }

  if (qword_27CDEA4A0 != -1)
  {
    swift_once();
  }

  v17 = qword_27CE18758;

  return v17;
}

uint64_t sub_21C878514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_21CB832E4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC90, &qword_21CBAADA0) + 44);
  *v6 = sub_21CB83074();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC98, &qword_21CBAADA8);
  return sub_21C8785A4(a1, a2, v6 + *(v7 + 44));
}

uint64_t sub_21C8785A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = type metadata accessor for PMAppAccountsList(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECA0, &qword_21CBAADB0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v50 = &v40[-v10];
  v11 = *(a1 + *(type metadata accessor for PMSharingGroup(0) + 24));
  sub_21CB13134(MEMORY[0x277D84F90]);
  KeyPath = swift_getKeyPath(byte_21CBAADB8);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, v58);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21C87E764(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache, &unk_21CBBBA3C);
  v13 = sub_21CB82674();
  v15 = v14;

  *(&v53 + 1) = v13;
  *&v54 = v15;
  v55 = 0;
  *&v51[0] = v11;
  *(v51 + 8) = xmmword_21CBAA500;
  *(&v51[1] + 1) = 5;
  *&v52 = 0x3FE0000000000000;
  BYTE8(v52) = 1;

  v16 = sub_21C867B48(MEMORY[0x277D84F98], v11, v51, 40.0);

  *&v53 = v16;
  v44 = sub_21CB832F4();
  sub_21C87906C(a1, &v58);
  v17 = *(&v58 + 1);
  v41 = v59;
  v42 = v58;
  v43 = *(&v59 + 1);
  v18 = v45;
  sub_21C87D2B8(v45, &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMAppAccountsList);
  v19 = (v46[80] + 16) & ~v46[80];
  v20 = swift_allocObject();
  v21 = sub_21C87BFAC(&v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, type metadata accessor for PMAppAccountsList);
  v46 = v40;
  MEMORY[0x28223BE20](v21);
  *&v40[-16] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECB0, &qword_21CBAAE00);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECB8, &qword_21CBAAE08);
  v23 = sub_21CB83094();
  v24 = sub_21C6EADEC(&qword_27CDEECC0, &qword_27CDEECB8, &qword_21CBAAE08, MEMORY[0x277CDEFF0]);
  v25 = sub_21C87E764(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  *&v58 = v22;
  *(&v58 + 1) = v23;
  *&v59 = v24;
  *(&v59 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v50;
  sub_21CB84DA4();
  v27 = v47;
  v29 = v48;
  v28 = v49;
  v46 = *(v48 + 16);
  (v46)(v47, v26, v49);
  v30 = v53;
  v56[2] = v52;
  v56[3] = v53;
  v31 = v54;
  v56[4] = v54;
  v32 = v55;
  v57 = v55;
  v33 = v51[0];
  v34 = v51[1];
  v56[0] = v51[0];
  v56[1] = v51[1];
  *(a3 + 32) = v52;
  *(a3 + 48) = v30;
  *(a3 + 64) = v31;
  *(a3 + 80) = v32;
  *a3 = v33;
  *(a3 + 16) = v34;
  v35 = v43;
  *(a3 + 88) = v44;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
  v36 = v42;
  *(a3 + 112) = v42;
  *(a3 + 120) = v17;
  LOBYTE(v26) = v41;
  *(a3 + 128) = v41;
  *(a3 + 136) = v35;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECC8, &qword_21CBAAE10);
  (v46)(a3 + *(v37 + 80), v27, v28);
  sub_21C87CED0(v56, &v58);
  sub_21C79B058(v36, v17, v26);
  v38 = *(v29 + 8);

  v38(v50, v28);
  v38(v27, v28);
  sub_21C74A72C(v36, v17, v26);

  v60 = v52;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v58 = v51[0];
  v59 = v51[1];
  return sub_21C87CF2C(&v58);
}

uint64_t sub_21C878B9C(uint64_t a1)
{
  v2 = sub_21CB83094();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECB8, &qword_21CBAAE08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECD0, &qword_21CBAAE18);
  sub_21C87CF88();
  sub_21CB84C84();
  sub_21CB83084();
  sub_21C6EADEC(&qword_27CDEECC0, &qword_27CDEECB8, &qword_21CBAAE08, MEMORY[0x277CDEFF0]);
  sub_21C87E764(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_21CB840E4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21C878E10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C878F34@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21CB84BB4();
  v6 = sub_21CB84A74();
  v7 = sub_21CB83DC4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_21CB83E14();
  sub_21C6EA794(v4, &qword_27CDEBB58, &qword_21CBAF8A0);
  result = swift_getKeyPath(byte_21CBAAE30);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = result;
  a1[3] = v8;
  return result;
}

uint64_t sub_21C87906C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v15);
  v37 = &v35 - v16;
  MEMORY[0x28223BE20](v17);
  v38 = &v35 - v18;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v36 = sub_21CB81034();
  v19 = *(v36 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v22 = *(v3 + 8);
  v22(v5, v2);
  v22(v8, v2);
  v22(v11, v2);
  v22(v14, v2);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v36);
  swift_deallocClassInstance();
  v23 = v38;
  sub_21CB81004();
  v22(v37, v2);
  v22(v23, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21CBA0690;
  v25 = *(*(v39 + *(type metadata accessor for PMSharingGroup(0) + 24)) + 16);
  v26 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v26;
  *(v24 + 32) = v25;
  v27 = sub_21CB85594();
  v29 = v28;

  v41 = v27;
  v42 = v29;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v31 = v40;
  *v40 = result;
  v31[1] = v32;
  *(v31 + 16) = v33 & 1;
  v31[3] = v34;
  return result;
}

uint64_t sub_21C87949C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for PMAppAccountsList(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_21C87D2B8(a1, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  sub_21C87BFAC(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAppAccountsList);
  v16 = sub_21C87995C();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    sub_21C87D2B8(a1, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
    v20 = swift_allocObject();
    v21 = sub_21C87BFAC(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v14, type metadata accessor for PMAppAccountsList);
    MEMORY[0x28223BE20](v21);
    *(&v32 - 2) = v18;
    *(&v32 - 1) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v22 = v32;
    sub_21CB84DA4();

    v23 = v33;
    v24 = v22;
    v25 = v34;
    (*(v33 + 32))(v10, v24, v34);
    v26 = 0;
    v27 = v25;
    v28 = v23;
  }

  else
  {
    v26 = 1;
    v28 = v33;
    v27 = v34;
  }

  (*(v28 + 56))(v10, v26, 1, v27);
  sub_21C6EDBAC(v10, v7, &qword_27CDEB8C0, &unk_21CBA26A0);
  v29 = v35;
  *v35 = sub_21C87C4A0;
  v29[1] = v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA80, &qword_21CBAAA90);
  sub_21C6EDBAC(v7, v29 + *(v30 + 48), &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C7335A8(sub_21C87C4A0, v15);
  sub_21C6EA794(v10, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v7, &qword_27CDEB8C0, &unk_21CBA26A0);
  return sub_21C71B710(sub_21C87C4A0, v15);
}

uint64_t sub_21C8798D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v0 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);

  v0(1, 0);
}

uint64_t sub_21C87995C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87D2B8(v14[1] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v9, type metadata accessor for PMAppAccountsListModel.Configuration);

  v10 = sub_21CB85C44();
  v11 = 0;
  if (!(*(*(v10 - 8) + 48))(v9, 4, v10))
  {
    sub_21CB81014();
    sub_21CB81014();
    v11 = sub_21CB80FF4();
    v12 = *(v1 + 8);
    v12(v3, v0);
    v12(v6, v0);
  }

  sub_21C87DFE0(v9, type metadata accessor for PMAppAccountsListModel.Configuration);
  return v11;
}

uint64_t sub_21C879BC0(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  if (*(v8 + *a2) == 1)
  {
    *(v8 + *a2) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810C4();
  }
}

uint64_t sub_21C879D00(uint64_t a1, uint64_t a2)
{
  sub_21C71F3FC();

  return sub_21CB84CB4();
}

uint64_t sub_21C879DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v12[0] = v8;
  v12[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C879ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBAAA60);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA38, &qword_21CBAAA20);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA40, &unk_21CBAAA28);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 2;
  return result;
}

uint64_t sub_21C879F84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a1;
  v89 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAF8, &qword_21CBAAB18);
  v87 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v62 - v2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB00, &qword_21CBAAB20);
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v62 - v3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB08, &qword_21CBAAB28);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v62 - v6;
  v77 = sub_21CB82FC4();
  v95 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v90 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v12 = sub_21CB81024();
  v69 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB10, &qword_21CBAAB30);
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v17 = &v62 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB18, &qword_21CBAAB38);
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v19 = &v62 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB20, &qword_21CBAAB40);
  v92 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v94 = &v62 - v22;
  sub_21CB81014();
  v23 = sub_21CB81004();
  v25 = v24;
  v26 = *(v13 + 8);
  v68 = v13 + 8;
  v70 = v26;
  v26(v15, v12);
  v104 = v23;
  v105 = v25;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAAB48);
  v63 = v8;
  v64 = v11;
  sub_21CB850B4();

  v27 = *(v9 + 8);
  v65 = v9 + 8;
  v67 = v27;
  v27(v11, v8);
  v101 = v97;
  v102 = v98;
  v103 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB28, &qword_21CBAAB70);
  sub_21C87C6D0();
  sub_21C87C724();
  v72 = sub_21C71F3FC();
  v28 = v17;
  sub_21CB84E64();
  v29 = v90;
  sub_21CB82FB4();
  v71 = MEMORY[0x277CDF038];
  v30 = sub_21C6EADEC(&qword_27CDEEB40, &qword_27CDEEB10, &qword_21CBAAB30, MEMORY[0x277CDF038]);
  v31 = MEMORY[0x277CDDDA0];
  v32 = v19;
  v33 = v73;
  v34 = v77;
  sub_21CB84194();
  v35 = *(v95 + 8);
  v95 += 8;
  v66 = v35;
  v35(v29, v34);
  (*(v74 + 8))(v28, v33);
  v97 = v33;
  v98 = v34;
  v99 = v30;
  v100 = v31;
  swift_getOpaqueTypeConformance2();
  v36 = v75;
  sub_21CB847F4();
  (*(v76 + 8))(v32, v36);
  sub_21CB81014();
  v37 = sub_21CB81004();
  v39 = v38;
  v70(v15, v69);
  v104 = v37;
  v105 = v39;
  v40 = v64;
  v41 = v63;
  v42 = v91;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAAB78);
  sub_21CB850B4();

  v67(v40, v41);
  v101 = v97;
  v102 = v98;
  v103 = v99;
  v96 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB48, &qword_21CBAABA0);
  sub_21C87C7DC();
  sub_21C6EADEC(&qword_27CDEEB58, &qword_27CDEEB48, &qword_21CBAABA0, MEMORY[0x277CE14C0]);
  v43 = v81;
  sub_21CB84E64();
  v44 = v90;
  sub_21CB82FB4();
  v45 = sub_21C6EADEC(&qword_27CDEEB60, &qword_27CDEEAF8, &qword_21CBAAB18, v71);
  v46 = v80;
  v47 = v84;
  sub_21CB84194();
  v66(v44, v34);
  (*(v87 + 8))(v43, v47);
  v97 = v47;
  v98 = v34;
  v99 = v45;
  v100 = v31;
  swift_getOpaqueTypeConformance2();
  v48 = v93;
  v49 = v86;
  sub_21CB847F4();
  (*(v88 + 8))(v46, v49);
  v50 = *(v92 + 16);
  v51 = v78;
  v52 = v79;
  v50(v78, v94, v79);
  v53 = v83;
  v54 = *(v83 + 16);
  v55 = v82;
  v56 = v85;
  v54(v82, v48, v85);
  v57 = v89;
  v50(v89, v51, v52);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB68, &qword_21CBAABA8);
  v54(&v57[*(v58 + 48)], v55, v56);
  v59 = *(v53 + 8);
  v59(v93, v56);
  v60 = *(v92 + 8);
  v60(v94, v52);
  v59(v55, v56);
  return (v60)(v51, v52);
}

uint64_t sub_21C87AB28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB80, &qword_21CBAABC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEEB88, &qword_27CDEEB80, &qword_21CBAABC8, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21C87C830();
  return sub_21CB84FF4();
}

uint64_t sub_21C87AC50(unsigned __int8 *a1)
{
  sub_21CB3FC5C(*a1);
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C87AD38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v61 = sub_21CB81024();
  v51 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB70, &unk_21CBAABB0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v47 - v13;
  MEMORY[0x28223BE20](v14);
  v52 = &v47 - v15;
  MEMORY[0x28223BE20](v16);
  v54 = &v47 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v21);
  v59 = &v47 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v53 = a1;
  sub_21CB85084();
  v23 = v63;
  swift_getKeyPath(byte_21CBAAB48);
  v63 = v23;
  v50 = sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v24 = v51 + 1;
  sub_21CB81014();
  v25 = sub_21CB81004();
  v27 = v26;
  v28 = *v24;
  v51 = v24;
  v48 = v28;
  v28(v4, v61);
  v63 = v25;
  v64 = v27;
  v49 = sub_21C71F3FC();
  sub_21CB84CB4();
  v29 = *(v62 + 32);
  v62 += 32;
  v47 = v29;
  v29(v20, v8, v60);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4F0, &unk_21CB9E600);
  *&v20[*(v30 + 36)] = 256;
  v31 = v10[4];
  v31(v59, v20, v9);
  sub_21CB85084();
  v32 = v63;
  swift_getKeyPath(byte_21CBAAB48);
  v63 = v32;
  sub_21CB810D4();

  sub_21CB81014();
  v33 = sub_21CB81004();
  v35 = v34;
  v48(v4, v61);
  v63 = v33;
  v64 = v35;
  v36 = v55;
  sub_21CB84CB4();
  v37 = v52;
  v47(v52, v36, v60);
  *&v37[*(v30 + 36)] = 257;
  v38 = v54;
  v31(v54, v37, v9);
  v39 = v10[2];
  v40 = v56;
  v41 = v59;
  v39(v56, v59, v9);
  v42 = v57;
  v39(v57, v38, v9);
  v43 = v58;
  v39(v58, v40, v9);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB78, &qword_21CBAABC0);
  v39(&v43[*(v44 + 48)], v42, v9);
  v45 = v10[1];
  v45(v38, v9);
  v45(v41, v9);
  v45(v42, v9);
  return (v45)(v40, v9);
}

uint64_t sub_21C87B410()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[0] = v4;
  v8[1] = v6;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C87B544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBAAA60);
  sub_21C6EDBAC(a1, a2, &qword_27CDEEAC0, &qword_21CBAAAD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAE0, &qword_21CBAAB10);
  v6 = a2 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 2;
  return result;
}

unint64_t sub_21C87B60C()
{
  result = qword_27CDEE830;
  if (!qword_27CDEE830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE7F8, &qword_21CBAA6B0);
    sub_21C87B690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE830);
  }

  return result;
}

unint64_t sub_21C87B690()
{
  result = qword_27CDEE838;
  if (!qword_27CDEE838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE840, &qword_21CBAA6E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE848, &qword_21CBAA6F0);
    sub_21C6EADEC(&qword_27CDEE850, &qword_27CDEE848, &qword_21CBAA6F0, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    sub_21C87B78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE838);
  }

  return result;
}

unint64_t sub_21C87B78C()
{
  result = qword_27CDEE858;
  if (!qword_27CDEE858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE860, &qword_21CBAA6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    sub_21C87B854();
    swift_getOpaqueTypeConformance2();
    sub_21C87BA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE858);
  }

  return result;
}

unint64_t sub_21C87B854()
{
  result = qword_27CDEE870;
  if (!qword_27CDEE870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE878, &qword_21CBAA708);
    type metadata accessor for PMAppAccountsListModel(255);
    sub_21C87B960();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE870);
  }

  return result;
}

unint64_t sub_21C87B960()
{
  result = qword_27CDEE880;
  if (!qword_27CDEE880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE878, &qword_21CBAA708);
    sub_21C6EADEC(&qword_27CDEE888, &qword_27CDEE890, &qword_21CBAA710, MEMORY[0x277CE1148]);
    sub_21C6EADEC(&qword_27CDEE898, &qword_27CDEE8A0, &unk_21CBAA718, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE880);
  }

  return result;
}

unint64_t sub_21C87BA44()
{
  result = qword_27CDEE8A8;
  if (!qword_27CDEE8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8B0, &unk_21CBAA728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    sub_21C87B854();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE8A8);
  }

  return result;
}

unint64_t sub_21C87BB48()
{
  result = qword_27CDEE8D8;
  if (!qword_27CDEE8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8D0, &qword_21CBAA750);
    v1 = MEMORY[0x277CDDF68];
    sub_21C6EADEC(&qword_27CDEE8E0, &qword_27CDEE8E8, &qword_21CBAA758, MEMORY[0x277CDDF68]);
    sub_21C6EADEC(&qword_27CDEE8F0, &qword_27CDEE8F8, &qword_21CBAA760, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE8D8);
  }

  return result;
}

unint64_t sub_21C87BC40()
{
  result = qword_27CDEE908;
  if (!qword_27CDEE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE900, &unk_21CBAA790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB90, &qword_21CBA5268);
    sub_21CB83994();
    sub_21C815788();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE908);
  }

  return result;
}