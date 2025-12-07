void sub_238D8A100(char *a2@<X8>)
{
  v3 = sub_238D9DFDC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238D9DEBC();
  v8 = [v7 domain];
  v9 = sub_238D9E03C();
  v11 = v10;

  sub_238D8CF88();
  if (v9 == sub_238D9DE3C() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_238D9E2FC();

    if ((v14 & 1) == 0)
    {

      v15 = 2;
      goto LABEL_13;
    }
  }

  v16 = [v7 code];
  v17 = *(v4 + 104);
  v17(v6, *MEMORY[0x277D25AB0], v3);
  v18 = sub_238D9DFCC();
  v19 = *(v4 + 8);
  v19(v6, v3);
  if (v18 == v16)
  {

    v15 = 0;
  }

  else
  {
    v17(v6, *MEMORY[0x277D25A98], v3);
    v20 = sub_238D9DFCC();

    v19(v6, v3);
    if (v20 == v16)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

LABEL_13:
  *a2 = v15;
}

uint64_t ManagedAppError.hashValue.getter()
{
  v1 = *v0;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v1);
  return sub_238D9E38C();
}

uint64_t sub_238D8A3C8()
{
  v1 = *v0;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v1);
  return sub_238D9E38C();
}

uint64_t sub_238D8A43C(uint64_t a1)
{
  v2 = *v1;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v2);
  return sub_238D9E38C();
}

uint64_t sub_238D8A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_238D8A4CC, 0, 0);
}

uint64_t sub_238D8A4CC()
{
  if (qword_27DF6CD38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_238D8A5A0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_238D9198C(v4, v2, v2, v3);
}

uint64_t sub_238D8A5A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

ManagedApp::ManagedAppConfigurationDecodingErrorCode_optional __swiftcall ManagedAppConfigurationDecodingErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 1879048191)
  {
    v2 = rawValue;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  *(v1 + 8) = rawValue > 1879048191;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t *sub_238D8A70C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1879048191;
  if (*result > 1879048191)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_238D8A738()
{
  v1 = *v0;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v1);
  return sub_238D9E38C();
}

uint64_t sub_238D8A7AC(uint64_t a1)
{
  v2 = *v1;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v2);
  return sub_238D9E38C();
}

uint64_t sub_238D8A8CC()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_238D8A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_238D9E2FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238D9E2FC();

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

uint64_t sub_238D8A9F4(uint64_t a1)
{
  v2 = sub_238D8D24C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238D8AA30(uint64_t a1)
{
  v2 = sub_238D8D24C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238D8AA6C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CDD8, &qword_238D9ECC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238D8D24C();
  sub_238D9E3AC();
  v14 = v9;
  v13 = 0;
  sub_238D8D340();
  sub_238D9E2CC();
  if (!v2)
  {
    v12 = 1;
    sub_238D9E2BC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_238D8AC10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CDC0, &qword_238D9ECC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238D8D24C();
  sub_238D9E39C();
  if (!v2)
  {
    v14[15] = 0;
    sub_238D8D2EC();
    sub_238D9E2AC();
    v9 = v15;
    v14[14] = 1;
    v11 = sub_238D9E29C();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238D8AE04()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_238D8AE34(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_238D8AEF4()
{
  if (qword_27DF6CD68 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_238D8AFC0;
  v2 = *(v0 + 16);

  return sub_238D9B728(v2);
}

uint64_t sub_238D8AFC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238D8B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_238D8B0D8, 0, 0);
}

uint64_t sub_238D8B0D8()
{
  if (qword_27DF6CD68 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF6DC28;
  *(v0 + 40) = qword_27DF6DC28;

  return MEMORY[0x2822009F8](sub_238D8B170, v1, 0);
}

uint64_t sub_238D8B170()
{
  sub_238D9DFBC();
  swift_allocObject();
  v0[6] = sub_238D9DFAC();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_238D8B230;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282184858](v3, v2);
}

uint64_t sub_238D8B230(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[8] = v2;

  v7 = v6[5];
  if (v2)
  {
    v8 = sub_238D8B3D8;
  }

  else
  {
    v6[9] = a2;
    v6[10] = a1;
    v8 = sub_238D8B370;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D8B370()
{

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_238D8B3D8()
{

  return MEMORY[0x2822009F8](sub_238D8B440, 0, 0);
}

uint64_t sub_238D8B440()
{
  v7 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  sub_238D8A100(&v6);
  v3 = v6;
  *v2 = v6;
  *(v0 + 88) = v3;
  sub_238D8BE48();
  swift_willThrowTypedImpl();
  MEMORY[0x23EE76E80](v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238D8B528()
{
  if (qword_27DF6CD30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_238D8D610;
  v2 = *(v0 + 16);

  return sub_238D8D678(v2);
}

uint64_t sub_238D8B5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_238D8B618, 0, 0);
}

uint64_t sub_238D8B618()
{
  if (qword_27DF6CD30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF6DBB0;
  *(v0 + 40) = qword_27DF6DBB0;

  return MEMORY[0x2822009F8](sub_238D8B6B0, v1, 0);
}

uint64_t sub_238D8B6B0()
{
  sub_238D9DFBC();
  swift_allocObject();
  v0[6] = sub_238D9DFAC();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_238D8B770;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282184860](v3, v2);
}

uint64_t sub_238D8B770(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_238D8B8AC;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_238D8D620;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238D8B8AC()
{

  return MEMORY[0x2822009F8](sub_238D8D61C, 0, 0);
}

uint64_t sub_238D8B944()
{
  if (qword_27DF6CD40 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_238D8D610;
  v2 = *(v0 + 16);

  return sub_238D95AC8(v2);
}

uint64_t sub_238D8BA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_238D8BA34, 0, 0);
}

uint64_t sub_238D8BA34()
{
  if (qword_27DF6CD40 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF6DBC0;
  *(v0 + 40) = qword_27DF6DBC0;

  return MEMORY[0x2822009F8](sub_238D8BACC, v1, 0);
}

uint64_t sub_238D8BACC()
{
  sub_238D9DFBC();
  swift_allocObject();
  v0[6] = sub_238D9DFAC();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_238D8BB8C;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282184850](v3, v2);
}

uint64_t sub_238D8BB8C(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_238D8BD30;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_238D8BCC8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238D8BCC8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_238D8BD30()
{

  return MEMORY[0x2822009F8](sub_238D8BD98, 0, 0);
}

uint64_t sub_238D8BD98()
{
  v7 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  sub_238D8A100(&v6);
  v3 = v6;
  *v2 = v6;
  *(v0 + 80) = v3;
  sub_238D8BE48();
  swift_willThrowTypedImpl();
  MEMORY[0x23EE76E80](v1);
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_238D8BE48()
{
  result = qword_27DF6CD70;
  if (!qword_27DF6CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD70);
  }

  return result;
}

unint64_t sub_238D8BEA0()
{
  result = qword_27DF6CD78;
  if (!qword_27DF6CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD78);
  }

  return result;
}

unint64_t sub_238D8BEFC()
{
  result = qword_27DF6CD80;
  if (!qword_27DF6CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManagedAppError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of ManagedAppConfigurationProvider.configurations<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 88) + **(*v4 + 88));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_238D8D614;

  return v12(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for ManagedAppConfigurationDecodingErrorCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ManagedAppConfigurationDecodingErrorCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t dispatch thunk of ManagedAppPasswordsProvider.identifiers.getter(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238D8C4A4;

  return v6(a1);
}

uint64_t sub_238D8C4A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s10ManagedApp0aB17PasswordsProviderC8password14withIdentifierS2S_tYaAA0aB5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_238D8C6D0;

  return v10(a1, a2, a3);
}

uint64_t sub_238D8C6D0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of ManagedAppCertificatesProvider.identifiers.getter(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238D8D614;

  return v6(a1);
}

uint64_t _s10ManagedApp0aB20CertificatesProviderC11certificate14withIdentifierSo17SecCertificateRefaSS_tYaAA0aB5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_238D8D618;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppIdentitiesProvider.identifiers.getter(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238D8D614;

  return v6(a1);
}

uint64_t _s10ManagedApp0aB18IdentitiesProviderC8identity14withIdentifierSo14SecIdentityRefaSS_tYaAA0aB5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_238D8CD34;

  return v10(a1, a2, a3);
}

uint64_t sub_238D8CD34(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_238D8CE30(void *a1)
{
  sub_238D9E20C();
  sub_238D9E16C();

  return swift_getWitnessTable();
}

unint64_t sub_238D8CE88()
{
  result = qword_27DF6CD88;
  if (!qword_27DF6CD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CD90, &qword_238D9EBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD88);
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

unint64_t sub_238D8CF34()
{
  result = qword_27DF6CD98;
  if (!qword_27DF6CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD98);
  }

  return result;
}

unint64_t sub_238D8CF88()
{
  result = qword_27DF6CDA0;
  if (!qword_27DF6CDA0)
  {
    sub_238D9DFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDA0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_238D8CFF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_238D8D03C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_238D8D08C(void *a1)
{
  a1[1] = sub_238D8D0C4();
  a1[2] = sub_238D8D118();
  result = sub_238D8D16C();
  a1[3] = result;
  return result;
}

unint64_t sub_238D8D0C4()
{
  result = qword_27DF6CDA8;
  if (!qword_27DF6CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDA8);
  }

  return result;
}

unint64_t sub_238D8D118()
{
  result = qword_27DF6CDB0;
  if (!qword_27DF6CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDB0);
  }

  return result;
}

unint64_t sub_238D8D16C()
{
  result = qword_27DF6CDB8;
  if (!qword_27DF6CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDB8);
  }

  return result;
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

unint64_t sub_238D8D24C()
{
  result = qword_27DF6CDC8;
  if (!qword_27DF6CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDC8);
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

unint64_t sub_238D8D2EC()
{
  result = qword_27DF6CDD0;
  if (!qword_27DF6CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDD0);
  }

  return result;
}

unint64_t sub_238D8D340()
{
  result = qword_27DF6CDE0;
  if (!qword_27DF6CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReservedAppConfigurationError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReservedAppConfigurationError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238D8D4F4()
{
  result = qword_27DF6CDE8;
  if (!qword_27DF6CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDE8);
  }

  return result;
}

unint64_t sub_238D8D54C()
{
  result = qword_27DF6CDF0;
  if (!qword_27DF6CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDF0);
  }

  return result;
}

unint64_t sub_238D8D5A4()
{
  result = qword_27DF6CDF8;
  if (!qword_27DF6CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDF8);
  }

  return result;
}

double sub_238D8D624()
{
  type metadata accessor for ManagedAppCertificateCoordinator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  qword_27DF6DBB0 = v0;
  return result;
}

uint64_t sub_238D8D678(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE28, &unk_238D9EEC0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D8D820, v1, 0);
}

uint64_t sub_238D8D820()
{
  v1 = v0[14];
  v21 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE30, &unk_238D9F120);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_238D9E11C();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v21, v1, v2);
  v8 = *(v7 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_238D9D984(0, v8[2] + 1, 1, v8);
    *(v7 + 112) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_238D9D984((v10 > 1), v11 + 1, 1, v8);
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];
  v8[2] = v11 + 1;
  (*(v13 + 32))(v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11, v12, v14);
  *(v7 + 112) = v8;
  if (qword_27DF6CD50 != -1)
  {
    swift_once();
  }

  v15 = sub_238D9E00C();
  __swift_project_value_buffer(v15, qword_27DF6DBE0);
  v16 = sub_238D9DFEC();
  v17 = sub_238D9E1CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_238D89000, v16, v17, "Notifying new managed app certificates AsyncSequence of initial state.", v18, 2u);
    MEMORY[0x23EE76F90](v18, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_238D8DACC;

  return sub_238D8DE6C();
}

uint64_t sub_238D8DACC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_238D8DBE4, v2, 0);
}

uint64_t sub_238D8DBE4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[2] = v0[16];
  sub_238D9E14C();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_238D8DCB8;

  return sub_238D8E28C();
}

uint64_t sub_238D8DCB8()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_238D8DDC8, v1, 0);
}

