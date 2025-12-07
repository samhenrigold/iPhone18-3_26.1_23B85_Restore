id _initWSKLOG(uint64_t a1)
{
  if (_initWSKLOG_onceToken[0] != -1)
  {
    _initWSKLOG_cold_1();
  }

  v2 = _WSKLOG;

  return v2;
}

void WiFiDisableMISState()
{
  v4 = 0;
  v0 = _MISAttach(&v4);
  if (v0)
  {
    WiFiDisableMISState_cold_1(v0);
  }

  else
  {
    v1 = _MISSetGlobalServiceState(v4, 1022);
    if (v1)
    {
      WiFiDisableMISState_cold_2(v1);
    }

    else
    {
      v2 = _MISSetGlobalServiceState(v4, 1023);
      if (v2)
      {
        WiFiDisableMISState_cold_3(v2);
      }

      else
      {
        _MISDetach(v4);
        v3 = WiFiManagerClientCreate();
        WiFiManagerClientSetMISState();
        if (v3)
        {
          CFRelease(v3);
        }
      }
    }
  }
}

void WiFiManagerSetAutoJoinEnabled(uint64_t a1)
{
  v1 = a1;
  v2 = _initWSKLOG(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WiFiManagerSetAutoJoinEnabled_cold_1(v1, v2);
  }

  v3 = WiFiManagerClientCreate();
  if (!v1)
  {
    WiFiManagerClientDisable();
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  WiFiManagerClientEnable();
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }
}

uint64_t ___initWSKLOG_block_invoke()
{
  _WSKLOG = os_log_create("com.apple.wifi.wfsettingskit", "MobileWiFi");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

uint64_t sub_2740972A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274099008();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274097308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274099008();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274097388(uint64_t a1)
{
  sub_274099008();
  sub_2741C74CC();
  __break(1u);
}

uint64_t sub_2740973B8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2741C73CC();

    return sub_2741C6E6C();
  }

  else
  {
    sub_2741C6EEC();
    swift_getWitnessTable();
    sub_2741C735C();
    sub_2741C6E6C();
    sub_2741C839C();
    swift_getWitnessTable();
    sub_2741C6EEC();
    swift_getWitnessTable();
    sub_2741C735C();
    return sub_2741C6E6C();
  }
}

uint64_t sub_27409751C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2741C73CC();
    sub_2741C6E6C();
  }

  else
  {
    sub_2741C6EEC();
    swift_getWitnessTable();
    sub_2741C735C();
    sub_2741C6E6C();
    sub_2741C839C();
    swift_getWitnessTable();
    sub_2741C6EEC();
    swift_getWitnessTable();
    sub_2741C735C();
    sub_2741C6E6C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274097720@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 33) = a2;
  sub_27409861C(a3, a4, a5 & 1);
}

uint64_t sub_27409777C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_27409861C(a3, a4, a5 & 1);
}

uint64_t sub_2740977E0(uint64_t a1, id *a2)
{
  result = sub_2741C7E5C();
  *a2 = 0;
  return result;
}

uint64_t sub_274097858(uint64_t a1, id *a2)
{
  v3 = sub_2741C7E6C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2740978D8@<X0>(uint64_t *a1@<X8>)
{
  sub_2741C7E7C();
  v2 = sub_2741C7E3C();

  *a1 = v2;
  return result;
}

uint64_t sub_27409791C()
{
  v0 = sub_2741C7E7C();
  v1 = MEMORY[0x2743E6010](v0);

  return v1;
}

uint64_t sub_274097958(uint64_t a1)
{
  sub_2741C7E7C();
  sub_2741C7F0C();
}

uint64_t sub_2740979AC(uint64_t a1)
{
  sub_2741C7E7C();
  sub_2741C87DC();
  sub_2741C7F0C();
  v1 = sub_2741C880C();

  return v1;
}

uint64_t sub_274097A20(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2741C6A9C();
}

BOOL sub_274097B18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_274097B48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_274097B74@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_274097C60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_274097DE8(void *a1, uint64_t *a2)
{
  v2 = sub_2741C7E7C();
  v4 = v3;
  if (v2 == sub_2741C7E7C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2741C86DC();
  }

  return v7 & 1;
}

uint64_t sub_274097E80(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D40, type metadata accessor for LAError, &unk_2741CAE50);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_274097EEC(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D40, type metadata accessor for LAError, &unk_2741CAE50);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_274097F58(void *a1, uint64_t a2)
{
  v4 = sub_274098720(&qword_280937D40, type metadata accessor for LAError, &unk_2741CAE50);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_27409800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_274098720(&qword_280937D40, type metadata accessor for LAError, &unk_2741CAE50);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_274098088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2741C87DC();
  sub_2741C7D9C();
  return sub_2741C880C();
}

uint64_t sub_2740980E8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_27416D2C8();

  *a2 = v3;
  return result;
}

uint64_t sub_274098128(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2741C6A9C();
}

uint64_t sub_274098194(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2741C6A9C();
}

uint64_t sub_274098200@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2741C7E3C();

  *a2 = v3;
  return result;
}

uint64_t sub_274098248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C7E7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274098274(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_2741CAF88);
  v3 = sub_274098720(&qword_280937D70, type metadata accessor for OpenExternalURLOptionsKey, &unk_2741CABFC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2740983EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2741C87DC();
  swift_getWitnessTable();
  sub_2741C6AAC();
  return sub_2741C880C();
}

uint64_t sub_274098450(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D08, type metadata accessor for LAError, &unk_2741CAE0C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2740984BC(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D08, type metadata accessor for LAError, &unk_2741CAE0C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_27409852C(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D40, type metadata accessor for LAError, &unk_2741CAE50);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_274098598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274098720(&qword_280937D40, type metadata accessor for LAError, &unk_2741CAE50);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_27409861C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_274098720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274098D1C()
{
  result = qword_280937D30;
  if (!qword_280937D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D30);
  }

  return result;
}

void sub_274098F48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_274098FA8()
{
  result = qword_280937D90;
  if (!qword_280937D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D90);
  }

  return result;
}

unint64_t sub_274099008()
{
  result = qword_280937D98;
  if (!qword_280937D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D98);
  }

  return result;
}

uint64_t PasswordAlertResult.username.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PasswordAlertResult.username.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PasswordAlertResult.password.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PasswordAlertResult.password.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PasswordAlertResult.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PasswordAlertResult(0) + 28);

  return sub_274099294(v3, a1);
}

uint64_t type metadata accessor for PasswordAlertResult(uint64_t a1)
{
  result = qword_280937DA8;
  if (!qword_280937DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274099294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t PasswordAlertResult.identity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PasswordAlertResult(0) + 28);

  return sub_274099390(a1, v3);
}

