uint64_t sub_25ADDB990@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25ADDB9D8(uint64_t a1)
{
  v2 = sub_25ADDBBF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADDBA14(uint64_t a1)
{
  v2 = sub_25ADDBBF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWSupportModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12498, &qword_25AE11660);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADDBBF0();
  sub_25AE10E8C();
  return (*(v3 + 8))(v5, v2);
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

unint64_t sub_25ADDBBF0()
{
  result = qword_27FA124A0;
  if (!qword_27FA124A0)
  {
    result = swift_getWitnessTable(byte_25AE117A0, &type metadata for NDODWSupportModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA124A0);
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

unint64_t sub_25ADDBD68()
{
  result = qword_27FA124A8;
  if (!qword_27FA124A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWSupportModel, &type metadata for NDODWSupportModel, v0, v1);
    atomic_store(result, &qword_27FA124A8);
  }

  return result;
}

uint64_t sub_25ADDBDE4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12498, &qword_25AE11660);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADDBBF0();
  sub_25AE10E8C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for NDODWSupportModel(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NDODWSupportModel(_WORD *result, int a2, int a3)
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

unint64_t sub_25ADDBFF8()
{
  result = qword_27FA12510;
  if (!qword_27FA12510)
  {
    result = swift_getWitnessTable(aQ, &type metadata for NDODWSupportModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12510);
  }

  return result;
}

unint64_t sub_25ADDC050()
{
  result = qword_27FA12518;
  if (!qword_27FA12518)
  {
    result = swift_getWitnessTable(aA, &type metadata for NDODWSupportModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12518);
  }

  return result;
}

uint64_t sub_25ADDC0AC(uint64_t a1, id *a2)
{
  result = sub_25AE10AAC();
  *a2 = 0;
  return result;
}

uint64_t sub_25ADDC124(uint64_t a1, id *a2)
{
  v3 = sub_25AE10ABC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25ADDC1A4@<X0>(uint64_t *a1@<X8>)
{
  sub_25AE10ACC();
  v2 = sub_25AE10A9C();

  *a1 = v2;
  return result;
}

uint64_t sub_25ADDC1E8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25AE10A9C();

  *a2 = v3;
  return result;
}

uint64_t sub_25ADDC230@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AE10ACC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void type metadata accessor for ASCAppState()
{
  if (!qword_27FA12520)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FA12520);
    }
  }
}

uint64_t sub_25ADDC2AC(uint64_t a1)
{
  v2 = sub_25ADDC56C(&qword_27FA12540, byte_25AE1190C);
  v3 = sub_25ADDC56C(&qword_27FA12548, asc_25AE118AC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25ADDC3AC()
{
  v0 = sub_25AE10ACC();
  v1 = MEMORY[0x25F857530](v0);

  return v1;
}

uint64_t sub_25ADDC3E8(uint64_t a1)
{
  sub_25AE10ACC();
  sub_25AE10B2C();
}

uint64_t sub_25ADDC43C(uint64_t a1)
{
  sub_25AE10ACC();
  sub_25AE10E3C();
  sub_25AE10B2C();
  v1 = sub_25AE10E6C();

  return v1;
}

uint64_t sub_25ADDC4B0(void *a1, uint64_t *a2)
{
  v2 = sub_25AE10ACC();
  v4 = v3;
  if (v2 == sub_25AE10ACC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25AE10E2C();
  }

  return v7 & 1;
}

uint64_t sub_25ADDC56C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASCAppState();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_25ADDC614(void *a1)
{
  v2 = v1;
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v4 = sub_25AE102DC();
  __swift_project_value_buffer(v4, qword_27FA1CFB0);
  v5 = sub_25AE102BC();
  v6 = sub_25AE10C4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25ADDA000, v5, v6, "Finished Request", v7, 2u);
    MEMORY[0x25F857CD0](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_originalAppOffer;
  if (!*(v2 + OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_originalAppOffer))
  {
    v9 = [a1 lockup];
    v10 = [v9 offer];

    *(v2 + v8) = v10;
    swift_unknownObjectRelease();
  }

  v11 = [a1 lockup];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 lockupWithOffer_];

    if (v13)
    {
      v14 = [objc_opt_self() sharedMetrics];
      v15 = sub_25AE10A9C();
      v17 = sub_25AE10A9C();
      v16 = [v14 recordCampaignToken:v15 providerToken:v17 withLockup:v13];
    }
  }
}

void sub_25ADDC92C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_25AE1029C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_25AE10A8C();
  MEMORY[0x28223BE20](v7 - 8);
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v8 = sub_25AE102DC();
  __swift_project_value_buffer(v8, qword_27FA1CFB0);
  v9 = a2;
  v10 = sub_25AE102BC();
  v11 = sub_25AE10C4C();

  if (os_log_type_enabled(v10, v11))
  {
    v43 = v3;
    v12 = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    type metadata accessor for ASCAppState();
    v15 = v9;
    v16 = sub_25AE10B0C();
    v18 = sub_25ADDDA94(v16, v17, aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_25ADDA000, v10, v11, "appStateDidChange with state: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x25F857CD0](v14, -1, -1);
    v19 = v13;
    a1 = v12;
    v3 = v43;
    MEMORY[0x25F857CD0](v19, -1, -1);
  }

  v20 = sub_25AE10ACC();
  v22 = v21;
  if (v20 == sub_25AE10ACC() && v22 == v23)
  {
LABEL_12:

    goto LABEL_13;
  }

  v25 = sub_25AE10E2C();

  if ((v25 & 1) == 0)
  {
    v26 = sub_25AE10ACC();
    v28 = v27;
    if (v26 != sub_25AE10ACC() || v28 != v29)
    {
      v42 = sub_25AE10E2C();

      if ((v42 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v30 = objc_opt_self();
  sub_25AE10A7C();
  sub_25AE1028C();
  sub_25AE10AFC();
  v31 = sub_25AE10A9C();

  v32 = [v30 textMetadataWithTitle:v31 subtitle:0];

  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  v34 = objc_allocWithZone(MEMORY[0x277CEC278]);
  aBlock[4] = sub_25ADDE4BC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25ADDDA50;
  aBlock[3] = &block_descriptor;
  v35 = _Block_copy(aBlock);
  v36 = v32;
  v37 = v3;

  v38 = [v34 initWithMetadata:v36 action:v35];
  _Block_release(v35);

  v39 = [a1 lockup];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 lockupWithOffer_];
  }

  else
  {
    v41 = 0;
  }

  [a1 setLockup_];
}

void sub_25ADDCDEC()
{
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v0 = sub_25AE102DC();
  __swift_project_value_buffer(v0, qword_27FA1CFB0);
  v1 = sub_25AE102BC();
  v2 = sub_25AE10C4C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25ADDA000, v1, v2, "appStateDidChange with action", v3, 2u);
    MEMORY[0x25F857CD0](v3, -1, -1);
  }

  sub_25ADDCED0();
}

void sub_25ADDCED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v35 - v2;
  v4 = sub_25AE101BC();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - v7;
  v8 = sub_25AE1016C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v0[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_supportAppUrl];
  v13 = *&v0[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_supportAppUrl];
  v14 = *&v0[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_supportAppUrl + 8];
  v38 = v0;
  aBlock = v13;
  v40 = v14;

  sub_25AE1015C();
  sub_25ADDE53C();
  sub_25AE10CAC();
  v16 = v15;
  (*(v9 + 8))(v11, v8);

  if (v16)
  {
    sub_25AE101AC();

    v17 = v37;
    if ((*(v37 + 48))(v3, 1, v4) != 1)
    {
      v27 = *(v17 + 32);
      v28 = v36;
      v27(v36, v3, v4);
      v29 = [objc_opt_self() sharedApplication];
      v30 = sub_25AE1018C();
      v31 = v35;
      (*(v17 + 16))(v35, v28, v4);
      v32 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v33 = swift_allocObject();
      v27((v33 + v32), v31, v4);
      v43 = sub_25ADDE618;
      v44 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_25ADDD684;
      v42 = &block_descriptor_13;
      v34 = _Block_copy(&aBlock);

      [v29 openURL:v30 withCompletionHandler:v34];
      _Block_release(v34);

      (*(v17 + 8))(v28, v4);
      return;
    }

    sub_25ADDE8CC(v3, &qword_27FA126A8, &qword_25AE11B90);
  }

  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v18 = sub_25AE102DC();
  __swift_project_value_buffer(v18, qword_27FA1CFB0);
  v19 = v38;
  v20 = sub_25AE102BC();
  v21 = sub_25AE10C5C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136315138;
    v25 = *v12;
    v24 = v12[1];

    v26 = sub_25ADDDA94(v25, v24, &aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_25ADDA000, v20, v21, "Could not convert to URL: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x25F857CD0](v23, -1, -1);
    MEMORY[0x25F857CD0](v22, -1, -1);
  }
}

void sub_25ADDD448(char a1, uint64_t a2)
{
  v4 = sub_25AE101BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    if (qword_27FA12490 != -1)
    {
      swift_once();
    }

    v8 = sub_25AE102DC();
    __swift_project_value_buffer(v8, qword_27FA1CFB0);
    (*(v5 + 16))(v7, a2, v4);
    v9 = sub_25AE102BC();
    v10 = sub_25AE10C5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = sub_25AE1017C();
      v15 = v14;
      (*(v5 + 8))(v7, v4);
      v16 = sub_25ADDDA94(v13, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_25ADDA000, v9, v10, "Could not open URL: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25F857CD0](v12, -1, -1);
      MEMORY[0x25F857CD0](v11, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_25ADDD684(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_25ADDD708()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25ADDD7B8()
{
  result = qword_27FA12688;
  if (!qword_27FA12688)
  {
    result = swift_getWitnessTable(byte_25AE11B2C, &type metadata for SupportAppStoreComponent, v0, v1);
    atomic_store(result, &qword_27FA12688);
  }

  return result;
}

void *sub_25ADDD82C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SupportAppStoreComponent.AppStoreCoordinator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_originalAppOffer] = 0;
  v4 = &v3[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_supportAppUrl];
  *v4 = 0xD000000000000032;
  *(v4 + 1) = 0x800000025AE1E970;
  v6.receiver = v3;
  v6.super_class = v2;
  result = objc_msgSendSuper2(&v6, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_25ADDD90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25ADDD9FC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25ADDD970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25ADDD9FC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_25ADDD9D4(uint64_t a1)
{
  sub_25ADDD9FC();
  sub_25AE105DC();
  __break(1u);
}

unint64_t sub_25ADDD9FC()
{
  result = qword_27FA12690;
  if (!qword_27FA12690)
  {
    result = swift_getWitnessTable(byte_25AE11A9C, &type metadata for SupportAppStoreComponent, v0, v1);
    atomic_store(result, &qword_27FA12690);
  }

  return result;
}

uint64_t sub_25ADDDA50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_25ADDDA94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25ADDDB60(v11, 0, 0, 1, a1, a2);
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
    sub_25ADDE4DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25ADDDB60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25ADDDC6C(a5, a6);
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
    result = sub_25AE10CEC();
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

void *sub_25ADDDC6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25ADDDCB8(a1, a2);
  sub_25ADDDDE8(&unk_286C34B38);
  return v3;
}

void *sub_25ADDDCB8(uint64_t a1, unint64_t a2)
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

  v6 = sub_25ADDDED4(v5, 0);
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

  result = sub_25AE10CEC();
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
        v10 = sub_25AE10B4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25ADDDED4(v10, 0);
        result = sub_25AE10CBC();
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

uint64_t sub_25ADDDDE8(uint64_t result)
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

  result = sub_25ADDDF48(result, v11, 1, v3);
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

void *sub_25ADDDED4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A0, &qword_25AE11B88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25ADDDF48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A0, &qword_25AE11B88);
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

id sub_25ADDE03C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEC298]) initWithFrame_];
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_25AE10ACC();
    v5 = v4;

    if (v3 == 0xD000000000000010 && 0x800000025AE1E9B0 == v5)
    {
    }

    else
    {
      v7 = sub_25AE10E2C();

      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v8 = [objc_opt_self() primaryTheme];
    v9 = [v8 titleBackgroundColor];
    v10 = objc_opt_self();
    v11 = [v10 orangeColor];
    v12 = [v10 orangeColor];
    v13 = [v12 colorWithAlphaComponent_];

    v14 = [v8 subtitleTextColor];
    v15 = [v10 orangeColor];
    v16 = [v8 progressColor];
    v17 = [objc_allocWithZone(MEMORY[0x277CEC2B8]) initWithTitleBackgroundColor:v9 titleTextColor:v11 titleTextDisabledColor:v13 subtitleTextColor:v14 iconTintColor:v15 progressColor:v16];

    [v0 setOfferTheme_];
  }

LABEL_10:
  [v0 setLockupSize_];
  v18 = objc_opt_self();
  v19 = v0;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12698, &qword_25AE11B80);
  sub_25AE106DC();
  [v19 setDelegate_];

  v21 = objc_allocWithZone(MEMORY[0x277CEC258]);
  v22 = sub_25AE10A9C();
  v23 = [v21 initWithStringValue_];

  v24 = *MEMORY[0x277CEC230];
  v25 = *MEMORY[0x277CEC218];
  v26 = sub_25AE10A9C();
  v27 = [objc_opt_self() _requestWithID_kind_context_clientID_];

  [v19 setRequest_];
  return v19;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25ADDE484()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25ADDE4DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25ADDE53C()
{
  result = qword_27FA126B0;
  if (!qword_27FA126B0)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27FA126B0);
  }

  return result;
}

uint64_t sub_25ADDE590()
{
  v1 = sub_25AE101BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_25ADDE618(char a1)
{
  v3 = *(sub_25AE101BC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_25ADDD448(a1, v4);
}

void sub_25ADDE770(void *a1)
{
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v2 = sub_25AE102DC();
  __swift_project_value_buffer(v2, qword_27FA1CFB0);
  v3 = a1;
  oslog = sub_25AE102BC();
  v4 = sub_25AE10C5C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_25ADDA000, oslog, v4, "Failed with error: %@", v5, 0xCu);
    sub_25ADDE8CC(v6, &qword_27FA126B8, &qword_25AE11B98);
    MEMORY[0x25F857CD0](v6, -1, -1);
    MEMORY[0x25F857CD0](v5, -1, -1);
  }
}

uint64_t sub_25ADDE8CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t NDOLocalDeviceWarrantyResponse.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOLocalDeviceWarrantyResponse(0) + 20);

  return sub_25ADDE9D0(v3, a1);
}

uint64_t type metadata accessor for NDOLocalDeviceWarrantyResponse(uint64_t a1)
{
  result = qword_27FA12718;
  if (!qword_27FA12718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25ADDE9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NDOLocalDeviceWarrantyResponse.init(sections:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for NDOLocalDeviceWarrantyResponse(0) + 20);

  return sub_25ADDEA8C(a2, v4);
}

uint64_t sub_25ADDEA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADDEB14()
{
  v1 = *v0;
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADDEB88(uint64_t a1)
{
  v2 = *v1;
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](v2);
  return sub_25AE10E6C();
}

uint64_t sub_25ADDEBCC()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x736E6F6974636573;
  }
}

