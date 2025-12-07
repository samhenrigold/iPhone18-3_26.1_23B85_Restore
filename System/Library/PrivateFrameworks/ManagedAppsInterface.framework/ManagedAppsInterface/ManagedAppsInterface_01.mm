unint64_t sub_25807B794()
{
  result = qword_27F91A2E8;
  if (!qword_27F91A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A2E8);
  }

  return result;
}

unint64_t sub_25807B7E8()
{
  result = qword_27F91A2F8;
  if (!qword_27F91A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A2F8);
  }

  return result;
}

unint64_t sub_25807B83C()
{
  result = qword_27F91A300;
  if (!qword_27F91A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A300);
  }

  return result;
}

unint64_t sub_25807B890()
{
  result = qword_27F91A308;
  if (!qword_27F91A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A308);
  }

  return result;
}

unint64_t sub_25807B928()
{
  result = qword_27F91A330;
  if (!qword_27F91A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A330);
  }

  return result;
}

unint64_t sub_25807B980()
{
  result = qword_27F91A338;
  if (!qword_27F91A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A338);
  }

  return result;
}

unint64_t sub_25807B9D8()
{
  result = qword_27F91A340;
  if (!qword_27F91A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A340);
  }

  return result;
}

unint64_t sub_25807BA30()
{
  result = qword_27F91A348;
  if (!qword_27F91A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A348);
  }

  return result;
}

unint64_t sub_25807BA88()
{
  result = qword_27F91A350;
  if (!qword_27F91A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A350);
  }

  return result;
}

unint64_t sub_25807BAE0()
{
  result = qword_27F91A358;
  if (!qword_27F91A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A358);
  }

  return result;
}

unint64_t sub_25807BB38()
{
  result = qword_27F91A360;
  if (!qword_27F91A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A360);
  }

  return result;
}

unint64_t sub_25807BB90()
{
  result = qword_27F91A368;
  if (!qword_27F91A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A368);
  }

  return result;
}

unint64_t sub_25807BBE8()
{
  result = qword_27F91A370;
  if (!qword_27F91A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A370);
  }

  return result;
}

unint64_t sub_25807BC40()
{
  result = qword_27F91A378;
  if (!qword_27F91A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A378);
  }

  return result;
}