uint64_t sub_274099390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PasswordAlertResult.rememberThisNetwork.setter(char a1)
{
  result = type metadata accessor for PasswordAlertResult(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_2740994F0()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_274099520()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_274099580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_274099650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_274099700(uint64_t a1)
{
  sub_2740997A4();
  if (v1 <= 0x3F)
  {
    sub_2740997F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2740997A4()
{
  if (!qword_280937DB8)
  {
    v0 = sub_2741C839C();
    if (!v1)
    {
      atomic_store(v0, &qword_280937DB8);
    }
  }
}

void sub_2740997F4(uint64_t a1)
{
  if (!qword_280937DC0)
  {
    type metadata accessor for EnterpriseIdentity(255);
    v1 = sub_2741C839C();
    if (!v2)
    {
      atomic_store(v1, &qword_280937DC0);
    }
  }
}

uint64_t sub_27409984C(char a1, uint64_t a2, __int16 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DC8, &qword_2741CB228);
  v5 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v5);

  v6 = 1702195828;
  if (a1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v7, v8);

  MEMORY[0x2743E5FB0](0x6564646948736920, 0xEB00000000203A6ELL);

  sub_2741C856C();

  if ((a3 & 0x100) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if ((a3 & 0x100) != 0)
  {
    v6 = 0x65736C6166;
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x2743E5FB0](v9, v10);

  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741D8BB0);

  MEMORY[0x2743E5FB0](v6, v11);

  MEMORY[0x2743E5FB0](0x65626D656D657220, 0xEB00000000203A72);

  if (a3)
  {
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    sub_274099AE0();
    v13 = sub_2741C83CC();
    v12 = v14;
  }

  MEMORY[0x2743E5FB0](v13, v12);

  MEMORY[0x2743E5FB0](0x6C656E6E61686320, 0xEA0000000000203ALL);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_274099AB4()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_27409984C(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

unint64_t sub_274099AE0()
{
  result = qword_280937DD0;
  if (!qword_280937DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937DD0);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AssociationSettings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AssociationSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_274099BF4()
{
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
}

uint64_t sub_274099CAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_274099D98(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_2741568A0(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
    sub_2741C69FC();
  }
}

uint64_t sub_274099EE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_274099F48()
{
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();
}

uint64_t sub_274099FEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 32);
}

uint64_t sub_27409A0C4(uint64_t a1)
{

  v4 = sub_2741568A0(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27409A218@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_27409D4E4(v1 + 48, a1);
}

uint64_t sub_27409A2D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_27409D4E4(v3 + 48, a2);
}

uint64_t sub_27409A398(uint64_t a1, uint64_t *a2)
{
  sub_27409D4E4(a1, v15);
  v3 = *a2;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  MEMORY[0x28223BE20](v4, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  v8 = *v6;
  v14[3] = type metadata accessor for WiFiSystemConfiguration();
  v14[4] = &off_2883289C0;
  v14[0] = v8;
  swift_getKeyPath();
  v11 = v3;
  v12 = v14;
  v13 = v3;
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C69FC();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_27409A534(uint64_t a1, uint64_t a2)
{
  sub_27409D4E4(a2, v13);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  MEMORY[0x28223BE20](v3, v3);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v11 = type metadata accessor for WiFiSystemConfiguration();
  v12 = &off_2883289C0;
  *&v10 = v7;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
  sub_27409D118(&v10, a1 + 48);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t KnownNetworksViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  KnownNetworksViewModel.init()();
  return v0;
}

void *KnownNetworksViewModel.init()()
{
  v1 = v0;
  sub_2741C6A3C();
  v2 = type metadata accessor for SystemConfigurationState(0);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0;
  sub_2741C6A3C();
  v1[5] = v3;
  v19[3] = v2;
  v19[4] = sub_27409CFC4(&qword_280937DE0, type metadata accessor for SystemConfigurationState, &unk_2741CE4F4);
  v19[0] = v3;
  v4 = qword_280937B98;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for WiFiSystemConfiguration();
  v6 = swift_allocObject();

  v8 = sub_27409CBB0(v7, v19, v6);

  v1[6] = v8;
  v1[9] = v5;
  v1[10] = &off_2883289C0;

  sub_2740D7168(v9);

  v10 = v1[5];
  swift_getKeyPath();
  v19[0] = v10;
  sub_27409CFC4(&qword_280937DE8, type metadata accessor for SystemConfigurationState, &unk_2741CE4D8);

  sub_2741C6A0C();

  v11 = *(v10 + 16);

  v1[2] = v11;
  v12 = v1[5];
  swift_getKeyPath();
  v19[0] = v12;

  sub_2741C6A0C();

  v13 = *(v12 + 16);

  v14 = sub_2741B27E4(v13);

  v19[0] = v14;

  sub_27409B090(v19);

  v1[3] = v19[0];
  v15 = v1[5];
  swift_getKeyPath();
  v19[0] = v15;

  sub_2741C6A0C();

  v16 = *(v15 + 16);

  v17 = sub_2741B2998(v16);

  v19[0] = v17;

  sub_27409B090(v19);

  v1[4] = v19[0];
  return v1;
}

uint64_t sub_27409AAC0(uint64_t a1)
{
  v3 = type metadata accessor for KnownNetwork(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_2741C856C();

  v14 = 0xD000000000000012;
  v15 = 0x80000002741D8C80;
  v13[1] = v3;
  v8 = MEMORY[0x2743E6080](a1, v3);
  MEMORY[0x2743E5FB0](v8);

  sub_2740CB460(v14, v15);

  v10 = *(a1 + 16);
  if (v10)
  {
    v13[0] = "Removing networks ";
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    swift_beginAccess();
    v12 = *(v4 + 72);
    do
    {
      sub_27409CF58(v11, v7);
      swift_getKeyPath();
      v13[6] = v1;
      sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
      sub_2741C6A0C();

      __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
      sub_274198718(v7);
      result = sub_27409D050(v7);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

char *KnownNetworksViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit22KnownNetworksViewModel___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t KnownNetworksViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit22KnownNetworksViewModel___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_27409AFB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937DE8, type metadata accessor for SystemConfigurationState, &unk_2741CE4D8);
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
}

uint64_t sub_27409B090(uint64_t *a1)
{
  v2 = *(type metadata accessor for KnownNetwork(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2741B4B34(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_27409B138(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_27409B138(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for KnownNetwork(0);
        v6 = sub_2741C801C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for KnownNetwork(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_27409B514(v8, v9, a1, v4);
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
    return sub_27409B264(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27409B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = type metadata accessor for KnownNetwork(0);
  v9 = MEMORY[0x28223BE20](v46, v8);
  v45 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v36 - v13;
  result = MEMORY[0x28223BE20](v12, v15);
  v19 = &v36 - v18;
  v38 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v43 = -v21;
    v44 = v20;
    v23 = a1 - a3;
    v37 = v21;
    v24 = v20 + v21 * a3;
    v47 = &v36 - v18;
LABEL_6:
    v41 = v22;
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v25 = v22;
    while (1)
    {
      sub_27409CF58(v24, v19);
      sub_27409CF58(v25, v14);
      sub_27411741C();
      v26 = sub_2741C7ECC();
      v28 = v27;

      v29 = v14;
      sub_27411741C();
      v30 = sub_2741C7ECC();
      v32 = v31;

      if (v26 == v30 && v28 == v32)
      {

        v14 = v29;
        sub_27409D050(v29);
        v19 = v47;
        result = sub_27409D050(v47);
LABEL_5:
        a3 = v42 + 1;
        v22 = v41 + v37;
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_6;
      }

      v33 = sub_2741C86DC();

      v14 = v29;
      sub_27409D050(v29);
      v19 = v47;
      result = sub_27409D050(v47);
      if ((v33 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v34 = v45;
      sub_27409D240(v24, v45);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_27409D240(v34, v25);
      v25 += v43;
      v24 += v43;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27409B514(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v155 = a1;
  v174 = type metadata accessor for KnownNetwork(0);
  v164 = *(v174 - 8);
  v7 = MEMORY[0x28223BE20](v174, v6);
  v159 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v173 = (&v152 - v11);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v177 = &v152 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v152 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v168 = &v152 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v167 = &v152 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  result = MEMORY[0x28223BE20](v26, v27);
  v166 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_137:
    a3 = *v155;
    if (!*v155)
    {
      goto LABEL_175;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_139:
      v184 = v33;
      v147 = *(v33 + 2);
      if (v147 >= 2)
      {
        while (*v166)
        {
          v148 = *&v33[16 * v147];
          v149 = *&v33[16 * v147 + 24];
          v150 = v169;
          sub_27409C4FC(*v166 + *(v164 + 72) * v148, (*v166 + *(v164 + 72) * *&v33[16 * v147 + 16]), (*v166 + *(v164 + 72) * v149), a3);
          v169 = v150;
          if (v150)
          {
          }

          if (v149 < v148)
          {
            goto LABEL_162;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_2741B412C(v33);
          }

          if (v147 - 2 >= *(v33 + 2))
          {
            goto LABEL_163;
          }

          v151 = &v33[16 * v147];
          *v151 = v148;
          *(v151 + 1) = v149;
          v184 = v33;
          result = sub_2741B40A0(v147 - 1);
          v33 = v184;
          v147 = *(v184 + 2);
          if (v147 <= 1)
          {
          }
        }

        goto LABEL_173;
      }
    }

LABEL_169:
    result = sub_2741B412C(v33);
    v33 = result;
    goto LABEL_139;
  }

  v153 = &v152 - v29;
  v154 = v30;
  v152 = a4;
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v170 = 0x80000002741D8CE0;
  v175 = v18;
  while (1)
  {
    v34 = v32;
    v35 = v32 + 1;
    v165 = v33;
    if (v32 + 1 < v31)
    {
      v161 = v31;
      v36 = *v166;
      v37 = *(v164 + 72);
      v163 = v32 + 1;
      v38 = v153;
      sub_27409CF58(v36 + v37 * v35, v153);
      v156 = v34;
      v171 = v37;
      v39 = v154;
      sub_27409CF58(v36 + v37 * v34, v154);
      sub_27411741C();
      v40 = sub_2741C7ECC();
      v42 = v41;

      sub_27411741C();
      v43 = sub_2741C7ECC();
      v45 = v44;

      if (v40 == v43 && v42 == v45)
      {
        LODWORD(v162) = 0;
      }

      else
      {
        LODWORD(v162) = sub_2741C86DC();
      }

      sub_27409D050(v39);
      result = sub_27409D050(v38);
      v46 = v156 + 2;
      v47 = v171 * (v156 + 2);
      v48 = v36 + v47;
      v49 = v163;
      v50 = (v171 * v163);
      v51 = v36 + v171 * v163;
      do
      {
        v55 = v46;
        v53 = v49;
        a3 = v50;
        v33 = v47;
        if (v46 >= v161)
        {
          break;
        }

        v172 = v49;
        v176 = v46;
        sub_27409CF58(v48, v167);
        sub_27409CF58(v51, v168);
        sub_27411741C();
        v56 = sub_2741C7ECC();
        v58 = v57;

        sub_27411741C();
        v59 = sub_2741C7ECC();
        v61 = v60;

        if (v56 == v59 && v58 == v61)
        {
          v52 = 0;
        }

        else
        {
          v52 = sub_2741C86DC();
        }

        v18 = v175;
        v53 = v172;

        sub_27409D050(v168);
        result = sub_27409D050(v167);
        v54 = v162 ^ v52;
        v55 = v176;
        v46 = v176 + 1;
        v48 += v171;
        v51 += v171;
        v49 = v53 + 1;
        v50 = (a3 + v171);
        v47 = &v33[v171];
      }

      while ((v54 & 1) == 0);
      if (v162)
      {
        v34 = v156;
        if (v55 < v156)
        {
          goto LABEL_166;
        }

        if (v156 >= v55)
        {
          v35 = v55;
          v33 = v165;
          goto LABEL_32;
        }

        v62 = v156 * v171;
        do
        {
          if (v34 != v53)
          {
            v64 = *v166;
            if (!*v166)
            {
              goto LABEL_172;
            }

            sub_27409D240(v64 + v62, v159);
            if (v62 < a3 || v64 + v62 >= &v33[v64])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_27409D240(v159, a3 + v64);
          }

          ++v34;
          a3 = (a3 - v171);
          v33 -= v171;
          v62 += v171;
        }

        while (v34 < v53--);
      }

      v35 = v55;
      v33 = v165;
      v34 = v156;
    }

LABEL_32:
    v65 = v166[1];
    if (v35 < v65)
    {
      if (__OFSUB__(v35, v34))
      {
        goto LABEL_165;
      }

      if (v35 - v34 < v152)
      {
        break;
      }
    }

LABEL_85:
    if (v35 < v34)
    {
      goto LABEL_164;
    }

    v99 = v35;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_274176EC4(0, *(v33 + 2) + 1, 1, v33);
      v33 = result;
    }

    v101 = *(v33 + 2);
    v100 = *(v33 + 3);
    v102 = v101 + 1;
    if (v101 >= v100 >> 1)
    {
      result = sub_274176EC4((v100 > 1), v101 + 1, 1, v33);
      v32 = v99;
      v33 = result;
    }

    else
    {
      v32 = v99;
    }

    *(v33 + 2) = v102;
    v103 = &v33[16 * v101];
    *(v103 + 4) = v34;
    *(v103 + 5) = v32;
    a3 = *v155;
    if (!*v155)
    {
      goto LABEL_174;
    }

    if (v101)
    {
      while (1)
      {
        v104 = v102 - 1;
        if (v102 >= 4)
        {
          break;
        }

        if (v102 == 3)
        {
          v105 = *(v33 + 4);
          v106 = *(v33 + 5);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_105:
          if (v108)
          {
            goto LABEL_153;
          }

          v121 = &v33[16 * v102];
          v123 = *v121;
          v122 = *(v121 + 1);
          v124 = __OFSUB__(v122, v123);
          v125 = v122 - v123;
          v126 = v124;
          if (v124)
          {
            goto LABEL_156;
          }

          v127 = &v33[16 * v104 + 32];
          v129 = *v127;
          v128 = *(v127 + 1);
          v115 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v115)
          {
            goto LABEL_159;
          }

          if (__OFADD__(v125, v130))
          {
            goto LABEL_160;
          }

          if (v125 + v130 >= v107)
          {
            if (v107 < v130)
            {
              v104 = v102 - 2;
            }

            goto LABEL_126;
          }

          goto LABEL_119;
        }

        v131 = &v33[16 * v102];
        v133 = *v131;
        v132 = *(v131 + 1);
        v115 = __OFSUB__(v132, v133);
        v125 = v132 - v133;
        v126 = v115;
LABEL_119:
        if (v126)
        {
          goto LABEL_155;
        }

        v134 = &v33[16 * v104];
        v136 = *(v134 + 4);
        v135 = *(v134 + 5);
        v115 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v115)
        {
          goto LABEL_158;
        }

        if (v137 < v125)
        {
          goto LABEL_3;
        }

LABEL_126:
        v142 = v104 - 1;
        if (v104 - 1 >= v102)
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (!*v166)
        {
          goto LABEL_171;
        }

        v143 = *&v33[16 * v142 + 32];
        v144 = *&v33[16 * v104 + 40];
        v145 = v169;
        sub_27409C4FC(*v166 + *(v164 + 72) * v143, (*v166 + *(v164 + 72) * *&v33[16 * v104 + 32]), (*v166 + *(v164 + 72) * v144), a3);
        v169 = v145;
        if (v145)
        {
        }

        if (v144 < v143)
        {
          goto LABEL_149;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2741B412C(v33);
        }

        if (v142 >= *(v33 + 2))
        {
          goto LABEL_150;
        }

        v146 = &v33[16 * v142];
        *(v146 + 4) = v143;
        *(v146 + 5) = v144;
        v184 = v33;
        result = sub_2741B40A0(v104);
        v33 = v184;
        v102 = *(v184 + 2);
        v32 = v99;
        if (v102 <= 1)
        {
          goto LABEL_3;
        }
      }

      v109 = &v33[16 * v102 + 32];
      v110 = *(v109 - 64);
      v111 = *(v109 - 56);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_151;
      }

      v114 = *(v109 - 48);
      v113 = *(v109 - 40);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_152;
      }

      v116 = &v33[16 * v102];
      v118 = *v116;
      v117 = *(v116 + 1);
      v115 = __OFSUB__(v117, v118);
      v119 = v117 - v118;
      if (v115)
      {
        goto LABEL_154;
      }

      v115 = __OFADD__(v107, v119);
      v120 = v107 + v119;
      if (v115)
      {
        goto LABEL_157;
      }

      if (v120 >= v112)
      {
        v138 = &v33[16 * v104 + 32];
        v140 = *v138;
        v139 = *(v138 + 1);
        v115 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v115)
        {
          goto LABEL_161;
        }

        if (v107 < v141)
        {
          v104 = v102 - 2;
        }

        goto LABEL_126;
      }

      goto LABEL_105;
    }

LABEL_3:
    v31 = v166[1];
    if (v32 >= v31)
    {
      goto LABEL_137;
    }
  }

  v66 = v34 + v152;
  if (__OFADD__(v34, v152))
  {
    goto LABEL_167;
  }

  if (v66 >= v65)
  {
    v66 = v166[1];
  }

  if (v66 < v34)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if (v35 == v66)
  {
    goto LABEL_85;
  }

  v67 = *v166;
  v68 = *(v164 + 72);
  v69 = *v166 + v68 * (v35 - 1);
  v171 = -v68;
  v156 = v34;
  v70 = v34 - v35;
  v172 = v67;
  v157 = v68;
  v71 = v67 + v35 * v68;
  v158 = v66;
LABEL_43:
  v163 = v35;
  v160 = v71;
  v161 = v70;
  v72 = v70;
  v162 = v69;
  while (1)
  {
    v176 = v72;
    sub_27409CF58(v71, v18);
    sub_27409CF58(v69, v177);
    sub_27409D4E4((v18 + 72), &v183);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
    sub_27409D1F4();
    if (swift_dynamicCast())
    {
      v73 = v182;
      if ([v182 isPasspoint])
      {
        v74 = [v73 displayedOperatorName];
        if (v74)
        {
          v75 = v74;
          sub_2741C7E7C();

          goto LABEL_60;
        }
      }
    }

    sub_27409D4E4((v18 + 72), &v183);
    if (swift_dynamicCast())
    {
      v76 = v182;
      v77 = [v182 OSSpecificAttributes];
      if (v77)
      {
        v78 = v77;
        v79 = sub_2741C7D6C();

        v178 = 0xD000000000000013;
        v179 = v170;
        sub_2741C850C();
        if (*(v79 + 16) && (v80 = sub_274125164(&v183), (v81 & 1) != 0))
        {
          sub_27409D308(*(v79 + 56) + 32 * v80, &v180);
          sub_27409D2A4(&v183);

          if (*(&v181 + 1))
          {
            sub_27409D2F8(&v180, &v182);
            sub_27409D308(&v182, &v183);
            sub_2741C7EBC();

            __swift_destroy_boxed_opaque_existential_1Tm(&v182);
            goto LABEL_60;
          }
        }

        else
        {

          sub_27409D2A4(&v183);
          v180 = 0u;
          v181 = 0u;
        }
      }

      else
      {

        v180 = 0u;
        v181 = 0u;
      }

      sub_27409D420(&v180, &qword_280937E28, &unk_2741CB3D0);
    }

LABEL_60:
    v82 = sub_2741C7ECC();
    v84 = v83;

    sub_27409D4E4(v177 + 72, &v183);
    if (swift_dynamicCast())
    {
      v85 = v182;
      if ([v182 isPasspoint])
      {
        v86 = [v85 displayedOperatorName];
        if (v86)
        {
          v87 = v86;
          sub_2741C7E7C();

          v33 = v165;
          goto LABEL_77;
        }

        v33 = v165;
      }

      else
      {
      }
    }

    sub_27409D4E4(v177 + 72, &v183);
    if (!swift_dynamicCast())
    {
      goto LABEL_76;
    }

    v88 = v182;
    v89 = [v182 OSSpecificAttributes];
    if (!v89)
    {

      v180 = 0u;
      v181 = 0u;
      goto LABEL_75;
    }

    v90 = v89;
    v91 = sub_2741C7D6C();

    v178 = 0xD000000000000013;
    v179 = v170;
    sub_2741C850C();
    if (!*(v91 + 16) || (v92 = sub_274125164(&v183), (v93 & 1) == 0))
    {

      sub_27409D2A4(&v183);
      v180 = 0u;
      v181 = 0u;
LABEL_73:

LABEL_75:
      sub_27409D420(&v180, &qword_280937E28, &unk_2741CB3D0);
LABEL_76:

      goto LABEL_77;
    }

    sub_27409D308(*(v91 + 56) + 32 * v92, &v180);
    sub_27409D2A4(&v183);

    if (!*(&v181 + 1))
    {
      goto LABEL_73;
    }

    sub_27409D2F8(&v180, &v182);
    sub_27409D308(&v182, &v183);
    sub_2741C7EBC();

    __swift_destroy_boxed_opaque_existential_1Tm(&v182);
LABEL_77:
    v94 = sub_2741C7ECC();
    a3 = v95;

    if (v82 == v94 && v84 == a3)
    {

      sub_27409D050(v177);
      v18 = v175;
      sub_27409D050(v175);
LABEL_42:
      v35 = v163 + 1;
      v69 = v162 + v157;
      v70 = v161 - 1;
      v71 = v160 + v157;
      if (v163 + 1 == v158)
      {
        v35 = v158;
        v34 = v156;
        goto LABEL_85;
      }

      goto LABEL_43;
    }

    v96 = sub_2741C86DC();

    sub_27409D050(v177);
    v18 = v175;
    result = sub_27409D050(v175);
    if ((v96 & 1) == 0)
    {
      goto LABEL_42;
    }

    v97 = v176;
    if (!v172)
    {
      break;
    }

    a3 = v173;
    sub_27409D240(v71, v173);
    swift_arrayInitWithTakeFrontToBack();
    sub_27409D240(a3, v69);
    v69 += v171;
    v71 += v171;
    v98 = __CFADD__(v97, 1);
    v72 = v97 + 1;
    if (v98)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
  return result;
}

uint64_t sub_27409C4FC(unint64_t a1, char *a2, char *a3, char *a4)
{
  v56 = type metadata accessor for KnownNetwork(0);
  v9 = MEMORY[0x28223BE20](v56, v8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v54 = &v51 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v58 = &v51 - v16;
  result = MEMORY[0x28223BE20](v15, v17);
  v57 = &v51 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_67;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_68;
  }

  v23 = &a2[-a1] / v21;
  v62 = a1;
  v61 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || &a2[v25] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = &a4[v25];
    if (v25 >= 1)
    {
      v37 = -v21;
      v38 = &a4[v25];
      v53 = a4;
      v58 = -v21;
      while (2)
      {
        while (1)
        {
          v51 = v36;
          v39 = a2;
          a2 += v37;
          v59 = a2;
          v57 = v39;
          while (1)
          {
            if (v39 <= a1)
            {
              v62 = v39;
              v60 = v51;
              goto LABEL_65;
            }

            v41 = a3;
            v52 = v36;
            v42 = v38 + v37;
            sub_27409CF58(v42, v54);
            sub_27409CF58(a2, v55);
            sub_27411741C();
            v43 = sub_2741C7ECC();
            v45 = v44;

            sub_27411741C();
            v46 = sub_2741C7ECC();
            v48 = v47;

            if (v43 == v46 && v45 == v48)
            {
              v49 = 0;
            }

            else
            {
              v49 = sub_2741C86DC();
            }

            a3 = &v41[v58];
            sub_27409D050(v55);
            sub_27409D050(v54);
            a2 = v59;
            v50 = v53;
            if (v49)
            {
              break;
            }

            v36 = v42;
            if (v41 < v38 || a3 >= v38)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v38 = v42;
            v40 = v42 > v50;
            v39 = v57;
            v37 = v58;
            if (!v40)
            {
              a2 = v57;
              goto LABEL_64;
            }
          }

          if (v41 < v57 || a3 >= v57)
          {
            break;
          }

          v36 = v52;
          v37 = v58;
          if (v41 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v38 <= v50)
          {
            goto LABEL_64;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v36 = v52;
        v37 = v58;
        if (v38 > v50)
        {
          continue;
        }

        break;
      }
    }

LABEL_64:
    v62 = a2;
    v60 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = &a4[v24];
    v60 = &a4[v24];
    if (v24 >= 1 && a2 < a3)
    {
      do
      {
        v27 = a3;
        v59 = a2;
        sub_27409CF58(a2, v57);
        v28 = a4;
        sub_27409CF58(a4, v58);
        sub_27411741C();
        v29 = sub_2741C7ECC();
        v31 = v30;

        sub_27411741C();
        v32 = sub_2741C7ECC();
        v34 = v33;

        if (v29 == v32 && v31 == v34)
        {

          sub_27409D050(v58);
          sub_27409D050(v57);
        }

        else
        {
          v35 = sub_2741C86DC();

          sub_27409D050(v58);
          sub_27409D050(v57);
          if (v35)
          {
            a2 = &v59[v21];
            a3 = v27;
            if (a1 < v59 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_34;
          }
        }

        a4 += v21;
        a3 = v27;
        if (a1 < v28 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v28)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v61 = &v28[v21];
        a2 = v59;
LABEL_34:
        a1 += v21;
        v62 = a1;
      }

      while (a4 < v55 && a2 < a3);
    }
  }

LABEL_65:
  sub_27409CACC(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_27409CACC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for KnownNetwork(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_27409CBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26 - v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = &off_28832CB18;
  sub_27409D3B0(a2, &v28);
  if (v29)
  {
    sub_27409D118(&v28, v31);
    v10 = v32;
    v11 = v33;
    v12 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v29 = v10;
    v30 = *(v11 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
    v14 = sub_2741C80DC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_27409D4E4(&v28, v27);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_27409D118(v27, v15 + 32);
    *(v15 + 72) = 3;

    sub_2740CE980(0, 0, v9, &unk_2741D5960, v15);

    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_27409D420(&v28, &qword_280937E38, &unk_2741CB3E0);
  }

  *(a3 + 32) = sub_2741980C8();
  v16 = sub_274197AE8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v16 >> 8;
  sub_27409D420(a2, &qword_280937E38, &unk_2741CB3E0);
  *(a3 + 40) = v17;
  *(a3 + 41) = v24;
  *(a3 + 48) = v19;
  *(a3 + 56) = v21;
  *(a3 + 64) = v23;
  *(a3 + 65) = HIBYTE(v23) & 1;
  return a3;
}

uint64_t type metadata accessor for KnownNetworksViewModel(uint64_t a1)
{
  result = qword_280937DF0;
  if (!qword_280937DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27409CE70(uint64_t a1)
{
  result = sub_2741C6A4C();
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

uint64_t sub_27409CF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnownNetwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27409CFC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27409D050(uint64_t a1)
{
  v2 = type metadata accessor for KnownNetwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_27409D118(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_27409D14C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

unint64_t sub_27409D1F4()
{
  result = qword_280937E20;
  if (!qword_280937E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280937E20);
  }

  return result;
}

uint64_t sub_27409D240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnownNetwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_27409D2F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_27409D308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_27409D3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E38, &unk_2741CB3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27409D420(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_27409D4E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27409D548()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_27409D588(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_274104E24(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_27409D648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_27409D7A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_27409D7F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_27409D85C(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = [a1 networkName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2741C7E7C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = [a1 RSSI] + 77.5;
  v10 = fabsf(sqrtf((v9 * v9) + 450.0));
  sub_2740CBBBC(((v9 / (v10 + v10)) + 0.5));
  *(a2 + 32) = v11;
  *(a2 + 42) = [a1 isPersonalHotspot];
  if (([a1 supportedSecurityTypes] & 0x200) != 0)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v12 = ([a1 supportedSecurityTypes] >> 8) & 1;
  }

  *(a2 + 40) = v12;
  *(a2 + 48) = [a1 strongestSupportedSecurityType];
  *(a2 + 80) = sub_27409E144();
  *(a2 + 88) = &off_28832A778;
  *(a2 + 56) = a1;
  v13 = a1;
  *(a2 + 96) = [v13 isEAP];
  v14 = [v13 matchingKnownNetworkProfile];
  v15 = v14;
  if (v14)
  {
  }

  *(a2 + 41) = v15 != 0;
  v21 = [v13 matchingKnownNetworkProfile];

  if (v21)
  {
    if ([v21 isPasspoint])
    {
      v16 = [v21 displayedOperatorName];
      if (v16)
      {
        v17 = v16;
        v18 = sub_2741C7E7C();
        v20 = v19;
      }

      else
      {

        v18 = 0;
        v20 = 0;
      }

      *(a2 + 16) = v18;
      *(a2 + 24) = v20;
    }

    else
    {
    }
  }
}

uint64_t sub_27409DA98()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_27409DAEC()
{
  sub_2741C87DC();
  sub_2741C7F0C();
  return sub_2741C880C();
}

uint64_t sub_27409DB38(uint64_t a1)
{
  sub_2741C87DC();
  sub_2741C7F0C();
  return sub_2741C880C();
}

uint64_t sub_27409DB78(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2741C86DC();
  }
}

unint64_t sub_27409DBAC()
{
  result = qword_280937E40;
  if (!qword_280937E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937E40);
  }

  return result;
}

unint64_t sub_27409DC00(uint64_t a1)
{
  *(a1 + 8) = sub_27409DC30();
  result = sub_27409DC84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_27409DC30()
{
  result = qword_280937E48;
  if (!qword_280937E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937E48);
  }

  return result;
}

unint64_t sub_27409DC84()
{
  result = qword_280937E50;
  if (!qword_280937E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937E50);
  }

  return result;
}

uint64_t sub_27409DCD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E58, &unk_2741CB540);
  v1 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v1);

  MEMORY[0x2743E5FB0](*v0, *(v0 + 8));
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0x273D656D616E20, 0xE700000000000000);

  sub_2741C856C();

  v2 = sub_2740EAF84(*(v0 + 48));
  v4 = v3;

  MEMORY[0x2743E5FB0](v2, v4);

  MEMORY[0x2743E5FB0](10272, 0xE200000000000000);
  v5 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v5);

  MEMORY[0x2743E5FB0](10025, 0xE200000000000000);
  MEMORY[0x2743E5FB0](0x7469727563657320, 0xEF273D6570795479);

  if (*(v0 + 41))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 41))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v6, v7);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0x273D6E776F6E6B20, 0xE800000000000000);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_27409DF24(uint64_t a1, uint64_t a2)
{
  sub_27409D4E4(v2 + 56, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_27409E144();
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v5 = v14[0];
  v6 = [v14[0] matchingKnownNetworkProfile];
  if (!v6)
  {

LABEL_15:
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  v7 = v6;
  v8 = [v6 OSSpecificAttributes];
  if (!v8)
  {

    goto LABEL_15;
  }

  v9 = v8;
  v10 = sub_2741C7D6C();

  sub_2741C850C();
  if (!*(v10 + 16) || (v11 = sub_274125164(v15), (v12 & 1) == 0))
  {

    sub_27409D2A4(v15);
    goto LABEL_13;
  }

  sub_27409D308(*(v10 + 56) + 32 * v11, v14);
  sub_27409D2A4(v15);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    LOBYTE(a2) = a2 == 0;
    return a2 & 1;
  }

  if (!a2)
  {
LABEL_18:

    return a2 & 1;
  }

  if (a1 != 0x55557963696C6F50 || a2 != 0xEA00000000004449)
  {
    LOBYTE(a2) = sub_2741C86DC();
    goto LABEL_18;
  }

  LOBYTE(a2) = 1;
  return a2 & 1;
}

unint64_t sub_27409E144()
{
  result = qword_280937E60;
  if (!qword_280937E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280937E60);
  }

  return result;
}

uint64_t sub_27409E194@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2741C70AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for OtherNetworkSheet(0);
  sub_2740A6D94(v1 + *(v12 + 20), v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_2741C82AC();
    v15 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_27409E39C()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for OtherNetworkSheet(0) + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2741C82AC();
    v9 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_27409E4EC@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for OtherNetworkSheet(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v57 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF0, &qword_2741CB630);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF8, &qword_2741CB638);
  MEMORY[0x28223BE20](v59, v10);
  v12 = v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F00, &qword_2741CB640);
  v54 = *(v13 - 8);
  v55 = v13;
  v53 = *(v54 + 64);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v52 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v58 = v48 - v18;
  *v12 = sub_2741C71AC();
  *(v12 + 1) = 0;
  v12[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F08, &qword_2741CB648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);
  sub_2741C7A5C();
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F10, &unk_2741CB650);
  sub_2740A6D24(&qword_280937F18, &qword_280937F10, &unk_2741CB650, MEMORY[0x277CE14C0]);
  sub_2741C6E7C();
  v48[0] = v7;
  sub_2740A5968(v1, v7);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_2740A59D0(v7, v20 + v19);
  v21 = &v12[*(v59 + 36)];
  *v21 = sub_2740A5A34;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  v50 = v3;
  v22 = v1 + *(v3 + 44);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v65) = v23;
  v66 = v24;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v25 = v61;
  LODWORD(v49) = v62;
  v48[2] = *(v3 + 52);
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  v26 = v48[0];
  sub_2740A5968(v1, v48[0]);
  v27 = swift_allocObject();
  sub_2740A59D0(v26, v27 + v19);
  v28 = v58;
  sub_2741A21D8(v25, *(&v25 + 1), v49, &v61, sub_2740A5A4C, v27, v58);

  sub_27409D420(&v61, &qword_280937E78, &qword_2741D81E0);
  sub_27409D420(v12, &qword_280937EF8, &qword_2741CB638);
  v29 = v1 + *(v50 + 48);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v65) = v30;
  v66 = v31;
  sub_2741C7A5C();
  v49 = *(&v61 + 1);
  v50 = v61;
  LODWORD(v51) = v62;
  sub_2741C7A3C();
  sub_2740A5968(v1, v26);
  v32 = swift_allocObject();
  sub_2740A59D0(v26, v32 + v19);
  sub_2740A6D94(&v65, &v61, &qword_280937E78, &qword_2741D81E0);
  v33 = v54;
  v34 = v55;
  v35 = v52;
  (*(v54 + 16))(v52, v28, v55);
  v36 = (*(v33 + 80) + 56) & ~*(v33 + 80);
  v37 = (v53 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v62;
  *(v38 + 16) = v61;
  *(v38 + 32) = v39;
  *(v38 + 48) = v63;
  (*(v33 + 32))(v38 + v36, v35, v34);
  v40 = (v38 + v37);
  *v40 = sub_2740A5AD8;
  v40[1] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F30, &unk_2741D7CA0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  v43 = sub_2740A5CF8();
  v44 = sub_2740A5DB0();
  v45 = sub_2740A5EE4();
  *&v61 = v59;
  *(&v61 + 1) = v41;
  *&v62 = v42;
  *(&v62 + 1) = v43;
  v63 = v44;
  v64 = v45;
  swift_getOpaqueTypeConformance2();
  sub_2740A5F60();
  v46 = v58;
  sub_2741C788C();

  sub_27409D420(&v65, &qword_280937E78, &qword_2741D81E0);
  return (*(v33 + 8))(v46, v34);
}

uint64_t sub_27409EC40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a1;
  v75 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FE0, &qword_2741CB720);
  v69 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v65 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FE8, &qword_2741CB728);
  v70 = *(v72 - 1);
  MEMORY[0x28223BE20](v72, v6);
  v68 = &v65 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FF0, &qword_2741CB730);
  v76 = *(v77 - 8);
  v9 = MEMORY[0x28223BE20](v77, v8);
  v74 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v73 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FF8, &qword_2741CB738);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v71 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v65 - v18;
  if (qword_280937460 != -1)
  {
    swift_once();
  }

  v96 = qword_280945FF8;
  v97 = unk_280946000;
  v20 = sub_2740A6A74();

  v67 = v20;
  v21 = sub_2741C76AC();
  v23 = v22;
  v25 = v24;
  sub_2741C758C();
  v83 = sub_2741C767C();
  v82 = v26;
  v28 = v27;
  v84 = v29;

  sub_2740A6AC8(v21, v23, v25 & 1);

  v81 = sub_2741C752C();
  sub_2741C6C6C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v78 = v28 & 1;
  LOBYTE(v96) = v28 & 1;
  LOBYTE(v90) = 0;
  KeyPath = swift_getKeyPath();
  v80 = sub_2741C737C();
  *v19 = sub_2741C70EC();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938008, &qword_2741CB770);
  v39 = v66;
  sub_27409F640(v66, &v19[*(v38 + 44)]);
  LOBYTE(v20) = sub_2741C751C();
  v40 = sub_2741C6C6C();
  v41 = &v19[*(v13 + 36)];
  *v41 = v20;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  MEMORY[0x28223BE20](v40, v46);
  *(&v65 - 2) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938010, &qword_2741CB778);
  sub_2740A6D24(&qword_280938018, &qword_280938010, &qword_2741CB778, MEMORY[0x277CE14C0]);
  sub_2741C761C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938020, &qword_2741CB780);
  sub_2741C6F0C();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2741CB550;
  sub_2741C6EFC();
  v48 = sub_2740A6D24(&qword_280938028, &qword_280937FE0, &qword_2741CB720, MEMORY[0x277CDE580]);
  v49 = v68;
  MEMORY[0x2743E5820](2, v47, v2, v48);

  (*(v69 + 8))(v5, v2);
  if (qword_280937470 != -1)
  {
    swift_once();
  }

  v96 = qword_280946018;
  v97 = unk_280946020;
  *&v90 = v2;
  *(&v90 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v50 = v73;
  v51 = v72;
  sub_2741C777C();
  (*(v70 + 8))(v49, v51);
  v52 = v71;
  sub_2740A6D94(v19, v71, &qword_280937FF8, &qword_2741CB738);
  v53 = v76;
  v54 = *(v76 + 16);
  v55 = v74;
  v56 = v77;
  v54(v74, v50, v77);
  *&v90 = v83;
  *(&v90 + 1) = v82;
  LOBYTE(v91) = v78;
  *(&v91 + 1) = *v86;
  DWORD1(v91) = *&v86[3];
  v72 = v19;
  *(&v91 + 1) = v84;
  LOBYTE(v92) = v81;
  *(&v92 + 1) = *v85;
  DWORD1(v92) = *&v85[3];
  *(&v92 + 1) = v31;
  *&v93 = v33;
  *(&v93 + 1) = v35;
  *&v94 = v37;
  BYTE8(v94) = 0;
  *(&v94 + 9) = *v87;
  HIDWORD(v94) = *&v87[3];
  *&v95 = KeyPath;
  BYTE8(v95) = 1;
  *(&v95 + 9) = v88;
  BYTE11(v95) = v89;
  HIDWORD(v95) = v80;
  v57 = v91;
  v58 = v75;
  *v75 = v90;
  *(v58 + 1) = v57;
  v59 = v92;
  v60 = v93;
  v61 = v95;
  *(v58 + 4) = v94;
  *(v58 + 5) = v61;
  *(v58 + 2) = v59;
  *(v58 + 3) = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938030, &qword_2741CB788);
  sub_2740A6D94(v52, &v58[*(v62 + 48)], &qword_280937FF8, &qword_2741CB738);
  v54(&v58[*(v62 + 64)], v55, v56);
  sub_2740A6D94(&v90, &v96, &qword_280938038, &qword_2741CB790);
  v63 = *(v53 + 8);
  v63(v50, v56);
  sub_27409D420(v72, &qword_280937FF8, &qword_2741CB738);
  v63(v55, v56);
  sub_27409D420(v52, &qword_280937FF8, &qword_2741CB738);
  v96 = v83;
  v97 = v82;
  v98 = v78;
  *v99 = *v86;
  *&v99[3] = *&v86[3];
  v100 = v84;
  v101 = v81;
  *v102 = *v85;
  *&v102[3] = *&v85[3];
  v103 = v31;
  v104 = v33;
  v105 = v35;
  v106 = v37;
  v107 = 0;
  *v108 = *v87;
  *&v108[3] = *&v87[3];
  v109 = KeyPath;
  v110 = 1;
  v111 = v88;
  v112 = v89;
  v113 = v80;
  return sub_27409D420(&v96, &qword_280938038, &qword_2741CB790);
}

uint64_t sub_27409F640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v85 = &v74 - v5;
  v6 = type metadata accessor for OtherNetworkSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v90 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v93 = &v74 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v84 = &v74 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v89 = &v74 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v74 - v25;
  sub_2740A5968(a1, v10);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v78 = v8;
  v28 = swift_allocObject();
  sub_2740A59D0(v10, v28 + v27);
  sub_2741C7A7C();
  v82 = v6;
  v83 = a1;
  v29 = (a1 + *(v6 + 48));
  v30 = *v29;
  v31 = *(v29 + 1);
  v76 = v30;
  LOBYTE(v103) = v30;
  v75 = v31;
  v104 = v31;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  LOBYTE(a1) = v94;
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  v86 = v11;
  v34 = *(v11 + 36);
  v92 = v26;
  v35 = &v26[v34];
  *v35 = KeyPath;
  v35[1] = sub_2740A6E2C;
  v35[2] = v33;
  if (qword_280937470 != -1)
  {
    swift_once();
  }

  v103 = qword_280946018;
  v104 = unk_280946020;
  sub_2740A6A74();

  v36 = sub_2741C76AC();
  v38 = v37;
  v40 = v39;
  sub_2741C75EC();
  v41 = sub_2741C767C();
  v79 = v42;
  v80 = v41;
  v44 = v43;
  v81 = v45;

  sub_2740A6AC8(v36, v38, v40 & 1);

  sub_2741C7C1C();
  v46 = 1;
  sub_2741C6F1C();
  v77 = v44 & 1;
  v123 = v44 & 1;
  v47 = v83;
  sub_2740A5968(v83, v10);
  v48 = swift_allocObject();
  sub_2740A59D0(v10, v48 + v27);
  v49 = v85;
  sub_2741C7A7C();
  v50 = (v47 + *(v82 + 32));
  v52 = *v50;
  v51 = v50[1];
  v103 = v52;
  v104 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v53 = sub_274109704();

  if (v53)
  {
    LOBYTE(v103) = v76;
    v104 = v75;
    sub_2741C7A3C();
    v46 = v94;
  }

  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = v46;
  v56 = v84;
  (*(v87 + 32))(v84, v49, v88);
  v57 = (v56 + *(v86 + 36));
  *v57 = v54;
  v57[1] = sub_2740A7438;
  v57[2] = v55;
  v58 = v89;
  sub_2740A7060(v56, v89);
  v59 = v93;
  sub_2740A6D94(v92, v93, &qword_2809381A0, &qword_2741CB990);
  v60 = v90;
  sub_2740A6D94(v58, v90, &qword_2809381A0, &qword_2741CB990);
  v61 = v59;
  v62 = v91;
  sub_2740A6D94(v61, v91, &qword_2809381A0, &qword_2741CB990);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A8, &qword_2741CB9C8);
  v64 = (v62 + *(v63 + 48));
  v66 = v79;
  v65 = v80;
  *&v94 = v80;
  *(&v94 + 1) = v79;
  v67 = v77;
  LOBYTE(v95) = v77;
  *(&v95 + 1) = *v122;
  DWORD1(v95) = *&v122[3];
  v68 = v81;
  *(&v95 + 1) = v81;
  v100 = v119;
  v101 = v120;
  v102 = v121;
  v99 = v118;
  v98 = v117;
  v97 = v116;
  v96 = v115;
  v69 = v120;
  v64[6] = v119;
  v64[7] = v69;
  v64[8] = v102;
  v70 = v97;
  v64[2] = v96;
  v64[3] = v70;
  v71 = v99;
  v64[4] = v98;
  v64[5] = v71;
  v72 = v95;
  *v64 = v94;
  v64[1] = v72;
  sub_2740A6D94(v60, v62 + *(v63 + 64), &qword_2809381A0, &qword_2741CB990);
  sub_2740A6D94(&v94, &v103, &qword_2809381B0, &qword_2741CB9D0);
  sub_27409D420(v58, &qword_2809381A0, &qword_2741CB990);
  sub_27409D420(v92, &qword_2809381A0, &qword_2741CB990);
  sub_27409D420(v60, &qword_2809381A0, &qword_2741CB990);
  v103 = v65;
  v104 = v66;
  v105 = v67;
  *v106 = *v122;
  *&v106[3] = *&v122[3];
  v107 = v68;
  v112 = v119;
  v113 = v120;
  v114 = v121;
  v108 = v115;
  v109 = v116;
  v111 = v118;
  v110 = v117;
  sub_27409D420(&v103, &qword_2809381B0, &qword_2741CB9D0);
  return sub_27409D420(v93, &qword_2809381A0, &qword_2741CB990);
}