uint64_t sub_25ADDEC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADDECE8(uint64_t a1)
{
  v2 = sub_25ADDEF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADDED24(uint64_t a1)
{
  v2 = sub_25ADDEF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOLocalDeviceWarrantyResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C8, &qword_25AE11BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADDEF60();
  sub_25AE10E8C();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126D8, &qword_25AE11BC0);
  sub_25ADDF374(&qword_27FA126E0, sub_25ADDEFFC, MEMORY[0x277D83948]);
  sub_25AE10DFC();
  if (!v2)
  {
    type metadata accessor for NDOLocalDeviceWarrantyResponse(0);
    v10[6] = 1;
    sub_25AE1024C();
    sub_25ADDF440(&qword_27FA126F0, MEMORY[0x277CC9580]);
    sub_25AE10DBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_25ADDEF60()
{
  result = qword_27FA126D0;
  if (!qword_27FA126D0)
  {
    result = swift_getWitnessTable(byte_25AE11D24, &type metadata for NDOLocalDeviceWarrantyResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA126D0);
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

unint64_t sub_25ADDEFFC()
{
  result = qword_27FA126E8;
  if (!qword_27FA126E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWSection, &type metadata for NDODWSection, v0, v1);
    atomic_store(result, &qword_27FA126E8);
  }

  return result;
}

uint64_t NDOLocalDeviceWarrantyResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126F8, &qword_25AE11BC8);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for NDOLocalDeviceWarrantyResponse(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADDEF60();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v10;
  v13 = v12;
  v14 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126D8, &qword_25AE11BC0);
  v23 = 0;
  sub_25ADDF374(&qword_27FA12700, sub_25ADDF3EC, MEMORY[0x277D83978]);
  v15 = v21;
  sub_25AE10D7C();
  v17 = v24;
  *v13 = v24;
  sub_25AE1024C();
  v22 = 1;
  sub_25ADDF440(&qword_27FA12710, MEMORY[0x277CC95A0]);
  sub_25AE10D3C();
  (*(v14 + 8))(v9, v15);
  sub_25ADDEA8C(v6, v13 + *(v18 + 20));
  sub_25ADDF484(v13, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25ADDF4E8(v13);
}

uint64_t sub_25ADDF374(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA126D8, &qword_25AE11BC0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADDF3EC()
{
  result = qword_27FA12708;
  if (!qword_27FA12708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWSection, &type metadata for NDODWSection, v0, v1);
    atomic_store(result, &qword_27FA12708);
  }

  return result;
}

uint64_t sub_25ADDF440(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_25AE1024C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADDF484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOLocalDeviceWarrantyResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADDF4E8(uint64_t a1)
{
  v2 = type metadata accessor for NDOLocalDeviceWarrantyResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25ADDF588(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25ADDF658(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25ADDF708(uint64_t a1)
{
  sub_25ADDF78C();
  if (v1 <= 0x3F)
  {
    sub_25ADDF7DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25ADDF78C()
{
  if (!qword_27FA12728)
  {
    v0 = sub_25AE10BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12728);
    }
  }
}

void sub_25ADDF7DC(uint64_t a1)
{
  if (!qword_27FA12730)
  {
    sub_25AE1024C();
    v1 = sub_25AE10C7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA12730);
    }
  }
}

uint64_t getEnumTagSinglePayload for NDOLocalDeviceWarrantyResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDOLocalDeviceWarrantyResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25ADDF9A8()
{
  result = qword_27FA12738;
  if (!qword_27FA12738)
  {
    result = swift_getWitnessTable("̓B'ܞ", &type metadata for NDOLocalDeviceWarrantyResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12738);
  }

  return result;
}

unint64_t sub_25ADDFA00()
{
  result = qword_27FA12740;
  if (!qword_27FA12740)
  {
    result = swift_getWitnessTable(a5, &type metadata for NDOLocalDeviceWarrantyResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12740);
  }

  return result;
}

unint64_t sub_25ADDFA58()
{
  result = qword_27FA12748;
  if (!qword_27FA12748)
  {
    result = swift_getWitnessTable(aE, &type metadata for NDOLocalDeviceWarrantyResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12748);
  }

  return result;
}

uint64_t NDODWCoverageModel.logoUrl.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDODWCoverageModel.coverageLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NDODWCoverageModel.coverageExpirationLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NDODWCoverageModel.productName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NDODWCoverageModel.serialNumberLabel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NDODWCoverageModel.warrantyTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void __swiftcall NDODWCoverageModel.init(logoUrl:coverageLabel:coverageExpirationLabel:productName:serialNumberLabel:warrantyTitle:warrantyOverview:links:)(NDOUI::NDODWCoverageModel *__return_ptr retstr, Swift::String_optional logoUrl, Swift::String coverageLabel, Swift::String coverageExpirationLabel, Swift::String productName, Swift::String serialNumberLabel, Swift::String warrantyTitle, Swift::OpaquePointer warrantyOverview, Swift::OpaquePointer links)
{
  retstr->logoUrl = logoUrl;
  retstr->coverageLabel = coverageLabel;
  retstr->coverageExpirationLabel = coverageExpirationLabel;
  retstr->productName = productName;
  retstr->serialNumberLabel = serialNumberLabel;
  retstr->warrantyTitle = warrantyTitle;
  retstr->warrantyOverview = warrantyOverview;
  retstr->links = links;
}

unint64_t sub_25ADDFC20()
{
  v1 = *v0;
  v2 = 0x6C72556F676F6CLL;
  v3 = 0x736B6E696CLL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x79746E6172726177;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x4E746375646F7270;
  }

  if (*v0)
  {
    v2 = 0x6567617265766F63;
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

uint64_t sub_25ADDFD3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADE44CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADDFD70(uint64_t a1)
{
  v2 = sub_25ADE3400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADDFDAC(uint64_t a1)
{
  v2 = sub_25ADE3400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWCoverageModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12750, &qword_25AE11D80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = v1[2];
  v25 = v1[3];
  v26 = v7;
  v8 = v1[4];
  v23 = v1[5];
  v24 = v8;
  v9 = v1[6];
  v21 = v1[7];
  v22 = v9;
  v10 = v1[8];
  v19 = v1[9];
  v20 = v10;
  v11 = v1[11];
  v17 = v1[10];
  v18 = v11;
  v12 = v1[12];
  v15 = v1[13];
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3400();
  sub_25AE10E8C();
  LOBYTE(v29) = 0;
  v13 = v27;
  sub_25AE10DAC();
  if (!v13)
  {
    LOBYTE(v29) = 1;
    sub_25AE10DCC();
    LOBYTE(v29) = 2;
    sub_25AE10DCC();
    LOBYTE(v29) = 3;
    sub_25AE10DCC();
    LOBYTE(v29) = 4;
    sub_25AE10DCC();
    LOBYTE(v29) = 5;
    sub_25AE10DCC();
    v29 = v16;
    v28 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
    sub_25ADE34A8(&qword_27FA12768, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_25AE10DFC();
    v29 = v15;
    v28 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12770, &qword_25AE11D90);
    sub_25ADE3514(&qword_27FA12778, sub_25ADE3454, MEMORY[0x277D83948]);
    sub_25AE10DFC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDODWCoverageModel.hash(into:)(uint64_t a1)
{
  v3 = v1[12];
  v4 = v1[13];
  if (v1[1])
  {
    sub_25AE10E5C();
    sub_25AE10B2C();
  }

  else
  {
    sub_25AE10E5C();
  }

  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  MEMORY[0x25F8577E0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 40;
    do
    {

      sub_25AE10B2C();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  return sub_25ADE2C8C(a1, v4);
}

uint64_t NDODWCoverageModel.hashValue.getter()
{
  sub_25AE10E3C();
  NDODWCoverageModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12788, &qword_25AE11D98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3400();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v58[0]) = 0;
  v10 = sub_25AE10D2C();
  v12 = v11;
  LOBYTE(v58[0]) = 1;
  v13 = sub_25AE10D4C();
  v50 = v14;
  v48 = v13;
  LOBYTE(v58[0]) = 2;
  v47 = sub_25AE10D4C();
  v49 = v15;
  LOBYTE(v58[0]) = 3;
  v43 = sub_25AE10D4C();
  v45 = v16;
  LOBYTE(v58[0]) = 4;
  v17 = sub_25AE10D4C();
  v44 = v18;
  v40 = v17;
  LOBYTE(v58[0]) = 5;
  v42 = 0;
  v19 = sub_25AE10D4C();
  v46 = 0;
  v20 = v19;
  v41 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
  LOBYTE(v51) = 6;
  sub_25ADE34A8(&qword_27FA12790, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v22 = v46;
  sub_25AE10D7C();
  v46 = v22;
  if (v22)
  {
    (*(v6 + 8))(v8, v5);
    v23 = 0;
    v24 = v42;
  }

  else
  {
    v39 = v58[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12770, &qword_25AE11D90);
    v59 = 7;
    sub_25ADE3514(&qword_27FA12798, sub_25ADE358C, MEMORY[0x277D83978]);
    v25 = v46;
    sub_25AE10D7C();
    v46 = v25;
    if (!v25)
    {
      (*(v6 + 8))(v8, v5);
      v42 = v60;
      *&v51 = v10;
      *(&v51 + 1) = v12;
      *&v52 = v48;
      v26 = v20;
      v38 = v20;
      v27 = v50;
      *(&v52 + 1) = v50;
      *&v53 = v47;
      v28 = v49;
      *(&v53 + 1) = v49;
      *&v54 = v43;
      v29 = v45;
      *(&v54 + 1) = v45;
      v30 = v44;
      *&v55 = v40;
      *(&v55 + 1) = v44;
      *&v56 = v26;
      v31 = v41;
      *(&v56 + 1) = v41;
      *&v57 = v39;
      *(&v57 + 1) = v60;
      v32 = v52;
      *a2 = v51;
      a2[1] = v32;
      v33 = v53;
      v34 = v54;
      v35 = v57;
      a2[5] = v56;
      a2[6] = v35;
      v36 = v55;
      a2[3] = v34;
      a2[4] = v36;
      a2[2] = v33;
      sub_25ADE35E0(&v51, v58);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v58[0] = v10;
      v58[1] = v12;
      v58[2] = v48;
      v58[3] = v27;
      v58[4] = v47;
      v58[5] = v28;
      v58[6] = v43;
      v58[7] = v29;
      v58[8] = v40;
      v58[9] = v30;
      v58[10] = v38;
      v58[11] = v31;
      v58[12] = v39;
      v58[13] = v42;
      return sub_25ADE3618(v58);
    }

    (*(v6 + 8))(v8, v5);
    v23 = 1;
    v24 = v42;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  if (!v24)
  {
  }

  if (v23)
  {
  }

  return result;
}

uint64_t sub_25ADE09B8()
{
  sub_25AE10E3C();
  NDODWCoverageModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADE09FC(uint64_t a1)
{
  sub_25AE10E3C();
  NDODWCoverageModel.hash(into:)(v2);
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDODWCoverageModel.CoverageLink.action.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;
}

void __swiftcall NDODWCoverageModel.CoverageLink.init(label:action:)(NDOUI::NDODWCoverageModel::CoverageLink *__return_ptr retstr, Swift::String label, NDOUI::NDODWCoverageModel::CoverageLink::Action *action)
{
  title = action->title;
  countAndFlagsBits = action->subTitle._countAndFlagsBits;
  v5 = action->footer._countAndFlagsBits;
  object = action->footer._object;
  retstr->label = label;
  retstr->action.title = title;
  retstr->action.subTitle._countAndFlagsBits = countAndFlagsBits;
  *&retstr->action.subTitle._object = *&action->subTitle._object;
  retstr->action.footer._countAndFlagsBits = v5;
  retstr->action.footer._object = object;
}

uint64_t sub_25ADE0B38()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_25ADE0B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADE0C40(uint64_t a1)
{
  v2 = sub_25ADE3648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE0C7C(uint64_t a1)
{
  v2 = sub_25ADE3648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127A8, &qword_25AE11DA0);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = v1[3];
  v15 = v1[2];
  v16 = v7;
  v8 = v1[4];
  v10 = v1[6];
  v9 = v1[7];
  v17 = v1[5];
  v18 = v10;
  v13 = v9;
  v14 = v8;
  v19 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3648();
  sub_25AE10E8C();
  LOBYTE(v21) = 0;
  sub_25AE10DCC();
  if (!v2)
  {
    v21 = v15;
    v22 = v16;
    v23 = v14;
    v24 = v17;
    v25 = v18;
    v26 = v13;
    v27 = v19;
    v28 = 1;
    sub_25ADE369C();

    sub_25AE10DFC();
  }

  return (*(v20 + 8))(v6, v4);
}

uint64_t NDODWCoverageModel.CoverageLink.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v2 = *(v1 + 16);
  MEMORY[0x25F8577E0](v2);
  if (v2)
  {
    v3 = v1 + 56;
    do
    {

      sub_25AE10B2C();
      sub_25AE10B2C();

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127C0, &qword_25AE11DA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3648();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27[0]) = 0;
  v9 = sub_25AE10D4C();
  v11 = v10;
  v12 = v9;
  v36 = 1;
  sub_25ADE36F0();
  sub_25AE10D7C();
  (*(v6 + 8))(v8, v5);
  v13 = *(&v32 + 1);
  v24 = v32;
  v14 = v33;
  v23 = v34;
  v15 = v35;
  v22 = *(&v34 + 1);
  *&v25[0] = v12;
  *(&v25[0] + 1) = v11;
  v25[1] = v32;
  v25[2] = v33;
  v25[3] = v34;
  v26 = v35;
  v16 = v25[0];
  v17 = v32;
  v18 = v33;
  v19 = v34;
  *(a2 + 64) = v35;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *a2 = v16;
  *(a2 + 16) = v17;
  sub_25ADE3744(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v12;
  v27[1] = v11;
  v27[2] = v24;
  v27[3] = v13;
  v28 = v14;
  v29 = v23;
  v30 = v22;
  v31 = v15;
  return sub_25ADE377C(v27);
}

uint64_t sub_25ADE136C(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25ADE2E44(v4, v2);
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDODWCoverageModel.CoverageLink.Action.subTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NDODWCoverageModel.CoverageLink.Action.footer.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall NDODWCoverageModel.CoverageLink.Action.init(title:subTitle:benefits:footer:)(NDOUI::NDODWCoverageModel::CoverageLink::Action *__return_ptr retstr, Swift::String title, Swift::String subTitle, Swift::OpaquePointer benefits, Swift::String footer)
{
  retstr->title = title;
  retstr->subTitle = subTitle;
  retstr->benefits = benefits;
  retstr->footer = footer;
}

uint64_t sub_25ADE1500()
{
  v1 = 0x656C746974;
  v2 = 0x73746966656E6562;
  if (*v0 != 2)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0)
  {
    v1 = 0x656C746954627573;
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

uint64_t sub_25ADE1574@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADE477C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADE15A8(uint64_t a1)
{
  v2 = sub_25ADE37AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE15E4(uint64_t a1)
{
  v2 = sub_25ADE37AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127D0, &qword_25AE11DB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v14 = v1[3];
  v15 = v7;
  v8 = v1[4];
  v12[2] = v1[5];
  v13 = v8;
  v12[1] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE37AC();
  sub_25AE10E8C();
  v21 = 0;
  v9 = v16;
  sub_25AE10DCC();
  if (!v9)
  {
    v11 = v13;
    v20 = 1;
    sub_25AE10DCC();
    v17 = v11;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127E0, &qword_25AE11DB8);
    sub_25ADE3800(&qword_27FA127E8, sub_25ADE3878, MEMORY[0x277D83948]);
    sub_25AE10DFC();
    v18 = 3;
    sub_25AE10DCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25AE10B2C();
  sub_25AE10B2C();
  v3 = *(v2 + 16);
  MEMORY[0x25F8577E0](v3);
  if (v3)
  {
    v4 = v2 + 56;
    do
    {

      sub_25AE10B2C();
      sub_25AE10B2C();

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  return sub_25AE10B2C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v2 = *(v1 + 16);
  MEMORY[0x25F8577E0](v2);
  if (v2)
  {
    v3 = v1 + 56;
    do
    {

      sub_25AE10B2C();
      sub_25AE10B2C();

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127F8, &qword_25AE11DC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE37AC();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v9 = sub_25AE10D4C();
  v26 = v10;
  v30 = 1;
  v11 = sub_25AE10D4C();
  v25 = v12;
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127E0, &qword_25AE11DB8);
  v29 = 2;
  sub_25ADE3800(&qword_27FA12800, sub_25ADE38CC, MEMORY[0x277D83978]);
  sub_25AE10D7C();
  v23 = v27;
  v28 = 3;
  v13 = sub_25AE10D4C();
  v16 = v15;
  v17 = *(v6 + 8);
  v22 = v13;
  v17(v8, v5);
  v19 = v25;
  v18 = v26;
  *a2 = v9;
  a2[1] = v18;
  v20 = v23;
  a2[2] = v24;
  a2[3] = v19;
  v21 = v22;
  a2[4] = v20;
  a2[5] = v21;
  a2[6] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADE1DEC()
{
  v1 = *(v0 + 32);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25ADE2E44(v3, v1);
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t sub_25ADE1E88(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25ADE2E44(a1, v3);

  return sub_25AE10B2C();
}

uint64_t sub_25ADE1F04(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25ADE2E44(v4, v2);
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

NDOUI::NDODWCoverageModel::CoverageLink::Action::Benefits __swiftcall NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(Swift::String label, Swift::String value)
{
  *v2 = label;
  v2[1] = value;
  result.value = value;
  result.label = label;
  return result;
}

uint64_t static NDODWCoverageModel.CoverageLink.Action.Benefits.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25AE10E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25AE10E2C();
    }
  }

  return result;
}

uint64_t sub_25ADE20E0()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_25ADE210C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADE21E0(uint64_t a1)
{
  v2 = sub_25ADE3920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE221C(uint64_t a1)
{
  v2 = sub_25ADE3920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12810, &qword_25AE11DC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3920();
  sub_25AE10E8C();
  v12 = 0;
  v8 = v10[3];
  sub_25AE10DCC();
  if (!v8)
  {
    v11 = 1;
    sub_25AE10DCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.hash(into:)(uint64_t a1)
{
  sub_25AE10B2C();

  return sub_25AE10B2C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.hashValue.getter()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12820, &qword_25AE11DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3920();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_25AE10D4C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_25AE10D4C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADE26A4()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t sub_25ADE270C(uint64_t a1)
{
  sub_25AE10B2C();

  return sub_25AE10B2C();
}

uint64_t sub_25ADE275C(uint64_t a1)
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t sub_25ADE27F0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25AE10E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25AE10E2C();
    }
  }

  return result;
}

void sub_25ADE2894(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x25F8577E0](v4);
  if (v4)
  {
    v5 = (a2 + 80);
    do
    {
      v11 = *(v5 - 4);
      v12 = *(v5 - 3);
      v13 = *(v5 - 2);
      v14 = *(v5 - 1);
      v15 = *v5;

      sub_25ADE48D8(v11, v12, v13, v14, v15);
      sub_25ADE48D8(v11, v12, v13, v14, v15);
      sub_25AE10B2C();
      if (v15 > 3)
      {
        if (v15 > 5)
        {
          if (v15 != 6)
          {
            MEMORY[0x25F8577E0](7);

            goto LABEL_7;
          }

          MEMORY[0x25F8577E0](6);
          sub_25AE10E5C();
          if (v12)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v13);
          sub_25ADF2CA0(a1, v14);

          v6 = v11;
          v7 = v12;
          v8 = v13;
          v9 = v14;
          v10 = 6;
        }

        else if (v15 == 4)
        {
          MEMORY[0x25F8577E0](4);
          sub_25AE10E5C();
          if (v12)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v13);
          sub_25ADF2CA0(a1, v14);

          v6 = v11;
          v7 = v12;
          v8 = v13;
          v9 = v14;
          v10 = 4;
        }

        else
        {
          MEMORY[0x25F8577E0](5);
          sub_25AE10E5C();
          if (v12)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v13);
          sub_25ADF2CA0(a1, v14);

          v6 = v11;
          v7 = v12;
          v8 = v13;
          v9 = v14;
          v10 = 5;
        }
      }

      else if (v15 > 1)
      {
        if (v15 == 2)
        {
          MEMORY[0x25F8577E0](2);
          sub_25AE10E5C();
          if (v12)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v13);
          sub_25ADF2CA0(a1, v14);

          v6 = v11;
          v7 = v12;
          v8 = v13;
          v9 = v14;
          v10 = 2;
        }

        else
        {
          MEMORY[0x25F8577E0](3);
          sub_25AE10E5C();
          if (v12)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v13);
          sub_25ADF2CA0(a1, v14);

          v6 = v11;
          v7 = v12;
          v8 = v13;
          v9 = v14;
          v10 = 3;
        }
      }

      else if (v15)
      {
        MEMORY[0x25F8577E0](1);
        sub_25AE10E5C();
        if (v12)
        {
          sub_25AE10B2C();
        }

        sub_25ADF2CA0(a1, v13);
        sub_25ADF2CA0(a1, v14);

        v6 = v11;
        v7 = v12;
        v8 = v13;
        v9 = v14;
        v10 = 1;
      }

      else
      {
        MEMORY[0x25F8577E0](0);
        sub_25AE10E5C();
        if (v12)
        {
          sub_25AE10B2C();
        }

        sub_25ADF2CA0(a1, v13);
        sub_25ADF2CA0(a1, v14);

        v6 = v11;
        v7 = v12;
        v8 = v13;
        v9 = v14;
        v10 = 0;
      }

      sub_25ADE4930(v6, v7, v8, v9, v10);
LABEL_7:
      v5 += 56;
      sub_25ADE4930(v11, v12, v13, v14, v15);
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_25ADE2C8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8577E0](v3);
  v9 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = *(a2 + 32 + 72 * v5 + 48);

      sub_25AE10B2C();

      sub_25AE10B2C();
      sub_25AE10B2C();
      MEMORY[0x25F8577E0](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v6 + 56;
        do
        {

          sub_25AE10B2C();
          sub_25AE10B2C();

          v8 += 32;
          --v7;
        }

        while (v7);
      }

      ++v5;
      sub_25AE10B2C();

      result = swift_bridgeObjectRelease_n();
    }

    while (v5 != v9);
  }

  return result;
}

uint64_t sub_25ADE2E44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8577E0](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {

      sub_25AE10B2C();
      sub_25AE10B2C();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s5NDOUI18NDODWCoverageModelV12CoverageLinkV6ActionV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25AE10E2C() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_25AE10E2C() & 1) == 0 || (sub_25ADEEC48(v3, v10) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v9 && v6 == v11)
  {
    return 1;
  }

  return sub_25AE10E2C();
}

uint64_t _s5NDOUI18NDODWCoverageModelV12CoverageLinkV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v22 = a1[6];
  v23 = a1[5];
  v5 = a1[7];
  v24 = a1[8];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v21 = a2[8];
  if (*a1 == *a2 && a1[1] == a2[1] || (v12 = a1[3], v13 = a1[7], v14 = a2[2], v15 = a2[4], v16 = a2[7], v17 = sub_25AE10E2C(), v10 = v16, v8 = v15, v6 = v14, v5 = v13, v3 = v12, v18 = 0, (v17 & 1) != 0))
  {
    v26[0] = v2;
    v26[1] = v3;
    v26[2] = v4;
    v26[3] = v23;
    v26[4] = v22;
    v26[5] = v5;
    v26[6] = v24;
    v25[0] = v6;
    v25[1] = v7;
    v25[2] = v8;
    v25[3] = v9;
    v25[4] = v11;
    v25[5] = v10;
    v25[6] = v21;
    v20 = _s5NDOUI18NDODWCoverageModelV12CoverageLinkV6ActionV2eeoiySbAG_AGtFZ_0(v26, v25);

    v18 = v20;
  }

  return v18 & 1;
}

uint64_t _s5NDOUI18NDODWCoverageModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v42 = a1[8];
  v40 = a1[9];
  v38 = a1[10];
  v36 = a1[11];
  v34 = a1[12];
  v32 = a1[13];
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v16 = a2[7];
  v41 = a2[8];
  v39 = a2[9];
  v37 = a2[10];
  v35 = a2[11];
  v33 = a2[12];
  v31 = a2[13];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v29 = a1[4];
      v30 = a1[5];
      v17 = a2[7];
      v18 = a2[6];
      v19 = a1[7];
      v20 = a1[6];
      v21 = a2[5];
      v22 = sub_25AE10E2C();
      v14 = v21;
      v7 = v20;
      v9 = v19;
      v15 = v18;
      v16 = v17;
      v6 = v29;
      v8 = v30;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4 != v11 || v5 != v12)
  {
    v23 = v7;
    v24 = v14;
    v25 = sub_25AE10E2C();
    v14 = v24;
    v7 = v23;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 != v13 || v8 != v14)
  {
    v26 = v7;
    v27 = sub_25AE10E2C();
    v7 = v26;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v7 != v15 || v9 != v16) && (sub_25AE10E2C() & 1) == 0 || (v42 != v41 || v40 != v39) && (sub_25AE10E2C() & 1) == 0 || (v38 != v37 || v36 != v35) && (sub_25AE10E2C() & 1) == 0 || (sub_25ADEE9AC(v34, v33) & 1) == 0)
  {
    return 0;
  }

  return sub_25ADEEA3C(v32, v31);
}

unint64_t sub_25ADE3400()
{
  result = qword_27FA12758;
  if (!qword_27FA12758)
  {
    result = swift_getWitnessTable(byte_25AE12614, &type metadata for NDODWCoverageModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12758);
  }

  return result;
}

unint64_t sub_25ADE3454()
{
  result = qword_27FA12780;
  if (!qword_27FA12780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink, &type metadata for NDODWCoverageModel.CoverageLink, v0, v1);
    atomic_store(result, &qword_27FA12780);
  }

  return result;
}

uint64_t sub_25ADE34A8(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12760, &qword_25AE11D88);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADE3514(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12770, &qword_25AE11D90);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADE358C()
{
  result = qword_27FA127A0;
  if (!qword_27FA127A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink, &type metadata for NDODWCoverageModel.CoverageLink, v0, v1);
    atomic_store(result, &qword_27FA127A0);
  }

  return result;
}

unint64_t sub_25ADE3648()
{
  result = qword_27FA127B0;
  if (!qword_27FA127B0)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for NDODWCoverageModel.CoverageLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA127B0);
  }

  return result;
}

unint64_t sub_25ADE369C()
{
  result = qword_27FA127B8;
  if (!qword_27FA127B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink.Action, &type metadata for NDODWCoverageModel.CoverageLink.Action, v0, v1);
    atomic_store(result, &qword_27FA127B8);
  }

  return result;
}

unint64_t sub_25ADE36F0()
{
  result = qword_27FA127C8;
  if (!qword_27FA127C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink.Action, &type metadata for NDODWCoverageModel.CoverageLink.Action, v0, v1);
    atomic_store(result, &qword_27FA127C8);
  }

  return result;
}

unint64_t sub_25ADE37AC()
{
  result = qword_27FA127D8;
  if (!qword_27FA127D8)
  {
    result = swift_getWitnessTable(byte_25AE12574, &type metadata for NDODWCoverageModel.CoverageLink.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA127D8);
  }

  return result;
}

uint64_t sub_25ADE3800(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA127E0, &qword_25AE11DB8);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADE3878()
{
  result = qword_27FA127F0;
  if (!qword_27FA127F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink.Action.Benefits, &type metadata for NDODWCoverageModel.CoverageLink.Action.Benefits, v0, v1);
    atomic_store(result, &qword_27FA127F0);
  }

  return result;
}

unint64_t sub_25ADE38CC()
{
  result = qword_27FA12808;
  if (!qword_27FA12808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink.Action.Benefits, &type metadata for NDODWCoverageModel.CoverageLink.Action.Benefits, v0, v1);
    atomic_store(result, &qword_27FA12808);
  }

  return result;
}