uint64_t sub_238D8DDC8()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_238D8DE8C()
{
  sub_238D9DFBC();
  swift_allocObject();
  *(v0 + 24) = sub_238D9DFAC();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_238D8DF44;

  return MEMORY[0x282184888]();
}

uint64_t sub_238D8DF44(uint64_t a1)
{
  v4 = *v2;
  v4[5] = v1;

  v5 = v4[2];
  if (v1)
  {
    v6 = sub_238D8E0E4;
  }

  else
  {
    v4[6] = a1;
    v6 = sub_238D8E080;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238D8E080()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_238D8E0E4()
{
  if (qword_27DF6CD50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBE0);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x23EE76E90](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to fetch managed app certificate identifiers. Returning empty array. Error: %@", v6, 0xCu);
    sub_238D8FB34(v7, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v7, -1, -1);
    MEMORY[0x23EE76F90](v6, -1, -1);
  }

  v9 = *(v0 + 40);

  MEMORY[0x23EE76E80](v9);
  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_238D8E2AC()
{
  v1 = v0[22];
  swift_beginAccess();
  sub_238D8FAB4(v1 + 120, (v0 + 8));
  v2 = v0[11];
  sub_238D8FB34((v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  if (v2)
  {
    if (qword_27DF6CD50 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBE0);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to register for managed app certificate changed notifications but already registered, so ignoring.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_238D9DFBC();
    swift_allocObject();
    v0[23] = sub_238D9DFAC();
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_238D8E498;

    return MEMORY[0x2821848C0]();
  }
}

uint64_t sub_238D8E498(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[25] = v2;

  v7 = v6[22];
  if (v2)
  {
    v8 = sub_238D8E768;
  }

  else
  {
    v6[26] = a2;
    v6[27] = a1;
    v8 = sub_238D8E5D8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D8E5D8()
{
  v1 = v0[22];
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_238D9E02C();

  v0[6] = sub_238D8E920;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238D9B5E0;
  v0[5] = &block_descriptor;
  v4 = _Block_copy(v0 + 2);
  v5 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  v0[15] = swift_getObjectType();

  v0[12] = v5;
  swift_beginAccess();
  sub_238D8FB94((v0 + 12), v1 + 120);
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_238D8E768()
{
  if (qword_27DF6CD50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBE0);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine managed app certificate changed notification name. Unable to register for notifications. Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238D8E920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  MEMORY[0x28223BE20]();
  v1 = &v5 - v0;
  v2 = sub_238D9E10C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_238D9B2E0(0, 0, v1, &unk_238D9EEB8, v3);
}

uint64_t sub_238D8EA2C()
{
  if (qword_27DF6CD30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D8F144();
}

uint64_t sub_238D8EB10()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_238D8FAB4(v1 + 120, v0 + 48);
  if (*(v0 + 72))
  {
    sub_238D8FB24((v0 + 48), (v0 + 16));
    sub_238D9DFBC();
    swift_allocObject();
    *(v0 + 168) = sub_238D9DFAC();
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_238D8ED08;

    return MEMORY[0x2821848C0]();
  }

  else
  {
    sub_238D8FB34(v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
    if (qword_27DF6CD50 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBE0);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to deregister for managed app certificate changed notifications but not currently registered.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_238D8ED08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[23] = v2;

  v7 = v6[20];
  if (v2)
  {
    v8 = sub_238D8EF84;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;
    v8 = sub_238D8EE48;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D8EE48()
{
  v1 = *(v0 + 160);
  v2 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = sub_238D9E2EC();
  v4 = sub_238D9E02C();

  [v2 removeObserver:v3 name:v4 object:0];

  swift_unknownObjectRelease();
  *(v0 + 96) = 0u;
  *(v0 + 80) = 0u;
  swift_beginAccess();
  sub_238D8FB94(v0 + 80, v1 + 120);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_238D8EF84()
{
  if (qword_27DF6CD50 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBE0);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine certificate change notification name. Unable to deregister from notifications that certificates have changed Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_238D8F144()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_238D8F2B0;

  return sub_238D8DE6C();
}

uint64_t sub_238D8F2B0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_238D8F3C8, v2, 0);
}

uint64_t sub_238D8F3C8()
{
  if (qword_27DF6CD50 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = sub_238D9E00C();
    __swift_project_value_buffer(v1, qword_27DF6DBE0);

    v2 = sub_238D9DFEC();
    v3 = sub_238D9E1CC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[3];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(*(v5 + 112) + 16);

      _os_log_impl(&dword_238D89000, v2, v3, "Attempting to notify %ld managed app certificates AsyncSequences of new state.", v6, 0xCu);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    else
    {
    }

    v7 = v0[3];
    v8 = *(v7 + 112);
    v45 = *(v8 + 16);
    if (!v45)
    {
      break;
    }

    v35 = v0[3];
    v9 = v0[8];
    v10 = v0[5];
    v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v42 = v8 + v38;
    v41 = (v10 + 88);
    v40 = *MEMORY[0x277D85748];
    v39 = (v9 + 8);
    v43 = v9;
    v36 = (v10 + 8);
    v37 = (v9 + 32);

    v12 = 0;
    v46 = MEMORY[0x277D84F90];
    v44 = v11;
    while (v12 < *(v11 + 16))
    {
      v13 = v0[12];
      v14 = v0[6];
      v15 = v0[4];
      v16 = *(v43 + 72);
      v17 = *(v43 + 16);
      v17(v0[10], v42 + v16 * v12, v0[7]);
      v0[2] = v13;

      sub_238D9E14C();
      if ((*v41)(v14, v15) == v40)
      {
        v18 = sub_238D9DFEC();
        v19 = sub_238D9E1DC();
        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[10];
        v22 = v0[7];
        if (v20)
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_238D89000, v18, v19, "Dropping terminated managed app certificates AsyncSequence from coordinator.", v23, 2u);
          MEMORY[0x23EE76F90](v23, -1, -1);
        }

        (*v39)(v21, v22);
      }

      else
      {
        v17(v0[9], v0[10], v0[7]);
        v24 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_238D9D984(0, v46[2] + 1, 1, v46);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_238D9D984((v25 > 1), v26 + 1, 1, v24);
        }

        v27 = v0[9];
        v29 = v0[6];
        v28 = v0[7];
        v30 = v0[4];
        (*v39)(v0[10], v28);
        v24[2] = v26 + 1;
        v46 = v24;
        (*v37)(v24 + v38 + v26 * v16, v27, v28);
        (*v36)(v29, v30);
      }

      v11 = v44;
      if (v45 == ++v12)
      {

        v7 = v35;
        v31 = v46;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v31 = MEMORY[0x277D84F90];
LABEL_20:

  *(v7 + 112) = v31;

  if (*(*(v7 + 112) + 16))
  {

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = swift_task_alloc();
    v0[13] = v34;
    *v34 = v0;
    v34[1] = sub_238D8F8AC;

    return sub_238D8EAF0();
  }
}

uint64_t sub_238D8F8AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238D8F9FC()
{

  sub_238D8FB34(v0 + 120, &qword_27DF6CE10, &unk_238D9EFC0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_238D8FAB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE10, &unk_238D9EFC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_238D8FB24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_238D8FB34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238D8FB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE10, &unk_238D9EFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238D8FC1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D8FC54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D8EA10();
}

uint64_t sub_238D8FD00(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  MEMORY[0x28223BE20]();
  v4 = &v10[-v3];
  sub_238D94F30(a1, v11, &qword_27DF6CE38, &qword_238D9EFB8);
  swift_beginAccess();
  sub_238D95094(v11, v1 + 112, &qword_27DF6CE38, &qword_238D9EFB8);
  swift_endAccess();
  sub_238D94F30(v1 + 112, v11, &qword_27DF6CE38, &qword_238D9EFB8);
  sub_238D950FC(v11);
  sub_238D8FB34(v11, &qword_27DF6CE38, &qword_238D9EFB8);
  v5 = sub_238D9E10C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_238D94F30(a1, v11, &qword_27DF6CE38, &qword_238D9EFB8);
  v6 = sub_238D95454();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v1;
  v8 = v11[1];
  *(v7 + 40) = v11[0];
  *(v7 + 56) = v8;
  *(v7 + 72) = v12;
  swift_retain_n();
  sub_238D9B2E0(0, 0, v4, &unk_238D9EFE8, v7);

  return sub_238D8FB34(a1, &qword_27DF6CE38, &qword_238D9EFB8);
}

uint64_t sub_238D8FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_238D8FF08, a4, 0);
}

uint64_t sub_238D8FF08()
{
  v10 = v0;
  sub_238D94F30(v0[13], (v0 + 2), &qword_27DF6CE38, &qword_238D9EFB8);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v2 + 32))(&v9, v1, v2);
    v1 = v9;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_238D8FB34((v0 + 2), &qword_27DF6CE38, &qword_238D9EFB8);
  }

  sub_238D94F30(v0[13], (v0 + 7), &qword_27DF6CE38, &qword_238D9EFB8);
  v3 = v0[10];
  if (v3)
  {
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v5 = (*(v4 + 56))(v3, v4);
    v3 = v6;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  else
  {
    sub_238D8FB34((v0 + 7), &qword_27DF6CE38, &qword_238D9EFB8);
    v5 = 0;
  }

  v0[14] = v3;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_238D900BC;

  return sub_238D94304(v1, v5, v3);
}

uint64_t sub_238D900BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238D901CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v7 = sub_238D9E24C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_238D9E25C();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = *(a4 + 16);
  sub_238D9E20C();
  v9 = sub_238D9E12C();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v10 = swift_checkMetadataState();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D903E0, 0, 0);
}

uint64_t sub_238D903E0()
{
  v2 = v0 + 30;
  v1 = v0[30];
  v3 = v0[22];
  v4 = v0[13];
  v5 = v0[11];
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  (*(*(v3 - 8) + 56))(v1, 1, 1);
  if (v4 >> 60 == 15)
  {
    v6 = v0 + 27;
    v7 = v0 + 26;
    v8 = v0[25];
    v9 = v0[24];
    v26 = v0[23];
    (*(v0[27] + 16))(v0[28], v0[30], v0[26]);
    sub_238D9E15C();
    sub_238D9E14C();
    v10 = (*(v9 + 88))(v8, v26);
    v11 = *MEMORY[0x277D85748];
    if (v10 == *MEMORY[0x277D85748])
    {
      if (qword_27DF6CD48 != -1)
      {
        swift_once();
      }

      v21 = sub_238D9E00C();
      __swift_project_value_buffer(v21, qword_27DF6DBC8);
      v22 = sub_238D9DFEC();
      v23 = sub_238D9E1DC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_238D89000, v22, v23, "Dropping terminated managed app configurations AsyncSequence from coordinator.", v24, 2u);
        MEMORY[0x23EE76F90](v24, -1, -1);
      }
    }

    else
    {
      (*(*v6 + 8))(*v2, *v7);
      v6 = v0 + 24;
      v2 = v0 + 25;
      v7 = v0 + 23;
    }

    (*(*v6 + 8))(*v2, *v7);

    v25 = v0[1];

    return v25(v10 != v11);
  }

  else
  {
    v12 = v0[22];
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    type metadata accessor for ConcurrencyUtils();
    v16 = swift_allocObject();
    v0[31] = v16;
    v16[2] = v12;
    v16[3] = *(v14 + 24);
    v16[4] = v15;
    v16[5] = v13;
    sub_238D957E0(v15, v13);
    sub_238D957F4(v15, v13);
    v17 = swift_task_alloc();
    v0[32] = v17;
    *v17 = v0;
    v17[1] = sub_238D907A0;
    v18 = v0[29];
    v19 = v0[22];

    return sub_238D97AC8(v18, 5000000000, &unk_238D9F008, v16, v19);
  }
}

uint64_t sub_238D907A0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_238D90B74;
  }

  else
  {

    v2 = sub_238D908BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238D908BC()
{
  v2 = v0 + 30;
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[29];
  v5 = v0[26];
  sub_238D947BC(v0[12], v0[13]);
  (*(v3 + 8))(v1, v5);
  (*(v3 + 32))(v1, v4, v5);
  v6 = v0 + 23;
  v7 = v0[25];
  v18 = v0[23];
  v8 = v0[24];
  (*(v0[27] + 16))(v0[28], v0[30], v0[26]);
  sub_238D9E15C();
  sub_238D9E14C();
  v9 = (*(v8 + 88))(v7, v18);
  v10 = *MEMORY[0x277D85748];
  if (v9 == *MEMORY[0x277D85748])
  {
    v6 = v0 + 26;
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v12 = sub_238D9E00C();
    __swift_project_value_buffer(v12, qword_27DF6DBC8);
    v13 = sub_238D9DFEC();
    v14 = sub_238D9E1DC();
    v11 = v0 + 27;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238D89000, v13, v14, "Dropping terminated managed app configurations AsyncSequence from coordinator.", v15, 2u);
      MEMORY[0x23EE76F90](v15, -1, -1);
    }
  }

  else
  {
    (*(v0[27] + 8))(*v2, v0[26]);
    v11 = v0 + 24;
    v2 = v0 + 25;
  }

  (*(*v11 + 8))(*v2, *v6);

  v16 = v0[1];

  return v16(v9 != v10);
}

uint64_t sub_238D90B74()
{
  v1 = *(v0 + 264);

  *(v0 + 56) = v1;
  MEMORY[0x23EE76E90](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE58, &qword_238D9F010);
  if (swift_dynamicCast())
  {
    v2 = (*(*(v0 + 160) + 88))(*(v0 + 168), *(v0 + 152));
    if (v2 == *MEMORY[0x277D84160])
    {
      v4 = *(v0 + 160);
      v3 = *(v0 + 168);
      v6 = *(v0 + 144);
      v5 = *(v0 + 152);
      v7 = *(v0 + 128);
      v8 = *(v0 + 136);
      v10 = *(v0 + 96);
      v9 = *(v0 + 104);
      v11 = *(v0 + 88);
      MEMORY[0x23EE76E80](*(v0 + 264));
      (*(v4 + 96))(v3, v5);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE70, &qword_238D9F020);
      (*(v8 + 32))(v6, v3 + *(v12 + 48), v7);
      v13 = sub_238D9E23C();
      v15 = v14;
      sub_238D947BC(v10, v9);
      (*(v8 + 8))(v6, v7);
      sub_238D8FB34(v11, &qword_27DF6CE38, &qword_238D9EFB8);
      v16 = sub_238D95848();
      v17 = 1879048195;
LABEL_6:
      *v11 = v17;
      v11[1] = v13;
      v11[2] = v15;
      v11[3] = &type metadata for ReservedAppConfigurationError;
      v11[4] = v16;
LABEL_7:
      MEMORY[0x23EE76E80](*(v0 + 56));
      goto LABEL_18;
    }

    if (v2 == *MEMORY[0x277D84170])
    {
      v19 = *(v0 + 160);
      v18 = *(v0 + 168);
      v21 = *(v0 + 144);
      v20 = *(v0 + 152);
      v22 = *(v0 + 128);
      v23 = *(v0 + 136);
      v25 = *(v0 + 96);
      v24 = *(v0 + 104);
      v11 = *(v0 + 88);
      MEMORY[0x23EE76E80](*(v0 + 264));
      (*(v19 + 96))(v18, v20);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE70, &qword_238D9F020);
      (*(v23 + 32))(v21, v18 + *(v26 + 48), v22);
      v13 = sub_238D9E23C();
      v15 = v27;
      sub_238D947BC(v25, v24);
      (*(v23 + 8))(v21, v22);
      sub_238D8FB34(v11, &qword_27DF6CE38, &qword_238D9EFB8);
      v16 = sub_238D95848();
      v17 = 1879048196;
      goto LABEL_6;
    }

    if (v2 == *MEMORY[0x277D84158])
    {
      v29 = *(v0 + 160);
      v28 = *(v0 + 168);
      v31 = *(v0 + 144);
      v30 = *(v0 + 152);
      v32 = *(v0 + 128);
      v33 = *(v0 + 136);
      v35 = *(v0 + 96);
      v34 = *(v0 + 104);
      v36 = *(v0 + 88);
      MEMORY[0x23EE76E80](*(v0 + 264));
      (*(v29 + 96))(v28, v30);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF6CE78, &qword_238D9F028);
      (*(v33 + 32))(v31, &v28[*(v37 + 48)], v32);
      v38 = sub_238D9E23C();
      v40 = v39;
      sub_238D947BC(v35, v34);
      (*(v33 + 8))(v31, v32);
      sub_238D8FB34(v36, &qword_27DF6CE38, &qword_238D9EFB8);
      v41 = sub_238D95848();
      *v36 = 1879048194;
      v36[1] = v38;
      v36[2] = v40;
      v36[3] = &type metadata for ReservedAppConfigurationError;
      v36[4] = v41;
      __swift_destroy_boxed_opaque_existential_1(v28);
      goto LABEL_7;
    }

    if (v2 == *MEMORY[0x277D84168])
    {
      v43 = *(v0 + 160);
      v42 = *(v0 + 168);
      v45 = *(v0 + 144);
      v44 = *(v0 + 152);
      v46 = *(v0 + 128);
      v47 = *(v0 + 136);
      v49 = *(v0 + 96);
      v48 = *(v0 + 104);
      v50 = *(v0 + 88);
      MEMORY[0x23EE76E80](*(v0 + 264));
      (*(v43 + 96))(v42, v44);
      (*(v47 + 32))(v45, v42, v46);
      v51 = sub_238D9E23C();
      v53 = v52;
      sub_238D947BC(v49, v48);
      (*(v47 + 8))(v45, v46);
      sub_238D8FB34(v50, &qword_27DF6CE38, &qword_238D9EFB8);
      v54 = sub_238D95848();
      *v50 = 1879048193;
      v50[1] = v51;
      v50[2] = v53;
      v50[3] = &type metadata for ReservedAppConfigurationError;
      v50[4] = v54;
      goto LABEL_7;
    }

    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

  v55 = *(v0 + 264);
  MEMORY[0x23EE76E80](*(v0 + 56));
  *(v0 + 64) = v55;
  MEMORY[0x23EE76E90](v55);
  v56 = swift_dynamicCast();
  v57 = *(v0 + 264);
  if (v56)
  {
    v59 = *(v0 + 96);
    v58 = *(v0 + 104);
    v60 = *(v0 + 88);
    MEMORY[0x23EE76E80](*(v0 + 264));
    sub_238D9E22C();
    MEMORY[0x23EE76890](0xD000000000000034, 0x8000000238DA0360);
    *(v0 + 80) = 5;
    v61 = sub_238D9E2DC();
    MEMORY[0x23EE76890](v61);

    MEMORY[0x23EE76890](0x73646E6F63657320, 0xE90000000000002ELL);
    sub_238D947BC(v59, v58);
    sub_238D8FB34(v60, &qword_27DF6CE38, &qword_238D9EFB8);
    v62 = sub_238D95848();
    *v60 = 1879048197;
    v60[1] = 0;
    v60[2] = 0xE000000000000000;
    v60[3] = &type metadata for ReservedAppConfigurationError;
    v60[4] = v62;
    MEMORY[0x23EE76E80](*(v0 + 64));
  }

  else
  {
    MEMORY[0x23EE76E80](*(v0 + 64));
    *(v0 + 72) = v57;
    MEMORY[0x23EE76E90](v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE60, &qword_238D9F018);
    v63 = swift_dynamicCast();
    v64 = *(v0 + 264);
    v66 = *(v0 + 96);
    v65 = *(v0 + 104);
    v67 = *(v0 + 88);
    if (v63)
    {
      sub_238D8FB34(*(v0 + 88), &qword_27DF6CE38, &qword_238D9EFB8);
      sub_238D947BC(v66, v65);
      MEMORY[0x23EE76E80](v64);
      sub_238D94F18((v0 + 16), v67);
      MEMORY[0x23EE76E80](*(v0 + 72));
    }

    else
    {
      MEMORY[0x23EE76E80](*(v0 + 72));
      MEMORY[0x23EE76E80](v64);
      sub_238D947BC(v66, v65);
      sub_238D8FB34(v67, &qword_27DF6CE38, &qword_238D9EFB8);
      v68 = sub_238D95848();
      *v67 = xmmword_238D9EEE0;
      *(v67 + 16) = 0x8000000238DA0340;
      *(v67 + 24) = &type metadata for ReservedAppConfigurationError;
      *(v67 + 32) = v68;
    }
  }

