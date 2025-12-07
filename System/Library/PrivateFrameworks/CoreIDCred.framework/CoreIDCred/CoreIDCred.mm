uint64_t sub_2456105EC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24561068C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_245610748(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_245610814(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_24565BA64();
  [v2 setSessionEstablishment_];
}

uint64_t sub_245610938@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = DCPresentmentRequest.relyingPartyIdentifier.getter(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24561096C()
{

  sub_245634104(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2456109C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_245610A7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245610AF8()
{
  MEMORY[0x245D6D7B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245610BEC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_245610C10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_245610C48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245610C80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245610D58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v1 = sub_24565BC04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_245610E64()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v1 = sub_24565BC04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_245610F14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_245610F5C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24561100C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id DC_LOG_CLIENT(uint64_t a1)
{
  if (DC_LOG_CLIENT_once != -1)
  {
    DC_LOG_CLIENT_cold_1();
  }

  v2 = DC_LOG_CLIENT_log;

  return v2;
}

id DC_LOG_MILESTONE_LOG(uint64_t a1)
{
  if (DC_LOG_MILESTONE_LOG_once != -1)
  {
    DC_LOG_MILESTONE_LOG_cold_1();
  }

  v2 = DC_LOG_MILESTONE_LOG_log;

  return v2;
}

__CFString *DCCredentialAuthACLTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E814E8[a1];
  }
}

__CFString *DCCredentialStateToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_278E81508[a1 - 1];
  }
}

__CFString *DCCredentialReaderAuthenticationPolicyToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Identity";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"None";
  }
}

__CFString *DCCredentialPresentmentAuthPolicyToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81520[a1];
  }
}

__CFString *DCCredentialElementNumericTypeHintToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81538[a1];
  }
}

void sub_24561B198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id DC_LOG_CLIENT_0(uint64_t a1)
{
  if (DC_LOG_CLIENT_once_0 != -1)
  {
    DC_LOG_CLIENT_cold_1_0();
  }

  v2 = DC_LOG_CLIENT_log_0;

  return v2;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id DC_LOG_CLIENT_1(uint64_t a1)
{
  if (DC_LOG_CLIENT_once_1 != -1)
  {
    DC_LOG_CLIENT_cold_1_1();
  }

  v2 = DC_LOG_CLIENT_log_1;

  return v2;
}

__CFString *DCCredentialPayloadFormatToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81808[a1];
  }
}

__CFString *DCCredentialPayloadProtectionPolicyToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Biometric";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Standard";
  }
}

__CFString *DCCredentialPayloadProtectionTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81830[a1];
  }
}

__CFString *DCCredentialDeviceEncryptionKeyTypeToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"SES";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"SEP";
  }
}

__CFString *DCCredentialKeyStoreTypeToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Keychain";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Local";
  }
}

__CFString *DCCredentialCryptoKeyTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81848[a1];
  }
}

__CFString *DCCredentialCryptoKeyUsageToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81868[a1];
  }
}

__CFString *DCPresentmentTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81B20[a1];
  }
}

__CFString *DCPresentmentSessionEncryptionModeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81B38[a1];
  }
}

__CFString *DCPresentmentResponseStatusToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81B58[a1];
  }
}

__CFString *DCPresentmentElementRetentionIntentToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81B70[a1 - 1];
  }
}

__CFString *DCPresentmentTransportKeySpecificationToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"ISO18013-5";
  }

  else
  {
    return @"Unknown";
  }
}

id DCPresentmentElementFallbackModeToString(char a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendFormat:@"["];
  if (a1)
  {
    v3 = @"ageOverToAgeInYears";
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3 = @"ageOverToNearestAgeOver";
  }

  [v2 appendFormat:v3];
LABEL_6:
  [v2 appendFormat:@"]"];

  return v2;
}

__CFString *DCPresentmentMessageEncodingFormatToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E81B88[a1];
  }
}

uint64_t sub_245628C14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245628C34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_245628C70()
{
  v0 = sub_24565BAC4();
  __swift_allocate_value_buffer(v0, qword_27EE1A228);
  __swift_project_value_buffer(v0, qword_27EE1A228);
  return sub_24565BAB4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_245628DA0(uint64_t a1)
{
  v2 = sub_245629258(&qword_27EE1A2F0, type metadata accessor for DCPresentmentError, &unk_24565EDFC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_245628E0C(uint64_t a1)
{
  v2 = sub_245629258(&qword_27EE1A2F0, type metadata accessor for DCPresentmentError, &unk_24565EDFC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_245628E7C(uint64_t a1)
{
  v2 = sub_245629258(&qword_27EE1A328, type metadata accessor for DCPresentmentError, &unk_24565EE40);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_245628F08(uint64_t a1)
{
  v2 = sub_245629258(&qword_27EE1A328, type metadata accessor for DCPresentmentError, &unk_24565EE40);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_245628F74(uint64_t a1)
{
  v2 = sub_245629258(&qword_27EE1A328, type metadata accessor for DCPresentmentError, &unk_24565EE40);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_245628FE0(void *a1, uint64_t a2)
{
  v4 = sub_245629258(&qword_27EE1A328, type metadata accessor for DCPresentmentError, &unk_24565EE40);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_245629094(uint64_t a1, uint64_t a2)
{
  v4 = sub_245629258(&qword_27EE1A328, type metadata accessor for DCPresentmentError, &unk_24565EE40);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_245629110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24565BF74();
  sub_24565BAF4();
  return sub_24565BFA4();
}

void *sub_245629170@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24562918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245629258(&qword_27EE1A328, type metadata accessor for DCPresentmentError, &unk_24565EE40);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_245629258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2456293D4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_24562946C()
{
  result = qword_27EE1A318;
  if (!qword_27EE1A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A318);
  }

  return result;
}

uint64_t sub_245629718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = (a3)(*v3, a2);
  v5 = sub_24565BB24();

  return v5;
}

uint64_t static CredentialPresentmentElementRequestInfo.IntentToStore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2456297A8()
{
  v1 = *v0;
  sub_24565BF74();
  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

uint64_t sub_2456297F0()
{
  v1 = *v0;
  sub_24565BF74();
  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

uint64_t sub_245629834()
{
  v1 = 0x53746F4E6C6C6977;
  if (*v0 != 1)
  {
    v1 = 0x4F79616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F745379616DLL;
  }
}

uint64_t sub_2456298A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24562B900(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2456298E0(uint64_t a1)
{
  v2 = sub_245629FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24562991C(uint64_t a1)
{
  v2 = sub_245629FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245629964(uint64_t a1)
{
  v2 = sub_24562A010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2456299A0(uint64_t a1)
{
  v2 = sub_24562A010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2456299F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937334628 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24565BED4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_245629A7C(uint64_t a1)
{
  v2 = sub_24562A0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245629AB8(uint64_t a1)
{
  v2 = sub_24562A0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245629AF4(uint64_t a1)
{
  v2 = sub_24562A064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245629B30(uint64_t a1)
{
  v2 = sub_24562A064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CredentialPresentmentElementRequestInfo.IntentToStore.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A400, "֛");
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A408, &qword_24565F268);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v23 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A410, &qword_24565F270);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A418, &qword_24565F278);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = *v2;
  v16 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245629FBC();
  sub_24565BFC4();
  if (v16 == 1)
  {
    if (v15)
    {
      v33 = 2;
      sub_24562A010();
      v17 = v26;
      sub_24565BE44();
      v19 = v27;
      v18 = v28;
    }

    else
    {
      v32 = 1;
      sub_24562A064();
      v17 = v23;
      sub_24565BE44();
      v19 = v24;
      v18 = v25;
    }

    (*(v19 + 8))(v17, v18);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v31 = 0;
    sub_24562A0B8();
    sub_24565BE44();
    v20 = v30;
    sub_24565BE94();
    (*(v29 + 8))(v10, v20);
    return (*(v12 + 8))(v14, v11);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_245629FBC()
{
  result = qword_27EE1A420;
  if (!qword_27EE1A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A420);
  }

  return result;
}

unint64_t sub_24562A010()
{
  result = qword_27EE1A428;
  if (!qword_27EE1A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A428);
  }

  return result;
}

unint64_t sub_24562A064()
{
  result = qword_27EE1A430;
  if (!qword_27EE1A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A430);
  }

  return result;
}

unint64_t sub_24562A0B8()
{
  result = qword_27EE1A438;
  if (!qword_27EE1A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A438);
  }

  return result;
}

uint64_t CredentialPresentmentElementRequestInfo.IntentToStore.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A440, &qword_24565F280);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v41 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A448, &qword_24565F288);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A450, &qword_24565F290);
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A458, &qword_24565F298);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_245629FBC();
  v15 = v42;
  sub_24565BFB4();
  if (!v15)
  {
    v34 = 0;
    v16 = v41;
    v42 = v11;
    v17 = sub_24565BE34();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v17 + 32);
      if (v18 == 1 && v19 != 3)
      {
        if (*(v17 + 32))
        {
          if (v19 != 1)
          {
            v46 = 2;
            sub_24562A010();
            v30 = v34;
            sub_24565BDB4();
            v31 = v42;
            if (!v30)
            {
              (*(v35 + 8))(v16, v37);
              (*(v31 + 8))(v13, v10);
              swift_unknownObjectRelease();
              v27 = 1;
              goto LABEL_22;
            }

            (*(v42 + 8))(v13, v10);
            goto LABEL_18;
          }

          v45 = 1;
          sub_24562A064();
          v25 = v34;
          sub_24565BDB4();
          v26 = v42;
          if (!v25)
          {
            (*(v38 + 8))(v6, v39);
            (*(v26 + 8))(v13, v10);
            swift_unknownObjectRelease();
            v27 = 0;
LABEL_22:
            v32 = 1;
            v29 = v40;
LABEL_23:
            *v29 = v27;
            *(v29 + 8) = v32;
            return __swift_destroy_boxed_opaque_existential_1(v43);
          }
        }

        else
        {
          v44 = 0;
          sub_24562A0B8();
          v28 = v34;
          sub_24565BDB4();
          v29 = v40;
          if (!v28)
          {
            v27 = sub_24565BE14();
            (*(v36 + 8))(v9, v7);
            (*(v42 + 8))(v13, v10);
            swift_unknownObjectRelease();
            v32 = 0;
            goto LABEL_23;
          }

          v26 = v42;
        }

        (*(v26 + 8))(v13, v10);
LABEL_18:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v43);
      }
    }

    v21 = sub_24565BD64();
    swift_allocError();
    v22 = v10;
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A460, &qword_24565F2A0);
    *v24 = &type metadata for CredentialPresentmentElementRequestInfo.IntentToStore;
    sub_24565BDC4();
    sub_24565BD54();
    (*(*(v21 - 8) + 104))(v24, *MEMORY[0x277D84160], v21);
    swift_willThrow();
    (*(v42 + 8))(v13, v22);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_24562A6F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24562A724()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24562A758()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
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

uint64_t sub_24562A808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void CredentialPresentmentElementRequestInfo.intentToStore.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t CredentialPresentmentElementRequestInfo.init(intentToStore:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

BOOL static CredentialPresentmentElementRequestInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (*(a2 + 8))
      {
        return v3 != 0;
      }
    }

    else if (*(a2 + 8))
    {
      return v3 == 0;
    }
  }

  else
  {
    if (v2 == v3)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24562A8C4()
{
  sub_24565BF74();
  MEMORY[0x245D6CFC0](0);
  return sub_24565BFA4();
}

uint64_t sub_24562A908()
{
  sub_24565BF74();
  MEMORY[0x245D6CFC0](0);
  return sub_24565BFA4();
}

uint64_t sub_24562A96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F54746E65746E69 && a2 == 0xED000065726F7453)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24565BED4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24562A9FC(uint64_t a1)
{
  v2 = sub_24562ABCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24562AA38(uint64_t a1)
{
  v2 = sub_24562ABCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CredentialPresentmentElementRequestInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A468, &qword_24565F2A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24562ABCC();
  sub_24565BFC4();
  v10 = v7;
  v11 = v8;
  sub_24562AC20();
  sub_24565BEA4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24562ABCC()
{
  result = qword_27EE1A470;
  if (!qword_27EE1A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A470);
  }

  return result;
}

unint64_t sub_24562AC20()
{
  result = qword_27EE1A478;
  if (!qword_27EE1A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A478);
  }

  return result;
}

uint64_t _s10CoreIDCred39CredentialPresentmentElementRequestInfoV13IntentToStoreO4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  return MEMORY[0x245D6CFC0](v1);
}

uint64_t _s10CoreIDCred39CredentialPresentmentElementRequestInfoV13IntentToStoreO9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24565BF74();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

uint64_t CredentialPresentmentElementRequestInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A480, &qword_24565F2B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24562ABCC();
  sub_24565BFB4();
  if (!v2)
  {
    sub_24562AF4C();
    sub_24565BE24();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 8) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24562AEE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24565BF74();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

unint64_t sub_24562AF4C()
{
  result = qword_27EE1A488;
  if (!qword_27EE1A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A488);
  }

  return result;
}

BOOL sub_24562AFA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (*(a2 + 8))
      {
        return v3 != 0;
      }
    }

    else if (*(a2 + 8))
    {
      return v3 == 0;
    }
  }

  else
  {
    if (v2 == v3)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CredentialPresentmentElementRequestInfo.merging(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = *v2;
  v6 = *(v2 + 8);
  if (v6 == 1)
  {
    if (v5)
    {
      if (v3)
      {
        v7 = *(result + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        goto LABEL_22;
      }
    }

    else if (*(result + 8))
    {
      goto LABEL_22;
    }

    v5 = *result;
    LOBYTE(v6) = *(result + 8);
    goto LABEL_22;
  }

  if (*(result + 8))
  {
    goto LABEL_22;
  }

  if (!v5)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v8 = v4 >= 1 && v3 == 0;
  v5 = *result;
  LOBYTE(v6) = *(result + 8);
  if (!v8)
  {
LABEL_19:
    LOBYTE(v6) = 0;
    if (v3 <= v4)
    {
      v5 = *v2;
    }

    else
    {
      v5 = *result;
    }
  }

LABEL_22:
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

unint64_t sub_24562B078()
{
  result = qword_27EE1A490;
  if (!qword_27EE1A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A490);
  }

  return result;
}

unint64_t sub_24562B0D0()
{
  result = qword_27EE1A498;
  if (!qword_27EE1A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A498);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CredentialPresentmentElementRequestInfo.IntentToStore(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CredentialPresentmentElementRequestInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for CredentialPresentmentElementRequestInfo.IntentToStore(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24562B1C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24562B1E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CredentialPresentmentElementRequestInfo.IntentToStore.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CredentialPresentmentElementRequestInfo.IntentToStore.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SessionType.DigitalCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SessionType.DigitalCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24562B48C()
{
  result = qword_27EE1A4A0;
  if (!qword_27EE1A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4A0);
  }

  return result;
}

unint64_t sub_24562B4E4()
{
  result = qword_27EE1A4A8;
  if (!qword_27EE1A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4A8);
  }

  return result;
}

unint64_t sub_24562B53C()
{
  result = qword_27EE1A4B0;
  if (!qword_27EE1A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4B0);
  }

  return result;
}

unint64_t sub_24562B594()
{
  result = qword_27EE1A4B8;
  if (!qword_27EE1A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4B8);
  }

  return result;
}

unint64_t sub_24562B5EC()
{
  result = qword_27EE1A4C0;
  if (!qword_27EE1A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4C0);
  }

  return result;
}