unint64_t sub_25ADE3920()
{
  result = qword_27FA12818;
  if (!qword_27FA12818)
  {
    result = swift_getWitnessTable(byte_25AE12524, &type metadata for NDODWCoverageModel.CoverageLink.Action.Benefits.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12818);
  }

  return result;
}

unint64_t sub_25ADE3978()
{
  result = qword_27FA12828;
  if (!qword_27FA12828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel, &type metadata for NDODWCoverageModel, v0, v1);
    atomic_store(result, &qword_27FA12828);
  }

  return result;
}

unint64_t sub_25ADE39D0()
{
  result = qword_27FA12830;
  if (!qword_27FA12830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink, &type metadata for NDODWCoverageModel.CoverageLink, v0, v1);
    atomic_store(result, &qword_27FA12830);
  }

  return result;
}

unint64_t sub_25ADE3A28()
{
  result = qword_27FA12838;
  if (!qword_27FA12838)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink.Action, &type metadata for NDODWCoverageModel.CoverageLink.Action, v0, v1);
    atomic_store(result, &qword_27FA12838);
  }

  return result;
}

unint64_t sub_25ADE3A80()
{
  result = qword_27FA12840;
  if (!qword_27FA12840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel.CoverageLink.Action.Benefits, &type metadata for NDODWCoverageModel.CoverageLink.Action.Benefits, v0, v1);
    atomic_store(result, &qword_27FA12840);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_25ADE3AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_25ADE3B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25ADE3BD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25ADE3C18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25ADE3C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25ADE3CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25ADE3D44(uint64_t a1, int a2)
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

uint64_t sub_25ADE3D8C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for NDODWCoverageModel.CoverageLink.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDODWCoverageModel.CoverageLink.Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NDODWCoverageModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDODWCoverageModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25ADE40B0()
{
  result = qword_27FA12848;
  if (!qword_27FA12848)
  {
    result = swift_getWitnessTable(byte_25AE122D4, &type metadata for NDODWCoverageModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12848);
  }

  return result;
}

unint64_t sub_25ADE4108()
{
  result = qword_27FA12850;
  if (!qword_27FA12850)
  {
    result = swift_getWitnessTable(aB_2, &type metadata for NDODWCoverageModel.CoverageLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12850);
  }

  return result;
}

unint64_t sub_25ADE4160()
{
  result = qword_27FA12858;
  if (!qword_27FA12858)
  {
    result = swift_getWitnessTable(byte_25AE12444, &type metadata for NDODWCoverageModel.CoverageLink.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12858);
  }

  return result;
}

unint64_t sub_25ADE41B8()
{
  result = qword_27FA12860;
  if (!qword_27FA12860)
  {
    result = swift_getWitnessTable(byte_25AE124FC, &type metadata for NDODWCoverageModel.CoverageLink.Action.Benefits.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12860);
  }

  return result;
}

unint64_t sub_25ADE4210()
{
  result = qword_27FA12868;
  if (!qword_27FA12868)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for NDODWCoverageModel.CoverageLink.Action.Benefits.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12868);
  }

  return result;
}