uint64_t sub_27409FE38(uint64_t a1)
{
  v19 = sub_2741C70AC();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - v8;
  v10 = sub_2741C6DBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OtherNetworkSheet(0);
  sub_2740A6D94(a1 + *(v15 + 20), v9, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_2741C82AC();
    v16 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_2741C6DAC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2740A00C0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  sub_2741C676C();

  sub_2740A6A74();
  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2740A0198@<X0>(uint64_t a3@<X8>)
{
  if (qword_280937390 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_2740A023C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938040, &qword_2741CB798);
  v56 = *(v58 - 1);
  MEMORY[0x28223BE20](v58, v3);
  v52 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938048, &qword_2741CB7A0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v64 = &v51 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938050, &qword_2741CB7A8);
  v11 = *(v53 - 8);
  v13 = MEMORY[0x28223BE20](v53, v12);
  v63 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v51 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938058, &qword_2741CB7B0);
  v54 = *(v57 - 8);
  v19 = MEMORY[0x28223BE20](v57, v18);
  v62 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v51 - v22;
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938060, &qword_2741CB7B8);
  sub_2740A6D24(&qword_280938068, &qword_280938060, &qword_2741CB7B8, MEMORY[0x277CE1138]);
  v61 = v23;
  sub_2741C7B9C();
  v65 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938070, &qword_2741CB7C0);
  sub_2740A6D24(&qword_280938078, &qword_280938070, &qword_2741CB7C0, MEMORY[0x277CE14C0]);
  v60 = v17;
  sub_2741C7B9C();
  v24 = (a1 + *(type metadata accessor for OtherNetworkSheet(0) + 32));
  v26 = *v24;
  v25 = v24[1];
  v68 = v26;
  v69 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v27 = v67;
  swift_getKeyPath();
  v68 = v27;
  sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  v28 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
  if ((*(v27 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) & 0xFFFFFFFFFFFFFB57) == 0)
  {

    goto LABEL_5;
  }

  swift_getKeyPath();
  v68 = v27;
  sub_2741C6A0C();

  v29 = *(v27 + v28);

  if (v29 == 160)
  {
LABEL_5:
    MEMORY[0x28223BE20](v30, v31);
    *(&v51 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938088, &qword_2741CB7F8);
    sub_2740A6D24(&qword_280938090, &qword_280938088, &qword_2741CB7F8, MEMORY[0x277CDD938]);
    v35 = v52;
    sub_2741C7B9C();
    v34 = v56;
    v36 = v35;
    v33 = v58;
    (*(v56 + 32))(v64, v36, v58);
    v32 = 0;
    goto LABEL_6;
  }

  v32 = 1;
  v33 = v58;
  v34 = v56;
LABEL_6:
  v37 = v64;
  (*(v34 + 56))(v64, v32, 1, v33);
  v38 = v54;
  v39 = *(v54 + 16);
  v40 = v62;
  v41 = v57;
  v39(v62, v61, v57);
  v58 = *(v11 + 16);
  v42 = v53;
  (v58)(v63, v60, v53);
  v43 = v37;
  v44 = v55;
  sub_2740A6D94(v43, v55, &qword_280938048, &qword_2741CB7A0);
  v45 = v59;
  v39(v59, v40, v41);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938080, &qword_2741CB7F0);
  v47 = v63;
  (v58)(&v45[*(v46 + 48)], v63, v42);
  sub_2740A6D94(v44, &v45[*(v46 + 64)], &qword_280938048, &qword_2741CB7A0);
  sub_27409D420(v64, &qword_280938048, &qword_2741CB7A0);
  v48 = *(v11 + 8);
  v48(v60, v42);
  v49 = *(v38 + 8);
  v49(v61, v41);
  sub_27409D420(v44, &qword_280938048, &qword_2741CB7A0);
  v48(v47, v42);
  return (v49)(v62, v41);
}

uint64_t sub_2740A0958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938188, &qword_2741CB950);
  return sub_2740A09B0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2740A09B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v3);
  v50 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938120, &unk_2741D05E0);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v52 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938190, &qword_2741CB958);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v56 = &v44 - v13;
  if (qword_280937468 != -1)
  {
    swift_once();
  }

  v62 = qword_280946008;
  v63 = unk_280946010;
  v14 = sub_2740A6A74();

  v59 = v14;
  v48 = sub_2741C76AC();
  v47 = v15;
  v46 = v16;
  v49 = v17;
  if (qword_2809373E8 != -1)
  {
    swift_once();
  }

  v18 = unk_280945F10;
  v45 = qword_280945F08;
  v19 = type metadata accessor for OtherNetworkSheet(0);
  v20 = (a1 + *(v19 + 32));
  v22 = *v20;
  v21 = v20[1];
  v66 = v22;
  v67 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v23 = v62;
  v24 = v63;
  v25 = v64;
  swift_getKeyPath();
  v66 = v23;
  v67 = v24;
  v68 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v60 = v45;
  v61 = v18;
  v26 = v50;
  sub_2741C7C9C();
  v27 = (a1 + *(v19 + 52));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v27) = v27[16];
  LOBYTE(v62) = v28;
  v63 = v29;
  LOBYTE(v64) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v62 = v66;
  v63 = v67;
  LOBYTE(v64) = v68;
  LOBYTE(v66) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v31 = sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890, MEMORY[0x277CDF1A8]);
  v32 = sub_2740A58C0();
  v34 = v52;
  v33 = v53;
  sub_2741C789C();

  (*(v51 + 8))(v26, v33);
  v66 = qword_280946008;
  v67 = unk_280946010;
  v62 = v33;
  v63 = v30;
  v64 = v31;
  v65 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v55;
  v36 = v56;
  sub_2741C77BC();
  (*(v54 + 8))(v34, v35);
  v37 = v57;
  sub_2740A6D94(v36, v57, &qword_280938190, &qword_2741CB958);
  v38 = v58;
  v40 = v48;
  v39 = v49;
  v41 = v47;
  *v58 = v48;
  v38[1] = v41;
  LOBYTE(v23) = v46 & 1;
  *(v38 + 16) = v46 & 1;
  v38[3] = v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938198, &qword_2741CB988);
  sub_2740A6D94(v37, v38 + *(v42 + 48), &qword_280938190, &qword_2741CB958);
  sub_27409861C(v40, v41, v23);

  sub_27409D420(v36, &qword_280938190, &qword_2741CB958);
  sub_27409D420(v37, &qword_280938190, &qword_2741CB958);
  sub_2740A6AC8(v40, v41, v23);
}

uint64_t sub_2740A0FA8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380B8, &qword_2741CB838);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v75 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C0, &qword_2741CB840);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v72 = (&v67 - v11);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C8, &qword_2741CB848);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v12);
  v67 = (&v67 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380D0, &qword_2741CB850);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v71 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v70 = &v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380D8, &qword_2741CB858);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v81 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v79 = &v67 - v25;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380E0, &qword_2741CB860);
  v77 = *(v80 - 8);
  v27 = MEMORY[0x28223BE20](v80, v26);
  v78 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v67 - v30;
  v85 = a1;
  v32 = *(type metadata accessor for OtherNetworkSheet(0) + 32);
  v73 = a1;
  v33 = (a1 + v32);
  v35 = v33[1];
  v86 = *v33;
  v34 = v86;
  v87 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800, MEMORY[0x277CE1138]);
  sub_2740A6BC4();
  v76 = v31;
  sub_2741C6DDC();
  v88 = v34;
  *&v89 = v35;
  sub_2741C7A3C();
  v36 = v86;
  swift_getKeyPath();
  v88 = v36;
  sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  v37 = *(v36 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);

  if (v37 != 512)
  {
    v88 = v34;
    *&v89 = v35;
    sub_2741C7A3C();
    v40 = v86;
    swift_getKeyPath();
    v88 = v40;
    sub_2741C6A0C();

    v41 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
    if ((*(v40 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) & 0xFFFFFFFFFFFFFB57) != 0)
    {
      swift_getKeyPath();
      v88 = v40;
      sub_2741C6A0C();

      v42 = *(v40 + v41);

      v43 = v79;
      if (v42 != 160)
      {
        v44 = 1;
        v45 = v73;
        v46 = v70;
LABEL_8:
        (*(v68 + 56))(v46, v44, 1, v69);
        v50 = sub_2741C70EC();
        v51 = v72;
        *v72 = v50;
        *(v51 + 8) = 0;
        *(v51 + 16) = 1;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380F0, &qword_2741CB868);
        sub_2740A2548(v45, (v51 + *(v52 + 44)));
        v53 = v71;
        sub_2740A6D94(v46, v71, &qword_2809380D0, &qword_2741CB850);
        v54 = v74;
        sub_2740A6D94(v51, v74, &qword_2809380C0, &qword_2741CB840);
        v55 = v75;
        sub_2740A6D94(v53, v75, &qword_2809380D0, &qword_2741CB850);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380F8, &qword_2741CB870);
        sub_2740A6D94(v54, v55 + *(v56 + 48), &qword_2809380C0, &qword_2741CB840);
        sub_27409D420(v51, &qword_2809380C0, &qword_2741CB840);
        sub_27409D420(v46, &qword_2809380D0, &qword_2741CB850);
        sub_27409D420(v54, &qword_2809380C0, &qword_2741CB840);
        sub_27409D420(v53, &qword_2809380D0, &qword_2741CB850);
        v39 = v43;
        sub_2740A6C18(v55, v43, &qword_2809380B8, &qword_2741CB838);
        v38 = 0;
        goto LABEL_9;
      }
    }

    else
    {

      v43 = v79;
    }

    v47 = sub_2741C70EC();
    v48 = v67;
    *v67 = v47;
    *(v48 + 8) = 0;
    *(v48 + 16) = 1;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938108, &unk_2741CB880);
    v45 = v73;
    sub_2740A1AF8(v73, (v48 + *(v49 + 44)));
    v46 = v70;
    sub_2740A6C18(v48, v70, &qword_2809380C8, &qword_2741CB848);
    v44 = 0;
    goto LABEL_8;
  }

  v38 = 1;
  v39 = v79;