unint64_t sub_24562B644()
{
  result = qword_27EE1A4C8;
  if (!qword_27EE1A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4C8);
  }

  return result;
}

unint64_t sub_24562B69C()
{
  result = qword_27EE1A4D0;
  if (!qword_27EE1A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4D0);
  }

  return result;
}

unint64_t sub_24562B6F4()
{
  result = qword_27EE1A4D8;
  if (!qword_27EE1A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4D8);
  }

  return result;
}

unint64_t sub_24562B74C()
{
  result = qword_27EE1A4E0;
  if (!qword_27EE1A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4E0);
  }

  return result;
}

unint64_t sub_24562B7A4()
{
  result = qword_27EE1A4E8;
  if (!qword_27EE1A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4E8);
  }

  return result;
}

unint64_t sub_24562B7FC()
{
  result = qword_27EE1A4F0;
  if (!qword_27EE1A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4F0);
  }

  return result;
}

unint64_t sub_24562B854()
{
  result = qword_27EE1A4F8;
  if (!qword_27EE1A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A4F8);
  }

  return result;
}

unint64_t sub_24562B8AC()
{
  result = qword_27EE1A500;
  if (!qword_27EE1A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A500);
  }

  return result;
}

uint64_t sub_24562B900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F745379616DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_24565BED4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746F4E6C6C6977 && a2 == 0xEC00000065726F74 || (sub_24565BED4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24565BED4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t CredentialPresentmentRequest.sessionType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_24562BA74(v2, v3, v4, v5);
}