unint64_t sub_25ADE4268()
{
  result = qword_27FA12870;
  if (!qword_27FA12870)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for NDODWCoverageModel.CoverageLink.Action.Benefits.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12870);
  }

  return result;
}

unint64_t sub_25ADE42C0()
{
  result = qword_27FA12878;
  if (!qword_27FA12878)
  {
    result = swift_getWitnessTable(byte_25AE123B4, &type metadata for NDODWCoverageModel.CoverageLink.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12878);
  }

  return result;
}

unint64_t sub_25ADE4318()
{
  result = qword_27FA12880;
  if (!qword_27FA12880)
  {
    result = swift_getWitnessTable(byte_25AE123DC, &type metadata for NDODWCoverageModel.CoverageLink.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12880);
  }

  return result;
}

unint64_t sub_25ADE4370()
{
  result = qword_27FA12888;
  if (!qword_27FA12888)
  {
    result = swift_getWitnessTable(byte_25AE122FC, &type metadata for NDODWCoverageModel.CoverageLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12888);
  }

  return result;
}

unint64_t sub_25ADE43C8()
{
  result = qword_27FA12890;
  if (!qword_27FA12890)
  {
    result = swift_getWitnessTable(byte_25AE12324, &type metadata for NDODWCoverageModel.CoverageLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12890);
  }

  return result;
}

unint64_t sub_25ADE4420()
{
  result = qword_27FA12898;
  if (!qword_27FA12898)
  {
    result = swift_getWitnessTable(asc_25AE12244, &type metadata for NDODWCoverageModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12898);
  }

  return result;
}

unint64_t sub_25ADE4478()
{
  result = qword_27FA128A0;
  if (!qword_27FA128A0)
  {
    result = swift_getWitnessTable(aM, &type metadata for NDODWCoverageModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA128A0);
  }

  return result;
}

uint64_t sub_25ADE44CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556F676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025AE1EA50 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EA70 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79746E6172726177 && a2 == 0xED0000656C746954 || (sub_25AE10E2C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025AE1EA90 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADE477C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746966656E6562 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

void sub_25ADE48D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }
}

void sub_25ADE4930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_5NDOUI10NDOUIStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25ADE49E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25ADE4A2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25ADE4A70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t NDOLocalCoverageCentralResponse.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOLocalCoverageCentralResponse(0) + 20);

  return sub_25ADDE9D0(v3, a1);
}

uint64_t type metadata accessor for NDOLocalCoverageCentralResponse(uint64_t a1)
{
  result = qword_27FA128E8;
  if (!qword_27FA128E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NDOLocalCoverageCentralResponse.init(sections:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for NDOLocalCoverageCentralResponse(0) + 20);

  return sub_25ADDEA8C(a2, v4);
}

uint64_t sub_25ADE4B7C(uint64_t a1)
{
  v2 = sub_25ADE4DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE4BB8(uint64_t a1)
{
  v2 = sub_25ADE4DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOLocalCoverageCentralResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA128A8, &qword_25AE126F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE4DF4();
  sub_25AE10E8C();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA128B8, &qword_25AE12700);
  sub_25ADE51C0(&qword_27FA128C0, sub_25ADE4E48, MEMORY[0x277D83948]);
  sub_25AE10DFC();
  if (!v2)
  {
    type metadata accessor for NDOLocalCoverageCentralResponse(0);
    v10[6] = 1;
    sub_25AE1024C();
    sub_25ADDF440(&qword_27FA126F0, MEMORY[0x277CC9580]);
    sub_25AE10DBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_25ADE4DF4()
{
  result = qword_27FA128B0;
  if (!qword_27FA128B0)
  {
    result = swift_getWitnessTable("ōB'ܔ", &type metadata for NDOLocalCoverageCentralResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA128B0);
  }

  return result;
}

unint64_t sub_25ADE4E48()
{
  result = qword_27FA128C8;
  if (!qword_27FA128C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOSection, &type metadata for NDOSection, v0, v1);
    atomic_store(result, &qword_27FA128C8);
  }

  return result;
}

uint64_t NDOLocalCoverageCentralResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA128D0, &qword_25AE12708);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for NDOLocalCoverageCentralResponse(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE4DF4();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v10;
  v13 = v12;
  v14 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA128B8, &qword_25AE12700);
  v23 = 0;
  sub_25ADE51C0(&qword_27FA128D8, sub_25ADE5238, MEMORY[0x277D83978]);
  v15 = v21;
  sub_25AE10D7C();
  v17 = v24;
  *v13 = v24;
  sub_25AE1024C();
  v22 = 1;
  sub_25ADDF440(&qword_27FA12710, MEMORY[0x277CC95A0]);
  sub_25AE10D3C();
  (*(v14 + 8))(v9, v15);
  sub_25ADDEA8C(v6, v13 + *(v18 + 20));
  sub_25ADE528C(v13, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25ADE52F0(v13);
}

uint64_t sub_25ADE51C0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA128B8, &qword_25AE12700);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADE5238()
{
  result = qword_27FA128E0;
  if (!qword_27FA128E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOSection, &type metadata for NDOSection, v0, v1);
    atomic_store(result, &qword_27FA128E0);
  }

  return result;
}

uint64_t sub_25ADE528C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOLocalCoverageCentralResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADE52F0(uint64_t a1)
{
  v2 = type metadata accessor for NDOLocalCoverageCentralResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25ADE5390(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25ADE5460(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25ADE5510(uint64_t a1)
{
  sub_25ADE5594();
  if (v1 <= 0x3F)
  {
    sub_25ADDF7DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25ADE5594()
{
  if (!qword_27FA128F8)
  {
    v0 = sub_25AE10BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA128F8);
    }
  }
}

unint64_t sub_25ADE55F8()
{
  result = qword_27FA12900;
  if (!qword_27FA12900)
  {
    result = swift_getWitnessTable(byte_25AE1283C, &type metadata for NDOLocalCoverageCentralResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12900);
  }

  return result;
}

unint64_t sub_25ADE5650()
{
  result = qword_27FA12908;
  if (!qword_27FA12908)
  {
    result = swift_getWitnessTable(byte_25AE127AC, &type metadata for NDOLocalCoverageCentralResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12908);
  }

  return result;
}

unint64_t sub_25ADE56A8()
{
  result = qword_27FA12910;
  if (!qword_27FA12910)
  {
    result = swift_getWitnessTable(byte_25AE127D4, &type metadata for NDOLocalCoverageCentralResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12910);
  }

  return result;
}

uint64_t sub_25ADE56FC(uint64_t a1)
{
  v2 = sub_25AE1038C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  sub_25AE1099C();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_25ADE5800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a4;
  v57 = a5;
  v58 = a2;
  v59 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v53 - v9;
  v10 = sub_25AE1014C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_25AE1038C();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v64 = [objc_allocWithZone(MEMORY[0x277CCACD8]) init];
  v23 = sub_25AE101BC();
  v24 = *(*(v23 - 8) + 48);
  v25 = v24(a1, 1, v23);
  v61 = a1;
  if (v25 == 1)
  {
    (*(v11 + 56))(v22, 1, 1, v10);
    v27 = v11;
  }

  else
  {
    sub_25ADE82E0(a1, v16, &qword_27FA126A8, &qword_25AE11B90);
    result = v24(v16, 1, v23);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    sub_25AE1013C();
    v27 = v11;
    (*(v11 + 56))(v22, 0, 1, v10);
  }

  v29 = type metadata accessor for NDOCachedAsyncImage(0, v56, v57, v26);
  v30 = v29[10];
  sub_25ADE83F0(v22, a6 + v30);
  v31 = [objc_opt_self() defaultSessionConfiguration];
  v32 = v64;
  [v31 setURLCache_];
  *(a6 + v29[11]) = [objc_opt_self() sessionWithConfiguration_];
  v33 = (a6 + v29[9]);
  v34 = v59;
  *v33 = v58;
  v33[1] = v34;
  v35 = *MEMORY[0x277CDD9B8];
  v59 = *(v60 + 104);
  v59(v62, v35, v63);
  sub_25AE1097C();
  v60 = a6;
  sub_25ADE82E0(a6 + v30, v20, &qword_27FA12928, &qword_25AE128D8);
  if ((*(v27 + 48))(v20, 1, v10) == 1)
  {

    sub_25ADDE8CC(v61, &qword_27FA126A8, &qword_25AE11B90);
    v36 = &qword_27FA12928;
    v37 = &qword_25AE128D8;
    v38 = v20;
  }

  else
  {
    v39 = v55;
    (*(v27 + 32))(v55, v20, v10);
    v40 = sub_25AE1012C();
    v41 = [v32 cachedResponseForRequest_];

    if (v41)
    {
      v58 = v10;
      v42 = [v41 data];
      v43 = sub_25AE101DC();
      v45 = v44;

      v46 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v47 = sub_25AE101CC();
      v48 = [v46 initWithData_];

      if (v48)
      {
        v49 = sub_25AE1090C();
        sub_25ADE8348(v43, v45);
        v51 = v62;
        v50 = v63;
        *v62 = v49;
        v59(v51, *MEMORY[0x277CDD9C8], v50);

        v52 = v54;
        sub_25AE1097C();

        (*(v27 + 8))(v55, v58);
        sub_25ADDE8CC(v61, &qword_27FA126A8, &qword_25AE11B90);
        return sub_25ADE8460(v52, v60);
      }

      sub_25ADE8348(v43, v45);
      (*(v27 + 8))(v55, v58);
    }

    else
    {
      (*(v27 + 8))(v39, v10);
    }

    v36 = &qword_27FA126A8;
    v37 = &qword_25AE11B90;
    v38 = v61;
  }

  return sub_25ADDE8CC(v38, v36, v37);
}

uint64_t NDOCachedAsyncImage.init<A, B>(url:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = a4;
  v26 = a5;
  v27 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  sub_25ADE82E0(a1, &v24 - v17, &qword_27FA126A8, &qword_25AE11B90);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  *(v19 + 32) = a8;
  *(v19 + 40) = a10;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3;
  v20 = v26;
  *(v19 + 64) = v25;
  *(v19 + 72) = v20;
  v21 = sub_25AE1061C();
  v28[0] = a8;
  v28[1] = a10;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v21, v28);
  sub_25ADE5800(v18, sub_25ADE698C, v19, v21, WitnessTable, v27);
  return sub_25ADDE8CC(a1, &qword_27FA126A8, &qword_25AE11B90);
}

uint64_t sub_25ADE6028@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_25AE106CC();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA129E8, &qword_25AE12968);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA129F0, &qword_25AE12970);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA129F8, &qword_25AE12978);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - v10);
  v12 = sub_25AE1092C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25AE1037C())
  {
    (*(v13 + 104))(v15, *MEMORY[0x277CE0FE0], v12);
    v16 = sub_25AE1093C();
    (*(v13 + 8))(v15, v12);
    *v11 = v16;
    swift_storeEnumTagMultiPayload();
    v17 = sub_25ADE8250(&qword_27FA12A00, &qword_27FA129E8, &qword_25AE12968, MEMORY[0x277CDD7F8]);
    v18 = sub_25ADE8298(&qword_27FA12A08, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_retain_n();
    v31 = v3;
    v32 = v29;
    v33 = v17;
    v34 = v18;
    swift_getOpaqueTypeConformance2();
    sub_25AE1060C();
  }

  else
  {
    sub_25AE1030C();
    sub_25AE106BC();
    v20 = sub_25ADE8250(&qword_27FA12A00, &qword_27FA129E8, &qword_25AE12968, MEMORY[0x277CDD7F8]);
    v21 = sub_25ADE8298(&qword_27FA12A08, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v22 = v29;
    sub_25AE1085C();
    (*(v26 + 8))(v2, v22);
    (*(v25 + 8))(v5, v3);
    v24 = v27;
    v23 = v28;
    (*(v27 + 16))(v11, v8, v28);
    swift_storeEnumTagMultiPayload();
    v31 = v3;
    v32 = v22;
    v33 = v20;
    v34 = v21;
    swift_getOpaqueTypeConformance2();
    sub_25AE1060C();
    return (*(v24 + 8))(v8, v23);
  }
}

uint64_t sub_25ADE6584@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(void, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a8;
  v51 = a9;
  v42 = a5;
  v43 = a4;
  v45 = a3;
  v46 = a2;
  v12 = *(a6 - 8);
  v49 = a10;
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  v44 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = sub_25AE1061C();
  v47 = *(v25 - 8);
  v48 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - v26;
  v28 = sub_25AE1037C();
  if (v28)
  {
    v46(v28, v29);
    v30 = *(v12 + 16);
    v30(v18, v15, a6);
    v31 = *(v12 + 8);
    v31(v15, a6);
    v30(v15, v18, a6);
    v32 = v49;
    v33 = v50;
    sub_25ADE69C0(v15, a6, a7, v50, v49);

    v31(v15, a6);
    v31(v18, a6);
  }

  else
  {
    v43(0, v29);
    v34 = v44;
    v35 = *(v44 + 16);
    v35(v24, v22, a7);
    v36 = *(v34 + 8);
    v36(v22, a7);
    v35(v22, v24, a7);
    v37 = v49;
    v33 = v50;
    sub_25ADE6AB8(v22, a6, a7, v50, v49);
    v38 = v22;
    v32 = v37;
    v36(v38, a7);
    v36(v24, a7);
  }

  v52[0] = v33;
  v52[1] = v32;
  v39 = v48;
  swift_getWitnessTable(MEMORY[0x277CE0340], v48, v52, v42);
  v40 = v47;
  (*(v47 + 16))(v51, v27, v39);
  return (*(v40 + 8))(v27, v39);
}

uint64_t sub_25ADE694C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25ADE69C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25AE105FC();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25AE1060C();
}

uint64_t sub_25ADE6AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25AE105FC();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25AE1060C();
}

uint64_t NDOCachedAsyncImage.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v4 = sub_25AE10C2C();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v39 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_25AE1038C();
  v9 = *(v37 - 8);
  v10 = MEMORY[0x28223BE20](v37);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 16);
  v42 = *(v35 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12918, &qword_25AE128B8);
  v14 = sub_25AE1039C();
  v41 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v36 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v40 = &v33 - v17;
  v18 = *(v2 + *(a1 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  sub_25AE1098C();
  v18(v12);
  (*(v9 + 8))(v12, v37);
  v19 = v38;
  (*(v7 + 16))(v38, v2, a1);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  v22 = *(a1 + 24);
  v23 = v35;
  *(v21 + 16) = v35;
  *(v21 + 24) = v22;
  (*(v7 + 32))(v21 + v20, v19, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  sub_25ADE7BEC();
  v24 = v43;
  sub_25AE10C1C();
  v25 = v36;
  v26 = v34;
  sub_25AE108AC();

  (*(v44 + 8))(v24, v45);
  (*(v42 + 8))(v26, v23);
  v27 = sub_25ADE8250(qword_27FA12940, &qword_27FA12918, &qword_25AE128B8, MEMORY[0x277CDDEB8]);
  v47[0] = v22;
  v47[1] = v27;
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v14, v47);
  v29 = v40;
  v28 = v41;
  v30 = *(v41 + 16);
  v30(v40, v25, v14);
  v31 = *(v28 + 8);
  v31(v25, v14);
  v30(v46, v29, v14);
  return (v31)(v29, v14);
}

uint64_t sub_25ADE70C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_25AE1038C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  v3[8] = swift_task_alloc();
  v5 = sub_25AE1014C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_25AE10C0C();
  v3[12] = sub_25AE10BFC();
  v7 = sub_25AE10BEC();
  v3[13] = v7;
  v3[14] = v6;

  return MEMORY[0x2822009F8](sub_25ADE7254, v7, v6);
}

