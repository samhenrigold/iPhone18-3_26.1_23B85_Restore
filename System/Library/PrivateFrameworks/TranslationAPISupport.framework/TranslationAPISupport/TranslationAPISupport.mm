void sub_26F36F818(void *a1)
{
  v2 = v1;
  v28[1] = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  v3 = [a1 makeXPCConnectionWithError_];
  v4 = v28[0];
  if (v3)
  {
    v5 = v3;
    v6 = v2 + OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_parent;
    v7 = *(v6 + *(type metadata accessor for AppExtensionHostView(0) + 20));
    v8 = v4;
    if ([v7 shouldAcceptWithConnection_])
    {
      v9 = v2 + OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange;
      v10 = *(v2 + OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
      if (v10)
      {
        v11 = *(v9 + 8);

        v10(1);
        sub_26F370E9C(v10, v11);
      }
    }

    else
    {
      if (qword_2806DB038 != -1)
      {
        swift_once();
      }

      v24 = sub_26F376750();
      __swift_project_value_buffer(v24, qword_2806DB2F0);
      v25 = sub_26F376730();
      v26 = sub_26F376930();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_26F36E000, v25, v26, "Host Connection failed", v27, 2u);
        MEMORY[0x27438D770](v27, -1, -1);
      }
    }
  }

  else
  {
    v12 = v28[0];
    v13 = sub_26F376630();

    swift_willThrow();
    if (qword_2806DB038 != -1)
    {
      swift_once();
    }

    v14 = sub_26F376750();
    __swift_project_value_buffer(v14, qword_2806DB2F0);
    v15 = v13;
    v16 = sub_26F376730();
    v17 = sub_26F376930();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = sub_26F376620();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&dword_26F36E000, v16, v17, "Host Connection failed: %@", v18, 0xCu);
      sub_26F370EAC(v19, &qword_2806DB148, &qword_26F3772C8);
      MEMORY[0x27438D770](v19, -1, -1);
      MEMORY[0x27438D770](v18, -1, -1);
    }

    v21 = v2 + OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange;
    v22 = *(v2 + OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
    if (v22)
    {
      v23 = *(v21 + 8);

      v22(0);

      sub_26F370E9C(v22, v23);
    }

    else
    {
    }
  }
}

