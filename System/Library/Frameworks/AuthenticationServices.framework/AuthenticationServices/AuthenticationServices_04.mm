uint64_t sub_1B1D2B13C()
{
  v0 = sub_1B1D7B79C();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756F0, &qword_1B1D88960);
  v5 = *(v1 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B1D85D30;
  v29 = v7;
  v8 = v7 + v6;
  v9 = *(v2 + 104);
  v9(v7 + v6, *MEMORY[0x1E698DEE0], v0);
  v10 = *MEMORY[0x1E698DED8];
  v30 = v5;
  v9(v8 + v5, v10, v0);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1B1D194F8(0, 2, 0);
  v11 = v31;
  v28 = *(v2 + 16);
  v28(v4, v8, v0);
  v12 = sub_1B1D7B78C();
  v27 = v13;
  v14 = *(v2 + 8);
  v14(v4, v0);
  v31 = v11;
  v16 = *(v11 + 16);
  v15 = *(v11 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_1B1D194F8((v15 > 1), v16 + 1, 1);
    v11 = v31;
  }

  *(v11 + 16) = v16 + 1;
  v17 = v11 + 16 * v16;
  v18 = v27;
  *(v17 + 32) = v12;
  *(v17 + 40) = v18;
  v28(v4, v8 + v30, v0);

  v19 = sub_1B1D7B78C();
  v21 = v20;
  v14(v4, v0);
  v31 = v11;
  v23 = *(v11 + 16);
  v22 = *(v11 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_1B1D194F8((v22 > 1), v23 + 1, 1);
    v11 = v31;
  }

  *(v11 + 16) = v23 + 1;
  v24 = v11 + 16 * v23;
  *(v24 + 32) = v19;
  *(v24 + 40) = v21;
  return v11;
}

uint64_t ASCredentialIdentityStore.credentialIdentities(forService:credentialIdentityTypes:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D2B408, 0, 0);
}

uint64_t sub_1B1D2B408()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B1D2B538;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775700, &qword_1B1D88980);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B1D2B630;
  v0[13] = &block_descriptor_5;
  v0[14] = v4;
  [v1 getCredentialIdentitiesForService:v3 credentialIdentityTypes:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1D2B538()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D2B618, 0, 0);
}

uint64_t sub_1B1D2B630(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775708, &qword_1B1D88988);
  **(*(v2 + 64) + 40) = sub_1B1D7BEEC();

  return MEMORY[0x1EEE6DED8](v2);
}

id ASPasskeyRegistrationCredential.init(relyingParty:clientDataHash:credentialID:attestationObject:extensionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v15 = *a9;
  v16 = sub_1B1D7BE1C();

  v24 = a4;
  v17 = sub_1B1D7B4DC();
  v26 = sub_1B1D7B4DC();
  v25 = sub_1B1D7B4DC();
  if (v15)
  {
    v19 = [objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionOutput) init];
    v20 = *&v19[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
    *&v19[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v15;
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v18)) initWithRelyingParty:v16 clientDataHash:v17 credentialID:v26 attestationObject:v25 extensionOutput:v21];
  sub_1B1CDEFDC(a7, a8);
  sub_1B1CDEFDC(a5, a6);
  sub_1B1CDEFDC(a3, v24);

  return v23;
}

void ASPasskeyRegistrationCredential.extensionOutput.getter(void *a1@<X8>)
{
  v3 = [v1 extensionOutput];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [v1 extensionOutput];
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];

LABEL_5:
    *a1 = v6;
    return;
  }

  __break(1u);
}

void ASPasskeyRegistrationCredential.extensionOutput.setter(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = [objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionOutput) init];
    v4 = *&v3[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
    *&v3[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v2;
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  [v1 setExtensionOutput_];
}

void (*ASPasskeyRegistrationCredential.extensionOutput.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 extensionOutput];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  result = [v1 extensionOutput];
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions);

LABEL_5:
    *a1 = v6;
    return sub_1B1D2BA18;
  }

  __break(1u);
  return result;
}

void sub_1B1D2BA18(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionOutput);
      v5 = v3;
      v6 = [v4 init];
      v7 = *&v6[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
      v10 = v6;
      *&v6[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v5;
    }

    else
    {
      v10 = 0;
    }

    [a1[1] setExtensionOutput_];
  }

  else if (v3)
  {
    v8 = [objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionOutput) init];
    v9 = *&v8[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
    v10 = v8;
    *&v8[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v3;

    [a1[1] setExtensionOutput_];
  }

  else
  {
    v10 = 0;
    [a1[1] setExtensionOutput_];
  }
}

void sub_1B1D2BB24(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 challenge];
  v5 = sub_1B1D7B4EC();
  v7 = v6;

  v8 = [a1 origin];
  v9 = sub_1B1D7BE4C();
  v11 = v10;

  v12 = [a1 topOrigin];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B1D7BE4C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 crossOrigin];

  v18 = 2 * (v17 != 1);
  if (v17 == 2)
  {
    v18 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
}

id sub_1B1D2BC34()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = objc_allocWithZone(ASPublicKeyCredentialClientData);
  v4 = sub_1B1D7B4DC();
  v5 = sub_1B1D7BE1C();
  v6 = [v3 initWithChallenge:v4 origin:v5];

  if (v1)
  {
    v7 = sub_1B1D7BE1C();
  }

  else
  {
    v7 = 0;
  }

  [v6 setTopOrigin_];

  v8 = 1;
  if (v2)
  {
    v8 = 2;
  }

  if (v2 == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  [v6 setCrossOrigin_];
  return v6;
}

uint64_t ASPublicKeyCredentialClientData.CrossOriginValue.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t ASPublicKeyCredentialClientData.challenge.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASPublicKeyCredentialClientData.challenge.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASPublicKeyCredentialClientData.origin.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ASPublicKeyCredentialClientData.origin.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASPublicKeyCredentialClientData.topOrigin.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ASPublicKeyCredentialClientData.topOrigin.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ASPublicKeyCredentialClientData.init(challenge:origin:topOrigin:crossOrigin:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  return result;
}

unint64_t sub_1B1D2BFA4()
{
  result = qword_1EB775710;
  if (!qword_1EB775710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775710);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B1D2C014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D2C05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D2C0CC(uint64_t a1)
{
  v3 = sub_1B1D7B82C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1D7B85C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 crossOrigin] < 3)
  {
    if (!a1)
    {
      v11 = MEMORY[0x1E698DF00];
LABEL_6:
      (*(v4 + 104))(v6, *v11, v3);
      v12 = [v1 challenge];
      sub_1B1D7B4EC();

      v13 = [v1 origin];
      sub_1B1D7BE4C();

      sub_1B1D7B83C();
      v14 = sub_1B1D7B84C();
      (*(v8 + 8))(v10, v7);
      return v14;
    }

    if (a1 == 1)
    {
      v11 = MEMORY[0x1E698DEF8];
      goto LABEL_6;
    }
  }

  result = sub_1B1D7C32C();
  __break(1u);
  return result;
}

void static ASOsloIcon.passkeySymbol.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x80000001B1D9AC20;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

id static ASOsloIcon.securityKeySymbol(style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 0x80000001B1D9ABC0;
    result = [objc_opt_self() as_authenticationServicesBundle];
    v5 = 64;
    v6 = 0xD000000000000010;
  }

  else
  {
    result = 0;
    v5 = 32;
    v3 = 0xEC00000079656B2ELL;
    v6 = 0x7974697275636573;
  }

  *a2 = v6;
  *(a2 + 8) = v3;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  return result;
}

double static ASOsloIcon.lockSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.71011787e214;
  *a1 = xmmword_1B1D85E80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t *ASOsloIcon.init(icon:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = *(result + 24);
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      v6 = 0;
      v7 = 32;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = v2;
      v2 = *&aTouchid_1[8 * v2];
      v3 = qword_1B1D88D40[v8];
    }
  }

  else if (v5)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = result[2];
    v7 = v4 | 0x60;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

double static ASOsloIcon.passwordSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.42880739e248;
  *a1 = xmmword_1B1D87850;
  *(a1 + 16) = 0;
  *(a1 + 24) = 32;
  return result;
}

char *static ASOsloIcon.biometrics(biometry:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *&aTouchid_1[8 * v2];
  v4 = qword_1B1D88D40[v2];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t ASOsloIcon.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = v2 >> 5;
  if (v2 >> 5 > 1)
  {
    v4 = *(v1 + 16);
    if (v3 == 2)
    {
      MEMORY[0x1B273B630](2);
      sub_1B1D7BE7C();
    }

    else
    {
      if (v3 == 3)
      {
        v5 = v2 & 0x1F;
        MEMORY[0x1B273B630](3);
        if (v5)
        {
          if (v5 != 1)
          {
            return MEMORY[0x1B273B630](0);
          }

          MEMORY[0x1B273B630](2);
          sub_1B1D7B4FC();
          if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v6 = v4;
          }

          else
          {
            v6 = 0;
          }

          return MEMORY[0x1B273B660](v6);
        }

        goto LABEL_12;
      }

      MEMORY[0x1B273B630](4);
    }

    return sub_1B1D7C15C();
  }

  if (v3)
  {
LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:
  MEMORY[0x1B273B630](v8);

  return sub_1B1D7BE7C();
}

uint64_t ASOsloIcon.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1B1D7C5CC();
  ASOsloIcon.hash(into:)(v4);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2C720()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1B1D7C5CC();
  ASOsloIcon.hash(into:)(v4);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2C780(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1B1D7C5CC();
  ASOsloIcon.hash(into:)(v5);
  return sub_1B1D7C61C();
}

BOOL _s22AuthenticationServices10ASOsloIconO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v26[0] = *a1;
  v26[1] = v3;
  v26[2] = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v10 = v5 >> 5;
  v31 = v9;
  if (v5 >> 5 > 1)
  {
    if (v10 == 2)
    {
      if ((v9 & 0xE0) == 0x40)
      {
        v13 = v9;
        if ((v2 != v6 || v3 != v7) && (sub_1B1D7C50C() & 1) == 0)
        {
          v17 = v6;
          v18 = v7;
          v19 = v8;
          LOBYTE(v9) = v13;
          goto LABEL_22;
        }

        sub_1B1CF97E4();
        sub_1B1CE2014(v6, v7, v8, v13);
        sub_1B1CE2014(v2, v3, v4, v5);
LABEL_16:
        v15 = sub_1B1D7C14C();
        sub_1B1D2CC54(v26);
        return v15 & 1;
      }
    }

    else
    {
      if (v10 == 3)
      {
        if ((v9 & 0xE0) == 0x60)
        {
          v24[0] = v2;
          v24[1] = v3;
          v24[2] = v4;
          v25 = v5 & 0x1F;
          v22[0] = v6;
          v22[1] = v7;
          v22[2] = v8;
          v23 = v9 & 0x1F;
          v11 = v9;
          sub_1B1CE2014(v6, v7, v8, v9);
          sub_1B1CE2014(v2, v3, v4, v5);
          sub_1B1CE2014(v6, v7, v8, v11);
          sub_1B1CE2014(v2, v3, v4, v5);
          v12 = _s22AuthenticationServices9ASAppIconO2eeoiySbAC_ACtFZ_0(v24, v22);
          sub_1B1D2CC54(v26);
          sub_1B1CE23AC(v6, v7, v8, v11);
          sub_1B1CE23AC(v2, v3, v4, v5);
          return v12;
        }

        goto LABEL_21;
      }

      if ((v9 & 0xE0) == 0x80)
      {
        v14 = v9;
        sub_1B1CF97E4();
        sub_1B1CE2014(v6, v7, v8, v14);
        sub_1B1CE2014(v2, v3, v4, v5);
        goto LABEL_16;
      }
    }

LABEL_21:
    v17 = v6;
    v18 = v7;
    v19 = v8;
LABEL_22:
    sub_1B1CE2014(v17, v18, v19, v9);
    sub_1B1CE2014(v2, v3, v4, v5);
    sub_1B1D2CC54(v26);
    return 0;
  }

  if (v10)
  {
    if ((v9 & 0xE0) != 0x20)
    {
      goto LABEL_21;
    }
  }

  else if (v9 >= 0x20)
  {
    goto LABEL_21;
  }

  if (v2 != v6 || v3 != v7)
  {
    v20 = v9;
    v21 = sub_1B1D7C50C();
    sub_1B1CE2014(v6, v7, v8, v20);
    sub_1B1CE2014(v2, v3, v4, v5);
    sub_1B1D2CC54(v26);
    return v21 & 1;
  }

  sub_1B1CE2014(v2, v3, v8, v9);
  sub_1B1CE2014(v2, v3, v4, v5);
  sub_1B1D2CC54(v26);
  return 1;
}

unint64_t sub_1B1D2CB10()
{
  result = qword_1EB775718;
  if (!qword_1EB775718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775718);
  }

  return result;
}

uint64_t sub_1B1D2CB70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 25))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 24) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 24) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1D2CBC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1B1D2CC54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775720, &unk_1B1D88D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1D2CCBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x80000001B1D9A3E0;
    v12 = 0xD00000000000001ALL;
    v13 = 0x2D7972746E756F63;
    v14 = 0xEC00000065646F63;
    if (a1 != 8)
    {
      v13 = 0xD000000000000010;
      v14 = 0x80000001B1D9A410;
    }

    if (a1 != 7)
    {
      v12 = v13;
      v11 = v14;
    }

    v15 = 0xE400000000000000;
    v16 = 1702125924;
    if (a1 != 5)
    {
      v16 = 0x6E6F6D2D72616579;
      v15 = 0xEA00000000006874;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x6C69616D65;
    v6 = 0xE600000000000000;
    v7 = 0x7265626D756ELL;
    if (a1 != 3)
    {
      v7 = 0x6E61656C6F6F62;
      v6 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xD000000000000010;
    if (a1)
    {
      v3 = 0x80000001B1D9A3B0;
    }

    else
    {
      v8 = 0x676E69727473;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xE500000000000000;
        if (v9 != 0x6C69616D65)
        {
          goto LABEL_57;
        }
      }

      else if (a2 == 3)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x7265626D756ELL)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x6E61656C6F6F62)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    if (!a2)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x676E69727473)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v18 = "concealed-string";