uint64_t sub_25ADE7254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[9];
  v6 = v4[10];
  v7 = v4[8];
  v8 = v4[2];
  v9 = type metadata accessor for NDOCachedAsyncImage(0, v4[3], v4[4], a4);
  v4[15] = v9;
  sub_25ADE82E0(v8 + *(v9 + 40), v7, &qword_27FA12928, &qword_25AE128D8);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v10 = v4[8];

    sub_25ADDE8CC(v10, &qword_27FA12928, &qword_25AE128D8);

    v11 = v4[1];

    return v11();
  }

  else
  {
    v13 = v4[2];
    (*(v4[10] + 32))(v4[11], v4[8], v4[9]);
    v4[16] = *(v13 + *(v9 + 44));
    v14 = swift_task_alloc();
    v4[17] = v14;
    *v14 = v4;
    v14[1] = sub_25ADE7404;
    v15 = v4[11];

    return MEMORY[0x28211ECF8](v15, 0);
  }
}

uint64_t sub_25ADE7404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;

  if (v3)
  {

    v6 = v5[13];
    v7 = v5[14];
    v8 = sub_25ADE77B4;
  }

  else
  {
    v6 = v5[13];
    v7 = v5[14];
    v8 = sub_25ADE7530;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

void sub_25ADE7530()
{
  v1 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v2 = sub_25AE101CC();
  v3 = [v1 initWithData_];

  if (v3)
  {
    v4 = v0[16];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    *v5 = sub_25AE1090C();
    (*(v6 + 104))(v5, *MEMORY[0x277CDD9C8], v7);

    sub_25ADE56FC(v5);
    v8 = [v4 configuration];
    v9 = [v8 URLCache];

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v0[19];
    v11 = v0[20];
    v12 = v0[18];
    v13 = v0[11];
    v14 = v0[10];
    v24 = v0[9];

    v15 = objc_allocWithZone(MEMORY[0x277CCA8F0]);
    v16 = v11;
    sub_25ADE839C(v12, v10);
    v17 = sub_25AE101CC();
    v18 = [v15 initWithResponse:v16 data:v17];

    sub_25ADE8348(v12, v10);
    v19 = sub_25AE1012C();
    [v9 storeCachedResponse:v18 forRequest:v19];

    sub_25ADE8348(v12, v10);

    (*(v14 + 8))(v13, v24);
  }

  else
  {
    v20 = v0[19];
    v21 = v0[20];
    v22 = v0[18];
    (*(v0[10] + 8))(v0[11], v0[9]);

    sub_25ADE8348(v22, v20);
  }

  v23 = v0[1];

  v23();
}

uint64_t sub_25ADE77B4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25ADE7854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NDOCachedAsyncImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;
  v10 = sub_25AE1038C();
  (*(*(v10 - 8) + 8))(v4 + v7, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);

  v11 = *(v5 + 40);
  v12 = sub_25AE1014C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_25ADE7A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NDOCachedAsyncImage(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25ADE7AF8;

  return sub_25ADE70C8(v4 + v9, v6, v7);
}

uint64_t sub_25ADE7AF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_25ADE7BEC()
{
  result = qword_27FA12930;
  if (!qword_27FA12930)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12928, &qword_25AE128D8);
    v4[0] = sub_25ADE8298(&qword_27FA12938, MEMORY[0x277CC8678], MEMORY[0x277CC8688]);
    result = swift_getWitnessTable(MEMORY[0x277D84F50], v3, v4);
    atomic_store(result, &qword_27FA12930);
  }

  return result;
}

void sub_25ADE7CF0(uint64_t a1)
{
  sub_25ADE80F4(319, &qword_27FA129C8, MEMORY[0x277CDD9D0], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_25ADE80A4();
    if (v2 <= 0x3F)
    {
      sub_25ADE80F4(319, &qword_27FA129D8, MEMORY[0x277CC8678], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25ADE8158();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25ADE7E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25ADE7F68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

unint64_t sub_25ADE80A4()
{
  result = qword_27FA129D0;
  if (!qword_27FA129D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FA129D0);
  }

  return result;
}

void sub_25ADE80F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25ADE8158()
{
  result = qword_27FA129E0;
  if (!qword_27FA129E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA129E0);
  }

  return result;
}

uint64_t sub_25ADE81A4(uint64_t *a1)
{
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12918, &qword_25AE128B8);
  v2 = sub_25AE1039C();
  v4[0] = v1;
  v4[1] = sub_25ADE8250(qword_27FA12940, &qword_27FA12918, &qword_25AE128B8, MEMORY[0x277CDDEB8]);
  return swift_getWitnessTable(MEMORY[0x277CDFAD8], v2, v4);
}

uint64_t sub_25ADE8250(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADE8298(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_25ADE82E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25ADE8348(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25ADE839C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25ADE83F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADE8460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NDOLoadingMessage.init(lastLoadedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AE1024C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

__n128 NDOLoadingMessage.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_25AE101FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25AE1021C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25AE104FC();
  MEMORY[0x28223BE20](v10 - 8);
  sub_25AE104EC();
  sub_25AE104DC();
  sub_25AE1020C();
  sub_25AE101EC();
  sub_25AE1023C();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  sub_25AE104CC();

  sub_25AE104DC();
  sub_25AE1050C();
  v11 = sub_25AE1081C();
  v13 = v12;
  v15 = v14;
  sub_25AE107DC();
  v16 = sub_25AE1080C();
  v18 = v17;
  LOBYTE(v3) = v19;
  v21 = v20;

  sub_25ADE88C4(v11, v13, v15 & 1);

  sub_25AE10A1C();
  sub_25AE103AC();
  v27 = v3 & 1;
  KeyPath = swift_getKeyPath();
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v21;
  v23 = v26[5];
  *(a1 + 96) = v26[4];
  *(a1 + 112) = v23;
  *(a1 + 128) = v26[6];
  v24 = v26[1];
  *(a1 + 32) = v26[0];
  *(a1 + 48) = v24;
  result = v26[3];
  *(a1 + 64) = v26[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_25ADE88C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25ADE88D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE103BC();
  *a1 = result;
  return result;
}

uint64_t sub_25ADE895C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AE1024C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25ADE89DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AE1024C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NDOLoadingMessage(uint64_t a1)
{
  result = qword_27FA12A10;
  if (!qword_27FA12A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25ADE8A98(uint64_t a1)
{
  result = sub_25AE1024C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25ADE8B08()
{
  result = qword_27FA12A20;
  if (!qword_27FA12A20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12A28, &qword_25AE12A28);
    v4[0] = sub_25ADE8B94();
    v4[1] = sub_25ADE8C18();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA12A20);
  }

  return result;
}

unint64_t sub_25ADE8B94()
{
  result = qword_27FA12A30;
  if (!qword_27FA12A30)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12A38, &qword_25AE12A30);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA12A30);
  }

  return result;
}

unint64_t sub_25ADE8C18()
{
  result = qword_27FA12A40;
  if (!qword_27FA12A40)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12A48, &qword_25AE12A38);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v3, v0, v1);
    atomic_store(result, &qword_27FA12A40);
  }

  return result;
}

double NDODWItem.action.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 112);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = *(v1 + 64);
      v9 = *(v1 + 72);
      v10 = *(v1 + 56);
      *a1 = v2;
      *(a1 + 8) = v10;
      *(a1 + 16) = v8;
      *(a1 + 24) = v9;
      v11 = *(v1 + 80);
      *(a1 + 32) = v11;
      sub_25ADE48D8(v2, v10, v8, v9, v11);
      return result;
    }
  }

  else if (v3 >= 2)
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v2;
    sub_25ADE48D8(v6, v7, v4, v5, v2);
    return result;
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t sub_25ADE8CEC()
{
  v1 = *v0;
  v2 = 0x6567617265766F63;
  v3 = 1802398060;
  v4 = 0x6F6D6F7270;
  if (v1 != 3)
  {
    v4 = 0x74726F70707573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746F6F66;
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

uint64_t sub_25ADE8D78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADEBB74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADE8DAC(uint64_t a1)
{
  v2 = sub_25ADEACE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE8DE8(uint64_t a1)
{
  v2 = sub_25ADEACE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE8E30(uint64_t a1)
{
  v2 = sub_25ADEAFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE8E6C(uint64_t a1)
{
  v2 = sub_25ADEAFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE8EDC(uint64_t a1)
{
  v2 = sub_25ADEAF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE8F18(uint64_t a1)
{
  v2 = sub_25ADEAF30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE8F54(uint64_t a1)
{
  v2 = sub_25ADEAE88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE8F90(uint64_t a1)
{
  v2 = sub_25ADEAE88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE8FCC(uint64_t a1)
{
  v2 = sub_25ADEADE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE9008(uint64_t a1)
{
  v2 = sub_25ADEADE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE9044()
{
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](0);
  return sub_25AE10E6C();
}

uint64_t sub_25ADE9088(uint64_t a1)
{
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](0);
  return sub_25AE10E6C();
}

uint64_t sub_25ADE90C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25AE10E2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25ADE9148(uint64_t a1)
{
  v2 = sub_25ADEAD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE9184(uint64_t a1)
{
  v2 = sub_25ADEAD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWItem.encode(to:)(void *a1)
{
  v2 = v1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A50, &qword_25AE12A40);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v30 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A58, &qword_25AE12A48);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v30 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A60, &qword_25AE12A50);
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v30 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A68, &qword_25AE12A58);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A70, &qword_25AE12A60);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A78, &qword_25AE12A68);
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = v2[1];
  v47 = *v2;
  v48 = v15;
  v16 = v2[3];
  v49 = v2[2];
  v43 = v16;
  v17 = v2[5];
  v44 = v2[4];
  v45 = v17;
  v46 = *(v2 + 48);
  v18 = *(v2 + 112);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEACE4();
  v50 = v14;
  sub_25AE10E8C();
  if (v18 <= 1)
  {
    v24 = v40;
    v25 = v41;
    v26 = v42;
    if (!v18)
    {
      LOBYTE(v53) = 0;
      sub_25ADEAFD8();
      v27 = v52;
      v28 = v50;
      sub_25AE10D9C();
      v53 = v47;
      v54 = v48;
      v55 = v49;
      v56 = v43;
      v57 = v44;
      v58 = v45;
      v59 = v46;
      v60 = *(v2 + 49);
      v61 = *(v2 + 65);
      *v62 = *(v2 + 81);
      *&v62[15] = *(v2 + 6);
      sub_25ADEB02C();
      sub_25AE10DFC();
      (*(v24 + 8))(v11, v9);
      return (*(v51 + 8))(v28, v27);
    }

    LOBYTE(v53) = 1;
    sub_25ADEAF30();
    v20 = v52;
    v21 = v50;
    sub_25AE10D9C();
    v53 = v47;
    v54 = v48;
    v55 = v49;
    sub_25ADEAF84();
    sub_25AE10DFC();
    (*(v25 + 8))(v8, v26);
  }

  else
  {
    if (v18 == 2)
    {
      LOBYTE(v53) = 2;
      sub_25ADEAE88();
      v19 = v31;
      v20 = v52;
      v21 = v50;
      sub_25AE10D9C();
      v53 = v47;
      v54 = v48;
      v55 = v49;
      v56 = v43;
      v57 = v44;
      v58 = v45;
      v59 = v46;
      sub_25ADEAEDC();
      v22 = v33;
      sub_25AE10DFC();
      v23 = &v62[7];
    }

    else if (v18 == 3)
    {
      LOBYTE(v53) = 3;
      sub_25ADEADE0();
      v19 = v34;
      v20 = v52;
      v21 = v50;
      sub_25AE10D9C();
      v53 = v47;
      v54 = v48;
      v55 = v49;
      v56 = v43;
      v57 = v44;
      v58 = v45;
      v59 = v46;
      v60 = *(v2 + 49);
      v61 = *(v2 + 65);
      sub_25ADEAE34();
      v22 = v36;
      sub_25AE10DFC();
      v23 = &v63;
    }

    else
    {
      LOBYTE(v53) = 4;
      sub_25ADEAD38();
      v19 = v37;
      v20 = v52;
      v21 = v50;
      sub_25AE10D9C();
      sub_25ADEAD8C();
      v22 = v39;
      sub_25AE10DFC();
      v23 = &v64;
    }

    (*(*(v23 - 32) + 8))(v19, v22);
  }

  return (*(v51 + 8))(v21, v20);
}

void NDODWItem.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 112);
  if (v4 <= 1)
  {
    if (*(v1 + 112))
    {
      MEMORY[0x25F8577E0](1);
      sub_25AE10B2C();

      sub_25ADE2894(a1, v3);
    }

    else
    {
      MEMORY[0x25F8577E0](0);
      NDODWCoverageModel.hash(into:)(a1);
    }
  }

  else
  {
    if (v4 == 2)
    {
      MEMORY[0x25F8577E0](2);
      sub_25AE10B2C();
      goto LABEL_8;
    }

    if (v4 == 3)
    {
      MEMORY[0x25F8577E0](3);
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
LABEL_8:
      NDOAction.hash(into:)(a1);
      return;
    }

    MEMORY[0x25F8577E0](4);
  }
}

uint64_t NDODWItem.hashValue.getter()
{
  sub_25AE10E3C();
  NDODWItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDODWItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AD8, &qword_25AE12A70);
  v67 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v68 = &v55 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AE0, &qword_25AE12A78);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v70 = &v55 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AE8, &qword_25AE12A80);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v69 = &v55 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AF0, &qword_25AE12A88);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AF8, &qword_25AE12A90);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12B00, &qword_25AE12A98);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_25ADEACE4();
  v16 = v72;
  sub_25AE10E7C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v56 = v8;
  v17 = v69;
  v18 = v70;
  v57 = v12;
  v19 = v71;
  v72 = v11;
  v58 = v14;
  v20 = sub_25AE10D8C();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
  {
    v24 = sub_25AE10CDC();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12B08, &qword_25AE12AA0);
    *v26 = &type metadata for NDODWItem;
    v27 = v72;
    v28 = v58;
    sub_25AE10D1C();
    sub_25AE10CCC();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v57 + 8))(v28, v27);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v55 = v20;
  if (v22 <= 1)
  {
    if (v22)
    {
      LOBYTE(v73) = 1;
      sub_25ADEAF30();
      v38 = v7;
      v39 = v58;
      sub_25AE10D0C();
      v40 = v57;
      sub_25ADEB17C();
      v47 = v61;
      sub_25AE10D7C();
      v67 = 0;
      (*(v60 + 8))(v38, v47);
      (*(v40 + 8))(v39, v72);
      swift_unknownObjectRelease();
      v49 = v73;
      v50 = v74;
      *&v51 = v75;
    }

    else
    {
      LOBYTE(v73) = 0;
      sub_25ADEAFD8();
      v32 = v72;
      v33 = v58;
      sub_25AE10D0C();
      sub_25ADEB1D0();
      v46 = v56;
      sub_25AE10D7C();
      (*(v59 + 8))(v10, v46);
      (*(v57 + 8))(v33, v32);
      swift_unknownObjectRelease();
      v67 = 0;
      v49 = v73;
      v50 = v74;
      v51 = v75;
      v52 = v76;
      v53 = v77;
      v81 = v78;
      v82 = v79;
      *v83 = *v80;
      *&v83[15] = *&v80[15];
    }
  }

  else if (v22 == 2)
  {
    LOBYTE(v73) = 2;
    sub_25ADEAE88();
    v34 = v17;
    v35 = v72;
    v36 = v58;
    sub_25AE10D0C();
    sub_25ADEB128();
    v41 = v62;
    sub_25AE10D7C();
    v42 = (v57 + 8);
    v67 = 0;
    (*(v63 + 8))(v34, v41);
    (*v42)(v36, v35);
    swift_unknownObjectRelease();
    v49 = v73;
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v53 = v77;
  }

  else
  {
    v29 = v72;
    v30 = v58;
    if (v22 == 3)
    {
      LOBYTE(v73) = 3;
      sub_25ADEADE0();
      sub_25AE10D0C();
      sub_25ADEB0D4();
      v31 = v65;
      sub_25AE10D7C();
      v67 = 0;
      (*(v66 + 8))(v18, v31);
      (*(v57 + 8))(v30, v29);
      swift_unknownObjectRelease();
      v49 = v73;
      v50 = v74;
      v51 = v75;
      v52 = v76;
      v53 = v77;
      v81 = v78;
      v82 = v79;
    }

    else
    {
      LOBYTE(v73) = 4;
      sub_25ADEAD38();
      v37 = v68;
      sub_25AE10D0C();
      sub_25ADEB080();
      v43 = v64;
      sub_25AE10D7C();
      v44 = (v67 + 8);
      v45 = (v57 + 8);
      v67 = 0;
      (*v44)(v37, v43);
      (*v45)(v30, v29);
      swift_unknownObjectRelease();
    }
  }

  *v19 = v49;
  *(v19 + 8) = v50;
  *(v19 + 16) = v51;
  *(v19 + 32) = v52;
  *(v19 + 48) = v53;
  v54 = v82;
  *(v19 + 49) = v81;
  *(v19 + 65) = v54;
  *(v19 + 81) = *v83;
  *(v19 + 96) = *&v83[15];
  *(v19 + 112) = v22;
  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_25ADEA77C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