id sub_26F36FCA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppExtensionHostView.HostCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26F36FD90(uint64_t a1)
{
  type metadata accessor for AppExtensionHostView(319);
  if (v1 <= 0x3F)
  {
    sub_26F36FE90(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F36FE90(uint64_t a1)
{
  if (!qword_2806DB0B8)
  {
    sub_26F376690();
    v1 = sub_26F376990();
    if (!v2)
    {
      atomic_store(v1, &qword_2806DB0B8);
    }
  }
}

uint64_t sub_26F36FEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DB0C0, &unk_26F377180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26F370020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DB0C0, &unk_26F377180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_26F3700E4(uint64_t a1)
{
  sub_26F370284(319, &qword_2806DB0E0, &qword_2806DB0E8, &unk_26F377730, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_26F370220();
    if (v2 <= 0x3F)
    {
      sub_26F370284(319, &qword_2806DB0F8, &unk_2806DB100, &qword_26F3771D0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26F370220()
{
  result = qword_2806DB0F0;
  if (!qword_2806DB0F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2806DB0F0);
  }

  return result;
}

void sub_26F370284(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_26F3702FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F376690();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F3703D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26F376690();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26F3704AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3704E4(uint64_t a1)
{
  result = sub_26F376690();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_26F37058C()
{
  v1 = v0;
  v2 = type metadata accessor for AppExtensionHostView(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F370D2C(v1, v5);
  v6 = type metadata accessor for AppExtensionHostView.HostCoordinator(0);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_connection] = 0;
  v8 = &v7[OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_identity;
  v10 = sub_26F376690();
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  sub_26F370D2C(v5, &v7[OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_parent]);
  v11 = &v5[*(v3 + 32)];
  v12 = *v11;
  v13 = v11[1];
  *v8 = *v11;
  v8[1] = v13;
  sub_26F370D90(v12, v13);
  v16.receiver = v7;
  v16.super_class = v6;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_26F370E04(v5, type metadata accessor for AppExtensionHostView);
  return v14;
}

uint64_t sub_26F3706F0(void *a1)
{
  v23 = sub_26F376690();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB138, &qword_26F3772B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB0E8, &unk_26F377730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB140, &qword_26F3772C0);
    sub_26F3767E0();
    v18 = v24;
    [v16 setDelegate_];

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DB0C0, &unk_26F377180);
    MEMORY[0x27438D190](v19);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return sub_26F370EAC(v10, &qword_2806DB0E8, &unk_26F377730);
    }

    else
    {
      sub_26F370DA0(v10, v14);
      (*(v2 + 16))(v4, v14, v23);

      sub_26F376950();
      v21 = sub_26F376960();
      (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
      sub_26F376970();

      return sub_26F370E04(v14, type metadata accessor for AppExtensionHostView.Configuration);
    }
  }

  else
  {
    result = sub_26F376A00();
    __break(1u);
  }

  return result;
}

id sub_26F370A8C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC5E68]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB140, &qword_26F3772C0);
  sub_26F3767E0();
  [v0 setDelegate_];

  return v0;
}

id sub_26F370B18@<X0>(void *a1@<X8>)
{
  result = sub_26F37058C();
  *a1 = result;
  return result;
}

uint64_t sub_26F370B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F370CE8(&qword_2806DB130, &unk_26F3771F0);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F370C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F370CE8(&qword_2806DB130, &unk_26F3771F0);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F370CA4(uint64_t a1)
{
  sub_26F370CE8(&qword_2806DB130, &unk_26F3771F0);
  sub_26F3767C0();
  __break(1u);
}

uint64_t sub_26F370CE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppExtensionHostView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26F370D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F370D90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26F370DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionHostView.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F370E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26F370E9C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26F370EAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TranslateFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TranslateFeatures(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_26F371000()
{
  result = qword_2806DB1C0;
  if (!qword_2806DB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB1C0);
  }

  return result;
}

uint64_t sub_26F37105C()
{
  sub_26F376A20();
  MEMORY[0x27438D370](0);
  return sub_26F376A40();
}

uint64_t sub_26F3710C8(uint64_t a1)
{
  sub_26F376A20();
  MEMORY[0x27438D370](0);
  return sub_26F376A40();
}

id sub_26F371130()
{
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v1 = *(v0 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__preflightConfiguration);

  return v1;
}

id sub_26F3711E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v4 = *(v3 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__preflightConfiguration);
  *a2 = v4;

  return v4;
}

void sub_26F3712A8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__preflightConfiguration;
  v5 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__preflightConfiguration);
  sub_26F37519C(0, &qword_2806DB228, 0x277CE1B48);
  v6 = v5;
  v7 = sub_26F376980();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
    sub_26F376640();
  }
}

uint64_t sub_26F37141C()
{
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v1 = *(v0 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__completion);
  sub_26F370D90(v1, *(v0 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__completion + 8));
  return v1;
}

uint64_t sub_26F3714DC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v4 = *(v3 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__completion);
  v5 = *(v3 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__completion + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26F374BF4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26F370D90(v4, v5);
}

uint64_t sub_26F3715D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_26F374BB8;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_26F370D90(v2, v3);
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376640();
  sub_26F370E9C(v5, v4);
}

uint64_t sub_26F371730@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v3 = OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__extensionConfiguration;
  swift_beginAccess();
  return sub_26F374FF0(v5 + v3, a1, &qword_2806DB0E8, &unk_26F377730);
}

uint64_t sub_26F371808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB0E8, &unk_26F377730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_26F374FF0(a2, &v9 - v5, &qword_2806DB0E8, &unk_26F377730);
  v7 = OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__extensionConfiguration;
  swift_beginAccess();
  sub_26F374C64(v6, a1 + v7);
  return swift_endAccess();
}

void sub_26F3718E4(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v3 = OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote;
  if (*(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote) != v2)
  {
    swift_getKeyPath();
    sub_26F376650();

    if (*(v1 + v3) == 1)
    {
      swift_getKeyPath();
      sub_26F376650();

      v4 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__preflightConfiguration);
      sub_26F3727B8(v4);
    }
  }
}