LABEL_18:
  v88 = v0;
  v69 = *(v0 + 240);
  v71 = *(v0 + 224);
  v70 = (v0 + 240);
  v73 = *(v0 + 216);
  v72 = (v0 + 216);
  v74 = v70 - 4;
  v75 = *(v70 - 5);
  v77 = v70 - 6;
  v76 = *(v70 - 6);
  v87 = *(v70 - 7);
  (*(v73 + 16))(v71, v69, *(v70 - 4));
  sub_238D9E15C();
  sub_238D9E14C();
  v78 = (*(v76 + 88))(v75, v87);
  v79 = *MEMORY[0x277D85748];
  if (v78 == *MEMORY[0x277D85748])
  {
    v77 = v72;
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v81 = sub_238D9E00C();
    __swift_project_value_buffer(v81, qword_27DF6DBC8);
    v82 = sub_238D9DFEC();
    v83 = sub_238D9E1DC();
    v80 = v88;
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_238D89000, v82, v83, "Dropping terminated managed app configurations AsyncSequence from coordinator.", v84, 2u);
      MEMORY[0x23EE76F90](v84, -1, -1);
    }
  }

  else
  {
    (*(*v72 + 8))(*v70, *v74);
    v74 = v70 - 7;
    v70 -= 5;
    v80 = v88;
  }

  (*(*v77 + 8))(*v70, *v74);

  v85 = *(v80 + 8);

  return v85(v78 != v79);
}