uint64_t sub_24562BA74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t CredentialPresentmentRequest.init(useCases:sessionType:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for DocumentRequest(0);
  v32 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = *(a2 + 24);
  v12 = MEMORY[0x277D84FA0];
  v36 = MEMORY[0x277D84FA0];
  v30 = *(a1 + 16);
  if (v30)
  {
    HIDWORD(v24) = v11;
    v25 = v10;
    v26 = v9;
    v29 = a1 + 32;

    v13 = 0;
    v28 = a1;
    while (v13 < *(a1 + 16))
    {
      v14 = *(v29 + 16 * v13);
      v34 = *(v14 + 16);
      if (v34)
      {
        v31 = v13;
        v33 = v14 + 32;

        v15 = 0;
        while (v15 < *(v14 + 16))
        {
          v16 = *(v33 + 8 * v15);
          v17 = *(v16 + 16);
          if (v17)
          {
            v18 = v32;
            v19 = v16 + ((*(v32 + 80) + 32) & ~*(v32 + 80));

            v20 = *(v18 + 72);
            do
            {
              sub_245632358(v19, v8);
              v21 = *(v8 + 1);
              v22 = *(v8 + 2);

              sub_2456323BC(v8);
              sub_245632208(&v35, v21, v22);

              v19 += v20;
              --v17;
            }

            while (v17);
          }

          if (++v15 == v34)
          {

            a1 = v28;
            v13 = v31;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      if (++v13 == v30)
      {

        v12 = v36;
        v9 = v26;
        v10 = v25;
        LOBYTE(v11) = BYTE4(v24);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v23 = v27;
    *v27 = a1;
    *(v23 + 1) = v9;
    v23[3] = v10;
    *(v23 + 32) = v11;
    v23[5] = v12;
  }

  return result;
}

uint64_t type metadata accessor for DocumentRequest(uint64_t a1)
{
  result = qword_27EE1A778;
  if (!qword_27EE1A778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24562BD50(uint64_t a1, uint64_t a2)
{
  v4 = sub_24565BA94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v173 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v138 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A868, &qword_245660738);
  MEMORY[0x28223BE20](v10);
  v12 = &v138 - v11;
  v13 = type metadata accessor for DocumentRequest(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v21 = (&v138 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v167 = v19;
    v23 = 0;
    v24 = a1 + 32;
    v25 = a2 + 32;
    v26 = (v5 + 48);
    v147 = (v5 + 32);
    v148 = (v5 + 8);
    v165 = v21;
    v166 = v16;
    while (1)
    {
      if (v23 == v22)
      {
        goto LABEL_131;
      }

      v27 = (v24 + 16 * v23);
      v28 = *v27;
      v29 = (v25 + 16 * v23);
      v30 = *v29;
      v31 = *(*v27 + 16);
      if (v31 != *(*v29 + 16))
      {
        break;
      }

      v32 = v27[8];
      v33 = v29[8];
      if (v31)
      {
        v34 = v28 == v30;
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        v141 = v33;
        v142 = v32;
        v152 = v26;
        v143 = v25;
        v144 = v23;
        v145 = v22;
        v163 = v28 + 32;
        v161 = v18;
        v162 = v30 + 32;
        v168 = v28;
        v149 = v31;

        v35 = v149;
        result = v168;
        v36 = 0;
        do
        {
          if (v36 >= *(result + 16))
          {
            goto LABEL_132;
          }

          if (v36 >= *(v30 + 16))
          {
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            return result;
          }

          v37 = *(v163 + 8 * v36);
          v38 = *(v162 + 8 * v36);
          v39 = *(v37 + 16);
          if (v39 != *(v38 + 16))
          {

LABEL_120:

            return 0;
          }

          if (v39 && v37 != v38)
          {
            v139 = v36;
            v140 = v24;
            v172 = v12;
            v40 = (*(v167 + 80) + 32) & ~*(v167 + 80);
            v155 = v38 + v40;
            v156 = v37 + v40;
            v41 = v38;
            v42 = v37;
            v146 = v39;

            v164 = v41;

            v43 = 0;
            v169 = v4;
            v154 = v30;
            v157 = v9;
            v158 = v10;
            v153 = v42;
            while (1)
            {
              if (v43 >= *(v42 + 16))
              {
                goto LABEL_134;
              }

              v44 = *(v167 + 72) * v43;
              result = sub_245632358(v156 + v44, v21);
              v45 = v172;
              if (v43 >= *(v164 + 16))
              {
                goto LABEL_135;
              }

              result = sub_245632358(v155 + v44, v16);
              v46 = *v21;
              v47 = *v16;
              v34 = *v21 == *v16;
              v171 = v43;
              if (!v34)
              {
                break;
              }

LABEL_56:
              v80 = v21[1] == *(v16 + 8) && v21[2] == *(v16 + 16);
              v4 = v169;
              v9 = v157;
              if (!v80 && (sub_24565BED4() & 1) == 0 || (sub_24562D5EC(v21[3], *(v16 + 24)) & 1) == 0)
              {
                goto LABEL_119;
              }

              v81 = *(v161 + 28);
              v82 = *(v158 + 48);
              sub_245634590(v21 + v81, v45);
              sub_245634590(v16 + v81, v45 + v82);
              v83 = *v152;
              if ((*v152)(v45, 1, v4) == 1)
              {
                if (v83(v45 + v82, 1, v4) != 1)
                {
                  goto LABEL_127;
                }

                result = sub_245636C48(v45, &qword_27EE1A5E0, &qword_24565F9B0);
              }

              else
              {
                sub_245634590(v45, v9);
                if (v83(v45 + v82, 1, v4) == 1)
                {
                  goto LABEL_126;
                }

                v84 = v45 + v82;
                v85 = v173;
                (*v147)(v173, v84, v4);
                sub_245636CA8(&qword_27EE1A870, MEMORY[0x277CC9698], MEMORY[0x277CC96B0]);
                v86 = sub_24565BB04();
                v87 = *v148;
                (*v148)(v85, v4);
                v87(v9, v4);
                result = sub_245636C48(v172, &qword_27EE1A5E0, &qword_24565F9B0);
                if ((v86 & 1) == 0)
                {
                  goto LABEL_119;
                }
              }

              v88 = *(v161 + 32);
              v89 = *(v21 + v88);
              v90 = *(v16 + v88);
              if (v89 != v90)
              {
                if (*(v89 + 16) == *(v90 + 16))
                {
                  v91 = 0;
                  v92 = *(v89 + 64);
                  v159 = v89 + 64;
                  v93 = 1 << *(v89 + 32);
                  if (v93 < 64)
                  {
                    v94 = ~(-1 << v93);
                  }

                  else
                  {
                    v94 = -1;
                  }

                  v95 = v94 & v92;
                  v151 = (v93 + 63) >> 6;
                  v160 = v90;
                  v150 = v89;
                  if (v95)
                  {
                    while (1)
                    {
                      v96 = v43;
                      v97 = v9;
                      v98 = __clz(__rbit64(v95));
                      v170 = (v95 - 1) & v95;
LABEL_79:
                      v101 = v98 | (v91 << 6);
                      v102 = (*(v89 + 48) + 16 * v101);
                      v103 = *v102;
                      v104 = v102[1];
                      v105 = *(*(v89 + 56) + 8 * v101);

                      v106 = v103;
                      v107 = v160;
                      v108 = sub_24564A830(v106, v104);
                      v110 = v109;

                      if ((v110 & 1) == 0)
                      {
                        goto LABEL_124;
                      }

                      v111 = *(*(v107 + 56) + 8 * v108);
                      v9 = v97;
                      v43 = v96;
                      v4 = v169;
                      if (v111 != v105)
                      {
                        break;
                      }

LABEL_109:

                      v95 = v170;
                      if (!v170)
                      {
                        goto LABEL_74;
                      }
                    }

                    v112 = v105;
                    if (*(v111 + 16) != *(v105 + 16))
                    {
LABEL_124:

                      v16 = v166;
                      goto LABEL_119;
                    }

                    v113 = v111 + 64;
                    v114 = 1 << *(v111 + 32);
                    if (v114 < 64)
                    {
                      v115 = ~(-1 << v114);
                    }

                    else
                    {
                      v115 = -1;
                    }

                    v116 = v115 & *(v111 + 64);
                    v117 = (v114 + 63) >> 6;
                    v175 = v111;

                    v118 = 0;
                    v174 = v117;
                    while (v116)
                    {
                      v119 = __clz(__rbit64(v116));
                      v120 = (v116 - 1) & v116;
LABEL_93:
                      v123 = 16 * (v119 | (v118 << 6));
                      v124 = (*(v175 + 48) + v123);
                      v125 = *v124;
                      v126 = v124[1];
                      v127 = *(v175 + 56) + v123;
                      v128 = *v127;
                      v129 = *(v127 + 8);

                      if (!v126)
                      {
LABEL_108:

                        v21 = v165;
                        v4 = v169;
                        v9 = v157;
                        v43 = v171;
                        v89 = v150;
                        goto LABEL_109;
                      }

                      v130 = v113;
                      v131 = v120;
                      v132 = sub_24564A830(v125, v126);
                      v134 = v133;

                      if ((v134 & 1) == 0)
                      {
                        goto LABEL_52;
                      }

                      v135 = *(v112 + 56) + 16 * v132;
                      v136 = *v135;
                      if (*(v135 + 8) == 1)
                      {
                        v116 = v131;
                        if (v136)
                        {
                          if (v128)
                          {
                            v137 = v129;
                          }

                          else
                          {
                            v137 = 0;
                          }
                        }

                        else if (v128)
                        {
                          v137 = 0;
                        }

                        else
                        {
                          v137 = v129;
                        }

                        v113 = v130;
                        v117 = v174;
                        if ((v137 & 1) == 0)
                        {
                          goto LABEL_52;
                        }
                      }

                      else
                      {
                        if (v129)
                        {
                          goto LABEL_52;
                        }

                        v116 = v131;
                        v113 = v130;
                        v117 = v174;
                        if (v136 != v128)
                        {
                          goto LABEL_52;
                        }
                      }
                    }

                    v121 = v118;
                    while (1)
                    {
                      v118 = v121 + 1;
                      if (__OFADD__(v121, 1))
                      {
                        break;
                      }

                      if (v118 >= v117)
                      {
                        goto LABEL_108;
                      }

                      v122 = *(v113 + 8 * v118);
                      ++v121;
                      if (v122)
                      {
                        v119 = __clz(__rbit64(v122));
                        v120 = (v122 - 1) & v122;
                        goto LABEL_93;
                      }
                    }

                    __break(1u);
                    goto LABEL_129;
                  }

LABEL_74:
                  v99 = v91;
                  v16 = v166;
                  while (1)
                  {
                    v91 = v99 + 1;
                    if (__OFADD__(v99, 1))
                    {
                      break;
                    }

                    if (v91 >= v151)
                    {
                      goto LABEL_111;
                    }

                    v100 = *(v159 + 8 * v91);
                    ++v99;
                    if (v100)
                    {
                      v96 = v43;
                      v97 = v9;
                      v98 = __clz(__rbit64(v100));
                      v170 = (v100 - 1) & v100;
                      goto LABEL_79;
                    }
                  }

LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  __break(1u);
                  goto LABEL_133;
                }

LABEL_119:
                sub_2456323BC(v16);
                sub_2456323BC(v21);

                goto LABEL_120;
              }

LABEL_111:
              ++v43;
              sub_2456323BC(v16);
              result = sub_2456323BC(v21);
              v30 = v154;
              v10 = v158;
              v42 = v153;
              if (v43 == v146)
              {

                result = v168;
                v12 = v172;
                v24 = v140;
                v35 = v149;
                v36 = v139;
                goto LABEL_15;
              }
            }

            if (*(v46 + 16) == *(v47 + 16))
            {
              v48 = 0;
              v49 = *(v46 + 64);
              v151 = v46 + 64;
              v50 = 1 << *(v46 + 32);
              if (v50 < 64)
              {
                v51 = ~(-1 << v50);
              }

              else
              {
                v51 = -1;
              }

              v52 = v51 & v49;
              v53 = (v50 + 63) >> 6;
              v150 = v46;
              v159 = v53;
              v160 = v47;
              if (!v52)
              {
LABEL_31:
                v55 = v48;
                while (1)
                {
                  v48 = v55 + 1;
                  if (__OFADD__(v55, 1))
                  {
                    break;
                  }

                  if (v48 >= v53)
                  {
                    goto LABEL_56;
                  }

                  v56 = *(v151 + 8 * v48);
                  ++v55;
                  if (v56)
                  {
                    v54 = __clz(__rbit64(v56));
                    v170 = (v56 - 1) & v56;
                    goto LABEL_36;
                  }
                }

LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              while (1)
              {
                v54 = __clz(__rbit64(v52));
                v170 = (v52 - 1) & v52;
LABEL_36:
                v57 = v54 | (v48 << 6);
                v58 = (*(v46 + 48) + 16 * v57);
                v59 = *v58;
                v60 = v58[1];
                v61 = *(*(v46 + 56) + 8 * v57);

                v45 = sub_24564A830(v59, v60);
                v4 = v62;

                if ((v4 & 1) == 0)
                {
                  goto LABEL_122;
                }

                v63 = *(*(v47 + 56) + 8 * v45);
                if (v63 != v61)
                {
                  break;
                }

LABEL_54:

                v45 = v172;
                v53 = v159;
                v52 = v170;
                if (!v170)
                {
                  goto LABEL_31;
                }
              }

              if (*(v63 + 16) != *(v61 + 2))
              {
LABEL_122:

                goto LABEL_119;
              }

              v174 = v61;
              v64 = v63 + 64;
              v65 = 1 << *(v63 + 32);
              if (v65 < 64)
              {
                v66 = ~(-1 << v65);
              }

              else
              {
                v66 = -1;
              }

              v67 = v66 & *(v63 + 64);
              v21 = ((v65 + 63) >> 6);

              v69 = 0;
              while (v67)
              {
                v70 = __clz(__rbit64(v67));
                v175 = (v67 - 1) & v67;
LABEL_50:
                v73 = v70 | (v69 << 6);
                v74 = v68;
                v75 = (*(v68 + 48) + 16 * v73);
                v76 = *v75;
                v77 = v75[1];
                v4 = *(*(v68 + 56) + 8 * v73);

                v45 = sub_24564A830(v76, v77);
                v16 = v78;

                if ((v16 & 1) == 0)
                {

                  goto LABEL_118;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A630, &qword_24565F9D8);
                sub_245636CF0();
                v79 = sub_24565BBB4();

                v68 = v74;
                v67 = v175;
                if ((v79 & 1) == 0)
                {
LABEL_52:

LABEL_118:

                  v21 = v165;
                  v16 = v166;
                  goto LABEL_119;
                }
              }

              v71 = v69;
              v43 = v171;
              v47 = v160;
              v9 = v174;
              while (1)
              {
                v69 = v71 + 1;
                if (__OFADD__(v71, 1))
                {
                  break;
                }

                if (v69 >= v21)
                {

                  v21 = v165;
                  v16 = v166;
                  v46 = v150;
                  goto LABEL_54;
                }

                v72 = *(v64 + 8 * v69);
                ++v71;
                if (v72)
                {
                  v70 = __clz(__rbit64(v72));
                  v175 = (v72 - 1) & v72;
                  goto LABEL_50;
                }
              }

              __break(1u);
LABEL_126:
              (*v148)(v9, v4);
LABEL_127:
              sub_245636C48(v45, &qword_27EE1A868, &qword_245660738);
            }

            goto LABEL_119;
          }

LABEL_15:
          ++v36;
        }

        while (v36 != v35);

        v18 = v161;
        v22 = v145;
        v23 = v144;
        v25 = v143;
        v26 = v152;
        if (v142 == v141)
        {
          goto LABEL_13;
        }

        return 0;
      }

      if (v32 != v33)
      {
        return 0;
      }

LABEL_13:
      ++v23;
      result = 1;
      if (v23 == v22)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_24562CA5C(uint64_t a1, uint64_t a2)
{
  v41 = sub_24565BA94();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v32 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A868, &qword_245660738);
  MEMORY[0x28223BE20](v39);
  v10 = &v32 - v9;
  v11 = type metadata accessor for DocumentRequest(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v32 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_22:
    v30 = 0;
    return v30 & 1;
  }

  if (v18 && a1 != a2)
  {
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v37 = v11;
    v38 = (v4 + 48);
    v32 = (v4 + 32);
    v33 = v6;
    v34 = (v4 + 8);
    v36 = *(v15 + 72);
    v22 = v40;
    while (1)
    {
      sub_245632358(v20, v17);
      sub_245632358(v21, v14);
      if ((sub_24562FFF8(*v17, *v14, sub_245630310) & 1) == 0 || (v17[1] != v14[1] || v17[2] != v14[2]) && (sub_24565BED4() & 1) == 0)
      {
        break;
      }

      if ((sub_24562D5EC(v17[3], v14[3]) & 1) == 0)
      {
        break;
      }

      v23 = *(v11 + 28);
      v24 = *(v39 + 48);
      sub_245634590(v17 + v23, v10);
      sub_245634590(v14 + v23, &v10[v24]);
      v25 = *v38;
      if ((*v38)(v10, 1, v41) == 1)
      {
        if (v25(&v10[v24], 1, v41) != 1)
        {
          goto LABEL_20;
        }

        sub_245636C48(v10, &qword_27EE1A5E0, &qword_24565F9B0);
        v11 = v37;
      }

      else
      {
        sub_245634590(v10, v22);
        if (v25(&v10[v24], 1, v41) == 1)
        {
          (*v34)(v22, v41);
LABEL_20:
          sub_245636C48(v10, &qword_27EE1A868, &qword_245660738);
          break;
        }

        v26 = v33;
        v27 = v41;
        (*v32)(v33, &v10[v24], v41);
        sub_245636CA8(&qword_27EE1A870, MEMORY[0x277CC9698], MEMORY[0x277CC96B0]);
        v35 = sub_24565BB04();
        v28 = *v34;
        v29 = v26;
        v22 = v40;
        (*v34)(v29, v27);
        v28(v22, v27);
        sub_245636C48(v10, &qword_27EE1A5E0, &qword_24565F9B0);
        v11 = v37;
        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      v30 = sub_24562FFF8(*(v17 + *(v11 + 32)), *(v14 + *(v11 + 32)), sub_245630174);
      sub_2456323BC(v14);
      sub_2456323BC(v17);
      if (v30)
      {
        v21 += v36;
        v20 += v36;
        if (--v18)
        {
          continue;
        }
      }

      return v30 & 1;
    }

    sub_2456323BC(v14);
    sub_2456323BC(v17);
    goto LABEL_22;
  }

  v30 = 1;
  return v30 & 1;
}

uint64_t sub_24562CF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v5 = (a1 + 32);
      v6 = (a2 + 32);
      do
      {
        v8 = *v5++;
        v7 = v8;
        v9 = *v6++;

        v10 = a3(v7, v9);

        if ((v10 & 1) == 0)
        {
          break;
        }

        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_24562D028(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_245636AC8(v7, v6);
          sub_245636AC8(v9, v8);
          v22 = sub_24565B9A4();
          if (v22)
          {
            v23 = sub_24565B9C4();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_24565B9B4();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_245636AC8(v7, v6);
        sub_245636AC8(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_245636AC8(v7, v6);
          sub_245636AC8(v9, v8);
          v27 = sub_24565B9A4();
          if (v27)
          {
            v28 = sub_24565B9C4();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_24565B9B4();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_245639378(v24, v25, v26, v33);
          sub_245636B1C(v9, v8);
          sub_245636B1C(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_245636AC8(v7, v6);
        sub_245636AC8(v9, v8);
      }

      sub_245639378(v33, v9, v8, &v32);
      sub_245636B1C(v9, v8);
      sub_245636B1C(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_24562D434(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_24565BF74();

    sub_24565BB54();
    v16 = sub_24565BFA4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_24565BED4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24562D5EC(uint64_t a1, uint64_t a2)
{
  v104 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v82 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v93 = a2 + 56;
  v83 = v7;
  v84 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v85 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
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
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
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
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
        }

        if (v3 >= v7)
        {
          return 1;
        }

        v11 = *(v82 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v85 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    sub_24565BF74();
    sub_245636AC8(v14, v13);
    sub_24565BA84();
    v15 = sub_24565BFA4();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_157:
      sub_245636B1C(v14, v13);
      return 0;
    }

    v18 = ~v16;
    v19 = v13 >> 62;
    v20 = !v14 && v13 == 0xC000000000000000;
    v21 = !v20;
    v96 = v21;
    v22 = __OFSUB__(HIDWORD(v14), v14);
    v92 = v22;
    v90 = (v14 >> 32) - v14;
    v91 = v14 >> 32;
    v95 = v18;
LABEL_27:
    v23 = (*(v2 + 48) + 16 * v17);
    v25 = *v23;
    v24 = v23[1];
    v26 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v29 = !v27 || v13 >> 62 != 3;
      if (((v29 | v96) & 1) == 0)
      {
        v78 = 0;
        v79 = 0xC000000000000000;
LABEL_154:
        sub_245636B1C(v78, v79);
        v7 = v83;
        a1 = v84;
        v6 = v85;
        continue;
      }

LABEL_49:
      v30 = 0;
      if (v19 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_49;
      }

      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_163;
      }

      if (v19 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v26)
    {
      LODWORD(v30) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_162;
      }

      v30 = v30;
      if (v19 <= 1)
      {
LABEL_46:
        v34 = BYTE6(v13);
        if (v19)
        {
          v34 = HIDWORD(v14) - v14;
          if (v92)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v30 = BYTE6(v24);
      if (v19 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v19 != 2)
    {
      if (!v30)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v36 = *(v14 + 16);
    v35 = *(v14 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_160;
    }

LABEL_52:
    if (v30 != v34)
    {
      goto LABEL_26;
    }

    if (v30 < 1)
    {
      goto LABEL_153;
    }

    if (v26 <= 1)
    {
      break;
    }

    if (v26 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v19)
      {
LABEL_82:
        __s2 = v14;
        v98 = v13;
        v99 = BYTE2(v13);
        v100 = BYTE3(v13);
        v101 = BYTE4(v13);
        v102 = BYTE5(v13);
        v53 = memcmp(__s1, &__s2, BYTE6(v13));
        v18 = v95;
        if (!v53)
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      if (v19 == 2)
      {
        v49 = *(v14 + 16);
        v88 = *(v14 + 24);
        sub_245636AC8(v25, v24);
        v50 = sub_24565B9A4();
        if (v50)
        {
          v51 = sub_24565B9C4();
          if (__OFSUB__(v49, v51))
          {
            goto LABEL_178;
          }

          v50 += v49 - v51;
        }

        v33 = __OFSUB__(v88, v49);
        v52 = v88 - v49;
        if (v33)
        {
          goto LABEL_169;
        }

        result = sub_24565B9B4();
        if (!v50)
        {
          goto LABEL_190;
        }

        goto LABEL_113;
      }

      if (v91 < v14)
      {
        goto LABEL_167;
      }

      sub_245636AC8(v25, v24);
      v64 = sub_24565B9A4();
      if (!v64)
      {
        goto LABEL_187;
      }

      v65 = v64;
      v66 = sub_24565B9C4();
      if (__OFSUB__(v14, v66))
      {
        goto LABEL_173;
      }

      v40 = (v14 - v66 + v65);
      result = sub_24565B9B4();
      if (!v40)
      {
        goto LABEL_188;
      }

      goto LABEL_121;
    }

    v42 = *(v25 + 16);
    sub_245636AC8(v25, v24);
    v43 = sub_24565B9A4();
    if (v43)
    {
      v44 = v43;
      v45 = sub_24565B9C4();
      if (__OFSUB__(v42, v45))
      {
        goto LABEL_165;
      }

      v86 = (v42 - v45 + v44);
    }

    else
    {
      v86 = 0;
    }

    sub_24565B9B4();
    v8 = v93;
    v2 = a2;
    if (v19 != 2)
    {
      if (v19 == 1)
      {
        if (v91 < v14)
        {
          goto LABEL_170;
        }

        v54 = sub_24565B9A4();
        if (v54)
        {
          v55 = sub_24565B9C4();
          if (__OFSUB__(v14, v55))
          {
            goto LABEL_181;
          }

          v54 += v14 - v55;
        }

        v56 = sub_24565B9B4();
        v57 = (v14 >> 32) - v14;
        if (v56 < v90)
        {
          v57 = v56;
        }

        result = v86;
        if (!v86)
        {
          goto LABEL_198;
        }

        if (!v54)
        {
          goto LABEL_197;
        }

        goto LABEL_147;
      }

      result = v86;
      *__s1 = v14;
      *&__s1[8] = v13;
      __s1[10] = BYTE2(v13);
      __s1[11] = BYTE3(v13);
      __s1[12] = BYTE4(v13);
      __s1[13] = BYTE5(v13);
      if (!v86)
      {
        goto LABEL_184;
      }

LABEL_152:
      v77 = memcmp(result, __s1, BYTE6(v13));
      sub_245636B1C(v25, v24);
      v18 = v95;
      if (!v77)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v69 = *(v14 + 16);
    v80 = *(v14 + 24);
    v54 = sub_24565B9A4();
    if (v54)
    {
      v70 = sub_24565B9C4();
      if (__OFSUB__(v69, v70))
      {
        goto LABEL_179;
      }

      v54 += v69 - v70;
    }

    v33 = __OFSUB__(v80, v69);
    v71 = v80 - v69;
    if (v33)
    {
      goto LABEL_174;
    }

    v72 = sub_24565B9B4();
    if (v72 >= v71)
    {
      v57 = v71;
    }

    else
    {
      v57 = v72;
    }

    result = v86;
    if (!v86)
    {
      goto LABEL_194;
    }

    v2 = a2;
    if (!v54)
    {
      goto LABEL_193;
    }

LABEL_147:
    if (result != v54)
    {
      v63 = memcmp(result, v54, v57);
      sub_245636B1C(v25, v24);
      goto LABEL_149;
    }

    sub_245636B1C(v25, v24);
    sub_245636B1C(v14, v13);
    v7 = v83;
    a1 = v84;
    v8 = v93;
    v6 = v85;
  }

  if (v26)
  {
    if (v25 > v25 >> 32)
    {
      goto LABEL_164;
    }

    sub_245636AC8(v25, v24);
    v46 = sub_24565B9A4();
    if (v46)
    {
      v47 = v46;
      v48 = sub_24565B9C4();
      if (__OFSUB__(v25, v48))
      {
        goto LABEL_166;
      }

      v87 = (v25 - v48 + v47);
    }

    else
    {
      v87 = 0;
    }

    sub_24565B9B4();
    v8 = v93;
    v2 = a2;
    if (v19 == 2)
    {
      v73 = *(v14 + 16);
      v81 = *(v14 + 24);
      v54 = sub_24565B9A4();
      if (v54)
      {
        v74 = sub_24565B9C4();
        if (__OFSUB__(v73, v74))
        {
          goto LABEL_180;
        }

        v54 += v73 - v74;
      }

      v33 = __OFSUB__(v81, v73);
      v75 = v81 - v73;
      if (v33)
      {
        goto LABEL_176;
      }

      v76 = sub_24565B9B4();
      if (v76 >= v75)
      {
        v57 = v75;
      }

      else
      {
        v57 = v76;
      }

      result = v87;
      if (!v87)
      {
        goto LABEL_196;
      }

      v2 = a2;
      if (!v54)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v19 != 1)
      {
        result = v87;
        *__s1 = v14;
        *&__s1[8] = v13;
        __s1[10] = BYTE2(v13);
        __s1[11] = BYTE3(v13);
        __s1[12] = BYTE4(v13);
        __s1[13] = BYTE5(v13);
        if (!v87)
        {
          goto LABEL_189;
        }

        goto LABEL_152;
      }

      if (v91 < v14)
      {
        goto LABEL_175;
      }

      v54 = sub_24565B9A4();
      if (v54)
      {
        v58 = sub_24565B9C4();
        if (__OFSUB__(v14, v58))
        {
          goto LABEL_182;
        }

        v54 += v14 - v58;
      }

      v59 = sub_24565B9B4();
      v57 = (v14 >> 32) - v14;
      if (v59 < v90)
      {
        v57 = v59;
      }

      result = v87;
      if (!v87)
      {
        goto LABEL_192;
      }

      if (!v54)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v25;
  *&__s1[8] = v24;
  __s1[10] = BYTE2(v24);
  __s1[11] = BYTE3(v24);
  __s1[12] = BYTE4(v24);
  __s1[13] = BYTE5(v24);
  if (!v19)
  {
    goto LABEL_82;
  }

  if (v19 != 1)
  {
    v60 = *(v14 + 16);
    v89 = *(v14 + 24);
    sub_245636AC8(v25, v24);
    v50 = sub_24565B9A4();
    if (v50)
    {
      v61 = sub_24565B9C4();
      if (__OFSUB__(v60, v61))
      {
        goto LABEL_177;
      }

      v50 += v60 - v61;
    }

    v33 = __OFSUB__(v89, v60);
    v52 = v89 - v60;
    if (v33)
    {
      goto LABEL_171;
    }

    result = sub_24565B9B4();
    if (!v50)
    {
      goto LABEL_186;
    }

LABEL_113:
    if (result >= v52)
    {
      v62 = v52;
    }

    else
    {
      v62 = result;
    }

    v63 = memcmp(__s1, v50, v62);
    sub_245636B1C(v25, v24);
    v2 = a2;
LABEL_149:
    v8 = v93;
    v18 = v95;
    if (!v63)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v91 < v14)
  {
    goto LABEL_168;
  }

  sub_245636AC8(v25, v24);
  v37 = sub_24565B9A4();
  if (v37)
  {
    v38 = v37;
    v39 = sub_24565B9C4();
    if (__OFSUB__(v14, v39))
    {
      goto LABEL_172;
    }

    v40 = (v14 - v39 + v38);
    result = sub_24565B9B4();
    if (!v40)
    {
      goto LABEL_185;
    }

LABEL_121:
    if (result >= v90)
    {
      v67 = (v14 >> 32) - v14;
    }

    else
    {
      v67 = result;
    }

    v68 = memcmp(__s1, v40, v67);
    sub_245636B1C(v25, v24);
    v2 = a2;
    v18 = v95;
    if (!v68)
    {
LABEL_153:
      v78 = v14;
      v79 = v13;
      goto LABEL_154;
    }

LABEL_26:
    v17 = (v17 + 1) & v18;
    if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  sub_24565B9B4();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  result = sub_24565B9B4();
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

unint64_t sub_24562E010()
{
  v1 = 0x546E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365736143657375;
  }
}

uint64_t sub_24562E078@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2456367E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24562E0A0(uint64_t a1)
{
  v2 = sub_245633F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24562E0DC(uint64_t a1)
{
  v2 = sub_245633F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CredentialPresentmentRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A508, &qword_24565F960);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v15 = *(v1 + 16);
  v16 = v8;
  v21 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245633F3C();

  sub_24565BFC4();
  v17 = v9;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A518, &qword_24565F968);
  sub_245633F90();
  sub_24565BEA4();

  if (!v2)
  {
    v11 = v13;
    v17 = v16;
    v18 = v15;
    v19 = v14;
    v20 = v21;
    v22 = 1;
    sub_24562BA74(v16, v15, v14, v21);
    sub_2456340B0();
    sub_24565BEA4();
    sub_245634104(v17, v18, v19, v20);
    v17 = v11;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A538, &qword_24565F970);
    sub_245634280(&qword_27EE1A540, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_24565BEA4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CredentialPresentmentRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_245632E4C(a1, *v1);
  if (v4)
  {
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();
    sub_245633598(a1, v3);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
    sub_24565BB54();
  }

  return sub_245632B8C(a1, v5);
}

uint64_t CredentialPresentmentRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_24565BF74();
  sub_245632E4C(v6, v1);
  if (v3)
  {
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();
    sub_245633598(v6, v2);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
    sub_24565BB54();
  }

  sub_245632B8C(v6, v4);
  return sub_24565BFA4();
}

uint64_t CredentialPresentmentRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A548, &qword_24565F978);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245633F3C();
  sub_24565BFB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A518, &qword_24565F968);
  v25 = 0;
  sub_245634154();
  sub_24565BE24();
  v9 = v20;
  v25 = 1;
  sub_24563422C();
  sub_24565BE24();
  v17 = v21;
  v18 = v22;
  v19 = v20;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A538, &qword_24565F970);
  v25 = 2;
  sub_245634280(&qword_27EE1A568, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  sub_24565BE24();
  (*(v6 + 8))(v8, v5);
  v11 = v19;
  v10 = v20;
  *a2 = v9;
  *(a2 + 8) = v11;
  v13 = v17;
  v12 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v12;
  v14 = v24;
  *(a2 + 32) = v24;
  *(a2 + 40) = v10;

  sub_24562BA74(v11, v13, v12, v14);

  __swift_destroy_boxed_opaque_existential_1(a1);

  sub_245634104(v11, v13, v12, v14);
}

uint64_t sub_24562E858()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_24565BF74();
  sub_245632E4C(v6, v1);
  if (v3)
  {
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();
    sub_245633598(v6, v2);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
    sub_24565BB54();
  }

  sub_245632B8C(v6, v4);
  return sub_24565BFA4();
}

uint64_t sub_24562E918(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_245632E4C(a1, *v1);
  if (v4)
  {
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();
    sub_245633598(a1, v3);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
    sub_24565BB54();
  }

  return sub_245632B8C(a1, v5);
}

uint64_t sub_24562E9C8()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_24565BF74();
  sub_245632E4C(v6, v1);
  if (v3)
  {
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();
    sub_245633598(v6, v2);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
    sub_24565BB54();
  }

  sub_245632B8C(v6, v4);
  return sub_24565BFA4();
}

CoreIDCred::CredentialPresentmentRequest::UseCase __swiftcall CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)(CoreIDCred::CredentialPresentmentRequest::UseCase documentRequests, Swift::Bool isMandatory)
{
  *v2 = documentRequests.documentRequests._rawValue;
  *(v2 + 8) = isMandatory;
  documentRequests.isMandatory = isMandatory;
  return documentRequests;
}

unsigned __int8 *static CredentialPresentmentRequest.UseCase.== infix(_:_:)(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = result[8];
  v6 = a2[8];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return (v5 ^ v6 ^ 1u);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    v10 = *v8;
    v11 = *v9;

    v12 = sub_24562CA5C(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return (v5 ^ v6 ^ 1u);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24562EB70()
{
  if (*v0)
  {
    return 0x7461646E614D7369;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24562EBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000245663D00 == a2 || (sub_24565BED4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461646E614D7369 && a2 == 0xEB0000000079726FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24565BED4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24562ECA4(uint64_t a1)
{
  v2 = sub_2456342EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24562ECE0(uint64_t a1)
{
  v2 = sub_2456342EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CredentialPresentmentRequest.UseCase.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A570, &qword_24565F980);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456342EC();

  sub_24565BFC4();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A580, &qword_24565F988);
  sub_245634340();
  sub_24565BEA4();

  if (!v2)
  {
    v11 = 1;
    sub_24565BE84();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CredentialPresentmentRequest.UseCase.hashValue.getter()
{
  v1 = *v0;
  sub_24565BF74();
  sub_245633230(v3, v1);
  sub_24565BF94();
  return sub_24565BFA4();
}

uint64_t CredentialPresentmentRequest.UseCase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5A8, &qword_24565F998);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456342EC();
  sub_24565BFB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A580, &qword_24565F988);
  v12[15] = 0;
  sub_24563448C();
  sub_24565BE24();
  v9 = v13;
  v12[14] = 1;
  v10 = sub_24565BE04();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24562F184()
{
  v1 = *v0;
  sub_24565BF74();
  sub_245633230(v3, v1);
  sub_24565BF94();
  return sub_24565BFA4();
}

uint64_t sub_24562F21C()
{
  v1 = *v0;
  sub_24565BF74();
  sub_245633230(v3, v1);
  sub_24565BF94();
  return sub_24565BFA4();
}

uint64_t sub_24562F278(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_24562CF60(*a1, *a2, sub_24562CA5C) & ~(v2 ^ v3) & 1;
}

uint64_t DocumentRequest.DataElement.namespace.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DocumentRequest.DataElement.namespace.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DocumentRequest.DataElement.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DocumentRequest.DataElement.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

CoreIDCred::DocumentRequest::DataElement __swiftcall DocumentRequest.DataElement.init(namespace:identifier:)(Swift::String a1, Swift::String identifier)
{
  *v2 = a1;
  v2[1] = identifier;
  result.identifier = identifier;
  result.namespace = a1;
  return result;
}

uint64_t static DocumentRequest.DataElement.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24565BED4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24565BED4();
    }
  }

  return result;
}

uint64_t sub_24562F490()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

uint64_t sub_24562F4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v6 || (sub_24565BED4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24565BED4();

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

uint64_t sub_24562F5C0(uint64_t a1)
{
  v2 = sub_24563453C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24562F5FC(uint64_t a1)
{
  v2 = sub_24563453C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DocumentRequest.DataElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5C8, &qword_24565F9A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24563453C();
  sub_24565BFC4();
  v12 = 0;
  v8 = v10[3];
  sub_24565BE74();
  if (!v8)
  {
    v11 = 1;
    sub_24565BE74();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DocumentRequest.DataElement.hash(into:)(uint64_t a1)
{
  sub_24565BB54();

  return sub_24565BB54();
}

uint64_t DocumentRequest.DataElement.hashValue.getter()
{
  sub_24565BF74();
  sub_24565BB54();
  sub_24565BB54();
  return sub_24565BFA4();
}

uint64_t DocumentRequest.DataElement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5D8, &qword_24565F9A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24563453C();
  sub_24565BFB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24565BDF4();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24565BDF4();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24562FAB4()
{
  sub_24565BF74();
  sub_24565BB54();
  sub_24565BB54();
  return sub_24565BFA4();
}

uint64_t sub_24562FB1C(uint64_t a1)
{
  sub_24565BB54();

  return sub_24565BB54();
}

uint64_t sub_24562FB6C()
{
  sub_24565BF74();
  sub_24565BB54();
  sub_24565BB54();
  return sub_24565BFA4();
}

uint64_t sub_24562FBD0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24565BED4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24565BED4();
    }
  }

  return result;
}

uint64_t DocumentRequest.alternativeElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DocumentRequest.docType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DocumentRequest.docType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DocumentRequest.issuerIdentifiers.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t DocumentRequest.regionCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DocumentRequest(0) + 28);

  return sub_245634590(v3, a1);
}

uint64_t DocumentRequest.regionCode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DocumentRequest(0) + 28);

  return sub_245634600(a1, v3);
}

uint64_t DocumentRequest.namespaces.getter()
{
  type metadata accessor for DocumentRequest(0);
}

uint64_t DocumentRequest.namespaces.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentRequest(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for DocumentRequest(0);
  v15 = *(v14 + 28);
  v16 = sub_24565BA94();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_245634600(a5, &a7[v15]);
  *&a7[*(v14 + 32)] = a6;
  return result;
}

uint64_t sub_24562FFF8(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_24564A830(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {

      return 0;
    }

    v20 = a3(v19, v16);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245630174(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v27 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v28 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v12 = 16 * (v9 | (v4 << 6));
    v13 = (*(v3 + 48) + v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = v14 == 0;

    if (!v14)
    {
      return v19;
    }

    v20 = sub_24564A830(v15, v14);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      return v19;
    }

    v23 = *(a2 + 56) + 16 * v20;
    v24 = *v23;
    if (*(v23 + 8) == 1)
    {
      if (v24)
      {
        if (v17)
        {
          v25 = v18;
        }

        else
        {
          v25 = 0;
        }

        if ((v25 & 1) == 0)
        {
          return v19;
        }
      }

      else
      {
        if (v17)
        {
          v26 = 0;
        }

        else
        {
          v26 = v18;
        }

        if ((v26 & 1) == 0)
        {
          return v19;
        }
      }
    }

    else
    {
      if (v24 == v17)
      {
        v8 = v18;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return v19;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v28)
    {
      return 1;
    }

    v11 = *(v27 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245630310(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v12 = *v11;
    v13 = v11[1];

    sub_24564A830(v12, v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A630, &qword_24565F9D8);
    sub_245636CF0();
    v16 = sub_24565BBB4();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2456304A0()
{
  v1 = *v0;
  v2 = 0x65707954636F64;
  v3 = 0x6F436E6F69676572;
  if (v1 != 3)
  {
    v3 = 0x63617073656D616ELL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_245630544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_245636904(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_245630578(uint64_t a1)
{
  v2 = sub_245634A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2456305B4(uint64_t a1)
{
  v2 = sub_245634A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DocumentRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E8, &qword_24565F9B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245634A00();
  sub_24565BFC4();
  v12 = *v3;
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5F8, &qword_24565F9C0);
  sub_245634A54();
  sub_24565BEA4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24565BE74();
    v12 = v3[3];
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A640, &qword_24565F9E0);
    sub_245634CC8();
    sub_24565BEA4();
    v9 = type metadata accessor for DocumentRequest(0);
    LOBYTE(v12) = 3;
    sub_24565BA94();
    sub_245636CA8(&qword_27EE1A650, MEMORY[0x277CC9698], MEMORY[0x277CC96A0]);
    sub_24565BE64();
    v12 = *(v3 + *(v9 + 32));
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A658, &qword_24565F9E8);
    sub_245634DA0();
    sub_24565BEA4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DocumentRequest.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24565BA94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_245633900(a1, *v2);
  sub_24565BB54();
  sub_245632CE8(a1, v2[3]);
  v11 = type metadata accessor for DocumentRequest(0);
  sub_245634590(v2 + *(v11 + 28), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24565BF94();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_24565BF94();
    sub_245636CA8(&qword_27EE1A680, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_24565BAF4();
    (*(v5 + 8))(v7, v4);
  }

  return sub_245633668(a1, *(v2 + *(v11 + 32)));
}

uint64_t DocumentRequest.hashValue.getter()
{
  sub_24565BF74();
  DocumentRequest.hash(into:)(v1);
  return sub_24565BFA4();
}

uint64_t DocumentRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A688, &qword_24565F9F8);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = type metadata accessor for DocumentRequest(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 28);
  v14 = sub_24565BA94();
  v15 = *(*(v14 - 8) + 56);
  v29 = v12;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_245634A00();
  v17 = v28;
  sub_24565BFB4();
  if (v17)
  {
    v19 = v29;
    __swift_destroy_boxed_opaque_existential_1(v30);
    return sub_245636C48(v19 + v13, &qword_27EE1A5E0, &qword_24565F9B0);
  }

  else
  {
    v28 = v5;
    v18 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5F8, &qword_24565F9C0);
    v31 = 0;
    sub_245634F0C();
    sub_24565BE24();
    v21 = v29;
    v24[2] = v32;
    *v29 = v32;
    LOBYTE(v32) = 1;
    v21[1] = sub_24565BDF4();
    v21[2] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A640, &qword_24565F9E0);
    v31 = 2;
    sub_245635180();
    sub_24565BE24();
    v24[1] = 0;
    v21[3] = v32;
    LOBYTE(v32) = 3;
    sub_245636CA8(&qword_27EE1A6C0, MEMORY[0x277CC9698], MEMORY[0x277CC96B8]);
    v23 = v28;
    sub_24565BDE4();
    sub_245634600(v23, v21 + v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A658, &qword_24565F9E8);
    v31 = 4;
    sub_245635258();
    sub_24565BE24();
    (*(v18 + 8))(v8, v27);
    *(v21 + *(v9 + 32)) = v32;
    sub_245632358(v21, v25);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return sub_2456323BC(v21);
  }
}

uint64_t sub_245630FFC()
{
  sub_24565BF74();
  DocumentRequest.hash(into:)(v1);
  return sub_24565BFA4();
}

uint64_t sub_245631040()
{
  sub_24565BF74();
  DocumentRequest.hash(into:)(v1);
  return sub_24565BFA4();
}

uint64_t SessionType.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SessionType.authenticationCertificateChains.getter()
{
  if (*(v0 + 24) == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2456310E8()
{
  if (*v0)
  {
    return 6448503;
  }

  else
  {
    return 0x6C617469676964;
  }
}

uint64_t sub_24563111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C617469676964 && a2 == 0xE700000000000000;
  if (v6 || (sub_24565BED4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24565BED4();

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

uint64_t sub_2456311F8(uint64_t a1)
{
  v2 = sub_2456353C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245631234(uint64_t a1)
{
  v2 = sub_2456353C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24563128C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000245663DA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24565BED4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_245631320(uint64_t a1)
{
  v2 = sub_245635574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24563135C(uint64_t a1)
{
  v2 = sub_245635574();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_245631398()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_2456313D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000245663D60 == a2 || (sub_24565BED4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000245663D80 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24565BED4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2456314BC(uint64_t a1)
{
  v2 = sub_245635418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2456314F8(uint64_t a1)
{
  v2 = sub_245635418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A6E0, &qword_24565FA00);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v19 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A6E8, &qword_24565FA08);
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A6F0, &qword_24565FA10);
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v17 - v9;
  v11 = *v1;
  v22 = v1[1];
  v23 = v11;
  v17 = v1[2];
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456353C4();
  sub_24565BFC4();
  if (v12)
  {
    v30 = 1;
    sub_245635418();
    v7 = v19;
    v13 = v25;
    sub_24565BE44();
    v29 = 0;
    v5 = v21;
    v14 = v24;
    sub_24565BE74();
    if (v14)
    {
      (*(v20 + 8))(v7, v5);
      return (*(v8 + 8))(v10, v13);
    }

    v26 = v17;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A708, &qword_24565FA18);
    sub_24563546C();
    sub_24565BEA4();
    v16 = v20;
  }

  else
  {
    v27 = 0;
    sub_245635574();
    v13 = v25;
    sub_24565BE44();
    sub_24565BE74();
    v16 = v18;
  }

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v13);
}

uint64_t SessionType.hash(into:)(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();

    return sub_245633598(a1, v3);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);

    return sub_24565BB54();
  }
}

uint64_t SessionType.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24565BF74();
  if (v2)
  {
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();
    sub_245633598(v4, v1);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
    sub_24565BB54();
  }

  return sub_24565BFA4();
}

uint64_t SessionType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A728, &qword_24565FA28);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A730, &qword_24565FA30);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A738, &unk_24565FA38);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37[-v11];
  v13 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2456353C4();
  v14 = v43;
  sub_24565BFB4();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v43 = v10;
  v15 = v41;
  v16 = v42;
  v17 = sub_24565BE34();
  v18 = (2 * *(v17 + 16)) | 1;
  v46 = v17;
  v47 = v17 + 32;
  v48 = 0;
  v49 = v18;
  v19 = sub_24562A6F0();
  if (v19 == 2 || v48 != v49 >> 1)
  {
    v25 = sub_24565BD64();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A460, &qword_24565F2A0);
    *v27 = &type metadata for SessionType;
    sub_24565BDC4();
    sub_24565BD54();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v43 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v38 = v19;
  if (v19)
  {
    LOBYTE(v50) = 1;
    sub_245635418();
    sub_24565BDB4();
    v20 = v16;
    LOBYTE(v50) = 0;
    v21 = v15;
    v22 = sub_24565BDF4();
    v23 = v5;
    v24 = v43;
    v33 = v32;
    v39 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A708, &qword_24565FA18);
    v45 = 1;
    sub_2456355C8();
    sub_24565BE24();
    (*(v40 + 8))(v23, v21);
    (*(v24 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v35 = v50;
    v36 = v39;
  }

  else
  {
    LOBYTE(v50) = 0;
    sub_245635574();
    v29 = v8;
    sub_24565BDB4();
    v20 = v16;
    v30 = sub_24565BDF4();
    v31 = (v43 + 8);
    v36 = v30;
    v33 = v34;
    (*(v39 + 8))(v29, v6);
    (*v31)(v12, v9);
    swift_unknownObjectRelease();
    v35 = 0;
  }

  *v20 = v36;
  *(v20 + 8) = v33;
  *(v20 + 16) = v35;
  *(v20 + 24) = v38 & 1;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_245632028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24565BF74();
  if (v2)
  {
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();
    sub_245633598(v4, v1);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
    sub_24565BB54();
  }

  return sub_24565BFA4();
}

uint64_t sub_2456320C0(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();

    return sub_245633598(a1, v3);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);

    return sub_24565BB54();
  }
}

uint64_t sub_245632170()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24565BF74();
  if (v2)
  {
    MEMORY[0x245D6CFC0](1);
    sub_24565BB54();
    sub_245633598(v4, v1);
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
    sub_24565BB54();
  }

  return sub_24565BFA4();
}

uint64_t sub_245632208(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24565BF74();
  sub_24565BB54();
  v8 = sub_24565BFA4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24565BED4() & 1) != 0)
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

    sub_245632678(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_245632358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2456323BC(uint64_t a1)
{
  v2 = type metadata accessor for DocumentRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245632418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1A880, &unk_245660740);
  result = sub_24565BD24();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24565BF74();
      sub_24565BB54();
      result = sub_24565BFA4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_245632678(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_245632418(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2456327F8();
      goto LABEL_16;
    }

    sub_245632954(v8 + 1);
  }

  v10 = *v4;
  sub_24565BF74();
  sub_24565BB54();
  result = sub_24565BFA4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24565BED4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24565BF04();
  __break(1u);
  return result;
}

void *sub_2456327F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1A880, &unk_245660740);
  v2 = *v0;
  v3 = sub_24565BD14();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

uint64_t sub_245632954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1A880, &unk_245660740);
  result = sub_24565BD24();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24565BF74();

      sub_24565BB54();
      result = sub_24565BFA4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_245632B8C(__int128 *a1, uint64_t a2)
{
  sub_24565BFA4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x245D6CFC0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_24565BF74();

        sub_24565BB54();
        v11 = sub_24565BFA4();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245632CE8(__int128 *a1, uint64_t a2)
{
  sub_24565BFA4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_24565BF74();
    sub_245636AC8(v13, v14);
    sub_24565BA84();
    v15 = sub_24565BFA4();
    result = sub_245636B1C(v13, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x245D6CFC0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245632E4C(__int128 *a1, uint64_t a2)
{
  v4 = sub_24565BA94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for DocumentRequest(0);
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + 16);
  result = MEMORY[0x245D6CFC0](v13);
  v31 = v13;
  if (v13)
  {
    v15 = 0;
    v30 = a2 + 32;
    v16 = (v5 + 48);
    v42 = (v5 + 8);
    v43 = (v5 + 32);
    v41 = (v5 + 48);
    do
    {
      v34 = v15;
      v17 = (v30 + 16 * v15);
      v18 = *v17;
      v32 = *(v17 + 8);
      MEMORY[0x245D6CFC0](*(v18 + 16));
      v38 = *(v18 + 16);
      v33 = v18;
      if (v38)
      {
        v37 = v18 + 32;

        v19 = 0;
        do
        {
          v20 = *(v37 + 8 * v19);
          MEMORY[0x245D6CFC0](*(v20 + 16));
          v21 = *(v20 + 16);
          if (v21)
          {
            v39 = v20;
            v40 = v19;
            v22 = v35;
            v23 = *(v36 + 28);
            v45 = *(v36 + 32);
            v24 = v20 + ((*(v35 + 80) + 32) & ~*(v35 + 80));

            v25 = *(v22 + 72);
            do
            {
              sub_245632358(v24, v12);
              sub_245633900(a1, *v12);
              sub_24565BB54();
              sub_245632CE8(a1, v12[3]);
              sub_245634590(v12 + v23, v9);
              if ((*v16)(v9, 1, v4) == 1)
              {
                sub_24565BF94();
              }

              else
              {
                v26 = v25;
                v27 = v23;
                v28 = v44;
                (*v43)(v44, v9, v4);
                sub_24565BF94();
                sub_245636CA8(&qword_27EE1A680, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
                sub_24565BAF4();
                v29 = v28;
                v23 = v27;
                v25 = v26;
                v16 = v41;
                (*v42)(v29, v4);
              }

              sub_245633668(a1, *(v12 + v45));
              sub_2456323BC(v12);
              v24 += v25;
              --v21;
            }

            while (v21);

            v19 = v40;
          }

          ++v19;
        }

        while (v19 != v38);
      }

      else
      {
      }

      v15 = v34 + 1;
      sub_24565BF94();
    }

    while (v15 != v31);
  }

  return result;
}

uint64_t sub_245633230(__int128 *a1, uint64_t a2)
{
  v4 = sub_24565BA94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for DocumentRequest(0);
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + 16);
  result = MEMORY[0x245D6CFC0](v13);
  v31 = v13;
  if (v13)
  {
    v15 = 0;
    v30 = a2 + 32;
    v16 = (v5 + 48);
    v35 = (v5 + 8);
    v36 = (v5 + 32);
    v34 = (v5 + 48);
    do
    {
      v17 = *(v30 + 8 * v15);
      result = MEMORY[0x245D6CFC0](*(v17 + 16));
      v18 = *(v17 + 16);
      if (v18)
      {
        v32 = v17;
        v33 = v15;
        v19 = v28;
        v20 = *(v29 + 28);
        v38 = *(v29 + 32);
        v21 = v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80));

        v22 = *(v19 + 72);
        do
        {
          sub_245632358(v21, v12);
          sub_245633900(a1, *v12);
          sub_24565BB54();
          sub_245632CE8(a1, v12[3]);
          sub_245634590(v12 + v20, v9);
          if ((*v16)(v9, 1, v4) == 1)
          {
            sub_24565BF94();
          }

          else
          {
            v23 = v22;
            v24 = v20;
            v25 = v37;
            (*v36)(v37, v9, v4);
            sub_24565BF94();
            sub_245636CA8(&qword_27EE1A680, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
            sub_24565BAF4();
            v26 = v25;
            v20 = v24;
            v22 = v23;
            v16 = v34;
            (*v35)(v26, v4);
          }

          sub_245633668(a1, *(v12 + v38));
          sub_2456323BC(v12);
          v21 += v22;
          --v18;
        }

        while (v18);

        v15 = v33;
      }

      ++v15;
    }

    while (v15 != v31);
  }

  return result;
}

uint64_t sub_245633598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D6CFC0](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x245D6CFC0](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = (v7 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;
          sub_245636AC8(v10, *v9);
          sub_24565BA84();
          sub_245636B1C(v10, v11);
          v9 += 2;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_245633668(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v24 = v6;
  v25 = v2;
LABEL_6:
  if (v5)
  {
    v27 = v8;
LABEL_12:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v5 &= v5 - 1;

    sub_24565BB54();

    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v28 = v11;

    v29 = 0;
    v17 = 0;
    while (v15)
    {
LABEL_23:
      v19 = (v17 << 10) | (16 * __clz(__rbit64(v15)));
      v20 = *(*(v28 + 48) + v19 + 8);
      v21 = *(v28 + 56) + v19;
      v22 = *v21;
      v23 = *(v21 + 8);

      if (!v20)
      {
LABEL_5:

        MEMORY[0x245D6CFC0](v29);

        result = sub_24565BFA4();
        v8 = result ^ v27;
        v6 = v24;
        v2 = v25;
        goto LABEL_6;
      }

      sub_24565BB54();

      if (v23)
      {
        if (v22)
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }
      }

      else
      {
        MEMORY[0x245D6CFC0](0);
      }

      v15 &= v15 - 1;
      MEMORY[0x245D6CFC0](v22);
      result = sub_24565BFA4();
      v29 ^= result;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        goto LABEL_5;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        return MEMORY[0x245D6CFC0](v8);
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v27 = v8;
        v9 = v10;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245633900(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v21 = v6;
  v22 = v2;
LABEL_6:
  if (v5)
  {
    v24 = v8;
    v10 = v9;
LABEL_12:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    v5 &= v5 - 1;

    sub_24565BB54();

    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    for (i = 0; v15; v17 = result ^ v19)
    {
      v19 = v17;
LABEL_21:
      v15 &= v15 - 1;

      sub_24565BB54();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A630, &qword_24565F9D8);
      sub_245636B70();
      sub_24565BBA4();

      result = sub_24565BFA4();
    }

    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        MEMORY[0x245D6CFC0](v17);

        result = sub_24565BFA4();
        v8 = result ^ v24;
        v9 = v10;
        v6 = v21;
        v2 = v22;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v20);
      ++i;
      if (v15)
      {
        v19 = v17;
        i = v20;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        return MEMORY[0x245D6CFC0](v8);
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v24 = v8;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10CoreIDCred11SessionTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v10 = v3 == v7 && v2 == v6;
      if (v10 || (sub_24565BED4() & 1) != 0)
      {
        sub_24562BA74(v7, v6, v8, 1);
        sub_24562BA74(v3, v2, v4, 1);
        v11 = sub_24562CF60(v4, v8, sub_24562D028);
        sub_245634104(v3, v2, v4, 1);
        sub_245634104(v7, v6, v8, 1);
        return v11 & 1;
      }

      sub_24562BA74(v7, v6, v8, 1);
      sub_24562BA74(v3, v2, v4, 1);
      sub_245634104(v3, v2, v4, 1);
      v12 = v7;
      v13 = v6;
      v14 = v8;
      v15 = 1;
LABEL_11:
      sub_245634104(v12, v13, v14, v15);
      v11 = 0;
      return v11 & 1;
    }

LABEL_10:
    sub_24562BA74(*a2, *(a2 + 8), v8, v9);
    sub_24562BA74(v3, v2, v4, v5);
    sub_245634104(v3, v2, v4, v5);
    v12 = v7;
    v13 = v6;
    v14 = v8;
    v15 = v9;
    goto LABEL_11;
  }

  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  v17 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    sub_24562BA74(v17, v2, v8, 0);
    sub_24562BA74(v3, v2, v4, 0);
    sub_245634104(v3, v2, v4, 0);
    sub_245634104(v3, v2, v8, 0);
    v11 = 1;
  }

  else
  {
    v11 = sub_24565BED4();
    sub_24562BA74(v7, v6, v8, 0);
    sub_24562BA74(v3, v2, v4, 0);
    sub_245634104(v3, v2, v4, 0);
    sub_245634104(v7, v6, v8, 0);
  }

  return v11 & 1;
}

uint64_t _s10CoreIDCred28CredentialPresentmentRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if ((sub_24562BD50(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  sub_24562BA74(v2, v3, v4, v5);
  sub_24562BA74(v7, v8, v9, v10);
  v12 = _s10CoreIDCred11SessionTypeO2eeoiySbAC_ACtFZ_0(&v18, &v14);
  sub_245634104(v14, v15, v16, v17);
  sub_245634104(v18, v19, v20, v21);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return sub_24562D434(v6, v11);
}

unint64_t sub_245633F3C()
{
  result = qword_27EE1A510;
  if (!qword_27EE1A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A510);
  }

  return result;
}

unint64_t sub_245633F90()
{
  result = qword_27EE1A520;
  if (!qword_27EE1A520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A518, &qword_24565F968);
    sub_24563405C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A520);
  }

  return result;
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

unint64_t sub_24563405C()
{
  result = qword_27EE1A528;
  if (!qword_27EE1A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A528);
  }

  return result;
}

unint64_t sub_2456340B0()
{
  result = qword_27EE1A530;
  if (!qword_27EE1A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A530);
  }

  return result;
}

uint64_t sub_245634104(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

unint64_t sub_245634154()
{
  result = qword_27EE1A550;
  if (!qword_27EE1A550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A518, &qword_24565F968);
    sub_2456341D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A550);
  }

  return result;
}

unint64_t sub_2456341D8()
{
  result = qword_27EE1A558;
  if (!qword_27EE1A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A558);
  }

  return result;
}

unint64_t sub_24563422C()
{
  result = qword_27EE1A560;
  if (!qword_27EE1A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A560);
  }

  return result;
}

uint64_t sub_245634280(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A538, &qword_24565F970);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2456342EC()
{
  result = qword_27EE1A578;
  if (!qword_27EE1A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A578);
  }

  return result;
}

unint64_t sub_245634340()
{
  result = qword_27EE1A588;
  if (!qword_27EE1A588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A580, &qword_24565F988);
    sub_2456343F0(&qword_27EE1A590, &qword_27EE1A5A0, &protocol conformance descriptor for DocumentRequest, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A588);
  }

  return result;
}

uint64_t sub_2456343F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A598, &qword_24565F990);
    sub_245636CA8(a2, type metadata accessor for DocumentRequest, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24563448C()
{
  result = qword_27EE1A5B0;
  if (!qword_27EE1A5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A580, &qword_24565F988);
    sub_2456343F0(&qword_27EE1A5B8, &qword_27EE1A5C0, &protocol conformance descriptor for DocumentRequest, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A5B0);
  }

  return result;
}

unint64_t sub_24563453C()
{
  result = qword_27EE1A5D0;
  if (!qword_27EE1A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A5D0);
  }

  return result;
}

uint64_t sub_245634590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245634600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10CoreIDCred15DocumentRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_24565BA94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A5E0, &qword_24565F9B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A868, &qword_245660738);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_24562FFF8(*a1, *a2, sub_245630310) & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_24565BED4() & 1) == 0 || (sub_24562D5EC(a1[3], a2[3]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = type metadata accessor for DocumentRequest(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 48);
  sub_245634590(a1 + v14, v13);
  sub_245634590(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_245636C48(v13, &qword_27EE1A5E0, &qword_24565F9B0);
LABEL_15:
      v17 = sub_24562FFF8(*(a1 + *(v22 + 32)), *(a2 + *(v22 + 32)), sub_245630174);
      return v17 & 1;
    }

    goto LABEL_11;
  }

  sub_245634590(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_245636C48(v13, &qword_27EE1A868, &qword_245660738);
    goto LABEL_12;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_245636CA8(&qword_27EE1A870, MEMORY[0x277CC9698], MEMORY[0x277CC96B0]);
  v19 = sub_24565BB04();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_245636C48(v13, &qword_27EE1A5E0, &qword_24565F9B0);
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_12:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_245634A00()
{
  result = qword_27EE1A5F0;
  if (!qword_27EE1A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A5F0);
  }

  return result;
}

unint64_t sub_245634A54()
{
  result = qword_27EE1A600;
  if (!qword_27EE1A600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A5F8, &qword_24565F9C0);
    sub_245634AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A600);
  }

  return result;
}