LABEL_9:
  (*(v82 + 56))(v39, v38, 1, v83);
  v57 = v77;
  v58 = v78;
  v59 = *(v77 + 16);
  v60 = v76;
  v61 = v80;
  v59(v78, v76, v80);
  v62 = v81;
  sub_2740A6D94(v39, v81, &qword_2809380D8, &qword_2741CB858);
  v63 = v84;
  v59(v84, v58, v61);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938100, &qword_2741CB878);
  sub_2740A6D94(v62, &v63[*(v64 + 48)], &qword_2809380D8, &qword_2741CB858);
  sub_27409D420(v39, &qword_2809380D8, &qword_2741CB858);
  v65 = *(v57 + 8);
  v65(v60, v61);
  sub_27409D420(v62, &qword_2809380D8, &qword_2741CB858);
  return (v65)(v58, v61);
}

uint64_t sub_2740A184C@<X0>(uint64_t a3@<X8>)
{
  if (qword_2809373C8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v23 = sub_2741C76AC();
  v24 = v4;
  v6 = v5;
  v22 = v7;
  type metadata accessor for OtherNetworkSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  v8 = *(v25 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);

  sub_27418FE90(v8);

  v9 = sub_2741C76AC();
  v11 = v10;
  v13 = v12;
  sub_2741C737C();
  v14 = sub_2741C764C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2740A6AC8(v9, v11, v13 & 1);

  *a3 = v23;
  *(a3 + 8) = v6;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v24;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v14;
  *(a3 + 56) = v16;
  *(a3 + 64) = v18 & 1;
  *(a3 + 72) = v20;
  sub_27409861C(v23, v6, v22 & 1);

  sub_27409861C(v14, v16, v18 & 1);

  sub_2740A6AC8(v14, v16, v18 & 1);

  sub_2740A6AC8(v23, v6, v22 & 1);
}

uint64_t sub_2740A1AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938110, &unk_2741D05D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v95 = v69 - v5;
  v6 = sub_2741C6E4C();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v92 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OtherNetworkSheet(0);
  v79 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v80 = v11;
  v81 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v12);
  v70 = v69 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938120, &unk_2741D05E0);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v14);
  v77 = v69 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938128, &unk_2741CB8A0);
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v16);
  v76 = v69 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938130, &unk_2741D05F0);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v18);
  v85 = v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938138, &qword_2741CB8B0);
  v90 = *(v20 - 8);
  v91 = v20;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v89 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v97 = v69 - v25;
  if (qword_2809374A0 != -1)
  {
    swift_once();
  }

  v98 = xmmword_280946078;
  sub_2740A6A74();

  v72 = sub_2741C76AC();
  v71 = v26;
  v73 = v27;
  v74 = v28;
  v69[3] = sub_2741C714C();
  v69[2] = v29;
  v69[1] = v30;
  v31 = (a1 + *(v9 + 32));
  v33 = *v31;
  v32 = v31[1];
  *&v101 = v33;
  *(&v101 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v34 = v98;
  v35 = v99;
  swift_getKeyPath();
  v101 = v34;
  v102 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v36 = v70;
  sub_2741C7C8C();
  v37 = (a1 + *(v9 + 52));
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v37) = v37[16];
  LOBYTE(v98) = v38;
  *(&v98 + 1) = v39;
  LOBYTE(v99) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v98 = v101;
  LOBYTE(v99) = v102;
  LOBYTE(v101) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v41 = sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890, MEMORY[0x277CDF1A8]);
  v42 = sub_2740A58C0();
  v43 = v77;
  v44 = v78;
  sub_2741C789C();

  (*(v75 + 8))(v36, v44);
  v45 = v81;
  sub_2740A5968(a1, v81);
  v46 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v47 = swift_allocObject();
  sub_2740A59D0(v45, v47 + v46);
  v48 = v92;
  sub_2741C6E3C();
  *&v98 = v44;
  *(&v98 + 1) = v40;
  v99 = v41;
  v100 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v76;
  v51 = v84;
  sub_2741C78EC();

  (*(v93 + 8))(v48, v94);
  (*(v83 + 8))(v43, v51);
  *&v98 = v51;
  *(&v98 + 1) = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v85;
  v54 = v87;
  MEMORY[0x2743E5870](1, v87, v52);
  (*(v82 + 8))(v50, v54);
  v55 = v95;
  sub_2741C744C();
  v56 = sub_2741C745C();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  *&v98 = v54;
  *(&v98 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v57 = v97;
  v58 = v88;
  sub_2741C782C();
  sub_27409D420(v55, &qword_280938110, &unk_2741D05D0);
  (*(v86 + 8))(v53, v58);
  v60 = v89;
  v59 = v90;
  v61 = *(v90 + 16);
  v62 = v91;
  v61(v89, v57, v91);
  v63 = v96;
  v64 = v72;
  v65 = v71;
  *v96 = v72;
  v63[1] = v65;
  LOBYTE(v58) = v73 & 1;
  *(v63 + 16) = v73 & 1;
  v63[3] = v74;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938150, &qword_2741CB8E8);
  v61(v63 + *(v66 + 48), v60, v62);
  sub_27409861C(v64, v65, v58);
  v67 = *(v59 + 8);

  v67(v97, v62);
  v67(v60, v62);
  sub_2740A6AC8(v64, v65, v58);
}

uint64_t sub_2740A2548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = sub_2741C6E4C();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v75 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OtherNetworkSheet(0);
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v66 = v8;
  v67 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938158, &qword_2741CFBD0);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v9);
  v61 = v56 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938160, &unk_2741CB900);
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v11);
  v63 = v56 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938168, &qword_2741D5C10);
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v13);
  v68 = v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938170, &qword_2741CB910);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v74 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v71 = v56 - v20;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v79 = xmmword_280946088;
  v56[3] = sub_2740A6A74();

  v58 = sub_2741C76AC();
  v57 = v21;
  v59 = v22;
  v60 = v23;
  v56[2] = sub_2741C714C();
  v56[1] = v24;
  v56[0] = v25;
  v26 = (a1 + *(v6 + 32));
  v28 = *v26;
  v27 = v26[1];
  *&v82 = v28;
  *(&v82 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v29 = v79;
  v30 = v80;
  swift_getKeyPath();
  v82 = v29;
  v83 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v31 = v61;
  sub_2741C6CFC();
  v32 = a1;
  v33 = (a1 + *(v6 + 52));
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v33) = v33[16];
  LOBYTE(v79) = v34;
  *(&v79 + 1) = v35;
  LOBYTE(v80) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v79 = v82;
  LOBYTE(v80) = v83;
  LOBYTE(v82) = 2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v37 = sub_2740A6D24(&qword_280938178, &qword_280938158, &qword_2741CFBD0, MEMORY[0x277CDD798]);
  v38 = sub_2740A58C0();
  v39 = v63;
  v40 = v64;
  sub_2741C789C();

  (*(v62 + 8))(v31, v40);
  v41 = v67;
  sub_2740A5968(v32, v67);
  v42 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v43 = swift_allocObject();
  sub_2740A59D0(v41, v43 + v42);
  v44 = v75;
  sub_2741C6E3C();
  *&v79 = v40;
  *(&v79 + 1) = v36;
  v80 = v37;
  v81 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v68;
  v47 = v72;
  sub_2741C78EC();

  (*(v76 + 8))(v44, v77);
  (*(v69 + 8))(v39, v47);
  v79 = xmmword_280946088;
  *&v82 = v47;
  *(&v82 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v71;
  v49 = v73;
  sub_2741C77BC();
  (*(v70 + 8))(v46, v49);
  v50 = v74;
  sub_2740A6D94(v48, v74, &qword_280938170, &qword_2741CB910);
  v51 = v78;
  v52 = v58;
  v53 = v57;
  *v78 = v58;
  v51[1] = v53;
  LOBYTE(v30) = v59 & 1;
  *(v51 + 16) = v59 & 1;
  v51[3] = v60;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938180, &qword_2741CB940);
  sub_2740A6D94(v50, v51 + *(v54 + 48), &qword_280938170, &qword_2741CB910);
  sub_27409861C(v52, v53, v30);

  sub_27409D420(v48, &qword_280938170, &qword_2741CB910);
  sub_27409D420(v50, &qword_280938170, &qword_2741CB910);
  sub_2740A6AC8(v52, v53, v30);
}

uint64_t sub_2740A2DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OtherNetworkSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = sub_2741C80DC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_2740A5968(a1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2741C80AC();
  v14 = sub_2741C809C();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_2740A59D0(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_2740CE980(0, 0, v12, a3, v16);
}

uint64_t sub_2740A2F54(uint64_t a1)
{
  type metadata accessor for OtherNetworkSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800, MEMORY[0x277CE1138]);
  sub_2740A6B38();
  return sub_2741C6DDC();
}