uint64_t sub_238D9144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_238D91474, 0, 0);
}

uint64_t sub_238D91474()
{
  sub_238D9DEAC();
  swift_allocObject();
  sub_238D9DE9C();
  sub_238D9DE8C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D91548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_238D9E20C();
  v5 = sub_238D9E13C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  sub_238D9E15C();
  MEMORY[0x28223BE20]();
  v10 = &v14 - v9;
  swift_checkMetadataState();
  v11 = *MEMORY[0x277D85778];
  v12 = sub_238D9E13C();
  (*(*(v12 - 8) + 104))(v8, v11, v12);
  sub_238D9E11C();
  (*(v6 + 8))(v8, v5);
  return sub_238D91704(v10, a1);
}

uint64_t sub_238D91704@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_238D9E20C();
  v5 = sub_238D9E15C();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t sub_238D9177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_238D9183C;

  return sub_238D901CC(a1, a2, a3, a4);
}

uint64_t sub_238D9183C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

double sub_238D91938()
{
  type metadata accessor for ManagedAppConfigurationCoordinator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 144) = 0;
  *(v0 + 152) = v2;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  qword_27DF6DBB8 = v0;
  return result;
}

uint64_t sub_238D9198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a1;
  v5[16] = a3;
  v6 = type metadata accessor for ManagedAppConfigurationCoordinator.TypedDataReceiver(0, a3, a4, a4);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D91A70, v4, 0);
}

uint64_t sub_238D91A70()
{
  sub_238D91548(v0[23], v0[15], v0[16], v0[17]);
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = sub_238D9E00C();
  __swift_project_value_buffer(v1, qword_27DF6DBC8);
  v2 = sub_238D9DFEC();
  v3 = sub_238D9E1CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238D89000, v2, v3, "Notifying new managed app configuration AsyncSequence of initial state.", v4, 2u);
    MEMORY[0x23EE76F90](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_238D91BCC;

  return sub_238D922D8();
}

uint64_t sub_238D91BCC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v5[25] = a1;
  v5[26] = a2;

  v7 = swift_task_alloc();
  v5[27] = v7;
  *v7 = v6;
  v7[1] = sub_238D91D44;
  v8 = v5[19];

  return sub_238D901CC((v5 + 2), a1, a2, v8);
}

uint64_t sub_238D91D44(char a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 144);
  *(*v1 + 232) = a1;

  sub_238D947BC(v3, v2);

  return MEMORY[0x2822009F8](sub_238D91E98, v4, 0);
}

uint64_t sub_238D91E98()
{
  v1 = *(v0 + 232);
  sub_238D94F30(v0 + 16, v0 + 56, &qword_27DF6CE38, &qword_238D9EFB8);
  sub_238D8FD00(v0 + 56);
  v2 = *(v0 + 184);
  if (v1 == 1)
  {
    v3 = *(v0 + 144);
    v4 = *(*(v0 + 160) + 16);
    v4(*(v0 + 176), *(v0 + 184), *(v0 + 152));
    swift_beginAccess();
    v5 = *(v3 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 152) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_238D9D83C(0, v5[2] + 1, 1, v5);
      *(v3 + 152) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_238D9D83C((v7 > 1), v8 + 1, 1, v5);
      *(v3 + 152) = v5;
    }

    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    v4(v10, v9, v11);
    sub_238D94DCC(v8, v10, (v3 + 152), v11, &off_284BA6D28);
    (*(v12 + 8))(v9, v11);
    *(v3 + 152) = v5;
    swift_endAccess();
    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = sub_238D9210C;

    return sub_238D92714();
  }

  else
  {
    v15 = *(v0 + 160);
    v16 = *(v0 + 152);
    sub_238D8FB34(v0 + 16, &qword_27DF6CE38, &qword_238D9EFB8);
    (*(v15 + 8))(v2, v16);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_238D9210C()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_238D9221C, v1, 0);
}

uint64_t sub_238D9221C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[19];
  sub_238D8FB34((v0 + 2), &qword_27DF6CE38, &qword_238D9EFB8);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_238D922F8()
{
  sub_238D9DFBC();
  swift_allocObject();
  *(v0 + 24) = sub_238D9DFAC();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_238D923B0;

  return MEMORY[0x282184868]();
}