LABEL_52:
    v17 = (v18 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v17 = 0x80000001B1D9A3E0;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    if (a2 == 8)
    {
      v17 = 0xEC00000065646F63;
      if (v9 != 0x2D7972746E756F63)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v18 = "subdivision-code";
    goto LABEL_52;
  }

  if (a2 == 5)
  {
    v17 = 0xE400000000000000;
    if (v9 != 1702125924)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xEA00000000006874;
    if (v9 != 0x6E6F6D2D72616579)
    {
LABEL_57:
      v19 = sub_1B1D7C50C();
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v19 = 1;
LABEL_58:

  return v19 & 1;
}

uint64_t sub_1B1D2CFD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E6F6973726576;
    }

    else
    {
      v3 = 0x73746E756F636361;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x726574726F707865;
    v4 = 0xEC00000064497052;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000013;
    v4 = 0x80000001B1D9A2F0;
  }

  else
  {
    v3 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6E6F6973726576;
    }

    else
    {
      v6 = 0x73746E756F636361;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC00000064497052;
    if (v3 != 0x726574726F707865)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001B1D9A2F0;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE900000000000070;
    if (v3 != 0x6D617473656D6974)
    {
LABEL_31:
      v7 = sub_1B1D7C50C();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1B1D2D18C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064496C61;
  v3 = 0x69746E6564657263;
  v4 = a1;
  v5 = 0x7073694472657375;
  v6 = 0xEF656D614E79616CLL;
  v7 = 0x646E614872657375;
  v8 = 0xEA0000000000656CLL;
  if (a1 != 4)
  {
    v7 = 7955819;
    v8 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1682534514;
  if (a1 != 1)
  {
    v10 = 0x656D616E72657375;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x69746E6564657263;
    v9 = 0xEC00000064496C61;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEF656D614E79616CLL;
      if (v11 != 0x7073694472657375)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA0000000000656CLL;
      if (v11 != 0x646E614872657375)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE300000000000000;
      if (v11 != 7955819)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1682534514)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656D616E72657375;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1B1D7C50C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1B1D2D368(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007373657264;
  v3 = 0x6441746565727473;
  v4 = a1;
  v5 = 0x726F746972726574;
  v6 = 0xE900000000000079;
  v7 = 0xE700000000000000;
  v8 = 0x7972746E756F63;
  if (a1 != 4)
  {
    v8 = 7103860;
    v7 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x6F436C6174736F70;
  v10 = 0xEA00000000006564;
  if (a1 != 1)
  {
    v9 = 2037672291;
    v10 = 0xE400000000000000;
  }

  if (!a1)
  {
    v9 = 0x6441746565727473;
    v10 = 0xED00007373657264;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE900000000000079;
      if (v11 != 0x726F746972726574)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x7972746E756F63)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE300000000000000;
      if (v11 != 7103860)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA00000000006564;
        if (v11 != 0x6F436C6174736F70)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE400000000000000;
      v3 = 2037672291;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1B1D7C50C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1B1D2D538(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F697461657263;
  v5 = 0xEC00000065746144;
  v6 = 0x6144797269707865;
  if (a1 == 4)
  {
    v7 = 0xEA00000000006574;
  }

  else
  {
    v6 = 0xD000000000000013;
    v7 = 0x80000001B1D9A5B0;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x4B65746176697270;
  v9 = 0xEA0000000000746ELL;
  if (a1 == 1)
  {
    v9 = 0xEA00000000007965;
  }

  else
  {
    v8 = 0x656D6D6F4379656BLL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6570795479656BLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6570795479656BLL)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v14 = 0xEA0000000000746ELL;
      if (v10 != 0x656D6D6F4379656BLL)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v12 = 0x4B65746176697270;
    v13 = 31077;
    goto LABEL_25;
  }

  if (a2 == 3)
  {
    v14 = 0xEC00000065746144;
    if (v10 != 0x6E6F697461657263)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (a2 == 4)
  {
    v12 = 0x6144797269707865;
    v13 = 25972;
LABEL_25:
    v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v10 != v12)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v14 = 0x80000001B1D9A5B0;
  if (v10 != 0xD000000000000013)
  {
LABEL_36:
    v15 = sub_1B1D7C50C();
    goto LABEL_37;
  }

LABEL_34:
  if (v11 != v14)
  {
    goto LABEL_36;
  }

  v15 = 1;
LABEL_37:

  return v15 & 1;
}

uint64_t sub_1B1D2D738(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  v6 = 0x6F724664696C6176;
  v7 = 0xE90000000000006DLL;
  if (a1 != 4)
  {
    v6 = 0x6144797269707865;
    v7 = 0xEA00000000006574;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656D616E72657375;
  if (a1 != 1)
  {
    v9 = 0x6570795479656BLL;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7955819;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x6F724664696C6176)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006574;
      if (v10 != 0x6144797269707865)
      {
LABEL_34:
        v13 = sub_1B1D7C50C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656D616E72657375)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6570795479656BLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 7955819)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1B1D2D918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746572636573;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x656D616E72657375;
  v6 = 0x687469726F676C61;
  v7 = 0xE90000000000006DLL;
  if (a1 != 4)
  {
    v6 = 0x726575737369;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x646F69726570;
  if (a1 != 1)
  {
    v8 = 0x737469676964;
  }

  if (!a1)
  {
    v8 = 0x746572636573;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x656D616E72657375)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE90000000000006DLL;
      if (v9 != 0x687469726F676C61)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x726575737369)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x646F69726570)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x737469676964;
    }

    if (v9 != v2)
    {
LABEL_31:
      v12 = sub_1B1D7C50C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v11)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1B1D2DAD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6E6F697461657263;
  v6 = 0xEA00000000007441;
  if (a1 != 6)
  {
    v5 = 0x6465696669646F6DLL;
    v6 = 0xEA00000000007441;
  }

  v7 = 0xE500000000000000;
  v8 = 0x736D657469;
  if (a1 != 4)
  {
    v8 = 0x656C6C6F63627573;
    v7 = 0xEE00736E6F697463;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (a1 != 2)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = 0x6E6F697461657263;
      }

      else
      {
        v14 = 0x6465696669646F6DLL;
      }

      v13 = 0xEA00000000007441;
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      v14 = 0x736D657469;
    }

    else
    {
      v14 = 0x656C6C6F63627573;
      v13 = 0xEE00736E6F697463;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      v14 = 0x656C746974627573;
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1852793705;
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    v14 = 0x656C746974;
  }

  else
  {
    v13 = 0xE200000000000000;
    v14 = 25705;
  }

  if (v11 == v14 && v12 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B1D7C50C();
  }

  return v15 & 1;
}

uint64_t sub_1B1D2DD08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x697463656C6C6F63;
  v6 = 0xEB00000000736E6FLL;
  if (a1 != 5)
  {
    v5 = 0x736D657469;
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D614E6C6C7566;
  if (a1 != 3)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656D616E72657375;
  if (a1 != 1)
  {
    v10 = 0x6C69616D65;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6C69616D65)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v13 = 0xE800000000000000;
    v14 = 0x616E72657375;
    goto LABEL_24;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1852793705)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v13 = 0xE800000000000000;
    v14 = 0x614E6C6C7566;
LABEL_24:
    if (v11 != (v14 & 0xFFFFFFFFFFFFLL | 0x656D000000000000))
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (a2 == 5)
  {
    v13 = 0xEB00000000736E6FLL;
    if (v11 != 0x697463656C6C6F63)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x736D657469)
    {
LABEL_38:
      v15 = sub_1B1D7C50C();
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v15 = 1;
LABEL_39:

  return v15 & 1;
}

uint64_t sub_1B1D2DF14(unsigned __int8 a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2E020(unsigned __int8 a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2E120(unsigned __int8 a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2E230(unsigned __int8 a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2E34C(unsigned __int8 a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.FormatVersion.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B1D7C3AC();

  *a3 = v4 != 0;
  return result;
}

uint64_t ASImportableItem.init(id:created:lastModified:title:subtitle:favorite:scope:credentials:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v31 = a11[1];
  v32 = *a11;
  v15 = type metadata accessor for ASImportableItem(0);
  v16 = v15[5];
  v17 = sub_1B1D7B53C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(&a9[v16], 1, 1, v17);
  v20 = v15[6];
  v19(&a9[v20], 1, 1, v17);
  v26 = &a9[v15[8]];
  v27 = v15[9];
  v21 = &a9[v15[10]];
  *v21 = 0;
  v21[1] = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B1CDEC18(&a9[v16], &qword_1EB775228, &qword_1B1D88D60);
  v22 = *(v18 + 32);
  v22(&a9[v16], a3, v17);
  v19(&a9[v16], 0, 1, v17);
  sub_1B1CDEC18(&a9[v20], &qword_1EB775228, &qword_1B1D88D60);
  v22(&a9[v20], a4, v17);
  v19(&a9[v20], 0, 1, v17);
  v23 = &a9[v15[7]];
  *v23 = a5;
  *(v23 + 1) = a6;
  *v26 = a7;
  *(v26 + 1) = a8;
  a9[v27] = a10;
  result = sub_1B1D0C93C(*v21, v21[1]);
  *v21 = v32;
  v21[1] = v31;
  *&a9[v15[12]] = a12;
  *&a9[v15[11]] = a13;
  return result;
}

uint64_t ASImportableEditableField.init(id:fieldType:value:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

__n128 ASImportableCredential.BasicAuthentication.init(userName:password:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  v11 = a2[1];
  v12 = *a2;
  v9 = *(a1 + 32);
  v10 = a2[2];
  v6 = *(a2 + 6);
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  *(a3 + 32) = v9;
  *(a3 + 48) = v5;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  *(a3 + 56) = v12;
  *(a3 + 72) = v11;
  result = v10;
  *(a3 + 88) = v10;
  *(a3 + 104) = v6;
  return result;
}

uint64_t ASImportableCredentialScope.init(urls:androidApps:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ASImportableCredential.TOTP.init(secret:period:digits:userName:algorithm:issuer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 18) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = v10;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

__n128 ASImportableCredential.Note.init(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

__n128 ASImportableCredential.Passkey.init(credentialID:relyingPartyIdentifier:userName:userDisplayName:userHandle:key:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  return result;
}

uint64_t sub_1B1D2E888(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D2EA04(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D2EB2C(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2EC3C(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2ED78(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2EE6C(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2EF68(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2F080(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2F188(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.FormatVersion.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775728, &qword_1B1D88D68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D2F594();
  sub_1B1D7C62C();
  if (!v1)
  {
    LOBYTE(v21) = 0;
    v7 = sub_1B1D7C42C();
    LOBYTE(v21) = 1;
    v8 = sub_1B1D7C42C();
    if (v7 != 1 || v8 != 0)
    {
      v18 = v8;
      v10 = v7;
      v11 = sub_1B1D7C2BC();
      swift_allocError();
      v20 = v12;
      v19 = sub_1B1D7C3CC();
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1B1D7C27C();

      v21 = 0xD000000000000015;
      v22 = 0x80000001B1D9CB20;
      v23 = v10;
      v13 = sub_1B1D7C4EC();
      MEMORY[0x1B273AEE0](v13);

      MEMORY[0x1B273AEE0](46, 0xE100000000000000);
      v23 = v18;
      v14 = sub_1B1D7C4EC();
      MEMORY[0x1B273AEE0](v14);

      v15 = v20;
      sub_1B1D7C2AC();
      (*(*(v11 - 8) + 104))(v15, *MEMORY[0x1E69E6B00], v11);
      swift_willThrow();
    }

    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B1D2F594()
{
  result = qword_1EB775730;
  if (!qword_1EB775730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775730);
  }

  return result;
}

uint64_t ASExportedCredentialData.FormatVersion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775738, &qword_1B1D88D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D2F594();
  sub_1B1D7C63C();
  v10 = 0;
  sub_1B1D7C4BC();
  if (!v1)
  {
    v9 = 1;
    sub_1B1D7C4BC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B1D2F76C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726F6E696DLL;
  }

  else
  {
    v2 = 0x726F6A616DLL;
  }

  if (*a2)
  {
    v3 = 0x726F6E696DLL;
  }

  else
  {
    v3 = 0x726F6A616DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B1D7C50C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B1D2F7EC()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2F85C(uint64_t a1)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D2F8B0(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

void sub_1B1D2F928(uint64_t *a1@<X8>)
{
  v2 = 0x726F6A616DLL;
  if (*v1)
  {
    v2 = 0x726F6E696DLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_1B1D2F958()
{
  if (*v0)
  {
    return 0x726F6E696DLL;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

uint64_t sub_1B1D2F990(uint64_t a1)
{
  v2 = sub_1B1D2F594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D2F9CC(uint64_t a1)
{
  v2 = sub_1B1D2F594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D2FA08@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B1D7C3AC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1B1D2FAB0()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2FB0C(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.exporterRelyingPartyIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ASExportedCredentialData.exporterDisplayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ASExportedCredentialData.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ASExportedCredentialData(0) + 28);
  v4 = sub_1B1D7B53C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ASExportedCredentialData.accounts.getter()
{
  type metadata accessor for ASExportedCredentialData(0);
}

uint64_t ASExportedCredentialData.accounts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASExportedCredentialData(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ASExportedCredentialData.init(accounts:formatVersion:exporterRelyingPartyIdentifier:exporterDisplayName:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v14 = type metadata accessor for ASExportedCredentialData(0);
  *&a7[*(v14 + 32)] = a1;
  *a7 = a2;
  *(a7 + 1) = a3;
  *(a7 + 2) = a4;
  *(a7 + 3) = a5;
  v15 = *(v14 + 28);
  v16 = sub_1B1D7B53C();
  v17 = *(*(v16 - 8) + 32);

  return v17(&a7[v15], a6, v16);
}

uint64_t sub_1B1D2FDB0()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2FEA4(uint64_t a1)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D2FF84(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

unint64_t sub_1B1D30074@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6BA10(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D300A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73746E756F636361;
  v5 = 0xEC00000064497052;
  v6 = 0x726574726F707865;
  v7 = 0x80000001B1D9A2F0;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1B1D30154()
{
  v1 = *v0;
  v2 = 0x73746E756F636361;
  v3 = 0x726574726F707865;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6973726576;
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

unint64_t sub_1B1D30200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6BA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D30228(uint64_t a1)
{
  v2 = sub_1B1D64034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D30264(uint64_t a1)
{
  v2 = sub_1B1D64034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D302A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1D7B49C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1B1D641B4(&qword_1EB775FB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v21 = sub_1B1D7BE0C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1D304B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1B1D66170(v24, v15);
    sub_1B1D66170(v27, v15);
    v13 = _s22AuthenticationServices27ASImportableCredentialScopeV12AndroidAppIDV2eeoiySbAE_AEtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1B1D661A8(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1B1D661A8(v31);
    if (!v13)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_1B1D305D4(uint64_t a1, uint64_t a2)
{
  v307 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ASImportableItem(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v248 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v248 - v9;
  v11 = sub_1B1D7B53C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v248 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v278 = &v248 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v279 = &v248 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v281 = &v248 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v283 = &v248 - v22;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FB8, &unk_1B1D93650);
  v23 = MEMORY[0x1EEE9AC00](v290);
  v284 = &v248 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v285 = &v248 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v286 = &v248 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v287 = &v248 - v29;
  v294 = type metadata accessor for ASImportableCollection(0);
  v30 = MEMORY[0x1EEE9AC00](v294);
  v291 = &v248 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v293 = (&v248 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v292 = (&v248 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v42 = &v248 - v41;
  v43 = *(a1 + 16);
  if (v43 != *(a2 + 16))
  {
    return 0;
  }

  if (!v43 || a1 == a2)
  {
    return 1;
  }

  v273 = v8;
  v44 = 0;
  v45 = a1 + 32;
  v46 = a2 + 32;
  v280 = (v12 + 48);
  v268 = (v12 + 32);
  v269 = v14;
  v270 = (v12 + 8);
  v271 = 0;
  v275 = v11;
  v276 = v40;
  v288 = v38;
  v289 = v42;
  v267 = v39;
  v262 = a1 + 32;
  v263 = v43;
  v261 = a2 + 32;
  while (1)
  {
    v266 = v44;
    v47 = (v45 + 80 * v44);
    v48 = v47[1];
    v297 = *v47;
    v298 = v48;
    v49 = v47[3];
    v299 = v47[2];
    v300 = v49;
    v50 = (v46 + 80 * v44);
    v52 = *v50;
    v51 = v50[1];
    v301 = v47[4];
    v302 = v52;
    v53 = v50[2];
    v54 = v50[3];
    v303 = v51;
    v304 = v53;
    v55 = v50[4];
    v305 = v54;
    v306 = v55;
    v56 = *(&v52 + 1);
    v57 = v52;
    v58 = *(&v297 + 1) >> 62;
    v59 = *(&v52 + 1) >> 62;
    v60 = v292;
    if (*(&v297 + 1) >> 62 == 3)
    {
      v61 = 0;
      if (v297 == __PAIR128__(0xC000000000000000, 0) && *(&v302 + 1) >> 62 == 3)
      {
        v61 = 0;
        if (__PAIR128__(*(&v52 + 1), v302) == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_31;
        }
      }

LABEL_19:
      if (v59 <= 1)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    if (v58 > 1)
    {
      if (v58 == 2)
      {
        v67 = *(v297 + 16);
        v66 = *(v297 + 24);
        v64 = __OFSUB__(v66, v67);
        v61 = v66 - v67;
        if (v64)
        {
          goto LABEL_283;
        }

        goto LABEL_19;
      }

      v61 = 0;
      if (v59 <= 1)
      {
        goto LABEL_20;
      }
    }

    else if (v58)
    {
      LODWORD(v61) = DWORD1(v297) - v297;
      if (__OFSUB__(DWORD1(v297), v297))
      {
        goto LABEL_282;
      }

      v61 = v61;
      if (v59 <= 1)
      {
LABEL_20:
        if (v59)
        {
          LODWORD(v65) = DWORD1(v52) - v52;
          if (__OFSUB__(DWORD1(v52), v52))
          {
            goto LABEL_279;
          }

          v65 = v65;
        }

        else
        {
          v65 = BYTE14(v52);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v61 = BYTE14(v297);
      if (v59 <= 1)
      {
        goto LABEL_20;
      }
    }

LABEL_13:
    if (v59 != 2)
    {
      if (v61)
      {
        return 0;
      }

LABEL_31:
      sub_1B1D6D4CC(&v297, v296);
      sub_1B1D6D4CC(&v302, v296);
      goto LABEL_53;
    }

    v63 = *(v52 + 16);
    v62 = *(v52 + 24);
    v64 = __OFSUB__(v62, v63);
    v65 = v62 - v63;
    if (v64)
    {
      goto LABEL_278;
    }

LABEL_26:
    if (v61 != v65)
    {
      return 0;
    }

    if (v61 < 1)
    {
      goto LABEL_31;
    }

    if (v58 > 1)
    {
      if (v58 == 2)
      {
        v68 = *(v297 + 16);
        v69 = *(v297 + 24);
        sub_1B1D6D4CC(&v297, v296);
        sub_1B1D6D4CC(&v302, v296);
        v70 = sub_1B1D7B34C();
        if (v70)
        {
          v71 = sub_1B1D7B36C();
          if (__OFSUB__(v68, v71))
          {
            goto LABEL_292;
          }

          v70 += v68 - v71;
        }

        if (__OFSUB__(v69, v68))
        {
          goto LABEL_287;
        }

        sub_1B1D7B35C();
        v72 = v56;
        v73 = v271;
        sub_1B1D036A8(v70, v57, v72, v296);
        v11 = v275;
        v60 = v292;
        if ((v296[0] & 1) == 0)
        {
          goto LABEL_270;
        }

        goto LABEL_52;
      }

      memset(v295, 0, 14);
      sub_1B1D6D4CC(&v297, v296);
      sub_1B1D6D4CC(&v302, v296);
    }

    else
    {
      if (v58)
      {
        v74 = v297;
        if (v297 >> 32 < v297)
        {
          goto LABEL_286;
        }

        sub_1B1D6D4CC(&v297, v296);
        sub_1B1D6D4CC(&v302, v296);
        v75 = sub_1B1D7B34C();
        if (v75)
        {
          v76 = sub_1B1D7B36C();
          if (__OFSUB__(v74, v76))
          {
            goto LABEL_293;
          }

          v75 += v74 - v76;
        }

        v60 = v292;
        sub_1B1D7B35C();
        v77 = v56;
        v73 = v271;
        sub_1B1D036A8(v75, v57, v77, v296);
        v11 = v275;
        if ((v296[0] & 1) == 0)
        {
          goto LABEL_270;
        }

        goto LABEL_52;
      }

      v295[0] = v297;
      LODWORD(v295[1]) = DWORD2(v297);
      WORD2(v295[1]) = WORD6(v297);
      sub_1B1D6D4CC(&v297, v296);
      sub_1B1D6D4CC(&v302, v296);
    }

    v78 = v56;
    v73 = v271;
    sub_1B1D036A8(v295, v57, v78, v296);
    if ((v296[0] & 1) == 0)
    {
      goto LABEL_270;
    }

LABEL_52:
    v271 = v73;
LABEL_53:
    v79 = v273;
    v80 = v280;
    if (v298 != v303 && (sub_1B1D7C50C() & 1) == 0 || v299 != v304 && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_270;
    }

    if (*(&v300 + 1))
    {
      if (!*(&v305 + 1) || v300 != v305 && (sub_1B1D7C50C() & 1) == 0)
      {
        goto LABEL_270;
      }
    }

    else if (*(&v305 + 1))
    {
      goto LABEL_270;
    }

    v81 = v301;
    v82 = v306;
    v83 = *(v301 + 16);
    if (v83 != *(v306 + 16))
    {
      goto LABEL_270;
    }

    if (v83)
    {
      v84 = v267;
      if (v301 != v306)
      {
        break;
      }
    }

LABEL_254:
    v241 = *(*(&v301 + 1) + 16);
    if (v241 != *(*(&v306 + 1) + 16))
    {
      goto LABEL_270;
    }

    if (v241 && *(&v301 + 1) != *(&v306 + 1))
    {
      v242 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v243 = *(&v301 + 1) + v242;
      v244 = *(&v306 + 1) + v242;
      v245 = *(v5 + 72);
      do
      {
        sub_1B1D6D404(v243, v10, type metadata accessor for ASImportableItem);
        sub_1B1D6D404(v244, v79, type metadata accessor for ASImportableItem);
        v246 = _s22AuthenticationServices16ASImportableItemV2eeoiySbAC_ACtFZ_0(v10, v79);
        sub_1B1D6D46C(v79, type metadata accessor for ASImportableItem);
        sub_1B1D6D46C(v10, type metadata accessor for ASImportableItem);
        if ((v246 & 1) == 0)
        {
          goto LABEL_270;
        }

        v244 += v245;
        v243 += v245;
      }

      while (--v241);
    }

    v44 = v266 + 1;
    sub_1B1D6D504(&v302);
    sub_1B1D6D504(&v297);
    if (v44 == v263)
    {
      return 1;
    }

    v11 = v275;
    v46 = v261;
    v45 = v262;
  }

  v85 = 0;
  v86 = (*(v267 + 80) + 32) & ~*(v267 + 80);
  v87 = v301 + v86;
  v257 = v86;
  v260 = v306 + v86;
  v264 = v306;
  v265 = v5;
  v252 = v83;
  v253 = v301;
  v251 = v301 + v86;
  while (1)
  {
    if (v85 >= *(v81 + 16))
    {
      goto LABEL_274;
    }

    v88 = v85;
    v282 = *(v84 + 72);
    v89 = v282 * v85;
    v90 = v87 + v282 * v85;
    v91 = v289;
    sub_1B1D6D404(v90, v289, type metadata accessor for ASImportableCollection);
    v92 = *(v82 + 16);
    v259 = v88;
    if (v88 >= v92)
    {
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
    }

    sub_1B1D6D404(v260 + v89, v60, type metadata accessor for ASImportableCollection);
    v93 = *v91;
    v94 = v91[1];
    v95 = *v60;
    v96 = v60[1];
    v97 = v94 >> 62;
    v98 = v96 >> 62;
    if (v94 >> 62 == 3)
    {
      v99 = 0;
      if (!v93 && v94 == 0xC000000000000000 && v96 >> 62 == 3)
      {
        v99 = 0;
        if (!v95 && v96 == 0xC000000000000000)
        {
          goto LABEL_146;
        }
      }

LABEL_91:
      if (v98 <= 1)
      {
        goto LABEL_92;
      }

      goto LABEL_79;
    }

    if (v97 <= 1)
    {
      if (!v97)
      {
        v99 = BYTE6(v94);
        if (v98 <= 1)
        {
          goto LABEL_92;
        }

        goto LABEL_79;
      }

      LODWORD(v99) = HIDWORD(v93) - v93;
      if (__OFSUB__(HIDWORD(v93), v93))
      {
        goto LABEL_289;
      }

      v99 = v99;
      goto LABEL_91;
    }

    if (v97 == 2)
    {
      v104 = *(v93 + 16);
      v103 = *(v93 + 24);
      v64 = __OFSUB__(v103, v104);
      v99 = v103 - v104;
      if (v64)
      {
        goto LABEL_288;
      }

      goto LABEL_91;
    }

    v99 = 0;
    if (v98 <= 1)
    {
LABEL_92:
      if (v98)
      {
        LODWORD(v102) = HIDWORD(v95) - v95;
        if (__OFSUB__(HIDWORD(v95), v95))
        {
          goto LABEL_281;
        }

        v102 = v102;
      }

      else
      {
        v102 = BYTE6(v96);
      }

      goto LABEL_96;
    }

LABEL_79:
    if (v98 != 2)
    {
      if (v99)
      {
        goto LABEL_269;
      }

      goto LABEL_146;
    }

    v101 = *(v95 + 16);
    v100 = *(v95 + 24);
    v64 = __OFSUB__(v100, v101);
    v102 = v100 - v101;
    if (v64)
    {
      goto LABEL_280;
    }

LABEL_96:
    if (v99 != v102)
    {
      goto LABEL_269;
    }

    if (v99 < 1)
    {
      goto LABEL_146;
    }

    if (v97 > 1)
    {
      if (v97 != 2)
      {
        *&v296[6] = 0;
        *v296 = 0;
        if (v98)
        {
          if (v98 == 2)
          {
            v124 = *(v95 + 16);
            v125 = *(v95 + 24);
            v110 = sub_1B1D7B34C();
            if (v110)
            {
              v126 = sub_1B1D7B36C();
              if (__OFSUB__(v124, v126))
              {
                goto LABEL_309;
              }

              v110 += v124 - v126;
            }

            v64 = __OFSUB__(v125, v124);
            v106 = v125 - v124;
            if (v64)
            {
              goto LABEL_305;
            }

            v111 = sub_1B1D7B35C();
            v60 = v292;
            if (!v110)
            {
              goto LABEL_312;
            }
          }

          else
          {
            v131 = v95;
            v106 = (v95 >> 32) - v95;
            if (v95 >> 32 < v95)
            {
              goto LABEL_303;
            }

            v132 = sub_1B1D7B34C();
            if (!v132)
            {
              sub_1B1D7B35C();
LABEL_311:
              __break(1u);
LABEL_312:
              __break(1u);
LABEL_313:
              __break(1u);
LABEL_314:
              __break(1u);
LABEL_315:
              result = sub_1B1D7B35C();
              __break(1u);
              return result;
            }

            v133 = v132;
            v134 = sub_1B1D7B36C();
            if (__OFSUB__(v131, v134))
            {
              goto LABEL_306;
            }

            v110 = (v131 - v134 + v133);
            v111 = sub_1B1D7B35C();
            v60 = v292;
            if (!v110)
            {
              goto LABEL_311;
            }
          }

          goto LABEL_141;
        }

LABEL_127:
        v295[0] = v95;
        LOWORD(v295[1]) = v96;
        BYTE2(v295[1]) = BYTE2(v96);
        BYTE3(v295[1]) = BYTE3(v96);
        BYTE4(v295[1]) = BYTE4(v96);
        BYTE5(v295[1]) = BYTE5(v96);
        v127 = memcmp(v296, v295, BYTE6(v96));
        goto LABEL_145;
      }

      v112 = *(v93 + 16);
      v113 = *(v93 + 24);
      v114 = sub_1B1D7B34C();
      if (v114)
      {
        v115 = sub_1B1D7B36C();
        if (__OFSUB__(v112, v115))
        {
          goto LABEL_298;
        }

        v114 += v112 - v115;
      }

      if (__OFSUB__(v113, v112))
      {
        goto LABEL_291;
      }

      sub_1B1D7B35C();
      v116 = v95;
      v117 = v271;
      sub_1B1D036A8(v114, v116, v96, v296);
      v271 = v117;
      v118 = v296[0];
      v11 = v275;
      v60 = v292;
    }

    else
    {
      if (!v97)
      {
        *v296 = *v91;
        *&v296[8] = v94;
        v296[10] = BYTE2(v94);
        v296[11] = BYTE3(v94);
        v296[12] = BYTE4(v94);
        v296[13] = BYTE5(v94);
        if (v98)
        {
          if (v98 == 1)
          {
            v105 = v95;
            v106 = (v95 >> 32) - v95;
            if (v95 >> 32 < v95)
            {
              goto LABEL_302;
            }

            v107 = sub_1B1D7B34C();
            if (!v107)
            {
              goto LABEL_315;
            }

            v108 = v107;
            v109 = sub_1B1D7B36C();
            if (__OFSUB__(v105, v109))
            {
              goto LABEL_307;
            }

            v110 = (v105 - v109 + v108);
            v111 = sub_1B1D7B35C();
            v60 = v292;
            if (!v110)
            {
              goto LABEL_314;
            }
          }

          else
          {
            v128 = *(v95 + 16);
            v129 = *(v95 + 24);
            v110 = sub_1B1D7B34C();
            if (v110)
            {
              v130 = sub_1B1D7B36C();
              if (__OFSUB__(v128, v130))
              {
                goto LABEL_308;
              }

              v110 += v128 - v130;
            }

            v64 = __OFSUB__(v129, v128);
            v106 = v129 - v128;
            if (v64)
            {
              goto LABEL_304;
            }

            v111 = sub_1B1D7B35C();
            v60 = v292;
            if (!v110)
            {
              goto LABEL_313;
            }
          }

LABEL_141:
          if (v111 >= v106)
          {
            v135 = v106;
          }

          else
          {
            v135 = v111;
          }

          v127 = memcmp(v296, v110, v135);
          v11 = v275;
LABEL_145:
          v91 = v289;
          if (v127)
          {
            goto LABEL_269;
          }

          goto LABEL_146;
        }

        goto LABEL_127;
      }

      v119 = v93;
      if (v93 >> 32 < v93)
      {
        goto LABEL_290;
      }

      v120 = sub_1B1D7B34C();
      if (v120)
      {
        v121 = sub_1B1D7B36C();
        if (__OFSUB__(v119, v121))
        {
          goto LABEL_299;
        }

        v120 += v119 - v121;
      }

      v60 = v292;
      sub_1B1D7B35C();
      v122 = v95;
      v123 = v271;
      sub_1B1D036A8(v120, v122, v96, v296);
      v271 = v123;
      v118 = v296[0];
      v11 = v275;
    }

    v91 = v289;
    if ((v118 & 1) == 0)
    {
      goto LABEL_269;
    }

LABEL_146:
    v136 = v294[5];
    v137 = *(v290 + 48);
    v138 = v287;
    sub_1B1D64DB8(v91 + v136, v287);
    v139 = v60 + v136;
    v140 = v138;
    sub_1B1D64DB8(v139, v138 + v137);
    v141 = *v80;
    v142 = (*v80)(v138, 1, v11);
    v272 = v141;
    if (v142 == 1)
    {
      if (v141(v138 + v137, 1, v11) != 1)
      {
        goto LABEL_264;
      }

      sub_1B1CDEC18(v138, &qword_1EB775228, &qword_1B1D88D60);
      v91 = v289;
    }

    else
    {
      v143 = v138;
      v144 = v283;
      sub_1B1D64DB8(v143, v283);
      if (v141(v140 + v137, 1, v11) == 1)
      {
        goto LABEL_263;
      }

      v145 = v269;
      (*v268)(v269, v140 + v137, v11);
      sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v146 = sub_1B1D7BE0C();
      v147 = v140;
      v148 = *v270;
      v149 = v145;
      v60 = v292;
      (*v270)(v149, v11);
      v148(v144, v11);
      v80 = v280;
      sub_1B1CDEC18(v147, &qword_1EB775228, &qword_1B1D88D60);
      v91 = v289;
      if ((v146 & 1) == 0)
      {
        goto LABEL_269;
      }
    }

    v150 = v294[6];
    v151 = *(v290 + 48);
    v152 = v286;
    sub_1B1D64DB8(v91 + v150, v286);
    v153 = v60 + v150;
    v140 = v152;
    sub_1B1D64DB8(v153, v152 + v151);
    v154 = v272;
    if (v272(v152, 1, v11) == 1)
    {
      if (v154(v152 + v151, 1, v11) != 1)
      {
        goto LABEL_264;
      }

      sub_1B1CDEC18(v152, &qword_1EB775228, &qword_1B1D88D60);
      v91 = v289;
    }

    else
    {
      v155 = v152;
      v144 = v281;
      sub_1B1D64DB8(v155, v281);
      if (v154(v140 + v151, 1, v11) == 1)
      {
LABEL_263:
        (*v270)(v144, v11);
LABEL_264:
        sub_1B1CDEC18(v140, &qword_1EB775FB8, &unk_1B1D93650);
        goto LABEL_268;
      }

      v156 = v269;
      (*v268)(v269, v140 + v151, v11);
      sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v157 = sub_1B1D7BE0C();
      v158 = v140;
      v159 = *v270;
      v160 = v156;
      v60 = v292;
      (*v270)(v160, v11);
      v159(v144, v11);
      v80 = v280;
      sub_1B1CDEC18(v158, &qword_1EB775228, &qword_1B1D88D60);
      v91 = v289;
      if ((v157 & 1) == 0)
      {
        goto LABEL_269;
      }
    }

    v161 = v294[7];
    v162 = *(v91 + v161);
    v163 = *(v91 + v161 + 8);
    v164 = (v60 + v161);
    if (v162 != *v164 || v163 != v164[1])
    {
      v165 = sub_1B1D7C50C();
      v91 = v289;
      if ((v165 & 1) == 0)
      {
        goto LABEL_269;
      }
    }

    v166 = v294[8];
    v167 = (v91 + v166);
    v168 = *(v91 + v166 + 8);
    v169 = (v60 + v166);
    v170 = v169[1];
    if (v168)
    {
      if (!v170)
      {
        goto LABEL_269;
      }

      if (*v167 != *v169 || v168 != v170)
      {
        v171 = sub_1B1D7C50C();
        v91 = v289;
        if ((v171 & 1) == 0)
        {
          goto LABEL_269;
        }
      }
    }

    else if (v170)
    {
      goto LABEL_269;
    }

    v172 = sub_1B1D32980(*(v91 + v294[9]), *(v60 + v294[9]));
    v91 = v289;
    if ((v172 & 1) == 0)
    {
      goto LABEL_269;
    }

    v173 = v294[10];
    v174 = *(v289 + v173);
    v175 = *(v60 + v173);
    v176 = *(v174 + 16);
    if (v176 != *(v175 + 16))
    {
      goto LABEL_269;
    }

    if (!v176)
    {
      v79 = v273;
      v82 = v264;
      v5 = v265;
      goto LABEL_253;
    }

    v79 = v273;
    v82 = v264;
    v5 = v265;
    if (v174 != v175)
    {
      break;
    }

LABEL_253:
    v85 = v259 + 1;
    sub_1B1D6D46C(v60, type metadata accessor for ASImportableCollection);
    sub_1B1D6D46C(v289, type metadata accessor for ASImportableCollection);
    v81 = v253;
    v84 = v267;
    v87 = v251;
    if (v85 == v252)
    {
      goto LABEL_254;
    }
  }

  v177 = 0;
  v255 = v174 + v257;
  v256 = v175;
  v254 = v175 + v257;
  v249 = v176;
  v250 = v174;
  while (1)
  {
    if (v177 >= *(v174 + 16))
    {
      goto LABEL_276;
    }

    v178 = v177;
    v179 = v177 * v282;
    v180 = v288;
    sub_1B1D6D404(v255 + v177 * v282, v288, type metadata accessor for ASImportableCollection);
    if (v177 >= *(v256 + 16))
    {
      goto LABEL_277;
    }

    v181 = v254 + v179;
    v182 = v293;
    sub_1B1D6D404(v181, v293, type metadata accessor for ASImportableCollection);
    v183 = *v180;
    v184 = v180[1];
    v185 = *v182;
    v186 = v182[1];
    v187 = v184 >> 62;
    v188 = v186 >> 62;
    v258 = v178;
    if (v184 >> 62 == 3)
    {
      v189 = 0;
      if (!v183 && v184 == 0xC000000000000000 && v186 >> 62 == 3)
      {
        v189 = 0;
        if (!v185 && v186 == 0xC000000000000000)
        {
          goto LABEL_222;
        }
      }
    }

    else if (v187 > 1)
    {
      if (v187 == 2)
      {
        v191 = *(v183 + 16);
        v190 = *(v183 + 24);
        v64 = __OFSUB__(v190, v191);
        v189 = v190 - v191;
        if (v64)
        {
          goto LABEL_294;
        }
      }

      else
      {
        v189 = 0;
      }
    }

    else if (v187)
    {
      LODWORD(v189) = HIDWORD(v183) - v183;
      if (__OFSUB__(HIDWORD(v183), v183))
      {
        goto LABEL_295;
      }

      v189 = v189;
    }

    else
    {
      v189 = BYTE6(v184);
    }

    if (v188 > 1)
    {
      if (v188 != 2)
      {
        if (v189)
        {
          goto LABEL_267;
        }

        goto LABEL_222;
      }

      v194 = *(v185 + 16);
      v193 = *(v185 + 24);
      v64 = __OFSUB__(v193, v194);
      v192 = v193 - v194;
      if (v64)
      {
        goto LABEL_285;
      }
    }

    else if (v188)
    {
      LODWORD(v192) = HIDWORD(v185) - v185;
      if (__OFSUB__(HIDWORD(v185), v185))
      {
        goto LABEL_284;
      }

      v192 = v192;
    }

    else
    {
      v192 = BYTE6(v186);
    }

    if (v189 != v192)
    {
      goto LABEL_267;
    }

    if (v189 < 1)
    {
      goto LABEL_222;
    }

    if (v187 <= 1)
    {
      if (!v187)
      {
        *v296 = v183;
        *&v296[8] = v184;
        v296[10] = BYTE2(v184);
        v296[11] = BYTE3(v184);
        v296[12] = BYTE4(v184);
        v296[13] = BYTE5(v184);
        sub_1B1CE111C(v185, v186);
        goto LABEL_221;
      }

      v199 = v183;
      if (v183 >> 32 < v183)
      {
        goto LABEL_296;
      }

      sub_1B1CE111C(v185, v186);
      v197 = sub_1B1D7B34C();
      if (v197)
      {
        v200 = sub_1B1D7B36C();
        if (__OFSUB__(v199, v200))
        {
          goto LABEL_301;
        }

        v197 += v199 - v200;
      }

LABEL_218:
      sub_1B1D7B35C();
      v201 = v197;
      v202 = v271;
      sub_1B1D036A8(v201, v185, v186, v296);
      v271 = v202;
      sub_1B1CDEFDC(v185, v186);
      if ((v296[0] & 1) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_222;
    }

    if (v187 == 2)
    {
      v195 = *(v183 + 16);
      v196 = *(v183 + 24);
      sub_1B1CE111C(v185, v186);
      v197 = sub_1B1D7B34C();
      if (v197)
      {
        v198 = sub_1B1D7B36C();
        if (__OFSUB__(v195, v198))
        {
          goto LABEL_300;
        }

        v197 += v195 - v198;
      }

      if (__OFSUB__(v196, v195))
      {
        goto LABEL_297;
      }

      goto LABEL_218;
    }

    *&v296[6] = 0;
    *v296 = 0;
    sub_1B1CE111C(v185, v186);
LABEL_221:
    v203 = v271;
    sub_1B1D036A8(v296, v185, v186, v295);
    v271 = v203;
    sub_1B1CDEFDC(v185, v186);
    if ((v295[0] & 1) == 0)
    {
      goto LABEL_267;
    }

LABEL_222:
    v204 = v294[5];
    v205 = *(v290 + 48);
    v206 = v285;
    sub_1B1D64DB8(v288 + v204, v285);
    sub_1B1D64DB8(v293 + v204, v206 + v205);
    v207 = v275;
    v208 = v272;
    if (v272(v206, 1, v275) == 1)
    {
      if (v208(v206 + v205, 1, v207) != 1)
      {
        goto LABEL_266;
      }

      sub_1B1CDEC18(v206, &qword_1EB775228, &qword_1B1D88D60);
    }

    else
    {
      v209 = v279;
      sub_1B1D64DB8(v206, v279);
      if (v208(v206 + v205, 1, v207) == 1)
      {
        break;
      }

      v210 = v269;
      (*v268)(v269, v206 + v205, v207);
      sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v211 = sub_1B1D7BE0C();
      v212 = *v270;
      (*v270)(v210, v207);
      v212(v209, v207);
      sub_1B1CDEC18(v206, &qword_1EB775228, &qword_1B1D88D60);
      if ((v211 & 1) == 0)
      {
        goto LABEL_267;
      }
    }

    v213 = v294[6];
    v214 = *(v290 + 48);
    v206 = v284;
    sub_1B1D64DB8(v288 + v213, v284);
    sub_1B1D64DB8(v293 + v213, v206 + v214);
    v207 = v275;
    v215 = v272;
    if (v272(v206, 1, v275) == 1)
    {
      if (v215(v206 + v214, 1, v207) != 1)
      {
        goto LABEL_266;
      }

      sub_1B1CDEC18(v206, &qword_1EB775228, &qword_1B1D88D60);
      goto LABEL_232;
    }

    v209 = v278;
    sub_1B1D64DB8(v206, v278);
    if (v215(v206 + v214, 1, v207) == 1)
    {
      break;
    }

    v216 = v269;
    (*v268)(v269, v206 + v214, v207);
    sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v217 = sub_1B1D7BE0C();
    v218 = *v270;
    (*v270)(v216, v207);
    v218(v209, v207);
    sub_1B1CDEC18(v206, &qword_1EB775228, &qword_1B1D88D60);
    if ((v217 & 1) == 0)
    {
      goto LABEL_267;
    }

LABEL_232:
    v219 = v294[7];
    v220 = (v288 + v219);
    v221 = *(v288 + v219 + 8);
    v222 = (v293 + v219);
    if ((*v220 != *v222 || v221 != v222[1]) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_267;
    }

    v223 = v294[8];
    v224 = (v288 + v223);
    v225 = *(v288 + v223 + 8);
    v226 = (v293 + v223);
    v227 = v226[1];
    if (v225)
    {
      if (!v227 || (*v224 != *v226 || v225 != v227) && (sub_1B1D7C50C() & 1) == 0)
      {
        goto LABEL_267;
      }
    }

    else if (v227)
    {
      goto LABEL_267;
    }

    if ((sub_1B1D32980(*(v288 + v294[9]), *(v293 + v294[9])) & 1) == 0)
    {
      goto LABEL_267;
    }

    v228 = v294[10];
    v229 = *(v288 + v228);
    v230 = *(v293 + v228);
    v231 = *(v230 + 16);
    v277 = *(v229 + 16);
    if (v277 != v231)
    {
      goto LABEL_267;
    }

    if (v277 && v229 != v230)
    {
      v232 = 0;
      v233 = v229 + v257;
      v234 = v230 + v257;
      v274 = v230;
      while (v232 < *(v229 + 16))
      {
        v235 = v276;
        sub_1B1D6D404(v233, v276, type metadata accessor for ASImportableCollection);
        if (v232 >= *(v230 + 16))
        {
          goto LABEL_273;
        }

        v236 = v229;
        v237 = v10;
        v238 = v291;
        sub_1B1D6D404(v234, v291, type metadata accessor for ASImportableCollection);
        v239 = _s22AuthenticationServices22ASImportableCollectionV2eeoiySbAC_ACtFZ_0(v235, v238);
        v240 = v238;
        v10 = v237;
        v229 = v236;
        v230 = v274;
        sub_1B1D6D46C(v240, type metadata accessor for ASImportableCollection);
        sub_1B1D6D46C(v235, type metadata accessor for ASImportableCollection);
        if ((v239 & 1) == 0)
        {
          goto LABEL_267;
        }

        ++v232;
        v234 += v282;
        v233 += v282;
        if (v277 == v232)
        {
          goto LABEL_171;
        }
      }

      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
      goto LABEL_275;
    }

LABEL_171:
    v177 = v258 + 1;
    sub_1B1D6D46C(v293, type metadata accessor for ASImportableCollection);
    sub_1B1D6D46C(v288, type metadata accessor for ASImportableCollection);
    v174 = v250;
    v82 = v264;
    v5 = v265;
    v11 = v275;
    v79 = v273;
    v60 = v292;
    v80 = v280;
    if (v177 == v249)
    {
      goto LABEL_253;
    }
  }

  (*v270)(v209, v207);
LABEL_266:
  sub_1B1CDEC18(v206, &qword_1EB775FB8, &unk_1B1D93650);
LABEL_267:
  sub_1B1D6D46C(v293, type metadata accessor for ASImportableCollection);
  sub_1B1D6D46C(v288, type metadata accessor for ASImportableCollection);
  v60 = v292;
LABEL_268:
  v91 = v289;
LABEL_269:
  sub_1B1D6D46C(v60, type metadata accessor for ASImportableCollection);
  sub_1B1D6D46C(v91, type metadata accessor for ASImportableCollection);
LABEL_270:
  sub_1B1D6D504(&v302);
  sub_1B1D6D504(&v297);
  return 0;
}

uint64_t sub_1B1D322CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = a2 + 40;
  for (i = result + 40; ; i += 56)
  {
    v5 = *(i + 8);
    v6 = *(i + 24);
    v24 = *(i + 32);
    v29 = *(i + 40);
    v30 = *(i - 8);
    v7 = *v3;
    v27 = *(v3 - 8);
    v26 = *(v3 + 8);
    v8 = *(v3 + 16);
    v31 = *(v3 + 24);
    v32 = *i;
    v28 = *(v3 + 40);
    v23 = *(v3 + 32);
    v25 = *(i + 16);
    if (*i >> 60 == 15)
    {
      if (v7 >> 60 != 15)
      {
        goto LABEL_56;
      }

      sub_1B1C91B94(v30, v32);

      sub_1B1C91B94(v27, v7);

      sub_1B1C91B94(v30, v32);
      sub_1B1C91B94(v27, v7);
      goto LABEL_41;
    }

    if (v7 >> 60 == 15)
    {
LABEL_56:
      sub_1B1C91B94(v30, v32);
      sub_1B1C91B94(v27, v7);
      sub_1B1C91AE4(v30, v32);
      sub_1B1C91AE4(v27, v7);
      return 0;
    }

    v9 = v32 >> 62;
    v10 = v7 >> 62;
    if (v32 >> 62 == 3)
    {
      v11 = 0;
      if (!v30 && v32 == 0xC000000000000000 && v7 >> 62 == 3)
      {
        v11 = 0;
        if (!v27 && v7 == 0xC000000000000000)
        {
          sub_1B1C91B94(0, 0xC000000000000000);

          sub_1B1C91B94(0, 0xC000000000000000);

          sub_1B1C91B94(0, 0xC000000000000000);
          sub_1B1C91B94(0, 0xC000000000000000);
          v12 = 0;
          v13 = 0xC000000000000000;
          goto LABEL_40;
        }
      }
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        LODWORD(v11) = HIDWORD(v30) - v30;
        if (__OFSUB__(HIDWORD(v30), v30))
        {
          goto LABEL_65;
        }

        v11 = v11;
      }

      else
      {
        v15 = *(v30 + 16);
        v14 = *(v30 + 24);
        v16 = __OFSUB__(v14, v15);
        v11 = v14 - v15;
        if (v16)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
      v11 = BYTE6(v32);
    }

    v22 = *(i + 8);
    if (v10 <= 1)
    {
      break;
    }

    if (v10 != 2)
    {
      if (v11)
      {
LABEL_58:
        sub_1B1C91B94(v30, v32);

        sub_1B1C91B94(v27, v7);

        sub_1B1C91B94(v30, v32);
        sub_1B1C91B94(v27, v7);
        sub_1B1C91AE4(v27, v7);
        sub_1B1C91AE4(v30, v32);
LABEL_59:
        sub_1B1C91AE4(v27, v7);

        sub_1B1C91AE4(v30, v32);

LABEL_61:

        return 0;
      }

LABEL_39:
      sub_1B1C91B94(v30, v32);

      sub_1B1C91B94(v27, v7);

      sub_1B1C91B94(v30, v32);
      sub_1B1C91B94(v27, v7);
      v12 = v27;
      v13 = v7;
LABEL_40:
      sub_1B1C91AE4(v12, v13);
LABEL_41:
      sub_1B1C91AE4(v30, v32);
      goto LABEL_42;
    }

    v19 = *(v27 + 16);
    v18 = *(v27 + 24);
    v16 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (v16)
    {
      goto LABEL_64;
    }

LABEL_34:
    if (v11 != v17)
    {
      goto LABEL_58;
    }

    if (v11 < 1)
    {
      goto LABEL_39;
    }

    sub_1B1C91B94(v30, v32);

    sub_1B1C91B94(v27, v7);

    sub_1B1C91B94(v30, v32);
    sub_1B1C91B94(v27, v7);
    sub_1B1C91B94(v27, v7);
    v20 = sub_1B1D038D8(v30, v32, v27, v7);
    sub_1B1C91AE4(v27, v7);
    sub_1B1C91AE4(v30, v32);
    if ((v20 & 1) == 0)
    {
      goto LABEL_59;
    }

    v5 = v22;
LABEL_42:
    if ((sub_1B1D2CCBC(v5, v26) & 1) == 0 || (v25 != v8 || v6 != v31) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_59;
    }

    if (!v29)
    {
      sub_1B1C91AE4(v27, v7);
      if (v28)
      {

        sub_1B1C91AE4(v30, v32);

        goto LABEL_61;
      }

      sub_1B1C91AE4(v30, v32);
      goto LABEL_6;
    }

    if (!v28)
    {
      goto LABEL_59;
    }

    if (v24 == v23 && v29 == v28)
    {
      sub_1B1C91AE4(v27, v7);

      sub_1B1C91AE4(v30, v32);
LABEL_6:

      goto LABEL_7;
    }

    v21 = sub_1B1D7C50C();
    sub_1B1C91AE4(v27, v7);

    sub_1B1C91AE4(v30, v32);

    if ((v21 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v3 += 56;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!v10)
  {
    v17 = BYTE6(v7);
    goto LABEL_34;
  }

  LODWORD(v17) = HIDWORD(v27) - v27;
  if (!__OFSUB__(HIDWORD(v27), v27))
  {
    v17 = v17;
    goto LABEL_34;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1B1D32980(uint64_t a1, uint64_t a2)
{
  v75[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 56);
  for (i = (a1 + 56); ; i += 4)
  {
    v6 = *(i - 3);
    v7 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v11 = *(v3 - 3);
    v10 = *(v3 - 2);
    v13 = *(v3 - 1);
    v12 = *v3;
    v14 = v7 >> 62;
    v15 = v10 >> 62;
    v73 = v6;
    if (v7 >> 62 == 3)
    {
      if (v6)
      {
        v16 = 0;
      }

      else
      {
        v16 = v7 == 0xC000000000000000;
      }

      v17 = 0;
      v18 = v16 && v10 >> 62 == 3;
      if (v18 && !v11 && v10 == 0xC000000000000000)
      {
        sub_1B1CE111C(0, 0xC000000000000000);
        sub_1B1C91B94(v9, v8);
        v19 = 0;
        v20 = 0xC000000000000000;
        goto LABEL_43;
      }

LABEL_30:
      if (v15 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v26 = *(v6 + 16);
        v25 = *(v6 + 24);
        v23 = __OFSUB__(v25, v26);
        v17 = v25 - v26;
        if (v23)
        {
          goto LABEL_125;
        }

        goto LABEL_30;
      }

      v17 = 0;
      if (v15 <= 1)
      {
        goto LABEL_31;
      }
    }

    else if (v14)
    {
      LODWORD(v17) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_126;
      }

      v17 = v17;
      if (v15 <= 1)
      {
LABEL_31:
        if (v15)
        {
          LODWORD(v24) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
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
          }

          v24 = v24;
        }

        else
        {
          v24 = BYTE6(v10);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v17 = BYTE6(v7);
      if (v15 <= 1)
      {
        goto LABEL_31;
      }
    }

LABEL_24:
    if (v15 != 2)
    {
      if (v17)
      {
        return 0;
      }

LABEL_42:
      sub_1B1CE111C(v6, v7);
      sub_1B1C91B94(v9, v8);
      v19 = v11;
      v20 = v10;
LABEL_43:
      sub_1B1CE111C(v19, v20);
      sub_1B1C91B94(v13, v12);
      goto LABEL_65;
    }

    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
      goto LABEL_124;
    }

LABEL_37:
    if (v17 != v24)
    {
      return 0;
    }

    if (v17 < 1)
    {
      goto LABEL_42;
    }

    v69 = *i;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        memset(v75, 0, 14);
        sub_1B1CE111C(v6, v7);
        sub_1B1C91B94(v9, v8);
        sub_1B1CE111C(v11, v10);
        sub_1B1C91B94(v13, v12);
        v30 = v11;
        v31 = v10;
        v28 = v13;
        v29 = v12;
LABEL_60:
        sub_1B1D036A8(v75, v30, v31, &v74);
        v12 = v29;
        v13 = v28;
        v8 = v69;
        if ((v74 & 1) == 0)
        {
          goto LABEL_121;
        }

        goto LABEL_65;
      }

      v68 = *v3;
      v32 = *(v3 - 2);
      v33 = *(v6 + 16);
      v62 = *(v6 + 24);
      sub_1B1CE111C(v6, v7);
      sub_1B1C91B94(v9, v8);
      v64 = v11;
      v71 = v32;
      sub_1B1CE111C(v11, v32);
      sub_1B1C91B94(v13, v68);
      v34 = sub_1B1D7B34C();
      if (v34)
      {
        v35 = v7;
        v36 = sub_1B1D7B36C();
        if (__OFSUB__(v33, v36))
        {
          goto LABEL_131;
        }

        v34 += v33 - v36;
      }

      else
      {
        v35 = v7;
      }

      if (__OFSUB__(v62, v33))
      {
        goto LABEL_130;
      }

      v7 = v35;
      sub_1B1D7B35C();
      v41 = v34;
      v11 = v64;
      v10 = v71;
      sub_1B1D036A8(v41, v64, v71, v75);
      v12 = v68;
      if ((v75[0] & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v67 = *v3;
      v70 = *(v3 - 2);
      if (!v14)
      {
        v75[0] = v6;
        LOWORD(v75[1]) = v7;
        BYTE2(v75[1]) = BYTE2(v7);
        BYTE3(v75[1]) = BYTE3(v7);
        BYTE4(v75[1]) = BYTE4(v7);
        BYTE5(v75[1]) = BYTE5(v7);
        sub_1B1CE111C(v6, v7);
        sub_1B1C91B94(v9, v8);
        sub_1B1CE111C(v11, v10);
        v27 = v13;
        v28 = v13;
        v29 = v12;
        sub_1B1C91B94(v27, v12);
        v30 = v11;
        v31 = v10;
        goto LABEL_60;
      }

      v37 = v6;
      if (v6 >> 32 < v6)
      {
        goto LABEL_129;
      }

      sub_1B1CE111C(v6, v7);
      sub_1B1C91B94(v9, v8);
      v65 = v11;
      sub_1B1CE111C(v11, v70);
      sub_1B1C91B94(v13, v67);
      v38 = sub_1B1D7B34C();
      if (v38)
      {
        v39 = sub_1B1D7B36C();
        if (__OFSUB__(v37, v39))
        {
          goto LABEL_132;
        }

        v38 += v37 - v39;
      }

      sub_1B1D7B35C();
      v40 = v38;
      v11 = v65;
      v10 = v70;
      sub_1B1D036A8(v40, v65, v70, v75);
      v12 = v67;
      v8 = v69;
      if ((v75[0] & 1) == 0)
      {
        goto LABEL_121;
      }
    }

LABEL_65:
    if (v8 >> 60 == 15)
    {
      if (v12 >> 60 != 15)
      {
        goto LABEL_118;
      }

      sub_1B1C91B94(v9, v8);
      sub_1B1C91B94(v13, v12);
      goto LABEL_98;
    }

    if (v12 >> 60 == 15)
    {
LABEL_118:
      sub_1B1C91B94(v9, v8);
      sub_1B1C91B94(v13, v12);
      sub_1B1C91AE4(v9, v8);
      v60 = v13;
      v61 = v12;
      goto LABEL_120;
    }

    v42 = v8 >> 62;
    v43 = v12 >> 62;
    if (v8 >> 62 != 3)
    {
      break;
    }

    v44 = 0;
    if (v9)
    {
      goto LABEL_85;
    }

    if (v8 != 0xC000000000000000)
    {
      goto LABEL_85;
    }

    if (v12 >> 62 != 3)
    {
      goto LABEL_85;
    }

    v44 = 0;
    if (v13 || v12 != 0xC000000000000000)
    {
      goto LABEL_85;
    }

    sub_1B1C91B94(0, 0xC000000000000000);
    sub_1B1C91B94(0, 0xC000000000000000);
    sub_1B1C91AE4(0, 0xC000000000000000);
    sub_1B1C91AE4(0, 0xC000000000000000);
    sub_1B1CDEFDC(v11, v10);
    sub_1B1C91AE4(0, 0xC000000000000000);
    sub_1B1CDEFDC(v73, v7);
    v45 = 0;
    v46 = 0xC000000000000000;
LABEL_99:
    sub_1B1C91AE4(v45, v46);
LABEL_8:
    v3 += 4;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v51 = *(v9 + 16);
      v50 = *(v9 + 24);
      v23 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      if (v23)
      {
        goto LABEL_134;
      }

LABEL_85:
      if (v43 <= 1)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v44 = 0;
      if (v43 <= 1)
      {
        goto LABEL_86;
      }
    }

LABEL_79:
    if (v43 == 2)
    {
      v48 = *(v13 + 16);
      v47 = *(v13 + 24);
      v23 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v23)
      {
        goto LABEL_128;
      }

      goto LABEL_92;
    }

    if (v44)
    {
      goto LABEL_119;
    }

LABEL_97:
    sub_1B1C91B94(v9, v8);
    sub_1B1C91B94(v13, v12);
    sub_1B1C91AE4(v13, v12);
LABEL_98:
    sub_1B1C91AE4(v9, v8);
    sub_1B1CDEFDC(v11, v10);
    sub_1B1C91AE4(v13, v12);
    sub_1B1CDEFDC(v73, v7);
    v45 = v9;
    v46 = v8;
    goto LABEL_99;
  }

  if (v42)
  {
    LODWORD(v44) = HIDWORD(v9) - v9;
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      goto LABEL_133;
    }

    v44 = v44;
    if (v43 <= 1)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  v44 = BYTE6(v8);
  if (v43 > 1)
  {
    goto LABEL_79;
  }

LABEL_86:
  if (v43)
  {
    LODWORD(v49) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_127;
    }

    v49 = v49;
  }

  else
  {
    v49 = BYTE6(v12);
  }

LABEL_92:
  if (v44 == v49)
  {
    if (v44 >= 1)
    {
      v72 = v10;
      if (v42 > 1)
      {
        if (v42 != 2)
        {
          memset(v75, 0, 14);
          sub_1B1C91B94(v9, v8);
          sub_1B1C91B94(v13, v12);
          goto LABEL_6;
        }

        v66 = v11;
        v52 = v9;
        v53 = *(v9 + 16);
        v54 = *(v9 + 24);
        v63 = v52;
        sub_1B1C91B94(v52, v8);
        sub_1B1C91B94(v13, v12);
        v55 = sub_1B1D7B34C();
        if (v55)
        {
          v56 = sub_1B1D7B36C();
          if (__OFSUB__(v53, v56))
          {
            goto LABEL_137;
          }

          v55 += v53 - v56;
        }

        if (__OFSUB__(v54, v53))
        {
          goto LABEL_136;
        }

        sub_1B1D7B35C();
        sub_1B1D036A8(v55, v13, v12, v75);
        sub_1B1C91AE4(v13, v12);
        v5 = v75[0];
        v9 = v63;
      }

      else
      {
        if (!v42)
        {
          v75[0] = v9;
          LOWORD(v75[1]) = v8;
          BYTE2(v75[1]) = BYTE2(v8);
          BYTE3(v75[1]) = BYTE3(v8);
          BYTE4(v75[1]) = BYTE4(v8);
          BYTE5(v75[1]) = BYTE5(v8);
          sub_1B1C91B94(v9, v8);
          sub_1B1C91B94(v13, v12);
LABEL_6:
          sub_1B1D036A8(v75, v13, v12, &v74);
          sub_1B1C91AE4(v13, v12);
          v5 = v74;
LABEL_7:
          sub_1B1C91AE4(v9, v8);
          sub_1B1CDEFDC(v11, v72);
          sub_1B1C91AE4(v13, v12);
          sub_1B1CDEFDC(v73, v7);
          sub_1B1C91AE4(v9, v8);
          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_8;
        }

        v66 = v11;
        if (v9 >> 32 < v9)
        {
          goto LABEL_135;
        }

        sub_1B1C91B94(v9, v8);
        sub_1B1C91B94(v13, v12);
        v57 = sub_1B1D7B34C();
        if (v57)
        {
          v58 = sub_1B1D7B36C();
          if (__OFSUB__(v9, v58))
          {
            goto LABEL_138;
          }

          v57 += v9 - v58;
        }

        sub_1B1D7B35C();
        sub_1B1D036A8(v57, v13, v12, v75);
        sub_1B1C91AE4(v13, v12);
        v5 = v75[0];
      }

      v11 = v66;
      goto LABEL_7;
    }

    goto LABEL_97;
  }

LABEL_119:
  sub_1B1C91B94(v9, v8);
  sub_1B1C91B94(v13, v12);
  sub_1B1C91AE4(v13, v12);
  v60 = v9;
  v61 = v8;
LABEL_120:
  sub_1B1C91AE4(v60, v61);
LABEL_121:
  sub_1B1CDEFDC(v11, v10);
  sub_1B1C91AE4(v13, v12);
  sub_1B1CDEFDC(v73, v7);
  sub_1B1C91AE4(v9, v8);
  return 0;
}

uint64_t sub_1B1D3340C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASImportableCollection(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1B1D6D404(v13, v10, type metadata accessor for ASImportableCollection);
        sub_1B1D6D404(v14, v7, type metadata accessor for ASImportableCollection);
        v16 = _s22AuthenticationServices22ASImportableCollectionV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1B1D6D46C(v7, type metadata accessor for ASImportableCollection);
        sub_1B1D6D46C(v10, type metadata accessor for ASImportableCollection);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1B1D335B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASImportableItem(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1B1D6D404(v13, v10, type metadata accessor for ASImportableItem);
        sub_1B1D6D404(v14, v7, type metadata accessor for ASImportableItem);
        v16 = _s22AuthenticationServices16ASImportableItemV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1B1D6D46C(v7, type metadata accessor for ASImportableItem);
        sub_1B1D6D46C(v10, type metadata accessor for ASImportableItem);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1B1D3375C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1B1D7C50C() & 1) == 0)
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

uint64_t sub_1B1D337EC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v23 = v5;
  v24 = v6;
  *&v22[664] = v8;
  *&v22[672] = v2;
  *&v22[648] = v3;
  *&v22[656] = v4;
  v9 = (MEMORY[0x1EEE9AC00](a1) + 32);
  v11 = (v10 + 32);
  for (i = v12 - 1; ; --i)
  {
    memcpy(__dst, v9, 0x2A1uLL);
    memcpy(v18, v9, 0x2A1uLL);
    memcpy(v20, v11, 0x2A1uLL);
    memcpy(__src, v11, sizeof(__src));
    sub_1B1D65C20(__dst, v16);
    sub_1B1D65C20(v20, v16);
    v14 = _s22AuthenticationServices22ASImportableCredentialO2eeoiySbAC_ACtFZ_0(v18);
    memcpy(v21, __src, 0x2A1uLL);
    sub_1B1D65C58(v21);
    memcpy(v22, v18, 0x2A1uLL);
    sub_1B1D65C58(v22);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v11 += 680;
    v9 += 680;
  }

  return 1;
}

uint64_t ASExportedCredentialData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775740, &qword_1B1D88D78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D64034();
  sub_1B1D7C63C();
  v11 = *(v3 + *(type metadata accessor for ASExportedCredentialData(0) + 32));
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775750, &qword_1B1D88D80);
  sub_1B1D64088();
  sub_1B1D7C4CC();
  if (!v2)
  {
    v10[6] = 1;
    sub_1B1D64160();
    sub_1B1D7C4CC();
    v10[5] = 2;
    sub_1B1D7C49C();
    v10[4] = 3;
    sub_1B1D7C49C();
    v10[3] = 4;
    sub_1B1D7B53C();
    sub_1B1D641B4(&qword_1EB775770, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B1D7C4CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ASExportedCredentialData.hash(into:)(uint64_t a1)
{
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  v3 = type metadata accessor for ASExportedCredentialData(0);
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B1D7BDEC();
  v4 = *(v1 + *(v3 + 32));

  return sub_1B1D57150(a1, v4);
}

uint64_t ASExportedCredentialData.hashValue.getter()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  v1 = type metadata accessor for ASExportedCredentialData(0);
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B1D7BDEC();
  sub_1B1D57150(v3, *(v0 + *(v1 + 32)));
  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1B1D7B53C();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775780, &qword_1B1D88D88);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ASExportedCredentialData(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B1D64034();
  v13 = v24;
  sub_1B1D7C62C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  v24 = v5;
  v14 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775750, &qword_1B1D88D80);
  v30 = 0;
  sub_1B1D641FC();
  sub_1B1D7C43C();
  *(v11 + *(v9 + 32)) = v31;
  v29 = 1;
  sub_1B1D642D4();
  sub_1B1D7C43C();
  v28 = 2;
  *v11 = sub_1B1D7C40C();
  v11[1] = v15;
  v27 = 3;
  v11[2] = sub_1B1D7C40C();
  v11[3] = v16;
  v26 = 4;
  sub_1B1D641B4(&qword_1EB7757A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v17 = v24;
  sub_1B1D7C43C();
  (*(v14 + 8))(v8, v23);
  (*(v20 + 32))(v11 + *(v9 + 28), v17, v3);
  sub_1B1D6D404(v11, v21, type metadata accessor for ASExportedCredentialData);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return sub_1B1D6D46C(v11, type metadata accessor for ASExportedCredentialData);
}

uint64_t sub_1B1D341F4(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B1D7BDEC();
  sub_1B1D57150(v4, *(v1 + *(a1 + 32)));
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D342D0(uint64_t a1, uint64_t a2)
{
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B1D7BDEC();
  v5 = *(v2 + *(a2 + 32));

  return sub_1B1D57150(a1, v5);
}

uint64_t sub_1B1D343A4(uint64_t a1, uint64_t a2)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B1D7BDEC();
  sub_1B1D57150(v5, *(v2 + *(a2 + 32)));
  return sub_1B1D7C61C();
}

void *ASExportedCredentialData.allItems.getter()
{
  result = type metadata accessor for ASExportedCredentialData(0);
  v2 = *(v0 + *(result + 8));
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = (v2 + 104);
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v2 + 16))
  {
    v7 = *v5;
    v8 = *(*v5 + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v6 = sub_1B1D0CABC(isUniquelyReferenced_nonNull_native, v12, 1, v6);
      if (*(v7 + 16))
      {
LABEL_15:
        v13 = (v6[3] >> 1) - v6[2];
        result = type metadata accessor for ASImportableItem(0);
        if (v13 < v8)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v14 = v6[2];
          v15 = __OFADD__(v14, v8);
          v16 = v14 + v8;
          if (v15)
          {
            goto LABEL_25;
          }

          v6[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v4;
    v5 += 10;
    if (v3 == v4)
    {
      return v6;
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
  return result;
}

uint64_t ASImportableAccount.id.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableAccount.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableAccount.userName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ASImportableAccount.userName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableAccount.email.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ASImportableAccount.email.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ASImportableAccount.fullName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ASImportableAccount.fullName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ASImportableAccount.collections.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ASImportableAccount.items.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1B1D34904(uint64_t a1)
{
  sub_1B1D7BE7C();
}

unint64_t sub_1B1D34A08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6BA5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D34A38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEB00000000736E6FLL;
  v6 = 0x697463656C6C6F63;
  if (v2 != 5)
  {
    v6 = 0x736D657469;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D614E6C6C7566;
  if (v2 != 3)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656D616E72657375;
  if (v2 != 1)
  {
    v10 = 0x6C69616D65;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B1D34B04()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x697463656C6C6F63;
  if (v1 != 5)
  {
    v3 = 0x736D657469;
  }

  v4 = 0x656D614E6C6C7566;
  if (v1 != 3)
  {
    v4 = 1852793705;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D616E72657375;
  if (v1 != 1)
  {
    v5 = 0x6C69616D65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B1D34BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6BA5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D34BF4(uint64_t a1)
{
  v2 = sub_1B1D64328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D34C30(uint64_t a1)
{
  v2 = sub_1B1D64328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableAccount.init(id:userName:email:fullName:collections:items:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t ASImportableAccount.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757A8, &unk_1B1D88D90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D64328();
  sub_1B1D7C62C();
  if (!v2)
  {
    LOBYTE(v33) = 0;
    sub_1B1D7C40C();
    v9 = sub_1B1D7B4AC();
    if (v10 >> 60 == 15)
    {
      v11 = sub_1B1D7C2BC();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
      *v13 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v15 = v9;
      v16 = v10;
      LOBYTE(v33) = 1;
      v17 = sub_1B1D7C40C();
      v31 = v18;
      LOBYTE(v33) = 2;
      v28 = sub_1B1D7C40C();
      v29 = v17;
      v30 = v19;
      LOBYTE(v33) = 3;
      v26 = sub_1B1D7C3DC();
      v27 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757C0, &qword_1B1D88DA0);
      v32 = 5;
      sub_1B1D6437C();
      sub_1B1D7C43C();
      v25 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757D8, &qword_1B1D88DA8);
      v32 = 6;
      sub_1B1D64450();
      sub_1B1D7C43C();
      (*(v6 + 8))(v8, v5);
      v21 = v33;
      *a2 = v15;
      a2[1] = v16;
      v22 = v31;
      a2[2] = v29;
      a2[3] = v22;
      v23 = v30;
      a2[4] = v28;
      a2[5] = v23;
      v24 = v27;
      a2[6] = v26;
      a2[7] = v24;
      a2[8] = v25;
      a2[9] = v21;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableAccount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757F0, &qword_1B1D88DB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v19 = v1[3];
  v20 = v7;
  v8 = v1[4];
  v17 = v1[5];
  v18 = v8;
  v9 = v1[6];
  v15 = v1[7];
  v16 = v9;
  v10 = v1[8];
  v13 = v1[9];
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D64328();
  sub_1B1D7C63C();
  sub_1B1D7B4BC();
  LOBYTE(v23) = 0;
  v11 = v21;
  sub_1B1D7C49C();
  if (v11)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    LOBYTE(v23) = 1;
    sub_1B1D7C49C();
    LOBYTE(v23) = 2;
    sub_1B1D7C49C();
    LOBYTE(v23) = 3;
    sub_1B1D7C47C();
    v23 = v14;
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757C0, &qword_1B1D88DA0);
    sub_1B1D64504();
    sub_1B1D7C4CC();
    v23 = v13;
    v22 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757D8, &qword_1B1D88DA8);
    sub_1B1D645B8();
    sub_1B1D7C4CC();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ASImportableAccount.hash(into:)(uint64_t a1)
{
  v3 = v1[7];
  v5 = v1[8];
  v4 = v1[9];
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v3)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D57B28(a1, v5);

  return sub_1B1D572B4(a1, v4);
}

uint64_t ASImportableAccount.hashValue.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[9];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v1)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D57B28(v5, v2);
  sub_1B1D572B4(v5, v4);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D355D8(uint64_t a1)
{
  v3 = v1[7];
  v5 = v1[8];
  v4 = v1[9];
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v3)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D57B28(a1, v5);

  return sub_1B1D572B4(a1, v4);
}

uint64_t sub_1B1D356A4(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v5 = v1[9];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v2)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D57B28(v6, v3);
  sub_1B1D572B4(v6, v5);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCollection.items.getter()
{
  type metadata accessor for ASImportableCollection(0);
}

uint64_t ASImportableCollection.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASImportableCollection(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ASImportableCollection.subcollections.getter()
{
  type metadata accessor for ASImportableCollection(0);
}

uint64_t ASImportableCollection.subcollections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASImportableCollection(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1B1D35B28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6BAA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D35B58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6E6F697461657263;
  v6 = 0xEA00000000007441;
  if (v2 != 6)
  {
    v5 = 0x6465696669646F6DLL;
    v6 = 0xEA00000000007441;
  }

  v7 = 0xE500000000000000;
  v8 = 0x736D657469;
  if (v2 != 4)
  {
    v8 = 0x656C6C6F63627573;
    v7 = 0xEE00736E6F697463;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (v2 != 2)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B1D35C50()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F697461657263;
  if (v1 != 6)
  {
    v3 = 0x6465696669646F6DLL;
  }

  v4 = 0x736D657469;
  if (v1 != 4)
  {
    v4 = 0x656C6C6F63627573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B1D35D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6BAA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D35D78(uint64_t a1)
{
  v2 = sub_1B1D64E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D35DB4(uint64_t a1)
{
  v2 = sub_1B1D64E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCollection.init(id:created:lastModified:title:subtitle:items:subcollections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = type metadata accessor for ASImportableCollection(0);
  v16 = v15[5];
  v17 = sub_1B1D7B53C();
  v18 = *(*(v17 - 8) + 56);
  v18(&a9[v16], 1, 1, v17);
  v19 = v15[6];
  v18(&a9[v19], 1, 1, v17);
  v20 = &a9[v15[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B1D64E28(a3, &a9[v16]);
  result = sub_1B1D64E28(a4, &a9[v19]);
  v22 = &a9[v15[7]];
  *v22 = a5;
  *(v22 + 1) = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  *&a9[v15[9]] = a10;
  *&a9[v15[10]] = a11;
  return result;
}

uint64_t ASImportableCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v50 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775818, &qword_1B1D88DB8);
  v62 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B1D64E98();
  v19 = v63;
  sub_1B1D7C62C();
  if (!v19)
  {
    v59 = v9;
    v60 = v6;
    v63 = v12;
    v20 = v14;
    v21 = v62;
    LOBYTE(v66) = 0;
    sub_1B1D7C40C();
    v22 = sub_1B1D7B4AC();
    if (v23 >> 60 == 15)
    {
      v24 = sub_1B1D7C2BC();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
      *v26 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v21 + 8))(v17, v15);
    }

    else
    {
      v28 = v23;
      v58 = v22;
      v29 = sub_1B1D7B53C();
      LOBYTE(v66) = 6;
      sub_1B1D641B4(&qword_1EB7757A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
      sub_1B1D7C3FC();
      v56 = v20;
      v57 = v28;
      LOBYTE(v66) = 7;
      v30 = v63;
      sub_1B1D7C3FC();
      v31 = v21;
      v32 = v29;
      LOBYTE(v66) = 1;
      v33 = sub_1B1D7C40C();
      v34 = v56;
      v54 = v33;
      v55 = v35;
      LOBYTE(v66) = 2;
      v52 = sub_1B1D7C3DC();
      v53 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775828, &qword_1B1D88DC0);
      v65 = 4;
      sub_1B1D64EEC();
      sub_1B1D7C43C();
      v51 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757C0, &qword_1B1D88DA0);
      v65 = 5;
      sub_1B1D6437C();
      sub_1B1D7C3FC();
      v37 = v66;
      sub_1B1D64DB8(v34, v59);
      sub_1B1D64DB8(v30, v60);
      v38 = MEMORY[0x1E69E7CC0];
      if (v37)
      {
        v38 = v37;
      }

      v50 = v38;
      sub_1B1CDEC18(v30, &qword_1EB775228, &qword_1B1D88D60);
      sub_1B1CDEC18(v34, &qword_1EB775228, &qword_1B1D88D60);
      (*(v31 + 8))(v17, v15);
      v39 = type metadata accessor for ASImportableCollection(0);
      v40 = v39[5];
      v41 = *(*(v32 - 8) + 56);
      v42 = v61;
      v41(v61 + v40, 1, 1, v32);
      v43 = v39[6];
      v41(v42 + v43, 1, 1, v32);
      v44 = (v42 + v39[8]);
      v45 = v57;
      *v42 = v58;
      v42[1] = v45;
      sub_1B1D64E28(v59, v42 + v40);
      sub_1B1D64E28(v60, v42 + v43);
      v46 = (v42 + v39[7]);
      v47 = v55;
      *v46 = v54;
      v46[1] = v47;
      v48 = v53;
      *v44 = v52;
      v44[1] = v48;
      v49 = v50;
      *(v42 + v39[9]) = v51;
      *(v42 + v39[10]) = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v64);
}

uint64_t ASImportableCollection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775840, &qword_1B1D88DC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D64E98();
  sub_1B1D7C63C();
  v9 = type metadata accessor for ASImportableCollection(0);
  LOBYTE(v13) = 6;
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775770, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B1D7C48C();
  if (!v2)
  {
    LOBYTE(v13) = 7;
    sub_1B1D7C48C();
    sub_1B1D7B4BC();
    LOBYTE(v13) = 0;
    sub_1B1D7C49C();

    LOBYTE(v13) = 1;
    sub_1B1D7C49C();
    LOBYTE(v13) = 2;
    sub_1B1D7C47C();
    v13 = *(v3 + *(v9 + 36));
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775828, &qword_1B1D88DC0);
    sub_1B1D64FC4();
    sub_1B1D7C4CC();
    if (*(*(v3 + *(v9 + 40)) + 16))
    {
      v13 = *(v3 + *(v9 + 40));
      v12 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757C0, &qword_1B1D88DA0);
      sub_1B1D64504();
      sub_1B1D7C4CC();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ASImportableCollection.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B1D7B53C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1B1D7B4FC();
  v14 = type metadata accessor for ASImportableCollection(0);
  sub_1B1D64DB8(v2 + v14[5], v13);
  v15 = *(v5 + 48);
  if (v15(v13, 1, v4) == 1)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_1B1D7C5EC();
    sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1B1D7BDEC();
    (*(v5 + 8))(v7, v4);
  }

  sub_1B1D64DB8(v2 + v14[6], v11);
  if (v15(v11, 1, v4) == 1)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1B1D7C5EC();
    sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1B1D7BDEC();
    (*(v5 + 8))(v7, v4);
  }

  sub_1B1D7BE7C();
  if (*(v2 + v14[8] + 8))
  {
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
  }

  else
  {
    sub_1B1D7C5EC();
  }

  sub_1B1D58070(a1, *(v2 + v14[9]));
  return sub_1B1D57B28(a1, *(v2 + v14[10]));
}

uint64_t ASImportableLinkedItem.item.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableLinkedItem.item.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableLinkedItem.account.getter()
{
  v1 = *(v0 + 16);
  sub_1B1C91B94(v1, *(v0 + 24));
  return v1;
}

uint64_t ASImportableLinkedItem.account.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C91AE4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B1D36E4C()
{
  if (*v0)
  {
    return 0x746E756F636361;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_1B1D36E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B1D7C50C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B1D7C50C();

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

uint64_t sub_1B1D36F5C(uint64_t a1)
{
  v2 = sub_1B1D6509C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D36F98(uint64_t a1)
{
  v2 = sub_1B1D6509C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableLinkedItem.init(item:account:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ASImportableLinkedItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775858, &qword_1B1D88DD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6509C();
  sub_1B1D7C62C();
  if (!v2)
  {
    v26 = 0;
    sub_1B1D7C40C();
    v9 = sub_1B1D7B4AC();
    if (v10 >> 60 == 15)
    {
      v11 = sub_1B1D7C2BC();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
      *v13 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
LABEL_4:
      (*(v6 + 8))(v8, v5);
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v15 = v9;
    v16 = v10;
    v25 = 1;
    sub_1B1D7C3DC();
    if (v17)
    {
      v18 = sub_1B1D7B4AC();
      if (v19 >> 60 == 15)
      {
        v24 = sub_1B1D7C2BC();
        swift_allocError();
        v21 = v20;
        v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
        *v21 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v24 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8]);
        swift_willThrow();
        sub_1B1C91AE4(v15, v16);
        goto LABEL_4;
      }

      v22 = v19;
      v24 = v18;
    }

    else
    {
      v24 = 0;
      v22 = 0xF000000000000000;
    }

    (*(v6 + 8))(v8, v5);
    sub_1B1C91AE4(0, 0xF000000000000000);
    *a2 = v15;
    a2[1] = v16;
    a2[2] = v24;
    a2[3] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableLinkedItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775868, &qword_1B1D88DD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 16);
  v11 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6509C();
  sub_1B1D7C63C();
  sub_1B1D7B4BC();
  v14 = 0;
  v8 = v12;
  sub_1B1D7C49C();
  if (v8)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    if (v11 >> 60 != 15)
    {
      sub_1B1D7B4BC();
    }

    v13 = 1;
    sub_1B1D7C47C();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t ASImportableItem.id.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableItem.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_1B1D37690@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_1B1D64DB8(v4, a2);
}

uint64_t sub_1B1D376F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_1B1D64E28(a1, v4);
}

uint64_t sub_1B1D3779C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);

  return sub_1B1D64DB8(v4, a2);
}

uint64_t sub_1B1D37800(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 24);

  return sub_1B1D64E28(a1, v4);
}

uint64_t sub_1B1D378A8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t sub_1B1D37908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1B1D379B4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t sub_1B1D37A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ASImportableItem.favorite.setter(char a1)
{
  result = type metadata accessor for ASImportableItem(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ASImportableItem.scope.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ASImportableItem(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1B1D650F0(v4, v5);
}

uint64_t ASImportableItem.scope.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for ASImportableItem(0) + 40));
  result = sub_1B1D0C93C(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t ASImportableItem.tags.getter()
{
  type metadata accessor for ASImportableItem(0);
}

uint64_t ASImportableItem.tags.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASImportableItem(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ASImportableItem.credentials.getter()
{
  type metadata accessor for ASImportableItem(0);
}

uint64_t ASImportableItem.credentials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASImportableItem(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1D37D90(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6465696669646F6DLL;
    if (a1 != 2)
    {
      v6 = 0x656C746974;
    }

    if (a1)
    {
      v5 = 0x6E6F697461657263;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1936154996;
    v2 = 0x657469726F766166;
    if (a1 != 7)
    {
      v2 = 0x65706F6373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C746974627573;
    if (a1 != 4)
    {
      v3 = 0x69746E6564657263;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B1D37EA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1D6BAF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D37ED0(uint64_t a1)
{
  v2 = sub_1B1D65130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D37F0C(uint64_t a1)
{
  v2 = sub_1B1D65130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableItem.init(id:title:subtitle:favorite:scope:credentials:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a8[1];
  v28 = *a8;
  v13 = type metadata accessor for ASImportableItem(0);
  v14 = v13[5];
  v15 = sub_1B1D7B53C();
  v16 = *(*(v15 - 8) + 56);
  v16(&a9[v14], 1, 1, v15);
  v17 = v13[6];
  v16(&a9[v17], 1, 1, v15);
  v22 = v13[9];
  v18 = &a9[v13[8]];
  v19 = &a9[v13[10]];
  *v19 = 0;
  v19[1] = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B1CDEC18(&a9[v14], &qword_1EB775228, &qword_1B1D88D60);
  v16(&a9[v14], 1, 1, v15);
  sub_1B1CDEC18(&a9[v17], &qword_1EB775228, &qword_1B1D88D60);
  v16(&a9[v17], 1, 1, v15);
  v20 = &a9[v13[7]];
  *v20 = a3;
  *(v20 + 1) = a4;
  *v18 = a5;
  *(v18 + 1) = a6;
  a9[v22] = a7;
  result = sub_1B1D0C93C(*v19, v19[1]);
  *v19 = v28;
  v19[1] = v27;
  *&a9[v13[12]] = a10;
  *&a9[v13[11]] = a11;
  return result;
}

uint64_t ASImportableItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = sub_1B1D7B53C();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v53 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775870, &qword_1B1D88DE0);
  v71 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B1D65130();
  v19 = v72;
  sub_1B1D7C62C();
  if (!v19)
  {
    v67 = v9;
    v72 = v6;
    v20 = v70;
    LOBYTE(v74) = 0;
    sub_1B1D7C40C();
    v21 = v15;
    v22 = sub_1B1D7B4AC();
    if (v23 >> 60 == 15)
    {
      v24 = sub_1B1D7C2BC();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
      *v26 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v71 + 8))(v17, v21);
    }

    else
    {
      v65 = v22;
      v66 = v23;
      LOBYTE(v74) = 1;
      sub_1B1D641B4(&qword_1EB7757A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
      v27 = v14;
      sub_1B1D7C43C();
      LOBYTE(v74) = 2;
      sub_1B1D7C43C();
      LOBYTE(v74) = 3;
      v64 = v21;
      v28 = sub_1B1D7C40C();
      v29 = v69;
      v30 = v28;
      v63 = v31;
      LOBYTE(v74) = 4;
      v60 = sub_1B1D7C3DC();
      v61 = v30;
      v62 = v32;
      LOBYTE(v74) = 7;
      v76 = sub_1B1D7C3EC();
      v77 = 8;
      sub_1B1D65184();
      sub_1B1D7C3FC();
      v58 = v74;
      v59 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775888, &qword_1B1D88DE8);
      v77 = 5;
      sub_1B1D651D8();
      sub_1B1D7C43C();
      v57 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7753F0, &qword_1B1D88DF0);
      v77 = 6;
      sub_1B1D65490(&qword_1EB7758A0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1B1D7C3FC();
      v56 = v74;
      v34 = v29[2];
      v35 = v20;
      v34(v67, v27, v20);
      v34(v72, v12, v20);
      v36 = MEMORY[0x1E69E7CC0];
      if (v56)
      {
        v36 = v56;
      }

      v56 = v36;
      v37 = v29[1];
      v37(v12, v20);
      v37(v27, v20);
      (*(v71 + 8))(v17, v64);
      v38 = type metadata accessor for ASImportableItem(0);
      v39 = v38[5];
      v40 = v29[7];
      v55 = v40;
      v41 = v68;
      v40(v68 + v39, 1, 1, v35);
      v54 = v38[6];
      v40(v41 + v54, 1, 1, v35);
      v42 = v38[8];
      v71 = v38[9];
      v64 = (v41 + v42);
      v43 = (v41 + v38[10]);
      *v43 = 0;
      v43[1] = 0;
      v44 = v66;
      *v41 = v65;
      v41[1] = v44;
      sub_1B1CDEC18(v41 + v39, &qword_1EB775228, &qword_1B1D88D60);
      v69 = v29[4];
      (v69)(v41 + v39, v67, v35);
      v45 = v55;
      v55(v41 + v39, 0, 1, v35);
      v46 = v54;
      sub_1B1CDEC18(v41 + v54, &qword_1EB775228, &qword_1B1D88D60);
      (v69)(v41 + v46, v72, v35);
      v45(v41 + v46, 0, 1, v35);
      v47 = (v41 + v38[7]);
      v49 = v63;
      v48 = v64;
      *v47 = v61;
      v47[1] = v49;
      v50 = v62;
      *v48 = v60;
      v48[1] = v50;
      *(v41 + v71) = v76 & 1;
      sub_1B1D0C93C(*v43, v43[1]);
      v51 = v59;
      *v43 = v58;
      v43[1] = v51;
      v52 = v56;
      *(v41 + v38[12]) = v57;
      *(v41 + v38[11]) = v52;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

uint64_t ASImportableItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7758A8, &qword_1B1D88DF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D65130();
  sub_1B1D7C63C();
  sub_1B1D7B4BC();
  LOBYTE(v13) = 0;
  sub_1B1D7C49C();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v10 = type metadata accessor for ASImportableItem(0);
    LOBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
    sub_1B1D652B0();
    sub_1B1D7C4CC();
    LOBYTE(v13) = 2;
    sub_1B1D7C4CC();
    LOBYTE(v13) = 3;
    sub_1B1D7C49C();
    LOBYTE(v13) = 4;
    sub_1B1D7C47C();
    if (*(v3 + v10[9]) == 1)
    {
      LOBYTE(v13) = 7;
      sub_1B1D7C4AC();
    }

    v11 = (v3 + v10[10]);
    v12 = v11[1];
    v13 = *v11;
    v14 = v12;
    v15 = 8;
    sub_1B1D650F0(v13, v12);
    sub_1B1D65364();
    sub_1B1D7C48C();
    sub_1B1D0C93C(v13, v14);
    v13 = *(v3 + v10[12]);
    v15 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775888, &qword_1B1D88DE8);
    sub_1B1D653B8();
    sub_1B1D7C4CC();
    if (*(*(v3 + v10[11]) + 16))
    {
      v13 = *(v3 + v10[11]);
      v15 = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7753F0, &qword_1B1D88DF0);
      sub_1B1D65490(&qword_1EB7758D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      sub_1B1D7C4CC();
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t ASImportableItem.hash(into:)(uint64_t a1)
{
  v3 = sub_1B1D7B53C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  sub_1B1D7B4FC();
  v25 = type metadata accessor for ASImportableItem(0);
  v26 = v1;
  sub_1B1D64DB8(v1 + *(v25 + 20), v12);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_1B1D7C5EC();
    sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1B1D7BDEC();
    (*(v4 + 8))(v6, v3);
  }

  v14 = v25;
  sub_1B1D64DB8(v26 + *(v25 + 24), v10);
  if (v13(v10, 1, v3) == 1)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_1B1D7C5EC();
    sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1B1D7BDEC();
    (*(v4 + 8))(v6, v3);
  }

  v15 = v26;
  sub_1B1D7BE7C();
  if (*(v15 + v14[8] + 8))
  {
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
  }

  else
  {
    sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();
  v16 = (v15 + v14[10]);
  if (*v16)
  {
    v17 = v16[1];
    v29[0] = *v16;
    v29[1] = v17;
    sub_1B1D7C5EC();

    ASImportableCredentialScope.hash(into:)(a1);
  }

  else
  {
    sub_1B1D7C5EC();
  }

  v18 = *(v15 + v14[11]);
  MEMORY[0x1B273B630](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 40;
    do
    {

      sub_1B1D7BE7C();

      v20 += 16;
      --v19;
    }

    while (v19);
  }

  v21 = *(v15 + v14[12]);
  result = MEMORY[0x1B273B630](*(v21 + 16));
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = (v21 + 32);
    do
    {
      memcpy(v27, v24, 0x2A1uLL);
      memcpy(v29, v24, 0x2A1uLL);
      sub_1B1D65C20(v27, v28);
      ASImportableCredential.hash(into:)(a1);
      memcpy(v28, v29, 0x2A1uLL);
      result = sub_1B1D65C58(v28);
      v24 += 680;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t sub_1B1D392AC(uint64_t (*a1)(void *))
{
  sub_1B1D7C5CC();
  a1(v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3933C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1B1D7C5CC();
  a3(v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D393A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1B1D7C5CC();
  a4(v6);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredentialScope.urls.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ASImportableCredentialScope.androidApps.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ASImportableCredentialScope.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7758D8, &qword_1B1D88E00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D65C88();
  sub_1B1D7C62C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7758E8, &qword_1B1D88E08);
  v14 = 0;
  sub_1B1D65CDC();
  sub_1B1D7C3FC();
  v10 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v11 = v15;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775900, &qword_1B1D88E10);
  v14 = 1;
  sub_1B1D65D90();
  sub_1B1D7C3FC();
  if (v15)
  {
    v12 = v15;
  }

  else
  {
    v12 = v10;
  }

  (*(v6 + 8))(v8, v5);
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableCredentialScope.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775918, &qword_1B1D88E18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D65C88();

  sub_1B1D7C63C();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7758E8, &qword_1B1D88E08);
  sub_1B1D65E68();
  sub_1B1D7C4CC();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775900, &qword_1B1D88E10);
    sub_1B1D65F1C();
    sub_1B1D7C4CC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B1D398C8()
{
  if (*v0)
  {
    return 0x4164696F72646E61;
  }

  else
  {
    return 1936487029;
  }
}

uint64_t sub_1B1D39904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B1D7C50C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164696F72646E61 && a2 == 0xEB00000000737070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B1D7C50C();

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

uint64_t sub_1B1D399E4(uint64_t a1)
{
  v2 = sub_1B1D65C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D39A20(uint64_t a1)
{
  v2 = sub_1B1D65C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ASImportableCredentialScope.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B1D302A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B1D304B8(v2, v3);
}

uint64_t ASImportableCredentialScope.hash(into:)(uint64_t a1)
{
  v3 = sub_1B1D7B49C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v16 = v1[1];
  MEMORY[0x1B273B630](*(v7 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v3);
      sub_1B1D641B4(&qword_1EB775940, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1B1D7BDEC();
      (*(v9 - 8))(v6, v3);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return sub_1B1D57010(a1, v16);
}

uint64_t ASImportableCredentialScope.hashValue.getter()
{
  v3 = *v0;
  sub_1B1D7C5CC();
  ASImportableCredentialScope.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D39CBC()
{
  v3 = *v0;
  sub_1B1D7C5CC();
  ASImportableCredentialScope.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D39D0C(uint64_t a1)
{
  v4 = *v1;
  sub_1B1D7C5CC();
  ASImportableCredentialScope.hash(into:)(v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D39D54(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B1D302A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B1D304B8(v2, v3);
}

uint64_t ASImportableCredentialScope.AndroidAppID.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ASImportableCredentialScope.AndroidAppID.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ASImportableCredentialScope.AndroidAppID.certificate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B1D65FF4(v2, v3, v4, v5);
}

__n128 ASImportableCredentialScope.AndroidAppID.certificate.setter(uint64_t a1)
{
  sub_1B1D66034(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  return result;
}

__n128 ASImportableCredentialScope.AndroidAppID.init(bundleID:certificate:name:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  sub_1B1D66034(0, 0, 0, 0);
  result = *a3;
  v11 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v11;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t sub_1B1D39F18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6369666974726563;
  v4 = 0xEB00000000657461;
  if (v2 != 1)
  {
    v3 = 1701667182;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6449656C646E7562;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6369666974726563;
  v8 = 0xEB00000000657461;
  if (*a2 != 1)
  {
    v7 = 1701667182;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6449656C646E7562;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B1D7C50C();
  }

  return v11 & 1;
}

uint64_t sub_1B1D3A01C()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3A0C0(uint64_t a1)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3A150(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

unint64_t sub_1B1D3A1F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6BDD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D3A220(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000657461;
  v5 = 0x6369666974726563;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6449656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B1D3A280()
{
  v1 = 0x6369666974726563;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

unint64_t sub_1B1D3A2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6BDD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D3A304(uint64_t a1)
{
  v2 = sub_1B1D66074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3A340(uint64_t a1)
{
  v2 = sub_1B1D66074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredentialScope.AndroidAppID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775948, &qword_1B1D88E20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v15 = v1[3];
  v16 = v7;
  v8 = v1[4];
  v13 = v1[5];
  v14 = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66074();
  sub_1B1D7C63C();
  LOBYTE(v18) = 0;
  v10 = v17;
  sub_1B1D7C49C();
  if (!v10)
  {
    v18 = v16;
    v19 = v15;
    v20 = v14;
    v21 = v13;
    v22 = 1;
    sub_1B1D65FF4(v16, v15, v14, v13);
    sub_1B1D660C8();
    sub_1B1D7C48C();
    sub_1B1D66034(v18, v19, v20, v21);
    LOBYTE(v18) = 2;
    sub_1B1D7C47C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ASImportableCredentialScope.AndroidAppID.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  sub_1B1D7BE7C();
  if (!v2)
  {
    sub_1B1D7C5EC();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  if (!v3)
  {
    return sub_1B1D7C5EC();
  }

LABEL_3:
  sub_1B1D7C5EC();

  return sub_1B1D7BE7C();
}

uint64_t ASImportableCredentialScope.AndroidAppID.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  if (!v1)
  {
    sub_1B1D7C5EC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B1D7C5EC();
    return sub_1B1D7C61C();
  }

  sub_1B1D7C5EC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredentialScope.AndroidAppID.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775960, &qword_1B1D88E28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66074();
  sub_1B1D7C62C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1B1D66034(0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v31) = 0;
    v9 = sub_1B1D7C40C();
    v11 = v10;
    v23 = v9;
    LOBYTE(v27) = 1;
    sub_1B1D6611C();
    sub_1B1D7C3FC();
    v24 = v32;
    v12 = v34;
    v25 = v33;
    v26 = v31;
    sub_1B1D66034(0, 0, 0, 0);
    v39 = 2;
    v13 = sub_1B1D7C3DC();
    v14 = v8;
    v16 = v15;
    (*(v6 + 8))(v14, v5);
    v17 = v23;
    v18 = v24;
    *&v27 = v23;
    *(&v27 + 1) = v11;
    *&v28 = v26;
    *(&v28 + 1) = v24;
    *&v29 = v25;
    *(&v29 + 1) = v12;
    *&v30 = v13;
    *(&v30 + 1) = v16;
    v19 = v28;
    *a2 = v27;
    a2[1] = v19;
    v20 = v30;
    a2[2] = v29;
    a2[3] = v20;
    sub_1B1D66170(&v27, &v31);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v31 = v17;
    v32 = v11;
    v33 = v26;
    v34 = v18;
    v35 = v25;
    v36 = v12;
    v37 = v13;
    v38 = v16;
    return sub_1B1D661A8(&v31);
  }
}

uint64_t sub_1B1D3AA3C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  if (!v2)
  {
    sub_1B1D7C5EC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B1D7C5EC();
    return sub_1B1D7C61C();
  }

  sub_1B1D7C5EC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.hashAlgorithm.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.hashAlgorithm.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.init(fingerprint:hashAlgorithm:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775970, &qword_1B1D88E30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D661D8();
  sub_1B1D7C62C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = 0;
  sub_1B1D7C40C();
  v9 = sub_1B1D7B4AC();
  if (v10 >> 60 == 15)
  {
    v11 = sub_1B1D7C2BC();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
    *v13 = MEMORY[0x1E6969080];
    sub_1B1D7C3CC();
    sub_1B1D7C2AC();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v9;
  v16 = v10;
  v23 = 1;
  v17 = sub_1B1D7C40C();
  v19 = v18;
  v20 = *(v6 + 8);
  v22 = v17;
  v20(v8, v5);
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v22;
  a2[3] = v19;
  sub_1B1CE111C(v15, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1B1CDEFDC(v15, v16);
}

uint64_t sub_1B1D3AEB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676C4168736168;
  }

  else
  {
    v3 = 0x72707265676E6966;
  }

  if (v2)
  {
    v4 = 0xEB00000000746E69;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676C4168736168;
  }

  else
  {
    v5 = 0x72707265676E6966;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB00000000746E69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B1D7C50C();
  }

  return v8 & 1;
}

uint64_t sub_1B1D3AF68()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3AFF4(uint64_t a1)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3B06C(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

void sub_1B1D3B100(uint64_t *a1@<X8>)
{
  v2 = 0x72707265676E6966;
  if (*v1)
  {
    v2 = 0x676C4168736168;
  }

  v3 = 0xEB00000000746E69;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B1D3B148()
{
  if (*v0)
  {
    return 0x676C4168736168;
  }

  else
  {
    return 0x72707265676E6966;
  }
}

uint64_t sub_1B1D3B198(uint64_t a1)
{
  v2 = sub_1B1D661D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3B1D4(uint64_t a1)
{
  v2 = sub_1B1D661D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ASImportableCredentialScope.AndroidAppCertificationFingerprint.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_1B1D583E4(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B1D7C50C();
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775980, &qword_1B1D88E38);
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v11[1] = v1[3];
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1CE111C(v7, v8);
  sub_1B1D661D8();
  sub_1B1D7C63C();
  v13 = v7;
  v14 = v8;
  v15 = 0;
  sub_1B1CE561C();
  sub_1B1D7C4CC();
  sub_1B1CDEFDC(v13, v14);
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1B1D7C49C();
  }

  return (*(v12 + 8))(v6, v4);
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.hash(into:)(uint64_t a1)
{
  sub_1B1D7B4FC();

  return sub_1B1D7BE7C();
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.hashValue.getter()
{
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3B528()
{
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3B590(uint64_t a1)
{
  sub_1B1D7B4FC();

  return sub_1B1D7BE7C();
}

uint64_t sub_1B1D3B5E0(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3B644(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_1B1D583E4(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B1D7C50C();
}

AuthenticationServices::ASImportableEditableField::FieldType_optional __swiftcall ASImportableEditableField.FieldType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B1D7C3AC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ASImportableEditableField.FieldType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD00000000000001ALL;
    v7 = 0x2D7972746E756F63;
    if (v1 != 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1702125924;
    if (v1 != 5)
    {
      v8 = 0x6E6F6D2D72616579;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x676E69727473;
    v3 = 0x6C69616D65;
    v4 = 0x7265626D756ELL;
    if (v1 != 3)
    {
      v4 = 0x6E61656C6F6F62;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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
}

unint64_t sub_1B1D3B890@<X0>(unint64_t *a1@<X8>)
{
  result = ASImportableEditableField.FieldType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1D3B968()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D2E888(v3, v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3B9B8(uint64_t a1)
{
  v2 = *v1;
  sub_1B1D7C5CC();
  sub_1B1D2E888(v4, v2);
  return sub_1B1D7C61C();
}

uint64_t ASImportableEditableField.id.getter()
{
  v1 = *v0;
  sub_1B1C91B94(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableEditableField.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C91AE4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableEditableField.value.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ASImportableEditableField.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ASImportableEditableField.label.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ASImportableEditableField.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1B1D3BBD0()
{
  v1 = 25705;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v1 = 0x707954646C656966;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1D3BC3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1D6BE24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D3BC64(uint64_t a1)
{
  v2 = sub_1B1D6622C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3BCA0(uint64_t a1)
{
  v2 = sub_1B1D6622C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableEditableField.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775988, &qword_1B1D88E40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6622C();
  sub_1B1D7C62C();
  if (!v2)
  {
    v33 = 0;
    sub_1B1D7C3DC();
    if (v9)
    {
      v10 = sub_1B1D7B4AC();
      if (v11 >> 60 == 15)
      {
        v12 = sub_1B1D7C2BC();
        swift_allocError();
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
        *v14 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6AF8], v12);
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
        return __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v15 = v10;
      v16 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 0xF000000000000000;
    }

    v31 = 1;
    sub_1B1D66280();
    sub_1B1D7C43C();
    v17 = v32;
    v30 = 2;
    v27 = sub_1B1D7C40C();
    v28 = v19;
    v26 = v17;
    v29 = 3;
    v20 = sub_1B1D7C3DC();
    v21 = v8;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    sub_1B1C91AE4(0, 0xF000000000000000);
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v26;
    v24 = v28;
    *(a2 + 24) = v27;
    *(a2 + 32) = v24;
    *(a2 + 40) = v20;
    *(a2 + 48) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableEditableField.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7759A0, &qword_1B1D88E48);
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v7 = *(v1 + 8);
  v12 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11[2] = *(v1 + 32);
  v11[3] = v8;
  v9 = *(v1 + 40);
  v11[0] = *(v1 + 48);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6622C();
  sub_1B1D7C63C();
  if (v7 >> 60 != 15)
  {
    sub_1B1D7B4BC();
  }

  v18 = 0;
  sub_1B1D7C47C();
  if (v2)
  {
    (*(v13 + 8))(v6, v4);
  }

  else
  {

    v17 = v12;
    v16 = 1;
    sub_1B1D662D4();
    sub_1B1D7C4CC();
    v15 = 2;
    sub_1B1D7C49C();
    v14 = 3;
    sub_1B1D7C47C();
    return (*(v13 + 8))(v6, v4);
  }
}

uint64_t sub_1B1D3C290(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      v3 = 761884769;
      goto LABEL_16;
    case 2:
      return 0x75612D6369736162;
    case 3:
      return 0x632D746964657263;
    case 4:
      return 0x662D6D6F74737563;
    case 5:
      return 0x2D73726576697264;
    case 6:
      return 0xD000000000000012;
    case 7:
      return 0xD000000000000011;
    case 8:
      return 0x6665722D6D657469;
    case 9:
      return 1702129518;
    case 10:
      v3 = 1936941424;
      goto LABEL_16;
    case 11:
      return 0x74726F7073736170;
    case 12:
      return 0x6E2D6E6F73726570;
    case 13:
      v3 = 761820019;
LABEL_16:
      result = v3 | 0x79656B00000000;
      break;
    case 14:
      result = 1886678900;
      break;
    case 15:
      result = 1768319351;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1D3C478(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  sub_1B1D7C5CC();
  sub_1B1D7C5EC();
  if (v2 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(v6, v3);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v4)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3C554(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B1D3C290(*a1);
  v5 = v4;
  if (v3 == sub_1B1D3C290(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B1D7C50C();
  }

  return v8 & 1;
}

uint64_t sub_1B1D3C5DC()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D3C290(v1);
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3C640(uint64_t a1)
{
  sub_1B1D3C290(*v1);
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3C694(uint64_t a1)
{
  v2 = *v1;
  sub_1B1D7C5CC();
  sub_1B1D3C290(v2);
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

unint64_t sub_1B1D3C6F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6BF80(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B1D3C724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1D3C290(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1D3C810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D3C898(uint64_t a1)
{
  v2 = sub_1B1D66F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3C8D4(uint64_t a1)
{
  v2 = sub_1B1D66F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D3C910()
{
  memcpy(__dst, v0, 0x2A1uLL);
  switch(sub_1B1D67108(__dst))
  {
    case 1u:
      nullsub_1();
      result = 1;
      break;
    case 2u:
      nullsub_1();
      result = 2;
      break;
    case 3u:
      nullsub_1();
      result = 3;
      break;
    case 4u:
      nullsub_1();
      result = 4;
      break;
    case 5u:
      nullsub_1();
      result = 5;
      break;
    case 6u:
      nullsub_1();
      result = 6;
      break;
    case 7u:
      nullsub_1();
      result = 7;
      break;
    case 8u:
      nullsub_1();
      result = 8;
      break;
    case 9u:
      nullsub_1();
      result = 9;
      break;
    case 0xAu:
      nullsub_1();
      result = 10;
      break;
    case 0xBu:
      nullsub_1();
      result = 11;
      break;
    case 0xCu:
      nullsub_1();
      result = 12;
      break;
    case 0xDu:
      nullsub_1();
      result = 13;
      break;
    case 0xEu:
      nullsub_1();
      result = 14;
      break;
    case 0xFu:
      nullsub_1();
      result = 15;
      break;
    default:
      nullsub_1();
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1B1D3CB40(uint64_t a1)
{
  sub_1B1D7BE7C();
}

unint64_t sub_1B1D3CC3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6BFCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D3CC6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007373657264;
  v4 = 0x6441746565727473;
  v5 = 0xE900000000000079;
  v6 = 0x726F746972726574;
  v7 = 0xE700000000000000;
  v8 = 0x7972746E756F63;
  if (v2 != 4)
  {
    v8 = 7103860;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x6F436C6174736F70;
  if (v2 != 1)
  {
    v10 = 2037672291;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B1D3CD30()
{
  v1 = *v0;
  v2 = 0x6441746565727473;
  v3 = 0x726F746972726574;
  v4 = 0x7972746E756F63;
  if (v1 != 4)
  {
    v4 = 7103860;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F436C6174736F70;
  if (v1 != 1)
  {
    v5 = 2037672291;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B1D3CDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6BFCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D3CE18(uint64_t a1)
{
  v2 = sub_1B1D66374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3CE54(uint64_t a1)
{
  v2 = sub_1B1D66374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV5titleAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV5titleAA0C13EditableFieldVSgvs_0(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV5givenAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV5givenAA0C13EditableFieldVSgvs_0(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  v4 = *a1;
  *(v1 + 72) = a1[1];
  *(v1 + 56) = v4;
  result = v6;
  *(v1 + 88) = v6;
  *(v1 + 104) = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV13givenInformalAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV13givenInformalAA0C13EditableFieldVSgvs_0(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160));
  v4 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v4;
  result = v6;
  *(v1 + 144) = v6;
  *(v1 + 160) = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV6given2AA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV6given2AA0C13EditableFieldVSgvs_0(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216));
  v4 = *a1;
  *(v1 + 184) = a1[1];
  *(v1 + 168) = v4;
  result = v6;
  *(v1 + 200) = v6;
  *(v1 + 216) = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV13surnamePrefixAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV13surnamePrefixAA0C13EditableFieldVSgvs_0(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248), *(v1 + 256), *(v1 + 264), *(v1 + 272));
  v4 = *(a1 + 16);
  *(v1 + 224) = *a1;
  *(v1 + 240) = v4;
  result = v6;
  *(v1 + 256) = v6;
  *(v1 + 272) = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV7surnameAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV7surnameAA0C13EditableFieldVSgvs_0(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 280), *(v1 + 288), *(v1 + 296), *(v1 + 304), *(v1 + 312), *(v1 + 320), *(v1 + 328));
  v4 = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = v4;
  result = v6;
  *(v1 + 312) = v6;
  *(v1 + 328) = v3;
  return result;
}

__n128 sub_1B1D3D3F4@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v24 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *a2;
  v16 = a2[6];
  v25 = a2[5];
  v26 = *a3;
  v27 = a3[6];
  v28 = a3[5];
  v29 = *a4;
  v30 = a4[6];
  v31 = a4[5];
  v32 = *a5;
  v33 = a5[6];
  v34 = a5[5];
  v35 = *a6;
  v36 = a6[6];
  v37 = a6[5];
  *(a7 + 304) = 0u;
  *(a7 + 320) = 0u;
  *(a7 + 272) = 0u;
  *(a7 + 288) = 0u;
  *(a7 + 240) = 0u;
  *(a7 + 256) = 0u;
  *(a7 + 208) = 0u;
  *(a7 + 224) = 0u;
  *(a7 + 176) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 144) = 0u;
  *(a7 + 160) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v17 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v17;
  *(a7 + 32) = v24;
  *(a7 + 48) = v14;
  sub_1B1D0D630(*(a7 + 56), *(a7 + 64), *(a7 + 72), *(a7 + 80), *(a7 + 88), *(a7 + 96), *(a7 + 104));
  *(a7 + 56) = v15;
  v18 = *(a2 + 3);
  *(a7 + 64) = *(a2 + 1);
  *(a7 + 80) = v18;
  *(a7 + 96) = v25;
  *(a7 + 104) = v16;
  sub_1B1D0D630(*(a7 + 112), *(a7 + 120), *(a7 + 128), *(a7 + 136), *(a7 + 144), *(a7 + 152), *(a7 + 160));
  *(a7 + 112) = v26;
  v19 = *(a3 + 1);
  *(a7 + 136) = *(a3 + 3);
  *(a7 + 120) = v19;
  *(a7 + 152) = v28;
  *(a7 + 160) = v27;
  sub_1B1D0D630(*(a7 + 168), *(a7 + 176), *(a7 + 184), *(a7 + 192), *(a7 + 200), *(a7 + 208), *(a7 + 216));
  *(a7 + 168) = v29;
  v20 = *(a4 + 3);
  *(a7 + 176) = *(a4 + 1);
  *(a7 + 192) = v20;
  *(a7 + 208) = v31;
  *(a7 + 216) = v30;
  sub_1B1D0D630(*(a7 + 224), *(a7 + 232), *(a7 + 240), *(a7 + 248), *(a7 + 256), *(a7 + 264), *(a7 + 272));
  *(a7 + 224) = v32;
  v21 = *(a5 + 1);
  *(a7 + 248) = *(a5 + 3);
  *(a7 + 232) = v21;
  *(a7 + 264) = v34;
  *(a7 + 272) = v33;
  sub_1B1D0D630(*(a7 + 280), *(a7 + 288), *(a7 + 296), *(a7 + 304), *(a7 + 312), *(a7 + 320), *(a7 + 328));
  *(a7 + 280) = v35;
  result = *(a6 + 1);
  v23 = *(a6 + 3);
  *(a7 + 288) = result;
  *(a7 + 304) = v23;
  *(a7 + 320) = v37;
  *(a7 + 328) = v36;
  return result;
}

uint64_t sub_1B1D3D610(uint64_t a1)
{
  sub_1B1D7BE7C();
}

unint64_t sub_1B1D3D700@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6C018(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D3D730(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7955819;
  v5 = 0xE300000000000000;
  v6 = 7107189;
  v7 = 0xE90000000000006DLL;
  v8 = 0x6F724664696C6176;
  if (v2 != 4)
  {
    v8 = 0x6144797269707865;
    v7 = 0xEA00000000006574;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656D616E72657375;
  if (v2 != 1)
  {
    v10 = 0x6570795479656BLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B1D3D7E8()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 7107189;
  v4 = 0x6F724664696C6176;
  if (v1 != 4)
  {
    v4 = 0x6144797269707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D616E72657375;
  if (v1 != 1)
  {
    v5 = 0x6570795479656BLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B1D3D89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6C018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D3D8C4(uint64_t a1)
{
  v2 = sub_1B1D664D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3D900(uint64_t a1)
{
  v2 = sub_1B1D664D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D3D99C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v85 = a4;
  v86 = a5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v88 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v84 = &v45 - v7;
  v8 = v5[1];
  v83 = *v5;
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[4];
  v12 = v5[5];
  v13 = v5[6];
  v79 = v5[7];
  v80 = v13;
  v14 = v5[8];
  v77 = v5[9];
  v78 = v14;
  v15 = v5[10];
  v75 = v5[11];
  v76 = v15;
  v16 = v5[13];
  v74 = v5[12];
  v73 = v16;
  v17 = v5[15];
  v72 = v5[14];
  v71 = v17;
  v18 = v5[17];
  v70 = v5[16];
  v69 = v18;
  v19 = v5[19];
  v68 = v5[18];
  v67 = v19;
  v20 = v5[21];
  v66 = v5[20];
  v59 = v20;
  v21 = v5[23];
  v60 = v5[22];
  v61 = v21;
  v22 = v5[25];
  v62 = v5[24];
  v65 = v22;
  v23 = v5[27];
  v64 = v5[26];
  v63 = v23;
  v24 = v5[29];
  v52 = v5[28];
  v53 = v24;
  v25 = v5[31];
  v54 = v5[30];
  v58 = v25;
  v26 = v5[33];
  v57 = v5[32];
  v56 = v26;
  v27 = v5[35];
  v55 = v5[34];
  v45 = v27;
  v28 = v5[37];
  v46 = v5[36];
  v47 = v28;
  v29 = v5[39];
  v48 = v5[38];
  v49 = v29;
  v30 = v5[41];
  v51 = v5[40];
  v50 = v30;
  v31 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v32 = v83;
  v33 = sub_1B1D66328(v83, v8, v9, v10, v11, v12, v13);
  v85(v33);
  v34 = v84;
  sub_1B1D7C63C();
  v89 = v32;
  v90 = v8;
  v35 = v34;
  v91 = v9;
  v92 = v10;
  v93 = v11;
  v94 = v12;
  v95 = v80;
  v96 = 0;
  v36 = sub_1B1D663C8();
  v37 = v82;
  v38 = v87;
  sub_1B1D7C48C();
  if (v38)
  {
    sub_1B1D0D630(v89, v90, v91, v92, v93, v94, v95);
    return (*(v88 + 8))(v34, v37);
  }

  else
  {
    v40 = v69;
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v88;
    sub_1B1D0D630(v89, v90, v91, v92, v93, v94, v95);
    v89 = v79;
    v90 = v78;
    v91 = v77;
    v92 = v76;
    v93 = v75;
    v94 = v74;
    v95 = v73;
    v96 = 1;
    sub_1B1D66328(v79, v78, v77, v76, v75, v74, v73);
    v87 = v36;
    sub_1B1D7C48C();
    sub_1B1D0D630(v89, v90, v91, v92, v93, v94, v95);
    v89 = v43;
    v90 = v42;
    v91 = v41;
    v92 = v40;
    v93 = v68;
    v94 = v67;
    v95 = v66;
    v96 = 2;
    sub_1B1D66328(v43, v42, v41, v40, v68, v67, v66);
    sub_1B1D7C48C();
    sub_1B1D0D630(v89, v90, v91, v92, v93, v94, v95);
    v89 = v59;
    v90 = v60;
    v91 = v61;
    v92 = v62;
    v93 = v65;
    v94 = v64;
    v95 = v63;
    v96 = 3;
    sub_1B1D66328(v59, v60, v61, v62, v65, v64, v63);
    sub_1B1D7C48C();
    sub_1B1D0D630(v89, v90, v91, v92, v93, v94, v95);
    v89 = v52;
    v90 = v53;
    v91 = v54;
    v92 = v58;
    v93 = v57;
    v94 = v56;
    v95 = v55;
    v96 = 4;
    sub_1B1D66328(v52, v53, v54, v58, v57, v56, v55);
    sub_1B1D7C48C();
    sub_1B1D0D630(v89, v90, v91, v92, v93, v94, v95);
    v89 = v45;
    v90 = v46;
    v91 = v47;
    v92 = v48;
    v93 = v49;
    v94 = v51;
    v95 = v50;
    v96 = 5;
    sub_1B1D66328(v45, v46, v47, v48, v49, v51, v50);
    sub_1B1D7C48C();
    sub_1B1D0D630(v89, v90, v91, v92, v93, v94, v95);
    return (*(v44 + 8))(v35, v37);
  }
}

uint64_t sub_1B1D3DFA0(uint64_t a1)
{
  v2 = v1;
  v4 = v2[4];
  v81 = v2[7];
  v82 = v2[8];
  v63 = v2[9];
  v64 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v62 = v2[13];
  v83 = v2[14];
  v7 = v2[15];
  v66 = v2[16];
  v67 = v2[17];
  v77 = v2[18];
  v65 = v2[20];
  v8 = v2[22];
  v85 = v2[21];
  v70 = v2[23];
  v71 = v2[24];
  v9 = v2[25];
  v10 = v2[28];
  v69 = v2[27];
  v11 = v2[30];
  v78 = v2[29];
  v79 = v2[31];
  v80 = v2[32];
  v74 = v2[33];
  v73 = v2[34];
  v12 = v2[36];
  v89 = v2[37];
  v90 = v2[38];
  v93 = v2[39];
  v76 = v2[40];
  v75 = v2[41];
  v88 = v2[35];
  v91 = v10;
  v92 = v11;
  v72 = v2[26];
  v86 = v8;
  v87 = v9;
  v68 = v2[19];
  v84 = v7;
  if (!v4)
  {
    sub_1B1D7C5EC();
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v19 = v77;
    if (v77)
    {
      goto LABEL_21;
    }

LABEL_6:
    sub_1B1D7C5EC();
    v20 = v78;
    v21 = v79;
    if (v9)
    {
      goto LABEL_27;
    }

LABEL_7:
    sub_1B1D7C5EC();
    v22 = v80;
    if (v80)
    {
      goto LABEL_34;
    }

    goto LABEL_8;
  }

  v61 = v2[12];
  v14 = *v2;
  v13 = v2[1];
  v16 = v2[2];
  v15 = v2[3];
  v18 = v2[5];
  v17 = v2[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v14, v13);

  if (v13 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v16);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v17)
  {
    sub_1B1D7BE7C();
    v24 = v14;
    v25 = v13;
    v26 = v16;
    v27 = v15;
    v28 = v4;
    v29 = v18;
    v30 = v17;
  }

  else
  {
    v24 = v14;
    v25 = v13;
    v26 = v16;
    v27 = v15;
    v28 = v4;
    v29 = v18;
    v30 = 0;
  }

  sub_1B1D0D630(v24, v25, v26, v27, v28, v29, v30);
  v10 = v91;
  v11 = v92;
  v8 = v86;
  v9 = v87;
  v7 = v84;
  v6 = v61;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_15:
  sub_1B1D7C5EC();
  v19 = v77;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v81, v82);

  if (v82 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v63);
  sub_1B1D7BE7C();
  v10 = v91;
  sub_1B1D7C5EC();
  if (v62)
  {
    sub_1B1D7BE7C();
    v31 = v81;
    v32 = v82;
    v33 = v63;
    v34 = v64;
    v35 = v5;
    v36 = v6;
    v37 = v62;
  }

  else
  {
    v31 = v81;
    v32 = v82;
    v33 = v63;
    v34 = v64;
    v35 = v5;
    v36 = v6;
    v37 = 0;
  }

  sub_1B1D0D630(v31, v32, v33, v34, v35, v36, v37);
  v11 = v92;
  v8 = v86;
  v9 = v87;
  if (!v77)
  {
    goto LABEL_6;
  }

LABEL_21:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v83, v7);

  if (v7 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v66);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v65)
  {
    sub_1B1D7BE7C();
    v38 = v83;
    v39 = v84;
    v40 = v66;
    v41 = v67;
    v42 = v19;
    v43 = v68;
    v44 = v65;
  }

  else
  {
    v38 = v83;
    v39 = v84;
    v40 = v66;
    v41 = v67;
    v42 = v19;
    v43 = v68;
    v44 = 0;
  }

  sub_1B1D0D630(v38, v39, v40, v41, v42, v43, v44);
  v20 = v78;
  v21 = v79;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_27:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  if (v8 >> 60 == 15)
  {
    v45 = v8;
    sub_1B1C91B94(v85, v8);
    v46 = v69;
  }

  else
  {
    sub_1B1C91B94(v85, v8);
    v46 = v69;

    v45 = v8;
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v70);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v46)
  {
    sub_1B1D7BE7C();
    v47 = v85;
    v48 = v45;
    v49 = v70;
    v50 = v71;
    v51 = v9;
    v52 = v72;
    v53 = v46;
  }

  else
  {
    v47 = v85;
    v48 = v45;
    v49 = v70;
    v50 = v71;
    v51 = v9;
    v52 = v72;
    v53 = 0;
  }

  sub_1B1D0D630(v47, v48, v49, v50, v51, v52, v53);
  v10 = v91;
  v11 = v92;
  v22 = v80;
  if (v80)
  {
LABEL_34:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v10, v20);

    if (v20 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v11);
    sub_1B1D7BE7C();
    if (v73)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v10, v20, v11, v21, v22, v74, v73);
      if (v93)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v10, v20, v11, v21, v22, v74, 0);
      if (v93)
      {
        goto LABEL_38;
      }
    }

    return sub_1B1D7C5EC();
  }

LABEL_8:
  sub_1B1D7C5EC();
  if (!v93)
  {
    return sub_1B1D7C5EC();
  }

LABEL_38:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v88, v12);

  if (v12 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v89);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v75)
  {
    sub_1B1D7BE7C();
    v54 = v88;
    v55 = v12;
    v56 = v89;
    v57 = v90;
    v58 = v93;
    v59 = v76;
    v60 = v75;
  }

  else
  {
    v54 = v88;
    v55 = v12;
    v56 = v89;
    v57 = v90;
    v58 = v93;
    v59 = v76;
    v60 = 0;
  }

  return sub_1B1D0D630(v54, v55, v56, v57, v58, v59, v60);
}