unint64_t sub_25807BC98()
{
  result = qword_27F91A380;
  if (!qword_27F91A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A380);
  }

  return result;
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getConfigDetailsData()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4D4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getPasswordIdentifiers()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4CC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getPassword(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25807C050;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_25807C050(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getCertificateIdentifiers()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4CC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getCertificate(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25807E4CC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getIdentityIdentifiers()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4CC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getIdentity(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25807C5EC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_25807C5EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.reportConfigDetailsState(code:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25807C828;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_25807C828()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.notificationNameForConfigDetailChange()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4D4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.notificationNameForPasswordChange()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80) + **(a2 + 80));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4D4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.notificationNameForCertificateChange()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4D4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.notificationNameForIdentityChange()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4D4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getConfigDetailsData(clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25807E4D4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getPasswordIdentifiers(clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25807E4CC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getPassword(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25807E4D4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getCertificateIdentifiers(clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25807E4CC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getCertificate(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25807E4CC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getIdentityIdentifiers(clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25807E4CC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getIdentityProxyEndpoint(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25807E4CC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.reportConfigDetailsState(code:reason:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25807E4D0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.setAppConfig(recordID:appConfigRecord:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_25807E4D0;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.removeAppConfig(recordID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25807E4D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.updateAppBundleID(for:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25807E4D0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25807E4D0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.activateAppConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25807E4D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.disableAppConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25807E4D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.completeRemovalOfAppConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25807E4D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.getAllAppConfigState()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4CC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsInternalProtocol.touch()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4D0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsInternalProtocol.dumpDatabase()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4CC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsInternalProtocol.eraseDatabase()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25807E4D0;

  return v7(a1, a2);
}

uint64_t sub_25807E560(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_25807E5C4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_25807E6DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t ClientIdentity.personaID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ClientIdentity.personaID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ClientIdentity.nickName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ClientIdentity.nickName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ClientIdentity.init(codeIdentity:personaID:nickName:isEnterprisePersona:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t ClientIdentity.init(codeIdentity:personaInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v15 = v14;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 56))(v16, v17);
  *a3 = a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = v18 & 1;

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_25807EA18()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_25807EA48(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_25807EAA0()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_25807EAD0(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25807EC20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_25807EC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25807ECC4()
{
  v0 = sub_25807FBE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A408, &qword_2580822A8);
  MEMORY[0x28223BE20]();
  v5 = &v9 - v4;
  v6 = sub_25807FC28();
  __swift_allocate_value_buffer(v6, qword_27F91A3A8);
  __swift_project_value_buffer(v6, qword_27F91A3A8);
  swift_beginAccess();

  v7 = sub_25807FCB8();

  v8 = DMCSystemContainerPathWithBundleIdentifier();

  if (v8)
  {
    sub_25807FCE8();

    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
    sub_25807FC18();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25807EEE0()
{
  v0 = sub_25807FC28();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27F91A3C0);
  __swift_project_value_buffer(v0, qword_27F91A3C0);
  if (qword_27F919E70 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F91A3A8);
  (*(v1 + 16))(v4, v5, v0);
  sub_25807FC08();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_25807F038()
{
  v0 = sub_25807FC28();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27F91A3D8);
  __swift_project_value_buffer(v0, qword_27F91A3D8);
  if (qword_27F919E78 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F91A3C0);
  (*(v1 + 16))(v4, v5, v0);
  sub_25807FC08();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_25807F194()
{
  v0 = sub_25807FC28();
  __swift_allocate_value_buffer(v0, qword_27F91A3F0);
  __swift_project_value_buffer(v0, qword_27F91A3F0);
  return sub_25807FBF8();
}

uint64_t static ManagedAppsServicePaths.storageDirectoryURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_27F919E88 != -1)
    {
      swift_once();
    }

    v3 = qword_27F91A3F0;
  }

  else
  {
    if (qword_27F919E80 != -1)
    {
      swift_once();
    }

    v3 = qword_27F91A3D8;
  }

  v4 = sub_25807FC28();
  v5 = __swift_project_value_buffer(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

unint64_t ManagedAppsServiceScope.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_25807F328()
{
  result = qword_27F91A410;
  if (!qword_27F91A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A410);
  }

  return result;
}

uint64_t sub_25807F37C()
{
  v1 = *v0;
  sub_258080058();
  MEMORY[0x259C777F0](v1);
  return sub_258080078();
}

uint64_t sub_25807F3F0(uint64_t a1)
{
  v2 = *v1;
  sub_258080058();
  MEMORY[0x259C777F0](v2);
  return sub_258080078();
}

unint64_t *sub_25807F434@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_25807F51C()
{
  result = qword_27F91A418;
  if (!qword_27F91A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A418);
  }

  return result;
}

id static ManagedAppsXPCInterfaceFactory.internalInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_25807F894(v0);
  return v0;
}

id static ManagedAppsXPCInterfaceFactory.publicInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t ManagedAppsPublicXPCProtocolError.description.getter()
{
  v1 = 0x6520726576726553;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265746E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t ManagedAppsPublicXPCProtocolError.errorDescription.getter()
{
  v1 = 0x6520726576726553;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265746E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t ManagedAppsPublicXPCProtocolError.hashValue.getter()
{
  v1 = *v0;
  sub_258080058();
  MEMORY[0x259C777F0](v1);
  return sub_258080078();
}

uint64_t sub_25807F794(uint64_t a1)
{
  v2 = sub_25807FB0C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25807F7D0(uint64_t a1)
{
  v2 = sub_25807FB0C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_25807F80C()
{
  v1 = 0x6520726576726553;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265746E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_25807F894(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A438, &qword_258082550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2580823D0;
  v2 = sub_25807FB60(0, &qword_27F91A440, 0x277CBEA60);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A448, &qword_258082558);
  *(v1 + 32) = v2;
  v3 = sub_25807FB60(0, &qword_27F91A240, 0x277D034C8);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F91A450, &unk_258082560);
  *(v1 + 64) = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v5 = sub_25807FD78();

  [v4 initWithArray_];

  sub_25807FDC8();
  __break(1u);
}

unint64_t sub_25807FA40()
{
  result = qword_27F91A420;
  if (!qword_27F91A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A420);
  }

  return result;
}

unint64_t sub_25807FA98()
{
  result = qword_27F91A428;
  if (!qword_27F91A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A428);
  }

  return result;
}

unint64_t sub_25807FB0C()
{
  result = qword_27F91A430;
  if (!qword_27F91A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A430);
  }

  return result;
}

uint64_t sub_25807FB60(uint64_t a1, unint64_t *a2, void *a3)
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