unint64_t sub_245634AE0()
{
  result = qword_27EE1A608;
  if (!qword_27EE1A608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A610, &qword_24565F9C8);
    sub_245634B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A608);
  }

  return result;
}

unint64_t sub_245634B6C()
{
  result = qword_27EE1A618;
  if (!qword_27EE1A618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A620, &qword_24565F9D0);
    sub_245634BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A618);
  }

  return result;
}

unint64_t sub_245634BF0()
{
  result = qword_27EE1A628;
  if (!qword_27EE1A628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A630, &qword_24565F9D8);
    sub_245634C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A628);
  }

  return result;
}

unint64_t sub_245634C74()
{
  result = qword_27EE1A638;
  if (!qword_27EE1A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A638);
  }

  return result;
}

unint64_t sub_245634CC8()
{
  result = qword_27EE1A648;
  if (!qword_27EE1A648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A640, &qword_24565F9E0);
    sub_245634D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A648);
  }

  return result;
}

unint64_t sub_245634D4C()
{
  result = qword_27EE1A900;
  if (!qword_27EE1A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A900);
  }

  return result;
}

unint64_t sub_245634DA0()
{
  result = qword_27EE1A660;
  if (!qword_27EE1A660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A658, &qword_24565F9E8);
    sub_245634E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A660);
  }

  return result;
}