uint64_t sub_26F371A38()
{
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  return *(v0 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote);
}

uint64_t sub_26F371AE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  *a2 = *(v3 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote);
  return result;
}

void sub_26F371BB8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote) = v2;

    sub_26F3718E4(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
    sub_26F376640();
  }
}

void sub_26F371CF4(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote);
  *(a1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote) = a2;
  sub_26F3718E4(v3);
}

void sub_26F371D30(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__xpcConnection;
  v5 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__xpcConnection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
    sub_26F376640();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_26F37519C(0, &qword_2806DB248, 0x277CCAE80);
  v6 = v5;
  v7 = a1;
  v8 = sub_26F376980();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_26F371EC8(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB1C8, &qword_26F3773B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  if (a2)
  {
    v9 = qword_2806DB038;
    v10 = a2;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_26F376750();
    __swift_project_value_buffer(v11, qword_2806DB2F0);
    v12 = v10;
    v13 = sub_26F376730();
    v14 = sub_26F376930();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = a2;
      v17 = v12;
      _os_log_impl(&dword_26F36E000, v13, v14, "Got response from extension with error: %@", v15, 0xCu);
      sub_26F370EAC(v16, &qword_2806DB148, &qword_26F3772C8);
      MEMORY[0x27438D770](v16, -1, -1);
      MEMORY[0x27438D770](v15, -1, -1);

      v13 = v17;
    }

    else
    {
    }
  }

  else
  {
    if (qword_2806DB038 != -1)
    {
      swift_once();
    }

    v18 = sub_26F376750();
    __swift_project_value_buffer(v18, qword_2806DB2F0);
    v19 = a1;
    v13 = sub_26F376730();
    v20 = sub_26F376940();

    if (os_log_type_enabled(v13, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      *(v21 + 4) = v19;
      *v22 = a1;
      v23 = v19;
      _os_log_impl(&dword_26F36E000, v13, v20, "Extension UI completed preflight checks with configuration: %{public}@", v21, 0xCu);
      sub_26F370EAC(v22, &qword_2806DB148, &qword_26F3772C8);
      MEMORY[0x27438D770](v22, -1, -1);
      MEMORY[0x27438D770](v21, -1, -1);
    }
  }

  v24 = sub_26F3768E0();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_26F3768C0();
  v25 = a1;
  v26 = v3;
  v27 = a2;
  v28 = sub_26F3768B0();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v26;
  v29[5] = a1;
  v29[6] = a2;
  sub_26F37241C(0, 0, v8, &unk_26F3773C0, v29);
}

uint64_t sub_26F372250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  sub_26F3768C0();
  v6[7] = sub_26F3768B0();
  v8 = sub_26F376890();

  return MEMORY[0x2822009F8](sub_26F3722EC, v8, v7);
}

uint64_t sub_26F3722EC()
{
  v1 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v2 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__completion);
  if (v2)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__completion + 8);

    v2(v4, v3);
    sub_26F370E9C(v2, v5);
  }

  **(v0 + 24) = v2 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26F37241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB1C8, &qword_26F3773B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26F374FF0(a3, v25 - v10, &qword_2806DB1C8, &qword_26F3773B0);
  v12 = sub_26F3768E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F370EAC(v11, &qword_2806DB1C8, &qword_26F3773B0);
  }

  else
  {
    sub_26F3768D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26F376890();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26F376870() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB250, &qword_26F377570);
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

      sub_26F370EAC(a3, &qword_2806DB1C8, &qword_26F3773B0);

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

  sub_26F370EAC(a3, &qword_2806DB1C8, &qword_26F3773B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB250, &qword_26F377570);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_26F3727B8(uint64_t a1)
{
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v3 = *&v1[OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__xpcConnection];
  if (v3 && (v4 = [v3 remoteObjectProxy], sub_26F3769A0(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB220, &qword_26F3774A8), (swift_dynamicCast() & 1) != 0))
  {
    [v1 startRequestWithConfiguration_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2806DB038 != -1)
    {
      swift_once();
    }

    v5 = sub_26F376750();
    __swift_project_value_buffer(v5, qword_2806DB2F0);
    v6 = sub_26F376730();
    v7 = sub_26F376930();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26F36E000, v6, v7, "Unable to obtain remote object proxy", v8, 2u);
      MEMORY[0x27438D770](v8, -1, -1);
    }
  }
}

