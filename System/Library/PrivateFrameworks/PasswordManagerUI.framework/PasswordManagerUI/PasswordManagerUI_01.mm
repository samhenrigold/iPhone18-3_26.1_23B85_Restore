uint64_t type metadata accessor for PMAppCommands(uint64_t a1)
{
  result = qword_27CDEF180;
  if (!qword_27CDEF180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PMEditableWebsite(uint64_t a1)
{
  result = qword_27CDF8468;
  if (!qword_27CDF8468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C705370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMWiFiDetailsModel(uint64_t a1)
{
  result = qword_27CDF29B8;
  if (!qword_27CDF29B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C705420(uint64_t a1)
{
  result = type metadata accessor for PMWiFiNetwork(319);
  if (v2 <= 0x3F)
  {
    result = sub_21CB81114();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for PMAppRootNavigationModel(uint64_t a1)
{
  result = qword_27CDEFE28;
  if (!qword_27CDEFE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70555C(uint64_t a1)
{
  sub_21C704B88(319);
  if (v1 <= 0x3F)
  {
    sub_21C6F0790(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
    if (v2 <= 0x3F)
    {
      sub_21C6F0790(319, &qword_27CDF62D0, type metadata accessor for PMAccount);
      if (v3 <= 0x3F)
      {
        sub_21CB81114();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21C7057A4(uint64_t a1)
{
  sub_21CB80E34();
  if (v1 <= 0x3F)
  {
    sub_21C6F0848(319);
    if (v2 <= 0x3F)
    {
      sub_21CB85114();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PMAppAccountsListModel.Configuration(319);
        if (v4 <= 0x3F)
        {
          sub_21CB81114();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for PMAppSecurityRecommendationsModel(uint64_t a1)
{
  result = qword_27CDF0CA8;
  if (!qword_27CDF0CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C705A10(uint64_t a1)
{
  result = sub_21CB85114();
  if (v2 <= 0x3F)
  {
    result = sub_21CB81114();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_21C705B34(uint64_t a1)
{
  if (!qword_27CDEAD00)
  {
    type metadata accessor for PMSecureWindowLockPolicyEnforcer(255);
    sub_21C705CB4(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer, &protocol conformance descriptor for PMSecureWindowLockPolicyEnforcer);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEAD00);
    }
  }
}

uint64_t type metadata accessor for PMSecureWindowLockPolicyEnforcer(uint64_t a1)
{
  result = qword_27CDF7820;
  if (!qword_27CDF7820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C705C14(uint64_t a1)
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21C705CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C705CFC(uint64_t a1)
{
  if (!qword_27CDEBD30)
  {
    type metadata accessor for PMAccountsState(255);
    sub_21C705DD8(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEBD30);
    }
  }
}

uint64_t sub_21C705D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C705DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C705E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C705E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C705EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C705EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C705F40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C705F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C705FD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7060A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7060F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7061C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7062A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7062E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C706378(uint64_t a1)
{
  if (!qword_27CDEF1A8)
  {
    type metadata accessor for PMGeneratedPasswordStore(255);
    sub_21C6F0700(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEF1A8);
    }
  }
}

void sub_21C70640C(uint64_t a1)
{
  if (!qword_27CDEC5C8)
  {
    type metadata accessor for PMGroupsStore(255);
    sub_21C7064A0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEC5C8);
    }
  }
}

uint64_t sub_21C7064A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7064E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C706578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7065C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C70664C()
{
  result = qword_27CDFA6F8;
  if (!qword_27CDFA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA6F8);
  }

  return result;
}

uint64_t sub_21C7066C0@<X0>(uint64_t *a1@<X8>)
{
  result = PMDependencyStore.lockPolicyEnforcer.getter();
  *a1 = result;
  return result;
}

void sub_21C7066EC()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch);
  if (v2)
  {
    v6 = v2;
    v3 = [v6 type];
    sub_21CB855C4();

    v4 = sub_21CB86244();

    if (v4 >= 3)
    {
    }

    else
    {
      v5 = *(v0 + v1);
      *(v0 + v1) = 0;

      sub_21CB81D04();
    }
  }
}

uint64_t PMDependencyStore.lockPolicyEnforcer.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    type metadata accessor for PMSecureWindowLockPolicyEnforcer(0);
    swift_allocObject();
    v1 = sub_21C706854();
    *(v2 + 64) = v1;
  }

  return v1;
}

uint64_t sub_21C706854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-v3];
  *(v0 + 16) = 0;
  v5 = OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__hasBeenAuthenticated;
  v14[15] = 0;
  sub_21CB81D74();
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__isAuthenticating;
  v14[14] = 0;
  sub_21CB81D74();
  v6(v0 + v7, v4, v1);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = 0;
  v8 = [objc_opt_self() mainBundle];
  LODWORD(v4) = [v8 safari_isPasswordsAppBundle];

  if (v4)
  {
    v9 = objc_opt_self();
    v10 = [v9 defaultCenter];
    [v10 addObserver:v0 selector:sel_appDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    v11 = [v9 defaultCenter];
    [v11 addObserver:v0 selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:0];

    v12 = [v9 defaultCenter];
    [v12 addObserver:v0 selector:sel_systemProtectionDidChange_ name:*MEMORY[0x277D76E68] object:0];
  }

  return v0;
}

unint64_t sub_21C706AA8()
{
  result = qword_27CDFAD10;
  if (!qword_27CDFAD10)
  {
    type metadata accessor for PMSecureWindowLockPolicyEnforcer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAD10);
  }

  return result;
}

uint64_t sub_21C706BE8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMDebugSettingsManager(0);
  result = sub_21CB81CF4();
  *a2 = result;
  return result;
}

uint64_t PMWindowGroupIdentifier.rawValue.getter()
{
  v1 = 0x44746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0x6174654469666977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t PMAppCommands.init(mainWindowGroupIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C6F0700(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  a3[2] = sub_21CB823C4();
  a3[3] = v6;
  v7 = type metadata accessor for PMAppCommands(0);
  type metadata accessor for PMWiFiDetailsModel(0);
  sub_21C6F0700(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB821F4();
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C6F0700(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB821F4();
  type metadata accessor for PMAppAccountsListModel(0);
  sub_21C6F0700(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB821F4();
  type metadata accessor for PMAppSecurityRecommendationsModel(0);
  sub_21C6F0700(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB821F4();
  v8 = v7[10];
  *(a3 + v8) = swift_getKeyPath(byte_21CBAB8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v9 = v7[11];
  *(a3 + v9) = swift_getKeyPath(byte_21CBAB8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v10 = v7[12];
  KeyPath = swift_getKeyPath(byte_21CBAB920);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v12 = (a3 + v10);
  sub_21CB86544();
  sub_21C704E4C(KeyPath, v32);

  type metadata accessor for PMSecureWindowLockPolicyEnforcer(0);
  sub_21C6F0700(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer, &protocol conformance descriptor for PMSecureWindowLockPolicyEnforcer);
  v13 = sub_21CB82674();
  v15 = v14;

  *v12 = v13;
  v12[1] = v15;
  v16 = (a3 + v7[13]);
  sub_21CB86544();
  sub_21C7072A8(v17, v32);

  type metadata accessor for PMAccountsState(0);
  sub_21C6F0700(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v18 = sub_21CB82674();
  v20 = v19;

  *v16 = v18;
  v16[1] = v20;
  v21 = (a3 + v7[14]);
  sub_21CB86544();
  sub_21C7073D0(v22, v32);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C6F0700(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v23 = sub_21CB82674();
  v25 = v24;

  *v21 = v23;
  v21[1] = v25;
  v26 = (a3 + v7[15]);
  sub_21CB86544();
  sub_21C7073E8(v27, v32);

  type metadata accessor for PMGroupsStore(0);
  sub_21C6F0700(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v28 = sub_21CB82674();
  v30 = v29;

  *v26 = v28;
  v26[1] = v30;
  *(a3 + v7[16]) = 1;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_21C707234@<X0>(uint64_t *a1@<X8>)
{
  result = PMDependencyStore.lockPolicyEnforcer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21C707260(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 64) = *a1;
}

uint64_t sub_21C7072C0(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBABA28);

  return sub_21CB81DC4();
}

uint64_t sub_21C707334@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  result = swift_unknownObjectRelease();
  *a2 = v7;
  return result;
}

uint64_t sub_21C70742C()
{

  sub_21CB81E94();

  return v1;
}

uint64_t type metadata accessor for PMPasswordManagerState(uint64_t a1)
{
  result = qword_27CDF77E0;
  if (!qword_27CDF77E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7074C8(uint64_t a1)
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDF77F0, &qword_27CDF7778, &qword_21CBC5CB0);
    if (v2 <= 0x3F)
    {
      sub_21C6EA5CC(319, &qword_27CDEDD48, &unk_27CDF20B0, &unk_21CBA0090);
      if (v3 <= 0x3F)
      {
        sub_21C6EA5CC(319, &qword_27CDF77F8, &qword_27CDF7798, &unk_21CBC5CB8);
        if (v4 <= 0x3F)
        {
          sub_21C6EA5CC(319, &qword_27CDEDD60, &qword_27CDEBED0, &unk_21CBA1A60);
          if (v5 <= 0x3F)
          {
            sub_21C6EA5CC(319, &qword_27CDF7800, &qword_27CDF30D0, &qword_21CBBDC70);
            if (v6 <= 0x3F)
            {
              sub_21C6EA5CC(319, &qword_27CDF7808, &qword_27CDF5470, &qword_21CBBDF88);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for PMSystemSettingsNavigationDestination(uint64_t a1)
{
  result = qword_27CDF9CA0;
  if (!qword_27CDF9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C7077E0(uint64_t a1)
{
  result = sub_21CB85C44();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PMRecentlyDeletedAccountsSource(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMRecentlyDeletedAccountsSource(uint64_t a1)
{
  result = qword_27CDF7D40;
  if (!qword_27CDF7D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C7078A8(uint64_t a1)
{
  v1 = sub_21CB85C44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_21C707930(uint64_t a1)
{
  sub_21CB80BE4();
  if (v1 <= 0x3F)
  {
    sub_21C7079B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C7079B4(uint64_t a1)
{
  if (!qword_27CDF5350)
  {
    sub_21CB80BE4();
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF5350);
    }
  }
}

unint64_t sub_21C707A5C()
{
  result = qword_27CDF7A98;
  if (!qword_27CDF7A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AA0, &qword_21CBC66C8);
    sub_21CAD21D0();
    sub_21C707D88(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A98);
  }

  return result;
}

unint64_t sub_21C707B18()
{
  result = qword_27CDF7A78;
  if (!qword_27CDF7A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A80, &unk_21CBC6628);
    sub_21C707BA4();
    sub_21C707BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A78);
  }

  return result;
}

unint64_t sub_21C707BA4()
{
  result = qword_27CDF7A88;
  if (!qword_27CDF7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A88);
  }

  return result;
}

unint64_t sub_21C707BF8()
{
  result = qword_27CDED1A8;
  if (!qword_27CDED1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED1B0, &unk_21CBA6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED1A8);
  }

  return result;
}

unint64_t sub_21C707C5C()
{
  result = qword_27CDF7A90;
  if (!qword_27CDF7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A90);
  }

  return result;
}

uint64_t sub_21C707CB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C707CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C707D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C707D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PMAccountsListScrollTestModel(uint64_t a1)
{
  result = qword_27CDED0F0;
  if (!qword_27CDED0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C707E20(uint64_t a1)
{
  sub_21C707EB0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21C707EB0()
{
  if (!qword_27CDED100)
  {
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDED100);
    }
  }
}

uint64_t type metadata accessor for PMAccountsView(uint64_t a1)
{
  result = qword_27CDEDA08;
  if (!qword_27CDEDA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C707F4C(uint64_t a1)
{
  if (!qword_27CDED058)
  {
    type metadata accessor for PMPasswordManagerState(255);
    sub_21C713460(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    v1 = sub_21CB82B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDED058);
    }
  }
}

void sub_21C708000(uint64_t a1)
{
  type metadata accessor for PMAccountsListModel.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDEAED0, &qword_27CDEAED8, &unk_21CBA0730);
    if (v2 <= 0x3F)
    {
      sub_21C7135A4();
      if (v3 <= 0x3F)
      {
        sub_21C70821C(319);
        if (v4 <= 0x3F)
        {
          sub_21C6EA5CC(319, &qword_27CDECD28, &qword_27CDECD30, &unk_21CBA5590);
          if (v5 <= 0x3F)
          {
            sub_21C6EA5CC(319, &qword_27CDEAEF0, &qword_27CDEAEF8, &unk_21CBA0740);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_21C70821C(uint64_t a1)
{
  if (!qword_27CDECD20)
  {
    sub_21CB85114();
    v1 = sub_21CB81DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDECD20);
    }
  }
}

void sub_21C708274(uint64_t a1)
{
  if (!qword_27CDEDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF20B0, &unk_21CBA0090);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEDA20);
    }
  }
}

void sub_21C7082D8(uint64_t a1)
{
  sub_21C6F0848(319);
  if (v1 <= 0x3F)
  {
    sub_21CB81114();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for PMAppAccountsList(uint64_t a1)
{
  result = qword_27CDEE7D0;
  if (!qword_27CDEE7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C708424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C708488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C7084EC(uint64_t a1)
{
  sub_21C708424(319, &qword_27CDEE7E0, type metadata accessor for PMAppAccountsListModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C708424(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21C708424(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21C70640C(319);
        if (v4 <= 0x3F)
        {
          sub_21C713384(319);
          if (v5 <= 0x3F)
          {
            sub_21C7086F8(319);
            if (v6 <= 0x3F)
            {
              sub_21C708424(319, &qword_27CDEE7E8, type metadata accessor for PMGlobalSearchModel, type metadata accessor for PMDependency);
              if (v7 <= 0x3F)
              {
                sub_21C708424(319, &qword_27CDEE7F0, type metadata accessor for PMGlobalAnimationNamespaceContainer, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
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
}

void sub_21C7086F8(uint64_t a1)
{
  if (!qword_27CDEC388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC390, &qword_21CBA40E0);
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEC388);
    }
  }
}

uint64_t type metadata accessor for PMAppRootNavigationView(uint64_t a1)
{
  result = qword_27CDEFFB0;
  if (!qword_27CDEFFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7087A8(uint64_t a1)
{
  sub_21C713780(319, &qword_27CDEFFC0, type metadata accessor for PMAppRootNavigationModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C713780(319, &qword_27CDEFFC8, MEMORY[0x277CDE408], MEMORY[0x277CDD800]);
    if (v2 <= 0x3F)
    {
      sub_21C708AC4(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21C713780(319, &qword_27CDEC5D8, type metadata accessor for PMDebugSettingsManager, type metadata accessor for PMDependency);
        if (v4 <= 0x3F)
        {
          sub_21C713780(319, &qword_27CDEACE8, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_21C708AC4(319, &qword_27CDEFFD0, &qword_27CDEFF98, &qword_21CBAE0B0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_21C713780(319, &qword_27CDEFFD8, type metadata accessor for PMCredentialExporter, type metadata accessor for PMDependency);
              if (v7 <= 0x3F)
              {
                sub_21C713780(319, &qword_27CDEFFE0, type metadata accessor for PMCredentialImporter, type metadata accessor for PMDependency);
                if (v8 <= 0x3F)
                {
                  sub_21C713780(319, &qword_27CDEE7E8, type metadata accessor for PMGlobalSearchModel, type metadata accessor for PMDependency);
                  if (v9 <= 0x3F)
                  {
                    sub_21C713780(319, &qword_27CDEE7F0, type metadata accessor for PMGlobalAnimationNamespaceContainer, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
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
    }
  }
}

void sub_21C708AC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_21C708B28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_21C708B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C708BE0(uint64_t a1)
{
  sub_21C708B8C(319, &qword_27CDF3130, MEMORY[0x277CBA840]);
  if (v1 <= 0x3F)
  {
    sub_21C708B8C(319, &qword_27CDF3138, type metadata accessor for PMCredentialExporter.DataToExportAfterAlert);
    if (v2 <= 0x3F)
    {
      sub_21CB81114();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_21C708D48(uint64_t a1)
{
  result = sub_21CB818C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PMCredentialImporter(uint64_t a1)
{
  result = qword_27CDF8B08;
  if (!qword_27CDF8B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C708E08(uint64_t a1)
{
  result = sub_21CB81114();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C708EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED128, &qword_21CBA63E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED120, &qword_21CBA63E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED118, &qword_21CBA63D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED110, &qword_21CBA63D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED108, &qword_21CBA63C8);
  sub_21C709084();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21C708FF8()
{
  result = qword_27CDED138;
  if (!qword_27CDED138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED140, &qword_21CBA63F0);
    sub_21C709108();
    sub_21C709508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED138);
  }

  return result;
}

unint64_t sub_21C709084()
{
  result = qword_27CDED130;
  if (!qword_27CDED130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED108, &qword_21CBA63C8);
    sub_21C708FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED130);
  }

  return result;
}

unint64_t sub_21C709108()
{
  result = qword_27CDED148;
  if (!qword_27CDED148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED150, &qword_21CBA63F8);
    sub_21C6EADEC(&qword_27CDED158, &qword_27CDED160, &qword_21CBA6400, MEMORY[0x277CE04B0]);
    sub_21C7091C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED148);
  }

  return result;
}

unint64_t sub_21C7091C0()
{
  result = qword_27CDED168;
  if (!qword_27CDED168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED170, &qword_21CBA6408);
    sub_21C7092A8(&qword_27CDED178, &qword_27CDED180, &qword_21CBA6410, sub_21C709358);
    sub_21C7094C0(&qword_27CDED1C8, type metadata accessor for PMScrollTestModifier, &unk_21CBC97C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED168);
  }

  return result;
}

uint64_t sub_21C7092A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C6EADEC(&qword_27CDECF60, &qword_27CDED1C0, &qword_21CBA5BF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C709358()
{
  result = qword_27CDED188;
  if (!qword_27CDED188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED190, &qword_21CBA6418);
    type metadata accessor for PMAccountsView(255);
    sub_21CB829D4();
    sub_21C7094C0(&qword_27CDED198, type metadata accessor for PMAccountsView, &protocol conformance descriptor for PMAccountsView);
    sub_21C7094C0(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED1A8, &unk_27CDED1B0, &unk_21CBA6420, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED188);
  }

  return result;
}

uint64_t sub_21C7094C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C709508()
{
  result = qword_27CDED1D0;
  if (!qword_27CDED1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1D8, &qword_21CBA6430);
    sub_21C6EADEC(&qword_27CDED1E0, &qword_27CDED1E8, &qword_21CBA6438, MEMORY[0x277CDDA18]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1F0, &qword_21CBA6440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1F8, &qword_21CBA6448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED200, &qword_21CBA6450);
    sub_21C709668();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED1D0);
  }

  return result;
}

unint64_t sub_21C709668()
{
  result = qword_27CDED208;
  if (!qword_27CDED208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED200, &qword_21CBA6450);
    sub_21C7094C0(&qword_27CDED210, type metadata accessor for PMAppRootNavigationView, &unk_21CBAE160);
    sub_21C6EADEC(&qword_27CDED1A8, &unk_27CDED1B0, &unk_21CBA6420, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED208);
  }

  return result;
}

id PMPasswordManagerState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7738, &qword_21CBC5C60);
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x28223BE20](v1);
  v79 = &v61 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7740, &qword_21CBC5C68);
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v61 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  MEMORY[0x28223BE20](v75);
  v74 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD78, &qword_21CBA89E8);
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v61 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7748, &qword_21CBC5C70);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v61 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD88, &qword_21CBA8A00);
  v85 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v83 = &v61 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v84);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7750, &unk_21CBC5C78);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v64 = v21;
  v22 = *(v21 - 8);
  *&v23 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v25 = &v61 - v24;
  v26 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__accountsState;
  *&v0[v26] = swift_getKeyPath(asc_21CBC5C88, v23);
  *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_subscriptions] = MEMORY[0x277D84FA0];
  v27 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__isGeneratedPasswordsLogPresented;
  LOBYTE(v87) = 0;
  sub_21CB81D74();
  v28 = *(v22 + 32);
  v65 = v22 + 32;
  v82 = v28;
  v28(&v0[v27], v25, v21);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__systemSettingNavigationPath;
  v87 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7778, &qword_21CBC5CB0);
  sub_21CB81D74();
  (*(v18 + 32))(&v0[v29], v20, v17);
  *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel] = 0;
  v30 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__sharingGroupIDToPresent;
  v31 = sub_21CB85C44();
  v63 = *(*(v31 - 8) + 56);
  v63(v16, 1, 1, v31);
  v62 = v13;
  sub_21C6EDBAC(v16, v13, &unk_27CDF20B0, &unk_21CBA0090);
  v32 = v83;
  sub_21CB81D74();
  sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  v33 = *(v85 + 32);
  v85 += 32;
  v34 = v66;
  v33(&v0[v30], v32, v66);
  v35 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__contextForPresentedNewGroupFlow;
  v87 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7798, &unk_21CBC5CB8);
  v36 = v67;
  sub_21CB81D74();
  (*(v68 + 32))(&v0[v35], v36, v69);
  v37 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__groupIDForRecentlyAcceptedInvitation;
  v63(v16, 1, 1, v31);
  sub_21C6EDBAC(v16, v62, &unk_27CDF20B0, &unk_21CBA0090);
  v38 = v83;
  sub_21CB81D74();
  sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  v33(&v0[v37], v38, v34);
  v39 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__isMembersOfDeletedGroupMightHaveAccessToAccountsAlertPresented;
  LOBYTE(v87) = 0;
  sub_21CB81D74();
  v40 = v64;
  v82(&v0[v39], v25, v64);
  v41 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__groupMemberNamesOfDeletedGroup;
  v87 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  v42 = v70;
  sub_21CB81D74();
  v43 = *(v71 + 32);
  v44 = v42;
  v45 = v42;
  v46 = v72;
  v43(&v0[v41], v44, v72);
  v47 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__isMembersOfGroupUserLeftMightHaveAccessToAccountsAlertPresented;
  LOBYTE(v87) = 0;
  sub_21CB81D74();
  v82(&v0[v47], v25, v40);
  v48 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__groupMemberNamesOfGroupTheyLeft;
  v49 = MEMORY[0x277D84F90];
  v87 = MEMORY[0x277D84F90];
  sub_21CB81D74();
  v43(&v0[v48], v45, v46);
  v50 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__inboundOTPAuthURLContext;
  v51 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v52 = v73;
  (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
  sub_21C6EDBAC(v52, v74, &qword_27CDF30D0, &qword_21CBBDC70);
  v53 = v76;
  sub_21CB81D74();
  sub_21C6EA794(v52, &qword_27CDF30D0, &qword_21CBBDC70);
  (*(v77 + 32))(&v0[v50], v53, v78);
  v54 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__inboundSharableAccountContext;
  v87 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5470, &qword_21CBBDF88);
  v55 = v79;
  sub_21CB81D74();
  (*(v80 + 32))(&v0[v54], v55, v81);
  v56 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController;
  type metadata accessor for PMAccountDetailsSheetController(0);
  v57 = swift_allocObject();
  v87 = 0;
  v88 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB81D74();
  *&v0[v56] = v57;
  *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_additionalAccountDetailsSheetControllers] = v49;
  v58 = type metadata accessor for PMPasswordManagerState(0);
  v86.receiver = v0;
  v86.super_class = v58;
  v59 = objc_msgSendSuper2(&v86, sel_init);
  sub_21C70A510();

  return v59;
}

uint64_t sub_21C70A1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21CB80BE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C70A2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB80BE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t type metadata accessor for PMAccountDetailsSheetController(uint64_t a1)
{
  result = qword_27CDEB410;
  if (!qword_27CDEB410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70A41C(uint64_t a1)
{
  sub_21C70A4AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21C70A4AC(uint64_t a1)
{
  if (!qword_27CDEAF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    v1 = sub_21CB81DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEAF00);
    }
  }
}

uint64_t sub_21C70A510()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__accountsState;
  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v5 = sub_21C7072A8(v3, v11);

  v6 = *(v5 + 32);

  v12 = v6;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  sub_21C70A864(&qword_27CDEAF88, &qword_27CDEAF80, &unk_21CBA0A30);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v7 = *(v1 + v2);

  sub_21CB86544();
  sub_21C7072A8(v7, v12);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21CACBAD4;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C70A864(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

uint64_t sub_21C70A7F4()
{
  MEMORY[0x21CF16E70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C70A82C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C70A864(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t PMExtensionCoordinator.init(appState:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_21C70A8F0()
{

  sub_21CB81E94();
}

uint64_t getEnumTagSinglePayload for PMSortOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t PMPasswordsPaneView.init(appState:style:)@<X0>(char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C707D88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  result = sub_21CB82674();
  *(a3 + 8) = result;
  *(a3 + 16) = v6;
  *a3 = v4;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21C70AA6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMPasswordManagerState(0);
  result = sub_21CB81CF4();
  *a2 = result;
  return result;
}

uint64_t sub_21C70AAAC(uint64_t *a1, unsigned int a2)
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

uint64_t PMPasswordsPaneView.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C707D88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v2 = v1;
  sub_21CB81CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A68, &qword_21CBC6620);
  sub_21CAD21D0();
  sub_21CB845C4();

  return sub_21C70AC30(sub_21C70AC38, 0);
}

uint64_t sub_21C70AC38()
{
  type metadata accessor for PMAccountsListScrollTestModel(0);
  v0 = swift_allocObject();
  sub_21CB81D74();
  return v0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21C70ACAC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_21CB81CF4();
  *a2 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI29PMAccountsListScrollTestModel33_05895019A422AE69CA35C95F8231EA7CLLC5StateO(void *a1)
{
  v1 = a1[1] >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21C70AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v68 = a5;
  v73 = sub_21CB820E4();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED108, &qword_21CBA63C8);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED110, &qword_21CBA63D0);
  v16 = *(v15 - 8);
  v60 = v15;
  v61 = v16;
  MEMORY[0x28223BE20](v15);
  v59 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED118, &qword_21CBA63D8);
  v19 = *(v18 - 8);
  v62 = v18;
  v63 = v19;
  MEMORY[0x28223BE20](v18);
  v74 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED120, &qword_21CBA63E0);
  v22 = *(v21 - 8);
  v64 = v21;
  v65 = v22;
  MEMORY[0x28223BE20](v21);
  v76 = &v58 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED128, &qword_21CBA63E8);
  v25 = *(v24 - 8);
  v66 = v24;
  v67 = v25;
  MEMORY[0x28223BE20](v24);
  v75 = &v58 - v26;
  v27 = a4 & 1;
  sub_21C70B4E8(a2, a3, v27, a1, v14);
  sub_21CB820B4();
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  *(v28 + 32) = v27;
  sub_21C70C78C(a2, a3);
  v29 = sub_21C709084();
  sub_21CB84814();

  v30 = *(v9 + 8);
  v71 = v9 + 8;
  v58 = v30;
  v31 = v73;
  v30(v11, v73);
  sub_21C6EA794(v14, &qword_27CDED108, &qword_21CBA63C8);
  sub_21CB820B4();
  v32 = swift_allocObject();
  v69 = a2;
  v70 = a3;
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = v27;
  sub_21C70C78C(a2, a3);
  v77 = v12;
  v78 = v29;
  v72 = MEMORY[0x277CDEEA8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v59;
  v34 = v60;
  sub_21CB84814();

  v36 = v58;
  v58(v11, v31);
  v37 = v35;
  v38 = v34;
  (*(v61 + 8))(v37, v34);
  sub_21CB820B4();
  v39 = swift_allocObject();
  v40 = v69;
  v41 = v70;
  *(v39 + 16) = v69;
  *(v39 + 24) = v41;
  *(v39 + 32) = v27;
  sub_21C70C78C(v40, v41);
  v77 = v38;
  v78 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v62;
  v44 = v74;
  sub_21CB84814();

  v45 = v31;
  v36(v11, v31);
  v46 = v44;
  v47 = v43;
  (*(v63 + 8))(v46, v43);
  sub_21CB820B4();
  v48 = swift_allocObject();
  v49 = v69;
  v50 = v70;
  *(v48 + 16) = v69;
  *(v48 + 24) = v50;
  *(v48 + 32) = v27;
  sub_21C70C78C(v49, v50);
  v77 = v47;
  v78 = v42;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v76;
  v53 = v64;
  sub_21CB84814();

  v36(v11, v45);
  (*(v65 + 8))(v52, v53);
  sub_21CB820B4();
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  *(v54 + 24) = v50;
  *(v54 + 32) = v27;
  sub_21C70C78C(v49, v50);
  v77 = v53;
  v78 = v51;
  swift_getOpaqueTypeConformance2();
  v55 = v66;
  v56 = v75;
  sub_21CB84814();

  v36(v11, v73);
  return (*(v67 + 8))(v56, v55);
}

uint64_t sub_21C70B4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a4;
  v108 = a5;
  v103 = sub_21CB820E4();
  v89 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v87 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED200, &qword_21CBA6450);
  MEMORY[0x28223BE20](v102);
  v81 = &v76 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED1F8, &qword_21CBA6448);
  v83 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v76 - v10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED1F0, &qword_21CBA6440);
  v85 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v84 = &v76 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2B0, &qword_21CBA65C8);
  v90 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v88 = &v76 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2B8, &qword_21CBA65D0);
  MEMORY[0x28223BE20](v95);
  v97 = &v76 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED1D8, &qword_21CBA6430);
  MEMORY[0x28223BE20](v107);
  v100 = &v76 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED1E8, &qword_21CBA6438);
  v79 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v78 = &v76 - v15;
  v16 = sub_21CB829D4();
  v77 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMAccountsView(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED170, &qword_21CBA6408);
  MEMORY[0x28223BE20](v92);
  v23 = &v76 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2C0, &qword_21CBA65D8);
  MEMORY[0x28223BE20](v104);
  v106 = &v76 - v24;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2C8, &qword_21CBA65E0);
  MEMORY[0x28223BE20](v91);
  v26 = &v76 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED150, &qword_21CBA63F8);
  MEMORY[0x28223BE20](v105);
  v93 = (&v76 - v27);
  type metadata accessor for PMAccountsListScrollTestModel(0);
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel, &unk_21CBA6340);
  v82 = a3;
  v86 = a1;
  sub_21CB82134();
  swift_getKeyPath(aP_12);
  swift_getKeyPath(aP_13);
  sub_21CB81DB4();

  v29 = v109;
  v30 = v110;
  v31 = v110 >> 62;
  if ((v110 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v42 = v110 & 0x3FFFFFFFFFFFFFFFLL;

      v43 = v81;
      sub_21C724D00(v81);
      type metadata accessor for PMPasswordManagerState(0);
      sub_21C7094C0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
      v44 = sub_21CB81CE4();
      v45 = (v43 + *(v102 + 36));
      *v45 = v44;
      v45[1] = v29;
      v91 = v29;
      v46 = v87;
      sub_21CB820B4();
      v47 = swift_allocObject();
      v48 = v86;
      *(v47 + 16) = v86;
      *(v47 + 24) = a2;
      v49 = v82 & 1;
      *(v47 + 32) = v82 & 1;
      *(v47 + 40) = v42;

      sub_21C70C78C(v48, a2);
      v50 = sub_21C709668();
      sub_21CB84814();

      v93 = *(v89 + 8);
      v93(v46, v103);
      sub_21C6EA794(v43, &qword_27CDED200, &qword_21CBA6450);
      sub_21CB820B4();
      v51 = swift_allocObject();
      *(v51 + 16) = v48;
      *(v51 + 24) = a2;
      *(v51 + 32) = v49;
      v92 = v42;
      *(v51 + 40) = v42;

      sub_21C70C78C(v48, a2);
      v109 = v102;
      v110 = v50;
      v102 = MEMORY[0x277CDEEA8];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v53 = v84;
      v54 = v96;
      v55 = v94;
      sub_21CB84814();

      v93(v46, v103);
      (*(v83 + 8))(v55, v54);
      sub_21CB820B4();
      v56 = swift_allocObject();
      *(v56 + 16) = v48;
      *(v56 + 24) = a2;
      *(v56 + 32) = v49;
      *(v56 + 40) = v92;

      sub_21C70C78C(v48, a2);
      v109 = v54;
      v110 = OpaqueTypeConformance2;
      v57 = swift_getOpaqueTypeConformance2();
      v58 = v88;
      v59 = v99;
      sub_21CB84814();

      v93(v46, v103);
      (*(v85 + 8))(v53, v59);
      v60 = v90;
      v61 = v101;
      (*(v90 + 16))(v97, v58, v101);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDED1E0, &qword_27CDED1E8, &qword_21CBA6438, MEMORY[0x277CDDA18]);
      v109 = v59;
      v110 = v57;
      swift_getOpaqueTypeConformance2();
      v62 = v100;
      sub_21CB83494();
      sub_21C6EDBAC(v62, v106, &qword_27CDED1D8, &qword_21CBA6430);
      swift_storeEnumTagMultiPayload();
      sub_21C709108();
      sub_21C709508();
      sub_21CB83494();

      sub_21C6EA794(v62, &qword_27CDED1D8, &qword_21CBA6430);
      return (*(v60 + 8))(v58, v61);
    }

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED160, &qword_21CBA6400);
    (*(*(v74 - 8) + 16))(v26, v80, v74);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDED158, &qword_27CDED160, &qword_21CBA6400, MEMORY[0x277CE04B0]);
    sub_21C7091C0();
    v75 = v93;
    sub_21CB83494();
    v38 = &qword_21CBA63F8;
    sub_21C6EDBAC(v75, v106, &qword_27CDED150, &qword_21CBA63F8);
    swift_storeEnumTagMultiPayload();
    sub_21C709108();
    sub_21C709508();
    sub_21CB83494();
    v40 = v75;
    v41 = &qword_27CDED150;
  }

  else
  {
    if (v31)
    {
      MEMORY[0x28223BE20](v28);
      *(&v76 - 2) = v30 & 0x3FFFFFFFFFFFFFFFLL;
      *(&v76 - 1) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2D8, &qword_21CBA65E8);
      v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED2E0, &qword_21CBA65F0);
      v65 = sub_21CB826C4();
      v66 = sub_21C7092A8(&qword_27CDED2E8, &qword_27CDED2E0, &qword_21CBA65F0, sub_21C82A3E0);
      v109 = v64;
      v110 = v65;
      v111 = v66;
      v112 = MEMORY[0x277CDD980];
      swift_getOpaqueTypeConformance2();
      v67 = v78;
      sub_21CB82924();
      v68 = v79;
      v69 = v98;
      (*(v79 + 16))(v97, v67, v98);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDED1E0, &qword_27CDED1E8, &qword_21CBA6438, MEMORY[0x277CDDA18]);
      v70 = sub_21C709668();
      v109 = v102;
      v110 = v70;
      v71 = swift_getOpaqueTypeConformance2();
      v109 = v96;
      v110 = v71;
      v72 = swift_getOpaqueTypeConformance2();
      v109 = v99;
      v110 = v72;
      swift_getOpaqueTypeConformance2();
      v73 = v100;
      sub_21CB83494();
      sub_21C6EDBAC(v73, v106, &qword_27CDED1D8, &qword_21CBA6430);
      swift_storeEnumTagMultiPayload();
      sub_21C709108();
      sub_21C709508();
      sub_21CB83494();

      sub_21C6EA794(v73, &qword_27CDED1D8, &qword_21CBA6430);
      return (*(v68 + 8))(v67, v69);
    }

    PMAccountsView.init()(v21);
    sub_21CB85294();
    sub_21C7094C0(&qword_27CDED198, type metadata accessor for PMAccountsView, &protocol conformance descriptor for PMAccountsView);
    sub_21C7094C0(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    sub_21CB849C4();
    (*(v77 + 8))(v18, v16);
    sub_21C82A9A0(v21, type metadata accessor for PMAccountsView);
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C7094C0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    v32 = sub_21CB81CE4();
    v33 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED190, &qword_21CBA6418) + 36)];
    *v33 = v32;
    v33[1] = v29;
    v34 = v29;
    v35 = sub_21CACB1D0();
    type metadata accessor for PMAccountsListModel(0);
    sub_21C7094C0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    v36 = sub_21CB81CE4();
    v37 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED180, &qword_21CBA6410) + 36)];
    *v37 = v36;
    v37[1] = v35;
    sub_21CB820B4();
    v38 = &qword_21CBA6408;
    sub_21C6EDBAC(v23, v26, &qword_27CDED170, &qword_21CBA6408);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED160, &qword_21CBA6400);
    sub_21C6EADEC(&qword_27CDED158, &qword_27CDED160, &qword_21CBA6400, MEMORY[0x277CE04B0]);
    sub_21C7091C0();
    v39 = v93;
    sub_21CB83494();
    sub_21C6EDBAC(v39, v106, &qword_27CDED150, &qword_21CBA63F8);
    swift_storeEnumTagMultiPayload();
    sub_21C709108();
    sub_21C709508();
    sub_21CB83494();
    sub_21C82A4C8(v29, v30);
    sub_21C6EA794(v39, &qword_27CDED150, &qword_21CBA63F8);
    v40 = v23;
    v41 = &qword_27CDED170;
  }

  return sub_21C6EA794(v40, v41, v38);
}

void sub_21C70C7D4(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_21C70CA1C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_21C70CA1C(v3[2], v3[1]);
    sub_21CB82FA4();
    sub_21C70CB88(v6);
  }

  else
  {
    sub_21CB82FA4();
  }

  sub_21C70CB88(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

unint64_t sub_21C70C8A4()
{
  result = qword_27CDEF9D0;
  if (!qword_27CDEF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF9D0);
  }

  return result;
}

uint64_t sub_21C70C8F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CDEA438 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v3 = __swift_project_value_buffer(v2, qword_27CE18668);

  return sub_21C70CA1C(v3, a1);
}

uint64_t sub_21C70C97C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  __swift_allocate_value_buffer(v0, qword_27CE18668);
  v1 = __swift_project_value_buffer(v0, qword_27CE18668);
  v2 = sub_21CB83834();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_21C70CA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C70CA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_21C6EDBAC(a1, &v9 - v6, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v7, v4, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C70C8A4();
  sub_21CB82FA4();
  return sub_21C70CB88(v7);
}

uint64_t sub_21C70CB88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C70CC08()
{
  result = qword_27CDED660;
  if (!qword_27CDED660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED660);
  }

  return result;
}

uint64_t sub_21C70CCBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = sub_21C70E3B0;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 17) = v3;
  return result;
}

uint64_t type metadata accessor for PMAppRootView(uint64_t a1)
{
  result = qword_27CDEACB8;
  if (!qword_27CDEACB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70CDB8(uint64_t a1)
{
  sub_21C70CF54(319, &qword_27CDEACC8, type metadata accessor for PMAppRootModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C70CF54(319, &qword_27CDEACD0, type metadata accessor for PMNotificationManager, type metadata accessor for PMDependency);
    if (v2 <= 0x3F)
    {
      sub_21C70D294(319);
      if (v3 <= 0x3F)
      {
        sub_21C70CF54(319, &qword_27CDEACE8, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_21C70D328(319);
          if (v5 <= 0x3F)
          {
            sub_21C705B34(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21C70CF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C70CFD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70D02C(uint64_t a1)
{
  sub_21C70CFD8(319, &qword_27CDEABB8, type metadata accessor for PMAppRootModel.StagedAccount);
  if (v1 <= 0x3F)
  {
    sub_21C70CFD8(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
    if (v2 <= 0x3F)
    {
      sub_21CB81114();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C70D1B4(uint64_t a1)
{
  sub_21C70D234();
  if (v1 <= 0x3F)
  {
    sub_21CB85CA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21C70D234()
{
  if (!qword_27CDEABD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDEABD8);
    }
  }
}

void sub_21C70D294(uint64_t a1)
{
  if (!qword_27CDEACD8)
  {
    type metadata accessor for PMSceneDelegate();
    sub_21C705CB4(&qword_27CDEACE0, type metadata accessor for PMSceneDelegate, &protocol conformance descriptor for PMSceneDelegate);
    v1 = sub_21CB82B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEACD8);
    }
  }
}

void sub_21C70D328(uint64_t a1)
{
  if (!qword_27CDEACF0)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEACF8, &unk_21CBC1FB0);
    v5 = type metadata accessor for PMDependency(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CDEACF0);
    }
  }
}

uint64_t type metadata accessor for PMPasswordOptionsView(uint64_t a1)
{
  result = qword_27CDF7960;
  if (!qword_27CDF7960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70D3D8(uint64_t a1)
{
  sub_21C70D554(319);
  if (v1 <= 0x3F)
  {
    sub_21C70D724(319);
    if (v2 <= 0x3F)
    {
      sub_21C70D950(319);
      if (v3 <= 0x3F)
      {
        sub_21C70D9C4(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
        if (v4 <= 0x3F)
        {
          sub_21C70DB78(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_21C70D9C4(319, &qword_27CDEBD50, MEMORY[0x277CDF708]);
            if (v6 <= 0x3F)
            {
              sub_21C70DB78(319, &qword_27CDEB588, MEMORY[0x277D839B0], MEMORY[0x277CDD630]);
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

void sub_21C70D554(uint64_t a1)
{
  if (!qword_27CDF7870)
  {
    type metadata accessor for PMPasswordOptionsViewModel(255);
    sub_21C70D6DC(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel, &unk_21CBC6498);
    v1 = sub_21CB82154();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF7870);
    }
  }
}

uint64_t type metadata accessor for PMPasswordOptionsViewModel(uint64_t a1)
{
  result = qword_27CDF79D0;
  if (!qword_27CDF79D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70D634(uint64_t a1)
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21C70D6DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C70D724(uint64_t a1)
{
  if (!qword_27CDF7878)
  {
    type metadata accessor for PMOTPAuthHandlerManager(255);
    sub_21C70D6DC(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
    v1 = sub_21CB82154();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF7878);
    }
  }
}

uint64_t type metadata accessor for PMOTPAuthHandlerManager(uint64_t a1)
{
  result = qword_27CDF71A8;
  if (!qword_27CDF71A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70D804(uint64_t a1)
{
  sub_21C6EA5CC(319, &qword_27CDF71B8, &qword_27CDF6070, &unk_21CBC00B8);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDF71C0, &qword_27CDF71C8, &qword_21CBC4420);
    if (v2 <= 0x3F)
    {
      sub_21C7135A4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C70D950(uint64_t a1)
{
  if (!qword_27CDF7880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECDA8, &qword_21CBA5910);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF7880);
    }
  }
}

void sub_21C70D9C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70DA18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C70DA7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70DAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70DB24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70DB78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for PMSafariSettingsBreadcrumbs(uint64_t a1)
{
  result = qword_27CDEB578;
  if (!qword_27CDEB578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70DC14(uint64_t a1)
{
  sub_21C70DC98(319);
  if (v1 <= 0x3F)
  {
    sub_21C70DCF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C70DC98(uint64_t a1)
{
  if (!qword_27CDEBD50)
  {
    sub_21CB82484();
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEBD50);
    }
  }
}

void sub_21C70DCF0()
{
  if (!qword_27CDEB588)
  {
    v0 = sub_21CB81EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB588);
    }
  }
}

unint64_t sub_21C70DD60()
{
  result = qword_27CDED5A0;
  if (!qword_27CDED5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED540, &qword_21CBA6EB8);
    sub_21C70DE6C();
    sub_21C6EADEC(&qword_27CDED5C8, qword_27CDED5D0, &unk_21CBA6FD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED5A0);
  }

  return result;
}

unint64_t sub_21C70DE6C()
{
  result = qword_27CDED5A8;
  if (!qword_27CDED5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED5B0, &qword_21CBA6FC0);
    sub_21C70DEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED5A8);
  }

  return result;
}

unint64_t sub_21C70DEF0()
{
  result = qword_27CDED5B8;
  if (!qword_27CDED5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED5C0, &qword_21CBA6FC8);
    sub_21C70DF7C();
    sub_21C70E0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED5B8);
  }

  return result;
}

unint64_t sub_21C70DF7C()
{
  result = qword_27CDED580;
  if (!qword_27CDED580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED568, &qword_21CBA6EE0);
    sub_21C70E038();
    sub_21C70E08C(&qword_27CDED590, type metadata accessor for PMAppRootView, &unk_21CBA0380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED580);
  }

  return result;
}

unint64_t sub_21C70E038()
{
  result = qword_27CDED588;
  if (!qword_27CDED588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED588);
  }

  return result;
}

uint64_t sub_21C70E08C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C70E0D4()
{
  result = qword_27CDED598;
  if (!qword_27CDED598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED550, &qword_21CBA6EC8);
    sub_21C70E08C(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView, &unk_21CBC6310);
    sub_21C70E08C(&qword_27CDED578, type metadata accessor for PMSafariSettingsBreadcrumbs, &unk_21CBA211C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED598);
  }

  return result;
}

uint64_t sub_21C70E1CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0073676E697474;
  v3 = 0x65536D6574737973;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64726F7773736170;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 2)
    {
      v6 = 0xEF736E6F6974704FLL;
    }

    else
    {
      v6 = 0x800000021CB89F60;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 7368801;
    }

    else
    {
      v5 = 0x65536D6574737973;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEE0073676E697474;
    }
  }

  v7 = 0x64726F7773736170;
  v8 = 0x800000021CB89F60;
  if (a2 == 2)
  {
    v8 = 0xEF736E6F6974704FLL;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 7368801;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21CB86344();
  }

  return v11 & 1;
}

uint64_t sub_21C70E320(unsigned __int8 a1)
{
  type metadata accessor for PMAccountsNavigationContainerModel();
  result = swift_allocObject();
  *(result + 16) = a1;
  if (a1 > 1u)
  {
    v3 = 1;
    if (a1 != 2)
    {
      v3 = 2;
    }
  }

  else if (a1)
  {
    v4 = result;
    type metadata accessor for PMAppRootModel(0);
    swift_allocObject();
    v3 = sub_21C70E3B8();
    result = v4;
  }

  else
  {
    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_21C70E3B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  type metadata accessor for PMAppRootNavigationModel(0);
  swift_allocObject();
  *(v0 + 16) = sub_21C70EA40();
  type metadata accessor for PMInboundOTPAuthURLModel(0);
  v5 = swift_allocObject();
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABE0, &qword_21CB9FE10);
  sub_21CB81D74();
  *(v1 + 24) = v5;
  type metadata accessor for PMHandleInboundTOTPMigrationURLModel(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_21CB81104();
  v7 = MEMORY[0x277D84FA0];
  *(v1 + 32) = v6;
  *(v1 + 40) = 0;
  *(v1 + 48) = v7;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v8 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__stagedAccount;
  v9 = type metadata accessor for PMAppRootModel.StagedAccount(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState;
  *(v1 + v10) = swift_getKeyPath(byte_21CB9FE18);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore;
  *(v1 + v11) = swift_getKeyPath(byte_21CB9FE40);
  v12 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__appDefaults;
  *(v1 + v12) = swift_getKeyPath(byte_21CB9FE60);
  v13 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__globalSearchModel;
  *(v1 + v13) = swift_getKeyPath(byte_21CB9FE80);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__didShowAppOnboardingView) = 0;
  v15 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
  v16 = sub_21CB85C44();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  sub_21CB81104();
  v17 = *(v1 + v12);
  v18 = qword_27CDEA4C0;

  if (v18 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v19 = sub_21C710778(v17, v31);

  v20 = [v19 BOOLForKey:*MEMORY[0x277D49CD0] withDefault:1];

  if (v20 == *(v1 + v14))
  {
    *(v1 + v14) = v20;
    sub_21C71AB9C();
  }

  else
  {
    KeyPath = swift_getKeyPath(aH_26);
    MEMORY[0x28223BE20](KeyPath);
    *(&v30 - 2) = v1;
    *(&v30 - 8) = v20;
    v31 = v1;
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }

  v22 = sub_21CB858E4();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  sub_21CB858B4();

  v23 = sub_21CB858A4();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v1;
  sub_21C98B308(0, 0, v4, &unk_21CB9FED8, v24);

  sub_21C71AD2C();
  sub_21C71BCA4();
  v26 = *(v1 + 16);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_getKeyPath(a8_5);
  MEMORY[0x28223BE20](v28);
  *(&v30 - 4) = v26;
  *(&v30 - 3) = sub_21C7A211C;
  *(&v30 - 2) = v27;
  v31 = v26;
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);

  sub_21CB810C4();

  return v1;
}

uint64_t sub_21C70E960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C95C674();
  *a1 = result;
  return result;
}

uint64_t sub_21C70E98C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 152) = *a1;
}

uint64_t sub_21C70EA00()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C70EA40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE98, &qword_21CBADC50);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - v3;
  v5 = type metadata accessor for PMAppSourceListModel.Action(0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[4] = MEMORY[0x277D84FA0];
  v32 = v0 + 4;
  v0[2] = 0;
  v0[3] = 0;
  v0[5] = swift_getKeyPath(byte_21CBADC58, v6);
  v0[6] = swift_getKeyPath(byte_21CBADC80);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__safariViewControllerURL;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) = 0xC000000000000000;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = 0x8000000000000000;
  v11 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation;
  v12 = sub_21CB85C44();
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel) = 0;
  v13 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  v14 = type metadata accessor for PMAccount(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow) = 1;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showExportErrorDialog) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__importModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___allViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___passkeysViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___recentlyDeletedViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___securityRecommendationsViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___verificationCodesViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels) = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentStateIsEditing) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__didShowUncommittedChangesAlert) = 0;
  sub_21CB81104();
  type metadata accessor for PMAppSourceListModel(0);
  swift_allocObject();
  v0[8] = sub_21C70F848();
  sub_21C7161A0();
  v15 = v0[8];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = (v15 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction);
  *v17 = sub_21C8D79A4;
  v17[1] = v16;

  swift_retain_n();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  v19 = *(v18 + 48);
  v20 = type metadata accessor for PMAppSourceListModel.Source(0);
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  swift_getKeyPath(byte_21CBAD718);
  v34 = v15;
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v21 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C6EDBAC(v15 + v21, &v8[v19], &qword_27CDEAC20, &qword_21CBAD710);
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_21C716620(v8, v16);

  sub_21C7192A0(v8, type metadata accessor for PMAppSourceListModel.Action);

  v22 = *(v1 + 64);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = (v22 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);
  *v24 = sub_21C8D79AC;
  v24[1] = v23;

  swift_retain_n();

  sub_21C719A20();

  v25 = *(v1 + 48);
  v26 = qword_27CDEA4C0;

  if (v26 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v25, v33);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA8, &qword_21CBADCD0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();

  sub_21C6EADEC(&qword_27CDEFEB0, &qword_27CDEFE98, &qword_21CBADC50, MEMORY[0x277CBCEC8]);
  v27 = v31;
  sub_21CB81E04();

  (*(v30 + 8))(v4, v27);
  v33 = v1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v33 = v1;
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v33 = v1;
  sub_21CB810E4();

  return v1;
}