uint64_t sub_238D923B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[5] = v2;

  v7 = v6[2];
  if (v2)
  {
    v8 = sub_238D92554;
  }

  else
  {
    v6[6] = a2;
    v6[7] = a1;
    v8 = sub_238D924F0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D924F0()
{

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_238D92554()
{
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBC8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to fetch managed app configuration. Returning nil. Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  v10 = *(v0 + 8);

  return v10(0, 0xF000000000000000);
}

uint64_t sub_238D92734()
{
  v1 = v0[22];
  swift_beginAccess();
  sub_238D94F30(v1 + 160, (v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  v2 = v0[11];
  sub_238D8FB34((v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  if (v2)
  {
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBC8);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to register for managed app configuration changed notifications but already registered, so ignoring.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_238D9DFBC();
    swift_allocObject();
    v0[23] = sub_238D9DFAC();
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_238D92930;

    return MEMORY[0x2821848C8]();
  }
}

uint64_t sub_238D92930(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[25] = v2;

  v7 = v6[22];
  if (v2)
  {
    v8 = sub_238D92C10;
  }

  else
  {
    v6[26] = a2;
    v6[27] = a1;
    v8 = sub_238D92A70;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D92A70()
{
  v1 = v0[22];
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_238D9E02C();

  v0[6] = sub_238D92DC8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238D9B5E0;
  v0[5] = &block_descriptor_0;
  v4 = _Block_copy(v0 + 2);
  v5 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  v0[15] = swift_getObjectType();

  v0[12] = v5;
  swift_beginAccess();
  sub_238D95094((v0 + 12), v1 + 160, &qword_27DF6CE10, &unk_238D9EFC0);
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_238D92C10()
{
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBC8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine managed app configuration changed notification name. Unable to register for notifications. Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238D92DC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  MEMORY[0x28223BE20]();
  v1 = &v5 - v0;
  v2 = sub_238D9E10C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_238D9B2E0(0, 0, v1, &unk_238D9EFD8, v3);
}

uint64_t sub_238D92ED4()
{
  if (qword_27DF6CD38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D9360C();
}

uint64_t sub_238D92FB8()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_238D94F30(v1 + 160, v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
  if (*(v0 + 72))
  {
    sub_238D8FB24((v0 + 48), (v0 + 16));
    sub_238D9DFBC();
    swift_allocObject();
    *(v0 + 168) = sub_238D9DFAC();
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_238D931C0;

    return MEMORY[0x2821848C8]();
  }

  else
  {
    sub_238D8FB34(v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBC8);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to deregister for managed app configuration changed notifications but not currently registered.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_238D931C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[23] = v2;

  v7 = v6[20];
  if (v2)
  {
    v8 = sub_238D9344C;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;
    v8 = sub_238D93300;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D93300()
{
  v1 = *(v0 + 160);
  v2 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = sub_238D9E2EC();
  v4 = sub_238D9E02C();

  [v2 removeObserver:v3 name:v4 object:0];

  swift_unknownObjectRelease();
  *(v0 + 96) = 0u;
  *(v0 + 80) = 0u;
  swift_beginAccess();
  sub_238D95094(v0 + 80, v1 + 160, &qword_27DF6CE10, &unk_238D9EFC0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_238D9344C()
{
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBC8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine configuration change notification name. Unable to deregister from notifications that the configuration has changed Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_238D9360C()
{
  *(v1 + 312) = v0;
  v2 = swift_task_alloc();
  *(v1 + 320) = v2;
  *v2 = v1;
  v2[1] = sub_238D9369C;

  return sub_238D922D8();
}

uint64_t sub_238D9369C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  *(v3 + 328) = a1;
  *(v3 + 336) = a2;

  return MEMORY[0x2822009F8](sub_238D937B4, v4, 0);
}

uint64_t sub_238D937B4()
{
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = sub_238D9E00C();
  *(v0 + 344) = __swift_project_value_buffer(v1, qword_27DF6DBC8);

  v2 = sub_238D9DFEC();
  v3 = sub_238D9E1CC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 312);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    *(v6 + 4) = *(*(v5 + 152) + 16);

    _os_log_impl(&dword_238D89000, v2, v3, "Attempting to notify %ld managed app configuration AsyncSequences of new state.", v6, 0xCu);
    MEMORY[0x23EE76F90](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 312);
  swift_beginAccess();
  v8 = *(v7 + 152);
  *(v0 + 352) = v8;
  v9 = *(v8 + 16);
  *(v0 + 360) = v9;
  if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    *(v0 + 376) = MEMORY[0x277D84F90];
    *(v0 + 384) = v10;
    *(v0 + 368) = 0;
    v11 = *(v8 + 16);

    if (v11)
    {
      sub_238D955B8(result + 32, v0 + 56);
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v13);
      v23 = (*(v14 + 8) + **(v14 + 8));
      v15 = swift_task_alloc();
      *(v0 + 392) = v15;
      *v15 = v0;
      v15[1] = sub_238D93B74;
      v16 = *(v0 + 328);
      v17 = *(v0 + 336);

      return v23(v0 + 96, v16, v17, v13, v14);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v18 = *(v0 + 312);
    *(v18 + 152) = MEMORY[0x277D84F90];

    sub_238D94F30(v0 + 16, v0 + 176, &qword_27DF6CE38, &qword_238D9EFB8);
    sub_238D8FD00(v0 + 176);
    if (*(*(v18 + 152) + 16))
    {
      v20 = *(v0 + 328);
      v19 = *(v0 + 336);
      sub_238D8FB34(v0 + 16, &qword_27DF6CE38, &qword_238D9EFB8);
      sub_238D947BC(v20, v19);
      v21 = *(v0 + 8);

      return v21();
    }

    else
    {
      v22 = swift_task_alloc();
      *(v0 + 400) = v22;
      *v22 = v0;
      v22[1] = sub_238D9417C;

      return sub_238D92F98();
    }
  }

  return result;
}

uint64_t sub_238D93B74(char a1)
{
  v2 = *(*v1 + 312);
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](sub_238D93C8C, v2, 0);
}

uint64_t sub_238D93C8C()
{
  sub_238D94F30(v0 + 96, v0 + 136, &qword_27DF6CE38, &qword_238D9EFB8);
  if (*(v0 + 160))
  {
    sub_238D8FB34(v0 + 16, &qword_27DF6CE38, &qword_238D9EFB8);
    sub_238D94F18((v0 + 136), v0 + 16);
  }

  else
  {
    sub_238D8FB34(v0 + 136, &qword_27DF6CE38, &qword_238D9EFB8);
  }

  if (*(v0 + 408) == 1)
  {
    v1 = *(v0 + 384);
    sub_238D955B8(v0 + 56, v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 304) = v1;
    v3 = *(v0 + 384);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_238D9D83C(0, v3[2] + 1, 1, *(v0 + 384));
      *(v0 + 304) = v3;
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_238D9D83C((v4 > 1), v5 + 1, 1, v3);
      *(v0 + 304) = v3;
    }

    sub_238D8FB34(v0 + 96, &qword_27DF6CE38, &qword_238D9EFB8);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v6);
    v9 = *(v6 - 8);
    v10 = swift_task_alloc();
    (*(v9 + 16))(v10, v8, v6);
    sub_238D94DCC(v5, v10, (v0 + 304), v6, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 216));

    v11 = v3;
  }

  else
  {
    v12 = sub_238D9DFEC();
    v13 = sub_238D9E1DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_238D89000, v12, v13, "Dropping terminated managed app configuration AsyncSequence from coordinator.", v14, 2u);
      MEMORY[0x23EE76F90](v14, -1, -1);
    }

    sub_238D8FB34(v0 + 96, &qword_27DF6CE38, &qword_238D9EFB8);
    v3 = *(v0 + 376);
    v11 = *(v0 + 384);
  }

  v15 = *(v0 + 360);
  v16 = *(v0 + 368) + 1;
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (v16 == v15)
  {

    v18 = *(v0 + 312);
    *(v18 + 152) = v3;

    sub_238D94F30(v0 + 16, v0 + 176, &qword_27DF6CE38, &qword_238D9EFB8);
    sub_238D8FD00(v0 + 176);
    if (*(*(v18 + 152) + 16))
    {
      v19 = *(v0 + 328);
      v20 = *(v0 + 336);
      sub_238D8FB34(v0 + 16, &qword_27DF6CE38, &qword_238D9EFB8);
      sub_238D947BC(v19, v20);
      v21 = *(v0 + 8);

      return v21();
    }

    else
    {
      v29 = swift_task_alloc();
      *(v0 + 400) = v29;
      *v29 = v0;
      v29[1] = sub_238D9417C;

      return sub_238D92F98();
    }
  }

  else
  {
    v22 = *(v0 + 368) + 1;
    *(v0 + 376) = v3;
    *(v0 + 384) = v11;
    *(v0 + 368) = v22;
    v23 = *(v0 + 352);
    if (v22 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_238D955B8(v23 + 40 * v22 + 32, v0 + 56);
      v24 = *(v0 + 80);
      v25 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v24);
      v30 = (*(v25 + 8) + **(v25 + 8));
      v26 = swift_task_alloc();
      *(v0 + 392) = v26;
      *v26 = v0;
      v26[1] = sub_238D93B74;
      v27 = *(v0 + 328);
      v28 = *(v0 + 336);

      return v30(v0 + 96, v27, v28, v24, v25);
    }
  }

  return result;
}

uint64_t sub_238D9417C()
{
  v1 = *(*v0 + 312);

  return MEMORY[0x2822009F8](sub_238D9428C, v1, 0);
}

uint64_t sub_238D9428C()
{
  sub_238D947BC(v0[41], v0[42]);
  sub_238D8FB34((v0 + 2), &qword_27DF6CE38, &qword_238D9EFB8);
  v1 = v0[1];

  return v1();
}

uint64_t sub_238D94304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238D94328, v3, 0);
}

uint64_t sub_238D94328()
{
  sub_238D9DFBC();
  swift_allocObject();
  v0[6] = sub_238D9DFAC();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_238D943EC;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return MEMORY[0x282184880](v4, v2, v3);
}

uint64_t sub_238D943EC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_238D94578;
  }

  else
  {
    v4 = sub_238D94518;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_238D94518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D94578()
{
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBC8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to report configuration error state. Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238D94730()
{
  sub_238D8FB34(v0 + 112, &qword_27DF6CE38, &qword_238D9EFB8);

  sub_238D8FB34(v0 + 160, &qword_27DF6CE10, &unk_238D9EFC0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_238D947BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238D947D0(a1, a2);
  }

  return a1;
}

uint64_t sub_238D947D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_238D94824(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238D948F0(v11, 0, 0, 1, a1, a2);
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
    sub_238D95670(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_238D948F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238D949FC(a5, a6);
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
    result = sub_238D9E26C();
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

void *sub_238D949FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_238D94A48(a1, a2);
  sub_238D94B78(&unk_284BA6948);
  return v3;
}

void *sub_238D94A48(uint64_t a1, unint64_t a2)
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

  v6 = sub_238D94C64(v5, 0);
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

  result = sub_238D9E26C();
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
        v10 = sub_238D9E06C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238D94C64(v10, 0);
        result = sub_238D9E21C();
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

uint64_t sub_238D94B78(uint64_t result)
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

  result = sub_238D94CD8(result, v11, 1, v3);
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

void *sub_238D94C64(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE50, &qword_238D9EFF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238D94CD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE50, &qword_238D9EFF0);
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

uint64_t sub_238D94DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_238D94F18(&v12, v10 + 40 * a1 + 32);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_238D94F18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238D94F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238D94FB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D94FE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8D614;

  return sub_238D92EB8();
}

uint64_t sub_238D95094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_238D950FC(uint64_t a1)
{
  sub_238D94F30(a1, &v28, &qword_27DF6CE38, &qword_238D9EFB8);
  if (v29)
  {
    sub_238D94F18(&v28, v31);
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v1 = sub_238D9E00C();
    __swift_project_value_buffer(v1, qword_27DF6DBC8);
    sub_238D955B8(v31, &v28);
    sub_238D955B8(v31, v25);
    v2 = sub_238D9DFEC();
    v3 = sub_238D9E1EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v24 = v5;
      *v4 = 136315394;
      v6 = v29;
      v7 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      (*(v7 + 32))(&v23, v6, v7);
      sub_238D9561C();
      v8 = sub_238D9E07C();
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_1(&v28);
      v11 = sub_238D94824(v8, v10, &v24);

      *(v4 + 4) = v11;
      *(v4 + 12) = 2080;
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v14 = (*(v13 + 56))(v12, v13);
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v25);
      v17 = sub_238D94824(v14, v16, &v24);

      *(v4 + 14) = v17;
      _os_log_impl(&dword_238D89000, v2, v3, "Managed app configuration decoding failed with error code 0x%s, message %s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE76F90](v5, -1, -1);
      MEMORY[0x23EE76F90](v4, -1, -1);

      v18 = v31;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(&v28);
      v18 = v25;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_238D8FB34(&v28, &qword_27DF6CE38, &qword_238D9EFB8);
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v19 = sub_238D9E00C();
    __swift_project_value_buffer(v19, qword_27DF6DBC8);
    v20 = sub_238D9DFEC();
    v21 = sub_238D9E1DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_238D89000, v20, v21, "Managed app configuration decoded successfully.", v22, 2u);
      MEMORY[0x23EE76F90](v22, -1, -1);
    }
  }
}

unint64_t sub_238D95454()
{
  result = qword_27DF6CE40;
  if (!qword_27DF6CE40)
  {
    type metadata accessor for ManagedAppConfigurationCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CE40);
  }

  return result;
}

uint64_t sub_238D954A8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_238D954F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238D8C4A4;

  return sub_238D8FEE8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_238D955B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_238D9561C()
{
  result = qword_27DF6CE48;
  if (!qword_27DF6CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CE48);
  }

  return result;
}