unint64_t sub_245634E2C()
{
  result = qword_27EE1A668;
  if (!qword_27EE1A668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A670, &qword_24565F9F0);
    sub_245634EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A668);
  }

  return result;
}

unint64_t sub_245634EB8()
{
  result = qword_27EE1A678;
  if (!qword_27EE1A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A678);
  }

  return result;
}

unint64_t sub_245634F0C()
{
  result = qword_27EE1A690;
  if (!qword_27EE1A690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A5F8, &qword_24565F9C0);
    sub_245634F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A690);
  }

  return result;
}

unint64_t sub_245634F98()
{
  result = qword_27EE1A698;
  if (!qword_27EE1A698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A610, &qword_24565F9C8);
    sub_245635024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A698);
  }

  return result;
}

unint64_t sub_245635024()
{
  result = qword_27EE1A6A0;
  if (!qword_27EE1A6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A620, &qword_24565F9D0);
    sub_2456350A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A6A0);
  }

  return result;
}

unint64_t sub_2456350A8()
{
  result = qword_27EE1A6A8;
  if (!qword_27EE1A6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A630, &qword_24565F9D8);
    sub_24563512C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A6A8);
  }

  return result;
}

unint64_t sub_24563512C()
{
  result = qword_27EE1A6B0;
  if (!qword_27EE1A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A6B0);
  }

  return result;
}