void *sub_26F3729A0()
{
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v1 = *(v0 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__xpcConnection);
  v2 = v1;
  return v1;
}

id sub_26F372A50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v4 = *(v3 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__xpcConnection);
  *a2 = v4;

  return v4;
}

uint64_t sub_26F372B10(void *a1)
{
  [a1 setExportedObject_];
  if (qword_2806DB030 != -1)
  {
    swift_once();
  }

  [a1 setExportedInterface_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_26F374778;
  v12[5] = v4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26F372F20;
  v12[3] = &block_descriptor;
  v5 = _Block_copy(v12);

  [a1 setInterruptionHandler_];
  _Block_release(v5);
  [a1 resume];
  v6 = a1;
  sub_26F371D30(a1);
  if (qword_2806DB038 != -1)
  {
    swift_once();
  }

  v7 = sub_26F376750();
  __swift_project_value_buffer(v7, qword_2806DB2F0);
  v8 = sub_26F376730();
  v9 = sub_26F376920();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26F36E000, v8, v9, "Host Connection established", v10, 2u);
    MEMORY[0x27438D770](v10, -1, -1);
  }

  return 1;
}

void sub_26F372D60(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CE1C58] code:14 userInfo:0];
  if (qword_2806DB038 != -1)
  {
    swift_once();
  }

  v2 = sub_26F376750();
  __swift_project_value_buffer(v2, qword_2806DB2F0);
  v3 = v1;
  v4 = sub_26F376730();
  v5 = sub_26F376930();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_26F36E000, v4, v5, "Connection interrupted, finishing translation with error %@", v6, 0xCu);
    sub_26F370EAC(v7, &qword_2806DB148, &qword_26F3772C8);
    MEMORY[0x27438D770](v7, -1, -1);
    MEMORY[0x27438D770](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = v3;
    sub_26F371EC8(0, v3);
  }
}

uint64_t sub_26F372F20(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26F372FB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB1C8, &qword_26F3773B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_26F3768E0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_26F3740FC(0, 0, v3, &unk_26F377700, v5);
}

uint64_t sub_26F3730B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26F3766C0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_26F3766E0();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_26F376700();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F37322C, 0, 0);
}

uint64_t sub_26F37322C()
{
  *(v0 + 40) = &type metadata for TranslateFeatures;
  *(v0 + 48) = sub_26F375058();
  *(v0 + 184) = sub_26F376680() & 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26F3766B0();
  sub_26F3766F0();
  sub_26F3766D0();
  v1 = sub_26F3750F8(&qword_2806DB238, MEMORY[0x277CC5D88], MEMORY[0x277CC5D90]);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26F37337C;
  v3 = *(v0 + 80);

  return MEMORY[0x282200308](v0 + 56, v3, v1);
}

uint64_t sub_26F37337C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_26F37377C;
  }

  else
  {
    v2 = sub_26F3734BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F3734E0()
{
  if (v0[21])
  {
    sub_26F3768C0();
    v0[22] = sub_26F3768B0();
    v2 = sub_26F376890();

    return MEMORY[0x2822009F8](sub_26F373680, v2, v1);
  }

  else
  {
    v4 = v0[17];
    v3 = v0[18];
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[13];
    v8 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];

    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);

    v12 = v0[1];

    return v12();
  }
}

void sub_26F373680()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 184);
  v4 = *(v0 + 72);

  if (v3)
  {
    v5 = 0xD00000000000002DLL;
  }

  else
  {
    v5 = 0xD000000000000034;
  }

  if (v3)
  {
    v6 = "nAPISupportExtension";
  }

  else
  {
    v6 = "_$observationRegistrar";
  }

  sub_26F3739D0(v1, v5, v6 | 0x8000000000000000, v4);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_26F3738F4, 0, 0);
  }
}

uint64_t sub_26F37377C()
{
  *(v0 + 64) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB240, &qword_26F377558);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_26F373810, 0, 0);
}

