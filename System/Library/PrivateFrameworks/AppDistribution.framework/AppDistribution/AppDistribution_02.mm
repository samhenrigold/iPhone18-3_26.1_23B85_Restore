uint64_t sub_23FF856C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + 16);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_23FF8A904(a1, v7, isUniquelyReferenced_nonNull_native);
  *(v1 + 24) = v14;
  swift_endAccess();
  sub_23FFD947C();
  v9 = sub_23FFD949C();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_23FFD946C();

  v10 = sub_23FFD945C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = v2;
  sub_23FF86474(0xD00000000000001DLL, 0x800000023FFEB430, v6, &unk_23FFDF248, v11);

  return sub_23FF64248(v6, &qword_27E3A2920, &qword_23FFDBCE8);
}

uint64_t AppLibrary.updateInstallState(forUpdated:)(uint64_t a1)
{
  swift_getKeyPath();
  v4 = a1;
  sub_23FF85BE0(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  if (*(a1 + 40))
  {
    swift_getKeyPath();
    v4 = v1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FEC();

    sub_23FF8AA50(&v4, a1);
  }

  else
  {
    swift_getKeyPath();
    v4 = v1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FEC();

    v4 = *(v1 + 32);

    sub_23FF8AC5C(a1);
  }

  swift_getKeyPath();
  v4 = a1;
  sub_23FFD8FEC();

  if (*(a1 + 96))
  {
    swift_getKeyPath();
    v4 = v1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FEC();

    sub_23FF8AA50(&v4, a1);
  }

  else
  {
    swift_getKeyPath();
    v4 = v1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FEC();

    v4 = *(v1 + 40);

    sub_23FF8AC5C(a1);
  }
}

uint64_t sub_23FF85BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppLibrary.app(forAppleItemID:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16) && (v4 = sub_23FF88FF8(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for AppLibrary.App(0);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = swift_allocObject();
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0;
    v7 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
    v8 = type metadata accessor for MarketplaceKitError(0);
    (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
    sub_23FFD8FFC();
    *(v6 + 16) = a1;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_23FF686CC(v11);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v11[0] = v6;
    sub_23FF85BE0(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
    sub_23FFD8FDC();

    sub_23FF856C4(v6);
  }

  return v6;
}

uint64_t sub_23FF85E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23FFD908C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3190, &qword_23FFDF260);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3198, &qword_23FFDF268);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31A0, &unk_23FFDF270);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_23FFD946C();
  v5[15] = sub_23FFD945C();
  v10 = sub_23FFD942C();
  v5[16] = v10;
  v5[17] = v9;

  return MEMORY[0x2822009F8](sub_23FF8604C, v10, v9);
}

uint64_t sub_23FF8604C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_23FF693F8();
  sub_23FFD94CC();
  (*(v2 + 8))(v1, v3);
  v4 = sub_23FFD945C();
  v0[18] = v4;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_23FF86158;
  v6 = v0[11];
  v7 = v0[7];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8, v6);
}

uint64_t sub_23FF86158()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_23FF8629C, v3, v2);
}

uint64_t sub_23FF8629C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[6];
    v7 = v0[2];
    (*(v3 + 32))(v6, v1, v2);
    sub_23FF6973C(v6);
    AppLibrary.updateInstallState(forUpdated:)(v7);
    (*(v3 + 8))(v6, v2);
    v8 = sub_23FFD945C();
    v0[18] = v8;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_23FF86158;
    v10 = v0[11];
    v11 = v0[7];
    v12 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v11, v8, v12, v10);
  }
}

uint64_t sub_23FF86474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23FF642A8(a3, v25 - v10, &qword_27E3A2920, &qword_23FFDBCE8);
  v12 = sub_23FFD949C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23FF64248(v11, &qword_27E3A2920, &qword_23FFDBCE8);
  }

  else
  {
    sub_23FFD948C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23FFD942C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23FFD937C() + 32;
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

uint64_t AppLibrary.InstallationRequest.alternativeDistributionPackageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23FFD8F6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppLibrary.InstallationRequest.alternativeDistributionPackageURL.setter(uint64_t a1)
{
  v3 = sub_23FFD8F6C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppLibrary.InstallationRequest.account.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 20));

  return v1;
}

uint64_t AppLibrary.InstallationRequest.account.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppLibrary.InstallationRequest.installVerificationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 24));

  return v1;
}

uint64_t AppLibrary.InstallationRequest.installVerificationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppLibrary.InstallationRequest.appShareURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 28);

  return sub_23FF8ADF4(a1, v3);
}

uint64_t AppLibrary.InstallationRequest.init(alternativeDistributionPackageURL:account:installVerificationToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v13 = v12[7];
  v14 = sub_23FFD8F6C();
  v15 = *(v14 - 8);
  v19 = *(v15 + 56);
  v19(a6 + v13, 1, 1, v14);
  (*(v15 + 32))(a6, a1, v14);
  v16 = (a6 + v12[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + v12[6]);
  *v17 = a4;
  v17[1] = a5;
  sub_23FF64248(a6 + v13, &qword_27E3A2418, &qword_23FFDADC0);

  return (v19)(a6 + v13, 1, 1, v14);
}

uint64_t AppLibrary.requestAppInstallation(for:account:installVerificationToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for AppLibrary.InstallationRequest(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF86C78, 0, 0);
}

uint64_t sub_23FF86C78()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v16 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_23FFD8F6C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  v9 = v2[7];
  v10 = *(v8 + 56);
  v10(v1 + v9, 1, 1, v7);
  v11 = (v1 + v2[5]);
  *v11 = v5;
  v11[1] = v4;
  v12 = (v1 + v2[6]);
  *v12 = v16;
  v12[1] = v3;

  sub_23FF64248(v1 + v9, &qword_27E3A2418, &qword_23FFDADC0);
  v10(v1 + v9, 1, 1, v7);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_23FF86E2C;
  v14 = v0[8];

  return sub_23FF8B838(v14);
}

uint64_t sub_23FF86E2C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23FF86FC4;
  }

  else
  {
    v2 = sub_23FF86F40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF86F40()
{
  sub_23FF8BDB0(*(v0 + 64), type metadata accessor for AppLibrary.InstallationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF86FC4()
{
  sub_23FF8BDB0(*(v0 + 64), type metadata accessor for AppLibrary.InstallationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppLibrary.requestAppInstallation(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23FF6E6E4;

  return sub_23FF8B838(a1);
}

uint64_t AppLibrary.requestAppInstallationFromBrowser(for:referrer:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_23FFD8F6C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  type metadata accessor for LinkMetadata(0);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3160, &qword_23FFDEFC0);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for AppInstallRequest(0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF8727C, 0, 0);
}

uint64_t sub_23FF8727C()
{
  v1 = v0[11];
  v13 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[2];
  v8 = *(v0[5] + 16);
  v8(v4, v0[3], v6);
  v8(v5, v7, v6);
  sub_23FF67B04(v4, v5, v3);
  sub_23FF53670(v3, v2);
  if ((*(v1 + 48))(v2, 1, v13) == 1)
  {
    sub_23FF64248(v0[9], &qword_27E3A3160, &qword_23FFDEFC0);
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF85BE0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_23FF8BD4C(v0[9], v0[12]);
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_23FF87524;
    v12 = v0[12];

    return sub_23FF54AC4(v12, sub_23FF53CBC, 0);
  }
}

uint64_t sub_23FF87524()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23FF876F4;
  }

  else
  {
    v2 = sub_23FF87638;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF87638()
{
  sub_23FF8BDB0(*(v0 + 96), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF876F4()
{
  sub_23FF8BDB0(*(v0 + 96), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppLibrary.requestAppUpdate(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23FF8C81C;

  return sub_23FF8BE10(a1);
}

uint64_t AppLibrary.requestAppUpdate(for:account:installVerificationToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for AppLibrary.InstallationRequest(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF878F0, 0, 0);
}

uint64_t sub_23FF878F0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v16 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_23FFD8F6C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  v9 = v2[7];
  v10 = *(v8 + 56);
  v10(v1 + v9, 1, 1, v7);
  v11 = (v1 + v2[5]);
  *v11 = v5;
  v11[1] = v4;
  v12 = (v1 + v2[6]);
  *v12 = v16;
  v12[1] = v3;

  sub_23FF64248(v1 + v9, &qword_27E3A2418, &qword_23FFDADC0);
  v10(v1 + v9, 1, 1, v7);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_23FF87AA4;
  v14 = v0[8];

  return sub_23FF8BE10(v14);
}

uint64_t sub_23FF87AA4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23FF8C84C;
  }

  else
  {
    v2 = sub_23FF8C820;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t AppLibrary.didAuthenticate(account:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23FF87BD8, 0, 0);
}

uint64_t sub_23FF87BD8()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_23FF87CDC;

  return (sub_23FF579FC)();
}

uint64_t sub_23FF87CDC()
{

  if (v0)
  {

    v1 = sub_23FF8C858;
  }

  else
  {
    v1 = sub_23FF87DF4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23FF87E24()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_23FF87F20;

  return sub_23FF57BFC(v0 + 16, 1, sub_23FFC2C24, 0);
}

uint64_t sub_23FF87F20()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23FF8817C;
  }

  else
  {
    v2 = sub_23FF88034;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF88034()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 == 9)
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 24);
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF85BE0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v1, v6, v2);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_23FF8817C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t AppLibrary.signalAccountHasAuthenticated(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23FF88208, 0, 0);
}

uint64_t sub_23FF88208()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_23FF8830C;

  return (sub_23FF579FC)();
}

uint64_t sub_23FF8830C()
{

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_23FF8C858, 0, 0);
}

uint64_t sub_23FF88440()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_23FF8853C;

  return sub_23FF57BFC(v0 + 16, 0, sub_23FFC2C24, 0);
}

uint64_t sub_23FF8853C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23FF88760;
  }

  else
  {
    v2 = sub_23FF88650;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF88650()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 != 7)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF85BE0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v4, v5, v3);

    v1 = 0;
    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v1, v2);
}