uint64_t sub_21C70F2CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21C70F360(uint64_t a1)
{
  if (!qword_27CDF1328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAC20, &qword_21CBAD710);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDF1328);
    }
  }
}

uint64_t sub_21C70F3D4(uint64_t a1)
{
  sub_21C70F360(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_21C70F44C(uint64_t a1)
{
  result = sub_21CB85C44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_21C70F4AC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_21C70F6D4(uint64_t a1)
{
  if (!qword_27CDF1310)
  {
    type metadata accessor for PMAppSourceListModel.Source(255);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF1310);
    }
  }
}

void sub_21C70F72C(uint64_t a1)
{
  sub_21C70F6D4(319);
  if (v1 <= 0x3F)
  {
    sub_21CB81114();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21C70F848()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 512;
  *(v0 + 18) = 0;
  v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  v6 = type metadata accessor for PMAppSourceListModel.Source(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  type metadata accessor for PMAppAccountsSearchListModel(0);
  swift_allocObject();
  sub_21CB81104();
  v7 = sub_21CB85C44();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 4, v7);
  v9 = sub_21C70FDD0(v4);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel) = v9;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchFieldIsPresented) = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchFieldIsFocused) = 0;
  v11 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction);
  *v11 = nullsub_1;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);
  *v12 = nullsub_1;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__accountsState;
  *(v1 + v13) = swift_getKeyPath(byte_21CBB0E88);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__groupsStore;
  *(v1 + v14) = swift_getKeyPath(byte_21CBB0EB0);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow) = 1;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel) = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__showExportError) = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__groupsSectionIsExpanded) = 1;
  sub_21CB81104();
  swift_allocObject();
  sub_21CB81104();
  v8(v4, 1, 4, v7);
  v15 = sub_21C70FDD0(v4);
  sub_21C712BE8(v15);
  swift_getKeyPath(byte_21CBB0E38);
  v28 = v1;
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v16 = *(v1 + v10);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = (v16 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  *v18 = sub_21C919EC4;
  v18[1] = v17;

  swift_retain_n();

  swift_getKeyPath(byte_21CBB0E60);
  v28 = v16;
  sub_21C712D24(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v20 = sub_21C713194(v19);
  if (!v21)
  {

LABEL_6:

    goto LABEL_7;
  }

  v22 = v21;
  v23 = v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_6;
  }

  v25 = *(Strong + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);

  v25(v23, v22);

LABEL_7:

  return v1;
}