uint64_t sub_26F373810()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26F3738F4()
{
  v1 = sub_26F3750F8(&qword_2806DB238, MEMORY[0x277CC5D88], MEMORY[0x277CC5D90]);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26F37337C;
  v3 = *(v0 + 80);

  return MEMORY[0x282200308](v0 + 56, v3, v1);
}

uint64_t sub_26F3739D0(uint64_t a1, char **a2, uint64_t a3, char *a4)
{
  v57 = a4;
  v61 = a3;
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB0E8, &unk_26F377730);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v50 - v6;
  v56 = sub_26F376690();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F376720();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v50 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  v54 = &v50 - v16;
  if (qword_2806DB038 != -1)
  {
    swift_once();
  }

  v17 = sub_26F376750();
  v18 = __swift_project_value_buffer(v17, qword_2806DB2F0);

  v53 = v18;
  v19 = sub_26F376730();
  v20 = sub_26F376920();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134349056;
    *(v21 + 4) = *(a1 + 16);

    _os_log_impl(&dword_26F36E000, v19, v20, "Got ExtensionKit update about %{public}ld extensions", v21, 0xCu);
    MEMORY[0x27438D770](v21, -1, -1);
  }

  else
  {
  }

  v22 = *(a1 + 16);
  v23 = v60;
  if (v22)
  {
    v24 = *(v59 + 16);
    v25 = (v59 + 8);
    v26 = a1 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v27 = *(v59 + 72);
    while (1)
    {
      v24(v13, v26, v23);
      if (sub_26F376710() == v62 && v28 == v61)
      {
        break;
      }

      v29 = sub_26F376A10();

      if (v29)
      {
        goto LABEL_16;
      }

      v23 = v60;
      (*v25)(v13, v60);
      v26 += v27;
      if (!--v22)
      {
        goto LABEL_12;
      }
    }

LABEL_16:
    v38 = v59 + 32;
    v37 = *(v59 + 32);
    v39 = v50;
    v40 = v13;
    v41 = v60;
    v37(v50, v40, v60);
    v42 = v54;
    v37(v54, v39, v41);
    v24(v51, v42, v41);
    v43 = v55;
    sub_26F3766A0();
    v44 = v52;
    v34 = v58;
    (*(v52 + 16))(v58, v43, v56);
    v45 = type metadata accessor for AppExtensionHostView.Configuration(0);
    v46 = (v34 + *(v45 + 20));
    *v46 = 0xD00000000000001ALL;
    v46[1] = 0x800000026F377B00;
    (*(*(v45 - 8) + 56))(v34, 0, 1, v45);
    KeyPath = swift_getKeyPath();
    v62 = &v50;
    MEMORY[0x28223BE20](KeyPath);
    v48 = v57;
    *(&v50 - 2) = v57;
    *(&v50 - 1) = v34;
    v63 = v48;
    sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
    sub_26F376640();

    (*(v44 + 8))(v55, v56);
    (*(v38 - 24))(v54, v41);
  }

  else
  {
LABEL_12:
    v30 = sub_26F376730();
    v31 = sub_26F376930();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26F36E000, v30, v31, "Failed to find expected UI extension", v32, 2u);
      MEMORY[0x27438D770](v32, -1, -1);
    }

    v33 = type metadata accessor for AppExtensionHostView.Configuration(0);
    v34 = v58;
    (*(*(v33 - 8) + 56))(v58, 1, 1, v33);
    v35 = swift_getKeyPath();
    MEMORY[0x28223BE20](v35);
    v36 = v57;
    *(&v50 - 2) = v57;
    *(&v50 - 1) = v34;
    v63 = v36;
    sub_26F3750F8(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
    sub_26F376640();
  }

  return sub_26F370EAC(v34, &qword_2806DB0E8, &unk_26F377730);
}