uint64_t sub_25ADEA7B0()
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

uint64_t sub_25ADEA7E4()
{
  sub_25AE10E3C();
  NDODWItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEA828(uint64_t a1)
{
  sub_25AE10E3C();
  NDODWItem.hash(into:)(v2);
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI9NDODWItemO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v65 = a1[4];
  v66 = v3;
  v4 = a1[5];
  v67 = a1[6];
  v5 = a1[1];
  v61 = *a1;
  v62 = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v63 = a1[2];
  v64 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v71 = a2[2];
  v72 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v69 = v9;
  v70 = v12;
  v15 = a2[5];
  v75 = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v73 = a2[4];
  v74 = v17;
  v77[2] = v63;
  v77[3] = v2;
  v77[0] = v8;
  v77[1] = v7;
  v18 = a1[6];
  v77[5] = v4;
  v77[6] = v18;
  v77[4] = v65;
  v82 = v16;
  v81 = v13;
  v68 = *(a1 + 112);
  v76 = *(a2 + 112);
  v78 = *(a1 + 112);
  v80 = v10;
  v79 = v14;
  v19 = a2[6];
  v86 = *(a2 + 112);
  v85 = v19;
  v84 = v15;
  v83 = v73;
  v20 = v62;
  if (v68 <= 1u)
  {
    if (v68)
    {
      if (v76 == 1)
      {
        v28 = v70;
        if (v61 == v69 || (sub_25AE10E2C() & 1) != 0)
        {
          sub_25ADEBD1C(&v69, &v53);
          sub_25ADEBD1C(&v61, &v53);
          sub_25ADEBD1C(&v69, &v53);
          sub_25ADEBD1C(&v61, &v53);
          sub_25ADEE754(v20, v28);
          v30 = v29;
          sub_25ADEBD54(v77);
          sub_25ADEBE18(&v69);
          sub_25ADEBE18(&v61);
          if (v30)
          {
            v27 = 1;
            return v27 & 1;
          }

LABEL_24:
          v27 = 0;
          return v27 & 1;
        }

        sub_25ADEBD1C(&v69, &v53);
        v34 = &v61;
LABEL_23:
        sub_25ADEBD1C(v34, &v53);
        sub_25ADEBD54(v77);
        goto LABEL_24;
      }
    }

    else
    {
      if (!v76)
      {
        v46 = v61;
        v47 = v62;
        v48 = v63;
        v49 = v64;
        v50 = *(a1 + 49);
        v51 = *(a1 + 65);
        *v52 = *(a1 + 81);
        *&v52[15] = a1[6];
        v36 = a2[5];
        v43 = a2[4];
        v44 = v36;
        v45 = a2[6];
        v37 = a2[1];
        v39 = *a2;
        v40 = v37;
        v38 = a2[3];
        v41 = a2[2];
        v42 = v38;
        v27 = _s5NDOUI18NDODWCoverageModelV2eeoiySbAC_ACtFZ_0(&v46, &v39);
        sub_25ADEBD1C(&v69, &v53);
        sub_25ADEBD1C(&v61, &v53);
        sub_25ADEBD54(v77);
        return v27 & 1;
      }

      v24 = a1[5];
      v57 = a1[4];
      v58 = v24;
      v59 = a1[6];
      v60 = *(a1 + 112);
      v25 = a1[1];
      v53 = *a1;
      v54 = v25;
      v26 = a1[3];
      v55 = a1[2];
      v56 = v26;
      sub_25ADE35E0(&v53, &v46);
    }

LABEL_22:
    v34 = &v69;
    goto LABEL_23;
  }

  if (v68 == 2)
  {
    if (v76 == 2)
    {
      v46 = v61;
      v47 = v62;
      v48 = v63;
      v49 = v64;
      v39 = v69;
      v40 = v70;
      v41 = v71;
      LOBYTE(v42) = v72;
      sub_25ADEBD1C(&v69, &v53);
      sub_25ADEBD1C(&v61, &v53);
      sub_25ADEBD1C(&v69, &v53);
      sub_25ADEBD1C(&v61, &v53);
      v23 = _s5NDOUI16NDODWFooterModelV4LinkV2eeoiySbAE_AEtFZ_0(&v46, &v39);
      goto LABEL_11;
    }

    sub_25ADE48D8(v62, *(&v62 + 1), v63, *(&v63 + 1), v64);
    goto LABEL_22;
  }

  if (v68 != 3)
  {
    if (v76 == 4)
    {
      sub_25ADEBD54(v77);
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_22;
  }

  if (v76 != 3)
  {
    v31 = a1[5];
    v57 = a1[4];
    v58 = v31;
    v59 = a1[6];
    v60 = *(a1 + 112);
    v32 = a1[1];
    v53 = *a1;
    v54 = v32;
    v33 = a1[3];
    v55 = a1[2];
    v56 = v33;
    sub_25ADEBDBC(&v53, &v46);
    goto LABEL_22;
  }

  v46 = v61;
  v47 = v62;
  v48 = v63;
  v49 = v64;
  v50 = *(a1 + 49);
  v51 = *(a1 + 65);
  v21 = a2[3];
  v41 = a2[2];
  v42 = v21;
  v43 = a2[4];
  LOBYTE(v44) = *(a2 + 80);
  v22 = a2[1];
  v39 = *a2;
  v40 = v22;
  sub_25ADEBD1C(&v69, &v53);
  sub_25ADEBD1C(&v61, &v53);
  sub_25ADEBD1C(&v69, &v53);
  sub_25ADEBD1C(&v61, &v53);
  v23 = _s5NDOUI15NDODWPromoModelV2eeoiySbAC_ACtFZ_0(&v46, &v39);
LABEL_11:
  v27 = v23;
  sub_25ADEBD54(v77);
  sub_25ADEBE18(&v69);
  sub_25ADEBE18(&v61);
  return v27 & 1;
}

unint64_t sub_25ADEACE4()
{
  result = qword_27FA12A80;
  if (!qword_27FA12A80)
  {
    result = swift_getWitnessTable("ŀB'܈", &type metadata for NDODWItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12A80);
  }

  return result;
}

unint64_t sub_25ADEAD38()
{
  result = qword_27FA12A88;
  if (!qword_27FA12A88)
  {
    result = swift_getWitnessTable(byte_25AE13514, &type metadata for NDODWItem.SupportCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12A88);
  }

  return result;
}

unint64_t sub_25ADEAD8C()
{
  result = qword_27FA12A90;
  if (!qword_27FA12A90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWSupportModel, &type metadata for NDODWSupportModel, v0, v1);
    atomic_store(result, &qword_27FA12A90);
  }

  return result;
}

unint64_t sub_25ADEADE0()
{
  result = qword_27FA12A98;
  if (!qword_27FA12A98)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for NDODWItem.PromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12A98);
  }

  return result;
}

unint64_t sub_25ADEAE34()
{
  result = qword_27FA12AA0;
  if (!qword_27FA12AA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWPromoModel, &type metadata for NDODWPromoModel, v0, v1);
    atomic_store(result, &qword_27FA12AA0);
  }

  return result;
}

unint64_t sub_25ADEAE88()
{
  result = qword_27FA12AA8;
  if (!qword_27FA12AA8)
  {
    result = swift_getWitnessTable(byte_25AE13474, &type metadata for NDODWItem.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12AA8);
  }

  return result;
}

unint64_t sub_25ADEAEDC()
{
  result = qword_27FA12AB0;
  if (!qword_27FA12AB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOLinkModel, &type metadata for NDOLinkModel, v0, v1);
    atomic_store(result, &qword_27FA12AB0);
  }

  return result;
}

unint64_t sub_25ADEAF30()
{
  result = qword_27FA12AB8;
  if (!qword_27FA12AB8)
  {
    result = swift_getWitnessTable(byte_25AE13424, &type metadata for NDODWItem.FooterCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12AB8);
  }

  return result;
}

unint64_t sub_25ADEAF84()
{
  result = qword_27FA12AC0;
  if (!qword_27FA12AC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWFooterModel, &type metadata for NDODWFooterModel, v0, v1);
    atomic_store(result, &qword_27FA12AC0);
  }

  return result;
}

unint64_t sub_25ADEAFD8()
{
  result = qword_27FA12AC8;
  if (!qword_27FA12AC8)
  {
    result = swift_getWitnessTable(aU, &type metadata for NDODWItem.CoverageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12AC8);
  }

  return result;
}

unint64_t sub_25ADEB02C()
{
  result = qword_27FA12AD0;
  if (!qword_27FA12AD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel, &type metadata for NDODWCoverageModel, v0, v1);
    atomic_store(result, &qword_27FA12AD0);
  }

  return result;
}

unint64_t sub_25ADEB080()
{
  result = qword_27FA12B10;
  if (!qword_27FA12B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWSupportModel, &type metadata for NDODWSupportModel, v0, v1);
    atomic_store(result, &qword_27FA12B10);
  }

  return result;
}

unint64_t sub_25ADEB0D4()
{
  result = qword_27FA12B18;
  if (!qword_27FA12B18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWPromoModel, &type metadata for NDODWPromoModel, v0, v1);
    atomic_store(result, &qword_27FA12B18);
  }

  return result;
}

unint64_t sub_25ADEB128()
{
  result = qword_27FA12B20;
  if (!qword_27FA12B20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOLinkModel, &type metadata for NDOLinkModel, v0, v1);
    atomic_store(result, &qword_27FA12B20);
  }

  return result;
}

unint64_t sub_25ADEB17C()
{
  result = qword_27FA12B28;
  if (!qword_27FA12B28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWFooterModel, &type metadata for NDODWFooterModel, v0, v1);
    atomic_store(result, &qword_27FA12B28);
  }

  return result;
}

unint64_t sub_25ADEB1D0()
{
  result = qword_27FA12B30;
  if (!qword_27FA12B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWCoverageModel, &type metadata for NDODWCoverageModel, v0, v1);
    atomic_store(result, &qword_27FA12B30);
  }

  return result;
}

unint64_t sub_25ADEB228()
{
  result = qword_27FA12B38;
  if (!qword_27FA12B38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWItem, &type metadata for NDODWItem, v0, v1);
    atomic_store(result, &qword_27FA12B38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5NDOUI9NDOActionO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25ADEB2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 113))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 112);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25ADEB318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDODWItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDODWItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25ADEB548()
{
  result = qword_27FA12B40;
  if (!qword_27FA12B40)
  {
    result = swift_getWitnessTable(byte_25AE13014, &type metadata for NDODWItem.SupportCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B40);
  }

  return result;
}

unint64_t sub_25ADEB5A0()
{
  result = qword_27FA12B48;
  if (!qword_27FA12B48)
  {
    result = swift_getWitnessTable(byte_25AE130CC, &type metadata for NDODWItem.PromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B48);
  }

  return result;
}

unint64_t sub_25ADEB5F8()
{
  result = qword_27FA12B50;
  if (!qword_27FA12B50)
  {
    result = swift_getWitnessTable(aEob, &type metadata for NDODWItem.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B50);
  }

  return result;
}

unint64_t sub_25ADEB650()
{
  result = qword_27FA12B58;
  if (!qword_27FA12B58)
  {
    result = swift_getWitnessTable(byte_25AE1323C, &type metadata for NDODWItem.FooterCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B58);
  }

  return result;
}

unint64_t sub_25ADEB6A8()
{
  result = qword_27FA12B60;
  if (!qword_27FA12B60)
  {
    result = swift_getWitnessTable(byte_25AE132F4, &type metadata for NDODWItem.CoverageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B60);
  }

  return result;
}

unint64_t sub_25ADEB700()
{
  result = qword_27FA12B68;
  if (!qword_27FA12B68)
  {
    result = swift_getWitnessTable(byte_25AE133AC, &type metadata for NDODWItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B68);
  }

  return result;
}

unint64_t sub_25ADEB758()
{
  result = qword_27FA12B70;
  if (!qword_27FA12B70)
  {
    result = swift_getWitnessTable("=}B'", &type metadata for NDODWItem.CoverageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B70);
  }

  return result;
}

unint64_t sub_25ADEB7B0()
{
  result = qword_27FA12B78;
  if (!qword_27FA12B78)
  {
    result = swift_getWitnessTable("MyB'؋", &type metadata for NDODWItem.CoverageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B78);
  }

  return result;
}

unint64_t sub_25ADEB808()
{
  result = qword_27FA12B80;
  if (!qword_27FA12B80)
  {
    result = swift_getWitnessTable(byte_25AE131AC, &type metadata for NDODWItem.FooterCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B80);
  }

  return result;
}