unint64_t sub_245635180()
{
  result = qword_27EE1A6B8;
  if (!qword_27EE1A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A640, &qword_24565F9E0);
    sub_245635204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A6B8);
  }

  return result;
}

unint64_t sub_245635204()
{
  result = qword_27EE1A8F0;
  if (!qword_27EE1A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A8F0);
  }

  return result;
}

unint64_t sub_245635258()
{
  result = qword_27EE1A6C8;
  if (!qword_27EE1A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A658, &qword_24565F9E8);
    sub_2456352E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A6C8);
  }

  return result;
}

unint64_t sub_2456352E4()
{
  result = qword_27EE1A6D0;
  if (!qword_27EE1A6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A670, &qword_24565F9F0);
    sub_245635370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A6D0);
  }

  return result;
}

unint64_t sub_245635370()
{
  result = qword_27EE1A6D8;
  if (!qword_27EE1A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A6D8);
  }

  return result;
}

unint64_t sub_2456353C4()
{
  result = qword_27EE1A6F8;
  if (!qword_27EE1A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A6F8);
  }

  return result;
}

unint64_t sub_245635418()
{
  result = qword_27EE1A700;
  if (!qword_27EE1A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A700);
  }

  return result;
}

unint64_t sub_24563546C()
{
  result = qword_27EE1A710;
  if (!qword_27EE1A710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A708, &qword_24565FA18);
    sub_2456354F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A710);
  }

  return result;
}