uint64_t sub_26F3740FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB1C8, &qword_26F3773B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26F374FF0(a3, v22 - v9, &qword_2806DB1C8, &qword_26F3773B0);
  v11 = sub_26F3768E0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26F370EAC(v10, &qword_2806DB1C8, &qword_26F3773B0);
  }

  else
  {
    sub_26F3768D0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26F376890();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26F376870() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26F370EAC(a3, &qword_2806DB1C8, &qword_26F3773B0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F370EAC(a3, &qword_2806DB1C8, &qword_26F3773B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id LanguageSupportHostModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageSupportHostModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageSupportHostModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F374534()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26F374584(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F37464C;

  return sub_26F372250(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26F37464C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26F374740()
{
  MEMORY[0x27438D7F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F374798()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for LanguageSupportHostModel(uint64_t a1)
{
  result = qword_2806DB200;
  if (!qword_2806DB200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F37482C(uint64_t a1)
{
  sub_26F3749EC(319);
  if (v1 <= 0x3F)
  {
    sub_26F376670();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F3749EC(uint64_t a1)
{
  if (!qword_2806DB210)
  {
    type metadata accessor for AppExtensionHostView.Configuration(255);
    v1 = sub_26F376990();
    if (!v2)
    {
      atomic_store(v1, &qword_2806DB210);
    }
  }
}

void sub_26F374A48(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_26F371D30(v1);
}

void sub_26F374AA4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote);
  *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote) = *(v0 + 24);
  sub_26F3718E4(v2);
}

uint64_t sub_26F374B28()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__completion);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_26F370D90(v1, v2);
  return sub_26F370E9C(v4, v5);
}

uint64_t sub_26F374B80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F374BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

void sub_26F374C24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__preflightConfiguration);
  *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__preflightConfiguration) = v2;
  v4 = v2;
}

uint64_t sub_26F374C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB0E8, &unk_26F377730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F374CD4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26F374DC8;

  return v5(v2 + 32);
}

uint64_t sub_26F374DC8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id sub_26F374EDC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__completion];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__extensionConfiguration;
  v9 = type metadata accessor for AppExtensionHostView.Configuration(0);
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v3[OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote] = 0;
  *&v3[OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__xpcConnection] = 0;
  sub_26F376660();
  *&v3[OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__preflightConfiguration] = a1;
  v10 = *v7;
  v11 = v7[1];
  v12 = a1;
  sub_26F370D90(a2, a3);
  sub_26F370E9C(v10, v11);
  *v7 = a2;
  v7[1] = a3;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for LanguageSupportHostModel(0);
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_26F374FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26F375058()
{
  result = qword_2806DB230;
  if (!qword_2806DB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB230);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26F3750F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26F37515C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__xpcConnection);
  *(v1 + OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__xpcConnection) = v2;
  v4 = v2;
}

uint64_t sub_26F37519C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26F3751E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3752C0;

  return sub_26F374CD4(a1, v4);
}

id sub_26F3752C4()
{
  result = sub_26F3752E4();
  qword_2806DB258 = result;
  return result;
}

id sub_26F3752E4()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB260, &qword_26F3775E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26F377590;
  v3 = sub_26F37519C(0, &qword_2806DB268, 0x277CCA9B8);
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB270, &qword_26F3775E8);
  *(v2 + 32) = v3;
  v4 = sub_26F37519C(0, &qword_2806DB278, 0x277CBEAF8);
  *(v2 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB280, &qword_26F3775F0);
  *(v2 + 64) = v4;
  v5 = sub_26F37519C(0, &qword_2806DB288, 0x277CCACA8);
  *(v2 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB290, &qword_26F3775F8);
  *(v2 + 96) = v5;
  v6 = sub_26F376880();

  [v1 addObjectsFromArray_];

  sub_26F37519C(0, &qword_2806DB298, 0x277D82BB8);
  sub_26F375928();
  v7 = sub_26F376900();
  sub_26F3754FC(v7);

  v8 = sub_26F3768F0();

  [v0 setClasses:v8 forSelector:sel_didFinishWithFinalConfiguration_error_ argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t sub_26F3754FC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_26F3769C0())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB2A8, &unk_26F377600);
  v3 = sub_26F3769F0();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_26F3769B0();
  sub_26F37519C(0, &qword_2806DB298, 0x277D82BB8);
  sub_26F375928();
  result = sub_26F376910();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_26F3769D0();
    if (!v16)
    {
LABEL_34:
      sub_26F375990(v1);

      return v3;
    }

    *&v27 = v16;
    sub_26F37519C(0, &qword_2806DB298, 0x277D82BB8);
    swift_dynamicCast();