double sub_2740A305C@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2741C70EC();
  v18 = 1;
  a2(&v12, a1);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_2740A6D94(&v19, &v11, &qword_2809380B0, &qword_2741CD1A0);
  sub_27409D420(v24, &qword_2809380B0, &qword_2741CD1A0);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_2740A316C@<X0>(uint64_t a3@<X8>)
{
  if (qword_2809373D0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v23 = sub_2741C76AC();
  v24 = v4;
  v6 = v5;
  v22 = v7;
  type metadata accessor for OtherNetworkSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  v8 = *(v25 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);

  if (v8)
  {
    if (v8 == 1)
    {
      if (qword_280937480 == -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_280937488 == -1)
    {
LABEL_9:

      goto LABEL_10;
    }

    swift_once();
    goto LABEL_9;
  }

LABEL_10:
  v9 = sub_2741C76AC();
  v11 = v10;
  v13 = v12;
  sub_2741C737C();
  v14 = sub_2741C764C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2740A6AC8(v9, v11, v13 & 1);

  *a3 = v23;
  *(a3 + 8) = v6;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v24;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v14;
  *(a3 + 56) = v16;
  *(a3 + 64) = v18 & 1;
  *(a3 + 72) = v20;
  sub_27409861C(v23, v6, v22 & 1);

  sub_27409861C(v14, v16, v18 & 1);

  sub_2740A6AC8(v14, v16, v18 & 1);

  sub_2740A6AC8(v23, v6, v22 & 1);
}

uint64_t sub_2740A34A0(uint64_t a1)
{
  type metadata accessor for OtherNetworkSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740A351C(uint64_t a1)
{
  v2 = type metadata accessor for OtherNetworkSheet(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v58 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  if (!v75)
  {
    sub_27409D420(&v73, &qword_280937E78, &qword_2741D81E0);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  if (swift_dynamicCast())
  {
    v10 = v67;
    v61 = v66;
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v11 = v72;
    if (v72 > 5u)
    {
      if (v72 == 6)
      {
        sub_2740CB460(0xD00000000000001ALL, 0x80000002741D8E90);
        WiFiDisableMISState();
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_2741C856C();
        v73 = v66;
        v74 = v67;
        MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
        v39 = v61;
        MEMORY[0x2743E5FB0](v61, v10);
        MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
        v66 = v39;
        v67 = v10;
        v41 = v62;
        v40 = v63;
        v68 = v62;
        v69 = v63;
        v43 = v64;
        v42 = v65;
        v70 = v64;
        v71 = v65;
        v72 = 6;
        sub_2741C862C();
        sub_2740CB460(v73, v74);
        v22 = v39;
        v23 = v10;
        v24 = v41;
        v25 = v40;
        v26 = v43;
        v27 = v42;
        v28 = 6;
        goto LABEL_15;
      }

      if (v72 == 7)
      {
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_2741C856C();
        v73 = v66;
        v74 = v67;
        MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
        v17 = v61;
        MEMORY[0x2743E5FB0](v61, v10);
        MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
        v66 = v17;
        v67 = v10;
        v19 = v62;
        v18 = v63;
        v68 = v62;
        v69 = v63;
        v21 = v64;
        v20 = v65;
        v70 = v64;
        v71 = v65;
        v72 = 7;
        sub_2741C862C();
        sub_2740CB460(v73, v74);
        v22 = v17;
        v23 = v10;
        v24 = v19;
        v25 = v18;
        v26 = v21;
        v27 = v20;
        v28 = 7;
LABEL_15:
        sub_2740A66EC(v22, v23, v24, v25, v26, v27, v28);

        goto LABEL_18;
      }

LABEL_11:
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_2741C856C();
      v73 = v66;
      v74 = v67;
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D8E10);
      v30 = v61;
      v29 = v62;
      v66 = v61;
      v67 = v10;
      v32 = v63;
      v31 = v64;
      v68 = v62;
      v69 = v63;
      v33 = v65;
      v70 = v64;
      v71 = v65;
      v72 = v11;
      sub_2741C862C();
      sub_2740CB460(v73, v74);
      v22 = v30;
      v23 = v10;
      v24 = v29;
      v25 = v32;
      v26 = v31;
      v27 = v33;
      v28 = v11;
      goto LABEL_15;
    }

    if (v72 != 3)
    {
      if (v72 == 5)
      {
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_2741C856C();
        v73 = v66;
        v74 = v67;
        MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
        v12 = v61;
        MEMORY[0x2743E5FB0](v61, v10);
        MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
        v66 = v12;
        v67 = v10;
        v14 = v62;
        v13 = v63;
        v68 = v62;
        v69 = v63;
        v16 = v64;
        v15 = v65;
        v70 = v64;
        v71 = v65;
        v72 = 5;
        sub_2741C862C();
        sub_2740CB460(v73, v74);

        [*(*(*a1 + 16) + 16) disassociateWithReason_];
        sub_2740A66EC(v12, v10, v14, v13, v16, v15, 5u);
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    v66 = 0;
    v67 = 0xE000000000000000;
    sub_2741C856C();
    v73 = v66;
    v74 = v67;
    MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
    v34 = v62;
    MEMORY[0x2743E5FB0](v10, v62);
    MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741D8EB0);
    v66 = v61;
    v67 = v10;
    v68 = v34;
    v69 = v63;
    v70 = v64;
    v71 = v65;
    v72 = 3;
    sub_2741C862C();
    sub_2740CB460(v73, v74);

    v35 = (a1 + v2[8]);
    v37 = *v35;
    v36 = v35[1];
    v66 = v37;
    v67 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
    sub_2741C7A3C();
    v38 = v73;
    if (*(v73 + 72))
    {
      *(v73 + 72) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v59 = v10;
      v60 = &v58;
      MEMORY[0x28223BE20](KeyPath, v45);
      *(&v58 - 2) = v38;
      *(&v58 - 8) = 1;
      v66 = v38;
      sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
      sub_2741C69FC();

      v10 = v59;
    }

    v46 = sub_2741C80DC();
    (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
    sub_2740A5968(a1, &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2741C80AC();
    v47 = sub_2741C809C();
    v48 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v49 = swift_allocObject();
    v50 = MEMORY[0x277D85700];
    *(v49 + 16) = v47;
    *(v49 + 24) = v50;
    sub_2740A59D0(&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48);
    sub_2740CE980(0, 0, v9, &unk_2741CB718, v49);
    sub_2740A66EC(v61, v10, v62, v63, v64, v65, 3u);
  }

LABEL_18:
  v51 = (a1 + v2[9]);
  v52 = *v51;
  v53 = *(v51 + 1);
  LOBYTE(v66) = v52;
  v67 = v53;
  LOBYTE(v73) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v54 = (a1 + v2[13]);
  v55 = *v54;
  v56 = *(v54 + 1);
  LOBYTE(v54) = v54[16];
  LOBYTE(v66) = v55;
  v67 = v56;
  LOBYTE(v68) = v54;
  LOBYTE(v73) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740A3DAC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for OtherNetworkSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v32[-1] - v11;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A3C();
    if (v33[1])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
      if (swift_dynamicCast())
      {
        if (v37[0] != 1)
        {
          sub_2740A6040(v37, v38);
          sub_2740A609C(v38, v37);

          v34 = *&v37[2];
          v35 = *&v37[4];
          v36 = v37[6];
          if (v37[5])
          {
            sub_2740A609C(v38, v32);
            v13 = v32[0];
            sub_27409D420(v33, &qword_280937FB8, &unk_2741D0410);
            v14 = *(&v35 + 1);
            v15 = v36;
            __swift_mutable_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
            (*(v15 + 56))(v13, v14, v15);
          }

          sub_2740CB460(0xD000000000000035, 0x80000002741D8D00);
          v16 = sub_2741C80DC();
          (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
          sub_2740A5968(a2, &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_2741C80AC();
          v17 = sub_2741C809C();
          v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v19 = swift_allocObject();
          v20 = MEMORY[0x277D85700];
          *(v19 + 16) = v17;
          *(v19 + 24) = v20;
          sub_2740A59D0(v8, v19 + v18);
          sub_2740CE980(0, 0, v12, &unk_2741CB6C0, v19);

          sub_2740A61EC(v38);
          v21 = &qword_280937FB8;
          v22 = &unk_2741D0410;
          v23 = &v34;
          goto LABEL_11;
        }

LABEL_10:
        v21 = &qword_280937FA8;
        v22 = &unk_2741D03F0;
        v23 = v37;
LABEL_11:
        sub_27409D420(v23, v21, v22);
        goto LABEL_12;
      }
    }

    else
    {
      sub_27409D420(v32, &qword_280937E78, &qword_2741D81E0);
    }

    v37[0] = 1;
    memset(&v37[1], 0, 48);
    goto LABEL_10;
  }

LABEL_12:
  v24 = (a2 + *(v4 + 40));
  v25 = *v24;
  v26 = *(v24 + 1);
  v38[0] = v25;
  v39 = v26;
  LOBYTE(v37[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v27 = (a2 + *(v4 + 52));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v27) = v27[16];
  v38[0] = v28;
  v39 = v29;
  v40 = v27;
  LOBYTE(v37[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740A41AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for OtherNetworkSheet(0);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v4[9] = swift_task_alloc();
  v4[10] = sub_2741C80AC();
  v4[11] = sub_2741C809C();
  v8 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740A42E4, v8, v7);
}

uint64_t sub_2740A42E4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);

  v7 = v6 + *(v5 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
  *(v0 + 96) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v10 = sub_2741C80DC();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_2740A5968(v6, v1);
  v11 = sub_2741C809C();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_2740A59D0(v1, v13 + v12);
  v15 = v13 + ((v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = 1;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  sub_2740CE980(0, 0, v2, &unk_2741CB6D8, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2740A44A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, __int16 a7)
{
  *(v7 + 178) = a7;
  *(v7 + 182) = a5;
  *(v7 + 488) = a4;
  *(v7 + 496) = a6;
  v8 = sub_2741C6DBC();
  *(v7 + 504) = v8;
  *(v7 + 512) = *(v8 - 8);
  *(v7 + 520) = swift_task_alloc();
  *(v7 + 528) = sub_2741C80AC();
  *(v7 + 536) = sub_2741C809C();
  v10 = sub_2741C805C();
  *(v7 + 544) = v10;
  *(v7 + 552) = v9;

  return MEMORY[0x2822009F8](sub_2740A45A8, v10, v9);
}

uint64_t sub_2740A45A8()
{
  v1 = *(v0 + 178);
  v2 = *(v0 + 488);
  *(v0 + 560) = sub_27409E39C();
  v3 = type metadata accessor for OtherNetworkSheet(0);
  *(v0 + 568) = v3;
  v4 = (v2 + *(v3 + 32));
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 384) = v6;
  *(v0 + 392) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  *(v0 + 208) = type metadata accessor for AssociationCredentials(0);
  *(v0 + 216) = &off_288329FD0;
  v7 = swift_task_alloc();
  *(v0 + 576) = v7;
  *v7 = v0;
  v7[1] = sub_2740A46B8;
  v8 = *(v0 + 496);
  v9 = *(v0 + 182);

  return sub_27413A3D8(v9, v8, v1 & 0x101, v0 + 184);
}

uint64_t sub_2740A46B8()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);
    v4 = *(v2 + 544);
    v5 = sub_2740A49AC;
  }

  else
  {
    sub_27409D420(v2 + 184, &qword_280937FB8, &unk_2741D0410);
    v5 = sub_2740A4814;
    v4 = 0;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2740A4814(uint64_t a1)
{
  *(v1 + 592) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740A48A0, v3, v2);
}

uint64_t sub_2740A48A0()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];

  sub_27409E194(v1);
  sub_2741C6DAC();
  (*(v3 + 8))(v1, v2);
  v4 = v0[69];
  v5 = v0[68];

  return MEMORY[0x2822009F8](sub_2740A4944, v5, v4);
}

uint64_t sub_2740A4944()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2740A49AC()
{
  v1 = v0;
  v2 = *(v0 + 584);
  v3 = *(v0 + 568);
  v4 = *(v1 + 488);

  sub_27409D420(v1 + 184, &qword_280937FB8, &unk_2741D0410);
  sub_2741C856C();
  *(v1 + 400) = 0;
  *(v1 + 408) = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741D8D40);
  *(v1 + 464) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  sub_2740CB218(*(v1 + 400), *(v1 + 408), 0xD000000000000010, 0x80000002741D8D60);

  v5 = (v4 + *(v3 + 48));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v1 + 177) = 0;
  *(v1 + 416) = v6;
  *(v1 + 424) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  *(v1 + 472) = v2;
  v8 = v2;
  if (swift_dynamicCast())
  {
    v33 = *(v1 + 584);
    v9 = *(v1 + 568);
    v10 = *(v1 + 128);
    v11 = *(v1 + 136);
    v32 = *(v1 + 488);
    v12 = *(v1 + 144);
    v13 = *(v1 + 152);
    v14 = *(v1 + 160);
    v15 = *(v1 + 168);
    *(v1 + 328) = &type metadata for WiFiAssociationError;
    v16 = *(v1 + 176);
    *(v1 + 336) = sub_2740A6654();
    v17 = swift_allocObject();
    *(v1 + 304) = v17;
    *(v17 + 16) = v10;
    *(v17 + 24) = v11;
    *(v17 + 32) = v12;
    *(v17 + 40) = v13;
    *(v17 + 48) = v14;
    *(v17 + 56) = v15;
    *(v17 + 64) = v16;
    sub_2740A6D94(v1 + 304, v1 + 344, &qword_280937E78, &qword_2741D81E0);
    sub_2740A6800(v10, v11, v12, v13, v14, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v1 + 304, &qword_280937E78, &qword_2741D81E0);
    v18 = (v32 + *(v9 + 36));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v1 + 181) = 1;
    *(v1 + 448) = v19;
    *(v1 + 456) = v20;

    sub_2741C7A4C();
    sub_2740A66EC(v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v21 = *(v1 + 584);
    *(v1 + 480) = v21;
    v22 = v21;
    v23 = swift_dynamicCast();
    v24 = *(v1 + 584);
    if (v23)
    {
      v25 = *(v1 + 568);
      v26 = *(v1 + 488);
      sub_2740A6040(v1 + 72, v1 + 16);
      *(v1 + 248) = &type metadata for WiFiEnterpriseAssociationError;
      *(v1 + 256) = sub_2740A65B8();
      v27 = swift_allocObject();
      *(v1 + 224) = v27;
      sub_2740A609C(v1 + 16, v27 + 16);
      sub_2740A6D94(v1 + 224, v1 + 264, &qword_280937E78, &qword_2741D81E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
      sub_2741C7A4C();
      sub_27409D420(v1 + 224, &qword_280937E78, &qword_2741D81E0);
      v28 = v26 + *(v25 + 40);
      v29 = *(v28 + 8);
      *(v1 + 432) = *v28;
      *(v1 + 440) = v29;
      *(v1 + 180) = 1;

      sub_2741C7A4C();

      sub_2740A61EC(v1 + 16);
    }

    else
    {

      *(v1 + 72) = 1;
      *(v1 + 80) = 0u;
      *(v1 + 96) = 0u;
      *(v1 + 112) = 0u;
      sub_27409D420(v1 + 72, &qword_280937FA8, &unk_2741D03F0);
    }
  }

  v30 = *(v1 + 8);

  return v30();
}

void *sub_2740A4E38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2741C6DFC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29[-1] - v9;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  *a1 = sub_274175B8C(v11, &v30);
  v12 = type metadata accessor for OtherNetworkSheet(0);
  v13 = v12[5];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  v14 = a1 + v12[6];
  type metadata accessor for AssociationModel(0);
  sub_2740A693C(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  *v14 = sub_2741C6CEC();
  v14[8] = v15 & 1;
  sub_2741C6DEC();
  (*(v3 + 16))(v7, v10, v2);
  sub_2741C7A2C();
  (*(v3 + 8))(v10, v2);
  v16 = (a1 + v12[8]);
  type metadata accessor for AssociationCredentials(0);
  swift_allocObject();
  v29[0] = sub_27410A05C();
  sub_2741C7A2C();
  v17 = *(&v30 + 1);
  *v16 = v30;
  v16[1] = v17;
  v18 = a1 + v12[9];
  LOBYTE(v29[0]) = 0;
  sub_2741C7A2C();
  v19 = *(&v30 + 1);
  *v18 = v30;
  *(v18 + 1) = v19;
  v20 = a1 + v12[10];
  LOBYTE(v29[0]) = 0;
  sub_2741C7A2C();
  v21 = *(&v30 + 1);
  *v20 = v30;
  *(v20 + 1) = v21;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_2740A6D94(&v30, v29, &qword_280937E78, &qword_2741D81E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
  sub_2741C7A2C();
  sub_27409D420(&v30, &qword_280937E78, &qword_2741D81E0);
  v22 = a1 + v12[12];
  LOBYTE(v29[0]) = 0;
  sub_2741C7A2C();
  v23 = *(&v30 + 1);
  *v22 = v30;
  *(v22 + 1) = v23;
  v24 = a1 + v12[13];
  sub_2740A5224();
  result = sub_2741C6CAC();
  v26 = *(&v30 + 1);
  v27 = v31;
  *v24 = v30;
  *(v24 + 1) = v26;
  v24[16] = v27;
  return result;
}

uint64_t type metadata accessor for OtherNetworkSheet(uint64_t a1)
{
  result = qword_280937E98;
  if (!qword_280937E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2740A5224()
{
  result = qword_280937E80;
  if (!qword_280937E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937E80);
  }

  return result;
}

uint64_t sub_2740A528C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2740A53DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2740A5518(uint64_t a1)
{
  type metadata accessor for WiFiAssociator();
  if (v1 <= 0x3F)
  {
    sub_2740A56F0(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2740A56F0(319, &qword_280937EB0, type metadata accessor for AssociationModel, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2740A56F0(319, &qword_280937EB8, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2740A56F0(319, &qword_280937EC0, type metadata accessor for AssociationCredentials, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2740A5754();
            if (v6 <= 0x3F)
            {
              sub_2740A57A4(319);
              if (v7 <= 0x3F)
              {
                sub_2740A5850(319);
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

void sub_2740A56F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2740A5754()
{
  if (!qword_280937EC8)
  {
    v0 = sub_2741C7A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280937EC8);
    }
  }
}

void sub_2740A57A4(uint64_t a1)
{
  if (!qword_280937ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937E78, &qword_2741D81E0);
    v1 = sub_2741C7A6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280937ED0);
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

void sub_2740A5850(uint64_t a1)
{
  if (!qword_280937ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937EE0, &qword_2741CFAD0);
    sub_2740A58C0();
    v1 = sub_2741C6CBC();
    if (!v2)
    {
      atomic_store(v1, &qword_280937ED8);
    }
  }
}

unint64_t sub_2740A58C0()
{
  result = qword_280937EE8;
  if (!qword_280937EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937EE0, &qword_2741CFAD0);
    sub_2740A5224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937EE8);
  }

  return result;
}

uint64_t sub_2740A5968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OtherNetworkSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740A59D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OtherNetworkSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740A5A64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OtherNetworkSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2740A5AD8(char a1)
{
  v3 = *(type metadata accessor for OtherNetworkSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2740A3DAC(a1, v4);
}

uint64_t sub_2740A5B48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F00, &qword_2741CB640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v5 = (v3 + 56) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

double sub_2740A5C38@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F00, &qword_2741CB640) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2741A883C(v1 + 16, *v4, v4[1], v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

unint64_t sub_2740A5CF8()
{
  result = qword_280937F48;
  if (!qword_280937F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937EF8, &qword_2741CB638);
    sub_2740A6D24(&qword_280937F50, &qword_280937F58, &unk_2741CB680, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F48);
  }

  return result;
}

unint64_t sub_2740A5DB0()
{
  result = qword_280937F60;
  if (!qword_280937F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
    sub_2740A5E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F60);
  }

  return result;
}

unint64_t sub_2740A5E34()
{
  result = qword_280937F68;
  if (!qword_280937F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F70, &qword_2741CE730);
    sub_2740A6D24(&qword_280937F78, &qword_280937F80, &unk_2741CB690, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F68);
  }

  return result;
}

unint64_t sub_2740A5EE4()
{
  result = qword_280937F88;
  if (!qword_280937F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F88);
  }

  return result;
}

unint64_t sub_2740A5F60()
{
  result = qword_280937F90;
  if (!qword_280937F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
    sub_2740A5FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F90);
  }

  return result;
}

unint64_t sub_2740A5FEC()
{
  result = qword_280937F98;
  if (!qword_280937F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F98);
  }

  return result;
}

uint64_t sub_2740A60FC(uint64_t a1)
{
  v4 = *(type metadata accessor for OtherNetworkSheet(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_2740A41AC(a1, v6, v7, v1 + v5);
}

uint64_t sub_2740A6240()
{
  v1 = type metadata accessor for OtherNetworkSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2741C6DBC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[7];
  v9 = sub_2741C6DFC();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);

  if (*(v5 + v1[11] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[11]));
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 18, v2 | 7);
}

uint64_t sub_2740A6460(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OtherNetworkSheet(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (*(v9 + 17))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2740A7434;

  return sub_2740A44A4(a1, v7, v8, v1 + v6, v10, v11, v13 | v12);
}

unint64_t sub_2740A65B8()
{
  result = qword_280937FC8;
  if (!qword_280937FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937FC8);
  }

  return result;
}

uint64_t sub_2740A660C()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2740A6654()
{
  result = qword_280937FD0;
  if (!qword_280937FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937FD0);
  }

  return result;
}

uint64_t sub_2740A66A8()
{
  sub_2740A66EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_2740A66EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  if (a7 <= 5u)
  {
    goto LABEL_13;
  }

  if (a7 <= 8u)
  {
    if (a7 != 6)
    {
      if (a7 == 7)
      {
      }

      else if (a7 != 8)
      {
        return;
      }
    }

    goto LABEL_13;
  }

  if (a7 == 9 || a7 == 10)
  {
LABEL_13:

    return;
  }

  if (a7 == 11)
  {
  }
}

void sub_2740A6800(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  if (a7 <= 5u)
  {
    goto LABEL_13;
  }

  if (a7 <= 8u)
  {
    if (a7 != 6)
    {
      if (a7 == 7)
      {
      }

      else if (a7 != 8)
      {
        return;
      }
    }

    goto LABEL_13;
  }

  if (a7 == 9 || a7 == 10)
  {
LABEL_13:

    return;
  }

  if (a7 == 11)
  {

    v8 = a3;
  }
}

uint64_t sub_2740A693C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2740A6984(uint64_t a1)
{
  v4 = *(type metadata accessor for OtherNetworkSheet(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_2740A41AC(a1, v6, v7, v1 + v5);
}

unint64_t sub_2740A6A74()
{
  result = qword_280938000;
  if (!qword_280938000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938000);
  }

  return result;
}

uint64_t sub_2740A6AC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2740A6B38()
{
  result = qword_2809380A8;
  if (!qword_2809380A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809380A8);
  }

  return result;
}

unint64_t sub_2740A6BC4()
{
  result = qword_2809380E8;
  if (!qword_2809380E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809380E8);
  }

  return result;
}

uint64_t sub_2740A6C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2740A6D24(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2740A6D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for OtherNetworkSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2741C6DBC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[7];
  v9 = sub_2741C6DFC();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);

  if (*(v5 + v1[11] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[11]));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740A7060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for OtherNetworkSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2741C6DBC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[7];
  v9 = sub_2741C6DFC();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);

  if (*(v5 + v1[11] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[11]));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740A72E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F00, &qword_2741CB640);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937EF8, &qword_2741CB638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  sub_2740A5CF8();
  sub_2740A5DB0();
  sub_2740A5EE4();
  swift_getOpaqueTypeConformance2();
  sub_2740A5F60();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_2740A74AC()
{
  v0 = sub_2741C7E3C();
  v1 = sub_2741C7E3C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  if (AppBooleanValue)
  {
    return 1;
  }

  v4 = sub_2741C7E3C();
  v5 = sub_2741C7E3C();
  v6 = CFPreferencesGetAppBooleanValue(v4, v5, 0);

  return v6 != 0;
}

uint64_t getEnumTagSinglePayload for AskToJoinNetworkMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AskToJoinNetworkMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2740A7708()
{
  result = qword_2809381B8;
  if (!qword_2809381B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381C0, qword_2741CBA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809381B8);
  }

  return result;
}

uint64_t sub_2740A7780()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

uint64_t sub_2740A77F4(uint64_t a1)
{
  v2 = *v1;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v2);
  return sub_2741C880C();
}

unint64_t sub_2740A784C()
{
  result = qword_2809381C8;
  if (!qword_2809381C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809381C8);
  }

  return result;
}

uint64_t sub_2740A78A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v28 - v5;
  v28 = sub_2741C717C();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2741C69BC();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = sub_2741C7E2C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = sub_2741C7E0C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D8, &unk_2741D5420);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v28 - v19;
  v32 = sub_2741C79BC();
  sub_2741C7DFC();
  sub_2741C7DEC();
  v30 = a1;
  sub_2741C7DCC();
  sub_2741C7DEC();
  sub_2741C7E1C();
  sub_2741C69AC();
  v30 = sub_2741C7E9C();
  v31 = v21;
  sub_2740A6A74();
  sub_2741C77BC();

  sub_2741C716C();
  v22 = v29;
  sub_2741C6E5C();
  (*(v7 + 8))(v10, v28);
  sub_27409D420(v20, &qword_2809381D8, &unk_2741D5420);
  v23 = sub_2741C75AC();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  v24 = sub_2741C75CC();
  sub_27409D420(v6, &qword_2809381D0, &qword_2741CF940);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E0, &qword_2741D42A0);
  v27 = (v22 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = v24;
  return result;
}

uint64_t sub_2740A7CDC@<X0>(uint64_t a1@<X8>)
{
  v20[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v20 - v3;
  v5 = sub_2741C717C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D8, &unk_2741D5420);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v20 - v12;
  v20[1] = sub_2741C79CC();
  sub_2741C714C();
  sub_2741C77AC();

  sub_2741C716C();
  v14 = v20[0];
  sub_2741C6E5C();
  (*(v6 + 8))(v9, v5);
  sub_27409D420(v13, &qword_2809381D8, &unk_2741D5420);
  v15 = sub_2741C75AC();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = sub_2741C75CC();
  sub_27409D420(v4, &qword_2809381D0, &qword_2741CF940);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E0, &qword_2741D42A0);
  v19 = (v14 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

uint64_t sub_2740A7FB4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v22 = sub_2741C717C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E8, &qword_2741CBB20);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v19 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381F0, &unk_2741D4330);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - v10;
  v12 = sub_2741C79CC();
  v13 = sub_2741C797C();
  v14 = (v7 + *(v4 + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381F8, &unk_2741D4350) + 28);
  v16 = *MEMORY[0x277CE1048];
  v17 = sub_2741C79EC();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v7 = v12;
  v7[1] = v13;
  sub_2741C714C();
  sub_2740A829C();
  sub_2741C77AC();

  sub_27409D420(v7, &qword_2809381E8, &qword_2741CBB20);
  sub_2741C716C();
  sub_2741C6E5C();
  (*(v20 + 8))(v3, v22);
  return sub_27409D420(v11, &qword_2809381F0, &unk_2741D4330);
}

unint64_t sub_2740A829C()
{
  result = qword_280938200;
  if (!qword_280938200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381E8, &qword_2741CBB20);
    sub_2740A8354();
    sub_2740A6D24(&qword_280938228, &qword_2809381F8, &unk_2741D4350, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938200);
  }

  return result;
}