uint64_t sub_21C70FCE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C70FD40(uint64_t a1)
{
  result = sub_21CB81114();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C70FDD0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80E24();
  v7 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__groupIDForInvitationAcceptanceFlow;
  v8 = sub_21CB85C44();
  v9 = *(*(v8 - 8) + 56);
  v9(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isEditSheetPresented) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isMoveAccountsSheetPresented) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isGeneratedPasswordsSheetPresented) = 0;
  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  v11 = *MEMORY[0x277CDF0D8];
  v12 = sub_21CB85114();
  (*(*(v12 - 8) + 104))(v2 + v10, v11, v12);
  v13 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  *v13 = nullsub_1;
  v13[1] = 0;
  v14 = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__subscriptions) = MEMORY[0x277D84FA0];
  v15 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState;
  *(v2 + v15) = swift_getKeyPath(byte_21CBAB3F0);
  v16 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults;
  *(v2 + v16) = swift_getKeyPath(byte_21CBAB418);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__autoFillQuirksManager;
  *(v2 + v17) = swift_getKeyPath(byte_21CBAB438);
  v18 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__globalSearchModel;
  v19 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts) = v19;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccounts) = v19;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccountsSortOrder) = 0;
  v20 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedSections) = v19;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedSections) = v19;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs) = v14;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__deleteAccountsAlertConfiguration) = sub_21CB12414(v19);
  v22 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  *v22 = 0;
  v22[1] = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportError) = 0;
  v23 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  *v23 = 0;
  v23[1] = 0;
  sub_21CB81104();
  sub_21C7106A8(a1, v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, type metadata accessor for PMAppAccountsListModel.Configuration);
  v9(v6, 4, 4, v8);
  LOBYTE(v8) = sub_21C71382C(a1, v6);
  sub_21C7126DC(v6, type metadata accessor for PMAppAccountsListModel.Configuration);
  if (v8)
  {
    if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption))
    {
      MEMORY[0x28223BE20](KeyPath);
      *(&v44 - 2) = v2;
      *(&v44 - 8) = 0;
      v45 = v2;
      sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
      sub_21CB810C4();
    }

    else
    {
      sub_21C713C74(0);
    }

    v41 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder;
    if (sub_21CB80FD4())
    {
      v39 = *(v2 + v41);
      *(v2 + v41) = 0;
      goto LABEL_18;
    }

    MEMORY[0x28223BE20](v42);
    *(&v44 - 2) = v2;
    *(&v44 - 8) = 0;
    v45 = v2;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
LABEL_20:
    sub_21CB810C4();

    goto LABEL_21;
  }

  v25 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults;
  v26 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults);
  v27 = qword_27CDEA4C0;

  if (v27 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v28 = sub_21C710778(v26, v45);

  v29 = sub_21CB85584();
  v30 = [v28 integerForKey_];

  v31 = sub_21C713C64(v30);
  if (v31 == 4)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) == v32)
  {
    sub_21C713C74(v32);
  }

  else
  {
    MEMORY[0x28223BE20](v33);
    *(&v44 - 2) = v2;
    *(&v44 - 8) = v32;
    v45 = v2;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810C4();
  }

  v34 = *(v2 + v25);

  sub_21CB86544();
  v35 = sub_21C710778(v34, v45);

  v36 = sub_21CB85584();
  LOBYTE(v34) = [v35 BOOLForKey:v36 withDefault:1];

  v37 = v34 ^ 1;
  v38 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder;
  if ((sub_21CB80FD4() & 1) == 0)
  {
    MEMORY[0x28223BE20](v40);
    *(&v44 - 2) = v2;
    *(&v44 - 8) = v37;
    v45 = v2;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    goto LABEL_20;
  }

  v39 = *(v2 + v38);
  *(v2 + v38) = v37;
LABEL_18:
  sub_21C710898(v39);