LABEL_25:
    sub_26F37519C(0, &qword_2806DB298, 0x277D82BB8);
    swift_dynamicCast();
    result = sub_26F3769E0();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id static LanguageSupportInterface.host.getter()
{
  if (qword_2806DB030 != -1)
  {
    swift_once();
  }

  v1 = qword_2806DB258;

  return v1;
}

unint64_t sub_26F375928()
{
  result = qword_2806DB2A0;
  if (!qword_2806DB2A0)
  {
    sub_26F37519C(255, &qword_2806DB298, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB2A0);
  }

  return result;
}

uint64_t sub_26F375998()
{
  v0 = sub_26F376750();
  __swift_allocate_value_buffer(v0, qword_2806DB2F0);
  __swift_project_value_buffer(v0, qword_2806DB2F0);
  return sub_26F376740();
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

uint64_t sub_26F375A7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3764FC(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376650();

  v4 = OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__extensionConfiguration;
  swift_beginAccess();
  return sub_26F376544(v3 + v4, a2);
}

uint64_t sub_26F375B44(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB0E8, &unk_26F377730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_26F376544(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_26F3764FC(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
  sub_26F376640();

  return sub_26F3765B4(v6);
}

void PreflightHostingView.init(preflightConfiguration:completion:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  objc_allocWithZone(type metadata accessor for LanguageSupportHostModel(0));
  v8 = a1;
  v9 = sub_26F374EDC(v8, a2, a3);
  sub_26F376820();
  sub_26F370E9C(a2, a3);

  a4[1] = v10;
  a4[2] = v11;
}

id PreflightHostingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB2B0, &qword_26F377610);
  sub_26F376840();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB2B8, &qword_26F377640);
  sub_26F376860();

  sub_26F376830();
  v6 = swift_allocObject();
  *(v6 + 2) = v4;
  *(v6 + 3) = v3;
  *(v6 + 4) = v5;
  v7 = type metadata accessor for AppExtensionHostView(0);
  *(a1 + *(v7 + 20)) = v15;
  v8 = (a1 + *(v7 + 24));
  *v8 = sub_26F3761F8;
  v8[1] = v6;
  v9 = swift_allocObject();
  *(v9 + 2) = v4;
  *(v9 + 3) = v3;
  *(v9 + 4) = v5;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB2C0, &qword_26F377648) + 36));
  *v10 = sub_26F37624C;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  swift_retain_n();
  v11 = v4;
  v14 = v3;
  v12 = v11;

  return v14;
}

void sub_26F375F60(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB2B0, &qword_26F377610);
  sub_26F376830();
  v5 = v7[OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote];
  if (v5 == v4)
  {
    v7[OBJC_IVAR____TtC21TranslationAPISupport24LanguageSupportHostModel__isConnectedToRemote] = v4;
    sub_26F3718E4(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3764FC(&qword_2806DB218, type metadata accessor for LanguageSupportHostModel, &protocol conformance descriptor for LanguageSupportHostModel);
    sub_26F376640();
  }
}

uint64_t sub_26F3760B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB1C8, &qword_26F3773B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v12[2] = a2;
  v12[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB2B0, &qword_26F377610);
  sub_26F376830();
  v8 = v12[1];
  v9 = sub_26F3768E0();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  sub_26F3740FC(0, 0, v7, &unk_26F377700, v10);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F376288(uint64_t *a1, int a2)
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

uint64_t sub_26F3762D0(uint64_t result, int a2, int a3)
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

unint64_t sub_26F376324()
{
  result = qword_2806DB2C8;
  if (!qword_2806DB2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DB2C0, &qword_26F377648);
    sub_26F3764FC(&qword_2806DB128, type metadata accessor for AppExtensionHostView, &unk_26F377268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB2C8);
  }

  return result;
}

uint64_t sub_26F3763E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26F376420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F37464C;

  return sub_26F3730B4(a1, v4, v5, v6);
}

uint64_t sub_26F3764FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F376544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB0E8, &unk_26F377730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3765B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB0E8, &unk_26F377730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}