uint64_t sub_238D95670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_238D956E8()
{
  sub_238D947D0(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238D95720(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238D8C4A4;

  return sub_238D9144C(a1, v7, v6, v4, v5);
}

uint64_t sub_238D957E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238D957F4(result, a2);
  }

  return result;
}

uint64_t sub_238D957F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_238D95848()
{
  result = qword_27DF6CE68;
  if (!qword_27DF6CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CE68);
  }

  return result;
}

uint64_t sub_238D958A4(uint64_t a1)
{
  sub_238D9E20C();
  result = sub_238D9E15C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238D95934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_238D9E20C();
  v5 = sub_238D9E15C();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_238D959C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_238D9E20C();
  v6 = sub_238D9E15C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

double sub_238D95A74()
{
  type metadata accessor for ManagedAppIdentityCoordinator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  qword_27DF6DBC0 = v0;
  return result;
}

uint64_t sub_238D95AC8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE28, &unk_238D9EEC0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D95C70, v1, 0);
}

uint64_t sub_238D95C70()
{
  v1 = v0[14];
  v21 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE30, &unk_238D9F120);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_238D9E11C();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v21, v1, v2);
  v8 = *(v7 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_238D9D984(0, v8[2] + 1, 1, v8);
    *(v7 + 112) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_238D9D984((v10 > 1), v11 + 1, 1, v8);
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];
  v8[2] = v11 + 1;
  (*(v13 + 32))(v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11, v12, v14);
  *(v7 + 112) = v8;
  if (qword_27DF6CD58 != -1)
  {
    swift_once();
  }

  v15 = sub_238D9E00C();
  __swift_project_value_buffer(v15, qword_27DF6DBF8);
  v16 = sub_238D9DFEC();
  v17 = sub_238D9E1CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_238D89000, v16, v17, "Notifying new managed app identities AsyncSequence of initial state.", v18, 2u);
    MEMORY[0x23EE76F90](v18, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_238D95F1C;

  return sub_238D96108();
}

uint64_t sub_238D95F1C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_238D96034, v2, 0);
}

uint64_t sub_238D96034()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[2] = v0[16];
  sub_238D9E14C();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_238D8DCB8;

  return sub_238D964C4();
}

uint64_t sub_238D96128()
{
  sub_238D9DFBC();
  swift_allocObject();
  *(v0 + 24) = sub_238D9DFAC();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_238D961E0;

  return MEMORY[0x282184870]();
}