unint64_t sub_2740A8354()
{
  result = qword_280938208;
  if (!qword_280938208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938210, &unk_2741D4340);
    sub_2740A6D24(&qword_280938218, &qword_280938220, &unk_2741D6E80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938208);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SdIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2740A85AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2740A85F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2740A8670@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2741C70AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938230, &qword_2741CBCC0);
  MEMORY[0x28223BE20](v60, v7);
  v59 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938238, &qword_2741CBCC8);
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v61 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938240, &qword_2741CBCD0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47 - v15;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v18 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v57 = v12;
    v58 = a1;
    v56 = v13;
    v55 = v9;
    v54 = v16;
    v49 = v2;
    v48 = v3;
    v47 = v6;
    if (wapiCapability)
    {
      if (qword_280937690 != -1)
      {
        swift_once();
      }

      v20 = qword_280946458;
      v21 = qword_280946460;
      v22 = qword_2809376A0;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = &qword_280946478;
    }

    else
    {
      if (qword_280937698 != -1)
      {
        swift_once();
      }

      v20 = qword_280946468;
      v21 = qword_280946470;
      v24 = qword_2809376A8;

      if (v24 != -1)
      {
        swift_once();
      }

      v23 = &qword_280946488;
    }

    v52 = v21;
    v25 = *v23;
    v51 = v23[1];
    v26 = v51;

    v27 = [objc_opt_self() currentDevice];
    [v27 userInterfaceIdiom];

    v53 = &v47;
    MEMORY[0x28223BE20](v28, v29);
    *(&v47 - 8) = v20;
    *(&v47 - 7) = v21;
    *(&v47 - 6) = v25;
    *(&v47 - 5) = v26;
    *(&v47 - 4) = 0xD00000000000001BLL;
    *(&v47 - 3) = 0x80000002741D8F60;
    v30 = v63;
    sub_2740AB6B0(v63, wapiCapability, v59);
    sub_2740ABD30(v30, wapiCapability, v65);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938248, &qword_2741CBCD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938250, &qword_2741CBCE0);
    sub_2740AC714();
    v31 = MEMORY[0x277CE14C0];
    v32 = sub_2740A6D24(&qword_280938270, &qword_280938248, &qword_2741CBCD8, MEMORY[0x277CE14C0]);
    v33 = sub_2740A6D24(&qword_280938278, &qword_280938250, &qword_2741CBCE0, v31);
    v45 = v32;
    v46 = v33;
    v34 = v61;
    sub_2741C7B8C();

    LOBYTE(v65[0]) = sub_27410B310() & 1;
    v35 = sub_2740AC7C4();
    v36 = MEMORY[0x277D839B0];
    v37 = MEMORY[0x277D839C8];
    v38 = v54;
    v39 = v55;
    sub_2741C78CC();
    (*(v62 + 8))(v34, v39);
    v67 = *(v30 + 8);
    v40 = *v30;
    v66 = v40;
    LOBYTE(v32) = v67;

    if ((v32 & 1) == 0)
    {
      sub_2741C82AC();
      v41 = sub_2741C74FC();
      sub_2741C6ACC();

      v42 = v47;
      sub_2741C709C();
      swift_getAtKeyPath();
      sub_27409D420(&v66, &qword_280938288, &qword_2741CBCF0);
      (*(v48 + 8))(v42, v49);
      v40 = v65[0];
    }

    swift_getKeyPath();
    v65[0] = v40;
    sub_2740AD108(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
    sub_2741C6A0C();

    swift_beginAccess();
    v43 = *(v40 + 81);

    v64 = v43;
    v65[0] = v39;
    v65[1] = v36;
    v65[2] = v35;
    v65[3] = v37;
    swift_getOpaqueTypeConformance2();
    v44 = v57;
    sub_2741C78CC();
    return (*(v56 + 8))(v38, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2740A8E28@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v121 = a8;
  v117 = a6;
  v118 = a1;
  v119 = a3;
  v120 = a5;
  v130 = a9;
  v122 = a10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382D0, &qword_2741CBDD0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v131 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v134 = &v108 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382D8, &qword_2741CBDD8);
  MEMORY[0x28223BE20](v126, v17);
  v113 = (&v108 - v18);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382E0, &qword_2741CBDE0);
  MEMORY[0x28223BE20](v123, v19);
  v125 = &v108 - v20;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382E8, &qword_2741CBDE8);
  MEMORY[0x28223BE20](v124, v21);
  v112 = (&v108 - v22);
  v23 = sub_2741C70AC();
  v110 = *(v23 - 8);
  v111 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v109 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382F0, &qword_2741CBDF0);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v129 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v133 = &v108 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382F8, &qword_2741CBDF8);
  v115 = *(v32 - 8);
  v116 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v108 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938300, &qword_2741CBE00);
  v37 = v36 - 8;
  MEMORY[0x28223BE20](v36, v38);
  v114 = &v108 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938308, &qword_2741CBE08);
  v41 = v40 - 8;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v128 = &v108 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v48 = &v108 - v47;
  MEMORY[0x28223BE20](v46, v49);
  v132 = &v108 - v50;
  *&v127 = a7;
  v52 = *(a7 + 48);
  v51 = *(a7 + 56);

  sub_2740ACAB0(v52, v51);
  sub_2741C7D3C();
  v53 = v114;
  (*(v115 + 32))(v114, v35, v116);
  v54 = v53 + *(v37 + 44);
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v54 + 32) = (v121 & 1) == 0;
  LOBYTE(v51) = sub_2741C750C();
  sub_2741C6C6C();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_2740A6C18(v53, v48, &qword_280938300, &qword_2741CBE00);
  v63 = &v48[*(v41 + 44)];
  *v63 = v51;
  *(v63 + 1) = v56;
  *(v63 + 2) = v58;
  *(v63 + 3) = v60;
  *(v63 + 4) = v62;
  v63[40] = 0;
  sub_2740A6C18(v48, v132, &qword_280938308, &qword_2741CBE08);
  if (v122)
  {
    if (qword_2809376B0 != -1)
    {
      swift_once();
    }

    v64 = &qword_280946498;
  }

  else
  {
    if (qword_2809376B8 != -1)
    {
      swift_once();
    }

    v64 = &qword_2809464A8;
  }

  v65 = v134;
  v66 = v127;
  v68 = *v64;
  v67 = v64[1];

  v166 = *(v66 + 8);
  v69 = *v66;
  v165 = *v66;
  v70 = v166;

  if ((v70 & 1) == 0)
  {
    sub_2741C82AC();
    v71 = sub_2741C74FC();
    sub_2741C6ACC();

    v72 = v109;
    sub_2741C709C();
    swift_getAtKeyPath();
    sub_27409D420(&v165, &qword_280938288, &qword_2741CBCF0);
    (*(v110 + 8))(v72, v111);
    v69 = v150;
  }

  swift_getKeyPath();
  *&v150 = v69;
  sub_2740AD108(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v73 = *(v69 + 81);

  v74 = sub_2741C70EC();
  if (v73 == 1)
  {
    v75 = v112;
    *v112 = v74;
    *(v75 + 8) = 0;
    *(v75 + 16) = 1;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938368, &unk_2741CBE90);
    sub_2740A9F0C(v66, v68, v67, v75 + *(v76 + 44));

    v77 = &qword_2809382E8;
    v78 = &qword_2741CBDE8;
    sub_2740A6D94(v75, v125, &qword_2809382E8, &qword_2741CBDE8);
  }

  else
  {
    v75 = v113;
    *v113 = v74;
    *(v75 + 8) = 0;
    *(v75 + 16) = 1;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938310, &qword_2741CBE10);
    sub_2740AA904(v66, v68, v67, (v75 + *(v80 + 44)));

    v77 = &qword_2809382D8;
    v78 = &qword_2741CBDD8;
    sub_2740A6D94(v75, v125, &qword_2809382D8, &qword_2741CBDD8);
  }

  swift_storeEnumTagMultiPayload();
  v79 = MEMORY[0x277CE1138];
  sub_2740A6D24(&qword_280938318, &qword_2809382E8, &qword_2741CBDE8, MEMORY[0x277CE1138]);
  sub_2740A6D24(&qword_280938320, &qword_2809382D8, &qword_2741CBDD8, v79);
  sub_2741C72CC();
  sub_27409D420(v75, v77, v78);
  if (sub_2740A74AC())
  {
    *&v140 = 0;
    *(&v140 + 1) = 0xE000000000000000;
    sub_2741C7A2C();
    v127 = v150;
    v81 = v151;
    LOBYTE(v140) = 0;
    sub_2741C7A2C();
    v82 = v150;
    v83 = *(&v150 + 1);
    LOBYTE(v140) = 0;
    sub_2741C7A2C();
    v84 = v150;
    v85 = *(&v150 + 1);
    LOBYTE(v140) = 0;
    sub_2741C7A2C();
    v86 = v150;
    v87 = *(&v150 + 1);
    v150 = v127;
    *&v151 = v81;
    BYTE8(v151) = v82;
    *&v152 = v83;
    BYTE8(v152) = v84;
    *&v153 = v85;
    BYTE8(v153) = v86;
    *&v154 = v87;
    sub_2740ACB80();
    sub_2740ACBD4();
    sub_2741C6DDC();
    v88 = 0;
  }

  else
  {
    v88 = 1;
  }

  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938328, &qword_2741CBE18);
  (*(*(v89 - 8) + 56))(v65, v88, 1, v89);
  v90 = *(v66 + 16);
  if ((sub_27410B310() & 1) == 0)
  {
    goto LABEL_20;
  }

  v91 = *(v90 + 16);
  swift_getKeyPath();
  *&v140 = v91;
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v91 + 32, &v150, &qword_280938340, &qword_2741D1660);
  if (!*(&v150 + 1))
  {
    sub_27409D420(&v150, &qword_280938340, &qword_2741D1660);
LABEL_20:
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    goto LABEL_21;
  }

  v138[4] = v154;
  v138[5] = v155;
  v139 = v156;
  v138[0] = v150;
  v138[1] = v151;
  v138[2] = v152;
  v138[3] = v153;
  sub_2740ACAC8(v138, &v150);
  v140 = *(v66 + 24);
  LOBYTE(v141) = *(v66 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938348, &qword_2741CBE60);
  sub_2741C7B1C();
  v93 = v135;
  v92 = v136;
  v94 = v137;
  swift_getKeyPath();
  *&v140 = v91;
  sub_2741C6A0C();

  v95 = *(v91 + 16);
  v96 = *(v91 + 24);
  type metadata accessor for AssociationModel(0);
  sub_2740AD108(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  *&v140 = sub_2741C6CEC();
  BYTE8(v140) = v97 & 1;
  type metadata accessor for CurrentNetworkModel(0);
  sub_2740AD108(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
  *&v141 = sub_2741C6CEC();
  BYTE8(v141) = v98 & 1;
  sub_2740ACAC8(&v150, v142);
  *(&v143 + 1) = v93;
  *&v144 = v92;
  BYTE8(v144) = v94;
  *&v145 = v95;
  BYTE8(v145) = v96;
  v135 = 0;
  v136 = 0xE000000000000000;
  sub_2741C856C();

  v135 = 0xD000000000000015;
  v136 = 0x80000002741D9000;
  v99 = sub_27409DCD8();
  MEMORY[0x2743E5FB0](v99);

  sub_2740CB660(v135, v136, 0xD00000000000006FLL, 0x80000002741D9020, 0xD000000000000031, 0x80000002741D9090);

  sub_2740ACB2C(&v150);
  sub_2740ACB2C(v138);
  memset(&v146[8], 0, 32);
  *v146 = sub_2740AB544;
  v147 = 0;
  v148 = sub_2740AB5FC;
  v149 = 0;
  v158 = v143;
  v159 = v144;
  v154 = v142[2];
  v155 = v142[3];
  v156 = v142[4];
  v157 = v142[5];
  v150 = v140;
  v151 = v141;
  v152 = v142[0];
  v153 = v142[1];
  v160 = v145;
  v161 = *v146;
  v162 = *&v146[16];
  v163 = 0uLL;
  v164 = sub_2740AB5FC;
LABEL_21:
  v100 = v132;
  v101 = v128;
  sub_2740A6D94(v132, v128, &qword_280938308, &qword_2741CBE08);
  v102 = v133;
  v103 = v129;
  sub_2740A6D94(v133, v129, &qword_2809382F0, &qword_2741CBDF0);
  v104 = v131;
  sub_2740A6D94(v134, v131, &qword_2809382D0, &qword_2741CBDD0);
  sub_2740A6D94(&v150, &v140, &qword_280938330, &qword_2741CBE20);
  v105 = v130;
  sub_2740A6D94(v101, v130, &qword_280938308, &qword_2741CBE08);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938338, &qword_2741CBE28);
  sub_2740A6D94(v103, v105 + v106[12], &qword_2809382F0, &qword_2741CBDF0);
  sub_2740A6D94(v104, v105 + v106[16], &qword_2809382D0, &qword_2741CBDD0);
  sub_2740A6D94(&v140, v105 + v106[20], &qword_280938330, &qword_2741CBE20);
  sub_27409D420(&v150, &qword_280938330, &qword_2741CBE20);
  sub_27409D420(v134, &qword_2809382D0, &qword_2741CBDD0);
  sub_27409D420(v102, &qword_2809382F0, &qword_2741CBDF0);
  sub_27409D420(v100, &qword_280938308, &qword_2741CBE08);
  sub_27409D420(&v140, &qword_280938330, &qword_2741CBE20);
  sub_27409D420(v104, &qword_2809382D0, &qword_2741CBDD0);
  sub_27409D420(v103, &qword_2809382F0, &qword_2741CBDF0);
  return sub_27409D420(v101, &qword_280938308, &qword_2741CBE08);
}

void sub_2740A9E00()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_2741C684C();
  sub_274177910(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2740AD108(&qword_280937D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_2741CAF88);
  v2 = sub_2741C7D4C();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

uint64_t sub_2740A9F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v78 = a2;
  v79 = a3;
  v85 = a4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  v77 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v5);
  v76 = &v68 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938378, &qword_2741CBEA0);
  MEMORY[0x28223BE20](v81, v7);
  v83 = &v68 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938380, &qword_2741CBEA8);
  MEMORY[0x28223BE20](v82, v9);
  v11 = &v68 - v10;
  v73 = sub_2741C73EC();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v70 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938390, &qword_2741CBEB8);
  v74 = *(v19 - 8);
  v75 = v19;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v72 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938398, &qword_2741CBEC0);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v80 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v86 = &v68 - v31;
  v32 = *(a1[2] + 16);
  swift_getKeyPath();
  v87[0] = v32;
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  if (*(v32 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) == 2)
  {
    v87[0] = v78;
    v87[1] = v79;
    sub_2740A6A74();

    v33 = sub_2741C76AC();
    v35 = v34;
    LODWORD(v79) = v36;
    v38 = v37;
    sub_2741C6D3C();
    sub_2741C73DC();
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0, MEMORY[0x277CDD7F8]);
    sub_2740AD108(&qword_2809383B8, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v39 = v15;
    v40 = v25;
    v69 = v25;
    v41 = v73;
    sub_2741C76DC();
    (*(v71 + 8))(v14, v41);
    (*(v70 + 8))(v18, v39);
    v42 = v74;
    v43 = *(v74 + 16);
    v44 = v72;
    v45 = v40;
    v46 = v75;
    v43(v72, v45, v75);
    *v11 = v33;
    *(v11 + 1) = v35;
    v47 = v79 & 1;
    v11[16] = v79 & 1;
    *(v11 + 3) = v38;
    *(v11 + 4) = 0;
    v11[40] = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383C0, &unk_2741CBEF0);
    v43(&v11[*(v48 + 64)], v44, v46);
    sub_27409861C(v33, v35, v47);

    sub_27409861C(v33, v35, v47);
    v79 = *(v42 + 8);
    v49 = v79;

    v49(v44, v46);
    sub_2740A6AC8(v33, v35, v47);

    sub_2740A6D94(v11, v83, &qword_280938380, &qword_2741CBEA8);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_2809383A0, &qword_280938380, &qword_2741CBEA8, MEMORY[0x277CE14C0]);
    sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0, MEMORY[0x277CDF068]);
    sub_2741C72CC();
    sub_2740A6AC8(v33, v35, v47);

    sub_27409D420(v11, &qword_280938380, &qword_2741CBEA8);
    v79(v69, v46);
  }

  else
  {
    v87[3] = v78;
    v87[4] = v79;
    v50 = *a1;
    v90 = *(a1 + 8);
    v88 = a1[3];
    v89 = v50;
    v51 = a1[6];
    v52 = a1[7];
    sub_2741C80AC();

    sub_2740A6D94(&v89, v87, &qword_280938288, &qword_2741CBCF0);

    sub_2740ACC54(&v88, v87);

    sub_2740ACAB0(v51, v52);
    v53 = sub_2741C809C();
    v54 = swift_allocObject();
    v55 = MEMORY[0x277D85700];
    *(v54 + 16) = v53;
    *(v54 + 24) = v55;
    v56 = *(a1 + 1);
    *(v54 + 32) = *a1;
    *(v54 + 48) = v56;
    v57 = *(a1 + 3);
    *(v54 + 64) = *(a1 + 2);
    *(v54 + 80) = v57;
    sub_2740A6D94(&v89, v87, &qword_280938288, &qword_2741CBCF0);

    sub_2740ACC54(&v88, v87);

    sub_2740ACAB0(v51, v52);
    v58 = sub_2741C809C();
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v55;
    v60 = *(a1 + 1);
    *(v59 + 32) = *a1;
    *(v59 + 48) = v60;
    v61 = *(a1 + 3);
    *(v59 + 64) = *(a1 + 2);
    *(v59 + 80) = v61;
    sub_2741C7B2C();
    sub_2740A6A74();
    v62 = v76;
    sub_2741C7ADC();
    v63 = v77;
    v64 = v84;
    (*(v77 + 16))(v83, v62, v84);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_2809383A0, &qword_280938380, &qword_2741CBEA8, MEMORY[0x277CE14C0]);
    sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0, MEMORY[0x277CDF068]);
    sub_2741C72CC();
    (*(v63 + 8))(v62, v64);
  }

  v65 = v86;
  v66 = v80;
  sub_2740A6D94(v86, v80, &qword_280938398, &qword_2741CBEC0);
  sub_2740A6D94(v66, v85, &qword_280938398, &qword_2741CBEC0);
  sub_27409D420(v65, &qword_280938398, &qword_2741CBEC0);
  return sub_27409D420(v66, &qword_280938398, &qword_2741CBEC0);
}

uint64_t sub_2740AA904@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v76 = a2;
  v77 = a3;
  v84 = a4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383C8, &qword_2741CBF30);
  MEMORY[0x28223BE20](v83, v5);
  v75 = &v69 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383D0, &qword_2741CBF38);
  MEMORY[0x28223BE20](v80, v7);
  v82 = &v69 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938380, &qword_2741CBEA8);
  MEMORY[0x28223BE20](v81, v9);
  v11 = &v69 - v10;
  v72 = sub_2741C73EC();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v70 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938390, &qword_2741CBEB8);
  v73 = *(v19 - 8);
  v74 = v19;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v78 = &v69 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383D8, &qword_2741CBF40);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v79 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v85 = &v69 - v31;
  v32 = *(a1[2] + 16);
  swift_getKeyPath();
  v86[0] = v32;
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  if (*(v32 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) == 2)
  {
    v86[0] = v76;
    v86[1] = v77;
    sub_2740A6A74();

    v33 = sub_2741C76AC();
    v35 = v34;
    LODWORD(v76) = v36;
    v77 = v37;
    sub_2741C6D3C();
    sub_2741C73DC();
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0, MEMORY[0x277CDD7F8]);
    sub_2740AD108(&qword_2809383B8, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v38 = v23;
    v39 = v78;
    v40 = v72;
    sub_2741C76DC();
    (*(v71 + 8))(v14, v40);
    (*(v70 + 8))(v18, v15);
    v42 = v73;
    v41 = v74;
    v43 = *(v73 + 16);
    v43(v38, v39, v74);
    *v11 = v33;
    *(v11 + 1) = v35;
    v44 = v76 & 1;
    v11[16] = v76 & 1;
    *(v11 + 3) = v77;
    *(v11 + 4) = 0;
    v11[40] = 1;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383C0, &unk_2741CBEF0);
    v43(&v11[*(v45 + 64)], v38, v41);
    sub_27409861C(v33, v35, v44);

    sub_27409861C(v33, v35, v44);
    v76 = *(v42 + 8);
    v46 = v76;

    v46(v38, v41);
    sub_2740A6AC8(v33, v35, v44);

    sub_2740A6D94(v11, v82, &qword_280938380, &qword_2741CBEA8);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_2809383A0, &qword_280938380, &qword_2741CBEA8, MEMORY[0x277CE14C0]);
    sub_2740ACF20();
    sub_2741C72CC();
    sub_2740A6AC8(v33, v35, v44);

    sub_27409D420(v11, &qword_280938380, &qword_2741CBEA8);
    v76(v78, v41);
  }

  else
  {
    v86[3] = v76;
    v86[4] = v77;
    v47 = *a1;
    v89 = *(a1 + 8);
    v87 = a1[3];
    v88 = v47;
    v48 = a1[6];
    v49 = a1[7];
    sub_2741C80AC();

    sub_2740A6D94(&v88, v86, &qword_280938288, &qword_2741CBCF0);

    sub_2740ACC54(&v87, v86);

    sub_2740ACAB0(v48, v49);
    v50 = sub_2741C809C();
    v51 = swift_allocObject();
    v52 = MEMORY[0x277D85700];
    *(v51 + 16) = v50;
    *(v51 + 24) = v52;
    v53 = *(a1 + 1);
    *(v51 + 32) = *a1;
    *(v51 + 48) = v53;
    v54 = *(a1 + 3);
    *(v51 + 64) = *(a1 + 2);
    *(v51 + 80) = v54;
    sub_2740A6D94(&v88, v86, &qword_280938288, &qword_2741CBCF0);

    sub_2740ACC54(&v87, v86);

    sub_2740ACAB0(v48, v49);
    v55 = sub_2741C809C();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v52;
    v57 = *(a1 + 1);
    *(v56 + 32) = *a1;
    *(v56 + 48) = v57;
    v58 = *(a1 + 3);
    *(v56 + 64) = *(a1 + 2);
    *(v56 + 80) = v58;
    sub_2741C7B2C();
    sub_2740A6A74();
    v59 = v75;
    sub_2741C7ADC();
    KeyPath = swift_getKeyPath();
    v61 = swift_allocObject();
    *(v61 + 16) = 1;
    v62 = v82;
    v63 = (v59 + *(v83 + 36));
    *v63 = KeyPath;
    v63[1] = sub_2740ACF08;
    v63[2] = v61;
    sub_2740A6D94(v59, v62, &qword_2809383C8, &qword_2741CBF30);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_2809383A0, &qword_280938380, &qword_2741CBEA8, MEMORY[0x277CE14C0]);
    sub_2740ACF20();
    sub_2741C72CC();
    sub_27409D420(v59, &qword_2809383C8, &qword_2741CBF30);
  }

  v64 = v85;
  v65 = v79;
  sub_2740A6D94(v85, v79, &qword_2809383D8, &qword_2741CBF40);
  v66 = v84;
  *v84 = 0;
  *(v66 + 8) = 1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383F8, &qword_2741CBF80);
  sub_2740A6D94(v65, v66 + *(v67 + 48), &qword_2809383D8, &qword_2741CBF40);
  sub_27409D420(v64, &qword_2809383D8, &qword_2741CBF40);
  return sub_27409D420(v65, &qword_2809383D8, &qword_2741CBF40);
}

uint64_t sub_2740AB2D8@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(*(a1 + 16) + 16);
  swift_getKeyPath();
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn);
  return result;
}

uint64_t sub_2740AB38C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v19 - v11;
  v13 = *a1;
  v14 = *(a4 + 16);
  swift_getKeyPath();
  v19[1] = v14;
  sub_2740AD108(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
  sub_2741C6A0C();

  swift_beginAccess();
  v15 = *(*__swift_project_boxed_opaque_existential_1((v14 + 24), *(v14 + 48)) + 16);
  v16 = sub_2741C80DC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v15;
  *(v17 + 40) = v13;
  swift_unknownObjectRetain();
  sub_2740CE980(0, 0, v12, a6, v17);
}