uint64_t sub_23FF88760()
{
  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t AppLibrary.setSearchTerritory(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for SetPublicDataRequest(0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF88858, 0, 0);
}

uint64_t sub_23FF88858()
{
  v1 = v0[3];
  v2 = v0[4];
  *v2 = v0[2];
  v2[1] = v1;
  type metadata accessor for SetPublicDataRequest.Request(0);
  swift_storeEnumTagMultiPayload();
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FF88980;
  v5 = v0[4];

  return sub_23FF57F80(v5, sub_23FFC73BC, 0);
}

uint64_t sub_23FF88980()
{

  if (v0)
  {

    v1 = sub_23FF8C824;
  }

  else
  {
    v1 = sub_23FF88A98;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23FF88A98()
{
  sub_23FF8BDB0(*(v0 + 32), type metadata accessor for SetPublicDataRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF88B38()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23FF88C3C;

  return (sub_23FF579FC)();
}

uint64_t sub_23FF88C3C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_23FF88D68;
  }

  else
  {
    v2 = sub_23FF88D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t AppLibrary.UninstallError.hashValue.getter()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](0);
  return sub_23FFD9A7C();
}

char *AppLibrary.deinit()
{

  v1 = OBJC_IVAR____TtC15AppDistribution10AppLibrary___observationRegistrar;
  v2 = sub_23FFD900C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppLibrary.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15AppDistribution10AppLibrary___observationRegistrar;
  v2 = sub_23FFD900C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_23FF88F80(uint64_t a1, uint64_t a2)
{
  sub_23FFD9A2C();
  sub_23FFD938C();
  v4 = sub_23FFD9A7C();

  return sub_23FF8903C(a1, a2, v4);
}

unint64_t sub_23FF88FF8(uint64_t a1)
{
  v2 = sub_23FFD9A1C();

  return sub_23FF890F4(a1, v2);
}

unint64_t sub_23FF8903C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23FFD996C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23FF890F4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_23FF89160()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3048, &qword_23FFDE7E0);
  v2 = *v0;
  v3 = sub_23FFD975C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_23FF892D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31A8, &unk_23FFDF320);
  v2 = *v0;
  v3 = sub_23FFD975C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_23FF89434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3048, &qword_23FFDE7E0);
  v37 = v4;
  result = sub_23FFD976C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_23FFD9A2C();
      sub_23FFD938C();
      result = sub_23FFD9A7C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23FF896F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31A8, &unk_23FFDF320);
  result = sub_23FFD976C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_23FFD9A1C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23FF89964(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
    v2 = sub_23FFD96AC();
    v15 = v2;
    sub_23FFD962C();
    if (sub_23FFD966C())
    {
      type metadata accessor for AppLibrary.App(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_23FF89D44(v9 + 1);
        }

        v2 = v15;
        sub_23FFD9A2C();
        MEMORY[0x245CB4210](*(v14 + 16));
        result = sub_23FFD9A7C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_23FFD966C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23FF89B64(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = sub_23FFD9A1C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = 1;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v8);
      v12 = v11 != a1;
      if (v11 == a1)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
  }

  else
  {
    v12 = 1;
    v10 = 1;
  }

LABEL_8:
  v13 = *(v5 + 16);
  v14 = v13 + v10;
  if (__OFADD__(v13, v10))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = *(v5 + 24);
  if (v15 >= v14 && (a2 & 1) != 0)
  {
    if (!v12)
    {
LABEL_27:
      v25 = *(*v2 + 48);
      result = *(v25 + 8 * v8);
      *(v25 + 8 * v8) = a1;
      return result;
    }

    goto LABEL_24;
  }

  if (a2)
  {
    sub_23FF89F94(v14);
  }

  else
  {
    if (v15 >= v14)
    {
      sub_23FF8A3AC();
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    sub_23FF8A714(v14);
  }

  v16 = *v2;
  v17 = sub_23FFD9A1C();
  v18 = -1 << *(v16 + 32);
  v8 = v17 & ~v18;
  if (((*(v16 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_23:
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_24:
    v20 = *v2;
    *(*v2 + 8 * (v8 >> 6) + 56) |= 1 << v8;
    *(*(v20 + 48) + 8 * v8) = a1;
    v21 = *(v20 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      result = 0;
      *(v20 + 16) = v23;
      return result;
    }

    goto LABEL_29;
  }

  v19 = ~v18;
  while (*(*(v16 + 48) + 8 * v8) != a1)
  {
    v8 = (v8 + 1) & v19;
    if (((*(v16 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_30:
  result = sub_23FFD99AC();
  __break(1u);
  return result;
}

uint64_t sub_23FF89D44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
  result = sub_23FFD969C();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v17 + 16));
      result = sub_23FFD9A7C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23FF89F94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B8, &unk_23FFDF290);
  result = sub_23FFD969C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_23FFD9A1C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23FF8A1B8(uint64_t a1, uint64_t a2)
{
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(a1 + 16));
  sub_23FFD9A7C();
  result = sub_23FFD961C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_23FF8A25C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
  v2 = *v0;
  v3 = sub_23FFD968C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_23FF8A3AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B8, &unk_23FFDF290);
  v2 = *v0;
  v3 = sub_23FFD968C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_23FF8A4EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
  result = sub_23FFD969C();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v16 + 16));
      result = sub_23FFD9A7C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_23FF8A714(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B8, &unk_23FFDF290);
  result = sub_23FFD969C();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_23FFD9A1C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_23FF8A904(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23FF88FF8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23FF896F4(v14, a3 & 1);
      result = sub_23FF88FF8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_23FFD99BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23FF892D8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_23FF8AA50(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_23FFD964C();

    if (v8)
    {

      type metadata accessor for AppLibrary.App(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_23FFD963C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_23FF89964(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_23FF89D44(v17 + 1);
    }

    sub_23FF8A1B8(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(a2 + 16));
  v10 = sub_23FFD9A7C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_23FF8B118(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(*(v6 + 48) + 8 * v12) + 16) != *(a2 + 16))
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

unint64_t sub_23FF8AC5C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_23FFD967C();

    if (v5)
    {
      v6 = sub_23FF8AE64(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_23FFD9A2C();
  v8 = *(a1 + 16);
  MEMORY[0x245CB4210](v8);
  v9 = sub_23FFD9A7C();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (*(*(*(v3 + 48) + 8 * v11) + 16) != v8)
  {
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23FF8A25C();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v11);
  sub_23FF8AF70(v11);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_23FF8ADF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23FF8AE64(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = sub_23FFD963C();
  v6 = swift_unknownObjectRetain();
  v7 = sub_23FF89964(v6, v5);
  v16 = v7;
  sub_23FFD9A2C();
  v8 = *(a2 + 16);
  MEMORY[0x245CB4210](v8);
  v9 = sub_23FFD9A7C();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 48);
    while (1)
    {
      v7 = *(v14 + 8 * v12);
      if (*(v7 + 16) == v8)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  result = sub_23FF8AF70(v12);
  if (v8 == *(v7 + 16))
  {
    *v3 = v16;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23FF8AF70(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_23FFD960C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_23FFD9A2C();
        MEMORY[0x245CB4210](*(v10 + 16));
        v11 = sub_23FFD9A7C() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23FF8B118(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23FF89D44(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23FF8A25C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23FF8A4EC(v5 + 1);
  }

  v8 = *v3;
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(v4 + 16));
  result = sub_23FFD9A7C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for AppLibrary.App(0);
    a2 = v11;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(v4 + 16))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23FFD99AC();
  __break(1u);
  return result;
}

uint64_t sub_23FF8B27C(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v3 = a1;
    }

    if (v2)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v3;

      return MEMORY[0x2821FCF40](a1, a2);
    }

    goto LABEL_15;
  }

  if (v2)
  {
    v3 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v3 = a2;
    }

    a2 = a1;
LABEL_15:

    return sub_23FF8B4A0(v3, a2);
  }

  if (a1 != a2)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    v5 = 0;
    v6 = a1 + 56;
    v7 = 1 << *(a1 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a1 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a2 + 56;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_31:
      v15 = a1;
      v16 = *(*(a1 + 48) + 8 * (v12 | (v5 << 6)));
      v17 = a2;
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v16 + 16));
      v18 = sub_23FFD9A7C();
      v19 = -1 << *(v17 + 32);
      v20 = v18 & ~v19;
      if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }

      a2 = v17;
      v21 = ~v19;
      a1 = v15;
      while (*(*(*(v17 + 48) + 8 * v20) + 16) != *(v16 + 16))
      {
        v20 = (v20 + 1) & v21;
        if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        return 1;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_31;
      }
    }

    __break(1u);
    return MEMORY[0x2821FCF40](a1, a2);
  }

  return 1;
}

uint64_t sub_23FF8B4A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_23FFD963C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_23FFD967C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23FF8B5A4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23FFD963C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
      result = sub_23FFD96BC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_23FFD963C();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x245CB3EA0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v9 + 16));
      result = sub_23FFD9A7C();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v6 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      v15 = *(v3 + 48);
      if (((1 << v11) & v13) != 0)
      {
        v16 = ~v10;
        while (*(*(v15 + 8 * v11) + 16) != *(v9 + 16))
        {
          v11 = (v11 + 1) & v16;
          v12 = v11 >> 6;
          v13 = *(v6 + 8 * (v11 >> 6));
          v14 = 1 << v11;
          if (((1 << v11) & v13) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v12) = v14 | v13;
        *(v15 + 8 * v11) = v9;
        v17 = *(v3 + 16);
        v8 = __OFADD__(v17, 1);
        v18 = v17 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v18;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = v1 + 32;
    v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19 != v21)
    {
      v24 = *(v20 + 8 * v19);
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v24 + 16));
      result = sub_23FFD9A7C();
      v25 = -1 << *(v3 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      v30 = *(v3 + 48);
      if (((1 << v26) & v28) != 0)
      {
        v31 = ~v25;
        while (*(*(v30 + 8 * v26) + 16) != *(v24 + 16))
        {
          v26 = (v26 + 1) & v31;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *(v6 + 8 * v27) = v29 | v28;
        *(v30 + 8 * v26) = v24;
        v22 = *(v3 + 16);
        v8 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v23;
      }

      if (++v19 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_23FF8B838(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for AppInstallRequest(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF8B8CC, 0, 0);
}

uint64_t sub_23FF8B8CC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2[5];
  v5 = sub_23FFD8F6C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, v3, v5);
  v7 = v2[9];
  v8 = *MEMORY[0x277CD4968];
  v9 = sub_23FFD906C();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v11 = *(v10 + 20);
  v12 = (v3 + *(v10 + 24));
  v14 = *v12;
  v13 = v12[1];
  v16 = *(v3 + v11);
  v15 = *(v3 + v11 + 8);

  sub_23FFD8FBC();
  v17 = (v1 + v2[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + v2[7]);
  *v18 = v14;
  v18[1] = v13;
  v19 = (v1 + v2[8]);
  *v19 = v16;
  v19[1] = v15;
  *(v1 + v2[10]) = 0;
  v20 = *(v6 + 56);
  v20(v1 + v2[11], 1, 1, v5);
  v20(v1 + v2[12], 1, 1, v5);
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v0[5] = v21;
  *v21 = v0;
  v21[1] = sub_23FF8BB30;
  v22 = v0[4];

  return sub_23FF54AC4(v22, sub_23FF53CBC, 0);
}

uint64_t sub_23FF8BB30()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23FF8BCC8;
  }

  else
  {
    v2 = sub_23FF8BC44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF8BC44()
{
  sub_23FF8BDB0(*(v0 + 32), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF8BCC8()
{
  sub_23FF8BDB0(*(v0 + 32), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF8BD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF8BDB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23FF8BE10(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for AppInstallRequest(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF8BEA4, 0, 0);
}

uint64_t sub_23FF8BEA4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2[5];
  v5 = sub_23FFD8F6C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, v3, v5);
  v7 = v2[9];
  v8 = *MEMORY[0x277CD4970];
  v9 = sub_23FFD906C();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v11 = *(v10 + 20);
  v12 = (v3 + *(v10 + 24));
  v14 = *v12;
  v13 = v12[1];
  v16 = *(v3 + v11);
  v15 = *(v3 + v11 + 8);

  sub_23FFD8FBC();
  v17 = (v1 + v2[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + v2[7]);
  *v18 = v14;
  v18[1] = v13;
  v19 = (v1 + v2[8]);
  *v19 = v16;
  v19[1] = v15;
  *(v1 + v2[10]) = 0;
  v20 = *(v6 + 56);
  v20(v1 + v2[11], 1, 1, v5);
  v20(v1 + v2[12], 1, 1, v5);
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v0[5] = v21;
  *v21 = v0;
  v21[1] = sub_23FF8C108;
  v22 = v0[4];

  return sub_23FF54AC4(v22, sub_23FF53CBC, 0);
}

uint64_t sub_23FF8C108()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23FF8C850;
  }

  else
  {
    v2 = sub_23FF8C828;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_23FF8C220()
{
  result = qword_27E3A3168;
  if (!qword_27E3A3168)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppLibrary.UninstallError, &type metadata for AppLibrary.UninstallError, v0, v1);
    atomic_store(result, &qword_27E3A3168);
  }

  return result;
}

uint64_t sub_23FF8C27C(uint64_t a1)
{
  result = sub_23FFD900C();
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

void sub_23FF8C378(uint64_t a1)
{
  sub_23FFD8F6C();
  if (v1 <= 0x3F)
  {
    sub_23FF59878(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15AppDistribution0A7LibraryC12InstallErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23FF8C424(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23FF8C47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_23FF8C4CC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_23FF8C50C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23FF6E6E4;

  return sub_23FF85E4C(a1, v4, v5, v7, v6);
}

uint64_t sub_23FF8C5CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23FF8C81C;

  return sub_23FF91DD4(a1, v4);
}

uint64_t sub_23FF8C684(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23FF6E6E4;

  return sub_23FF91DD4(a1, v4);
}

uint64_t sub_23FF8C75C()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_23FF8C798()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF8C894()
{
  sub_23FFD911C();
  v0 = sub_23FFD910C();
  type metadata accessor for ServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_27E3C0850 = result;
  return result;
}

uint64_t sub_23FF8C8E0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23FF8C978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OAuthAuthorizationRequest.run()()
{
  v1[4] = v0;
  type metadata accessor for LaunchAngelXPCRequest(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for OAuthAuthorizationRequest(0);
  v1[6] = swift_task_alloc();
  v2 = sub_23FFD929C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF8CAF4, 0, 0);
}

uint64_t sub_23FF8CAF4()
{
  v20 = v0;
  v1 = v0[6];
  v2 = v0[4];
  sub_23FFD924C();
  sub_23FF8D020(v2, v1, type metadata accessor for OAuthAuthorizationRequest);
  v3 = sub_23FFD927C();
  v4 = sub_23FFD956C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  if (v5)
  {
    v18 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = *v9;
    v13 = v9[1];

    sub_23FF8D088(v9, type metadata accessor for OAuthAuthorizationRequest);
    v14 = sub_23FF8D0E8(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_23FF4C000, v3, v4, "[%s] Requesting OAuth Authorization using Launch Angel...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CB48E0](v11, -1, -1);
    MEMORY[0x245CB48E0](v10, -1, -1);

    (*(v6 + 8))(v18, v8);
  }

  else
  {

    sub_23FF8D088(v9, type metadata accessor for OAuthAuthorizationRequest);
    (*(v6 + 8))(v7, v8);
  }

  sub_23FF8D020(v0[4], v0[5], type metadata accessor for OAuthAuthorizationContext);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_23FF8CD54;
  v16 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v16);
}

uint64_t sub_23FF8CD54()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_23FF8CF34;
  }

  else
  {
    v2 = sub_23FF8CE68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF8CE68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 != 1)
  {
    sub_23FF7983C(*(v0 + 16), v2);
    v1 = sub_23FF8D798(MEMORY[0x277D84F90]);
  }

  sub_23FF8D088(*(v0 + 40), type metadata accessor for LaunchAngelXPCRequest);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_23FF8CF34()
{
  sub_23FF8D088(*(v0 + 40), type metadata accessor for LaunchAngelXPCRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for OAuthAuthorizationRequest(uint64_t a1)
{
  result = qword_27E3A31C0;
  if (!qword_27E3A31C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FF8D020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23FF8D088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23FF8D0E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23FF8D1B4(v11, 0, 0, 1, a1, a2);
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
    sub_23FF63004(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23FF8D1B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23FF8D2C0(a5, a6);
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
    result = sub_23FFD971C();
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

void *sub_23FF8D2C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_23FF8D30C(a1, a2);
  sub_23FF8D43C(&unk_2851F2210);
  return v3;
}

void *sub_23FF8D30C(uint64_t a1, unint64_t a2)
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

  v6 = sub_23FF8D528(v5, 0);
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

  result = sub_23FFD971C();
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
        v10 = sub_23FFD93AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23FF8D528(v10, 0);
        result = sub_23FFD96CC();
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

uint64_t sub_23FF8D43C(uint64_t result)
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

  result = sub_23FF8D59C(result, v11, 1, v3);
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

void *sub_23FF8D528(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31E0, &unk_23FFDF310);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23FF8D59C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31E0, &unk_23FFDF310);
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

void *sub_23FF8D690(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31A8, &unk_23FFDF320);
  v3 = sub_23FFD977C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_23FF88FF8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_23FF88FF8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23FF8D798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3048, &qword_23FFDE7E0);
    v3 = sub_23FFD977C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23FF88F80(v5, v6);
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

uint64_t sub_23FF8D8D4(uint64_t a1)
{
  result = type metadata accessor for OAuthAuthorizationContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23FF8D940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31D0, &qword_23FFDF300);
    v3 = sub_23FFD977C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23FF8DA50(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_23FF88F80(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23FF8DAC0(&v15, (v3[7] + 32 * result));
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

uint64_t sub_23FF8DA50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31D8, &qword_23FFDF308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23FF8DAC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t InstallRequirements.minimumSystemVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InstallRequirements.minimumSystemVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InstallRequirements.requiredDeviceCapabilities.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t InstallRequirements.ageRatingRank.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t InstallRequirements.expectedInstallSize.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

double InstallRequirements.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

Swift::Bool __swiftcall InstallRequirements.satisfiedByDevice()()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  if (!(*(&v4[0] + 1) | v1) && (v5 & 1) != 0 && (v6 & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v2 = sub_23FF78D9C(v4, sub_23FF8DD18, 0);
  }

  return v2 & 1;
}

void sub_23FF8DD18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [a1 checkDeviceCabilityForADPInstallation:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_23FF8DDF4()
{
  v1 = 0x6E69746152656761;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23FF8DE7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF8E738(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF8DEA4(uint64_t a1)
{
  v2 = sub_23FF8E160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF8DEE0(uint64_t a1)
{
  v2 = sub_23FF8E160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallRequirements.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31E8, &qword_23FFDF330);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v7;
  v16 = *(v1 + 32);
  v11 = *(v1 + 40);
  v10[1] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF8E160();
  sub_23FFD9ACC();
  v20 = 0;
  v8 = v14;
  sub_23FFD989C();
  if (!v8)
  {
    v15 = v13;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31F8, &qword_23FFDF338);
    sub_23FF8E498(&qword_27E3A3200, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_23FFD98CC();
    v18 = 2;
    sub_23FFD98BC();
    v17 = 3;
    sub_23FFD98DC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF8E160()
{
  result = qword_27E3A31F0;
  if (!qword_27E3A31F0)
  {
    result = swift_getWitnessTable(byte_23FFDF4A8, &type metadata for InstallRequirements.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A31F0);
  }

  return result;
}

uint64_t InstallRequirements.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3208, &qword_23FFDF340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF8E160();
  sub_23FFD9AAC();
  if (!v2)
  {
    v29 = 0;
    v9 = sub_23FFD97BC();
    v12 = v11;
    v23 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31F8, &qword_23FFDF338);
    v28 = 1;
    sub_23FF8E498(&qword_27E3A3210, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_23FFD97EC();
    v13 = v24;
    v27 = 2;
    v14 = sub_23FFD97DC();
    v25 = v15;
    v22 = v14;
    v26 = 3;
    v16 = sub_23FFD97FC();
    v17 = v8;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    v20 = v22;
    *a2 = v23;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v20;
    *(a2 + 32) = v25 & 1;
    *(a2 + 40) = v16;
    *(a2 + 48) = v19 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF8E498(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A31F8, &qword_23FFDF338);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
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

uint64_t sub_23FF8E550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23FF8E5AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23FF8E634()
{
  result = qword_27E3A3218;
  if (!qword_27E3A3218)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for InstallRequirements.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3218);
  }

  return result;
}

unint64_t sub_23FF8E68C()
{
  result = qword_27E3A3220;
  if (!qword_27E3A3220)
  {
    result = swift_getWitnessTable(byte_23FFDF3F0, &type metadata for InstallRequirements.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3220);
  }

  return result;
}

unint64_t sub_23FF8E6E4()
{
  result = qword_27E3A3228;
  if (!qword_27E3A3228)
  {
    result = swift_getWitnessTable(byte_23FFDF418, &type metadata for InstallRequirements.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3228);
  }

  return result;
}

uint64_t sub_23FF8E738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000023FFEB4B0 == a2;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000023FFEB4D0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xED00006B6E615267 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB4F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ApprovedDeveloper.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ApprovedDeveloper.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ApprovedDeveloper.supportURL.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall ApprovedDeveloper.init(name:identifier:supportURL:)(AppDistribution::ApprovedDeveloper *__return_ptr retstr, Swift::String name, Swift::String identifier, Swift::String_optional supportURL)
{
  retstr->field23FFF3458 = name;
  retstr->field23FFF3464 = identifier;
  retstr->field23FFF3470 = supportURL;
}

uint64_t sub_23FF8E968()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x5574726F70707573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23FF8E9C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF8F9D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF8E9EC(uint64_t a1)
{
  v2 = sub_23FF8F6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF8EA28(uint64_t a1)
{
  v2 = sub_23FF8F6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApprovedDeveloper.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3230, &qword_23FFDF500);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF8F6FC();
  sub_23FFD9ACC();
  v14 = 0;
  v9 = v11[5];
  sub_23FFD98EC();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_23FFD98EC();
  v12 = 2;
  sub_23FFD989C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ApprovedDeveloper.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_23FFD938C();
  sub_23FFD938C();
  if (!v2)
  {
    return sub_23FFD9A4C();
  }

  sub_23FFD9A4C();

  return sub_23FFD938C();
}

uint64_t ApprovedDeveloper.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_23FFD9A2C();
  sub_23FFD938C();
  sub_23FFD938C();
  sub_23FFD9A4C();
  if (v1)
  {
    sub_23FFD938C();
  }

  return sub_23FFD9A7C();
}

uint64_t ApprovedDeveloper.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3240, &qword_23FFDF508);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF8F6FC();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_23FFD980C();
  v21 = v12;
  v23 = 2;
  v13 = sub_23FFD97BC();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF8F018()
{
  v1 = *(v0 + 40);
  sub_23FFD9A2C();
  sub_23FFD938C();
  sub_23FFD938C();
  sub_23FFD9A4C();
  if (v1)
  {
    sub_23FFD938C();
  }

  return sub_23FFD9A7C();
}

uint64_t sub_23FF8F0C0(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_23FFD938C();
  sub_23FFD938C();
  if (!v2)
  {
    return sub_23FFD9A4C();
  }

  sub_23FFD9A4C();

  return sub_23FFD938C();
}

uint64_t sub_23FF8F15C()
{
  v1 = *(v0 + 40);
  sub_23FFD9A2C();
  sub_23FFD938C();
  sub_23FFD938C();
  sub_23FFD9A4C();
  if (v1)
  {
    sub_23FFD938C();
  }

  return sub_23FFD9A7C();
}

uint64_t static AppDistributor.allApprovedDevelopers()()
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = 0x2000000000000000;
  v10 = 1;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  sub_23FF7839C(v7, sub_23FFBF448, 0, &v5);
  result = v5;
  v1 = v6;
  if (v6)
  {
    v2 = *(&v5 + 1);
    v3 = v5;
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF8F750();
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v3, v2, v1);

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t static AppDistributor.revokeDeveloperApproval(_:removeInstalledApps:)(uint64_t a1, uint64_t a2, char a3)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v6 = a3 & 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 3;
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_23FF788A8(&v5, sub_23FF8F3E0, 0);
}

void sub_23FF8F3E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_8;
  v9 = _Block_copy(v10);

  [a1 setPrivateDataRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t static AppDistributor.isDeveloperApproved(_:)(uint64_t a1, uint64_t a2)
{
  *&v10[0] = a1;
  *(&v10[0] + 1) = a2;
  memset(&v10[1], 0, 32);
  v11 = 0;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_23FF7839C(v10, sub_23FFBF448, 0, &v8);
  v4 = *(&v8 + 1);
  v3 = v8;
  v5 = v9;
  if (v9 == 1)
  {
    sub_23FF795B0(v8, *(&v8 + 1), 1u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF8F750();
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v3, v4, v5);

    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t _s15AppDistribution17ApprovedDeveloperV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_23FFD996C()) && (v2 == v6 && v4 == v7 || (sub_23FFD996C()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_23FFD996C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_23FF8F6FC()
{
  result = qword_27E3A3238;
  if (!qword_27E3A3238)
  {
    result = swift_getWitnessTable(aA_4, &type metadata for ApprovedDeveloper.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3238);
  }

  return result;
}

unint64_t sub_23FF8F750()
{
  result = qword_27E3A24C0;
  if (!qword_27E3A24C0)
  {
    v3 = type metadata accessor for MarketplaceKitError(255);
    result = swift_getWitnessTable(protocol conformance descriptor for MarketplaceKitError, v3, v0, v1);
    atomic_store(result, &qword_27E3A24C0);
  }

  return result;
}

unint64_t sub_23FF8F7AC()
{
  result = qword_27E3A3248;
  if (!qword_27E3A3248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApprovedDeveloper, &type metadata for ApprovedDeveloper, v0, v1);
    atomic_store(result, &qword_27E3A3248);
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

uint64_t sub_23FF8F814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23FF8F85C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23FF8F8CC()
{
  result = qword_27E3A3250;
  if (!qword_27E3A3250)
  {
    result = swift_getWitnessTable(asc_23FFDF6C0, &type metadata for ApprovedDeveloper.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3250);
  }

  return result;
}

unint64_t sub_23FF8F924()
{
  result = qword_27E3A3258;
  if (!qword_27E3A3258)
  {
    result = swift_getWitnessTable(aQ_1, &type metadata for ApprovedDeveloper.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3258);
  }

  return result;
}

unint64_t sub_23FF8F97C()
{
  result = qword_27E3A3260;
  if (!qword_27E3A3260)
  {
    result = swift_getWitnessTable(byte_23FFDF658, &type metadata for ApprovedDeveloper.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3260);
  }

  return result;
}

uint64_t sub_23FF8F9D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5574726F70707573 && a2 == 0xEA00000000004C52)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AppLibrary.ExceptionRequest.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.distributorID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLibrary.ExceptionRequest(0) + 40);
  v4 = sub_23FFD8FAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AppLibrary.ExceptionRequest(uint64_t a1)
{
  result = qword_27E3A32B8;
  if (!qword_27E3A32B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppLibrary.ExceptionRequest.init(id:appleItemID:bundleIdentifier:distributorID:status:exceptedRatingValue:timestamp:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a8;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *a9 = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 8) = v13;
  *(a9 + 64) = a10;
  v14 = type metadata accessor for AppLibrary.ExceptionRequest(0);
  v15 = *(v14 + 40);
  v16 = sub_23FFD8FAC();
  (*(*(v16 - 8) + 32))(a9 + v15, a11, v16);
  v17 = a9 + *(v14 + 44);

  return sub_23FF8FD8C(a12, v17);
}

uint64_t sub_23FF8FD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExceptionRequestMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t AppLibrary.ExceptionRequest.Status.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23FF8FED0()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0x6D617473656D6974;
  if (v1 != 6)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 0x7562697274736964;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
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

uint64_t sub_23FF8FFE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF90F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF90014(uint64_t a1)
{
  v2 = sub_23FF9039C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF90050(uint64_t a1)
{
  v2 = sub_23FF9039C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppLibrary.ExceptionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3268, &qword_23FFDF740);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9039C();
  sub_23FFD9ACC();
  v10[15] = 0;
  sub_23FFD993C();
  if (!v2)
  {
    v10[14] = *(v3 + 8);
    v10[13] = 1;
    sub_23FF903F0();
    sub_23FFD991C();
    v10[12] = 2;
    sub_23FFD98EC();
    v10[11] = 3;
    sub_23FFD989C();
    v10[10] = 4;
    sub_23FFD989C();
    v10[9] = 5;
    sub_23FFD990C();
    type metadata accessor for AppLibrary.ExceptionRequest(0);
    v10[8] = 6;
    sub_23FFD8FAC();
    sub_23FF90A50(&qword_27E3A3280, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_23FFD991C();
    v10[7] = 7;
    type metadata accessor for ExceptionRequestMetadata(0);
    sub_23FF90A50(&qword_27E3A3288, type metadata accessor for ExceptionRequestMetadata, protocol conformance descriptor for ExceptionRequestMetadata);
    sub_23FFD991C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23FF9039C()
{
  result = qword_27E3A3270;
  if (!qword_27E3A3270)
  {
    result = swift_getWitnessTable(byte_23FFDF9A8, &_s16ExceptionRequestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27E3A3270);
  }

  return result;
}

unint64_t sub_23FF903F0()
{
  result = qword_27E3A3278;
  if (!qword_27E3A3278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppLibrary.ExceptionRequest.Status, &type metadata for AppLibrary.ExceptionRequest.Status, v0, v1);
    atomic_store(result, &qword_27E3A3278);
  }

  return result;
}

uint64_t AppLibrary.ExceptionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for ExceptionRequestMetadata(0);
  MEMORY[0x28223BE20](v32);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23FFD8FAC();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3290, &qword_23FFDF748);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AppLibrary.ExceptionRequest(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23FF9039C();
  v13 = v37;
  sub_23FFD9AAC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v14 = v6;
  v37 = v9;
  v15 = v34;
  v16 = v35;
  v47 = 0;
  v17 = v36;
  *v11 = sub_23FFD985C();
  v45 = 1;
  sub_23FF909FC();
  sub_23FFD983C();
  v11[8] = v46;
  v44 = 2;
  *(v11 + 2) = sub_23FFD980C();
  *(v11 + 3) = v19;
  v43 = 3;
  *(v11 + 4) = sub_23FFD97BC();
  *(v11 + 5) = v20;
  v42 = 4;
  *(v11 + 6) = sub_23FFD97BC();
  *(v11 + 7) = v21;
  v41 = 5;
  v22 = sub_23FFD982C();
  v30 = 0;
  v29 = 0;
  *(v11 + 8) = v22;
  v40 = 6;
  sub_23FF90A50(&qword_27E3A32A0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v23 = v30;
  sub_23FFD983C();
  v30 = v23;
  if (v23)
  {
    (*(v15 + 8))(v8, v17);
    v24 = v29;
    __swift_destroy_boxed_opaque_existential_1(v38);

    if (!v24)
    {
    }
  }

  else
  {
    v25 = v37;
    (*(v16 + 32))(&v11[*(v37 + 40)], v14, v4);
    v39 = 7;
    sub_23FF90A50(&qword_27E3A32A8, type metadata accessor for ExceptionRequestMetadata, protocol conformance descriptor for ExceptionRequestMetadata);
    v26 = v33;
    v27 = v30;
    sub_23FFD983C();
    (*(v15 + 8))(v8, v17);
    if (v27)
    {
      __swift_destroy_boxed_opaque_existential_1(v38);

      return (*(v16 + 8))(&v11[*(v25 + 40)], v4);
    }

    else
    {
      sub_23FF8FD8C(v26, &v11[*(v25 + 44)]);
      sub_23FF90A98(v11, v31, type metadata accessor for AppLibrary.ExceptionRequest);
      __swift_destroy_boxed_opaque_existential_1(v38);
      return sub_23FF90B00(v11);
    }
  }
}

unint64_t sub_23FF909FC()
{
  result = qword_27E3A3298;
  if (!qword_27E3A3298)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppLibrary.ExceptionRequest.Status, &type metadata for AppLibrary.ExceptionRequest.Status, v0, v1);
    atomic_store(result, &qword_27E3A3298);
  }

  return result;
}

uint64_t sub_23FF90A50(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF90A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23FF90B00(uint64_t a1)
{
  v2 = type metadata accessor for AppLibrary.ExceptionRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23FF90B60()
{
  result = qword_27E3A32B0;
  if (!qword_27E3A32B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppLibrary.ExceptionRequest.Status, &type metadata for AppLibrary.ExceptionRequest.Status, v0, v1);
    atomic_store(result, &qword_27E3A32B0);
  }

  return result;
}

void sub_23FF90C0C(uint64_t a1)
{
  sub_23FF59828();
  if (v1 <= 0x3F)
  {
    sub_23FFD8FAC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ExceptionRequestMetadata(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s16ExceptionRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16ExceptionRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FF90E44()
{
  result = qword_27E3A32C8;
  if (!qword_27E3A32C8)
  {
    result = swift_getWitnessTable(aI_4, &_s16ExceptionRequestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27E3A32C8);
  }

  return result;
}

unint64_t sub_23FF90E9C()
{
  result = qword_27E3A32D0;
  if (!qword_27E3A32D0)
  {
    result = swift_getWitnessTable(byte_23FFDF8F0, &_s16ExceptionRequestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27E3A32D0);
  }

  return result;
}

unint64_t sub_23FF90EF4()
{
  result = qword_27E3A32D8;
  if (!qword_27E3A32D8)
  {
    result = swift_getWitnessTable(byte_23FFDF918, &_s16ExceptionRequestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27E3A32D8);
  }

  return result;
}

uint64_t sub_23FF90F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB510 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB530 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_23FF911F0()
{
  result = qword_27E3A32E0;
  if (!qword_27E3A32E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppLibrary.ExceptionRequest.Status, &type metadata for AppLibrary.ExceptionRequest.Status, v0, v1);
    atomic_store(result, &qword_27E3A32E0);
  }

  return result;
}

uint64_t sub_23FF91244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23FF91CFC(a3, v25 - v10);
  v12 = sub_23FFD949C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23FF91D6C(v11);
  }

  else
  {
    sub_23FFD948C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23FFD942C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23FFD937C() + 32;
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

      sub_23FF91D6C(a3);

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

  sub_23FF91D6C(a3);
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

uint64_t static LicenseRepair.requestLicenseRepair(_:status:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_23FFD949C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;

  sub_23FF91244(0, 0, v8, &unk_23FFDFA08, v10);
}

uint64_t sub_23FF91624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 104) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = sub_23FFD929C();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF916E8, 0, 0);
}

uint64_t sub_23FF916E8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_23FF91800;
  v5 = *(v0 + 48);

  return sub_23FF581E4(sub_23FF581E4, v5, v2, v1, 0, sub_23FF93148, 0);
}

uint64_t sub_23FF91800()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_23FF9197C;
  }

  else
  {

    v2 = sub_23FF9191C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF9191C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF9197C()
{
  v24 = v0;
  v1 = *(v0 + 96);

  sub_23FFD923C();

  v2 = v1;
  v3 = sub_23FFD927C();
  v4 = sub_23FFD955C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v22 = *(v0 + 80);
    v6 = *(v0 + 56);
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_23FF8D0E8(v7, v6, &v23);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = *(*(v0 + 24) - 8);
    swift_task_alloc();
    (*(v10 + 16))();
    v11 = sub_23FFD936C();
    v13 = v12;

    v14 = sub_23FF8D0E8(v11, v13, &v23);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_23FF4C000, v3, v4, "Error requesting license repair for app at path: %{public}s, %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CB48E0](v9, -1, -1);
    MEMORY[0x245CB48E0](v8, -1, -1);

    (*(v5 + 8))(v22, v21);
  }

  else
  {
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23FF91C24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23FF6E6E4;

  return sub_23FF91624(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23FF91CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF91D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23FF91DD4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23FF91ECC;

  return v6(a1);
}

uint64_t sub_23FF91ECC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 PerformPrivateActionRequest.init(request:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

uint64_t PerformPrivateActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  *(v2 + 56) = *(v1 + 24);
  return MEMORY[0x2822009F8](sub_23FF92018, 0, 0);
}

uint64_t sub_23FF92018()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_23FF718C8;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 56);

  return sub_23FF581E4(v4, v5, v2, v3, v6, sub_23FF93148, 0);
}

unint64_t sub_23FF92118()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x63694C77656E6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x694C726961706572;
  }
}

uint64_t sub_23FF92190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF95440(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF921B8(uint64_t a1)
{
  v2 = sub_23FF93224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF921F4(uint64_t a1)
{
  v2 = sub_23FF93224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF92230(uint64_t a1)
{
  v2 = sub_23FF93278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9226C(uint64_t a1)
{
  v2 = sub_23FF93278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF922A8(uint64_t a1)
{
  v2 = sub_23FF932CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF922E4(uint64_t a1)
{
  v2 = sub_23FF932CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF92320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF923EC(uint64_t a1)
{
  v2 = sub_23FF93320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF92428(uint64_t a1)
{
  v2 = sub_23FF93320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformPrivateActionRequest.Request.encode(to:)(void *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A32E8, &qword_23FFDFA38);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v25 = &v23 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A32F0, &qword_23FFDFA40);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A32F8, &qword_23FFDFA48);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3300, &unk_23FFDFA50);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = *v1;
  v30 = v1[1];
  v31 = v12;
  v23 = v1[2];
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF93224();
  sub_23FFD9ACC();
  if (v13)
  {
    if (v13 == 1)
    {
      LOBYTE(v35) = 1;
      sub_23FF932CC();
      v14 = v34;
      sub_23FFD988C();
      LOBYTE(v35) = 0;
      v15 = v28;
      v16 = v32;
      sub_23FFD98EC();
      if (!v16)
      {
        LOBYTE(v35) = 1;
        sub_23FFD98FC();
        LOBYTE(v35) = 2;
        sub_23FFD992C();
      }

      (*(v26 + 8))(v5, v15);
    }

    else
    {
      LOBYTE(v35) = 2;
      sub_23FF93278();
      v20 = v25;
      v14 = v34;
      sub_23FFD988C();
      v35 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
      sub_23FF79774(&qword_27E3A2C20, MEMORY[0x277D84D40], MEMORY[0x277D83948]);
      v21 = v29;
      sub_23FFD991C();
      (*(v27 + 8))(v20, v21);
    }

    return (*(v33 + 8))(v11, v14);
  }

  else
  {
    v17 = v24;
    LOBYTE(v35) = 0;
    sub_23FF93320();
    v18 = v34;
    sub_23FFD988C();
    LOBYTE(v35) = 0;
    v19 = v32;
    sub_23FFD98EC();
    if (!v19)
    {
      LOBYTE(v35) = 1;
      sub_23FFD992C();
    }

    (*(v17 + 8))(v8, v6);
    return (*(v33 + 8))(v11, v18);
  }
}

uint64_t PerformPrivateActionRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3328, &qword_23FFDFA60);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x28223BE20](v3);
  v52 = &v44[-v5];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3330, &qword_23FFDFA68);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v7 = &v44[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3338, &qword_23FFDFA70);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3340, &qword_23FFDFA78);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44[-v13];
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_23FF93224();
  v16 = v53;
  sub_23FFD9AAC();
  if (!v16)
  {
    v17 = v52;
    v53 = v12;
    v18 = sub_23FFD986C();
    v19 = (2 * *(v18 + 16)) | 1;
    v55 = v18;
    v56 = v18 + 32;
    v57 = 0;
    v58 = v19;
    v20 = sub_23FF7522C();
    if (v20 == 3 || v57 != v58 >> 1)
    {
      v27 = sub_23FFD970C();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v29 = &type metadata for PerformPrivateActionRequest.Request;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v53 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v59) = 1;
          sub_23FF932CC();
          v21 = v7;
          sub_23FFD979C();
          LOBYTE(v59) = 0;
          v22 = v46;
          v23 = sub_23FFD980C();
          v25 = v24;
          v52 = v23;
          LOBYTE(v59) = 1;
          v26 = sub_23FFD981C();
          LOBYTE(v59) = 2;
          v40 = sub_23FFD984C();
          (*(v50 + 8))(v21, v22);
          (*(v53 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v41 = v26 & 1 | (v40 << 32);
          v42 = v51;
          v43 = v52;
        }

        else
        {
          LOBYTE(v59) = 2;
          sub_23FF93278();
          sub_23FFD979C();
          v42 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
          sub_23FF79774(&qword_27E3A2C30, MEMORY[0x277D84D68], MEMORY[0x277D83978]);
          v35 = v48;
          sub_23FFD983C();
          v36 = v53;
          (*(v49 + 8))(v17, v35);
          (*(v36 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v25 = 0;
          v41 = 0;
          v43 = v59;
        }
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_23FF93320();
        v31 = v10;
        sub_23FFD979C();
        v52 = v11;
        LOBYTE(v59) = 0;
        v32 = v8;
        v33 = sub_23FFD980C();
        v34 = v53;
        v38 = v37;
        v43 = v33;
        LOBYTE(v59) = 1;
        v39 = sub_23FFD984C();
        (*(v47 + 8))(v31, v32);
        (*(v34 + 8))(v14, v52);
        swift_unknownObjectRelease();
        v41 = v39;
        v42 = v51;
        v25 = v38;
      }

      *v42 = v43;
      *(v42 + 8) = v25;
      *(v42 + 16) = v41;
      *(v42 + 24) = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

double PerformPrivateActionRequest.request.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return sub_23FF93374(v2, v3, v4, v5);
}

void sub_23FF93148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_9;
  v9 = _Block_copy(v10);

  [a1 performPrivateActionRequest:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_23FF93224()
{
  result = qword_27E3A3308;
  if (!qword_27E3A3308)
  {
    result = swift_getWitnessTable(byte_23FFE0630, &type metadata for PerformPrivateActionRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3308);
  }

  return result;
}

unint64_t sub_23FF93278()
{
  result = qword_27E3A3310;
  if (!qword_27E3A3310)
  {
    result = swift_getWitnessTable(aI_5, &type metadata for PerformPrivateActionRequest.Request.RenewLicensesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3310);
  }

  return result;
}

unint64_t sub_23FF932CC()
{
  result = qword_27E3A3318;
  if (!qword_27E3A3318)
  {
    result = swift_getWitnessTable(byte_23FFE0590, &type metadata for PerformPrivateActionRequest.Request.RepairLicenseByBundleIDCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3318);
  }

  return result;
}

unint64_t sub_23FF93320()
{
  result = qword_27E3A3320;
  if (!qword_27E3A3320)
  {
    result = swift_getWitnessTable(byte_23FFE0540, &type metadata for PerformPrivateActionRequest.Request.RepairLicenseCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3320);
  }

  return result;
}

double sub_23FF93374(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

unint64_t PerformPrivateActionRequest.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (!*(v0 + 24))
  {
    sub_23FFD96DC();

    v23 = 0xD000000000000020;
    MEMORY[0x245CB3B50](v1, v2);
    MEMORY[0x245CB3B50](10272, 0xE200000000000000);
LABEL_11:
    v6 = sub_23FFD995C();
    MEMORY[0x245CB3B50](v6);

    MEMORY[0x245CB3B50](41, 0xE100000000000000);
    return v23;
  }

  if (*(v0 + 24) == 1)
  {
    v23 = 0;
    sub_23FFD96DC();
    MEMORY[0x245CB3B50](0xD00000000000001DLL, 0x800000023FFEB570);
    MEMORY[0x245CB3B50](v1, v2);
    MEMORY[0x245CB3B50](0xD000000000000013, 0x800000023FFEB590);
    if (v3)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x245CB3B50](v4, v5);

    MEMORY[0x245CB3B50](0x737574617473202CLL, 0xEB0000000028203ALL);
    goto LABEL_11;
  }

  sub_23FFD96DC();

  v23 = 0xD000000000000014;
  v7 = *(v1 + 16);
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_23FF823D4(0, v7, 0);
    v8 = v21;
    v9 = v1 + 32;
    do
    {
      v9 += 8;
      v10 = sub_23FFD995C();
      v22 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_23FF823D4((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v8 = v22;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
  sub_23FF94764();
  v17 = sub_23FFD931C();
  v19 = v18;

  MEMORY[0x245CB3B50](v17, v19);

  return v23;
}

uint64_t sub_23FF936DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF93764(uint64_t a1)
{
  v2 = sub_23FF947C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF937A0(uint64_t a1)
{
  v2 = sub_23FF947C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformPrivateActionRequest.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3350, &qword_23FFDFA80);
  v16 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = &v11 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF93374(v5, v6, v7, v8);
  sub_23FF947C8();
  sub_23FFD9ACC();
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  sub_23FF9481C();
  v9 = v11;
  sub_23FFD991C();
  sub_23FF94870(v12, v13, v14, v15);
  return (*(v16 + 8))(v4, v9);
}

uint64_t PerformPrivateActionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3368, &qword_23FFDFA88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF947C8();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FF94890();
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF93B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF93BBC(uint64_t a1)
{
  v2 = sub_23FF948E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF93BF8(uint64_t a1)
{
  v2 = sub_23FF948E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF93C34(uint64_t a1)
{
  v2 = sub_23FF94938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF93C70(uint64_t a1)
{
  v2 = sub_23FF94938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformPrivateActionResponse.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3378, &qword_23FFDFA90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3380, &qword_23FFDFA98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF948E4();
  sub_23FFD9ACC();
  sub_23FF94938();
  sub_23FFD988C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t PerformPrivateActionResponse.Response.hashValue.getter()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](0);
  return sub_23FFD9A7C();
}

uint64_t PerformPrivateActionResponse.Response.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3398, &qword_23FFDFAA0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A33A0, &qword_23FFDFAA8);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF948E4();
  sub_23FFD9AAC();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_23FFD986C();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_23FF75234() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_23FFD970C();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v16 = &type metadata for PerformPrivateActionResponse.Response;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_23FF94938();
  sub_23FFD979C();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_23FF94254(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3378, &qword_23FFDFA90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3380, &qword_23FFDFA98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF948E4();
  sub_23FFD9ACC();
  sub_23FF94938();
  sub_23FFD988C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23FF94434(uint64_t a1)
{
  v2 = sub_23FF9498C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF94470(uint64_t a1)
{
  v2 = sub_23FF9498C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformPrivateActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A33A8, &qword_23FFDFAB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9498C();
  sub_23FFD9ACC();
  sub_23FF949E0();
  sub_23FFD991C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PerformPrivateActionResponse.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A33C0, &qword_23FFDFAB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9498C();
  sub_23FFD9AAC();
  if (!v1)
  {
    sub_23FF94A34();
    sub_23FFD983C();
    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF94764()
{
  result = qword_27E3A3348;
  if (!qword_27E3A3348)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A27F0, &qword_23FFDB210);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_27E3A3348);
  }

  return result;
}

unint64_t sub_23FF947C8()
{
  result = qword_27E3A3358;
  if (!qword_27E3A3358)
  {
    result = swift_getWitnessTable(a9_3, &type metadata for PerformPrivateActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3358);
  }

  return result;
}

unint64_t sub_23FF9481C()
{
  result = qword_27E3A3360;
  if (!qword_27E3A3360)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformPrivateActionRequest.Request, &type metadata for PerformPrivateActionRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A3360);
  }

  return result;
}

uint64_t sub_23FF94870(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return v4;
}

unint64_t sub_23FF94890()
{
  result = qword_27E3A3370;
  if (!qword_27E3A3370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformPrivateActionRequest.Request, &type metadata for PerformPrivateActionRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A3370);
  }

  return result;
}

unint64_t sub_23FF948E4()
{
  result = qword_27E3A3388;
  if (!qword_27E3A3388)
  {
    result = swift_getWitnessTable(byte_23FFE04A0, &type metadata for PerformPrivateActionResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3388);
  }

  return result;
}

unint64_t sub_23FF94938()
{
  result = qword_27E3A3390;
  if (!qword_27E3A3390)
  {
    result = swift_getWitnessTable(aBh, &type metadata for PerformPrivateActionResponse.Response.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3390);
  }

  return result;
}

unint64_t sub_23FF9498C()
{
  result = qword_27E3A33B0;
  if (!qword_27E3A33B0)
  {
    result = swift_getWitnessTable(asc_23FFE0400, &type metadata for PerformPrivateActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A33B0);
  }

  return result;
}

unint64_t sub_23FF949E0()
{
  result = qword_27E3A33B8;
  if (!qword_27E3A33B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformPrivateActionResponse.Response, &type metadata for PerformPrivateActionResponse.Response, v0, v1);
    atomic_store(result, &qword_27E3A33B8);
  }

  return result;
}

unint64_t sub_23FF94A34()
{
  result = qword_27E3A33C8;
  if (!qword_27E3A33C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformPrivateActionResponse.Response, &type metadata for PerformPrivateActionResponse.Response, v0, v1);
    atomic_store(result, &qword_27E3A33C8);
  }

  return result;
}

unint64_t sub_23FF94A8C()
{
  result = qword_27E3A33D0;
  if (!qword_27E3A33D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformPrivateActionResponse.Response, &type metadata for PerformPrivateActionResponse.Response, v0, v1);
    atomic_store(result, &qword_27E3A33D0);
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

uint64_t sub_23FF94B10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23FF94B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_23FF94C5C()
{
  result = qword_27E3A33D8;
  if (!qword_27E3A33D8)
  {
    result = swift_getWitnessTable(byte_23FFDFF38, &type metadata for PerformPrivateActionRequest.Request.RenewLicensesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A33D8);
  }

  return result;
}

unint64_t sub_23FF94CB4()
{
  result = qword_27E3A33E0;
  if (!qword_27E3A33E0)
  {
    result = swift_getWitnessTable(a0Bx, &type metadata for PerformPrivateActionRequest.Request.RepairLicenseByBundleIDCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A33E0);
  }

  return result;
}

unint64_t sub_23FF94D0C()
{
  result = qword_27E3A33E8;
  if (!qword_27E3A33E8)
  {
    result = swift_getWitnessTable(asc_23FFE00A8, &type metadata for PerformPrivateActionRequest.Request.RepairLicenseCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A33E8);
  }

  return result;
}

unint64_t sub_23FF94D64()
{
  result = qword_27E3A33F0;
  if (!qword_27E3A33F0)
  {
    result = swift_getWitnessTable(aI_6, &type metadata for PerformPrivateActionRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A33F0);
  }

  return result;
}

unint64_t sub_23FF94DBC()
{
  result = qword_27E3A33F8;
  if (!qword_27E3A33F8)
  {
    result = swift_getWitnessTable(byte_23FFE0218, &type metadata for PerformPrivateActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A33F8);
  }

  return result;
}

unint64_t sub_23FF94E14()
{
  result = qword_27E3A3400;
  if (!qword_27E3A3400)
  {
    result = swift_getWitnessTable(byte_23FFE0320, &type metadata for PerformPrivateActionResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3400);
  }

  return result;
}

unint64_t sub_23FF94E6C()
{
  result = qword_27E3A3408;
  if (!qword_27E3A3408)
  {
    result = swift_getWitnessTable(byte_23FFE03D8, &type metadata for PerformPrivateActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3408);
  }

  return result;
}

unint64_t sub_23FF94EC4()
{
  result = qword_27E3A3410;
  if (!qword_27E3A3410)
  {
    result = swift_getWitnessTable(aY_5, &type metadata for PerformPrivateActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3410);
  }

  return result;
}

unint64_t sub_23FF94F1C()
{
  result = qword_27E3A3418;
  if (!qword_27E3A3418)
  {
    result = swift_getWitnessTable(aI_7, &type metadata for PerformPrivateActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3418);
  }

  return result;
}

unint64_t sub_23FF94F74()
{
  result = qword_27E3A3420;
  if (!qword_27E3A3420)
  {
    result = swift_getWitnessTable(aA_5, &type metadata for PerformPrivateActionResponse.Response.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3420);
  }

  return result;
}

unint64_t sub_23FF94FCC()
{
  result = qword_27E3A3428;
  if (!qword_27E3A3428)
  {
    result = swift_getWitnessTable(aQ_2, &type metadata for PerformPrivateActionResponse.Response.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3428);
  }

  return result;
}

unint64_t sub_23FF95024()
{
  result = qword_27E3A3430;
  if (!qword_27E3A3430)
  {
    result = swift_getWitnessTable(byte_23FFE0290, &type metadata for PerformPrivateActionResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3430);
  }

  return result;
}

unint64_t sub_23FF9507C()
{
  result = qword_27E3A3438;
  if (!qword_27E3A3438)
  {
    result = swift_getWitnessTable(asc_23FFE02B8, &type metadata for PerformPrivateActionResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3438);
  }

  return result;
}

unint64_t sub_23FF950D4()
{
  result = qword_27E3A3440;
  if (!qword_27E3A3440)
  {
    result = swift_getWitnessTable(byte_23FFE0188, &type metadata for PerformPrivateActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3440);
  }

  return result;
}

unint64_t sub_23FF9512C()
{
  result = qword_27E3A3448;
  if (!qword_27E3A3448)
  {
    result = swift_getWitnessTable(asc_23FFE01B0, &type metadata for PerformPrivateActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3448);
  }

  return result;
}

unint64_t sub_23FF95184()
{
  result = qword_27E3A3450;
  if (!qword_27E3A3450)
  {
    result = swift_getWitnessTable(byte_23FFE0018, &type metadata for PerformPrivateActionRequest.Request.RepairLicenseCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3450);
  }

  return result;
}

unint64_t sub_23FF951DC()
{
  result = qword_27E3A3458;
  if (!qword_27E3A3458)
  {
    result = swift_getWitnessTable(byte_23FFE0040, &type metadata for PerformPrivateActionRequest.Request.RepairLicenseCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3458);
  }

  return result;
}

unint64_t sub_23FF95234()
{
  result = qword_27E3A3460;
  if (!qword_27E3A3460)
  {
    result = swift_getWitnessTable(aA_6, &type metadata for PerformPrivateActionRequest.Request.RepairLicenseByBundleIDCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3460);
  }

  return result;
}

unint64_t sub_23FF9528C()
{
  result = qword_27E3A3468;
  if (!qword_27E3A3468)
  {
    result = swift_getWitnessTable(aQ_3, &type metadata for PerformPrivateActionRequest.Request.RepairLicenseByBundleIDCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3468);
  }

  return result;
}

unint64_t sub_23FF952E4()
{
  result = qword_27E3A3470;
  if (!qword_27E3A3470)
  {
    result = swift_getWitnessTable(byte_23FFDFEA8, &type metadata for PerformPrivateActionRequest.Request.RenewLicensesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3470);
  }

  return result;
}

unint64_t sub_23FF9533C()
{
  result = qword_27E3A3478;
  if (!qword_27E3A3478)
  {
    result = swift_getWitnessTable(asc_23FFDFED0, &type metadata for PerformPrivateActionRequest.Request.RenewLicensesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3478);
  }

  return result;
}

unint64_t sub_23FF95394()
{
  result = qword_27E3A3480;
  if (!qword_27E3A3480)
  {
    result = swift_getWitnessTable(aB0, &type metadata for PerformPrivateActionRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3480);
  }

  return result;
}

unint64_t sub_23FF953EC()
{
  result = qword_27E3A3488;
  if (!qword_27E3A3488)
  {
    result = swift_getWitnessTable(byte_23FFE00F8, &type metadata for PerformPrivateActionRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3488);
  }

  return result;
}

uint64_t sub_23FF95440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694C726961706572 && a2 == 0xED000065736E6563;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB5E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63694C77656E6572 && a2 == 0xED00007365736E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FF95570(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManifestValidationRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23FFD8F6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ManifestValidationRequest.primaryProductVariant.getter()
{
  v1 = *(v0 + *(type metadata accessor for ManifestValidationRequest(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ManifestValidationRequest(uint64_t a1)
{
  result = qword_27E3A34A8;
  if (!qword_27E3A34A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ManifestValidationRequest.compatibleProductVariants.getter()
{
  type metadata accessor for ManifestValidationRequest(0);

  return result;
}

uint64_t ManifestValidationRequest.osVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for ManifestValidationRequest(0) + 28));

  return v1;
}

int *ManifestValidationRequest.init(url:primaryProductVariant:compatibleProductVariants:osVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_23FFD8F6C();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for ManifestValidationRequest(0);
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + result[6]) = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_23FF958D8()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23FF53BC8;
  v2 = *(v0 + 16);

  return sub_23FF585F0(v2, sub_23FF959D0, 0);
}

void sub_23FF959D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_10;
  v9 = _Block_copy(v10);

  [a1 runManifestValidation:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_23FF95AAC()
{
  v1 = 7107189;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_23FF95B30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF96610(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF95B58(uint64_t a1)
{
  v2 = sub_23FF95E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF95B94(uint64_t a1)
{
  v2 = sub_23FF95E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ManifestValidationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3490, &unk_23FFE0688);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF95E28();
  sub_23FFD9ACC();
  v14 = 0;
  sub_23FFD8F6C();
  sub_23FF82E4C(&qword_27E3A2438, MEMORY[0x277CC9268]);
  sub_23FFD991C();
  if (!v2)
  {
    v9 = type metadata accessor for ManifestValidationRequest(0);
    v13 = 1;
    sub_23FFD989C();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
    sub_23FF668B0(&qword_27E3A27F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_23FFD98CC();
    v11[14] = 3;
    sub_23FFD989C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23FF95E28()
{
  result = qword_27E3A3498;
  if (!qword_27E3A3498)
  {
    result = swift_getWitnessTable(a9_4, &type metadata for ManifestValidationRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3498);
  }

  return result;
}

uint64_t ManifestValidationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_23FFD8F6C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A34A0, &qword_23FFE0698);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ManifestValidationRequest(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF95E28();
  v30 = v8;
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v26;
  v35 = 0;
  sub_23FF82E4C(&qword_27E3A2458, MEMORY[0x277CC9280]);
  v13 = v27;
  sub_23FFD983C();
  (*(v12 + 32))(v11, v13, v4);
  v34 = 1;
  v15 = sub_23FFD97BC();
  v27 = 0;
  v17 = &v11[v9[5]];
  *v17 = v15;
  v17[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
  v33 = 2;
  sub_23FF668B0(&qword_2814FD770, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v18 = v27;
  v19 = v27;
  sub_23FFD97EC();
  if (v19)
  {
    (*(v28 + 8))(v30, v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = (*(v12 + 8))(v11, v4);
    if (!v18)
    {
    }
  }

  else
  {
    *&v11[v9[6]] = v31;
    v32 = 3;
    v20 = sub_23FFD97BC();
    v22 = v21;
    (*(v28 + 8))(v30, v29);
    v23 = &v11[v9[7]];
    *v23 = v20;
    v23[1] = v22;
    sub_23FF962DC(v11, v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23FF96340(v11);
  }

  return result;
}

uint64_t sub_23FF962DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManifestValidationRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF96340(uint64_t a1)
{
  v2 = type metadata accessor for ManifestValidationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23FF963F4(uint64_t a1)
{
  sub_23FFD8F6C();
  if (v1 <= 0x3F)
  {
    sub_23FF59828();
    if (v2 <= 0x3F)
    {
      sub_23FF96494(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23FF96494(uint64_t a1)
{
  if (!qword_27E3A34B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A27F0, &qword_23FFDB210);
    v1 = sub_23FFD95CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E3A34B8);
    }
  }
}

unint64_t sub_23FF9650C()
{
  result = qword_27E3A34C0;
  if (!qword_27E3A34C0)
  {
    result = swift_getWitnessTable(byte_23FFE07C8, &type metadata for ManifestValidationRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A34C0);
  }

  return result;
}

unint64_t sub_23FF96564()
{
  result = qword_27E3A34C8;
  if (!qword_27E3A34C8)
  {
    result = swift_getWitnessTable(aI_8, &type metadata for ManifestValidationRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A34C8);
  }

  return result;
}

unint64_t sub_23FF965BC()
{
  result = qword_27E3A34D0;
  if (!qword_27E3A34D0)
  {
    result = swift_getWitnessTable(aY_6, &type metadata for ManifestValidationRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A34D0);
  }

  return result;
}

uint64_t sub_23FF96610(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEB600 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023FFEB620 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double ConfirmationSheetContext.symbolConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t ConfirmationSheetContext.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ConfirmationSheetContext.subtitle.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

double ConfirmationSheetContext.moreInformationLink.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_23FF96828(v2, v3, v4, v5);
}

double sub_23FF96828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double ConfirmationSheetContext.miniProductPageConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 160);
  return sub_23FF96898(v2, v3, v4, v5, v6, v7);
}

double sub_23FF96898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

double ConfirmationSheetContext.primaryButton.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t ConfirmationSheetContext.secondaryButtonText.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t ConfirmationSheetContext.init(logKey:symbolConfiguration:title:subtitle:moreInformationLink:bulletPoints:miniProductPageConfiguration:primaryButton:secondaryButtonText:postPrimaryButtonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a3 + 16);
  v17 = *(a11 + 48);
  v18 = *a12;
  v19 = a12[1];
  v20 = *(a12 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = *a3;
  *(a9 + 32) = v16;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  v21 = a8[1];
  *(a9 + 72) = *a8;
  *(a9 + 88) = v21;
  *(a9 + 104) = a10;
  v22 = *(a11 + 16);
  *(a9 + 112) = *a11;
  *(a9 + 128) = v22;
  *(a9 + 144) = *(a11 + 32);
  *(a9 + 160) = v17;
  *(a9 + 168) = v18;
  *(a9 + 176) = v19;
  *(a9 + 184) = v20;
  *(a9 + 192) = a13;
  *(a9 + 200) = a14;
  v23 = type metadata accessor for ConfirmationSheetContext(0);
  return sub_23FF64358(a15, a9 + *(v23 + 52), &qword_27E3A34D8, &qword_23FFE0840);
}

unint64_t sub_23FF96A40(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x427972616D697270;
    v6 = 0xD000000000000017;
    if (a1 == 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v7 = 0x6F5074656C6C7562;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x79654B676F6CLL;
    v2 = 0x656C746974;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23FF96B9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF9E6E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF96BC4(uint64_t a1)
{
  v2 = sub_23FF9708C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF96C00(uint64_t a1)
{
  v2 = sub_23FF9708C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A34E0, &qword_23FFE0848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9708C();
  sub_23FFD9ACC();
  LOBYTE(v24) = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v24 = *(v3 + 16);
    v25 = v9;
    LOBYTE(v26) = v10;
    v31 = 1;
    sub_23FF970E0();

    sub_23FFD98CC();

    LOBYTE(v24) = 2;
    sub_23FFD98EC();
    LOBYTE(v24) = 3;
    sub_23FFD989C();
    v11 = *(v3 + 80);
    v12 = *(v3 + 88);
    v13 = *(v3 + 96);
    v24 = *(v3 + 72);
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v31 = 4;
    sub_23FF96828(v24, v11, v12, v13);
    sub_23FF97134();
    sub_23FFD98CC();
    sub_23FF97188(v24, v25, v26, v27);
    v24 = *(v3 + 104);
    v31 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3500, &qword_23FFE0850);
    sub_23FF97B08(&qword_27E3A3508, sub_23FF971CC, MEMORY[0x277D83948]);
    sub_23FFD98CC();
    v14 = *(v3 + 120);
    v15 = *(v3 + 128);
    v16 = *(v3 + 136);
    v17 = *(v3 + 144);
    v18 = *(v3 + 152);
    v19 = *(v3 + 160);
    v24 = *(v3 + 112);
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = 6;
    sub_23FF96898(v24, v14, v15, v16, v17, v18);
    sub_23FF97220();
    sub_23FFD98CC();
    sub_23FF97274(v24, v25, v26, v27, v28, v29);
    v20 = *(v3 + 176);
    v21 = *(v3 + 184);
    v24 = *(v3 + 168);
    v25 = v20;
    LOBYTE(v26) = v21;
    v31 = 7;
    sub_23FF972C4();

    sub_23FFD991C();

    LOBYTE(v24) = 8;
    sub_23FFD989C();
    type metadata accessor for ConfirmationSheetContext(0);
    LOBYTE(v24) = 9;
    type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
    sub_23FF97C7C(&qword_27E3A3528, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction, protocol conformance descriptor for ConfirmationSheetPostPrimaryButtonAction);
    sub_23FFD98CC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23FF9708C()
{
  result = qword_27E3A34E8;
  if (!qword_27E3A34E8)
  {
    result = swift_getWitnessTable(byte_23FFE1EA4, &type metadata for ConfirmationSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A34E8);
  }

  return result;
}

unint64_t sub_23FF970E0()
{
  result = qword_27E3A34F0;
  if (!qword_27E3A34F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetSymbol, &type metadata for ConfirmationSheetSymbol, v0, v1);
    atomic_store(result, &qword_27E3A34F0);
  }

  return result;
}

unint64_t sub_23FF97134()
{
  result = qword_27E3A34F8;
  if (!qword_27E3A34F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetMoreInformationLink, &type metadata for ConfirmationSheetMoreInformationLink, v0, v1);
    atomic_store(result, &qword_27E3A34F8);
  }

  return result;
}

void sub_23FF97188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_23FF971CC()
{
  result = qword_27E3A3510;
  if (!qword_27E3A3510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetBulletPoint, &type metadata for ConfirmationSheetBulletPoint, v0, v1);
    atomic_store(result, &qword_27E3A3510);
  }

  return result;
}

unint64_t sub_23FF97220()
{
  result = qword_27E3A3518;
  if (!qword_27E3A3518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetMiniProductPageConfiguration, &type metadata for ConfirmationSheetMiniProductPageConfiguration, v0, v1);
    atomic_store(result, &qword_27E3A3518);
  }

  return result;
}

void sub_23FF97274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_23FF972C4()
{
  result = qword_27E3A3520;
  if (!qword_27E3A3520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetButton, &type metadata for ConfirmationSheetButton, v0, v1);
    atomic_store(result, &qword_27E3A3520);
  }

  return result;
}

void ConfirmationSheetContext.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A34D8, &qword_23FFE0840);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3530, &qword_23FFE0858);
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ConfirmationSheetContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_23FF9708C();
  v31 = v9;
  sub_23FFD9AAC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v28 = v6;
    v29 = v12;
    v14 = v7;
    LOBYTE(v34) = 0;
    v15 = sub_23FFD980C();
    v16 = v29;
    *v29 = v15;
    v16[1] = v17;
    v38 = 1;
    sub_23FF97A60();
    sub_23FFD97EC();
    v18 = v35;
    *(v16 + 1) = v34;
    *(v16 + 32) = v18;
    LOBYTE(v34) = 2;
    v16[5] = sub_23FFD980C();
    v16[6] = v19;
    LOBYTE(v34) = 3;
    v16[7] = sub_23FFD97BC();
    v16[8] = v20;
    v38 = 4;
    sub_23FF97AB4();
    sub_23FFD97EC();
    v21 = v35;
    *(v16 + 9) = v34;
    *(v16 + 11) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3500, &qword_23FFE0850);
    v38 = 5;
    sub_23FF97B08(&qword_27E3A3548, sub_23FF97B80, MEMORY[0x277D83978]);
    sub_23FFD97EC();
    v16[13] = v34;
    v38 = 6;
    sub_23FF97BD4();
    sub_23FFD97EC();
    v22 = v37;
    v23 = v35;
    *(v16 + 7) = v34;
    *(v16 + 8) = v23;
    *(v16 + 9) = v36;
    *(v16 + 160) = v22;
    v38 = 7;
    sub_23FF97C28();
    sub_23FFD983C();
    v24 = *(&v34 + 1);
    v25 = v35;
    v16[21] = v34;
    v16[22] = v24;
    *(v16 + 184) = v25;
    LOBYTE(v34) = 8;
    v16[24] = sub_23FFD97BC();
    v16[25] = v26;
    type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
    LOBYTE(v34) = 9;
    sub_23FF97C7C(&qword_27E3A3568, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction, protocol conformance descriptor for ConfirmationSheetPostPrimaryButtonAction);
    sub_23FFD97EC();
    (*(v14 + 8))(v31, v32);
    v27 = v29;
    sub_23FF64358(v28, v29 + *(v10 + 52), &qword_27E3A34D8, &qword_23FFE0840);
    sub_23FF99F18(v27, v30, type metadata accessor for ConfirmationSheetContext);
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_23FF99F80(v27, type metadata accessor for ConfirmationSheetContext);
  }
}

unint64_t sub_23FF97A60()
{
  result = qword_27E3A3538;
  if (!qword_27E3A3538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetSymbol, &type metadata for ConfirmationSheetSymbol, v0, v1);
    atomic_store(result, &qword_27E3A3538);
  }

  return result;
}

unint64_t sub_23FF97AB4()
{
  result = qword_27E3A3540;
  if (!qword_27E3A3540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetMoreInformationLink, &type metadata for ConfirmationSheetMoreInformationLink, v0, v1);
    atomic_store(result, &qword_27E3A3540);
  }

  return result;
}

uint64_t sub_23FF97B08(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A3500, &qword_23FFE0850);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF97B80()
{
  result = qword_27E3A3550;
  if (!qword_27E3A3550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetBulletPoint, &type metadata for ConfirmationSheetBulletPoint, v0, v1);
    atomic_store(result, &qword_27E3A3550);
  }

  return result;
}

unint64_t sub_23FF97BD4()
{
  result = qword_27E3A3558;
  if (!qword_27E3A3558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetMiniProductPageConfiguration, &type metadata for ConfirmationSheetMiniProductPageConfiguration, v0, v1);
    atomic_store(result, &qword_27E3A3558);
  }

  return result;
}

unint64_t sub_23FF97C28()
{
  result = qword_27E3A3560;
  if (!qword_27E3A3560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetButton, &type metadata for ConfirmationSheetButton, v0, v1);
    atomic_store(result, &qword_27E3A3560);
  }

  return result;
}

uint64_t sub_23FF97C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConfirmationSheetBulletPoint.icon.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationSheetBulletPoint.header.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmationSheetBulletPoint.body.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall ConfirmationSheetBulletPoint.init(icon:header:body:)(AppDistribution::ConfirmationSheetBulletPoint *__return_ptr retstr, Swift::String icon, Swift::String header, Swift::String body)
{
  retstr->field23FFF3884 = icon;
  retstr->field23FFF3890 = header;
  retstr->field23FFF389C = body;
}

uint64_t sub_23FF97D94()
{
  v1 = 0x726564616568;
  if (*v0 != 1)
  {
    v1 = 2036625250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_23FF97DDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF9EA18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF97E04(uint64_t a1)
{
  v2 = sub_23FF98040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF97E40(uint64_t a1)
{
  v2 = sub_23FF98040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetBulletPoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3570, &qword_23FFE0860);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF98040();
  sub_23FFD9ACC();
  v14 = 0;
  v9 = v11[5];
  sub_23FFD98EC();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_23FFD98EC();
  v12 = 2;
  sub_23FFD98EC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF98040()
{
  result = qword_27E3A3578;
  if (!qword_27E3A3578)
  {
    result = swift_getWitnessTable(aB_0, &type metadata for ConfirmationSheetBulletPoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3578);
  }

  return result;
}

uint64_t ConfirmationSheetBulletPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3580, &qword_23FFE0868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF98040();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_23FFD980C();
  v21 = v12;
  v23 = 2;
  v13 = sub_23FFD980C();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

AppDistribution::ConfirmationSheetSymbol __swiftcall ConfirmationSheetSymbol.init(symbolName:enableHeirarchicalColors:)(AppDistribution::ConfirmationSheetSymbol symbolName, Swift::Bool_optional enableHeirarchicalColors)
{
  *v2 = symbolName.field23FFF38B8;
  *(v2 + 16) = enableHeirarchicalColors;
  symbolName.field23FFF38C4 = enableHeirarchicalColors;
  return symbolName;
}

uint64_t sub_23FF98350()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x614E6C6F626D7973;
  }
}

uint64_t sub_23FF98394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEB6E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF98480(uint64_t a1)
{
  v2 = sub_23FF9868C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF984BC(uint64_t a1)
{
  v2 = sub_23FF9868C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetSymbol.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3588, &qword_23FFE0870);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9868C();
  sub_23FFD9ACC();
  v12 = 0;
  v7 = v9[1];
  sub_23FFD98EC();
  if (!v7)
  {
    v11 = 1;
    sub_23FFD98AC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF9868C()
{
  result = qword_27E3A3590;
  if (!qword_27E3A3590)
  {
    result = swift_getWitnessTable(asc_23FFE1E04, &type metadata for ConfirmationSheetSymbol.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3590);
  }

  return result;
}

uint64_t ConfirmationSheetSymbol.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3598, &qword_23FFE0878);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9868C();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_23FFD97CC();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetMoreInformationLink.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationSheetMoreInformationLink.URL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

AppDistribution::ConfirmationSheetMoreInformationLink __swiftcall ConfirmationSheetMoreInformationLink.init(label:URL:)(Swift::String label, Swift::String URL)
{
  *v2 = label;
  v2[1] = URL;
  result.field23FFF38EC = URL;
  result.field23FFF38E0 = label;
  return result;
}

uint64_t sub_23FF98958()
{
  if (*v0)
  {
    return 5001813;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_23FF98988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 5001813 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF98A60(uint64_t a1)
{
  v2 = sub_23FF98C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF98A9C(uint64_t a1)
{
  v2 = sub_23FF98C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetMoreInformationLink.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35A0, &qword_23FFE0880);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF98C6C();
  sub_23FFD9ACC();
  v12 = 0;
  v8 = v10[3];
  sub_23FFD98EC();
  if (!v8)
  {
    v11 = 1;
    sub_23FFD98EC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF98C6C()
{
  result = qword_27E3A35A8;
  if (!qword_27E3A35A8)
  {
    result = swift_getWitnessTable(aU_5, &type metadata for ConfirmationSheetMoreInformationLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A35A8);
  }

  return result;
}

uint64_t ConfirmationSheetMoreInformationLink.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35B0, &qword_23FFE0888);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF98C6C();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_23FFD980C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.itemID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.versionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.distributorID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall ConfirmationSheetMiniProductPageConfiguration.init(itemID:versionID:distributorID:isForAppStore:)(AppDistribution::ConfirmationSheetMiniProductPageConfiguration *__return_ptr retstr, Swift::String itemID, Swift::String_optional versionID, Swift::String_optional distributorID, Swift::Bool_optional isForAppStore)
{
  retstr->field23FFF3908 = itemID;
  retstr->field23FFF3914 = versionID;
  retstr->field23FFF3920 = distributorID;
  retstr->field23FFF392C = isForAppStore;
}

uint64_t sub_23FF98F9C()
{
  v1 = 0x44496D657469;
  v2 = 0x7562697274736964;
  if (*v0 != 2)
  {
    v2 = 0x707041726F467369;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973726576;
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

uint64_t sub_23FF99030@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF9EB2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF99058(uint64_t a1)
{
  v2 = sub_23FF992C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF99094(uint64_t a1)
{
  v2 = sub_23FF992C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35B8, &qword_23FFE0890);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v11[3] = *(v1 + 24);
  v11[4] = v7;
  v8 = *(v1 + 32);
  v11[1] = *(v1 + 40);
  v11[2] = v8;
  v12 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF992C0();
  sub_23FFD9ACC();
  v16 = 0;
  v9 = v11[5];
  sub_23FFD98EC();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_23FFD989C();
  v14 = 2;
  sub_23FFD989C();
  v13 = 3;
  sub_23FFD98AC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF992C0()
{
  result = qword_27E3A35C0;
  if (!qword_27E3A35C0)
  {
    result = swift_getWitnessTable(aRB, &type metadata for ConfirmationSheetMiniProductPageConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A35C0);
  }

  return result;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35C8, &unk_23FFE0898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF992C0();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_23FFD980C();
  v25 = v10;
  v28 = 1;
  v11 = sub_23FFD97BC();
  v24 = v12;
  v22 = v11;
  v27 = 2;
  v21 = sub_23FFD97BC();
  v23 = v13;
  v26 = 3;
  v15 = sub_23FFD97CC();
  (*(v6 + 8))(v8, v5);
  v17 = v24;
  v16 = v25;
  *a2 = v9;
  *(a2 + 8) = v16;
  v18 = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v17;
  v19 = v23;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetOsloSheetConfiguration.paymentSheetTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.paymentSheetLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.processingText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.init(paymentSheetTitle:paymentSheetLabel:processingText:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v10 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  return sub_23FF64358(a7, a8 + *(v10 + 28), &qword_27E3A2418, &qword_23FFDADC0);
}

uint64_t sub_23FF9976C()
{
  v1 = 0x69737365636F7270;
  if (*v0 != 2)
  {
    v1 = 0x4C52556E6F6369;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23FF997FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF9ECA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF99824(uint64_t a1)
{
  v2 = sub_23FF99AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF99860(uint64_t a1)
{
  v2 = sub_23FF99AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetOsloSheetConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35D0, &qword_23FFE08A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF99AD8();
  sub_23FFD9ACC();
  v8[15] = 0;
  sub_23FFD98EC();
  if (!v1)
  {
    v8[14] = 1;
    sub_23FFD98EC();
    v8[13] = 2;
    sub_23FFD98EC();
    type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
    v8[12] = 3;
    sub_23FFD8F6C();
    sub_23FF97C7C(&qword_27E3A2438, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_23FFD98CC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF99AD8()
{
  result = qword_27E3A35D8;
  if (!qword_27E3A35D8)
  {
    result = swift_getWitnessTable(byte_23FFE1D14, &type metadata for ConfirmationSheetOsloSheetConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A35D8);
  }

  return result;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35E0, &qword_23FFE08B0);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF99AD8();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v6;
  v15 = v23;
  v14 = v24;
  v28 = 0;
  *v12 = sub_23FFD980C();
  v12[1] = v16;
  v27 = 1;
  v12[2] = sub_23FFD980C();
  v12[3] = v17;
  v26 = 2;
  v20[1] = 0;
  v12[4] = sub_23FFD980C();
  v12[5] = v18;
  sub_23FFD8F6C();
  v25 = 3;
  sub_23FF97C7C(&qword_27E3A2458, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_23FFD97EC();
  (*(v15 + 8))(v9, v14);
  sub_23FF64358(v13, v12 + *(v21 + 28), &qword_27E3A2418, &qword_23FFDADC0);
  sub_23FF99F18(v12, v22, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FF99F80(v12, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
}

uint64_t sub_23FF99F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23FF99F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConfirmationSheetLAConfiguration.localizedReason.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.touchIDTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.touchIDReason.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.passcodeTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.passcodeReason.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void __swiftcall ConfirmationSheetLAConfiguration.init(localizedReason:touchIDTitle:touchIDReason:passcodeTitle:passcodeReason:)(AppDistribution::ConfirmationSheetLAConfiguration *__return_ptr retstr, Swift::String localizedReason, Swift::String touchIDTitle, Swift::String touchIDReason, Swift::String passcodeTitle, Swift::String passcodeReason)
{
  retstr->field23FFF3988 = localizedReason;
  retstr->field23FFF3994 = touchIDTitle;
  retstr->field23FFF39A0 = touchIDReason;
  retstr->field23FFF39AC = passcodeTitle;
  retstr->field23FFF39B8 = passcodeReason;
}

uint64_t sub_23FF9A11C()
{
  v1 = 0x657A696C61636F6CLL;
  v2 = 0x5244496863756F74;
  if (*v0 != 2)
  {
    v2 = 0x65646F6373736170;
  }

  if (*v0)
  {
    v1 = 0x5444496863756F74;
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

uint64_t sub_23FF9A1F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF9EE24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF9A224(uint64_t a1)
{
  v2 = sub_23FF9A4C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9A260(uint64_t a1)
{
  v2 = sub_23FF9A4C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetLAConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35E8, &qword_23FFE08B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9A4C0();
  sub_23FFD9ACC();
  v18 = 0;
  v11 = v13[9];
  sub_23FFD98EC();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_23FFD98EC();
  v16 = 2;
  sub_23FFD98EC();
  v15 = 3;
  sub_23FFD98EC();
  v14 = 4;
  sub_23FFD98EC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF9A4C0()
{
  result = qword_27E3A35F0;
  if (!qword_27E3A35F0)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for ConfirmationSheetLAConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A35F0);
  }

  return result;
}

uint64_t ConfirmationSheetLAConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35F8, &qword_23FFE08C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9A4C0();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_23FFD980C();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_23FFD980C();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_23FFD980C();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_23FFD980C();
  v27 = v14;
  v37 = 4;
  v15 = sub_23FFD980C();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v29;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  v21 = v34;
  a2[2] = v33;
  a2[3] = v21;
  a2[4] = v35;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  sub_23FF9A8EC(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v9;
  v36[1] = v30;
  v36[2] = v26;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v36[8] = v15;
  v36[9] = v17;
  return sub_23FF9A924(v36);
}

uint64_t sub_23FF9A99C(uint64_t a1)
{
  v2 = sub_23FF9AF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9A9D8(uint64_t a1)
{
  v2 = sub_23FF9AF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9AA14()
{
  if (*v0)
  {
    return 0x6574696877;
  }

  else
  {
    return 1702194274;
  }
}

uint64_t sub_23FF9AA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702194274 && a2 == 0xE400000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574696877 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF9AB1C(uint64_t a1)
{
  v2 = sub_23FF9AEBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9AB58(uint64_t a1)
{
  v2 = sub_23FF9AEBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9AB94(uint64_t a1)
{
  v2 = sub_23FF9AF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9ABD0(uint64_t a1)
{
  v2 = sub_23FF9AF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetButtonStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3600, &qword_23FFE08C8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3608, &qword_23FFE08D0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3610, &qword_23FFE08D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9AEBC();
  sub_23FFD9ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_23FF9AF10();
    v14 = v18;
    sub_23FFD988C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23FF9AF64();
    sub_23FFD988C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_23FF9AEBC()
{
  result = qword_27E3A3618;
  if (!qword_27E3A3618)
  {
    result = swift_getWitnessTable(byte_23FFE1C74, &type metadata for ConfirmationSheetButtonStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3618);
  }

  return result;
}

unint64_t sub_23FF9AF10()
{
  result = qword_27E3A3620;
  if (!qword_27E3A3620)
  {
    result = swift_getWitnessTable(byte_23FFE1C24, &type metadata for ConfirmationSheetButtonStyle.WhiteCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3620);
  }

  return result;
}

unint64_t sub_23FF9AF64()
{
  result = qword_27E3A3628;
  if (!qword_27E3A3628)
  {
    result = swift_getWitnessTable(aU_6, &type metadata for ConfirmationSheetButtonStyle.BlueCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3628);
  }

  return result;
}

uint64_t ConfirmationSheetButtonStyle.hashValue.getter()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](v1);
  return sub_23FFD9A7C();
}

uint64_t ConfirmationSheetButtonStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3630, &qword_23FFE08E0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3638, &qword_23FFE08E8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3640, &unk_23FFE08F0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9AEBC();
  v12 = v31;
  sub_23FFD9AAC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_23FFD986C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23FF75230();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_23FFD970C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v22 = &type metadata for ConfirmationSheetButtonStyle;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_23FF9AF10();
        sub_23FFD979C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23FF9AF64();
        sub_23FFD979C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t ConfirmationSheetButton.text.getter()
{
  v1 = *v0;

  return v1;
}

AppDistribution::ConfirmationSheetButton __swiftcall ConfirmationSheetButton.init(text:style:)(AppDistribution::ConfirmationSheetButton text, AppDistribution::ConfirmationSheetButtonStyle style)
{
  v3 = *style;
  *v2 = text.field23FFF39FC;
  *(v2 + 16) = v3;
  text.field23FFF3A08 = style;
  return text;
}

uint64_t sub_23FF9B564()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_23FF9B594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF9B66C(uint64_t a1)
{
  v2 = sub_23FF9B878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9B6A8(uint64_t a1)
{
  v2 = sub_23FF9B878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3648, &qword_23FFE0900);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9B878();
  sub_23FFD9ACC();
  v13 = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_23FF9B8CC();
    sub_23FFD991C();
  }

  return (*(v9 + 8))(v6, v4);
}

unint64_t sub_23FF9B878()
{
  result = qword_27E3A3650;
  if (!qword_27E3A3650)
  {
    result = swift_getWitnessTable(byte_23FFE1B84, &type metadata for ConfirmationSheetButton.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3650);
  }

  return result;
}

unint64_t sub_23FF9B8CC()
{
  result = qword_27E3A3658;
  if (!qword_27E3A3658)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetButtonStyle, &type metadata for ConfirmationSheetButtonStyle, v0, v1);
    atomic_store(result, &qword_27E3A3658);
  }

  return result;
}

uint64_t ConfirmationSheetButton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3660, &qword_23FFE0908);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9B878();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_23FF9BB14();
  sub_23FFD983C();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF9BB14()
{
  result = qword_27E3A3668;
  if (!qword_27E3A3668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetButtonStyle, &type metadata for ConfirmationSheetButtonStyle, v0, v1);
    atomic_store(result, &qword_27E3A3668);
  }

  return result;
}

unint64_t sub_23FF9BB98()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_23FF9BBEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF9EFF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF9BC14(uint64_t a1)
{
  v2 = sub_23FF9C3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9BC50(uint64_t a1)
{
  v2 = sub_23FF9C3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9BC8C(uint64_t a1)
{
  v2 = sub_23FF9C4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9BCC8(uint64_t a1)
{
  v2 = sub_23FF9C4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9BD04(uint64_t a1)
{
  v2 = sub_23FF9C54C();

  return MEMORY[0x2821FE718](a1, v2);
}