uint64_t sub_238D961E0(uint64_t a1)
{
  v4 = *v2;
  v4[5] = v1;

  v5 = v4[2];
  if (v1)
  {
    v6 = sub_238D9631C;
  }

  else
  {
    v4[6] = a1;
    v6 = sub_238D8E080;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238D9631C()
{
  if (qword_27DF6CD58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBF8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x23EE76E90](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to fetch managed app identity identifiers. Returning empty array. Error: %@", v6, 0xCu);
    sub_238D8FB34(v7, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v7, -1, -1);
    MEMORY[0x23EE76F90](v6, -1, -1);
  }

  v9 = *(v0 + 40);

  MEMORY[0x23EE76E80](v9);
  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_238D964E4()
{
  v1 = v0[22];
  swift_beginAccess();
  sub_238D8FAB4(v1 + 120, (v0 + 8));
  v2 = v0[11];
  sub_238D8FB34((v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  if (v2)
  {
    if (qword_27DF6CD58 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBF8);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to register for managed app identity changed notifications but already registered, so ignoring.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_238D9DFBC();
    swift_allocObject();
    v0[23] = sub_238D9DFAC();
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_238D966D0;

    return MEMORY[0x2821848B0]();
  }
}

uint64_t sub_238D966D0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[25] = v2;

  v7 = v6[22];
  if (v2)
  {
    v8 = sub_238D969A0;
  }

  else
  {
    v6[26] = a2;
    v6[27] = a1;
    v8 = sub_238D96810;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D96810()
{
  v1 = v0[22];
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_238D9E02C();

  v0[6] = sub_238D96B58;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238D9B5E0;
  v0[5] = &block_descriptor_1;
  v4 = _Block_copy(v0 + 2);
  v5 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  v0[15] = swift_getObjectType();

  v0[12] = v5;
  swift_beginAccess();
  sub_238D8FB94((v0 + 12), v1 + 120);
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_238D969A0()
{
  if (qword_27DF6CD58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBF8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine managed app identity changed notification name. Unable to register for notifications. Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238D96B58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  MEMORY[0x28223BE20]();
  v1 = &v5 - v0;
  v2 = sub_238D9E10C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_238D9B2E0(0, 0, v1, &unk_238D9F110, v3);
}

uint64_t sub_238D96C64()
{
  if (qword_27DF6CD40 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D97240();
}

uint64_t sub_238D96D48()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_238D8FAB4(v1 + 120, v0 + 48);
  if (*(v0 + 72))
  {
    sub_238D8FB24((v0 + 48), (v0 + 16));
    sub_238D9DFBC();
    swift_allocObject();
    *(v0 + 168) = sub_238D9DFAC();
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_238D96F40;

    return MEMORY[0x2821848B0]();
  }

  else
  {
    sub_238D8FB34(v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
    if (qword_27DF6CD58 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBF8);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to deregister for managed app identity changed notifications but not currently registered.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_238D96F40(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[23] = v2;

  v7 = v6[20];
  if (v2)
  {
    v8 = sub_238D97080;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;
    v8 = sub_238D8EE48;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D97080()
{
  if (qword_27DF6CD58 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBF8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine identity change notification name. Unable to deregister from notifications that identities have changed Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_238D97240()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_238D973AC;

  return sub_238D96108();
}

uint64_t sub_238D973AC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_238D974C4, v2, 0);
}

uint64_t sub_238D974C4()
{
  if (qword_27DF6CD58 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = sub_238D9E00C();
    __swift_project_value_buffer(v1, qword_27DF6DBF8);

    v2 = sub_238D9DFEC();
    v3 = sub_238D9E1CC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[3];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(*(v5 + 112) + 16);

      _os_log_impl(&dword_238D89000, v2, v3, "Attempting to notify %ld managed app identities AsyncSequences of new state.", v6, 0xCu);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    else
    {
    }

    v7 = v0[3];
    v8 = *(v7 + 112);
    v45 = *(v8 + 16);
    if (!v45)
    {
      break;
    }

    v35 = v0[3];
    v9 = v0[8];
    v10 = v0[5];
    v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v42 = v8 + v38;
    v41 = (v10 + 88);
    v40 = *MEMORY[0x277D85748];
    v39 = (v9 + 8);
    v43 = v9;
    v36 = (v10 + 8);
    v37 = (v9 + 32);

    v12 = 0;
    v46 = MEMORY[0x277D84F90];
    v44 = v11;
    while (v12 < *(v11 + 16))
    {
      v13 = v0[12];
      v14 = v0[6];
      v15 = v0[4];
      v16 = *(v43 + 72);
      v17 = *(v43 + 16);
      v17(v0[10], v42 + v16 * v12, v0[7]);
      v0[2] = v13;

      sub_238D9E14C();
      if ((*v41)(v14, v15) == v40)
      {
        v18 = sub_238D9DFEC();
        v19 = sub_238D9E1DC();
        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[10];
        v22 = v0[7];
        if (v20)
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_238D89000, v18, v19, "Dropping terminated managed app identities AsyncSequence from coordinator.", v23, 2u);
          MEMORY[0x23EE76F90](v23, -1, -1);
        }

        (*v39)(v21, v22);
      }

      else
      {
        v17(v0[9], v0[10], v0[7]);
        v24 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_238D9D984(0, v46[2] + 1, 1, v46);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_238D9D984((v25 > 1), v26 + 1, 1, v24);
        }

        v27 = v0[9];
        v29 = v0[6];
        v28 = v0[7];
        v30 = v0[4];
        (*v39)(v0[10], v28);
        v24[2] = v26 + 1;
        v46 = v24;
        (*v37)(v24 + v38 + v26 * v16, v27, v28);
        (*v36)(v29, v30);
      }

      v11 = v44;
      if (v45 == ++v12)
      {

        v7 = v35;
        v31 = v46;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v31 = MEMORY[0x277D84F90];
LABEL_20:

  *(v7 + 112) = v31;

  if (*(*(v7 + 112) + 16))
  {

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = swift_task_alloc();
    v0[13] = v34;
    *v34 = v0;
    v34[1] = sub_238D8F8AC;

    return sub_238D96D28();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238D979E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D97A1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D96C48();
}

uint64_t sub_238D97AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_238D97AF0, 0, 0);
}

uint64_t sub_238D97AF0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  sub_238D9E20C();
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_238D97BFC;
  v7 = *(v0 + 16);

  return MEMORY[0x282200740](v7);
}

uint64_t sub_238D97BFC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238D97D38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_238D97D38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D97D9C(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value(255, v5, v6, v7);
  v8 = sub_238D9DECC();
  sub_238D97E44(v4 + *(v8 + 28), a1, v5, &v11, v9);
  os_unfair_lock_unlock(v4);
  return v11;
}

uint64_t sub_238D97E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for ConcurrencyUtils.TaskState.Value(0, a3, a3, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = v16 - v10;
  (*(v9 + 16))(v16 - v10, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v12 = sub_238D9E0DC();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v11, 3, v12);
  if (result > 1)
  {
    if (result != 2)
    {
      goto LABEL_8;
    }

    v15 = 0;
LABEL_7:
    *a4 = v15;
    return result;
  }

  if (result == 1)
  {
    (*(v9 + 8))(a1, v8);
    (*(v13 + 16))(a1, a2, v12);
    result = (*(v13 + 56))(a1, 0, 3, v12);
    v15 = 1;
    goto LABEL_7;
  }

  (*(v9 + 8))(v11, v8);
LABEL_8:
  result = sub_238D9E27C();
  __break(1u);
  return result;
}

void sub_238D98084()
{
  v1 = *v0;
  v2 = (v0 + *(*v0 + 88));
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value(255, v3, v4, v5);
  v6 = sub_238D9DECC();
  sub_238D98128(v2 + *(v6 + 28), v3);

  os_unfair_lock_unlock(v2);
}

uint64_t sub_238D98128(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v4 = sub_238D9E0DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = v17 - v6;
  v10 = type metadata accessor for ConcurrencyUtils.TaskState.Value(0, a2, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = v17 - v12;
  (*(v11 + 16))(v17 - v12, a1, v10);
  v14 = (*(v5 + 48))(v13, 3, v4);
  if (v14 <= 1)
  {
    if (!v14)
    {
      (*(v11 + 8))(a1, v10);
      (*(v5 + 32))(v7, v13, v4);
      (*(v5 + 56))(a1, 2, 3, v4);
      sub_238D9E0EC();
      sub_238D9AEF8();
      v15 = swift_allocError();
      sub_238D9E01C();
      v17[1] = v15;
      sub_238D9E0BC();
      return (*(v5 + 8))(v7, v4);
    }

    goto LABEL_5;
  }

  if (v14 == 3)
  {
LABEL_5:
    (*(v11 + 8))(a1, v10);
    return (*(v5 + 56))(a1, 2, 3, v4);
  }

  result = sub_238D9E27C();
  __break(1u);
  return result;
}

void sub_238D98410(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value(255, v5, v6, v7);
  v8 = sub_238D9DECC();
  sub_238D984BC(v4 + *(v8 + 28), a1, v5);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_238D984BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v6 = sub_238D9E0DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = v17 - v8;
  v12 = type metadata accessor for ConcurrencyUtils.TaskState.Value(0, a3, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v15 = v17 - v14;
  (*(v13 + 16))(v17 - v14, a1, v12);
  result = (*(v7 + 48))(v15, 3, v6);
  if (result > 1)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (!result)
  {
    (*(v13 + 8))(a1, v12);
    (*(v7 + 32))(v9, v15, v6);
    (*(v7 + 56))(a1, 3, 3, v6);
    v17[1] = a2;
    MEMORY[0x23EE76E90](a2);
    sub_238D9E0BC();
    return (*(v7 + 8))(v9, v6);
  }

  result = sub_238D9E27C();
  __break(1u);
  return result;
}

void sub_238D9874C(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value(255, v5, v6, v7);
  v8 = sub_238D9DECC();
  sub_238D987F8(v4 + *(v8 + 28), a1, v5);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_238D987F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *(a3 - 8);
  v19 = a2;
  MEMORY[0x28223BE20]();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v7 = sub_238D9E0DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v18 - v9;
  v13 = type metadata accessor for ConcurrencyUtils.TaskState.Value(0, a3, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20]();
  v16 = &v18 - v15;
  (*(v14 + 16))(&v18 - v15, a1, v13);
  result = (*(v8 + 48))(v16, 3, v7);
  if (result > 1)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (!result)
  {
    (*(v14 + 8))(a1, v13);
    (*(v8 + 32))(v10, v16, v7);
    (*(v8 + 56))(a1, 3, 3, v7);
    (*(v18 + 16))(v6, v19, a3);
    sub_238D9E0CC();
    return (*(v8 + 8))(v10, v7);
  }

  result = sub_238D9E27C();
  __break(1u);
  return result;
}

uint64_t sub_238D98B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConcurrencyUtils.TaskState.Value(255, *(*v4 + 80), a3, a4);
  sub_238D9DECC();
  sub_238D9DEDC();
  sub_238D9E1FC();
  return v4;
}

uint64_t sub_238D98B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_238D98B04(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t *sub_238D98C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for ConcurrencyUtils.TaskState.Value(0, *(*v4 + 80), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = v4 + *(v5 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v11 = sub_238D9E0DC();
  (*(*(v11 - 8) + 56))(v9, 1, 3, v11);
  *v10 = 0;
  v12 = *(sub_238D9DECC() + 28);
  v13 = sub_238D9DEDC();
  bzero(&v10[v12], *(*(v13 - 8) + 64));
  (*(v7 + 32))(&v10[v12], v9, v6);
  return v4;
}

uint64_t sub_238D98DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238D98DD8, 0, 0);
}

uint64_t sub_238D98DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConcurrencyUtils.TaskState(0, *(v4 + 40), a3, a4);
  v5 = swift_allocObject();
  v15 = *(v4 + 24);
  v9 = sub_238D98C1C(v5, v6, v7, v8);
  *(v4 + 48) = v9;
  v10 = swift_task_alloc();
  *(v4 + 56) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v15;
  v11 = swift_task_alloc();
  *(v4 + 64) = v11;
  *v11 = v4;
  v11[1] = sub_238D98F00;
  v12 = *(v4 + 40);
  v13 = *(v4 + 16);

  return MEMORY[0x282200830](v13, &unk_238D9F1E8, v10, sub_238D9AEF4, v9, 0, 0, v12);
}

uint64_t sub_238D98F00()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_238D99080;
  }

  else
  {

    v2 = sub_238D9901C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238D9901C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D99080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D990EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x2822009F8](sub_238D99138, 0, 0);
}

uint64_t sub_238D99138()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v1 + 80);
  *v4 = v0;
  v4[1] = sub_238D99234;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001FLL, 0x8000000238DA0440, sub_238D9AF50, v3, v5);
}

uint64_t sub_238D99234()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238D99370, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_238D99370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D993D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  result = sub_238D97D9C(a1);
  if (result)
  {
    v11 = sub_238D9E10C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a3;
    v12[5] = a4;
    v12[6] = a2;

    sub_238D9B2E0(0, 0, v9, &unk_238D9F1F8, v12);
  }

  return result;
}

uint64_t sub_238D9950C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_238D99678;

  return v12(v9);
}

uint64_t sub_238D99678()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_238D9981C;
  }

  else
  {
    v2 = sub_238D9978C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238D9978C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_238D9874C(v1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_238D9981C()
{
  v1 = *(v0 + 56);
  sub_238D98410(v1);
  MEMORY[0x23EE76E80](v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238D99894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_238D9E20C();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D999B4, 0, 0);
}

uint64_t sub_238D999B4()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[4];
  v14 = v0[6];
  v6 = sub_238D9E10C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v2;

  v0[15] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v9 = sub_238D9E1BC();
  sub_238D9A2C0(v1, &unk_238D9F1C0, v8, v9);
  sub_238D9AC1C(v1);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v14;
  sub_238D9A2C0(v1, &unk_238D9F1D0, v10, v9);
  sub_238D9AC1C(v1);
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_238D99BCC;
  v12 = v0[12];

  return MEMORY[0x2822004D0](v12, 0, 0, v9);
}

uint64_t sub_238D99BCC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_238D99F9C;
  }

  else
  {
    v2 = sub_238D99CE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238D99CE0()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[13];
  if (v5 == 1)
  {
    v7 = *(v3 + 56);
    v7(v0[13], 1, 1, v2);
    if (v4(v1, 1, v2) != 1)
    {
      (*(v0[10] + 8))(v0[12], v0[9]);
    }
  }

  else
  {
    (*(v3 + 32))(v0[13], v1, v2);
    v7 = *(v3 + 56);
    v7(v6, 0, 1, v2);
  }

  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  sub_238D9E1AC();
  (*(v10 + 32))(v9, v8, v11);
  v13 = v4(v9, 1, v12);
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[2];
  if (v13 == 1)
  {
    v7(v0[2], 1, 1, v0[8]);
    if (v4(v14, 1, v15) != 1)
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
    }
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[11], v0[8]);
    v7(v16, 0, 1, v15);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_238D99F9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D9A024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a7;
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_238D9A0E0;

  return sub_238D98DB4(a1, a4, a5, a7);
}

uint64_t sub_238D9A0E0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_238D9A214, 0, 0);
  }
}

uint64_t sub_238D9A214()
{
  v1 = v0[5];
  sub_238D9E17C();
  if (v1)
  {
    (*(*(v0[3] - 8) + 8))(v0[2]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_238D9A2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  MEMORY[0x28223BE20]();
  v9 = v18 - v8;
  sub_238D9ADD0(a1, v18 - v8);
  v10 = sub_238D9E10C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_238D9AC1C(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_238D9E0AC();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_238D9E0FC();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v5;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_238D9A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_238D9A52C;

  return MEMORY[0x282200480](a4);
}

uint64_t sub_238D9A52C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_238D9A65C, 0, 0);
  }
}

uint64_t sub_238D9A65C()
{
  sub_238D9AD7C();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D9A71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConcurrencyUtils.TaskState.Value(255, *(a1 + 80), a3, a4);
  result = sub_238D9DECC();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238D9A7EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for ConcurrencyUtils.TaskState.Value(255, *a1, a3, a4);
  return sub_238D9DECC();
}

uint64_t sub_238D9A840(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v1 = sub_238D9E0DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_238D9A8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v5 = sub_238D9E0DC();
  v6 = (*(*(v5 - 8) + 48))(a1, a2, v5);
  if (v6 >= 4)
  {
    return v6 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238D9A984(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 3);
  }

  else
  {
    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v7 = sub_238D9E0DC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, a3, v7);
}

uint64_t sub_238D9AA30(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_238D8C4A4;

  return sub_238D99894(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_238D9AB08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_238D9AB48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238D8D614;

  return sub_238D9A024(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_238D9AC1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238D9AC84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238D9ACBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238D8D614;

  return sub_238D9A494(a1, v4, v5, v6);
}

unint64_t sub_238D9AD7C()
{
  result = qword_27DF6D000;
  if (!qword_27DF6D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6D000);
  }

  return result;
}

uint64_t sub_238D9ADD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238D9AE40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238D8D614;

  return sub_238D990EC(a1, v4, v5, v6);
}

unint64_t sub_238D9AEF8()
{
  result = qword_27DF6D008;
  if (!qword_27DF6D008)
  {
    sub_238D9E0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6D008);
  }

  return result;
}