uint64_t sub_2740AB544()
{
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938298, &qword_2741CBD20);
  v0 = sub_2741C7EBC();
  v2 = v1;

  MEMORY[0x2743E5FB0](0xD00000000000002DLL, 0x80000002741D9110);
  sub_2740CB460(v0, v2);
}

uint64_t sub_2740AB5FC()
{
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938298, &qword_2741CBD20);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  MEMORY[0x2743E5FB0](0xD000000000000031, 0x80000002741D90D0);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_2740AB6B0@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938268, &qword_2741CBCE8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - v9;
  v11 = sub_2741C70AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 8);
  v16 = *a1;
  v34 = v16;
  v17 = v35;

  if ((v17 & 1) == 0)
  {
    sub_2741C82AC();
    v18 = sub_2741C74FC();
    v32 = v11;
    v19 = v10;
    v20 = v7;
    v21 = v6;
    v22 = a3;
    v23 = a2;
    v24 = v18;
    sub_2741C6ACC();

    a2 = v23;
    a3 = v22;
    v6 = v21;
    v7 = v20;
    v10 = v19;
    sub_2741C709C();
    swift_getAtKeyPath();
    sub_27409D420(&v34, &qword_280938288, &qword_2741CBCF0);
    (*(v12 + 8))(v15, v32);
    v16 = v33;
  }

  swift_getKeyPath();
  v33 = v16;
  sub_2740AD108(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v25 = *(v16 + 72);

  if (v25)
  {

    if (a2)
    {
      if (qword_280937710 != -1)
      {
        swift_once();
      }

      v26 = &qword_280946558;
    }

    else
    {
      if (qword_280937718 != -1)
      {
        swift_once();
      }

      v26 = &qword_280946568;
    }

    v28 = *v26;
    v29 = v26[1];

    *v10 = sub_2741C70EC();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382A8, &qword_2741CBD78);
    sub_2740ABA78(v28, v29, &v10[*(v30 + 44)]);

    sub_2740A6C18(v10, a3, &qword_280938268, &qword_2741CBCE8);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  return (*(v7 + 56))(a3, v27, 1, v6);
}

uint64_t sub_2740ABA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382B0, &qword_2741CBD80) - 8;
  v6 = MEMORY[0x28223BE20](v38, v5);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v37 - v9;
  v41 = a1;
  v42 = a2;
  sub_2740A6A74();

  v11 = sub_2741C76AC();
  v13 = v12;
  v15 = v14;
  sub_2741C75DC();
  v16 = sub_2741C767C();
  v18 = v17;
  v20 = v19;

  sub_2740A6AC8(v11, v13, v15 & 1);

  sub_2741C79AC();
  v21 = sub_2741C763C();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_2740A6AC8(v16, v18, v20 & 1);

  v28 = &v10[*(v38 + 44)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382B8, &qword_2741CBD88) + 28);
  v30 = sub_2741C766C();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *v28 = swift_getKeyPath();
  *v10 = v21;
  *(v10 + 1) = v23;
  v10[16] = v25 & 1;
  *(v10 + 3) = v27;
  v31 = v39;
  sub_2740A6D94(v10, v39, &qword_2809382B0, &qword_2741CBD80);
  v32 = v40;
  *v40 = 0;
  *(v32 + 8) = 1;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382C0, &qword_2741CBDC0);
  sub_2740A6D94(v31, v33 + *(v34 + 48), &qword_2809382B0, &qword_2741CBD80);
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_27409D420(v10, &qword_2809382B0, &qword_2741CBD80);
  return sub_27409D420(v31, &qword_2809382B0, &qword_2741CBD80);
}

uint64_t sub_2740ABD30@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a1 + 16) + 16);
  swift_getKeyPath();
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  if ((*(v5 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) & 1) == 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  if (a2)
  {
    if (qword_280937700 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (qword_280937708 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_7:
  sub_2740A6A74();

  v6 = sub_2741C76AC();
  v7 = v10;
  v9 = v11;
  v8 = v12 & 1;
  sub_27409861C(v6, v10, v12 & 1);

LABEL_8:
  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v5 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    sub_2741475F8();
    sub_2740A6A74();

    v13 = sub_2741C76AC();
    v14 = v17;
    v16 = v18;
    v15 = v19 & 1;
    sub_27409861C(v13, v17, v19 & 1);
  }

  sub_2740ACA00(v6, v7, v8, v9);
  sub_2740ACA00(v13, v14, v15, v16);
  sub_2740ACA44(v6, v7, v8, v9);
  sub_2740ACA44(v13, v14, v15, v16);
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = v13;
  a3[5] = v14;
  a3[6] = v15;
  a3[7] = v16;
  sub_2740ACA44(v13, v14, v15, v16);
  return sub_2740ACA44(v6, v7, v8, v9);
}

uint64_t sub_2740AC008(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938298, &qword_2741CBD20);
  v4 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0xD000000000000039, 0x80000002741D8FC0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](544175136, 0xE400000000000000);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v7, v8);

  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_2740AC14C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938298, &qword_2741CBD20);
  v4 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0xD000000000000031, 0x80000002741D8F80);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](544175136, 0xE400000000000000);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v7, v8);

  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_2740AC2CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740AD108(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_27409D4E4(v3 + 24, a2);
}

uint64_t sub_2740AC38C(uint64_t a1, uint64_t *a2)
{
  sub_27409D4E4(a1, v15);
  v3 = *a2;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  MEMORY[0x28223BE20](v4, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  v8 = *v6;
  v14[3] = type metadata accessor for WiFiStateProvider();
  v14[4] = &off_28832A538;
  v14[0] = v8;
  swift_getKeyPath();
  v11 = v3;
  v12 = v14;
  v13 = v3;
  sub_2740AD108(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
  sub_2741C69FC();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_2740AC528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState);
  return result;
}

uint64_t sub_2740AC600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState);
  return result;
}

unint64_t sub_2740AC714()
{
  result = qword_280938258;
  if (!qword_280938258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938230, &qword_2741CBCC0);
    sub_2740A6D24(&qword_280938260, &qword_280938268, &qword_2741CBCE8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938258);
  }

  return result;
}

unint64_t sub_2740AC7C4()
{
  result = qword_280938280;
  if (!qword_280938280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938238, &qword_2741CBCC8);
    sub_2740AC714();
    v1 = MEMORY[0x277CE14C0];
    sub_2740A6D24(&qword_280938270, &qword_280938248, &qword_2741CBCD8, MEMORY[0x277CE14C0]);
    sub_2740A6D24(&qword_280938278, &qword_280938250, &qword_2741CBCE0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938280);
  }

  return result;
}

uint64_t sub_2740AC8B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2741C707C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2740AC924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382C8, &qword_2741CBDC8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_2740A6D94(a1, &v6 - v4, &qword_2809382C8, &qword_2741CBDC8);
  return sub_2741C706C();
}

uint64_t sub_2740ACA00(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_27409861C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2740ACA44(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2740A6AC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2740ACAB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2740ACB80()
{
  result = qword_280938358;
  if (!qword_280938358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938358);
  }

  return result;
}

unint64_t sub_2740ACBD4()
{
  result = qword_280938360;
  if (!qword_280938360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938360);
  }

  return result;
}

uint64_t sub_2740ACD1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27416DFF8(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2740ACEA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2741C707C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2740ACF20()
{
  result = qword_2809383E0;
  if (!qword_2809383E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809383C8, &qword_2741CBF30);
    sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0, MEMORY[0x277CDF068]);
    sub_2740A6D24(&qword_2809383E8, &qword_2809383F0, &qword_2741CE8A0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809383E0);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2740AD044(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_27416DFF8(a1, v4, v5, v6, v7);
}

uint64_t sub_2740AD108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2740AD150()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938240, &qword_2741CBCD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938238, &qword_2741CBCC8);
  sub_2740AC7C4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2740AD218()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938408, &qword_2741CC078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CBF90;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v2 = 0xE600000000000000;
  v3 = 0x68636E75616CLL;
  v4 = 0xEE00737365726464;
  v5 = 0x4143414D77656976;
  if (*(v0 + 16) != 2)
  {
    v5 = 0x7774654E6E696F6ALL;
    v4 = 0xEB000000006B726FLL;
  }

  if (*(v0 + 16))
  {
    v3 = 0x7373696D736964;
    v2 = 0xE700000000000000;
  }

  if (*(v0 + 16) <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*(v0 + 16) <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x2743E5FB0](v6, v7);

  v8 = sub_2741C7E3C();

  *(inited + 48) = v8;
  *(inited + 56) = 0x65756C6176;
  *(inited + 64) = 0xE500000000000000;
  sub_2740AD50C();
  *(inited + 72) = sub_2741C833C();
  *(inited + 80) = 0x737365636F7270;
  *(inited + 88) = 0xE700000000000000;
  if (qword_280937380 != -1)
  {
    swift_once();
  }

  v9 = sub_2741C7E3C();

  *(inited + 96) = v9;
  v10 = sub_274177A38(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938418, &unk_2741CC080);
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_2740AD448()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2740AD4B8()
{
  result = qword_280938400;
  if (!qword_280938400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938400);
  }

  return result;
}

unint64_t sub_2740AD50C()
{
  result = qword_280938410;
  if (!qword_280938410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280938410);
  }

  return result;
}

const __SCNetworkSet *sub_2740AD558()
{
  v1 = SCNetworkSetCopyAll(*(v0 + 48));
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SCNetworkSet(0);
      sub_2741C7FDC();
    }
  }

  sub_2740CB218(0xD00000000000001ELL, 0x80000002741D9980, 0x536B726F7774656ELL, 0xEA00000000007465);
  return 0;
}

const __SCNetworkSet *sub_2740AD7C8()
{
  v1 = SCNetworkSetCopyAll(*(v0 + 48));
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SCNetworkSet(0);
      sub_2741C7FDC();
    }
  }

  sub_2740CB218(0xD00000000000001ELL, 0x80000002741D9980, 0x53746C7561666564, 0xEA00000000007465);
  return 0;
}

const __SCNetworkService *sub_2740ADA30()
{
  v0 = sub_2740AD558();
  if (v0)
  {
    v1 = v0;
    v2 = SCNetworkSetCopyServices(v0);
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for SCNetworkService(0);
        sub_2741C7FDC();
      }
    }

    sub_2740CB218(0xD00000000000001ALL, 0x80000002741D94F0, 0x536B726F7774656ELL, 0xEE00656369767265);
  }

  else
  {
    sub_2740CB218(0xD00000000000001FLL, 0x80000002741D9960, 0x536B726F7774656ELL, 0xEE00656369767265);
  }

  return 0;
}