unint64_t sub_25ADEB860()
{
  result = qword_27FA12B88;
  if (!qword_27FA12B88)
  {
    result = swift_getWitnessTable(byte_25AE131D4, &type metadata for NDODWItem.FooterCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B88);
  }

  return result;
}

unint64_t sub_25ADEB8B8()
{
  result = qword_27FA12B90;
  if (!qword_27FA12B90)
  {
    result = swift_getWitnessTable(byte_25AE130F4, &type metadata for NDODWItem.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B90);
  }

  return result;
}

unint64_t sub_25ADEB910()
{
  result = qword_27FA12B98;
  if (!qword_27FA12B98)
  {
    result = swift_getWitnessTable(byte_25AE1311C, &type metadata for NDODWItem.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12B98);
  }

  return result;
}

unint64_t sub_25ADEB968()
{
  result = qword_27FA12BA0;
  if (!qword_27FA12BA0)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for NDODWItem.PromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12BA0);
  }

  return result;
}

unint64_t sub_25ADEB9C0()
{
  result = qword_27FA12BA8;
  if (!qword_27FA12BA8)
  {
    result = swift_getWitnessTable(aUBL, &type metadata for NDODWItem.PromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12BA8);
  }

  return result;
}

unint64_t sub_25ADEBA18()
{
  result = qword_27FA12BB0;
  if (!qword_27FA12BB0)
  {
    result = swift_getWitnessTable(byte_25AE12F84, &type metadata for NDODWItem.SupportCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12BB0);
  }

  return result;
}

unint64_t sub_25ADEBA70()
{
  result = qword_27FA12BB8;
  if (!qword_27FA12BB8)
  {
    result = swift_getWitnessTable(aBH, &type metadata for NDODWItem.SupportCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12BB8);
  }

  return result;
}

unint64_t sub_25ADEBAC8()
{
  result = qword_27FA12BC0;
  if (!qword_27FA12BC0)
  {
    result = swift_getWitnessTable(byte_25AE1331C, &type metadata for NDODWItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12BC0);
  }

  return result;
}

unint64_t sub_25ADEBB20()
{
  result = qword_27FA12BC8;
  if (!qword_27FA12BC8)
  {
    result = swift_getWitnessTable(byte_25AE13344, &type metadata for NDODWItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12BC8);
  }

  return result;
}

uint64_t sub_25ADEBB74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617265766F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6D6F7270 && a2 == 0xE500000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74726F70707573 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADEBD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12BD0, &qword_25AE135B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_5NDOUI12NDOUIDWStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t dispatch thunk of NDODeviceListProvider.localDeviceList()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25ADEBFBC;

  return v7(a1, a2);
}

uint64_t sub_25ADEBFBC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of NDODeviceListProvider.remoteDeviceList()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25ADEC200;

  return v7(a1, a2);
}

uint64_t NDODeviceModel.iconUrl.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDODeviceModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NDODeviceModel.serialNumber.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NDODeviceModel.subtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NDODeviceModel.callToActionLabel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void NDODeviceModel.action.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 112);
  *(a1 + 32) = v6;
  sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDODeviceModel.init(iconUrl:title:serialNumber:subtitle:callToActionLabel:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *(a12 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  result = *a12;
  v14 = *(a12 + 16);
  *(a9 + 80) = *a12;
  *(a9 + 96) = v14;
  *(a9 + 112) = v12;
  return result;
}

uint64_t sub_25ADEC34C()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x656C746974627573;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x754E6C6169726573;
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

uint64_t sub_25ADEC40C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADED420(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADEC440(uint64_t a1)
{
  v2 = sub_25ADECF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADEC47C(uint64_t a1)
{
  v2 = sub_25ADECF54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODeviceModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12BD8, &qword_25AE13688);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = *(v1 + 16);
  v32 = *(v1 + 24);
  v33 = v7;
  v8 = *(v1 + 32);
  v30 = *(v1 + 40);
  v31 = v8;
  v9 = *(v1 + 48);
  v28 = *(v1 + 56);
  v29 = v9;
  v10 = *(v1 + 72);
  v25 = *(v1 + 64);
  v26 = v10;
  v11 = *(v1 + 88);
  v27 = *(v1 + 80);
  v13 = *(v1 + 96);
  v12 = *(v1 + 104);
  v22 = v11;
  v23 = v13;
  v24 = v12;
  v14 = *(v1 + 112);
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_25ADECF54();
  sub_25AE10E8C();
  LOBYTE(v35) = 0;
  v19 = v34;
  sub_25AE10DAC();
  if (!v19)
  {
    LODWORD(v34) = v14;
    v20 = v27;
    LOBYTE(v35) = 1;
    sub_25AE10DCC();
    LOBYTE(v35) = 2;
    sub_25AE10DCC();
    LOBYTE(v35) = 3;
    sub_25AE10DAC();
    LOBYTE(v35) = 4;
    sub_25AE10DAC();
    v35 = v20;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v39 = v34;
    v40 = 5;
    sub_25ADE48D8(v20, v22, v23, v24, v34);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v35, v36, v37, v38, v39);
  }

  return (*(v4 + 8))(v6, v18);
}

uint64_t NDODeviceModel.hashValue.getter()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODeviceModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12BF0, &qword_25AE13690);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_25ADECF54();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v10 = v6;
  LOBYTE(v55[0]) = 0;
  v11 = v5;
  v13 = sub_25AE10D2C();
  v15 = v14;
  LOBYTE(v55[0]) = 1;
  v42 = sub_25AE10D4C();
  v44 = v16;
  LOBYTE(v55[0]) = 2;
  v17 = sub_25AE10D4C();
  v43 = v18;
  v38 = v17;
  LOBYTE(v55[0]) = 3;
  v41 = 0;
  v19 = sub_25AE10D2C();
  v40 = v20;
  LOBYTE(v55[0]) = 4;
  v21 = sub_25AE10D2C();
  v45 = 0;
  v37 = v21;
  v39 = v23;
  v60 = 5;
  sub_25ADECFFC();
  v24 = v45;
  sub_25AE10D7C();
  v45 = v24;
  if (v24)
  {
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v22 = v41;

    if (!v22)
    {
    }
  }

  else
  {
    (*(v10 + 8))(v8, v11);
    v35 = *(&v57 + 1);
    v36 = v57;
    v33 = *(&v58 + 1);
    v34 = v58;
    *&v47 = v13;
    *(&v47 + 1) = v15;
    v25 = v43;
    v26 = v44;
    *&v48 = v42;
    *(&v48 + 1) = v44;
    *&v49 = v38;
    *(&v49 + 1) = v43;
    *&v50 = v19;
    v41 = v19;
    v28 = v39;
    v27 = v40;
    *(&v50 + 1) = v40;
    *&v51 = v37;
    *(&v51 + 1) = v39;
    v52 = v57;
    v53 = v58;
    v29 = v59;
    v54 = v59;
    v30 = v50;
    *(a2 + 32) = v49;
    *(a2 + 48) = v30;
    *(a2 + 112) = v29;
    v31 = v48;
    *a2 = v47;
    *(a2 + 16) = v31;
    v32 = v53;
    *(a2 + 80) = v52;
    *(a2 + 96) = v32;
    *(a2 + 64) = v51;
    sub_25ADED050(&v47, v55);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v55[0] = v13;
    v55[1] = v15;
    v55[2] = v42;
    v55[3] = v26;
    v55[4] = v38;
    v55[5] = v25;
    v55[6] = v41;
    v55[7] = v27;
    v55[8] = v37;
    v55[9] = v28;
    v55[10] = v36;
    v55[11] = v35;
    v55[12] = v34;
    v55[13] = v33;
    v56 = v29;
    return sub_25ADED088(v55);
  }
}