LABEL_21:
  sub_21C713E80();
  sub_21C712904();
  sub_21C7126DC(a1, type metadata accessor for PMAppAccountsListModel.Configuration);
  return v2;
}

uint64_t sub_21C7106A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C710710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C71078C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (!*(a2 + 16) || (v7 = sub_21CB10910(a1), (v8 & 1) == 0) || (sub_21C7A3394(*(a2 + 56) + 32 * v7, v10), sub_21C6E8F4C(0, a3, a4), (swift_dynamicCast() & 1) == 0) || (result = v11) == 0)
  {
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v11 = qword_27CE184E8;

    swift_getAtKeyPath();

    return v10[0];
  }

  return result;
}

uint64_t sub_21C710898(char a1)
{
  v8 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  result = sub_21CB80FD4();
  if ((result & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults);
    v4 = qword_27CDEA4C0;

    if (v4 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v5 = sub_21C710778(v3, v8);

    sub_21CB810D4();

    v6 = sub_21CB80FD4();
    v7 = sub_21CB85584();
    [v5 setBool:v6 & 1 forKey:v7];

    return sub_21C710AE8(1);
  }

  return result;
}

uint64_t sub_21C710A84(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21C714B64(v3);
  }

  return result;
}

uint64_t sub_21C710AE8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount(0);
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v65 = &v48 - v9;
  v10 = &qword_27CDEE000;
  if (a1)
  {
    v53 = 0;
  }

  else
  {
    swift_getKeyPath(byte_21CBAB600, v8);
    v67 = v1;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810D4();

    v12 = sub_21C71141C(v11);

    sub_21C711738(v12);
    swift_getKeyPath(byte_21CBAB628);
    v67 = v2;
    sub_21CB810D4();

    v13 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccounts;
    swift_beginAccess();
    v14 = *(v2 + v13);
    v66 = v2;

    sub_21CB810D4();

    if ((*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) & 0xFE) == 2)
    {
      v15 = sub_21C882728();
    }

    else
    {
      v15 = sub_21C7117B4(v14);
    }

    v16 = v15;

    KeyPath = swift_getKeyPath(byte_21CBAB650);
    MEMORY[0x28223BE20](KeyPath);
    *(&v48 - 2) = v2;
    *(&v48 - 1) = v16;
    v66 = v2;
    sub_21CB810C4();

    v10 = &qword_27CDEE000;
    v18 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccountsSortOrder;
    if (sub_21CB80FD4())
    {
      v53 = 0;
      *(v2 + v18) = 0;
    }

    else
    {
      v19 = swift_getKeyPath(byte_21CBAB678);
      MEMORY[0x28223BE20](v19);
      *(&v48 - 2) = v2;
      *(&v48 - 8) = 0;
      v66 = v2;
      sub_21CB810C4();
      v53 = 0;
    }
  }

  v20 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
  v66 = v2;
  v21 = sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v52 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder;
  swift_getKeyPath(byte_21CBAB678);
  v66 = v2;
  sub_21CB810D4();

  v22 = v10[474];
  if (sub_21CB80FD4())
  {
    return sub_21C715E9C();
  }

  v50 = v22;
  swift_getKeyPath(byte_21CBAB628);
  v66 = v2;
  sub_21CB810D4();

  v66 = v2;
  swift_getKeyPath(byte_21CBAB628);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21C885160();
  swift_endAccess();
  v66 = v2;
  swift_getKeyPath(byte_21CBAB628);
  sub_21CB810E4();

  swift_getKeyPath(byte_21CBAB650);
  v66 = v2;
  v51 = v20;
  sub_21CB810D4();

  v23 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedSections);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
LABEL_29:
    v44 = swift_getKeyPath(byte_21CBAB650);
    MEMORY[0x28223BE20](v44);
    *(&v48 - 2) = v2;
    *(&v48 - 1) = v25;
    v66 = v2;
    sub_21CB810C4();

    v66 = v2;
    sub_21CB810D4();

    v45 = *(v2 + v52);
    v46 = v50;
    if (sub_21CB80FD4())
    {
      *(v2 + v46) = v45;
    }

    else
    {
      v47 = swift_getKeyPath(byte_21CBAB678);
      MEMORY[0x28223BE20](v47);
      *(&v48 - 2) = v2;
      *(&v48 - 8) = v45;
      v66 = v2;
      sub_21CB810C4();
    }

    return sub_21C715E9C();
  }

  v49 = v2;
  v66 = MEMORY[0x277D84F90];

  result = sub_21C7125C8(0, v24, 0);
  v27 = 0;
  v28 = *(v23 + 16);
  v25 = v66;
  v57 = v23 + 32;
  v58 = v28;
  v29 = v28;
  v55 = v23;
  v56 = v21;
  v54 = v24;
  while (1)
  {
    if (v27 == v58)
    {
      goto LABEL_36;
    }

    v30 = v29 - 1;
    if (v30 >= *(v23 + 16))
    {
      break;
    }

    v62 = v27;
    v63 = v25;
    v31 = (v57 + 24 * v30);
    v32 = v31[1];
    v59 = *v31;
    v33 = v31[2];
    v34 = v33[2];
    v60 = v32;
    v61 = v30;

    if (v34 >= 2)
    {
      v38 = 0;
      v39 = v34 >> 1;
      v40 = v34 - 1;
      do
      {
        if (v38 != v40)
        {
          v41 = v33[2];
          if (v38 >= v41)
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v42 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v43 = *(v64 + 72);
          result = sub_21C7106A8(v33 + v42 + v43 * v38, v65, type metadata accessor for PMAccount);
          if (v40 >= v41)
          {
            goto LABEL_34;
          }

          sub_21C7106A8(v33 + v42 + v43 * v40, v6, type metadata accessor for PMAccount);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_21CAA108C(v33);
          }

          result = sub_21C897944(v6, v33 + v42 + v43 * v38);
          if (v40 >= v33[2])
          {
            goto LABEL_35;
          }

          result = sub_21C897944(v65, v33 + v42 + v43 * v40);
        }

        ++v38;
        --v40;
      }

      while (v39 != v38);
    }

    v25 = v63;
    v66 = v63;
    v36 = *(v63 + 16);
    v35 = *(v63 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_21C7125C8((v35 > 1), v36 + 1, 1);
      v25 = v66;
    }

    v27 = v62 + 1;
    *(v25 + 16) = v36 + 1;
    v37 = (v25 + 24 * v36);
    v37[4] = v59;
    v37[5] = v60;
    v37[6] = v33;
    v23 = v55;
    v29 = v61;
    if (v27 == v54)
    {

      v2 = v49;
      goto LABEL_29;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21C71141C(uint64_t a1)
{
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);
  if (v3 > 1)
  {
    v7 = a1;
    if (v3 == 2)
    {

      v4 = sub_21C88BF88;
      v5 = sub_21C8884E8;
    }

    else
    {

      v4 = sub_21C88A474;
      v5 = sub_21C887A50;
    }
  }

  else
  {
    v7 = a1;
    if (v3)
    {

      v4 = sub_21C88D6A4;
      v5 = sub_21C888DB4;
    }

    else
    {

      v4 = sub_21C88E528;
      v5 = sub_21C8891A4;
    }
  }

  sub_21C715A80(&v7, v4, v5);
  return v7;
}

uint64_t sub_21C7115FC(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_21CB862E4();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMAccount(0);
        v10 = sub_21CB85844();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for PMAccount(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_21C7117B4(uint64_t a1)
{
  v123 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v123);
  v3 = v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v114 = v111 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = v111 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v111 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v111 - v13;
  MEMORY[0x28223BE20](v15);
  v124 = v111 - v16;
  v134 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v134);
  v112 = (v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v115 = (v111 - v19);
  MEMORY[0x28223BE20](v20);
  v119 = (v111 - v21);
  MEMORY[0x28223BE20](v22);
  v122 = (v111 - v23);
  MEMORY[0x28223BE20](v24);
  v121 = (v111 - v25);
  MEMORY[0x28223BE20](v26);
  v120 = (v111 - v27);
  MEMORY[0x28223BE20](v28);
  v130 = (v111 - v29);
  v129 = type metadata accessor for PMAccount(0);
  v30 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v133 = v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v111 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v111 - v36;
  v132 = [objc_opt_self() currentCollation];
  v38 = *(a1 + 16);
  v39 = MEMORY[0x277D84F90];
  v125 = v30;
  if (v38)
  {
    v117 = v14;
    v118 = v11;
    v116 = v8;
    v111[1] = v3;
    v137 = MEMORY[0x277D84F90];
    sub_21CB86154();
    v127 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption;
    v128 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
    v40 = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v126 = *(v30 + 72);
    while (1)
    {
      sub_21C7106A8(v40, v37, type metadata accessor for PMAccount);
      sub_21C7106A8(v37, v34, type metadata accessor for PMAccount);
      v48 = v131;
      v136 = v131;
      sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
      sub_21CB810D4();

      v49 = v48[v127];
      v50 = type metadata accessor for PMAppAccountsListModel.WrappedPMAccount(0);
      v51 = objc_allocWithZone(v50);
      sub_21C7106A8(v34, &v51[OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_pmAccount], type metadata accessor for PMAccount);
      v52 = v130;
      v53 = *(v129 + 24);
      sub_21C7106A8(&v34[v53], v130, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v54 = v52;
        v55 = v124;
        sub_21C8399BC(v54, v124, type metadata accessor for PMAccount.MockData);
        sub_21C7126DC(v55, type metadata accessor for PMAccount.MockData);
        if (!v49)
        {
          goto LABEL_12;
        }

        if (v49 != 1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v56 = *v52;
        v57 = [v56 effectiveTitleForSorting];

        if (v49 != 1)
        {
          if (v49)
          {
LABEL_16:
            v58 = v122;
            sub_21C7106A8(&v34[v53], v122, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v59 = v58;
              v62 = v118;
              goto LABEL_26;
            }

            goto LABEL_3;
          }

LABEL_12:
          v58 = v120;
          sub_21C7106A8(&v34[v53], v120, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v59 = v58;
            v60 = &v140;
            goto LABEL_25;
          }

          goto LABEL_3;
        }
      }

      v61 = v121;
      sub_21C7106A8(&v34[v53], v121, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7126DC(v61, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v63 = *v61;
        v64 = [v63 hasValidWebsite];

        if (v64)
        {
          v65 = v115;
          sub_21C7106A8(&v34[v53], v115, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v66 = v114;
            sub_21C8399BC(v65, v114, type metadata accessor for PMAccount.MockData);
            v44 = *(v66 + 32);
            v46 = *(v66 + 40);

            sub_21C7126DC(v66, type metadata accessor for PMAccount.MockData);
            if ((v46 & 0x2000000000000000) != 0)
            {
LABEL_21:
              if ((v46 & 0xF00000000000000) != 0)
              {
                goto LABEL_5;
              }

              goto LABEL_34;
            }
          }

          else
          {
            v113 = *v65;
            v68 = [v113 userVisibleDomain];
            v44 = sub_21CB855C4();
            v46 = v69;

            if ((v46 & 0x2000000000000000) != 0)
            {
              goto LABEL_21;
            }
          }

          if ((v44 & 0xFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_5;
          }

LABEL_34:

          v70 = v112;
          sub_21C7106A8(&v34[v53], v112, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v59 = v70;
            v60 = &v138;
LABEL_25:
            v62 = *(v60 - 32);
LABEL_26:
            sub_21C8399BC(v59, v62, type metadata accessor for PMAccount.MockData);
            v67 = (v62 + *(v123 + 44));
            if (v67[1])
            {
              v44 = *v67;
              v46 = v67[1];
            }

            else
            {
              v44 = *(v62 + 32);
              v46 = *(v62 + 40);
            }

            sub_21C7126DC(v62, type metadata accessor for PMAccount.MockData);
            goto LABEL_5;
          }

          v41 = *v70;
          v42 = [*v70 effectiveTitle];
          goto LABEL_4;
        }
      }

      v58 = v119;
      sub_21C7106A8(&v34[v53], v119, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = v58;
        v60 = &v139;
        goto LABEL_25;
      }

LABEL_3:
      v41 = *v58;
      v42 = [*v58 effectiveTitleForSorting];
LABEL_4:
      v43 = v42;
      v44 = sub_21CB855C4();
      v46 = v45;

LABEL_5:
      v47 = &v51[OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_effectiveTitleForSorting];
      *v47 = v44;
      v47[1] = v46;
      v135.receiver = v51;
      v135.super_class = v50;
      objc_msgSendSuper2(&v135, sel_init);
      sub_21C7126DC(v34, type metadata accessor for PMAccount);
      sub_21C7126DC(v37, type metadata accessor for PMAccount);
      sub_21CB86134();
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
      v40 += v126;
      if (!--v38)
      {
        v71 = v137;
        v39 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }
  }

  v71 = MEMORY[0x277D84F90];
LABEL_39:
  v134 = sel_effectiveTitleForSorting;
  v72 = [v132 sectionTitles];
  v73 = sub_21CB85824();

  v74 = *(v73 + 16);
  if (v74)
  {
    v131 = v71;
    v75 = v39;
    v137 = v39;
    sub_21C7125C8(0, v74, 0);
    v76 = v137;
    v130 = v73;
    v77 = (v73 + 40);
    do
    {
      v78 = *(v77 - 1);
      v79 = *v77;
      v137 = v76;
      v81 = *(v76 + 2);
      v80 = *(v76 + 3);

      if (v81 >= v80 >> 1)
      {
        sub_21C7125C8((v80 > 1), v81 + 1, 1);
        v76 = v137;
      }

      *(v76 + 2) = v81 + 1;
      v82 = &v76[24 * v81];
      *(v82 + 4) = v78;
      *(v82 + 5) = v79;
      *(v82 + 6) = v75;
      v77 += 2;
      --v74;
    }

    while (v74);

    v71 = v131;
    if (!(v131 >> 62))
    {
LABEL_45:
      v84 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v84)
      {
        goto LABEL_46;
      }

      goto LABEL_64;
    }
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
    if (!(v71 >> 62))
    {
      goto LABEL_45;
    }
  }

  result = sub_21CB85FA4();
  v84 = result;
  if (result)
  {
LABEL_46:
    if (v84 >= 1)
    {
      v85 = 0;
      while (1)
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          v86 = MEMORY[0x21CF15BD0](v85, v71);
        }

        else
        {
          v86 = *&v71[8 * v85 + 32];
        }

        v87 = v86;
        v88 = [v132 sectionForObject:v86 collationStringSelector:v134];
        sub_21C7106A8(v87 + OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_pmAccount, v133, type metadata accessor for PMAccount);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v88 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          result = sub_21CAA1078(v76);
          v76 = result;
          if ((v88 & 0x8000000000000000) != 0)
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
            goto LABEL_100;
          }
        }

        if (v88 >= *(v76 + 2))
        {
          goto LABEL_94;
        }

        v89 = &v76[24 * v88];
        v92 = *(v89 + 6);
        v91 = (v89 + 48);
        v90 = v92;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v91 = v92;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v90 = sub_21CA4F1B8(0, v90[2] + 1, 1, v90);
          *v91 = v90;
        }

        v95 = v90[2];
        v94 = v90[3];
        if (v95 >= v94 >> 1)
        {
          *v91 = sub_21CA4F1B8((v94 > 1), v95 + 1, 1, v90);
        }

        ++v85;

        v96 = *v91;
        *(v96 + 16) = v95 + 1;
        sub_21C8399BC(v133, v96 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v95, type metadata accessor for PMAccount);
        if (v84 == v85)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_101;
  }

LABEL_64:

  v97 = *(v76 + 2);
  if (v97)
  {
    v98 = 0;
    v99 = 0;
    while (*(*&v76[v98 + 48] + 16))
    {
      ++v99;
      v98 += 24;
      if (v97 == v99)
      {
        goto LABEL_68;
      }
    }

    v100 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      goto LABEL_102;
    }

    if (v100 != v97)
    {
      while (v100 < v97)
      {
        v104 = *&v76[v98 + 72];
        if (*(v104 + 16))
        {
          if (v100 != v99)
          {
            if (v99 >= v97)
            {
              goto LABEL_96;
            }

            v105 = &v76[24 * v99 + 32];
            v106 = *(v105 + 8);
            v134 = *v105;
            v107 = *(v105 + 16);
            v108 = *&v76[v98 + 56];
            v109 = *&v76[v98 + 64];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v76 = sub_21CAA1078(v76);
            }

            v110 = &v76[24 * v99];
            *(v110 + 4) = v108;
            *(v110 + 5) = v109;
            *(v110 + 6) = v104;

            if (v100 >= *(v76 + 2))
            {
              goto LABEL_97;
            }

            v103 = &v76[v98];
            *(v103 + 7) = v134;
            *(v103 + 8) = v106;
            *(v103 + 9) = v107;

            v97 = *(v76 + 2);
          }

          ++v99;
        }

        ++v100;
        v98 += 24;
        if (v100 == v97)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_95;
    }

LABEL_71:
    if (v97 < v99)
    {
      goto LABEL_99;
    }

    if (v99 < 0)
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      return result;
    }
  }

  else
  {
LABEL_68:
    v99 = *(v76 + 2);
  }

  if (__OFADD__(v97, v99 - v97))
  {
    goto LABEL_98;
  }

  v101 = swift_isUniquelyReferenced_nonNull_native();
  v137 = v76;
  if (!v101 || v99 > *(v76 + 3) >> 1)
  {
    if (v97 <= v99)
    {
      v102 = v99;
    }

    else
    {
      v102 = v97;
    }

    v76 = sub_21CA4F098(v101, v102, 1, v76);
    v137 = v76;
  }

  sub_21C715DC4(v99, v97, 0);

  return v76;
}

char *sub_21C7125C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C715CA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21C712618(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

void sub_21C712684(uint64_t a1)
{
  if (!qword_27CDEDA28)
  {
    type metadata accessor for PMGroupInvitationsListModel(255);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEDA28);
    }
  }
}

uint64_t sub_21C7126DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C71273C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts;

  v5 = sub_21C714F88(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810C4();
  }
}

uint64_t sub_21C7128C0(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_21C712904()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v1, v6);

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21C8979A8;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0, MEMORY[0x277CBCE20]);
  sub_21CB81E04();

  swift_getKeyPath(byte_21CBAB560);
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  swift_getKeyPath(byte_21CBAB560);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  swift_getKeyPath(byte_21CBAB560);
  sub_21CB810E4();
}

uint64_t sub_21C712BAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C712BE8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBB0E38);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
  }
}

uint64_t sub_21C712D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C712D6C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel) = *(v0 + 24);
}

uint64_t sub_21C712DB0()
{
  sub_21C712E50();
  v1 = OBJC_IVAR____TtC17PasswordManagerUI28PMAppAccountsSearchListModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C712E50()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_id;
  v2 = sub_21CB80E34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__groupIDForInvitationAcceptanceFlow, &unk_27CDF20B0, &unk_21CBA0090);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  v4 = sub_21CB85114();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21C7126DC(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, type metadata accessor for PMAppAccountsListModel.Configuration);

  sub_21C71B710(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived + 8));
  v5 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
  v6 = sub_21CB81114();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_21C7130C8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_21C71DD5C(v1, v2);
  return sub_21C71B710(v4, v5);
}