unint64_t sub_2456354F0()
{
  result = qword_27EE1A718;
  if (!qword_27EE1A718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE1ABC0, &qword_24565FA20);
    sub_245634D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A718);
  }

  return result;
}

unint64_t sub_245635574()
{
  result = qword_27EE1A720;
  if (!qword_27EE1A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A720);
  }

  return result;
}

unint64_t sub_2456355C8()
{
  result = qword_27EE1A740;
  if (!qword_27EE1A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A708, &qword_24565FA18);
    sub_24563564C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A740);
  }

  return result;
}

unint64_t sub_24563564C()
{
  result = qword_27EE1A748;
  if (!qword_27EE1A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE1ABC0, &qword_24565FA20);
    sub_245635204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A748);
  }

  return result;
}

unint64_t sub_2456356D4()
{
  result = qword_27EE1A750;
  if (!qword_27EE1A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A750);
  }

  return result;
}

unint64_t sub_24563572C()
{
  result = qword_27EE1A758;
  if (!qword_27EE1A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A758);
  }

  return result;
}

unint64_t sub_245635784()
{
  result = qword_27EE1A760;
  if (!qword_27EE1A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A760);
  }

  return result;
}

unint64_t sub_245635824()
{
  result = qword_27EE1A770;
  if (!qword_27EE1A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A770);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_245635898(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2456358E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24563593C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_245635984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2456359FC(uint64_t a1)
{
  sub_245635BF0(319, &qword_27EE1A788, &qword_27EE1A610, &qword_24565F9C8);
  if (v1 <= 0x3F)
  {
    sub_245635AE8(319);
    if (v2 <= 0x3F)
    {
      sub_245635B98(319);
      if (v3 <= 0x3F)
      {
        sub_245635BF0(319, &qword_27EE1A7A8, &qword_27EE1A670, &qword_24565F9F0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_245635AE8(uint64_t a1)
{
  if (!qword_27EE1A790)
  {
    sub_245635B44();
    v1 = sub_24565BC64();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE1A790);
    }
  }
}

unint64_t sub_245635B44()
{
  result = qword_27EE1A798;
  if (!qword_27EE1A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A798);
  }

  return result;
}

void sub_245635B98(uint64_t a1)
{
  if (!qword_27EE1A7A0)
  {
    sub_24565BA94();
    v1 = sub_24565BCE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE1A7A0);
    }
  }
}

void sub_245635BF0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24565BAE4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_245635C60(uint64_t a1, int a2)
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

uint64_t sub_245635CA8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_245635D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_245635D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DocumentRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DocumentRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s5StateV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s5StateV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2456360AC()
{
  result = qword_27EE1A7B0;
  if (!qword_27EE1A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7B0);
  }

  return result;
}

unint64_t sub_245636104()
{
  result = qword_27EE1A7B8;
  if (!qword_27EE1A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7B8);
  }

  return result;
}

unint64_t sub_24563615C()
{
  result = qword_27EE1A7C0;
  if (!qword_27EE1A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7C0);
  }

  return result;
}

unint64_t sub_2456361B4()
{
  result = qword_27EE1A7C8;
  if (!qword_27EE1A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7C8);
  }

  return result;
}

unint64_t sub_24563620C()
{
  result = qword_27EE1A7D0;
  if (!qword_27EE1A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7D0);
  }

  return result;
}

unint64_t sub_245636264()
{
  result = qword_27EE1A7D8;
  if (!qword_27EE1A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7D8);
  }

  return result;
}

unint64_t sub_2456362BC()
{
  result = qword_27EE1A7E0;
  if (!qword_27EE1A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7E0);
  }

  return result;
}

unint64_t sub_245636314()
{
  result = qword_27EE1A7E8;
  if (!qword_27EE1A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7E8);
  }

  return result;
}

unint64_t sub_24563636C()
{
  result = qword_27EE1A7F0;
  if (!qword_27EE1A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7F0);
  }

  return result;
}

unint64_t sub_2456363C4()
{
  result = qword_27EE1A7F8;
  if (!qword_27EE1A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A7F8);
  }

  return result;
}

unint64_t sub_24563641C()
{
  result = qword_27EE1A800;
  if (!qword_27EE1A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A800);
  }

  return result;
}

unint64_t sub_245636474()
{
  result = qword_27EE1A808;
  if (!qword_27EE1A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A808);
  }

  return result;
}

unint64_t sub_2456364CC()
{
  result = qword_27EE1A810;
  if (!qword_27EE1A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A810);
  }

  return result;
}

unint64_t sub_245636524()
{
  result = qword_27EE1A818;
  if (!qword_27EE1A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A818);
  }

  return result;
}

unint64_t sub_24563657C()
{
  result = qword_27EE1A820;
  if (!qword_27EE1A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A820);
  }

  return result;
}

unint64_t sub_2456365D4()
{
  result = qword_27EE1A828;
  if (!qword_27EE1A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A828);
  }

  return result;
}

unint64_t sub_24563662C()
{
  result = qword_27EE1A830;
  if (!qword_27EE1A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A830);
  }

  return result;
}

unint64_t sub_245636684()
{
  result = qword_27EE1A838;
  if (!qword_27EE1A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A838);
  }

  return result;
}

unint64_t sub_2456366DC()
{
  result = qword_27EE1A840;
  if (!qword_27EE1A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A840);
  }

  return result;
}

unint64_t sub_245636734()
{
  result = qword_27EE1A848;
  if (!qword_27EE1A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A848);
  }

  return result;
}

unint64_t sub_24563678C()
{
  result = qword_27EE1A850;
  if (!qword_27EE1A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A850);
  }

  return result;
}