uint64_t sub_25ADECC2C()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t sub_25ADECC80(uint64_t a1)
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI14NDODeviceModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[9];
  v30 = a1[11];
  v31 = a1[10];
  v28 = a1[8];
  v29 = a1[12];
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  v27 = *(a2 + 64);
  v32 = *(a2 + 72);
  if (v3)
  {
    if (!v9)
    {
      goto LABEL_28;
    }

    v24 = *(a2 + 48);
    v25 = a1[6];
    v26 = a1[7];
    v17 = *(a2 + 112);
    v18 = *(a2 + 104);
    v19 = *(a2 + 96);
    v20 = *(a2 + 88);
    v21 = *(a2 + 80);
    v22 = *(a1 + 112);
    v23 = a1[13];
    if ((*a1 != *a2 || v3 != v9) && (sub_25AE10E2C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v24 = *(a2 + 48);
    v25 = a1[6];
    v26 = a1[7];
    v17 = *(a2 + 112);
    v18 = *(a2 + 104);
    v19 = *(a2 + 96);
    v20 = *(a2 + 88);
    v21 = *(a2 + 80);
    v22 = *(a1 + 112);
    v23 = a1[13];
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if ((v4 != v10 || v5 != v12) && (sub_25AE10E2C() & 1) == 0 || (v6 != v11 || v7 != v13) && (sub_25AE10E2C() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v26)
  {
    if (!v14 || (v25 != v24 || v26 != v14) && (sub_25AE10E2C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v14)
  {
    goto LABEL_28;
  }

  if (v8)
  {
    if (v32 && (v28 == v27 && v8 == v32 || (sub_25AE10E2C() & 1) != 0))
    {
      goto LABEL_26;
    }

LABEL_28:
    v15 = 0;
    return v15 & 1;
  }

  if (v32)
  {
    goto LABEL_28;
  }

LABEL_26:
  v38 = v31;
  v39 = v30;
  v40 = v29;
  v41 = v23;
  v42 = v22;
  v33 = v21;
  v34 = v20;
  v35 = v19;
  v36 = v18;
  v37 = v17;
  sub_25ADE48D8(v31, v30, v29, v23, v22);
  sub_25ADE48D8(v21, v20, v19, v18, v17);
  v15 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v38, &v33);
  sub_25ADE4930(v33, v34, v35, v36, v37);
  sub_25ADE4930(v38, v39, v40, v41, v42);
  return v15 & 1;
}

unint64_t sub_25ADECF54()
{
  result = qword_27FA12BE0;
  if (!qword_27FA12BE0)
  {
    result = swift_getWitnessTable("a|B'ȅ", &type metadata for NDODeviceModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12BE0);
  }

  return result;
}

unint64_t sub_25ADECFA8()
{
  result = qword_27FA12BE8;
  if (!qword_27FA12BE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOAction, &type metadata for NDOAction, v0, v1);
    atomic_store(result, &qword_27FA12BE8);
  }

  return result;
}

unint64_t sub_25ADECFFC()
{
  result = qword_27FA12BF8;
  if (!qword_27FA12BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOAction, &type metadata for NDOAction, v0, v1);
    atomic_store(result, &qword_27FA12BF8);
  }

  return result;
}

unint64_t sub_25ADED0BC()
{
  result = qword_27FA12C00;
  if (!qword_27FA12C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODeviceModel, &type metadata for NDODeviceModel, v0, v1);
    atomic_store(result, &qword_27FA12C00);
  }

  return result;
}

uint64_t sub_25ADED110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_25ADED158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDODeviceModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDODeviceModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25ADED31C()
{
  result = qword_27FA12C08;
  if (!qword_27FA12C08)
  {
    result = swift_getWitnessTable(aGb, &type metadata for NDODeviceModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12C08);
  }

  return result;
}

unint64_t sub_25ADED374()
{
  result = qword_27FA12C10;
  if (!qword_27FA12C10)
  {
    result = swift_getWitnessTable(byte_25AE13910, &type metadata for NDODeviceModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12C10);
  }

  return result;
}

unint64_t sub_25ADED3CC()
{
  result = qword_27FA12C18;
  if (!qword_27FA12C18)
  {
    result = swift_getWitnessTable(byte_25AE13938, &type metadata for NDODeviceModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12C18);
  }

  return result;
}

uint64_t sub_25ADED420(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EB30 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t NDODWPromoModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDODWPromoModel.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NDODWPromoModel.buttonTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void NDODWPromoModel.action.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDODWPromoModel.init(title:subtitle:buttonTitle:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a7 + 32);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v10 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v10;
  *(a8 + 80) = v8;
  return result;
}

uint64_t sub_25ADED6F0()
{
  v1 = 0x656C746974;
  v2 = 0x69546E6F74747562;
  if (*v0 != 2)
  {
    v2 = 0x6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_25ADED76C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADEE5F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADED794(uint64_t a1)
{
  v2 = sub_25ADEE32C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADED7D0(uint64_t a1)
{
  v2 = sub_25ADEE32C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWPromoModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C20, &qword_25AE13A18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v7;
  v8 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = v8;
  v9 = *(v1 + 48);
  v18 = *(v1 + 56);
  v19 = v9;
  v10 = *(v1 + 64);
  v16 = *(v1 + 72);
  v17 = v10;
  v30 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEE32C();
  sub_25AE10E8C();
  LOBYTE(v25) = 0;
  v11 = v24;
  sub_25AE10DCC();
  if (!v11)
  {
    v13 = v17;
    v12 = v18;
    v14 = v19;
    LOBYTE(v25) = 1;
    sub_25AE10DCC();
    LOBYTE(v25) = 2;
    sub_25AE10DCC();
    v24 = 0;
    v25 = v14;
    v26 = v12;
    v27 = v13;
    v28 = v16;
    v29 = v30;
    v31 = 3;
    sub_25ADE48D8(v14, v12, v13, v16, v30);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v25, v26, v27, v28, v29);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDODWPromoModel.hash(into:)(uint64_t a1)
{
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return NDOAction.hash(into:)(a1);
}

uint64_t NDODWPromoModel.hashValue.getter()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDODWPromoModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C30, &qword_25AE13A20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEE32C();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v40[0]) = 0;
  v9 = sub_25AE10D4C();
  v33 = v10;
  LOBYTE(v40[0]) = 1;
  v11 = sub_25AE10D4C();
  v32 = v12;
  v30 = v11;
  LOBYTE(v40[0]) = 2;
  v29 = sub_25AE10D4C();
  v31 = v13;
  v45 = 3;
  sub_25ADECFFC();
  sub_25AE10D7C();
  (*(v6 + 8))(v8, v5);
  v27 = *(&v42 + 1);
  v28 = v42;
  v25 = *(&v43 + 1);
  v26 = v43;
  *&v34 = v9;
  v14 = v33;
  *(&v34 + 1) = v33;
  v15 = v30;
  *&v35 = v30;
  v16 = v32;
  *(&v35 + 1) = v32;
  *&v36 = v29;
  v17 = v31;
  *(&v36 + 1) = v31;
  v37 = v42;
  v38 = v43;
  v18 = v44;
  v39 = v44;
  v19 = v35;
  *a2 = v34;
  *(a2 + 16) = v19;
  v20 = v36;
  v21 = v37;
  v22 = v38;
  *(a2 + 80) = v18;
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  *(a2 + 32) = v20;
  sub_25ADEBDBC(&v34, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v40[0] = v9;
  v40[1] = v14;
  v40[2] = v15;
  v40[3] = v16;
  v40[4] = v29;
  v40[5] = v17;
  v40[6] = v28;
  v40[7] = v27;
  v40[8] = v26;
  v40[9] = v25;
  v41 = v18;
  return sub_25ADEE380(v40);
}

uint64_t sub_25ADEDF90()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEE038(uint64_t a1)
{
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return NDOAction.hash(into:)(a1);
}

uint64_t sub_25ADEE0C8(uint64_t a1)
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v2);
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI15NDODWPromoModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v20 = a1[7];
  v21 = a1[6];
  v18 = a1[9];
  v19 = a1[8];
  v17 = *(a1 + 80);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v15 = *(a2 + 56);
  v16 = *(a2 + 48);
  v10 = *(a2 + 72);
  v14 = *(a2 + 64);
  v11 = *(a2 + 80);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_25AE10E2C()) && (v2 == v6 && v4 == v7 || (sub_25AE10E2C()) && (v3 == v8 && v5 == v9 || (sub_25AE10E2C()))
  {
    v27 = v21;
    v28 = v20;
    v29 = v19;
    v30 = v18;
    v31 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v14;
    v25 = v10;
    v26 = v11;
    sub_25ADE48D8(v21, v20, v19, v18, v17);
    sub_25ADE48D8(v16, v15, v14, v10, v11);
    v12 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v27, &v22);
    sub_25ADE4930(v22, v23, v24, v25, v26);
    sub_25ADE4930(v27, v28, v29, v30, v31);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_25ADEE32C()
{
  result = qword_27FA12C28;
  if (!qword_27FA12C28)
  {
    result = swift_getWitnessTable(byte_25AE13D44, &type metadata for NDODWPromoModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12C28);
  }

  return result;
}

unint64_t sub_25ADEE3B4()
{
  result = qword_27FA12C38;
  if (!qword_27FA12C38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWPromoModel, &type metadata for NDODWPromoModel, v0, v1);
    atomic_store(result, &qword_27FA12C38);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25ADEE42C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_25ADEE474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25ADEE4F0()
{
  result = qword_27FA12C40;
  if (!qword_27FA12C40)
  {
    result = swift_getWitnessTable(byte_25AE13D1C, &type metadata for NDODWPromoModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12C40);
  }

  return result;
}

unint64_t sub_25ADEE548()
{
  result = qword_27FA12C48;
  if (!qword_27FA12C48)
  {
    result = swift_getWitnessTable(byte_25AE13C8C, &type metadata for NDODWPromoModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12C48);
  }

  return result;
}

unint64_t sub_25ADEE5A0()
{
  result = qword_27FA12C50;
  if (!qword_27FA12C50)
  {
    result = swift_getWitnessTable(aOb, &type metadata for NDODWPromoModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12C50);
  }

  return result;
}

uint64_t sub_25ADEE5F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

void sub_25ADEE754(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    while (v2)
    {
      v11 = v2;
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v13 = *(a1 + v3 + 64);
      v15 = *(a1 + v3 + 72);
      v14 = *(a1 + v3 + 80);
      v7 = *(a2 + v3 + 48);
      v6 = *(a2 + v3 + 56);
      v8 = *(a2 + v3 + 64);
      v16 = *(a2 + v3 + 72);
      v17 = *(a2 + v3 + 80);
      if (*(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40) || (v8 = *(a2 + v3 + 64), (sub_25AE10E2C() & 1) != 0))
      {
        v23 = v4;
        v24 = v5;
        v25 = v13;
        v26 = v15;
        v27 = v14;
        v18 = v7;
        v19 = v6;
        v20 = v8;
        v21 = v16;
        v22 = v17;

        sub_25ADE48D8(v4, v5, v13, v15, v14);

        sub_25ADE48D8(v7, v6, v8, v16, v17);
        sub_25ADE48D8(v4, v5, v13, v15, v14);
        sub_25ADE48D8(v7, v6, v8, v16, v17);
        v12 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v23, &v18);
        sub_25ADE4930(v18, v19, v20, v21, v22);
        sub_25ADE4930(v23, v24, v25, v26, v27);

        sub_25ADE4930(v7, v6, v8, v16, v17);

        sub_25ADE4930(v4, v5, v13, v15, v14);
        if (v12)
        {
          v3 += 56;
          v2 = v11 - 1;
          if (v11 != 1)
          {
            continue;
          }
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_25ADEE9AC(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_25AE10E2C() & 1) == 0)
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

uint64_t sub_25ADEEA3C(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v32 = a2 + 32;
  v33 = result + 32;
  v31 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v33 + 72 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[5];
    v10 = v4[6];
    v37 = v4[7];
    v38 = v4[4];
    v11 = v4[8];
    v12 = (v32 + 72 * v3);
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v35 = v12[7];
    v36 = v11;
    v34 = v12[8];
    v18 = v5 == *v12 && v6 == v12[1];
    if (!v18 && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }

    v19 = v7 == v13 && v8 == v14;
    if (!v19 && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }

    result = v38;
    if (v38 != v15 || v9 != v16)
    {
      result = sub_25AE10E2C();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v21 = *(v10 + 16);
    if (v21 != *(v17 + 16))
    {
      return 0;
    }

    if (v21)
    {
      v22 = v10 == v17;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v10 + 56);
      v24 = (v17 + 56);
      while (v21)
      {
        result = *(v23 - 3);
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = *(v24 - 1);
        v28 = *v24;
        if (result != *(v24 - 3) || *(v23 - 2) != *(v24 - 2))
        {
          result = sub_25AE10E2C();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v25 != v27 || v26 != v28)
        {
          result = sub_25AE10E2C();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v23 += 4;
        v24 += 4;
        if (!--v21)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
      break;
    }

LABEL_30:
    if ((v37 != v35 || v36 != v34) && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }

    ++v3;
    result = 1;
    v2 = v31;
    if (v3 == v31)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25ADEEC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_25AE10E2C() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_25AE10E2C() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void static NDODWFooterModel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    sub_25ADEE754(v2, v3);
  }
}

uint64_t NDODWFooterModel.content.getter()
{
  v1 = *v0;

  return v1;
}

NDOUI::NDODWFooterModel __swiftcall NDODWFooterModel.init(content:links:)(Swift::String content, Swift::OpaquePointer links)
{
  *v2 = content;
  *(v2 + 16) = links;
  result.content = content;
  result.links = links;
  return result;
}

uint64_t sub_25ADEEDD0()
{
  if (*v0)
  {
    return 0x736B6E696CLL;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_25ADEEE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADEEEE0(uint64_t a1)
{
  v2 = sub_25ADEF130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADEEF1C(uint64_t a1)
{
  v2 = sub_25ADEF130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWFooterModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C58, &qword_25AE13DA0);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEF130();
  sub_25AE10E8C();
  v13 = 0;
  sub_25AE10DCC();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C68, &qword_25AE13DA8);
    sub_25ADEFDA0(&qword_27FA12C70, sub_25ADEF184, MEMORY[0x277D83948]);
    sub_25AE10DFC();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_25ADEF130()
{
  result = qword_27FA12C60;
  if (!qword_27FA12C60)
  {
    result = swift_getWitnessTable(aAsb, &type metadata for NDODWFooterModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12C60);
  }

  return result;
}

unint64_t sub_25ADEF184()
{
  result = qword_27FA12C78;
  if (!qword_27FA12C78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWFooterModel.Link, &type metadata for NDODWFooterModel.Link, v0, v1);
    atomic_store(result, &qword_27FA12C78);
  }

  return result;
}

void NDODWFooterModel.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_25AE10B2C();

  sub_25ADE2894(a1, v3);
}

uint64_t NDODWFooterModel.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25ADE2894(v3, v1);
  return sub_25AE10E6C();
}

uint64_t NDODWFooterModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C80, &qword_25AE13DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEF130();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_25AE10D4C();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C68, &qword_25AE13DA8);
  v16 = 1;
  sub_25ADEFDA0(&qword_27FA12C88, sub_25ADEFE18, MEMORY[0x277D83978]);
  sub_25AE10D7C();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADEF4D4()
{
  v1 = *(v0 + 16);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25ADE2894(v3, v1);
  return sub_25AE10E6C();
}

void sub_25ADEF538(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_25AE10B2C();

  sub_25ADE2894(a1, v3);
}

uint64_t sub_25ADEF57C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25ADE2894(v4, v2);
  return sub_25AE10E6C();
}

void sub_25ADEF60C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    sub_25ADEE754(v2, v3);
  }
}

uint64_t NDODWFooterModel.Link.label.getter()
{
  v1 = *v0;

  return v1;
}

void NDODWFooterModel.Link.action.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDODWFooterModel.Link.init(label:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4;
  return result;
}

uint64_t sub_25ADEF6E8(uint64_t a1)
{
  v2 = sub_25ADEFF80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADEF724(uint64_t a1)
{
  v2 = sub_25ADEFF80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWFooterModel.Link.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C98, &qword_25AE13DB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v7;
  v8 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = v8;
  v21 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEFF80();
  sub_25AE10E8C();
  LOBYTE(v16) = 0;
  v9 = v15;
  sub_25AE10DCC();
  if (!v9)
  {
    v16 = v14;
    v17 = v13;
    v18 = v12;
    v19 = v11;
    v20 = v21;
    v22 = 1;
    sub_25ADE48D8(v14, v13, v12, v11, v21);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v16, v17, v18, v19, v20);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDODWFooterModel.Link.hashValue.getter()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v1);
  return sub_25AE10E6C();
}

void NDODWFooterModel.Link.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12CA8, &qword_25AE13DC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEFF80();
  sub_25AE10E7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v18) = 0;
    v9 = sub_25AE10D4C();
    v11 = v10;
    v17 = v9;
    v23 = 1;
    sub_25ADECFFC();
    sub_25AE10D7C();
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    *a2 = v17;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;

    sub_25ADE48D8(v12, v13, v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_25ADE4930(v12, v13, v14, v15, v16);
  }
}

uint64_t sub_25ADEFC38()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEFD00(uint64_t a1)
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v2);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEFDA0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12C68, &qword_25AE13DA8);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADEFE18()
{
  result = qword_27FA12C90;
  if (!qword_27FA12C90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWFooterModel.Link, &type metadata for NDODWFooterModel.Link, v0, v1);
    atomic_store(result, &qword_27FA12C90);
  }

  return result;
}

uint64_t _s5NDOUI16NDODWFooterModelV4LinkV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = *(a2 + 24);
  v13 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v11 = 0, (sub_25AE10E2C() & 1) != 0))
  {
    v19 = v2;
    v20 = v3;
    v21 = v4;
    v22 = v5;
    v23 = v6;
    v14 = v13;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    sub_25ADE48D8(v2, v3, v4, v5, v6);
    sub_25ADE48D8(v13, v7, v8, v9, v10);
    v11 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v19, &v14);
    sub_25ADE4930(v14, v15, v16, v17, v18);
    sub_25ADE4930(v19, v20, v21, v22, v23);
  }

  return v11 & 1;
}

unint64_t sub_25ADEFF80()
{
  result = qword_27FA12CA0;
  if (!qword_27FA12CA0)
  {
    result = swift_getWitnessTable(byte_25AE14278, &type metadata for NDODWFooterModel.Link.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12CA0);
  }

  return result;
}

unint64_t sub_25ADEFFD8()
{
  result = qword_27FA12CB0;
  if (!qword_27FA12CB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWFooterModel, &type metadata for NDODWFooterModel, v0, v1);
    atomic_store(result, &qword_27FA12CB0);
  }

  return result;
}

unint64_t sub_25ADF0030()
{
  result = qword_27FA12CB8;
  if (!qword_27FA12CB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWFooterModel.Link, &type metadata for NDODWFooterModel.Link, v0, v1);
    atomic_store(result, &qword_27FA12CB8);
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

uint64_t sub_25ADF0098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25ADF00E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25ADF014C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_25ADF0194(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25ADF0218()
{
  result = qword_27FA12CC0;
  if (!qword_27FA12CC0)
  {
    result = swift_getWitnessTable(a1B, &type metadata for NDODWFooterModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12CC0);
  }

  return result;
}

unint64_t sub_25ADF0270()
{
  result = qword_27FA12CC8;
  if (!qword_27FA12CC8)
  {
    result = swift_getWitnessTable(aYB, &type metadata for NDODWFooterModel.Link.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12CC8);
  }

  return result;
}

unint64_t sub_25ADF02C8()
{
  result = qword_27FA12CD0;
  if (!qword_27FA12CD0)
  {
    result = swift_getWitnessTable(byte_25AE141C0, &type metadata for NDODWFooterModel.Link.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12CD0);
  }

  return result;
}

unint64_t sub_25ADF0320()
{
  result = qword_27FA12CD8;
  if (!qword_27FA12CD8)
  {
    result = swift_getWitnessTable(byte_25AE141E8, &type metadata for NDODWFooterModel.Link.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12CD8);
  }

  return result;
}

unint64_t sub_25ADF0378()
{
  result = qword_27FA12CE0;
  if (!qword_27FA12CE0)
  {
    result = swift_getWitnessTable(byte_25AE14108, &type metadata for NDODWFooterModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12CE0);
  }

  return result;
}

unint64_t sub_25ADF03D0()
{
  result = qword_27FA12CE8;
  if (!qword_27FA12CE8)
  {
    result = swift_getWitnessTable(byte_25AE14130, &type metadata for NDODWFooterModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12CE8);
  }

  return result;
}

uint64_t NDOAction.url.getter()
{
  v1 = *(v0 + 32);
  if (v1 > 6)
  {
    return 0;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = v0;
  v4 = *v0;
  sub_25ADE48D8(v4, *(v5 + 8), v3, v2, v1);

  return v4;
}

uint64_t sub_25ADF049C()
{
  v1 = *v0;
  v2 = 0x6265577472617473;
  v3 = 0x656A655272657375;
  if (v1 != 6)
  {
    v3 = 0x6553646E61707865;
  }

  v4 = 0x437373696D736964;
  if (v1 != 4)
  {
    v4 = 0x6D73694472657375;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x687461506E65706FLL;
  if (v1 != 2)
  {
    v5 = 0x6157656369766564;
  }

  if (*v0)
  {
    v2 = 0x736D417472617473;
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

uint64_t sub_25ADF05C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADF47CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADF05F0(uint64_t a1)
{
  v2 = sub_25ADF3580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF062C(uint64_t a1)
{
  v2 = sub_25ADF3580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF0668(uint64_t a1)
{
  v2 = sub_25ADF3778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF06A4(uint64_t a1)
{
  v2 = sub_25ADF3778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF06E0(uint64_t a1)
{
  v2 = sub_25ADF3724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF071C(uint64_t a1)
{
  v2 = sub_25ADF3724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF0758(uint64_t a1)
{
  v2 = sub_25ADF35D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF0794(uint64_t a1)
{
  v2 = sub_25ADF35D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF07D0(uint64_t a1)
{
  v2 = sub_25ADF37CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF080C(uint64_t a1)
{
  v2 = sub_25ADF37CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF0848(uint64_t a1)
{
  v2 = sub_25ADF3820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF0884(uint64_t a1)
{
  v2 = sub_25ADF3820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF08C0(uint64_t a1)
{
  v2 = sub_25ADF3874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF08FC(uint64_t a1)
{
  v2 = sub_25ADF3874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF0938(uint64_t a1)
{
  v2 = sub_25ADF36D0();

  return MEMORY[0x2821FE718](a1, v2);
}