void sub_21C713140(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_21C713194(uint64_t a1)
{
  v2 = sub_21CB85F24();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_21CAA206C(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_21C713210(uint64_t a1)
{
  sub_21C705CFC(319);
  if (v1 <= 0x3F)
  {
    sub_21C713384(319);
    if (v2 <= 0x3F)
    {
      sub_21C707F4C(319);
      if (v3 <= 0x3F)
      {
        sub_21C713510(319);
        if (v4 <= 0x3F)
        {
          sub_21C70640C(319);
          if (v5 <= 0x3F)
          {
            sub_21C713604(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_21C708274(319);
              if (v7 <= 0x3F)
              {
                sub_21C713604(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_21C712684(319);
                  if (v9 <= 0x3F)
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
  }
}

void sub_21C713384(uint64_t a1)
{
  if (!qword_27CDEDA18)
  {
    type metadata accessor for PMTipsStore(255);
    sub_21C705EB0(&qword_27CDED870, type metadata accessor for PMTipsStore, &unk_21CBCD9D8);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEDA18);
    }
  }
}

uint64_t sub_21C713418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C713460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7134A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C713510(uint64_t a1)
{
  if (!qword_27CDED050)
  {
    type metadata accessor for PMAccountsListModel(255);
    sub_21C713460(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    v1 = sub_21CB82B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDED050);
    }
  }
}

void sub_21C7135A4()
{
  if (!qword_27CDEAEC8)
  {
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEAEC8);
    }
  }
}

void sub_21C713604(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21C713654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for PMScrollTestModifier(uint64_t a1)
{
  result = qword_27CDF8AD0;
  if (!qword_27CDF8AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C713714(uint64_t a1)
{
  result = sub_21CB820E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21C713780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C71382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFA8, &qword_21CBAB4D8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  v15 = *(v14 + 56);
  sub_21C7106A8(a1, v22 - v12, type metadata accessor for PMAppAccountsListModel.Configuration);
  sub_21C7106A8(a2, &v13[v15], type metadata accessor for PMAppAccountsListModel.Configuration);
  v16 = *(v5 + 48);
  v17 = v16(v13, 4, v4);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(&v13[v15], 4, v4) == 2)
      {
        goto LABEL_20;
      }
    }

    else if (v17 == 3)
    {
      if (v16(&v13[v15], 4, v4) == 3)
      {
        goto LABEL_20;
      }
    }

    else if (v16(&v13[v15], 4, v4) == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v17)
  {
    if (v16(&v13[v15], 4, v4) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_21C7106A8(v13, v10, type metadata accessor for PMAppAccountsListModel.Configuration);
    if (v16(&v13[v15], 4, v4))
    {
      (*(v5 + 8))(v10, v4);
LABEL_14:
      sub_21C6EA794(v13, &qword_27CDEEFA8, &qword_21CBAB4D8);
      return 0;
    }

    (*(v5 + 32))(v7, &v13[v15], v4);
    sub_21C713E38(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v22[2] == v22[0] && v22[3] == v22[1])
    {
      v19 = *(v5 + 8);
      v19(v7, v4);

      v19(v10, v4);
    }

    else
    {
      v20 = sub_21CB86344();
      v21 = *(v5 + 8);
      v21(v7, v4);

      v21(v10, v4);
      if ((v20 & 1) == 0)
      {
        sub_21C7126DC(v13, type metadata accessor for PMAppAccountsListModel.Configuration);
        return 0;
      }
    }
  }

LABEL_20:
  sub_21C7126DC(v13, type metadata accessor for PMAppAccountsListModel.Configuration);
  return 1;
}

unint64_t sub_21C713C64(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_21C713C74(unsigned __int8 a1)
{
  v2 = v1;
  v11 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v5 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption;
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) != a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults);
    v7 = qword_27CDEA4C0;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v8 = sub_21C710778(v6, v11);

    sub_21CB810D4();

    v9 = *(v2 + v5);
    v10 = sub_21CB85584();
    [v8 setInteger:v9 forKey:v10];

    return sub_21C710AE8(0);
  }

  return result;
}

uint64_t sub_21C713E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C713E80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD70, &unk_21CBA5720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - v4;
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x28223BE20](v13);
  v36 = &v34 - v15;
  v16 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7106A8(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v18, type metadata accessor for PMAppAccountsListModel.Configuration);
  v19 = (*(v7 + 48))(v18, 4, v6);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
      v29 = qword_27CDEA4C0;

      if (v29 == -1)
      {
        goto LABEL_15;
      }
    }

    else if (v19 == 3)
    {
      v20 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
      v21 = qword_27CDEA4C0;

      if (v21 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v20 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
      v30 = qword_27CDEA4C0;

      if (v30 == -1)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  v35 = v3;
  if (v19)
  {
    v20 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
    v31 = qword_27CDEA4C0;

    if (v31 == -1)
    {
LABEL_15:
      sub_21CB86544();
      sub_21C7072A8(v20, v39);

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
      v32 = v36;
      sub_21CB81D84();
      swift_endAccess();

      swift_allocObject();
      swift_weakInit();
      sub_21C6EADEC(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590, MEMORY[0x277CBCEC8]);
      v33 = v37;
      sub_21CB81E04();

      (*(v38 + 1))(v32, v33);
      swift_getKeyPath(byte_21CBAB560);
      v39 = v1;
      sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
      sub_21CB810D4();

      v39 = v1;
      swift_getKeyPath(byte_21CBAB560);
      sub_21CB810F4();

      swift_beginAccess();
      sub_21CB81CB4();
      swift_endAccess();

      v39 = v1;
      swift_getKeyPath(byte_21CBAB560);
      sub_21CB810E4();
    }

LABEL_16:
    swift_once();
    goto LABEL_15;
  }

  v22 = *(v7 + 32);
  v37 = v7 + 32;
  v38 = v12;
  v36 = v22;
  (v22)(v12, v18, v6);
  v23 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
  v24 = qword_27CDEA4C0;

  if (v24 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v23, v39);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  sub_21CB81D84();
  swift_endAccess();

  v25 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v38, v6);
  v26 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  (v36)(v27 + v26, v9, v6);
  sub_21C6EADEC(&qword_27CDECD80, &qword_27CDECD70, &unk_21CBA5720, MEMORY[0x277CBCEC8]);
  sub_21CB81E04();

  (*(v35 + 8))(v5, v2);
  swift_getKeyPath(byte_21CBAB560);
  v39 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v39 = v1;
  swift_getKeyPath(byte_21CBAB560);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v39 = v1;
  swift_getKeyPath(byte_21CBAB560);
  sub_21CB810E4();

  return (*(v7 + 8))(v38, v6);
}

uint64_t sub_21C714A28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C714AA0()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C714B64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts;

  v5 = sub_21C714F88(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    sub_21C710AE8(0);
    result = sub_21C715E9C();
    if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts))
    {
      KeyPath = swift_getKeyPath(byte_21CBAB770);
      MEMORY[0x28223BE20](KeyPath);
      sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
      sub_21CB810C4();
    }
  }

  else
  {
    v8 = swift_getKeyPath(byte_21CBAB600);
    MEMORY[0x28223BE20](v8);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C714DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_21C73A818(v20, v17, a4);
        sub_21C73A818(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_21C968BDC(v13, a6);
        sub_21C968BDC(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_21C714F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = (&v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v81 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v80 = (&v71 - v9);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  MEMORY[0x28223BE20](v86);
  v11 = &v71 - v10;
  v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v14 - 8);
  v82 = (&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v88);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v71 - v19);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  MEMORY[0x28223BE20](v87);
  v22 = &v71 - v21;
  v89 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v89);
  v24 = (&v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v28 = (&v71 - v27);
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
    return 0;
  }

  if (!v29 || a1 == a2)
  {
    return 1;
  }

  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v73 = *(v26 + 72);
  v74 = v20;
  v77 = (&v71 - v27);
  v78 = v24;
  v75 = v11;
  v76 = v6;
  v71 = v17;
  while (1)
  {
    sub_21C73A818(v31, v28, type metadata accessor for PMAccount);
    sub_21C73A818(v32, v24, type metadata accessor for PMAccount);
    v34 = *v28 == *v24 && v28[1] == v24[1];
    if (!v34 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_47;
    }

    v84 = v32;
    v85 = v31;
    v35 = v89[5];
    v36 = *(v87 + 48);
    sub_21C73A818(v28 + v35, v22, type metadata accessor for PMAccount.UniqueID);
    sub_21C73A818(v24 + v35, &v22[v36], type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v71;
      sub_21C73A818(v22, v71, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = v83;
        sub_21C968B74(&v22[v36], v83, type metadata accessor for PMAccount.SIWAUniqueID);
        v38 = sub_21C7D1550(v20, v37);
        v39 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_16;
      }

      v70 = type metadata accessor for PMAccount.SIWAUniqueID;
LABEL_40:
      sub_21C968BDC(v20, v70);
      sub_21C6EA794(v22, &qword_27CDEB3C8, &unk_21CBB0010);
      goto LABEL_47;
    }

    sub_21C73A818(v22, v20, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v70 = type metadata accessor for PMAccount.CombinedUniqueID;
      goto LABEL_40;
    }

    v37 = v82;
    sub_21C968B74(&v22[v36], v82, type metadata accessor for PMAccount.CombinedUniqueID);
    v38 = sub_21C7CECDC(v20, v37);
    v39 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_16:
    v40 = v39;
    sub_21C968BDC(v37, v39);
    sub_21C968BDC(v20, v40);
    if ((v38 & 1) == 0)
    {
      sub_21C968BDC(v22, type metadata accessor for PMAccount.UniqueID);
      goto LABEL_47;
    }

    sub_21C968BDC(v22, type metadata accessor for PMAccount.UniqueID);
    v41 = v89[6];
    v42 = *(v86 + 48);
    sub_21C73A818(v28 + v41, v11, type metadata accessor for PMAccount.Storage);
    sub_21C73A818(v24 + v41, &v11[v42], type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v81;
      sub_21C73A818(v11, v81, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v79;
        sub_21C968B74(&v11[v42], v79, type metadata accessor for PMAccount.MockData);
        v45 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v43, v44);
        sub_21C968BDC(v44, type metadata accessor for PMAccount.MockData);
        sub_21C968BDC(v43, type metadata accessor for PMAccount.MockData);
        if (!v45)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      sub_21C968BDC(v43, type metadata accessor for PMAccount.MockData);
LABEL_43:
      sub_21C6EA794(v11, &unk_27CDF7680, &qword_21CBB4E30);
      goto LABEL_47;
    }

    v46 = v80;
    sub_21C73A818(v11, v80, type metadata accessor for PMAccount.Storage);
    v47 = *v46;
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_43;
    }

    v48 = *&v11[v42];
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v49 = sub_21CB85DD4();

    if ((v49 & 1) == 0)
    {
LABEL_35:
      sub_21C968BDC(v11, type metadata accessor for PMAccount.Storage);
      goto LABEL_47;
    }

LABEL_23:
    sub_21C968BDC(v11, type metadata accessor for PMAccount.Storage);
    v50 = v89[7];
    v51 = v28 + v50;
    v52 = *(v28 + v50);
    v53 = *(v51 + 1);
    v54 = *(v51 + 2);
    v55 = *(v51 + 3);
    v56 = (v24 + v50);
    v57 = *v56;
    v58 = v56[1];
    v59 = v56[2];
    v60 = v56[3];
    if (v53)
    {
      break;
    }

    sub_21C7D33AC(v52, 0, *(v51 + 2), *(v51 + 3));
    if (v58)
    {
      sub_21C7D33AC(v57, v58, v59, v60);
      goto LABEL_45;
    }

    sub_21C7D33AC(v57, 0, v59, v60);
    sub_21C7D33F0(v52, 0, v54, v55);
    v24 = v78;
    sub_21C968BDC(v78, type metadata accessor for PMAccount);
    v28 = v77;
    sub_21C968BDC(v77, type metadata accessor for PMAccount);
LABEL_5:
    v20 = v74;
    v32 = v84 + v73;
    v31 = v85 + v73;
    result = 1;
    --v29;
    v11 = v75;
    if (!v29)
    {
      return result;
    }
  }

  if (v58)
  {
    if (v52 != v57 || v53 != v58) && (sub_21CB86344() & 1) == 0 || ((v54 ^ v59))
    {
      sub_21C7D33AC(v52, v53, v54, v55);
      sub_21C7D33AC(v57, v58, v59, v60);
      sub_21C7D33AC(v52, v53, v54, v55);
      sub_21C7D33F0(v57, v58, v59, v60);

      v66 = v52;
      v67 = v53;
      v68 = v54;
      v69 = v55;
      goto LABEL_46;
    }

    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v72 = v29;
    v61 = v22;
    v62 = v59;
    v63 = v60;
    sub_21C7D33AC(v52, v53, v54, v55);
    sub_21C7D33AC(v57, v58, v62, v60);
    sub_21C7D33AC(v52, v53, v54, v55);
    v64 = sub_21CB85DD4();
    v65 = v62;
    v22 = v61;
    v29 = v72;
    sub_21C7D33F0(v57, v58, v65, v63);

    sub_21C7D33F0(v52, v53, v54, v55);
    v24 = v78;
    sub_21C968BDC(v78, type metadata accessor for PMAccount);
    v28 = v77;
    sub_21C968BDC(v77, type metadata accessor for PMAccount);
    if ((v64 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_21C7D33AC(v52, *(v51 + 1), *(v51 + 2), *(v51 + 3));
  sub_21C7D33AC(v57, 0, v59, v60);
  sub_21C7D33AC(v52, v53, v54, v55);

LABEL_45:
  sub_21C7D33F0(v52, v53, v54, v55);
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v69 = v60;
LABEL_46:
  sub_21C7D33F0(v66, v67, v68, v69);
  v28 = v77;
  v24 = v78;
LABEL_47:
  sub_21C968BDC(v24, type metadata accessor for PMAccount);
  sub_21C968BDC(v28, type metadata accessor for PMAccount);
  return 0;
}

uint64_t sub_21C715A80(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_21C715B40(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_21C7115FC(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_21C715B54(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4, uint64_t a5)
{
  v9 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v10, a1);

  if (a3)
  {
    *(v5 + v9) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a4);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810C4();
  }
}

char *sub_21C715CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB020, &qword_21CBA0D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21C715DC4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21C715E9C()
{
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_21C8852EC();
  }

  swift_getKeyPath(byte_21CBAB628);
  sub_21CB810D4();

  swift_beginAccess();

  sub_21C71273C(v4);
  swift_getKeyPath(byte_21CBAB650);
  sub_21CB810D4();

  KeyPath = swift_getKeyPath(byte_21CBAB6A0);
  MEMORY[0x28223BE20](KeyPath);

  sub_21CB810C4();
}

uint64_t sub_21C7161A0()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = qword_27CDEA4C0;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v2, v9);

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  v4 = MEMORY[0x277CBCE20];
  sub_21C6EADEC(&qword_27CDEAF88, &qword_27CDEAF80, &unk_21CBA0A30, MEMORY[0x277CBCE20]);
  sub_21CB81E04();

  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  sub_21CB810E4();

  v5 = *(v1 + 40);

  sub_21CB86544();
  sub_21C7072A8(v5, v1);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21C8D7A48;
  *(v7 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0, v4);
  sub_21CB81E04();

  sub_21CB810D4();

  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  sub_21CB810E4();
}

uint64_t sub_21C7165E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C716620(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-v7];
  v9 = type metadata accessor for PMAppSourceListModel.Action(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C710710(a1, v11, type metadata accessor for PMAppSourceListModel.Action);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      sub_21C8C77C0();
    }

    v14 = *(v13 + 48);
    sub_21C716934(v11, v8, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C716934(&v11[v14], v5, &qword_27CDEAC20, &qword_21CBAD710);
    if (sub_21C71699C())
    {
      swift_getKeyPath(byte_21CBAD8B0);
      sub_21CB81DB4();

      if (v17[7] == 1)
      {
        v15 = sub_21CA4DE84();
        v16 = [v15 hasChanges];

        if (v16)
        {
          sub_21C8C8DEC(v8, v5);
LABEL_10:

          sub_21C6EA794(v5, &qword_27CDEAC20, &qword_21CBAD710);
          return sub_21C6EA794(v8, &qword_27CDEAC20, &qword_21CBAD710);
        }
      }

      else
      {
      }
    }

    sub_21C716FCC();
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_21C716934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C71699C()
{
  v1 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath(byte_21CBAD808, v5);
  v16 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  result = 0;
  v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);
  if (!(v9 >> 62))
  {
    swift_getKeyPath(byte_21CBAD970);
    v16 = v9;
    sub_21C71B720(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);

    sub_21CB810D4();

    v10 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
    swift_beginAccess();
    sub_21C710710(v9 + v10, v7, type metadata accessor for PMMultipleAccountsDetailsModel.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v13 = type metadata accessor for PMMultipleAccountsDetailsModel.State;
      v14 = v7;
      goto LABEL_6;
    }

    v11 = *v7;
    swift_getKeyPath(byte_21CBAD998);
    v15[0] = v11;
    sub_21C71B720(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel, &unk_21CBA6850);
    sub_21CB810D4();

    v12 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
    swift_beginAccess();
    sub_21C710710(v11 + v12, v3, type metadata accessor for PMAppAccountDetailsModel.State);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = type metadata accessor for PMAppAccountDetailsModel.State;
      v14 = v3;
LABEL_6:
      sub_21C7192A0(v14, v13);
      return 0;
    }

    return *v3;
  }

  return result;
}