uint64_t sub_2456367E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365736143657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_24565BED4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546E6F6973736573 && a2 == 0xEB00000000657079 || (sub_24565BED4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000245663CE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24565BED4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_245636904(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000245663D20 == a2;
  if (v3 || (sub_24565BED4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954636F64 && a2 == 0xE700000000000000 || (sub_24565BED4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000245663D40 == a2 || (sub_24565BED4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436E6F69676572 && a2 == 0xEA00000000006564 || (sub_24565BED4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xEA00000000007365)
  {

    return 4;
  }

  else
  {
    v6 = sub_24565BED4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_245636AC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_245636B1C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_245636B70()
{
  result = qword_27EE1A858;
  if (!qword_27EE1A858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A630, &qword_24565F9D8);
    sub_245636BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A858);
  }

  return result;
}

unint64_t sub_245636BF4()
{
  result = qword_27EE1A860;
  if (!qword_27EE1A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A860);
  }

  return result;
}

uint64_t sub_245636C48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_245636CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_245636CF0()
{
  result = qword_27EE1A878;
  if (!qword_27EE1A878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1A630, &qword_24565F9D8);
    sub_245635784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A878);
  }

  return result;
}

uint64_t sub_245636DA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A8F8, &qword_245660B70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24563A834();
  sub_24565BFC4();
  v17 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_24563A8C0(&v17, v11);
  sub_245634D4C();
  sub_24565BEA4();
  sub_245636B1C(v13, *(&v13 + 1));
  if (!v2)
  {
    v16 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_24563A91C(&v16, v11, &qword_27EE1A908, &qword_245660B78);
    sub_24565BE64();
    sub_245637BC8(v13, *(&v13 + 1));
    v15 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_24563A91C(&v15, v11, &qword_27EE1A908, &qword_245660B78);
    sub_24565BE64();
    sub_245637BC8(v13, *(&v13 + 1));
    v13 = v3[3];
    v14 = v13;
    v12 = 3;
    sub_24563A91C(&v14, v11, &qword_27EE1A908, &qword_245660B78);
    sub_24565BE64();
    sub_245637BC8(v13, *(&v13 + 1));
    LOBYTE(v13) = 4;
    sub_24565BE54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_245637088(uint64_t a1)
{
  sub_24565BA84();
  if (v1[3] >> 60 == 15)
  {
    sub_24565BF94();
  }

  else
  {
    sub_24565BF94();
    sub_24565BA84();
  }

  if (v1[5] >> 60 == 15)
  {
    sub_24565BF94();
  }

  else
  {
    sub_24565BF94();
    sub_24565BA84();
  }

  if (v1[7] >> 60 != 15)
  {
    sub_24565BF94();
    sub_24565BA84();
    if (v1[9])
    {
      goto LABEL_9;
    }

    return sub_24565BF94();
  }

  sub_24565BF94();
  if (!v1[9])
  {
    return sub_24565BF94();
  }

LABEL_9:
  sub_24565BF94();

  return sub_24565BB54();
}

uint64_t sub_2456371B0()
{
  sub_24565BF74();
  sub_245637088(v1);
  return sub_24565BFA4();
}

unint64_t sub_2456371F0()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000028;
  v4 = 0xD00000000000001BLL;
  if (v2 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_245637280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24563A210(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2456372A8(uint64_t a1)
{
  v2 = sub_24563A834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2456372E4(uint64_t a1)
{
  v2 = sub_24563A834();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_245637320@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24563A3C0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_2456373B0()
{
  v1 = v0[3];
  v7 = v0[2];
  v8 = v1;
  v9 = v0[4];
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  sub_24565BF74();
  sub_245637088(v4);
  return sub_24565BFA4();
}

uint64_t sub_245637450()
{
  v1 = v0[3];
  v7 = v0[2];
  v8 = v1;
  v9 = v0[4];
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  sub_24565BF74();
  sub_245637088(v4);
  return sub_24565BFA4();
}

BOOL sub_2456374A8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_245639A18(v8, v9);
}

uint64_t DCPresentmentRequest.sessionEstablishment.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 96));
  sub_24563786C((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 96));

  return v5;
}

uint64_t DCPresentmentRequest.sessionEstablishment.setter(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  os_unfair_lock_lock((v5 + 96));
  sub_245637884((v5 + 16));
  os_unfair_lock_unlock((v5 + 96));
  return sub_245636B1C(a1, a2);
}

void sub_245637790(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sessionEstablishment];
  v4 = sub_24565BA74();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2456377E8(__int128 *a1, uint64_t a2)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  sub_24563A888(a1, v9);
  swift_getAtKeyPath();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  v9[0] = v4;
  v9[1] = v5;
  sub_245639E30(v9);
  return v3;
}

uint64_t DCPresentmentRequest.sessionTranscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 96));
  sub_245637B94((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 96));

  return v5;
}

uint64_t DCPresentmentRequest.sessionTranscript.setter(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  os_unfair_lock_lock(v5 + 24);
  sub_245637BB0(&v5[4]);
  os_unfair_lock_unlock(v5 + 24);
  return sub_245637BC8(a1, a2);
}

uint64_t sub_245637BC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_245636B1C(result, a2);
  }

  return result;
}

uint64_t DCPresentmentRequest.sessionEncryptionIntermediateKeyMaterial.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 96));
  sub_24563AD30((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 96));

  return v5;
}

uint64_t DCPresentmentRequest.sessionEncryptionIntermediateKeyMaterial.setter(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  os_unfair_lock_lock(v5 + 24);
  sub_245637EB8(&v5[4]);
  os_unfair_lock_unlock(v5 + 24);
  return sub_245637BC8(a1, a2);
}

uint64_t DCPresentmentRequest.requiredPublicKeyIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 96));
  sub_24563AD30((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 96));

  return v5;
}

uint64_t DCPresentmentRequest.requiredPublicKeyIdentifier.setter(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  os_unfair_lock_lock(v5 + 24);
  sub_245638288(&v5[4]);
  os_unfair_lock_unlock(v5 + 24);
  return sub_245637BC8(a1, a2);
}

void sub_2456381AC(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24565BA74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_245638210(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_24565BA64();
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t DCPresentmentRequest.relyingPartyIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 96));
  sub_245638400((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 96));

  return v5;
}

void sub_245638334(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___DCPresentmentRequest_state);
  os_unfair_lock_lock(v2 + 24);
  sub_24563AD60(&v2[4]);
  os_unfair_lock_unlock(v2 + 24);
}

uint64_t DCPresentmentRequest.relyingPartyIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  os_unfair_lock_lock(v3 + 24);
  sub_24563841C(&v3[4]);
  os_unfair_lock_unlock(v3 + 24);
}

uint64_t (*DCPresentmentRequest.relyingPartyIdentifier.modify(uint64_t a1, uint64_t a2))(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  *(a1 + 16) = v4;
  swift_getKeyPath();

  os_unfair_lock_lock((v4 + 96));
  sub_24563AD48((v4 + 16), v6);
  *(a1 + 24) = 0;
  os_unfair_lock_unlock((v4 + 96));

  *a1 = *v6;
  return sub_2456384FC;
}

uint64_t sub_2456384FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    os_unfair_lock_lock(v2 + 24);
    sub_24563AD60(&v2[4]);
    os_unfair_lock_unlock(v2 + 24);
  }

  else
  {
    os_unfair_lock_lock(v2 + 24);
    sub_24563AD60(&v2[4]);
    os_unfair_lock_unlock(v2 + 24);
  }
}

id DCPresentmentRequest.init(sessionEstablishment:sessionTranscript:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_24565BA64();
  if (a4 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_24565BA64();
    sub_245637BC8(a3, a4);
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSessionEstablishment:v8 sessionTranscript:v9];

  sub_245636B1C(a1, a2);
  return v10;
}

id DCPresentmentRequest.init(sessionEstablishment:sessionTranscript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A898, &unk_245660800);
  v9 = swift_allocObject();
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = xmmword_245660750;
  *(v9 + 64) = xmmword_245660750;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *&v4[OBJC_IVAR___DCPresentmentRequest_state] = v9;
  v11.receiver = v4;
  v11.super_class = DCPresentmentRequest;
  return objc_msgSendSuper2(&v11, sel_init);
}

BOOL DCPresentmentRequest.isEqual(_:)(uint64_t a1)
{
  v2 = sub_24563A91C(a1, &v13, &unk_27EE1A8A0, &qword_2456618A0);
  if (!*(&v14 + 1))
  {
    sub_245638A1C(&v13);
    return 0;
  }

  type metadata accessor for DCPresentmentRequest(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *&v12[0];
  v4 = *(v1 + OBJC_IVAR___DCPresentmentRequest_state);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);

  os_unfair_lock_lock((v4 + 96));
  sub_245638A98((v4 + 16), v11);
  os_unfair_lock_unlock((v4 + 96));

  v12[2] = v11[2];
  v12[3] = v11[3];
  v12[4] = v11[4];
  v12[0] = v11[0];
  v12[1] = v11[1];
  v6 = *&v3[OBJC_IVAR___DCPresentmentRequest_state];
  v7 = swift_getKeyPath();
  MEMORY[0x28223BE20](v7);

  os_unfair_lock_lock((v6 + 96));
  sub_24563AD78((v6 + 16), v10);
  os_unfair_lock_unlock((v6 + 96));

  v15 = v10[2];
  v16 = v10[3];
  v17 = v10[4];
  v13 = v10[0];
  v14 = v10[1];
  v8 = sub_245639A18(v12, &v13);

  sub_245639E30(&v13);
  sub_245639E30(v12);
  return v8;
}

uint64_t sub_245638A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1A8A0, &qword_2456618A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DCPresentmentRequest.hash.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 96));
  sub_245639E68((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 96));

  return v5;
}

uint64_t sub_245638BF0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v9 = a1[2];
  v10 = v3;
  v11 = a1[4];
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  sub_24565BF74();
  sub_245637088(v6);
  result = sub_24565BFA4();
  *a2 = result;
  return result;
}

uint64_t sub_245638C54(__int128 *a1, uint64_t a2)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  sub_24563A888(a1, v9);
  swift_getAtKeyPath();
  v9[3] = v7;
  v9[4] = v8;
  v9[1] = v5;
  v9[2] = v6;
  v9[0] = v4;
  sub_245639E30(v9);
  return v3;
}

id DCPresentmentRequest.init(coder:)(void *a1)
{
  v2 = v1;
  sub_245639ECC(0, &qword_27EE1A9C0, 0x277CBEA90);
  v4 = sub_24565BCC4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_24565BA74();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_245636AC8(v6, v8);
    v12 = sub_245639738(v6, v8);
    sub_245636B1C(v6, v8);
    if (v12)
    {
      *&v20 = &_s5StateVN;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A8B0, &qword_245660850);
      sub_24565BB34();
      sub_245639F14();
      sub_24565BCB4();

      v28 = v22;
      v29 = v23;
      v13 = v25;
      v30 = v24;
      v26 = v20;
      v27 = v21;
      if (v25 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A898, &unk_245660800);
        v14 = swift_allocObject();
        *(v14 + 96) = 0;
        v15 = v29;
        *(v14 + 48) = v28;
        *(v14 + 64) = v15;
        v16 = v30;
        v17 = v27;
        *(v14 + 16) = v26;
        *(v14 + 32) = v17;
        *(v14 + 80) = v16;
        *(v14 + 88) = v13;
        *&v2[OBJC_IVAR___DCPresentmentRequest_state] = v14;
        [v12 finishDecoding];

        sub_245636B1C(v6, v8);
        v19.receiver = v2;
        v19.super_class = DCPresentmentRequest;
        v18 = objc_msgSendSuper2(&v19, sel_init);

        return v18;
      }

      [v12 finishDecoding];
    }

    v10 = sub_245636B1C(v6, v8);
  }

  else
  {
  }

  type metadata accessor for DCPresentmentRequest(v10);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall DCPresentmentRequest.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v4 = *(v1 + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v4 + 96));
  sub_24563AD78((v4 + 16), v14);
  os_unfair_lock_unlock((v4 + 96));

  v11 = v14[2];
  v12 = v14[3];
  v13 = v14[4];
  v9 = v14[0];
  v10 = v14[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A8B0, &qword_245660850);
  sub_24565BB34();
  sub_24563A000();
  sub_24565BCA4();
  v8[2] = v11;
  v8[3] = v12;
  v8[4] = v13;
  v8[0] = v9;
  v8[1] = v10;
  sub_245639E30(v8);

  [v3 finishEncoding];
  v5 = [v3 encodedData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24565BB14();
    [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_2456391C0@<Q0>(__int128 *a1@<X0>, _OWORD *a3@<X8>)
{
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v10 = *a1;
  v11 = a1[1];
  sub_24563A888(a1, &v16);
  swift_getAtKeyPath();
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v14;
  v15[0] = v10;
  v15[1] = v11;
  sub_245639E30(v15);
  result = v9;
  a3[2] = v7;
  a3[3] = v8;
  a3[4] = v9;
  *a3 = v5;
  a3[1] = v6;
  return result;
}

void __swiftcall DCPresentmentRequest.init()(DCPresentmentRequest *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_245639378@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24565B9A4();
    if (v10)
    {
      v11 = sub_24565B9C4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24565B9B4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24565B9A4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24565B9C4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24565B9B4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}