void *sub_2740ADCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  v5 = sub_2741C7E3C();
  v6 = SCPreferencesCreateWithAuthorization(0, v5, 0, 0);

  if (v6)
  {
    v4[6] = v6;
  }

  else
  {
    sub_2740CB218(0xD00000000000001BLL, 0x80000002741D9200, 0xD000000000000022, 0x80000002741D9220);

    type metadata accessor for SystemIPConfiguration();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_2740ADDD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2740B0ADC(*MEMORY[0x277CE1688]);
  if (!v4)
  {
    result = sub_2740CB218(0xD000000000000026, 0x80000002741D98F0, 0xD000000000000013, 0x80000002741D9920);
LABEL_59:
    v66 = 0;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    goto LABEL_60;
  }

  v5 = v4;
  v73 = v2;
  v6 = sub_2741C7E7C();
  if (*(v5 + 16))
  {
    v8 = sub_2741251AC(v6, v7);
    v10 = v9;

    if (v10)
    {
      sub_27409D308(*(v5 + 56) + 32 * v8, v92);
      goto LABEL_8;
    }
  }

  else
  {
  }

  memset(v92, 0, 32);
LABEL_8:
  v12 = sub_2741C7E7C();
  v14 = v13;
  v15 = sub_2741C7E7C();
  v17 = v16;
  v18 = sub_2741C7E7C();
  v20 = v19;
  v21 = sub_2741C7E7C();
  v23 = v22;
  sub_2740B2A50(v92, v81);
  if (!v84)
  {
    sub_2740B29E8(v81);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  *&v71 = v21;
  v24 = v12 == v75 && v14 == *(&v75 + 1);
  *(&v71 + 1) = *(&v75 + 1);
  if (v24)
  {

LABEL_20:

LABEL_21:

    v27 = 0;
    v26 = 0;
    goto LABEL_22;
  }

  v25 = sub_2741C86DC();

  if ((v25 & 1) != 0 || __PAIR128__(v17, v15) == v75)
  {
    goto LABEL_20;
  }

  v68 = sub_2741C86DC();

  if (v68)
  {
    goto LABEL_21;
  }

  if (__PAIR128__(v20, v18) == v75)
  {

LABEL_67:

    v27 = 0;
    v26 = 1;
    goto LABEL_22;
  }

  v69 = sub_2741C86DC();

  if (v69)
  {

    goto LABEL_67;
  }

  if (__PAIR128__(v23, v75) != v71)
  {
    v70 = sub_2741C86DC();

    if (v70)
    {
      goto LABEL_71;
    }

LABEL_18:
    v26 = 3;
    v27 = 1;
    goto LABEL_22;
  }

LABEL_71:
  v27 = 0;
  v26 = 2;
LABEL_22:
  v28 = sub_2741C7E7C();
  if (!*(v5 + 16))
  {

    goto LABEL_28;
  }

  v30 = sub_2741251AC(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_28:
    v33 = 0;
    goto LABEL_29;
  }

  sub_27409D308(*(v5 + 56) + 32 * v30, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  if (swift_dynamicCast())
  {
    v33 = v75;
  }

  else
  {
    v33 = 0;
  }

LABEL_29:
  v34 = sub_2741C7E7C();
  if (!*(v5 + 16))
  {

    goto LABEL_35;
  }

  v36 = sub_2741251AC(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_35:
    v39 = 0;
    goto LABEL_36;
  }

  sub_27409D308(*(v5 + 56) + 32 * v36, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  if (swift_dynamicCast())
  {
    v39 = v75;
  }

  else
  {
    v39 = 0;
  }

LABEL_36:
  v40 = sub_2741C7E7C();
  if (!*(v5 + 16))
  {

    goto LABEL_45;
  }

  v42 = sub_2741251AC(v40, v41);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_45:
    v46 = 0;
    v47 = 0;
    goto LABEL_46;
  }

  sub_27409D308(*(v5 + 56) + 32 * v42, v81);
  v45 = swift_dynamicCast();
  if (v45)
  {
    v46 = v75;
  }

  else
  {
    v46 = 0;
  }

  if (v45)
  {
    v47 = *(&v75 + 1);
  }

  else
  {
    v47 = 0;
  }

LABEL_46:
  v48 = sub_2741C7E7C();
  if (*(v5 + 16))
  {
    v72 = v46;
    v50 = v33;
    v51 = v27;
    v52 = v26;
    v53 = sub_2741251AC(v48, v49);
    v55 = v54;

    if (v55)
    {
      sub_27409D308(*(v5 + 56) + 32 * v53, v81);

      v56 = swift_dynamicCast();
      if (v56)
      {
        v57 = v75;
      }

      else
      {
        v57 = 0;
      }

      if (v56)
      {
        v58 = *(&v75 + 1);
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {

      v57 = 0;
      v58 = 0;
    }

    v26 = v52;
    v67 = v51;
    v33 = v50;
    v46 = v72;
    if (v67)
    {
      goto LABEL_58;
    }
  }

  else
  {

    v57 = 0;
    v58 = 0;
    if (v27)
    {
LABEL_58:

      sub_2740CB218(0xD00000000000001DLL, 0x80000002741D9940, 0xD000000000000013, 0x80000002741D9920);
      result = sub_2740B29E8(v92);
      goto LABEL_59;
    }
  }

  sub_2740B29E8(v92);
  v60 = *(v73 + 32);
  v59 = *(v73 + 40);
  LOBYTE(v75) = v26;
  *(&v75 + 1) = v33;
  *&v76 = v39;
  *(&v76 + 1) = v46;
  *&v77 = v47;
  *(&v77 + 1) = v57;
  v78 = v58;
  *&v79 = 0;
  *(&v79 + 1) = v60;
  v80 = v59;
  v81[0] = v26;
  v82 = v33;
  v83 = v39;
  v84 = v46;
  v85 = v47;
  v86 = v57;
  v87 = v58;
  v88 = 0;
  v89 = 0;
  v90 = v60;
  v91 = v59;

  sub_2740B2AC0(&v75, v74);
  result = sub_2740B2B1C(v81);
  v61 = v75;
  v62 = v76;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
LABEL_60:
  *a1 = v61;
  *(a1 + 16) = v62;
  *(a1 + 32) = v63;
  *(a1 + 48) = v64;
  *(a1 + 64) = v65;
  *(a1 + 80) = v66;
  return result;
}

uint64_t sub_2740AE4C0@<X0>(_BOOL8 *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2740B0ADC(*MEMORY[0x277CE1678]);
  if (!v4)
  {
    result = sub_2740CB218(0xD000000000000029, 0x80000002741D9840, 0xD000000000000012, 0x80000002741D9870);
    v12 = 0;
    v10 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_25;
  }

  v5 = sub_2741C7E7C();
  if (!*(v4 + 16))
  {

    goto LABEL_9;
  }

  v7 = sub_2741251AC(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  sub_27409D308(*(v4 + 56) + 32 * v7, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  if (swift_dynamicCast())
  {
    v10 = v31;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:
  v15 = sub_2741C7E7C();
  if (*(v4 + 16))
  {
    v17 = sub_2741251AC(v15, v16);
    v19 = v18;

    if (v19)
    {
      sub_27409D308(*(v4 + 56) + 32 * v17, &v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
      if (swift_dynamicCast())
      {
        v13 = v31;
      }

      else
      {
        v13 = 0;
      }

      if (!v10)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {

    v13 = 0;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  if (!v13)
  {
LABEL_24:

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD00000000000003ALL, 0x80000002741D9890);
    v21 = sub_2741C7D7C();
    v23 = v22;

    MEMORY[0x2743E5FB0](v21, v23);

    sub_2740CB218(v24, v25, 0xD000000000000012, 0x80000002741D9870);

    v12 = 0;
    v10 = 0;
    v13 = 0;
    v14 = 0;
    v4 = 0;
    goto LABEL_25;
  }

  v20 = *(v10 + 16) || *(v13 + 16);
  v14 = *(v2 + 32);
  v4 = *(v2 + 40);
  v24 = 0;
  v25 = 0xE000000000000000;

  sub_2741C856C();
  v31 = v24;
  v32 = v25;
  MEMORY[0x2743E5FB0](0xD000000000000016, 0x80000002741D98D0);
  LOBYTE(v24) = v20;
  v25 = v10;
  v26 = v13;
  v27 = 0;
  v28 = 0;
  v29 = v14;
  v30 = v4;
  sub_2741C862C();
  sub_2740CB460(v31, v32);

  v12 = v20;
LABEL_25:
  *a1 = v12;
  a1[1] = v10;
  a1[2] = v13;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = v14;
  a1[6] = v4;
  return result;
}

uint64_t sub_2740AE850()
{
  v1 = v0;
  v2 = sub_2740B0ADC(*MEMORY[0x277CE16B8]);
  if (!v2)
  {
    sub_2740CB218(0xD00000000000002DLL, 0x80000002741D97B0, 0x74655379786F7270, 0xEF292873676E6974);
    return 0;
  }

  v3 = v2;
  sub_2741C856C();

  v81[0] = 0xD000000000000015;
  v81[1] = 0x80000002741D97E0;
  v4 = sub_2741C7D7C();
  MEMORY[0x2743E5FB0](v4);

  sub_2740CB218(0xD000000000000015, 0x80000002741D97E0, 0x74655379786F7270, 0xEF292873676E6974);

  if (*(v3 + 16) && (v5 = sub_2741251AC(0xD000000000000016, 0x80000002741D96E0), (v6 & 1) != 0) && (sub_27409D308(*(v3 + 56) + 32 * v5, v81), swift_dynamicCast()))
  {
    v74 = v79;
  }

  else
  {
    v74 = 0;
  }

  v7 = sub_2741C7E7C();
  if (!*(v3 + 16))
  {

    goto LABEL_17;
  }

  v9 = sub_2741251AC(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_17:
    v73 = 0;
    v78 = 0;
    goto LABEL_18;
  }

  sub_27409D308(*(v3 + 56) + 32 * v9, v81);
  v12 = swift_dynamicCast();
  v13 = v79;
  if (!v12)
  {
    v13 = 0;
  }

  v73 = v13;
  if (v12)
  {
    v14 = v80;
  }

  else
  {
    v14 = 0;
  }

  v78 = v14;
LABEL_18:
  v16 = sub_2741C7E7C();
  if (*(v3 + 16))
  {
    v18 = sub_2741251AC(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_27409D308(*(v3 + 56) + 32 * v18, v81);
      v21 = swift_dynamicCast();
      v22 = v79;
      if (!v21)
      {
        v22 = 0;
      }

      v72 = v22;
      if (v21)
      {
        v23 = v80;
      }

      else
      {
        v23 = 0;
      }

      v77 = v23;
      if (!*(v3 + 16))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v72 = 0;
      v77 = 0;
      if (!*(v3 + 16))
      {
LABEL_37:
        v71 = 0;
        v76 = 0;
        goto LABEL_38;
      }
    }
  }

  else
  {

    v72 = 0;
    v77 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_37;
    }
  }

  v24 = sub_2741251AC(0xD000000000000011, 0x80000002741D9700);
  if ((v25 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_27409D308(*(v3 + 56) + 32 * v24, v81);
  v26 = swift_dynamicCast();
  v27 = v79;
  if (!v26)
  {
    v27 = 0;
  }

  v71 = v27;
  if (v26)
  {
    v28 = v80;
  }

  else
  {
    v28 = 0;
  }

  v76 = v28;
LABEL_38:
  v29 = sub_2741C7E7C();
  if (!*(v3 + 16))
  {

    goto LABEL_47;
  }

  v31 = sub_2741251AC(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_47:
    v70 = 0;
    v75 = 0;
    goto LABEL_48;
  }

  sub_27409D308(*(v3 + 56) + 32 * v31, v81);
  v34 = swift_dynamicCast();
  v35 = v79;
  if (!v34)
  {
    v35 = 0;
  }

  v70 = v35;
  if (v34)
  {
    v36 = v80;
  }

  else
  {
    v36 = 0;
  }

  v75 = v36;
LABEL_48:
  v37 = sub_2741C7E7C();
  if (*(v3 + 16))
  {
    v39 = sub_2741251AC(v37, v38);
    v41 = v40;

    if (v41)
    {
      sub_27409D308(*(v3 + 56) + 32 * v39, v81);
      if (swift_dynamicCast())
      {
        v69 = v79;
        goto LABEL_54;
      }
    }
  }

  else
  {
  }

  v69 = 0;
LABEL_54:
  v42 = sub_2741C7E7C();
  if (!*(v3 + 16))
  {
    v47 = v1;

    goto LABEL_60;
  }

  v44 = sub_2741251AC(v42, v43);
  v46 = v45;

  if ((v46 & 1) == 0 || (sub_27409D308(*(v3 + 56) + 32 * v44, v81), !swift_dynamicCast()))
  {
    v47 = v1;
LABEL_60:
    v48 = 0;
    goto LABEL_61;
  }

  v47 = v1;
  v48 = v79;
LABEL_61:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938438, &qword_2741CC110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CC090;
  *(inited + 32) = sub_2741C7E7C();
  *(inited + 40) = v50;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  *(inited + 48) = &unk_288325E28;
  *(inited + 80) = sub_2741C7E7C();
  *(inited + 88) = v51;
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 1;
  v52 = sub_274177B3C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938440, &qword_2741CC118);
  swift_arrayDestroy();
  sub_274111E54(v3);

  v53 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v54 = sub_2741C7D4C();

  v55 = [v53 initWithDictionary_];

  sub_274111E54(v52);

  v56 = sub_2741C7D4C();

  v57 = [v55 isEqualToDictionary_];

  if (v57)
  {

    sub_2740CB218(0xD00000000000003ALL, 0x80000002741D9800, 0x74655379786F7270, 0xEF292873676E6974);
    v58 = *(v47 + 32);
    v59 = *(v47 + 40);
    type metadata accessor for ProxySettings();
    swift_allocObject();
    v15 = sub_274113B80(v58, v59);
  }

  else
  {
    if ((v69 & v48) != 0)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    if (v77)
    {
      v61 = v72;
    }

    else
    {
      v61 = 0;
    }

    if (v77)
    {
      v62 = v77;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v63 = sub_2740AF028(v61, v62);
    v65 = v64;
    v67 = *(v47 + 32);
    v66 = *(v47 + 40);
    type metadata accessor for ProxySettings();
    v15 = swift_allocObject();
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    *(v15 + 112) = 0;
    *(v15 + 120) = 0;
    *(v15 + 16) = v60;
    *(v15 + 24) = v73;
    *(v15 + 32) = v78;
    *(v15 + 40) = v71;
    *(v15 + 48) = v76;
    *(v15 + 72) = v63;
    *(v15 + 80) = v65 & 1;
    *(v15 + 88) = v70;
    *(v15 + 96) = v75;
    *(v15 + 81) = v74;
    *(v15 + 104) = v48;
    *(v15 + 105) = v69;
    *(v15 + 128) = v67;
    *(v15 + 136) = v66;
    *(v15 + 17) = 1;
  }

  return v15;
}

unint64_t sub_2740AF028(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2741C858C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2740B1168(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2740AF328(void *a1, const __SCNetworkSet *a2, uint64_t a3)
{
  v8 = sub_2740B01A4(a2, a3);
  if (!v4)
  {
    v9 = v8;
    v43 = 0;
    v10 = sub_2740ADA30();
    if (v10)
    {
      v11 = *MEMORY[0x277CE1688];
      v42 = v10;
      v12 = SCNetworkServiceCopyProtocol(v10, v11);
      if (v12)
      {
        v13 = v12;
        sub_2740B20B0(a1);
        v14 = sub_2741C7D4C();
        v15 = SCNetworkProtocolSetConfiguration(v13, v14);

        v44 = 0;
        v45 = 0xE000000000000000;
        sub_2741C856C();
        if (v15)
        {
          MEMORY[0x2743E5FB0](0x7270206465766153, 0xED0000203A6F746FLL);
          v46 = v13;
          type metadata accessor for SCNetworkProtocol(0);
          sub_2741C862C();
          MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
          v16 = sub_2741C7D7C();
          v18 = v17;

          MEMORY[0x2743E5FB0](v16, v18);

          sub_2740CB460(0, 0xE000000000000000);
        }

        else
        {
          MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741D9250);
          v46 = v13;
          type metadata accessor for SCNetworkProtocol(0);
          sub_2741C862C();
          MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
          v20 = sub_2741C7D7C();
          v22 = v21;

          MEMORY[0x2743E5FB0](v20, v22);

          sub_2740CB218(0, 0xE000000000000000, 0xD000000000000015, 0x80000002741D9790);
        }
      }

      if (qword_280937B98 != -1)
      {
        swift_once();
      }

      v23 = qword_280946F10;
      swift_beginAccess();
      v24 = v23[9];
      if (!v24)
      {
        goto LABEL_21;
      }

      v41 = v9;
      v25 = v23[10];
      v26 = __swift_project_boxed_opaque_existential_1(v23 + 6, v24);
      v40[1] = v40;
      v27 = *(v24 - 8);
      MEMORY[0x28223BE20](v26, v26);
      v29 = v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v29);
      v30 = (*(v25 + 32))(v24, v25);
      v32 = v31;
      (*(v27 + 8))(v29, v24);
      if (v30 == a2 && v32 == a3)
      {

        v9 = v41;
      }

      else
      {
        v34 = sub_2741C86DC();

        v9 = v41;
        if ((v34 & 1) == 0)
        {
LABEL_21:
          v3 = sub_2740B048C(v9);

          return v3;
        }
      }

      v35 = sub_2740AD558();
      if (!v35 || (v36 = v35, v37 = SCNetworkSetSetCurrent(v35), v36, !v37))
      {
        sub_2740CB218(0xD00000000000001DLL, 0x80000002741D96C0, 0xD000000000000015, 0x80000002741D9790);
        sub_2740B2004();
        v3 = swift_allocError();
        *v38 = 1;
        swift_willThrow();

        return v3;
      }

      goto LABEL_21;
    }

    sub_2740CB218(0xD00000000000001ELL, 0x80000002741D9750, 0xD000000000000015, 0x80000002741D9790);
    sub_2740B2004();
    v3 = swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2740AF8A0(uint64_t a1, const __SCNetworkSet *a2, uint64_t a3)
{
  v8 = sub_2740B01A4(a2, a3);
  if (!v4)
  {
    v9 = v8;
    v43 = 0;
    v10 = sub_2740ADA30();
    if (v10)
    {
      v11 = *MEMORY[0x277CE1678];
      v42 = v10;
      v12 = SCNetworkServiceCopyProtocol(v10, v11);
      if (v12)
      {
        v13 = v12;
        sub_2740B2450(a1);
        v14 = sub_2741C7D4C();
        v15 = SCNetworkProtocolSetConfiguration(v13, v14);

        v44 = 0;
        v45 = 0xE000000000000000;
        sub_2741C856C();
        if (v15)
        {
          MEMORY[0x2743E5FB0](0x7270206465766153, 0xED0000203A6F746FLL);
          v46 = v13;
          type metadata accessor for SCNetworkProtocol(0);
          sub_2741C862C();
          MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
          v16 = sub_2741C7D7C();
          v18 = v17;

          MEMORY[0x2743E5FB0](v16, v18);

          sub_2740CB460(0, 0xE000000000000000);
        }

        else
        {
          MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741D9250);
          v46 = v13;
          type metadata accessor for SCNetworkProtocol(0);
          sub_2741C862C();
          MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
          v20 = sub_2741C7D7C();
          v22 = v21;

          MEMORY[0x2743E5FB0](v20, v22);

          sub_2740CB218(0, 0xE000000000000000, 0xD000000000000014, 0x80000002741D9770);
        }
      }

      if (qword_280937B98 != -1)
      {
        swift_once();
      }

      v23 = qword_280946F10;
      swift_beginAccess();
      v24 = v23[9];
      if (!v24)
      {
        goto LABEL_21;
      }

      v41 = v9;
      v25 = v23[10];
      v26 = __swift_project_boxed_opaque_existential_1(v23 + 6, v24);
      v40[1] = v40;
      v27 = *(v24 - 8);
      MEMORY[0x28223BE20](v26, v26);
      v29 = v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v29);
      v30 = (*(v25 + 32))(v24, v25);
      v32 = v31;
      (*(v27 + 8))(v29, v24);
      if (v30 == a2 && v32 == a3)
      {

        v9 = v41;
      }

      else
      {
        v34 = sub_2741C86DC();

        v9 = v41;
        if ((v34 & 1) == 0)
        {
LABEL_21:
          v3 = sub_2740B048C(v9);

          return v3;
        }
      }

      v35 = sub_2740AD558();
      if (!v35 || (v36 = v35, v37 = SCNetworkSetSetCurrent(v35), v36, !v37))
      {
        sub_2740CB218(0xD00000000000001DLL, 0x80000002741D96C0, 0xD000000000000014, 0x80000002741D9770);
        sub_2740B2004();
        v3 = swift_allocError();
        *v38 = 1;
        swift_willThrow();

        return v3;
      }

      goto LABEL_21;
    }

    sub_2740CB218(0xD00000000000001ELL, 0x80000002741D9750, 0xD000000000000014, 0x80000002741D9770);
    sub_2740B2004();
    v3 = swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2740AFE20(uint64_t a1, const __SCNetworkSet *a2, uint64_t a3)
{
  v8 = sub_2740B01A4(a2, a3);
  if (!v4)
  {
    v9 = v8;
    v35 = 0;
    v10 = sub_2740ADA30();
    if (v10)
    {
      v11 = v10;
      v12 = SCNetworkServiceCopyProtocol(v10, *MEMORY[0x277CE16B8]);
      if (v12)
      {
        v13 = v12;
        v14 = sub_2740B2580(a1);
        sub_2740B0C08(a1, v13, v14);
      }

      if (qword_280937B98 != -1)
      {
        swift_once();
      }

      v15 = qword_280946F10;
      swift_beginAccess();
      v16 = v15[9];
      if (!v16)
      {
        goto LABEL_18;
      }

      v34 = v11;
      v17 = v15[10];
      v18 = __swift_project_boxed_opaque_existential_1(v15 + 6, v16);
      v33[1] = v33;
      v19 = *(v16 - 8);
      MEMORY[0x28223BE20](v18, v18);
      v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v21);
      v22 = (*(v17 + 32))(v16, v17);
      v24 = v23;
      (*(v19 + 8))(v21, v16);
      if (v22 == a2 && v24 == a3)
      {

        v11 = v34;
      }

      else
      {
        v26 = sub_2741C86DC();

        v11 = v34;
        if ((v26 & 1) == 0)
        {
LABEL_18:
          v3 = sub_2740B048C(v9);

          return v3;
        }
      }

      v28 = sub_2740AD558();
      if (!v28 || (v29 = v28, v30 = SCNetworkSetSetCurrent(v28), v29, !v30))
      {
        sub_2740CB218(0xD00000000000001DLL, 0x80000002741D96C0, 0xD000000000000018, 0x80000002741D96A0);
        sub_2740B2004();
        v3 = swift_allocError();
        *v31 = 1;
        swift_willThrow();

        return v3;
      }

      goto LABEL_18;
    }

    sub_2740CB218(0xD000000000000022, 0x80000002741D9670, 0xD000000000000018, 0x80000002741D96A0);
    sub_2740B2004();
    v3 = swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  return v3;
}

const __SCNetworkSet *sub_2740B01A4(const __SCNetworkSet *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2740AD558();
  if (v6)
  {
    v7 = v6;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741D9650);
    type metadata accessor for SCNetworkSet(0);
    sub_2741C862C();
    sub_2740CB218(0, 0xE000000000000000, 0xD000000000000010, 0x80000002741D9630);

    v8 = v7;
    v9 = v7;
  }

  else
  {
    sub_2740CB460(0xD000000000000049, 0x80000002741D95C0);
    v10 = sub_2740B0610(a1, a2);
    if (!v10)
    {
      sub_2740B2004();
      swift_allocError();
      *v17 = 0;
      swift_willThrow();
      return a1;
    }

    v9 = v10;
    v8 = v10;
    v7 = 0;
  }

  a1 = v8;
  v11 = v7;
  v12 = sub_2740AD558();
  if (!v12)
  {

    goto LABEL_9;
  }

  v13 = v12;
  type metadata accessor for SCNetworkSet(0);
  sub_2740B2058();
  v14 = sub_2741C6A9C();

  if ((v14 & 1) == 0)
  {
LABEL_9:
    v15 = SCNetworkSetGetSetID(a1);
    if (v15)
    {
      v16 = v15;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_2741C7E6C();
      }
    }

    v18 = *(v3 + 48);
    SCPreferencesUnlock(v18);
    SCPreferencesSynchronize(v18);
  }

  v19 = *(v3 + 48);
  if (SCPreferencesLock(v19, 0) || (SCPreferencesSynchronize(v19), SCPreferencesLock(v19, 1u)))
  {
  }

  else
  {
    sub_2740CB218(0xD000000000000018, 0x80000002741D9610, 0xD000000000000010, 0x80000002741D9630);
    sub_2740B2004();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  return a1;
}

CFStringRef sub_2740B048C(const __SCNetworkSet *a1)
{
  v3 = *(v1 + 48);
  if (SCPreferencesCommitChanges(v3))
  {
    if (SCPreferencesApplyChanges(v3))
    {
      if (!SCPreferencesUnlock(v3))
      {
        sub_2740CB218(0xD00000000000001ALL, 0x80000002741D9510, 0xD000000000000020, 0x80000002741D9530);
        SCPreferencesSynchronize(v3);
      }
    }

    else
    {
      sub_2740CB218(0xD000000000000020, 0x80000002741D9560, 0xD000000000000020, 0x80000002741D9530);
      SCPreferencesUnlock(v3);
    }
  }

  else
  {
    sub_2740CB218(0xD000000000000021, 0x80000002741D9590, 0xD000000000000020, 0x80000002741D9530);
  }

  SCPreferencesUnlock(v3);
  result = SCNetworkSetGetSetID(a1);
  if (result)
  {
    v5 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2741C7E6C();
    }

    return 0;
  }

  return result;
}

CFMutableArrayRef sub_2740B0610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v6 = sub_2740AD7C8();
  if (!v6)
  {
    sub_2740CB218(0xD00000000000001CLL, 0x80000002741D9330, 0xD000000000000019, 0x80000002741D9350);
    return 0;
  }

  v7 = v6;
  v8 = *(v2 + 48);
  v9 = SCNetworkSetCreate(v8);
  if (!v9)
  {
    sub_2740CB218(0xD000000000000035, 0x80000002741D9370, 0xD000000000000019, 0x80000002741D9350);

    return v9;
  }

  if (a1 == 0x6974616D6F747541 && a2 == 0xE900000000000063 || (sub_2741C86DC() & 1) != 0)
  {
    sub_2740CB218(0xD00000000000002BLL, 0x80000002741D9470, 0xD000000000000019, 0x80000002741D9350);
  }

  else
  {
    v10 = sub_2741C7E3C();
    SCNetworkSetSetName(v9, v10);
  }

  v11 = SCNetworkSetGetServiceOrder(v7);
  if (!v11)
  {
LABEL_21:
    sub_2740CB218(0xD00000000000002ELL, 0x80000002741D93B0, 0xD000000000000019, 0x80000002741D9350);

    return 0;
  }

  v12 = v11;
  if (!SCNetworkSetSetServiceOrder(v9, v11))
  {

    goto LABEL_21;
  }

  v13 = sub_2740B1D48();
  if (!v13)
  {
    sub_2741C856C();

    MEMORY[0x2743E5FB0](*(v3 + 32), *(v3 + 40));
    sub_2740CB218(0xD00000000000001CLL, 0x80000002741D93E0, 0xD000000000000019, 0x80000002741D9350);

    return 0;
  }

  v14 = v13;
  v15 = sub_2740ADA30();
  v16 = SCNetworkServiceCreate(v8, v14);
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  if (!SCNetworkServiceEstablishDefaultConfiguration(v16))
  {
    v24 = 0xD000000000000022;
    v25 = 0x80000002741D9440;
LABEL_28:
    sub_2740CB218(v24, v25, 0xD000000000000019, 0x80000002741D9350);

    return 0;
  }

  v18 = sub_2741C7E3C();
  SCNetworkServiceSetName(v17, v18);

  if (!SCNetworkSetAddService(v9, v17))
  {
    v25 = 0x80000002741D9420;
    v24 = 0xD000000000000019;
    goto LABEL_28;
  }

  if (!v15)
  {

    return v9;
  }

  v19 = SCNetworkSetGetServiceOrder(v7);
  v20 = v19;
  if (v19)
  {
    v21 = v19;
    result = CFArrayCreateMutableCopy(0, 0, v21);
    if (result)
    {
      v23 = result;

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    result = CFArrayCreateMutable(0, 0, &callBacks);
    v23 = result;
    if (result)
    {
LABEL_31:
      v26 = v23;
      v27 = SCNetworkServiceGetServiceID(v15);
      v34.length = CFArrayGetCount(v26);
      v34.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v26, v34, value);

      if (FirstIndexOfValue == -1)
      {
        v29 = SCNetworkServiceGetServiceID(v17);
        CFArraySetValueAtIndex(v26, -1, v30);
        SCNetworkSetSetServiceOrder(v9, v26);
      }

      else
      {
      }

      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2740B0ADC(const __CFString *a1)
{
  v2 = sub_2740ADA30();
  if (!v2)
  {
    sub_2740CB218(0xD00000000000001CLL, 0x80000002741D92F0, 0xD00000000000001DLL, 0x80000002741D9310);
    return 0;
  }

  v3 = v2;
  v4 = SCNetworkServiceCopyProtocol(v2, a1);
  if (!v4)
  {
    v5 = v3;
LABEL_10:

    return 0;
  }

  v5 = v4;
  v6 = SCNetworkProtocolGetConfiguration(v4);
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = v6;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v3 = v5;
    v5 = v7;
    goto LABEL_9;
  }

  v8 = v7;
  sub_2741C7D5C();

  return 0;
}