uint64_t sub_21C716D0C(uint64_t a1)
{
  result = type metadata accessor for PMCombinedAccountDetailsModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PMAccount(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21C716DA0(uint64_t a1)
{
  sub_21C716E58(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMAppAccountDetailsModel(319);
    if (v2 <= 0x3F)
    {
      sub_21C6F07E4(319, &qword_27CDF4F08, type metadata accessor for PMAccount, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21C716E58(uint64_t a1)
{
  if (!qword_27CDF6B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF20B0, &unk_21CBA0090);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDF6B88);
    }
  }
}

uint64_t sub_21C716EF0(uint64_t a1)
{
  result = type metadata accessor for PMAppAccountDetailsModel.State(319);
  if (v2 <= 0x3F)
  {
    result = sub_21CB81114();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21C716FCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v2 - 8);
  v134 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v136 = &v130 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v130 - v7;
  v139 = type metadata accessor for PMAccount(0);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v135 = (&v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v140);
  v141 = &v130 - v10;
  v11 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  v146 = v14;
  v147 = v15;
  MEMORY[0x28223BE20](v14);
  v133 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v144 = &v130 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v130 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v22 - 8);
  v137 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v142 = &v130 - v25;
  MEMORY[0x28223BE20](v26);
  v145 = &v130 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  *&v29 = MEMORY[0x28223BE20](v28 - 8).n128_u64[0];
  v31 = &v130 - v30;
  v32 = *(v0 + 64);
  swift_getKeyPath(byte_21CBAD718, v29);
  v151 = v32;
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v33 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C6EDBAC(v32 + v33, v31, &qword_27CDEAC20, &qword_21CBAD710);
  v34 = type metadata accessor for PMAppSourceListModel.Source(0);
  if ((*(*(v34 - 8) + 48))(v31, 1, v34) == 1)
  {
    sub_21C718AB8(0xC000000000000000);
    v35 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState;
    if ((*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) & 0x8000000000000000) == 0)
    {
LABEL_3:
      KeyPath = swift_getKeyPath(byte_21CBAD808);
      MEMORY[0x28223BE20](KeyPath);
      *(&v130 - 2) = v1;
      *(&v130 - 1) = 0x8000000000000000;
      v150 = v1;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
      sub_21CB810C4();

      return sub_21C718CB4();
    }

LABEL_18:
    *(v1 + v35) = 0x8000000000000000;
    return sub_21C718CB4();
  }

  v143 = v1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v42 = v143;
    v43 = v147;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21C8CB690(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___allViewModel, 1, &unk_282E4F920, sub_21C8D8B0C);
        v48 = MEMORY[0x277D84FA0];
        sub_21C880484(MEMORY[0x277D84FA0]);

        sub_21C718AB8(v49);
        v50 = v145;
        (*(v43 + 56))(v145, 1, 1, v146);
        type metadata accessor for PMMultipleAccountsDetailsModel(0);
        swift_allocObject();
        v51 = v48;
        v52 = 0x8000000000000000;
      }

      else
      {
        sub_21C8CB690(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___passkeysViewModel, 2, &unk_282E4FA10, sub_21C8D7778);
        v77 = MEMORY[0x277D84FA0];
        sub_21C880484(MEMORY[0x277D84FA0]);

        sub_21C718AB8(v78);
        v50 = v145;
        (*(v43 + 56))(v145, 1, 1, v146);
        type metadata accessor for PMMultipleAccountsDetailsModel(0);
        swift_allocObject();
        v51 = v77;
        v52 = 0x8000000000000008;
      }

LABEL_33:
      v85 = sub_21CA770B0(v51, v52, v50);
      goto LABEL_34;
    }

    if (!EnumCaseMultiPayload)
    {
      v44 = v146;
      (*(v147 + 32))(v21, v31, v146);
      sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel, sub_21C8CBB34);
      v45 = v145;
      (*(v43 + 16))(v145, v21, v44);
      (*(v43 + 56))(v45, 0, 1, v44);
      sub_21C9C5C48(v45);

      sub_21C718AB8(v46 | 0x2000000000000000);
      if ((*(v42 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) & 0x8000000000000000) != 0)
      {
        *(v42 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = 0x8000000000000000;
      }

      else
      {
        v47 = swift_getKeyPath(byte_21CBAD808);
        MEMORY[0x28223BE20](v47);
        *(&v130 - 2) = v42;
        *(&v130 - 1) = 0x8000000000000000;
        v150 = v42;
        sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
        sub_21CB810C4();
      }

      (*(v43 + 8))(v21, v44);
      return sub_21C718CB4();
    }

    v66 = *(v147 + 32);
    v67 = v144;
    v68 = v146;
    v132 = v147 + 32;
    v131 = v66;
    v66(v144, v31, v146);
    v69 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
    v150 = v42;
    v70 = sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810D4();

    v71 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels;
    swift_beginAccess();
    v72 = *(v42 + v71);
    v73 = *(v72 + 16);
    v136 = v70;
    if (v73)
    {

      v74 = sub_21CB10A54(v67);
      if (v75)
      {
        v76 = *(*(v72 + 56) + 8 * v74);

        goto LABEL_38;
      }
    }

    (*(v43 + 16))(v13, v67, v68);
    (*(v43 + 56))(v13, 0, 4, v68);
    type metadata accessor for PMAppAccountsListModel(0);
    swift_allocObject();
    v76 = sub_21C70FDD0(v13);
    v104 = swift_allocObject();
    swift_weakInit();
    v105 = swift_allocObject();
    swift_weakInit();
    v106 = swift_allocObject();
    *(v106 + 16) = v104;
    *(v106 + 24) = v105;
    v107 = (v76 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
    *v107 = sub_21C8D8B0C;
    v107[1] = v106;

    v149 = v76;
    sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810D4();
    v42 = v143;

    v108 = *(v76 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    sub_21C8CB938(MEMORY[0x277D84FA0], v108, v104, v105);

    v43 = v147;

    v149 = v42;

    sub_21CB810D4();

    v149 = v42;
    sub_21CB810F4();
    v67 = v144;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v42 + v71);
    *(v42 + v71) = 0x8000000000000000;
    sub_21C8D43D4(v76, v67, isUniquelyReferenced_nonNull_native);
    *(v42 + v71) = v148;
    swift_endAccess();
    v149 = v42;
    sub_21CB810E4();

LABEL_38:
    v110 = v68;
    v149 = v42;
    v139 = v76;

    v134 = v69;
    sub_21CB810D4();

    v111 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation;
    swift_beginAccess();
    v112 = v42;
    v113 = v142;
    v135 = *(v43 + 16);
    v135(v142, v67, v68);
    v138 = *(v43 + 56);
    (v138)(v113, 0, 1, v68);
    v114 = *(v140 + 48);
    v115 = v112 + v111;
    v116 = v141;
    sub_21C6EDBAC(v115, v141, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v113, v116 + v114, &unk_27CDF20B0, &unk_21CBA0090);
    v117 = *(v43 + 48);
    if (v117(v116, 1, v68) == 1)
    {
      sub_21C6EA794(v113, &unk_27CDF20B0, &unk_21CBA0090);
      if (v117(v116 + v114, 1, v68) == 1)
      {
        sub_21C6EA794(v116, &unk_27CDF20B0, &unk_21CBA0090);
        v110 = v146;
        v118 = v144;
LABEL_47:
        v124 = v143;
        v148 = v143;
        sub_21CB810D4();

        v125 = v145;
        sub_21C6EDBAC(v124 + v111, v145, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C87F798(v125);
        (v138)(v125, 1, 1, v110);
        sub_21C8C89DC(v125);
        goto LABEL_48;
      }
    }

    else
    {
      v119 = v137;
      sub_21C6EDBAC(v116, v137, &unk_27CDF20B0, &unk_21CBA0090);
      if (v117(v116 + v114, 1, v110) != 1)
      {
        v120 = v133;
        v131(v133, v116 + v114, v110);
        sub_21C71B720(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v121 = sub_21CB85574();
        v122 = v119;
        v123 = *(v147 + 8);
        v123(v120, v110);
        sub_21C6EA794(v142, &unk_27CDF20B0, &unk_21CBA0090);
        v123(v122, v110);
        sub_21C6EA794(v116, &unk_27CDF20B0, &unk_21CBA0090);
        v118 = v144;
        if (v121)
        {
          goto LABEL_47;
        }

LABEL_48:
        v126 = MEMORY[0x277D84FA0];
        sub_21C880484(MEMORY[0x277D84FA0]);

        sub_21C718AB8(v127);
        v128 = v145;
        v135(v145, v118, v110);
        (v138)(v128, 0, 1, v110);
        type metadata accessor for PMMultipleAccountsDetailsModel(0);
        swift_allocObject();
        v129 = sub_21CA770B0(v126, 0x8000000000000000, v128);
        sub_21C8C7C18(v129);

        (*(v147 + 8))(v118, v110);
        return sub_21C718CB4();
      }

      sub_21C6EA794(v142, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v147 + 8))(v119, v110);
    }

    sub_21C6EA794(v116, &qword_27CDEAC40, &qword_21CBA1A40);
    v110 = v146;
    v118 = v144;
    goto LABEL_48;
  }

  v38 = v146;
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v1 = v143;
      sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel, sub_21C8CBB34);
      v53 = v145;
      (*(v147 + 56))(v145, 1, 1, v38);
      sub_21C9C5C48(v53);

      sub_21C718AB8(v54 | 0x2000000000000000);
      v35 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState;
      if ((*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    v86 = v143;
    sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___recentlyDeletedViewModel, sub_21C8CC278);
    v87 = MEMORY[0x277D84FA0];
    sub_21CAE9A98(MEMORY[0x277D84FA0]);

    v88 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___recentlyDeletedViewModel;

    sub_21C718AB8(v89 | 0x4000000000000000);
    v90 = *(v86 + v88);
    v91 = v145;
    (*(v147 + 56))(v145, 1, 1, v38);
    type metadata accessor for PMMultipleAccountsDetailsModel(0);
    swift_allocObject();

    v92 = sub_21CA770B0(v87, v90 | 0x4000000000000000, v91);

    v85 = v92;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v39 = sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___verificationCodesViewModel, sub_21C8CD0AC);
      v40 = v39;
      if (*(v39 + 88))
      {
        v41 = swift_getKeyPath(byte_21CBAD760);
        MEMORY[0x28223BE20](v41);
        *(&v130 - 3) = 0;
        *(&v130 - 2) = 0;
        *(&v130 - 4) = v40;
        v150 = v40;
        sub_21C71B720(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
        sub_21CB810C4();
      }

      else
      {
        v101 = *(v39 + 80);
        *(v40 + 80) = 0;
        *(v40 + 88) = 0;
        sub_21CB72C70(v101, 0);
      }

      sub_21C718AB8(v102 | 0x8000000000000000);
      v50 = v145;
      (*(v147 + 56))(v145, 1, 1, v38);
      type metadata accessor for PMMultipleAccountsDetailsModel(0);
      swift_allocObject();
      v51 = MEMORY[0x277D84FA0];
      v52 = 0x8000000000000010;
      goto LABEL_33;
    }

    v79 = v143;
    sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel, sub_21C8CD6A8);
    v80 = MEMORY[0x277D84FA0];
    sub_21C86234C(MEMORY[0x277D84FA0]);

    v81 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel;

    sub_21C718AB8(v82 | 0xA000000000000000);
    v83 = *(v79 + v81);
    type metadata accessor for PMMultipleWiFiDetailsModel(0);
    v84 = swift_allocObject();
    *(v84 + 32) = 0;
    *(v84 + 40) = 0;
    *(v84 + 48) = v80;
    *(v84 + 56) = swift_getKeyPath(byte_21CBAD740);

    sub_21CB81104();
    *(v84 + 16) = v80;
    *(v84 + 24) = v83;

    sub_21CAF9EAC();

    v85 = v84 | 0x4000000000000000;
LABEL_34:
    sub_21C8C7C18(v85);
    return sub_21C718CB4();
  }

  v55 = v143;
  sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___securityRecommendationsViewModel, sub_21C8CC74C);
  v56 = MEMORY[0x277D84FA0];
  sub_21C901AD4(MEMORY[0x277D84FA0]);

  v57 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___securityRecommendationsViewModel;

  sub_21C718AB8(v58 | 0x6000000000000000);
  v59 = *(v55 + v57);
  v60 = v145;
  (*(v147 + 56))(v145, 1, 1, v38);
  type metadata accessor for PMMultipleAccountsDetailsModel(0);
  swift_allocObject();

  v61 = sub_21CA770B0(v56, v59, v60);

  sub_21C8C7C18(v61);
  swift_getKeyPath(byte_21CBAD6E8);
  v62 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
  v150 = v55;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v63 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  swift_beginAccess();
  sub_21C6EDBAC(v55 + v63, v8, &unk_27CDEBE60, &unk_21CB9FF40);
  v64 = v138;
  v65 = v139;
  if ((*(v138 + 48))(v8, 1, v139) == 1)
  {
    sub_21C6EA794(v8, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  else
  {
    v147 = v62;
    v93 = v8;
    v94 = v135;
    sub_21C8D88C8(v93, v135, type metadata accessor for PMAccount);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v96 = *(v94 + 1);
    *(inited + 32) = *v94;
    *(inited + 40) = v96;

    v97 = sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    sub_21C901AD4(v97);

    v98 = v136;
    (*(v64 + 56))(v136, 1, 1, v65);
    v99 = v134;
    sub_21C6EDBAC(v55 + v63, v134, &unk_27CDEBE60, &unk_21CB9FF40);
    LOBYTE(v97) = sub_21C7A2AE4(v99, v98);
    sub_21C6EA794(v99, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v97)
    {
      v100 = swift_getKeyPath(byte_21CBAD6E8);
      MEMORY[0x28223BE20](v100);
      *(&v130 - 2) = v55;
      *(&v130 - 1) = v98;
      v149 = v55;
      sub_21CB810C4();
    }

    else
    {
      sub_21C6EDBAC(v98, v99, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C8CA328(v99);
    }

    sub_21C6EA794(v98, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C7192A0(v94, type metadata accessor for PMAccount);
  }

  return sub_21C718CB4();
}

uint64_t sub_21C7189CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21CB70C48(v1, v2);
}

uint64_t sub_21C718AB8(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (!v3)
    {
      if (a1 >> 61 || v2 != a1)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (v3 == 1)
    {
      if (a1 >> 61 != 1)
      {
        goto LABEL_20;
      }
    }

    else if (a1 >> 61 != 2)
    {
      goto LABEL_20;
    }
  }

  else if (v3 > 4)
  {
    if (v3 != 5)
    {
      if (a1 != 0xC000000000000000)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (a1 >> 61 != 5)
    {
      goto LABEL_20;
    }
  }

  else if (v3 == 3)
  {
    if (a1 >> 61 != 3)
    {
      goto LABEL_20;
    }
  }

  else if (a1 >> 61 != 4)
  {
LABEL_20:
    KeyPath = swift_getKeyPath(byte_21CBAD830);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
  }

  if (((v2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) = a1;
}

uint64_t sub_21C718CB4()
{
  v1 = v0;
  swift_getKeyPath(byte_21CBAD830);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) >> 62 == 3)
  {
    if (!*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact))
    {
      return result;
    }

    goto LABEL_7;
  }

  swift_getKeyPath(byte_21CBAD808);
  sub_21CB810D4();

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

  v4 = sub_21C8C8514(v3);

  if (v4 || (swift_getKeyPath(byte_21CBAD9C0), sub_21CB810D4(), result = , (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentStateIsEditing) & 1) != 0))
  {
    if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact) == 1)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact) != 2)
  {
LABEL_7:
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C719000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7190C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7191E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7192A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7193C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7194E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7195A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7196C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7197E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7198A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7199C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719A20()
{
  v1 = v0;
  swift_getKeyPath(byte_21CBB0E38);
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v2 = (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel) + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  *v2 = sub_21C919EBC;
  v2[1] = v0;

  swift_retain_n();

  swift_getKeyPath(byte_21CBB0E60);
  sub_21C712D24(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v4 = sub_21C713194(v3);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);

    v8(v6, v7);
  }

  else
  {
  }
}

uint64_t sub_21C719C1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &v30 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_21C6EDBAC(a1, v12, &qword_27CDEFEB8, &unk_21CBADD00);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = &qword_27CDEFEB8;
    v21 = &unk_21CBADD00;
    v22 = v12;
  }

  else
  {
    sub_21C716934(v12, v19, &qword_27CDEFEC0, &qword_21CBC32C0);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_21C6EDBAC(v19, v16, &qword_27CDEFEC0, &qword_21CBC32C0);

      v23 = sub_21CB85C44();
      (*(*(v23 - 8) + 32))(v5, v16, v23);
      v24 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
      sub_21C742C88(v5);
    }

    if (!*&v19[*(v13 + 48) + 8])
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v26 = *(Strong + 48);
        v27 = qword_27CDEA4C0;

        if (v27 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7073E8(v26, v33);

        v28 = v31;
        (*(v14 + 56))(v31, 1, 1, v13);
        swift_getKeyPath(byte_21CBADD38);
        sub_21C6EDBAC(v28, v32, &qword_27CDEFEB8, &unk_21CBADD00);
        sub_21CB81DC4();
        sub_21C6EA794(v28, &qword_27CDEFEB8, &unk_21CBADD00);
      }
    }

    v20 = &qword_27CDEFEC0;
    v21 = &qword_21CBC32C0;
    v22 = v19;
  }

  return sub_21C6EA794(v22, v20, v21);
}