uint64_t sub_238D9AF5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238D9AFA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238D8C4A4;

  return sub_238D9950C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_238D9B07C()
{
  v0 = sub_238D9E00C();
  __swift_allocate_value_buffer(v0, qword_27DF6DBC8);
  __swift_project_value_buffer(v0, qword_27DF6DBC8);
  return sub_238D9DFFC();
}

uint64_t sub_238D9B0FC()
{
  v0 = sub_238D9E00C();
  __swift_allocate_value_buffer(v0, qword_27DF6DBE0);
  __swift_project_value_buffer(v0, qword_27DF6DBE0);
  return sub_238D9DFFC();
}

uint64_t sub_238D9B17C()
{
  v0 = sub_238D9E00C();
  __swift_allocate_value_buffer(v0, qword_27DF6DBF8);
  __swift_project_value_buffer(v0, qword_27DF6DBF8);
  return sub_238D9DFFC();
}

uint64_t sub_238D9B1FC()
{
  v0 = sub_238D9E00C();
  __swift_allocate_value_buffer(v0, qword_27DF6DC10);
  __swift_project_value_buffer(v0, qword_27DF6DC10);
  return sub_238D9DFFC();
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

uint64_t sub_238D9B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_238D94F30(a3, v24 - v9, &qword_27DF6CE20, &qword_238D9F100);
  v11 = sub_238D9E10C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_238D8FB34(v10, &qword_27DF6CE20, &qword_238D9F100);
  }

  else
  {
    sub_238D9E0FC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_238D9E0AC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_238D9E04C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_238D8FB34(a3, &qword_27DF6CE20, &qword_238D9F100);

      return v22;
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

  sub_238D8FB34(a3, &qword_27DF6CE20, &qword_238D9F100);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_238D9B5E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_238D9DE2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_238D9DE1C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

double sub_238D9B6D4()
{
  type metadata accessor for ManagedAppPasswordCoordinator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  qword_27DF6DC28 = v0;
  return result;
}

uint64_t sub_238D9B728(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE28, &unk_238D9EEC0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D9B8D0, v1, 0);
}

uint64_t sub_238D9B8D0()
{
  v1 = v0[14];
  v21 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE30, &unk_238D9F120);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_238D9E11C();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v21, v1, v2);
  v8 = *(v7 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_238D9D984(0, v8[2] + 1, 1, v8);
    *(v7 + 112) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_238D9D984((v10 > 1), v11 + 1, 1, v8);
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];
  v8[2] = v11 + 1;
  (*(v13 + 32))(v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11, v12, v14);
  *(v7 + 112) = v8;
  if (qword_27DF6CD60 != -1)
  {
    swift_once();
  }

  v15 = sub_238D9E00C();
  __swift_project_value_buffer(v15, qword_27DF6DC10);
  v16 = sub_238D9DFEC();
  v17 = sub_238D9E1CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_238D89000, v16, v17, "Notifying new managed app passwords AsyncSequence of initial state.", v18, 2u);
    MEMORY[0x23EE76F90](v18, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_238D9BB7C;

  return sub_238D9BD68();
}

uint64_t sub_238D9BB7C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_238D9BC94, v2, 0);
}

uint64_t sub_238D9BC94()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[2] = v0[16];
  sub_238D9E14C();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_238D8DCB8;

  return sub_238D9C124();
}

uint64_t sub_238D9BD88()
{
  sub_238D9DFBC();
  swift_allocObject();
  *(v0 + 24) = sub_238D9DFAC();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_238D9BE40;

  return MEMORY[0x282184878]();
}

uint64_t sub_238D9BE40(uint64_t a1)
{
  v4 = *v2;
  v4[5] = v1;

  v5 = v4[2];
  if (v1)
  {
    v6 = sub_238D9BF7C;
  }

  else
  {
    v4[6] = a1;
    v6 = sub_238D8E080;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238D9BF7C()
{
  if (qword_27DF6CD60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DC10);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x23EE76E90](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to fetch managed app password identifiers. Returning empty array. Error: %@", v6, 0xCu);
    sub_238D8FB34(v7, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v7, -1, -1);
    MEMORY[0x23EE76F90](v6, -1, -1);
  }

  v9 = *(v0 + 40);

  MEMORY[0x23EE76E80](v9);
  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_238D9C144()
{
  v1 = v0[22];
  swift_beginAccess();
  sub_238D94F30(v1 + 120, (v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  v2 = v0[11];
  sub_238D8FB34((v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  if (v2)
  {
    if (qword_27DF6CD60 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DC10);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to register for managed app password changed notifications but already registered, so ignoring.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_238D9DFBC();
    swift_allocObject();
    v0[23] = sub_238D9DFAC();
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_238D9C340;

    return MEMORY[0x2821848B8]();
  }
}

uint64_t sub_238D9C340(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[25] = v2;

  v7 = v6[22];
  if (v2)
  {
    v8 = sub_238D9C610;
  }

  else
  {
    v6[26] = a2;
    v6[27] = a1;
    v8 = sub_238D9C480;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D9C480()
{
  v1 = v0[22];
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_238D9E02C();

  v0[6] = sub_238D9C7C8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238D9B5E0;
  v0[5] = &block_descriptor_2;
  v4 = _Block_copy(v0 + 2);
  v5 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  v0[15] = swift_getObjectType();

  v0[12] = v5;
  swift_beginAccess();
  sub_238D8FB94((v0 + 12), v1 + 120);
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_238D9C610()
{
  if (qword_27DF6CD60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DC10);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine managed app password changed notification name. Unable to register for notifications. Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238D9C7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  MEMORY[0x28223BE20]();
  v1 = &v5 - v0;
  v2 = sub_238D9E10C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_238D9B2E0(0, 0, v1, &unk_238D9F2E8, v3);
}

uint64_t sub_238D9C8D4()
{
  if (qword_27DF6CD68 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D9CEC0();
}

uint64_t sub_238D9C9B8()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_238D94F30(v1 + 120, v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
  if (*(v0 + 72))
  {
    sub_238D8FB24((v0 + 48), (v0 + 16));
    sub_238D9DFBC();
    swift_allocObject();
    *(v0 + 168) = sub_238D9DFAC();
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_238D9CBC0;

    return MEMORY[0x2821848B8]();
  }

  else
  {
    sub_238D8FB34(v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
    if (qword_27DF6CD60 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DC10);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to deregister for managed app password changed notifications but not currently registered.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_238D9CBC0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[23] = v2;

  v7 = v6[20];
  if (v2)
  {
    v8 = sub_238D9CD00;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;
    v8 = sub_238D8EE48;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D9CD00()
{
  if (qword_27DF6CD60 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DC10);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine password change notification name. Unable to deregister from notifications that passwords have changed Error: %@", v7, 0xCu);
    sub_238D8FB34(v8, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v8, -1, -1);
    MEMORY[0x23EE76F90](v7, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {

    MEMORY[0x23EE76E80](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_238D9CEC0()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_238D9D02C;

  return sub_238D9BD68();
}

uint64_t sub_238D9D02C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_238D9D144, v2, 0);
}

uint64_t sub_238D9D144()
{
  if (qword_27DF6CD60 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = sub_238D9E00C();
    __swift_project_value_buffer(v1, qword_27DF6DC10);

    v2 = sub_238D9DFEC();
    v3 = sub_238D9E1CC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[3];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(*(v5 + 112) + 16);

      _os_log_impl(&dword_238D89000, v2, v3, "Attempting to notify %ld managed app passwords AsyncSequences of new state.", v6, 0xCu);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    else
    {
    }

    v7 = v0[3];
    v8 = *(v7 + 112);
    v45 = *(v8 + 16);
    if (!v45)
    {
      break;
    }

    v35 = v0[3];
    v9 = v0[8];
    v10 = v0[5];
    v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v42 = v8 + v38;
    v41 = (v10 + 88);
    v40 = *MEMORY[0x277D85748];
    v39 = (v9 + 8);
    v43 = v9;
    v36 = (v10 + 8);
    v37 = (v9 + 32);

    v12 = 0;
    v46 = MEMORY[0x277D84F90];
    v44 = v11;
    while (v12 < *(v11 + 16))
    {
      v13 = v0[12];
      v14 = v0[6];
      v15 = v0[4];
      v16 = *(v43 + 72);
      v17 = *(v43 + 16);
      v17(v0[10], v42 + v16 * v12, v0[7]);
      v0[2] = v13;

      sub_238D9E14C();
      if ((*v41)(v14, v15) == v40)
      {
        v18 = sub_238D9DFEC();
        v19 = sub_238D9E1DC();
        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[10];
        v22 = v0[7];
        if (v20)
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_238D89000, v18, v19, "Dropping terminated managed app passwords AsyncSequence from coordinator.", v23, 2u);
          MEMORY[0x23EE76F90](v23, -1, -1);
        }

        (*v39)(v21, v22);
      }

      else
      {
        v17(v0[9], v0[10], v0[7]);
        v24 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_238D9D984(0, v46[2] + 1, 1, v46);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_238D9D984((v25 > 1), v26 + 1, 1, v24);
        }

        v27 = v0[9];
        v29 = v0[6];
        v28 = v0[7];
        v30 = v0[4];
        (*v39)(v0[10], v28);
        v24[2] = v26 + 1;
        v46 = v24;
        (*v37)(v24 + v38 + v26 * v16, v27, v28);
        (*v36)(v29, v30);
      }

      v11 = v44;
      if (v45 == ++v12)
      {

        v7 = v35;
        v31 = v46;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v31 = MEMORY[0x277D84F90];
LABEL_20:

  *(v7 + 112) = v31;

  if (*(*(v7 + 112) + 16))
  {

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = swift_task_alloc();
    v0[13] = v34;
    *v34 = v0;
    v34[1] = sub_238D8F8AC;

    return sub_238D9C998();
  }
}

uint64_t sub_238D9D64C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238D9D744;

  return v6(a1);
}

uint64_t sub_238D9D744()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_238D9D83C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6D018, &qword_238D9F308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6D020, &qword_238D9F310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_238D9D984(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6D010, &unk_238D9F2D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238D9DB8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D9DBC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D9C8B8();
}

uint64_t sub_238D9DC70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D9DCA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238D8D614;

  return sub_238D9D64C(a1, v4);
}

uint64_t sub_238D9DD60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238D8C4A4;

  return sub_238D9D64C(a1, v4);
}