void sub_21C71A118(uint64_t a1)
{
  sub_21C71A1D4(319, &qword_27CDF5338, &qword_27CDEABE0, &qword_21CB9FE10, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21C71A1D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMAccountPickerModel(uint64_t a1)
{
  result = qword_27CDEAEB0;
  if (!qword_27CDEAEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71A284(uint64_t a1)
{
  sub_21C6EE7A4(319);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDEAEC0, &qword_27CDEC1C0, &qword_21CBA3D50);
    if (v2 <= 0x3F)
    {
      sub_21C6F039C(319, &qword_27CDEAEC8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_21C6EA5CC(319, &qword_27CDEAED0, &qword_27CDEAED8, &unk_21CBA0730);
        if (v4 <= 0x3F)
        {
          sub_21C6F039C(319, &qword_27CDEAEE0, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_21C6EA5CC(319, &qword_27CDEAEE8, &qword_27CDEBEB0, &unk_21CBA5440);
            if (v6 <= 0x3F)
            {
              sub_21C6EA5CC(319, &qword_27CDEAEF0, &qword_27CDEAEF8, &unk_21CBA0740);
              if (v7 <= 0x3F)
              {
                sub_21C6EA5CC(319, &qword_27CDEAF00, &unk_27CDED260, &qword_21CBA1C60);
                if (v8 <= 0x3F)
                {
                  sub_21C6EA5CC(319, &qword_27CDEAF08, &qword_27CDEAF10, &qword_21CBA0750);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C71A650(uint64_t a1)
{
  type metadata accessor for PMAddAccountModel.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDEDD48, &unk_27CDF20B0, &unk_21CBA0090);
    if (v2 <= 0x3F)
    {
      sub_21C6F03E8(319, &qword_27CDEAEC8, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_21C6EA5CC(319, &qword_27CDEDD50, &qword_27CDEDD58, &unk_21CBA8970);
        if (v4 <= 0x3F)
        {
          sub_21C6EA5CC(319, &qword_27CDEDD60, &qword_27CDEBED0, &unk_21CBA1A60);
          if (v5 <= 0x3F)
          {
            sub_21C6F03E8(319, &qword_27CDEAEE0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_21C71A8E0(uint64_t a1)
{
  sub_21C6F0848(319);
  if (v1 <= 0x3F)
  {
    sub_21C6F03E8(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C71A9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for PMAccountPickerHistoryItem(uint64_t a1)
{
  result = qword_27CDF7418;
  if (!qword_27CDF7418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C71AA48(uint64_t a1)
{
  result = type metadata accessor for PMAccount(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C71AB00(uint64_t a1)
{
  result = sub_21CB81114();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21C71AB9C()
{
  swift_getKeyPath(aH_26);
  v4 = v0;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  if ((*(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__appDefaults);
    v2 = qword_27CDEA4C0;

    if (v2 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v3 = sub_21C710778(v1, v4);

    [v3 setBool:0 forKey:*MEMORY[0x277D49CD0]];
  }
}

uint64_t sub_21C71ACE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C71AD2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v21 = v17 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC60, &unk_21CBA00B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v20 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore;
  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  v24 = qword_27CE18778;
  sub_21CB86544();
  sub_21C7073E8(v8, v25);

  swift_beginAccess();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC70, &qword_27CDEAC60, &unk_21CBA00B0);
  sub_21CB81E04();

  v10 = *(v5 + 8);
  v17[1] = v5 + 8;
  v18 = v10;
  v10(v7, v4);
  swift_getKeyPath(asc_21CB9FF18);
  v25 = v1;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  v25 = v1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v25 = v1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21CB810E4();

  v11 = v20;
  v12 = *(v1 + v20);

  sub_21CB86544();
  sub_21C7073E8(v12, v25);

  swift_beginAccess();
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CB81E04();

  v18(v7, v4);
  swift_getKeyPath(asc_21CB9FF18);
  v25 = v1;
  sub_21CB810D4();

  v25 = v1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v25 = v1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21CB810E4();

  v13 = *(v1 + v11);

  sub_21CB86544();
  sub_21C7073E8(v13, v25);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v14 = v21;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC80, &qword_27CDEAC58, &qword_21CBA0EC0);
  v15 = v23;
  sub_21CB81E04();

  (*(v22 + 8))(v14, v15);
  swift_getKeyPath(asc_21CB9FF18);
  v25 = v1;
  sub_21CB810D4();

  v25 = v1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v25 = v1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21CB810E4();
}

uint64_t sub_21C71B46C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v6)
    {
      swift_getKeyPath(byte_21CBA00C8);
      v12[2] = v8;
      sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
      sub_21CB810D4();

      v9 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
      swift_beginAccess();
      sub_21C6EDBAC(v8 + v9, v5, &unk_27CDF20B0, &unk_21CBA0090);
      v10 = sub_21CB85C44();
      LODWORD(v9) = (*(*(v10 - 8) + 48))(v5, 1, v10);
      sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
      if (v9 != 1)
      {
        if ((*(v8 + 58) & 1) == 0)
        {
          KeyPath = swift_getKeyPath(byte_21CBA00F0);
          MEMORY[0x28223BE20](KeyPath);
          v12[-2] = v8;
          LOBYTE(v12[-1]) = 1;
          v12[1] = v8;
          sub_21CB810C4();
        }

        *(v8 + 58) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_21C71B710(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C71B720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C71B768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C71B7B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C71B824(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C71B898(v4, v3);
  }

  return result;
}

uint64_t sub_21C71B898(uint64_t a1, unsigned int a2)
{
  v21[3] = a2;
  v3 = v2;
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = sub_21CB85C44();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBA00C8, v15);
  v23 = v2;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  v18 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
  swift_beginAccess();
  sub_21C6EDBAC(v3 + v18, v12, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
  }

  (*(v14 + 32))(v17, v12, v13);
  if (sub_21C7A120C(v17, v22))
  {
    (*(v14 + 16))(v6, v17, v13);
    v20 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);

    sub_21C742C88(v6);

    (*(v14 + 56))(v9, 1, 1, v13);
    sub_21C7A05C0(v9);
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_21C71BCA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v6, v10);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath(asc_21CB9FF18);
  v10 = v1;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  v10 = v1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v10 = v1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21CB810E4();
}

uint64_t sub_21C71BFB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C71C010();
  }

  return result;
}

uint64_t sub_21C71C010()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v2 - 8);
  v144 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v145 = &v137 - v5;
  MEMORY[0x28223BE20](v6);
  v148 = &v137 - v7;
  MEMORY[0x28223BE20](v8);
  v147 = &v137 - v9;
  v153 = sub_21CB85CA4();
  v158 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v150 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v149 = &v137 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v13 - 8);
  v151 = &v137 - v14;
  v152 = type metadata accessor for PMAccount(0);
  v159 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v138 = (&v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v146 = &v137 - v17;
  MEMORY[0x28223BE20](v18);
  v143 = (&v137 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = (&v137 - v21);
  MEMORY[0x28223BE20](v23);
  v141 = &v137 - v24;
  MEMORY[0x28223BE20](v25);
  v142 = (&v137 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v137 - v28;
  MEMORY[0x28223BE20](v30);
  v139 = &v137 - v31;
  MEMORY[0x28223BE20](v32);
  v140 = (&v137 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC28, &qword_21CB9FF50);
  MEMORY[0x28223BE20](v34 - 8);
  v157 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v137 - v37;
  v39 = type metadata accessor for PMAppRootModel.StagedAccount(0);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = (&v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v44 = MEMORY[0x28223BE20](v43).n128_u64[0];
  v46 = (&v137 - v45);
  swift_getKeyPath(byte_21CB9FF58, v44);
  v47 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel___observationRegistrar;
  v162 = v1;
  v48 = sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  v155 = v47;
  v156 = v48;
  sub_21CB810D4();
  v49 = v1;

  v50 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__stagedAccount;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v50, v38, &qword_27CDEAC28, &qword_21CB9FF50);
  v154 = v40;
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    v51 = v38;
    return sub_21C6EA794(v51, &qword_27CDEAC28, &qword_21CB9FF50);
  }

  sub_21C7A3234(v38, v46, type metadata accessor for PMAppRootModel.StagedAccount);
  sub_21C7A316C(v46, v42, type metadata accessor for PMAppRootModel.StagedAccount);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = v39;
      v70 = *v42;
      v64 = v42[1];
      v39 = v49;
      v92 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
      v93 = qword_27CDEA4C0;

      if (v93 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(v92, v161);

      swift_getKeyPath(a0_13);
      swift_getKeyPath(byte_21CBA0048);
      sub_21CB81DB4();

      v94 = v161;
      v49 = *(v161 + 16);
      v95 = v159;
      if (!v49)
      {
LABEL_39:

LABEL_43:

        v72 = v46;
        return sub_21C7A31D4(v72, type metadata accessor for PMAppRootModel.StagedAccount);
      }

      v96 = 0;
      while (v96 < *(v94 + 16))
      {
        sub_21C7A316C(v94 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v96, v22, type metadata accessor for PMAccount);
        v97 = *v22 == v70 && v22[1] == v64;
        if (v97 || (sub_21CB86344() & 1) != 0)
        {

          v111 = v141;
          sub_21C7A3234(v22, v141, type metadata accessor for PMAccount);
          v112 = v142;
          sub_21C7A3234(v111, v142, type metadata accessor for PMAccount);
          v113 = type metadata accessor for PMAppSourceListModel.Source(0);
          v114 = v151;
          swift_storeEnumTagMultiPayload();
          (*(*(v113 - 8) + 56))(v114, 0, 1, v113);

          sub_21C742C88(v114);

          sub_21C8C7090(v112);
          v115 = v157;
          (*(v154 + 56))(v157, 1, 1, v29);
          KeyPath = swift_getKeyPath(byte_21CB9FF58);
          MEMORY[0x28223BE20](KeyPath);
          *(&v137 - 2) = v39;
          *(&v137 - 1) = v115;
          v161 = v39;
          sub_21CB810C4();

          sub_21C7A31D4(v112, type metadata accessor for PMAccount);
          sub_21C7A31D4(v46, type metadata accessor for PMAppRootModel.StagedAccount);
          v51 = v115;
          return sub_21C6EA794(v51, &qword_27CDEAC28, &qword_21CB9FF50);
        }

        ++v96;
        sub_21C7A31D4(v22, type metadata accessor for PMAccount);
        if (v49 == v96)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v158 = v46;
      v65 = *v42;
      v64 = v42[1];
      v66 = v49;
      v46 = v42[2];
      v49 = v42[3];
      v149 = v66;
      v67 = *&v66[OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState];
      v68 = qword_27CDEA4C0;

      if (v68 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(v67, v161);

      swift_getKeyPath(a0_13);
      swift_getKeyPath(byte_21CBA0048);
      sub_21CB81DB4();

      v69 = v161;
      v70 = *(v161 + 16);
      if (!v70)
      {
LABEL_19:

        v72 = v158;
        return sub_21C7A31D4(v72, type metadata accessor for PMAppRootModel.StagedAccount);
      }

      v71 = 0;
      while (v71 < *(v69 + 16))
      {
        sub_21C7A316C(v69 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v71, v29, type metadata accessor for PMAccount);
        if (sub_21C7A0BCC(v29, v65, v64, v46, v49))
        {

          v117 = v139;
          sub_21C7A3234(v29, v139, type metadata accessor for PMAccount);
          v118 = v140;
          sub_21C7A3234(v117, v140, type metadata accessor for PMAccount);
          v119 = v149;
          v120 = type metadata accessor for PMAppSourceListModel.Source(0);
          v121 = v151;
          swift_storeEnumTagMultiPayload();
          (*(*(v120 - 8) + 56))(v121, 0, 1, v120);

          sub_21C742C88(v121);

          sub_21C8C7090(v118);
          v122 = v157;
          (*(v154 + 56))(v157, 1, 1, v39);
          v123 = swift_getKeyPath(byte_21CB9FF58);
          MEMORY[0x28223BE20](v123);
          *(&v137 - 2) = v119;
          *(&v137 - 1) = v122;
          v161 = v119;
          sub_21CB810C4();

          sub_21C7A31D4(v118, type metadata accessor for PMAccount);
          sub_21C7A31D4(v158, type metadata accessor for PMAppRootModel.StagedAccount);
          goto LABEL_56;
        }

        ++v71;
        sub_21C7A31D4(v29, type metadata accessor for PMAccount);
        if (v70 == v71)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_59:
    swift_once();
LABEL_21:
    sub_21CB86544();
    sub_21C7072A8(v64, v161);

    swift_getKeyPath(a0_13);
    swift_getKeyPath(byte_21CBA0048);
    sub_21CB81DB4();

    v75 = v161;
    MEMORY[0x28223BE20](v74);
    *(&v137 - 2) = v70;
    v76 = v147;
    sub_21C968D04(sub_21C7A32B8, v75, v147);

    if ((*(v159 + 48))(v76, 1, v152) == 1)
    {
      sub_21C7A31D4(v46, type metadata accessor for PMAppRootModel.StagedAccount);
      sub_21C6EA794(v76, &unk_27CDEBE60, &unk_21CB9FF40);
      return v158[1](v70, v29);
    }

    else
    {
      v98 = v143;
      sub_21C7A3234(v76, v143, type metadata accessor for PMAccount);
      v99 = type metadata accessor for PMAppSourceListModel.Source(0);
      v100 = v151;
      swift_storeEnumTagMultiPayload();
      (*(*(v99 - 8) + 56))(v100, 0, 1, v99);

      sub_21C742C88(v100);

      sub_21C8C7090(v98);
      v101 = v157;
      (*(v154 + 56))(v157, 1, 1, v39);
      v102 = swift_getKeyPath(byte_21CB9FF58);
      MEMORY[0x28223BE20](v102);
      *(&v137 - 2) = v49;
      *(&v137 - 1) = v101;
      v161 = v49;
      sub_21CB810C4();

      sub_21C7A31D4(v98, type metadata accessor for PMAccount);
      sub_21C7A31D4(v46, type metadata accessor for PMAppRootModel.StagedAccount);
      sub_21C6EA794(v101, &qword_27CDEAC28, &qword_21CB9FF50);
      return v158[1](v149, v29);
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v70 = v149;
    v29 = v153;
    (v158[4])(v149, v42, v153);
    v64 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
    v73 = qword_27CDEA4C0;

    if (v73 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v78 = *v42;
    v77 = v42[1];
    v149 = v49;
    v79 = *(v49 + 16);
    swift_getKeyPath(byte_21CB9FF80);
    v80 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
    v161 = v79;
    v81 = sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810D4();

    v82 = *(v79 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
    if (!(v82 >> 61))
    {
      v147 = v81;
      v148 = v80;
      v150 = v78;
      v152 = v77;
      v153 = v39;
      v158 = v46;
      swift_getKeyPath(byte_21CB9FFA8);
      v161 = v82;
      sub_21C71ACE4(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);

      sub_21CB810D4();

      v161 = v82;
      swift_getKeyPath(byte_21CB9FFA8);
      sub_21CB810F4();

      v83 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs;
      v84 = *(v82 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);
      *(v82 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs) = MEMORY[0x277D84FA0];
      swift_getKeyPath(byte_21CB9FFA8);
      v161 = v82;
      sub_21CB810D4();

      v85 = *(v82 + v83);

      v86 = sub_21C7A2154(v84, v85);

      if ((v86 & 1) == 0)
      {
        v87 = *(v82 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
        swift_getKeyPath(byte_21CB9FFA8);
        v161 = v82;

        sub_21CB810D4();

        v88 = *(v82 + v83);

        v87(v84, v88);
      }

      v161 = v82;
      swift_getKeyPath(byte_21CB9FFA8);
      sub_21CB810E4();

      v89 = type metadata accessor for PMAppSourceListModel.Source(0);
      v90 = v151;
      swift_storeEnumTagMultiPayload();
      (*(*(v89 - 8) + 56))(v90, 0, 1, v89);

      sub_21C742C88(v90);

      if ((*(v79 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) & 0x8000000000000000) != 0)
      {
        *(v79 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = 0x8000000000000000;
      }

      else
      {
        v91 = swift_getKeyPath(aP_14);
        MEMORY[0x28223BE20](v91);
        *(&v137 - 2) = v79;
        *(&v137 - 1) = 0x8000000000000000;
        v161 = v79;
        sub_21CB810C4();
      }

      v128 = *&v149[OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__globalSearchModel];
      v129 = qword_27CDEA4C0;

      if (v129 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C81C2B8(v128, v161);

      v130 = v152;

      v131 = v150;
      sub_21C8AFCC4(v150, v130);

      sub_21C87FF18(v131, v130);
      swift_getKeyPath(aP_15);
      v161 = v82;
      sub_21CB810D4();

      v132 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts;
      if (*(*(v82 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts) + 16) == 1)
      {
        swift_getKeyPath(aP_15);
        v161 = v82;
        sub_21CB810D4();

        v133 = *(v82 + v132);
        if (*(v133 + 16))
        {
          v134 = v138;
          sub_21C7A316C(v133 + ((*(v159 + 80) + 32) & ~*(v159 + 80)), v138, type metadata accessor for PMAccount);
          sub_21C8C7090(v134);
          sub_21C7A31D4(v134, type metadata accessor for PMAccount);
        }
      }

      v122 = v157;
      (*(v154 + 56))(v157, 1, 1, v153);
      v135 = swift_getKeyPath(byte_21CB9FF58);
      MEMORY[0x28223BE20](v135);
      v136 = v149;
      *(&v137 - 2) = v149;
      *(&v137 - 1) = v122;
      v161 = v136;
      sub_21CB810C4();

      sub_21C7A31D4(v158, type metadata accessor for PMAppRootModel.StagedAccount);
LABEL_56:
      v51 = v122;
      return sub_21C6EA794(v51, &qword_27CDEAC28, &qword_21CB9FF50);
    }

    goto LABEL_43;
  }

  v54 = v150;
  v55 = v42;
  v56 = v153;
  (v158[4])(v150, v55, v153);
  v57 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
  v58 = qword_27CDEA4C0;

  if (v58 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v57, v161);

  swift_getKeyPath(a0_13);
  swift_getKeyPath(byte_21CBA0048);
  sub_21CB81DB4();

  v60 = v161;
  MEMORY[0x28223BE20](v59);
  *(&v137 - 2) = v54;
  v61 = v148;
  sub_21C968D04(sub_21C7A36B4, v60, v148);

  v62 = v159;
  v63 = v152;
  if ((*(v159 + 48))(v61, 1, v152) == 1)
  {
    sub_21C7A31D4(v46, type metadata accessor for PMAppRootModel.StagedAccount);
    sub_21C6EA794(v61, &unk_27CDEBE60, &unk_21CB9FF40);
    return v158[1](v54, v56);
  }

  else
  {
    v103 = v39;
    v104 = v146;
    sub_21C7A3234(v61, v146, type metadata accessor for PMAccount);
    v149 = v49;
    v105 = v63;
    v106 = *(v49 + 16);
    v107 = v145;
    sub_21C7A316C(v104, v145, type metadata accessor for PMAccount);
    (*(v62 + 56))(v107, 0, 1, v105);
    v108 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
    swift_beginAccess();
    v109 = v144;
    sub_21C6EDBAC(&v106[v108], v144, &unk_27CDEBE60, &unk_21CB9FF40);
    LOBYTE(v108) = sub_21C7A2AE4(v109, v107);
    sub_21C6EA794(v109, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v108)
    {
      v110 = swift_getKeyPath(byte_21CBA0068);
      MEMORY[0x28223BE20](v110);
      *(&v137 - 2) = v106;
      *(&v137 - 1) = v107;
      v160 = v106;
      sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
      sub_21CB810C4();
    }

    else
    {
      sub_21C6EDBAC(v107, v109, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C8CA328(v109);
    }

    v124 = v154;
    sub_21C6EA794(v107, &unk_27CDEBE60, &unk_21CB9FF40);
    v125 = v157;
    (*(v124 + 56))(v157, 1, 1, v103);
    v126 = swift_getKeyPath(byte_21CB9FF58);
    MEMORY[0x28223BE20](v126);
    v127 = v149;
    *(&v137 - 2) = v149;
    *(&v137 - 1) = v125;
    v160 = v127;
    sub_21CB810C4();

    sub_21C7A31D4(v146, type metadata accessor for PMAccount);
    sub_21C7A31D4(v46, type metadata accessor for PMAppRootModel.StagedAccount);
    sub_21C6EA794(v125, &qword_27CDEAC28, &qword_21CB9FF50);
    return v158[1](v150, v56);
  }
}

uint64_t sub_21C71DBBC(unint64_t *a1)
{
  v1 = *a1;

  return sub_21C718AB8(v1);
}

uint64_t sub_21C71DC34(unint64_t *a1)
{
  v1 = *a1;

  return sub_21C8C7C18(v1);
}

uint64_t sub_21C71DD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_21C7335A8(a2, a3);
  return sub_21C71B710(v3, v4);
}

uint64_t sub_21C71DD5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C71DD7C@<X0>(uint64_t a1@<X8>)
{
  sub_21C71DE60(a1);
  KeyPath = swift_getKeyPath(byte_21CBA6E90);
  type metadata accessor for PMAccountsNavigationContainerModel();
  sub_21C70E08C(&qword_27CDED538, type metadata accessor for PMAccountsNavigationContainerModel, &unk_21CBA6CC0);
  v3 = *(sub_21CB82134() + 16);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED540, &qword_21CBA6EB8);
  v5 = a1 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_21C71DE60@<X0>(uint64_t a4@<X8>)
{
  v51 = a4;
  v44 = type metadata accessor for PMSafariSettingsBreadcrumbs(0);
  MEMORY[0x28223BE20](v44);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED548, &qword_21CBA6EC0);
  MEMORY[0x28223BE20](v41);
  v7 = &v41 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED550, &qword_21CBA6EC8);
  MEMORY[0x28223BE20](v50);
  v45 = &v41 - v8;
  v43 = type metadata accessor for PMPasswordOptionsView(0);
  MEMORY[0x28223BE20](v43);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAppRootView(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED558, &qword_21CBA6ED0);
  MEMORY[0x28223BE20](v47);
  v49 = &v41 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED560, &qword_21CBA6ED8);
  MEMORY[0x28223BE20](v42);
  v16 = (&v41 - v15);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED568, &qword_21CBA6EE0);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - v17;
  type metadata accessor for PMAccountsNavigationContainerModel();
  sub_21C70E08C(&qword_27CDED538, type metadata accessor for PMAccountsNavigationContainerModel, &unk_21CBA6CC0);
  v18 = *(sub_21CB82134() + 24);
  sub_21C71E940(v18);

  if (!v18)
  {
    sub_21CB48A2C(v53);
    v26 = v53[1];
    *v16 = v53[0];
    v16[1] = v26;
    v27 = v53[3];
    v16[2] = v53[2];
    v16[3] = v27;
    swift_storeEnumTagMultiPayload();
    sub_21C82F854(v53, v52);
    sub_21C70E038();
    sub_21C70E08C(&qword_27CDED590, type metadata accessor for PMAppRootView, &unk_21CBA0380);
    v28 = v46;
    sub_21CB83494();
    sub_21C6EDBAC(v28, v49, &qword_27CDED568, &qword_21CBA6EE0);
    swift_storeEnumTagMultiPayload();
    sub_21C70DF7C();
    sub_21C70E0D4();
    sub_21CB83494();
    sub_21C70DE18(v53);
    return sub_21C6EA794(v28, &qword_27CDED568, &qword_21CBA6EE0);
  }

  if (v18 == 1)
  {
    sub_21CACE64C(v10);
    v24 = type metadata accessor for PMPasswordOptionsView;
    sub_21C71E950(v10, v7, type metadata accessor for PMPasswordOptionsView);
    swift_storeEnumTagMultiPayload();
    sub_21C70E08C(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView, &unk_21CBC6310);
    sub_21C70E08C(&qword_27CDED578, type metadata accessor for PMSafariSettingsBreadcrumbs, &unk_21CBA211C);
    v25 = v45;
    sub_21CB83494();
    sub_21C6EDBAC(v25, v49, &qword_27CDED550, &qword_21CBA6EC8);
    swift_storeEnumTagMultiPayload();
    sub_21C70DF7C();
    sub_21C70E0D4();
    sub_21CB83494();
    sub_21C6EA794(v25, &qword_27CDED550, &qword_21CBA6EC8);
    v22 = v10;
LABEL_10:
    v23 = v24;
    return sub_21C71E9C8(v22, v23);
  }

  if (v18 != 2)
  {
    type metadata accessor for PMAppRootModel(0);
    sub_21C70E08C(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);

    sub_21CB850A4();
    v30 = v11[5];
    *&v13[v30] = swift_getKeyPath(byte_21CBA6F20);
    v31 = &v13[v11[6]];
    type metadata accessor for PMSceneDelegate();
    sub_21C70E08C(&qword_27CDEACE0, type metadata accessor for PMSceneDelegate, &protocol conformance descriptor for PMSceneDelegate);
    *v31 = sub_21CB82B84();
    v31[1] = v32;
    v33 = v11[7];
    *&v13[v33] = swift_getKeyPath(aH_27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
    swift_storeEnumTagMultiPayload();
    v34 = v11[8];
    *&v13[v34] = swift_getKeyPath(a8_6);
    v35 = &v13[v11[9]];
    KeyPath = swift_getKeyPath(asc_21CBA6F98);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C704E4C(KeyPath, *&v53[0]);

    type metadata accessor for PMSecureWindowLockPolicyEnforcer(0);
    sub_21C70E08C(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer, &protocol conformance descriptor for PMSecureWindowLockPolicyEnforcer);
    v37 = sub_21CB82674();
    v39 = v38;

    *v35 = v37;
    v35[1] = v39;
    *&v13[v11[10]] = 0;
    v24 = type metadata accessor for PMAppRootView;
    sub_21C71E950(v13, v16, type metadata accessor for PMAppRootView);
    swift_storeEnumTagMultiPayload();
    sub_21C70E038();
    sub_21C70E08C(&qword_27CDED590, type metadata accessor for PMAppRootView, &unk_21CBA0380);
    v40 = v46;
    sub_21CB83494();
    sub_21C6EDBAC(v40, v49, &qword_27CDED568, &qword_21CBA6EE0);
    swift_storeEnumTagMultiPayload();
    sub_21C70DF7C();
    sub_21C70E0D4();
    sub_21CB83494();
    sub_21C71E9B8(v18);
    sub_21C6EA794(v40, &qword_27CDED568, &qword_21CBA6EE0);
    v22 = v13;
    goto LABEL_10;
  }

  *v5 = swift_getKeyPath(byte_21CBA6EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v19 = *(v44 + 20);
  v20 = [objc_opt_self() safari_browserDefaults];
  *(v5 + v19) = sub_21CB81E74();
  sub_21C71E950(v5, v7, type metadata accessor for PMSafariSettingsBreadcrumbs);
  swift_storeEnumTagMultiPayload();
  sub_21C70E08C(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView, &unk_21CBC6310);
  sub_21C70E08C(&qword_27CDED578, type metadata accessor for PMSafariSettingsBreadcrumbs, &unk_21CBA211C);
  v21 = v45;
  sub_21CB83494();
  sub_21C6EDBAC(v21, v49, &qword_27CDED550, &qword_21CBA6EC8);
  swift_storeEnumTagMultiPayload();
  sub_21C70DF7C();
  sub_21C70E0D4();
  sub_21CB83494();
  sub_21C6EA794(v21, &qword_27CDED550, &qword_21CBA6EC8);
  v22 = v5;
  v23 = type metadata accessor for PMSafariSettingsBreadcrumbs;
  return sub_21C71E9C8(v22, v23);
}

unint64_t sub_21C71E940(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_21C71E950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C71E9B8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_21C71E9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PMOnboardingRootView(uint64_t a1)
{
  result = qword_27CDEE280;
  if (!qword_27CDEE280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71EA74(uint64_t a1)
{
  sub_21C705CFC(319);
  if (v1 <= 0x3F)
  {
    sub_21C70DA18(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21C70DA18(319, &qword_27CDEBD50, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21C70DA18(319, &qword_27CDEE290, sub_21C71ECE8, type metadata accessor for PMDependency);
        if (v4 <= 0x3F)
        {
          sub_21C71ED34(319, &qword_27CDEE298, &qword_27CDEE2A0, &qword_21CBA98C8, type metadata accessor for PMDependency);
          if (v5 <= 0x3F)
          {
            sub_21C70DA18(319, &qword_27CDEACD0, type metadata accessor for PMNotificationManager, type metadata accessor for PMDependency);
            if (v6 <= 0x3F)
            {
              sub_21C71ED98();
              if (v7 <= 0x3F)
              {
                sub_21C71ED34(319, &qword_27CDEE2B0, &qword_27CDEE278, &qword_21CBA9888, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_21C70DA18(319, &qword_27CDEE2B8, type metadata accessor for UNAuthorizationStatus, MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
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
  }
}

unint64_t sub_21C71ECE8()
{
  result = qword_27CDECDD0[0];
  if (!qword_27CDECDD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CDECDD0);
  }

  return result;
}

void sub_21C71ED34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_21C71ED98()
{
  if (!qword_27CDEE2A8)
  {
    v0 = sub_21CB84F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE2A8);
    }
  }
}

uint64_t type metadata accessor for PMICloudTermsAndConditionsAlert(uint64_t a1)
{
  result = qword_27CDF3338;
  if (!qword_27CDF3338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71EE6C(uint64_t a1)
{
  sub_21C70DC98(319);
  if (v1 <= 0x3F)
  {
    sub_21C71EF60(319);
    if (v2 <= 0x3F)
    {
      sub_21C71ED98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21C71EF08()
{
  result = qword_27CDEAE00;
  if (!qword_27CDEAE00)
  {
    type metadata accessor for PMDebugSettingsManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAE00);
  }

  return result;
}

void sub_21C71EF60(uint64_t a1)
{
  if (!qword_27CDF3348)
  {
    type metadata accessor for PMDebugSettingsManager(255);
    sub_21C71EF08();
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF3348);
    }
  }
}

void sub_21C71F004(uint64_t a1)
{
  if (!qword_27CDF4910)
  {
    type metadata accessor for PMHandleInboundTOTPMigrationURLModel(255);
    v1 = sub_21CB850C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF4910);
    }
  }
}

void sub_21C71F05C(uint64_t a1)
{
  sub_21C71F004(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21C71F138()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5418, &qword_21CBBDF38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5410, &qword_21CBBDF30);
  sub_21C71F28C();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21C71F28C()
{
  result = qword_27CDF5440;
  if (!qword_27CDF5440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5410, &qword_21CBBDF30);
    sub_21C71F318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5440);
  }

  return result;
}

unint64_t sub_21C71F318()
{
  result = qword_27CDF5448;
  if (!qword_27CDF5448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5430, &qword_21CBBDF50);
    sub_21C6EADEC(&qword_27CDF5450, &qword_27CDF5428, &qword_21CBBDF48, MEMORY[0x277CE04B0]);
    sub_21C6EADEC(&qword_27CDF5458, &qword_27CDF5460, &qword_21CBBDF60, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5448);
  }

  return result;
}

unint64_t sub_21C71F3FC()
{
  result = qword_27CDEA9F0;
  if (!qword_27CDEA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEA9F0);
  }

  return result;
}

uint64_t type metadata accessor for PMAppTOTPMigrationModel(uint64_t a1)
{
  result = qword_27CDEB140;
  if (!qword_27CDEB140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C71F49C(uint64_t a1)
{
  result = sub_21CB81114();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMAppTOTPMigrationView(uint64_t a1)
{
  result = qword_27CDEB160;
  if (!qword_27CDEB160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71F5AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C71F610(uint64_t a1)
{
  sub_21C71F5AC(319, &qword_27CDEB170, type metadata accessor for PMAppTOTPMigrationModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C71F5AC(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C71F710()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4918, &qword_21CBBBCD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4920, &qword_21CBBBCE0);
  type metadata accessor for PMAppTOTPMigrationView(255);
  sub_21C6EADEC(&qword_27CDF4928, &qword_27CDF4918, &qword_21CBBBCD8, MEMORY[0x277CE04B0]);
  sub_21C6EADEC(&qword_27CDF4930, &qword_27CDF4920, &qword_21CBBBCE0, &unk_21CBBE7F0);
  sub_21C71F850(&qword_27CDF4938, type metadata accessor for PMAppTOTPMigrationView, &unk_21CBA1318);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C71F850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C71F8D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5380, &unk_21CBBDBF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB190, &qword_21CBA1380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB198, &qword_21CBA1388);
  sub_21C6EADEC(&qword_27CDF5388, &qword_27CDF5380, &unk_21CBBDBF8, MEMORY[0x277CE04B0]);
  sub_21C6EADEC(&qword_27CDEB1A0, &qword_27CDEB190, &qword_21CBA1380, &unk_21CBBE7F0);
  sub_21C71FA88();
  return swift_getOpaqueTypeConformance2();
}

void sub_21C71F9F4(uint64_t a1)
{
  if (!qword_27CDF53B0)
  {
    type metadata accessor for PMInboundOTPAuthURLModel(255);
    sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel, &unk_21CBBDA9C);
    v1 = sub_21CB82154();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF53B0);
    }
  }
}

unint64_t sub_21C71FA88()
{
  result = qword_27CDEB1A8;
  if (!qword_27CDEB1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB198, &qword_21CBA1388);
    sub_21C71FB40();
    sub_21C6EADEC(&qword_27CDEB1B8, &qword_27CDEB1C0, &unk_21CBA1390, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB1A8);
  }

  return result;
}

unint64_t sub_21C71FB40()
{
  result = qword_27CDEB1B0;
  if (!qword_27CDEB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB1B0);
  }

  return result;
}

uint64_t type metadata accessor for PMBulkOperationProgressView(uint64_t a1)
{
  result = qword_27CDEC378;
  if (!qword_27CDEC378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71FBE0(uint64_t a1)
{
  if (!qword_27CDEC398)
  {
    type metadata accessor for PMBulkOperationProgress(255);
    sub_21C705E68(&qword_27CDEC368, type metadata accessor for PMBulkOperationProgress, &unk_21CBB3118);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEC398);
    }
  }
}

void sub_21C71FC74(uint64_t a1)
{
  sub_21C7086F8(319);
  if (v1 <= 0x3F)
  {
    sub_21C71FBE0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C71FD14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC348, &qword_21CBA4078);
  type metadata accessor for PMBulkOperationProgress(255);
  type metadata accessor for PMBulkOperationProgressView(255);
  sub_21C6EADEC(&qword_27CDEC350, &qword_27CDEC348, &qword_21CBA4078, MEMORY[0x277CE04B0]);
  sub_21C705E68(&qword_27CDEC358, type metadata accessor for PMBulkOperationProgress, &unk_21CBB3150);
  sub_21C705E68(&qword_27CDEC360, type metadata accessor for PMBulkOperationProgressView, &unk_21CBA40E8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C71FE60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3350, &unk_21CBB77D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3358, &qword_21CBB77E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3360, &qword_21CBB77E8);
  sub_21C6EADEC(&qword_27CDF3368, &qword_27CDF3358, &qword_21CBB77E0, MEMORY[0x277CE04B0]);
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDF3370, &qword_27CDF3360, &qword_21CBB77E8, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C71FFD0(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for PMICloudTermsAndConditionsAlert(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C999028(a1, a2, v6);
}

uint64_t type metadata accessor for PMAppSourceList(uint64_t a1)
{
  result = qword_27CDF0DA8;
  if (!qword_27CDF0DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7200AC(uint64_t a1)
{
  sub_21C720280(319, &qword_27CDF0DB8, type metadata accessor for PMAppSourceListModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C705CFC(319);
    if (v2 <= 0x3F)
    {
      sub_21C70640C(319);
      if (v3 <= 0x3F)
      {
        sub_21C706378(319);
        if (v4 <= 0x3F)
        {
          sub_21C713384(319);
          if (v5 <= 0x3F)
          {
            sub_21C7202E4();
            if (v6 <= 0x3F)
            {
              sub_21C7086F8(319);
              if (v7 <= 0x3F)
              {
                sub_21C720280(319, &qword_27CDEC5D8, type metadata accessor for PMDebugSettingsManager, type metadata accessor for PMDependency);
                if (v8 <= 0x3F)
                {
                  sub_21C720280(319, &qword_27CDEE7F0, type metadata accessor for PMGlobalAnimationNamespaceContainer, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
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
  }
}

void sub_21C720280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C7202E4()
{
  if (!qword_27CDEB890)
  {
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB890);
    }
  }
}

uint64_t type metadata accessor for PMGroupInvitationsList(uint64_t a1)
{
  result = qword_27CDF3E50;
  if (!qword_27CDF3E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C720380(uint64_t a1)
{
  type metadata accessor for PMGroupInvitationsListModel(319);
  if (v1 <= 0x3F)
  {
    sub_21C707F4C(319);
    if (v2 <= 0x3F)
    {
      sub_21C72044C(319);
      if (v3 <= 0x3F)
      {
        sub_21C708274(319);
        if (v4 <= 0x3F)
        {
          sub_21C7205C4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C72044C(uint64_t a1)
{
  if (!qword_27CDF3E60)
  {
    type metadata accessor for PMDismissAction(255);
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF3E60);
    }
  }
}

uint64_t type metadata accessor for PMDismissAction(uint64_t a1)
{
  result = qword_27CDF2978;
  if (!qword_27CDF2978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7204F0(uint64_t a1)
{
  sub_21CB823B4();
  if (v1 <= 0x3F)
  {
    sub_21C720574();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C720574()
{
  if (!qword_27CDF2988)
  {
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2988);
    }
  }
}

void sub_21C7205C4()
{
  if (!qword_27CDED658)
  {
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDED658);
    }
  }
}

uint64_t type metadata accessor for PMAppRecentlyDeletedAccountsView(uint64_t a1)
{
  result = qword_27CDEF9D8;
  if (!qword_27CDEF9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C720660(uint64_t a1)
{
  sub_21C72079C(319);
  if (v1 <= 0x3F)
  {
    sub_21C70640C(319);
    if (v2 <= 0x3F)
    {
      sub_21C70DA7C(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
      if (v3 <= 0x3F)
      {
        sub_21C70DA7C(319, &qword_27CDEC860, MEMORY[0x277CDDAF0]);
        if (v4 <= 0x3F)
        {
          sub_21C7086F8(319);
          if (v5 <= 0x3F)
          {
            sub_21C7202E4();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21C72079C(uint64_t a1)
{
  if (!qword_27CDEF9E8)
  {
    type metadata accessor for PMRecentlyDeletedAccountsViewModel(255);
    sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEF9E8);
    }
  }
}

void sub_21C720830(uint64_t a1)
{
  type metadata accessor for PMRecentlyDeletedAccountsSource(319);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDF8190, &qword_27CDEFC78, &qword_21CBC7920);
    if (v2 <= 0x3F)
    {
      sub_21C6EA5CC(319, &qword_27CDF8198, &unk_27CDEBE60, &unk_21CB9FF40);
      if (v3 <= 0x3F)
      {
        sub_21C6EA5CC(319, &qword_27CDF6430, &qword_27CDF0138, &qword_21CBC0840);
        if (v4 <= 0x3F)
        {
          sub_21C6EA5CC(319, &qword_27CDF81A0, &qword_27CDF81A8, &qword_21CBC7C70);
          if (v5 <= 0x3F)
          {
            sub_21C6EA5CC(319, &qword_27CDF6438, &qword_27CDF6440, &qword_21CBC0848);
            if (v6 <= 0x3F)
            {
              sub_21C7135A4();
              if (v7 <= 0x3F)
              {
                sub_21C70821C(319);
                if (v8 <= 0x3F)
                {
                  sub_21C6EA5CC(319, &qword_27CDECD28, &qword_27CDECD30, &unk_21CBA5590);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21C720B74(uint64_t a1)
{
  v1 = type metadata accessor for PMSharingGroup(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21C720BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PMAppSecurityRecommendationsList(uint64_t a1)
{
  result = qword_27CDF0360;
  if (!qword_27CDF0360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C720C60(uint64_t a1)
{
  sub_21C720CE4(319);
  if (v1 <= 0x3F)
  {
    sub_21C7086F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C720CE4(uint64_t a1)
{
  if (!qword_27CDF0370)
  {
    type metadata accessor for PMAppSecurityRecommendationsModel(255);
    v1 = sub_21CB850C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF0370);
    }
  }
}

uint64_t type metadata accessor for PMVerificationCodesList(uint64_t a1)
{
  result = qword_27CDFA8C8;
  if (!qword_27CDFA8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C720D88(uint64_t a1)
{
  sub_21C720EFC(319, &qword_27CDFA8D8, type metadata accessor for PMVerificationCodesListModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C7210DC();
    if (v2 <= 0x3F)
    {
      sub_21C721088(319, &qword_27CDFA8E0, &qword_27CDFA8E8, &unk_21CBCF908);
      if (v3 <= 0x3F)
      {
        sub_21C720EFC(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_21C721088(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PMHandleInboundTOTPMigrationURLModel(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21C720EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMVerificationCodesListModel(uint64_t a1)
{
  result = qword_27CDFAAA0;
  if (!qword_27CDFAAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C720FAC(uint64_t a1)
{
  result = sub_21CB81114();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21C721088(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CB82074();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21C7210DC()
{
  if (!qword_27CDF4000)
  {
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF4000);
    }
  }
}