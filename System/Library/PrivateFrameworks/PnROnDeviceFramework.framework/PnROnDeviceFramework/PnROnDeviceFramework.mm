uint64_t sub_25E972990()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

BOOL sub_25E972A08(void *a1)
{
  v1 = [a1 ended];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_25E972A4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E9733EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E9D77F0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25E973458(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E9D77F0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_25E9734CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 executionTime];
  *a2 = result;
  return result;
}

id sub_25E97351C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appEntityQueryResponseTime];
  *a2 = result;
  return result;
}

id sub_25E97356C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 plannerResponseTime];
  *a2 = result;
  return result;
}

id sub_25E9735BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToPlanCreatedTime];
  *a2 = result;
  return result;
}

id sub_25E97360C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToLastQueryDecorationEventTime];
  *a2 = result;
  return result;
}

id sub_25E97365C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastQueryDecorationEventToPlanCreatedTime];
  *a2 = result;
  return result;
}

id sub_25E9736AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToContextRetrievedTime];
  *a2 = result;
  return result;
}

id sub_25E9736FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToEntitySpanMatchedTime];
  *a2 = result;
  return result;
}

id sub_25E97374C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToToolsRetrievedTime];
  *a2 = result;
  return result;
}

uint64_t sub_25E973AD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E973B0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E973B44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_25E973CF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 planningTime];
  *a2 = result;
  return result;
}

id sub_25E973D40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 executionTime];
  *a2 = result;
  return result;
}

id sub_25E973D90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestResponseTime];
  *a2 = result;
  return result;
}

id sub_25E973DE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 responsePreparationTime];
  *a2 = result;
  return result;
}

id sub_25E973E30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 queryTime];
  *a2 = result;
  return result;
}

id sub_25E973E84@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_27FD0DD78;
  *a1 = qword_27FD0DD78;

  return v2;
}

uint64_t sub_25E973EE4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 165)
  {
    v4 = *a1;
    if (v4 <= 0x5A)
    {
      v5 = 90;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 90;
    if (v4 >= 0x59)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_25E973FA4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 165)
  {
    *result = a2 + 90;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_25E97405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D638, &qword_25E9D8A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9D8990;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000025E9DCD10;
  *(inited + 48) = sub_25E9D7FA0();
  *(inited + 56) = 0x6D614E726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_25E9D7FA0();
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_25E9D7FA0();
  v7 = sub_25E97F224(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D640, &unk_25E9D8AA0);
  swift_arrayDestroy();
  return v7;
}

id sub_25E97419C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_25E974770();
    v4 = sub_25E9D7F30();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_25E974250(void *a1, uint64_t *a2)
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

_DWORD *sub_25E9742B4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = v5 >> 5;
  if (v5 >> 5 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = 0x800000025E9DCCE0;
        v8 = 0x800000025E9DC800;
        v9 = 0xD000000000000018;
        v10 = 0xD000000000000020;
      }

      else
      {
        v7 = 0x800000025E9DCCC0;
        if (v5)
        {
          v9 = 0x5564616552535062;
        }

        else
        {
          v9 = 0x4664616552535062;
        }

        if (v5)
        {
          v8 = 0xEE006E776F6E6B6ELL;
        }

        else
        {
          v8 = 0xED000064656C6961;
        }

        v10 = 0xD000000000000011;
      }
    }

    else
    {
      v7 = 0xEA0000000000726FLL;
      v10 = 0x727245796D6D7544;
      v8 = 0xE900000000000072;
      v9 = 0x6F72724574736574;
    }

    goto LABEL_33;
  }

  if (v6 == 3)
  {
    v11 = v5 & 0x1F;
    v7 = 0x800000025E9DCCA0;
    if (v11 <= 1)
    {
      if (v11)
      {
        v8 = 0x800000025E9DC870;
        v9 = 0xD000000000000020;
      }

      else
      {
        v8 = 0x800000025E9DC840;
        v9 = 0xD00000000000002BLL;
      }

      goto LABEL_32;
    }

    if (v11 == 2)
    {
      v12 = "IERequestGrainUploadFailed";
    }

    else
    {
      if (v11 != 3)
      {
        v8 = 0x800000025E9DC8E0;
        v9 = 0xD000000000000019;
        goto LABEL_32;
      }

      v12 = "IEPlannerGrainUploadFailed";
    }

    v8 = (v12 - 32) | 0x8000000000000000;
    v9 = 0xD00000000000001ALL;
LABEL_32:
    v10 = 0xD000000000000010;
    goto LABEL_33;
  }

  if (v6 == 4)
  {
    v7 = 0x800000025E9DCC80;
    v10 = 0xD000000000000014;
    if (v5)
    {
      v8 = 0x800000025E9DC910;
      v9 = 0xD000000000000016;
    }

    else
    {
      v8 = 0xEC000000726F7272;
      v9 = 0x45636972656E6567;
    }
  }

  else
  {
    v7 = 0x800000025E9DCC60;
    if (v5)
    {
      v8 = 0x800000025E9DC950;
      v9 = 0xD000000000000015;
    }

    else
    {
      v8 = 0x800000025E9DC930;
      v9 = 0xD000000000000017;
    }

    v10 = 0xD000000000000017;
  }

LABEL_33:
  v13 = sub_25E9D7FA0();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v7;
  v14[4] = v9;
  v14[5] = v8;
  v14[6] = a2;
  v14[7] = a3;
  v16[4] = sub_25E974748;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_25E97419C;
  v16[3] = &block_descriptor;
  v15 = _Block_copy(v16);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsService(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CoreAnalyticsService(_WORD *result, int a2, int a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25E974770()
{
  result = qword_27FD0D630;
  if (!qword_27FD0D630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D630);
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

void sub_25E974840(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t ReliabilityCategory.BiomeStreamIssues.rawValue.getter()
{
  if (*v0)
  {
    return 0x5564616552535062;
  }

  else
  {
    return 0x4664616552535062;
  }
}

unint64_t ReliabilityCategory.SELFUploadIssues.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000019;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000020;
  if (!*v0)
  {
    v4 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t ReliabilityCategory.MetricsComputeIssues.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x45636972656E6567;
  }
}

unint64_t ReliabilityCategory.PnROnDeviceWorkerIssues.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t ReliabilityCategory.DummyError.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25E9D82D0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25E974A90()
{
  sub_25E9D8390();
  sub_25E9D8010();
  return sub_25E9D83C0();
}

uint64_t sub_25E974B04(uint64_t a1)
{
  sub_25E9D8390();
  sub_25E9D8010();
  return sub_25E9D83C0();
}

uint64_t ReliabilityCategory.AIMLInstrumentationStreamsIssues.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25E9D82D0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25E974BDC()
{
  sub_25E9D8390();
  sub_25E9D8010();
  return sub_25E9D83C0();
}

uint64_t sub_25E974C50(uint64_t a1)
{
  sub_25E9D8390();
  sub_25E9D8010();
  return sub_25E9D83C0();
}

uint64_t sub_25E974CB0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25E9D82D0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25E974D2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5564616552535062;
  }

  else
  {
    v3 = 0x4664616552535062;
  }

  if (v2)
  {
    v4 = 0xED000064656C6961;
  }

  else
  {
    v4 = 0xEE006E776F6E6B6ELL;
  }

  if (*a2)
  {
    v5 = 0x5564616552535062;
  }

  else
  {
    v5 = 0x4664616552535062;
  }

  if (*a2)
  {
    v6 = 0xEE006E776F6E6B6ELL;
  }

  else
  {
    v6 = 0xED000064656C6961;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E9D8300();
  }

  return v8 & 1;
}

uint64_t sub_25E974DEC()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E974E88(uint64_t a1)
{
  sub_25E9D8010();
}

uint64_t sub_25E974F10(uint64_t a1)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E974FB4(uint64_t *a1@<X8>)
{
  v2 = 0x4664616552535062;
  if (*v1)
  {
    v2 = 0x5564616552535062;
  }

  v3 = 0xED000064656C6961;
  if (*v1)
  {
    v3 = 0xEE006E776F6E6B6ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

PnROnDeviceFramework::ReliabilityCategory::SELFUploadIssues_optional __swiftcall ReliabilityCategory.SELFUploadIssues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E975074()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E975144(uint64_t a1)
{
  sub_25E9D8010();
}

uint64_t sub_25E975200(uint64_t a1)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E9752D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "encyUploadFailed";
  v4 = "IERequestGrainUploadFailed";
  v5 = 0xD000000000000019;
  if (v2 == 3)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = "IEPlannerGrainUploadFailed";
  }

  if (v2 == 2)
  {
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    v6 = v5;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v7 = 0xD000000000000020;
  if (*v1)
  {
    v8 = "urnGrainLatencyUploadFailed";
  }

  else
  {
    v7 = 0xD00000000000002BLL;
    v8 = "Failed";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v6;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t sub_25E975374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x45636972656E6567;
  }

  if (v2)
  {
    v4 = 0xEC000000726F7272;
  }

  else
  {
    v4 = 0x800000025E9DC910;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x45636972656E6567;
  }

  if (*a2)
  {
    v6 = 0x800000025E9DC910;
  }

  else
  {
    v6 = 0xEC000000726F7272;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E9D8300();
  }

  return v8 & 1;
}

uint64_t sub_25E975428()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E9754B8(uint64_t a1)
{
  sub_25E9D8010();
}

uint64_t sub_25E975534(uint64_t a1)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E9755CC(unint64_t *a1@<X8>)
{
  v2 = 0x800000025E9DC910;
  v3 = 0x45636972656E6567;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xEC000000726F7272;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25E975624@<X0>(char *a4@<X8>)
{
  v5 = sub_25E9D82D0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

unint64_t sub_25E975688()
{
  result = qword_27FD0D660;
  if (!qword_27FD0D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D660);
  }

  return result;
}

unint64_t sub_25E9756E0()
{
  result = qword_27FD0D668;
  if (!qword_27FD0D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D668);
  }

  return result;
}

unint64_t sub_25E975738()
{
  result = qword_27FD0D670;
  if (!qword_27FD0D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D670);
  }

  return result;
}

unint64_t sub_25E975790()
{
  result = qword_27FD0D678;
  if (!qword_27FD0D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D678);
  }

  return result;
}

unint64_t sub_25E9757E8()
{
  result = qword_27FD0D680;
  if (!qword_27FD0D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D680);
  }

  return result;
}

uint64_t sub_25E97583C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "JSONSerializationError";
  }

  else
  {
    v4 = "doWorkSiriMetricsFailed";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (*a2)
  {
    v7 = "doWorkSiriMetricsFailed";
  }

  else
  {
    v7 = "JSONSerializationError";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25E9D8300();
  }

  return v9 & 1;
}

unint64_t sub_25E9758EC()
{
  result = qword_27FD0D688;
  if (!qword_27FD0D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D688);
  }

  return result;
}

uint64_t sub_25E975940()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E9759C0(uint64_t a1)
{
  sub_25E9D8010();
}

uint64_t sub_25E975A2C(uint64_t a1)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E975AB4@<X0>(char *a3@<X8>)
{
  v4 = sub_25E9D82D0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_25E975B10(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (*v1)
  {
    v3 = "doWorkSiriMetricsFailed";
  }

  else
  {
    v3 = "JSONSerializationError";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for ReliabilityCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1B)
  {
    goto LABEL_17;
  }

  if (a2 + 229 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 229) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 229;
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

      return (*a1 | (v4 << 8)) - 229;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 229;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v6 >= 0x1A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ReliabilityCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 229 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 229) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1B)
  {
    v4 = 0;
  }

  if (a2 > 0x1A)
  {
    v5 = ((a2 - 27) >> 8) + 1;
    *result = a2 - 27;
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
    *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReliabilityCategory.SELFUploadIssues(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReliabilityCategory.SELFUploadIssues(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PnRError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PnRError(uint64_t result, unsigned int a2, unsigned int a3)
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

double SELFComponent.SearchTool.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  return result;
}

double SELFComponent.SearchTool.init()()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_25E976038()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E976108();
  v1 = v0;
  v2 = sub_25E9D7E70();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

unint64_t sub_25E976108()
{
  result = qword_27FD0D690;
  if (!qword_27FD0D690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D690);
  }

  return result;
}

uint64_t sub_25E976154(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v141 = MEMORY[0x28223BE20](a1);
  if (qword_27FD0D5C8 != -1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    v5 = sub_25E9D7F10();
    __swift_project_value_buffer(v5, qword_27FD0DB90);
    v6 = sub_25E9D7F00();
    v7 = sub_25E9D8120();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25E971000, v6, v7, "Start: computeSearchToolMetrics", v8, 2u);
      MEMORY[0x25F8C51A0](v8, -1, -1);
    }

    result = sub_25E977068();
    if (v3)
    {
      return result;
    }

    if (v4[2])
    {
      v10 = v4[2];
    }

    else
    {
      v10 = sub_25E97F328(MEMORY[0x277D84F90]);
    }

    v11 = v141;
    v3 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    v112 = v10;
    v113 = v10 + 64;
    v114 = v15;
    while (v14)
    {
LABEL_19:
      v20 = (*(v10 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
      v21 = *v20;
      v22 = v20[1];
      v23 = v4[2];
      if (!v23)
      {

        goto LABEL_29;
      }

      v24 = *(v23 + 16);

      if (!v24)
      {
        goto LABEL_29;
      }

      v25 = sub_25E978F5C(v21, v22);
      if ((v26 & 1) == 0)
      {
        goto LABEL_28;
      }

      v27 = (*(v23 + 56) + 16 * v25);
      v28 = *v27;
      v29 = *(v27 + 1);

      v30 = v4[3];
      if (v30 && *(v30 + 16))
      {

        v31 = sub_25E978F5C(v21, v22);
        if (v32)
        {
          v33 = (*(v30 + 56) + 16 * v31);
          v126 = *(v33 + 1);
          v127 = *v33;

          v34 = v4[4];
          if (!v34)
          {
            goto LABEL_38;
          }

          goto LABEL_30;
        }

LABEL_28:
      }

LABEL_29:
      v29 = 0;
      v126 = 0;
      v127 = 0;
      v28 = 90;
      v34 = v4[4];
      if (!v34)
      {
        goto LABEL_38;
      }

LABEL_30:
      if (!*(v34 + 16))
      {
        goto LABEL_38;
      }

      v35 = sub_25E978F5C(v21, v22);
      if ((v36 & 1) == 0)
      {
        goto LABEL_37;
      }

      v37 = (*(v34 + 56) + 16 * v35);
      v139 = *v37;
      v140 = *(v37 + 1);

      v38 = v4[5];
      if (v38 && *(v38 + 16))
      {

        v39 = sub_25E978F5C(v21, v22);
        if (v40)
        {
          v41 = (*(v38 + 56) + 16 * v39);
          v124 = *(v41 + 1);
          v125 = *v41;

          v42 = v4[6];
          if (!v42)
          {
            goto LABEL_47;
          }

          goto LABEL_39;
        }

LABEL_37:
      }

LABEL_38:
      v124 = 0;
      v125 = 0;
      v139 = 90;
      v140 = 0;
      v42 = v4[6];
      if (!v42)
      {
        goto LABEL_47;
      }

LABEL_39:
      if (!*(v42 + 16))
      {
        goto LABEL_47;
      }

      v43 = sub_25E978F5C(v21, v22);
      if ((v44 & 1) == 0)
      {
        goto LABEL_46;
      }

      v45 = (*(v42 + 56) + 16 * v43);
      v137 = *v45;
      v138 = *(v45 + 1);

      v46 = v4[7];
      if (v46 && *(v46 + 16))
      {

        v47 = sub_25E978F5C(v21, v22);
        if (v48)
        {
          v49 = (*(v46 + 56) + 16 * v47);
          v122 = *(v49 + 1);
          v123 = *v49;

          v50 = v4[8];
          if (!v50)
          {
            goto LABEL_56;
          }

          goto LABEL_48;
        }

LABEL_46:
      }

LABEL_47:
      v122 = 0;
      v123 = 0;
      v137 = 90;
      v138 = 0;
      v50 = v4[8];
      if (!v50)
      {
        goto LABEL_56;
      }

LABEL_48:
      if (!*(v50 + 16))
      {
        goto LABEL_56;
      }

      v51 = sub_25E978F5C(v21, v22);
      if ((v52 & 1) == 0)
      {
LABEL_55:

LABEL_56:
        v120 = 0;
        v121 = 0;
        v135 = 90;
        v136 = 0;
        v58 = v4[10];
        if (!v58)
        {
          goto LABEL_64;
        }

        goto LABEL_57;
      }

      v53 = (*(v50 + 56) + 16 * v51);
      v135 = *v53;
      v136 = *(v53 + 1);

      v54 = v4[9];
      if (!v54 || !*(v54 + 16))
      {
        goto LABEL_56;
      }

      v55 = sub_25E978F5C(v21, v22);
      if ((v56 & 1) == 0)
      {
        goto LABEL_55;
      }

      v57 = (*(v54 + 56) + 16 * v55);
      v120 = *(v57 + 1);
      v121 = *v57;

      v58 = v4[10];
      if (!v58)
      {
        goto LABEL_64;
      }

LABEL_57:
      if (*(v58 + 16))
      {

        v59 = sub_25E978F5C(v21, v22);
        if (v60)
        {
          v61 = (*(v58 + 56) + 16 * v59);
          v133 = *v61;
          v134 = *(v61 + 1);

          v62 = v4[11];
          if (!v62 || !*(v62 + 16))
          {
            goto LABEL_64;
          }

          v63 = sub_25E978F5C(v21, v22);
          if (v64)
          {
            v65 = (*(v62 + 56) + 16 * v63);
            v118 = *(v65 + 1);
            v119 = *v65;

            goto LABEL_65;
          }
        }
      }

LABEL_64:
      v118 = 0;
      v119 = 0;
      v133 = 90;
      v134 = 0;
LABEL_65:
      v66 = v4[2];
      v128 = v28;
      if (!v66)
      {
        v75 = v29;
        v76 = v21;
        v116 = 0;
        v117 = 0;
        v130 = 0;
        v115 = 0;
        v77 = 0;
        v131 = 90;
        v132 = 0;
        goto LABEL_86;
      }

      if (!*(v66 + 16))
      {
        goto LABEL_75;
      }

      v67 = sub_25E978F5C(v21, v22);
      if ((v68 & 1) == 0)
      {
        goto LABEL_74;
      }

      v69 = (*(v66 + 56) + 16 * v67);
      v131 = *v69;
      v132 = *(v69 + 1);

      v70 = v4[7];
      if (v70 && *(v70 + 16))
      {

        v71 = sub_25E978F5C(v21, v22);
        if (v72)
        {
          v73 = (*(v70 + 56) + 16 * v71);
          v116 = *(v73 + 1);
          v117 = *v73;

          v74 = v4[2];
          if (!v74)
          {
            goto LABEL_82;
          }

          goto LABEL_76;
        }

LABEL_74:
      }

LABEL_75:
      v116 = 0;
      v117 = 0;
      v131 = 90;
      v132 = 0;
      v74 = v4[2];
      if (!v74)
      {
        goto LABEL_82;
      }

LABEL_76:
      if (!*(v74 + 16))
      {
        goto LABEL_82;
      }

      v78 = sub_25E978F5C(v21, v22);
      if ((v79 & 1) == 0)
      {
        v75 = v29;
        v76 = v21;
LABEL_84:

LABEL_85:
        v130 = 0;
        v115 = 0;
        v77 = 0;
LABEL_86:
        v129 = 90;
        goto LABEL_87;
      }

      v80 = (*(v74 + 56) + 16 * v78);
      v129 = *v80;
      v130 = *(v80 + 1);

      v81 = v4[9];
      if (!v81)
      {
LABEL_82:
        v75 = v29;
        v76 = v21;
        goto LABEL_85;
      }

      v75 = v29;
      if (!*(v81 + 16))
      {
        v76 = v21;
        goto LABEL_85;
      }

      v76 = v21;
      v82 = sub_25E978F5C(v21, v22);
      if ((v83 & 1) == 0)
      {
        goto LABEL_84;
      }

      v84 = (*(v81 + 56) + 16 * v82);
      v115 = *v84;
      v77 = *(v84 + 1);

LABEL_87:
      v85 = *v11;
      if (*(*v11 + 16) && (v86 = sub_25E978F5C(v76, v22), (v87 & 1) != 0))
      {
        v88 = (*(v85 + 56) + 304 * v86);
        memcpy(v154, v88, sizeof(v154));
        v89 = v88;
        v11 = v141;
        memmove(v155, v89, 0x130uLL);
        nullsub_1();
        sub_25E97F4EC(v154, v153);
      }

      else
      {
        sub_25E97F43C(v154);
        memcpy(v155, v154, 0x130uLL);
      }

      memcpy(v154, v155, sizeof(v154));
      if (sub_25E97F474(v154) == 1)
      {
        v152[0] = xmmword_25E9D90A0;
        v152[2] = 0uLL;
        v152[1] = 0x5AuLL;
        v152[3] = 0x5AuLL;
        v152[4] = 0uLL;
        v152[6] = 0uLL;
        v152[5] = 0x5AuLL;
        v152[7] = 0x5AuLL;
        v152[8] = 0uLL;
        v152[10] = 0uLL;
        v152[9] = 0x5AuLL;
        v152[11] = 0x5AuLL;
        v152[12] = 0uLL;
        v152[14] = 0uLL;
        v152[13] = 0x5AuLL;
        v152[15] = 0x5AuLL;
        v152[16] = 0uLL;
        v152[17] = 0x5AuLL;
        v152[18] = 0uLL;
        nullsub_1();
        memcpy(v153, v155, sizeof(v153));
        sub_25E981210(v153, &qword_27FD0D698, &qword_25E9D90E0);
        memcpy(v155, v152, 0x130uLL);
      }

      memcpy(v153, v155, sizeof(v153));
      if (sub_25E97F474(v153) != 1)
      {

        v155[0] = v76;
        v155[1] = v22;
      }

      memcpy(v152, v155, sizeof(v152));
      if (sub_25E97F474(v152) != 1)
      {
        v155[2] = v128;
        v155[3] = v75;
        v155[4] = v127;
        v155[5] = v126;
      }

      memcpy(v151, v155, sizeof(v151));
      if (sub_25E97F474(v151) != 1)
      {
        v155[6] = v139;
        v155[7] = v140;
        v155[8] = v125;
        v155[9] = v124;
      }

      memcpy(v150, v155, sizeof(v150));
      if (sub_25E97F474(v150) != 1)
      {
        v155[10] = v137;
        v155[11] = v138;
        v155[12] = v123;
        v155[13] = v122;
      }

      memcpy(v149, v155, sizeof(v149));
      if (sub_25E97F474(v149) != 1)
      {
        v155[14] = v135;
        v155[15] = v136;
        v155[16] = v121;
        v155[17] = v120;
      }

      memcpy(v148, v155, sizeof(v148));
      if (sub_25E97F474(v148) != 1)
      {
        v155[18] = v133;
        v155[19] = v134;
        v155[20] = v119;
        v155[21] = v118;
      }

      memcpy(v147, v155, sizeof(v147));
      if (sub_25E97F474(v147) != 1)
      {
        v155[22] = v131;
        v155[23] = v132;
        v155[24] = v117;
        v155[25] = v116;
      }

      memcpy(v146, v155, sizeof(v146));
      if (sub_25E97F474(v146) != 1)
      {
        v155[26] = v129;
        v155[27] = v130;
        v155[28] = v115;
        v155[29] = v77;
      }

      memcpy(__src, v155, sizeof(__src));
      memcpy(v145, v155, sizeof(v145));
      if (sub_25E97F474(v145) != 1)
      {
        memcpy(v143, __src, sizeof(v143));
        sub_25E97F4EC(v143, __dst);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = v11;
        v97 = isUniquelyReferenced_nonNull_native;
        v156 = *v96;
        v98 = v156;
        v100 = sub_25E978F5C(v76, v22);
        v101 = v98[2];
        v102 = (v99 & 1) == 0;
        v103 = v101 + v102;
        if (__OFADD__(v101, v102))
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          result = sub_25E9D8330();
          __break(1u);
          return result;
        }

        v104 = v99;
        if (v98[3] >= v103)
        {
          if (v97)
          {
            if ((v99 & 1) == 0)
            {
              goto LABEL_121;
            }
          }

          else
          {
            sub_25E97D76C();
            if ((v104 & 1) == 0)
            {
              goto LABEL_121;
            }
          }
        }

        else
        {
          sub_25E979724(v103, v97);
          v105 = sub_25E978F5C(v76, v22);
          if ((v104 & 1) != (v106 & 1))
          {
            goto LABEL_132;
          }

          v100 = v105;
          if ((v104 & 1) == 0)
          {
LABEL_121:
            v107 = v156;
            v156[(v100 >> 6) + 8] |= 1 << v100;
            v108 = (v107[6] + 16 * v100);
            *v108 = v76;
            v108[1] = v22;
            memcpy((v107[7] + 304 * v100), __src, 0x130uLL);
            v109 = v107[2];
            v110 = __OFADD__(v109, 1);
            v111 = v109 + 1;
            if (v110)
            {
              goto LABEL_131;
            }

            v107[2] = v111;
            v11 = v141;
            *v141 = v107;
            goto LABEL_12;
          }
        }

        v17 = v156;
        v18 = (v156[7] + 304 * v100);
        memcpy(__dst, v18, sizeof(__dst));
        memcpy(v18, __src, 0x130uLL);
        sub_25E97F498(__dst);
        *v141 = v17;
        v11 = v141;
LABEL_12:
        v3 = v113;
        v15 = v114;
        goto LABEL_13;
      }

      v90 = sub_25E978F5C(v76, v22);
      v92 = v91;

      v3 = v113;
      v15 = v114;
      if (v92)
      {
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v94 = *v11;
        __dst[0] = *v11;
        if (!v93)
        {
          sub_25E97D76C();
          v94 = __dst[0];
        }

        memcpy(v143, (*(v94 + 56) + 304 * v90), sizeof(v143));
        sub_25E97F498(v143);
        sub_25E97C530(v90, v94);
        *v11 = v94;
      }

LABEL_13:
      v14 &= v14 - 1;
      memcpy(v143, v155, sizeof(v143));
      sub_25E981210(v143, &qword_27FD0D698, &qword_25E9D90E0);
      v10 = v112;
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
      }

      v14 = *(v3 + 8 * v19);
      ++v16;
      if (v14)
      {
        v16 = v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_129:
    swift_once();
  }
}

unint64_t sub_25E976E14@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  result = sub_25E978F5C(result, a2);
  if ((v7 & 1) == 0)
  {
    v5 = 0;
LABEL_5:
    *a4 = 89;
    goto LABEL_6;
  }

  v8 = *(a3 + 56) + 16 * result;
  v9 = *v8;
  v5 = *(v8 + 8);
  *a4 = v9;
LABEL_6:
  a4[1] = v5;
  return result;
}

uint64_t sub_25E976E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25E978F5C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_25E976ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_25E978F5C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_25E976F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25E978F5C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void sub_25E976F70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25E978F5C(a1, a2), (v7 & 1) != 0))
  {
    memmove(a4, (*(a3 + 56) + 360 * v6), 0x168uLL);

    nullsub_1();
  }

  else
  {
    sub_25E980E0C(__src);
    memcpy(a4, __src, 0x168uLL);
  }
}

unint64_t sub_25E97700C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_25E978F5C(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t sub_25E977068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v1 - 8);
  v296 = &v294 - v2;
  v3 = MEMORY[0x277D84F90];
  v4 = sub_25E97F328(MEMORY[0x277D84F90]);
  v5 = sub_25E97F328(v3);
  v6 = sub_25E97F328(v3);
  v7 = sub_25E97F328(v3);
  v304 = sub_25E97F328(v3);
  v300 = sub_25E97F328(v3);
  v303 = sub_25E97F328(v3);
  v299 = sub_25E97F328(v3);
  v302 = sub_25E97F328(v3);
  v298 = sub_25E97F328(v3);
  swift_beginAccess();
  v8 = qword_27FD0DD78;
  v9 = 0x27FD0D000uLL;
  if (qword_27FD0DD78)
  {
    v295 = v0;
    sub_25E976108();
    v10 = v8;
    isUniquelyReferenced_nonNull_native = sub_25E9D7E70();

    if (qword_27FD0D5C8 != -1)
    {
LABEL_195:
      swift_once();
    }

    v12 = sub_25E9D7F10();
    __swift_project_value_buffer(v12, qword_27FD0DB90);

    v13 = sub_25E9D7F00();
    LOBYTE(v14) = sub_25E9D8120();
    v15 = os_log_type_enabled(v13, v14);
    v16 = isUniquelyReferenced_nonNull_native >> 62;
    v307 = isUniquelyReferenced_nonNull_native;
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v18 = v7;
      if (v16)
      {
        goto LABEL_216;
      }

      v19 = *((v307 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      *(v17 + 4) = v19;
      v20 = v17;

      _os_log_impl(&dword_25E971000, v13, v14, "STSchemaSTEvent length %ld", v20, 0xCu);
      MEMORY[0x25F8C51A0](v20, -1, -1);

      v7 = v18;
    }

    else
    {
    }

    v9 = 0x27FD0D000uLL;
    if (v16)
    {
      v229 = v307;
      v22 = sub_25E9D8290();
      v21 = v229;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v21 = v307;
      v22 = *((v307 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
LABEL_10:
        v16 = 0;
        v305 = v22;
        v306 = v21 & 0xC000000000000001;
        v297 = v21 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v306)
          {
            v23 = MEMORY[0x25F8C4B40](v16, v21);
          }

          else
          {
            if (v16 >= *(v297 + 16))
            {
              goto LABEL_179;
            }

            v23 = *(v21 + 8 * v16 + 32);
          }

          isUniquelyReferenced_nonNull_native = v23;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
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
            goto LABEL_195;
          }

          v309 = v16 + 1;
          v24 = sub_25E9D7840();
          if (!v24)
          {
            goto LABEL_11;
          }

          v25 = v24;
          objc_opt_self();
          v26 = swift_dynamicCastObjCClass();
          if (!v26)
          {
            goto LABEL_171;
          }

          v27 = v26;
          v28 = [v26 eventMetadata];
          v312 = v27;
          if (v28)
          {
            break;
          }

          v311 = 0;
          v18 = 0xE000000000000000;
LABEL_29:
          v42 = [v27 stGeneralSearchContext];
          v308 = isUniquelyReferenced_nonNull_native;
          v310 = v18;
          if (v42)
          {
            v43 = v42;
            v44 = [v42 startedOrChanged];

            if (v44)
            {

              v45 = sub_25E9D7850();
              if (!v45)
              {
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                result = sub_25E9D8330();
                __break(1u);
                return result;
              }

              v46 = v45;
              v13 = sub_25E9D7870();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v313 = v4;
              v47 = sub_25E978F5C(v311, v18);
              v49 = *(v4 + 16);
              v50 = (v48 & 1) == 0;
              v51 = __OFADD__(v49, v50);
              v52 = v49 + v50;
              if (v51)
              {
                goto LABEL_180;
              }

              v53 = v48;
              if (*(v4 + 24) >= v52)
              {
                v14 = v312;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v215 = v47;
                  sub_25E97D5F4();
                  v14 = v312;
                  v47 = v215;
                }

                isUniquelyReferenced_nonNull_native = v308;
                v4 = v313;
                if (v53)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                sub_25E979464(v52, isUniquelyReferenced_nonNull_native);
                v47 = sub_25E978F5C(v311, v310);
                if ((v53 & 1) != (v54 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v308;
                v14 = v312;
                v4 = v313;
                if (v53)
                {
LABEL_51:
                  v74 = *(v4 + 56) + 16 * v47;
                  v75 = 39;
LABEL_57:
                  *v74 = v75;
                  *(v74 + 8) = v13;
                  v18 = v310;
                  goto LABEL_58;
                }
              }

              *(v4 + 8 * (v47 >> 6) + 64) |= 1 << v47;
              v55 = (*(v4 + 48) + 16 * v47);
              v18 = v310;
              *v55 = v311;
              v55[1] = v18;
              v56 = *(v4 + 56) + 16 * v47;
              *v56 = 39;
              *(v56 + 8) = v13;
              v57 = *(v4 + 16);
              v51 = __OFADD__(v57, 1);
              v58 = v57 + 1;
              if (v51)
              {
                goto LABEL_190;
              }

              *(v4 + 16) = v58;
LABEL_47:

              goto LABEL_58;
            }
          }

          v14 = v312;
          v59 = [v312 stGeneralSearchContext];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 ended];

            if (!v61)
            {
              v14 = v312;
              goto LABEL_58;
            }

            v62 = sub_25E9D7850();
            if (!v62)
            {
              goto LABEL_222;
            }

            v63 = v62;
            v13 = sub_25E9D7870();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v313 = v5;
            v17 = sub_25E978F5C(v311, v18);
            v65 = v5[2];
            v66 = (v64 & 1) == 0;
            v51 = __OFADD__(v65, v66);
            v67 = v65 + v66;
            if (v51)
            {
              goto LABEL_185;
            }

            v68 = v64;
            if (v5[3] >= v67)
            {
              v14 = v312;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v219 = v17;
                sub_25E97D5F4();
                v14 = v312;
                v17 = v219;
              }

              isUniquelyReferenced_nonNull_native = v308;
              v5 = v313;
              if (v68)
              {
                goto LABEL_56;
              }
            }

            else
            {
              sub_25E979464(v67, isUniquelyReferenced_nonNull_native);
              v17 = sub_25E978F5C(v311, v310);
              if ((v68 & 1) != (v69 & 1))
              {
                goto LABEL_227;
              }

              isUniquelyReferenced_nonNull_native = v308;
              v14 = v312;
              v5 = v313;
              if (v68)
              {
LABEL_56:
                v74 = v5[7] + 16 * v17;
                v75 = 40;
                goto LABEL_57;
              }
            }

            v5[(v17 >> 6) + 8] |= 1 << v17;
            v70 = (v5[6] + 16 * v17);
            v18 = v310;
            *v70 = v311;
            v70[1] = v18;
            v71 = v5[7] + 16 * v17;
            *v71 = 40;
            *(v71 + 8) = v13;
            v72 = v5[2];
            v51 = __OFADD__(v72, 1);
            v73 = v72 + 1;
            if (v51)
            {
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              isUniquelyReferenced_nonNull_native = v307;
              v293 = v17;
              v19 = sub_25E9D8290();
              v17 = v293;
              goto LABEL_6;
            }

            v5[2] = v73;
            goto LABEL_47;
          }

LABEL_58:
          v76 = [v14 stAnswerSynthesisContext];
          if (v76)
          {
            v77 = v76;
            v78 = [v76 startedOrChanged];

            if (v78)
            {

              v79 = sub_25E9D7850();
              if (!v79)
              {
                goto LABEL_218;
              }

              v80 = v79;
              v13 = sub_25E9D7870();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v313 = v6;
              v81 = sub_25E978F5C(v311, v18);
              v83 = v6[2];
              v84 = (v82 & 1) == 0;
              v51 = __OFADD__(v83, v84);
              v85 = v83 + v84;
              if (v51)
              {
                goto LABEL_181;
              }

              v86 = v82;
              if (v6[3] >= v85)
              {
                v14 = v312;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v216 = v81;
                  sub_25E97D5F4();
                  v14 = v312;
                  v81 = v216;
                }

                isUniquelyReferenced_nonNull_native = v308;
                v6 = v313;
                if (v86)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                sub_25E979464(v85, isUniquelyReferenced_nonNull_native);
                v81 = sub_25E978F5C(v311, v310);
                if ((v86 & 1) != (v87 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v308;
                v14 = v312;
                v6 = v313;
                if (v86)
                {
LABEL_80:
                  v107 = v6[7] + 16 * v81;
                  v108 = 41;
LABEL_86:
                  *v107 = v108;
                  *(v107 + 8) = v13;
                  v18 = v310;
                  goto LABEL_87;
                }
              }

              v6[(v81 >> 6) + 8] |= 1 << v81;
              v88 = (v6[6] + 16 * v81);
              v18 = v310;
              *v88 = v311;
              v88[1] = v18;
              v89 = v6[7] + 16 * v81;
              *v89 = 41;
              *(v89 + 8) = v13;
              v90 = v6[2];
              v51 = __OFADD__(v90, 1);
              v91 = v90 + 1;
              if (v51)
              {
                goto LABEL_191;
              }

              v6[2] = v91;
LABEL_76:

              goto LABEL_87;
            }
          }

          v14 = v312;
          v92 = [v312 stAnswerSynthesisContext];
          if (v92)
          {
            v93 = v92;
            v94 = [v92 ended];

            if (!v94)
            {
              v14 = v312;
              goto LABEL_87;
            }

            v95 = sub_25E9D7850();
            if (!v95)
            {
              goto LABEL_223;
            }

            v96 = v95;
            v13 = sub_25E9D7870();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v313 = v7;
            v17 = sub_25E978F5C(v311, v18);
            v98 = v7[2];
            v99 = (v97 & 1) == 0;
            v51 = __OFADD__(v98, v99);
            v100 = v98 + v99;
            if (v51)
            {
              goto LABEL_186;
            }

            v101 = v97;
            if (v7[3] >= v100)
            {
              v14 = v312;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v220 = v17;
                sub_25E97D5F4();
                v14 = v312;
                v17 = v220;
              }

              isUniquelyReferenced_nonNull_native = v308;
              v7 = v313;
              if (v101)
              {
                goto LABEL_85;
              }
            }

            else
            {
              sub_25E979464(v100, isUniquelyReferenced_nonNull_native);
              v17 = sub_25E978F5C(v311, v310);
              if ((v101 & 1) != (v102 & 1))
              {
                goto LABEL_227;
              }

              isUniquelyReferenced_nonNull_native = v308;
              v14 = v312;
              v7 = v313;
              if (v101)
              {
LABEL_85:
                v107 = v7[7] + 16 * v17;
                v108 = 42;
                goto LABEL_86;
              }
            }

            v7[(v17 >> 6) + 8] |= 1 << v17;
            v103 = (v7[6] + 16 * v17);
            v18 = v310;
            *v103 = v311;
            v103[1] = v18;
            v104 = v7[7] + 16 * v17;
            *v104 = 42;
            *(v104 + 8) = v13;
            v105 = v7[2];
            v51 = __OFADD__(v105, 1);
            v106 = v105 + 1;
            if (v51)
            {
              goto LABEL_212;
            }

            v7[2] = v106;
            goto LABEL_76;
          }

LABEL_87:
          v109 = [v14 stSpotlightContext];
          if (v109)
          {
            v110 = v109;
            v111 = [v109 startedOrChanged];

            if (v111)
            {

              v112 = sub_25E9D7850();
              if (!v112)
              {
                goto LABEL_219;
              }

              v113 = v112;
              v13 = sub_25E9D7870();

              v114 = v304;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v313 = v114;
              v115 = sub_25E978F5C(v311, v18);
              v117 = *(v114 + 16);
              v118 = (v116 & 1) == 0;
              v51 = __OFADD__(v117, v118);
              v119 = v117 + v118;
              if (v51)
              {
                goto LABEL_182;
              }

              v120 = v116;
              if (*(v114 + 24) >= v119)
              {
                v14 = v312;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v217 = v115;
                  sub_25E97D5F4();
                  v14 = v312;
                  v115 = v217;
                }

                isUniquelyReferenced_nonNull_native = v308;
              }

              else
              {
                sub_25E979464(v119, isUniquelyReferenced_nonNull_native);
                v115 = sub_25E978F5C(v311, v310);
                if ((v120 & 1) != (v121 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v308;
                v14 = v312;
              }

              v134 = v313;
              v304 = v313;
              if ((v120 & 1) == 0)
              {
                v313[(v115 >> 6) + 8] |= 1 << v115;
                v137 = (v134[6] + 16 * v115);
                v18 = v310;
                *v137 = v311;
                v137[1] = v18;
                v138 = v134[7] + 16 * v115;
                *v138 = 43;
                *(v138 + 8) = v13;
                v139 = v134[2];
                v51 = __OFADD__(v139, 1);
                v140 = v139 + 1;
                if (v51)
                {
                  goto LABEL_192;
                }

LABEL_117:
                v134[2] = v140;

                goto LABEL_118;
              }

              v135 = v313[7] + 16 * v115;
              v136 = 43;
LABEL_115:
              *v135 = v136;
              *(v135 + 8) = v13;
              v18 = v310;
              goto LABEL_118;
            }
          }

          v14 = v312;
          v122 = [v312 stSpotlightContext];
          if (v122)
          {
            v123 = v122;
            v124 = [v122 ended];

            if (v124)
            {

              v125 = sub_25E9D7850();
              if (!v125)
              {
                goto LABEL_224;
              }

              v126 = v125;
              v13 = sub_25E9D7870();

              v127 = v300;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v313 = v127;
              v17 = sub_25E978F5C(v311, v18);
              v129 = *(v127 + 16);
              v130 = (v128 & 1) == 0;
              v51 = __OFADD__(v129, v130);
              v131 = v129 + v130;
              if (v51)
              {
                goto LABEL_187;
              }

              v132 = v128;
              if (*(v127 + 24) >= v131)
              {
                v14 = v312;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v221 = v17;
                  sub_25E97D5F4();
                  v14 = v312;
                  v17 = v221;
                }

                isUniquelyReferenced_nonNull_native = v308;
              }

              else
              {
                sub_25E979464(v131, isUniquelyReferenced_nonNull_native);
                v17 = sub_25E978F5C(v311, v310);
                if ((v132 & 1) != (v133 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v308;
                v14 = v312;
              }

              v134 = v313;
              v300 = v313;
              if ((v132 & 1) == 0)
              {
                v313[(v17 >> 6) + 8] |= 1 << v17;
                v141 = (v134[6] + 16 * v17);
                v18 = v310;
                *v141 = v311;
                v141[1] = v18;
                v142 = v134[7] + 16 * v17;
                *v142 = 44;
                *(v142 + 8) = v13;
                v143 = v134[2];
                v51 = __OFADD__(v143, 1);
                v140 = v143 + 1;
                if (v51)
                {
                  goto LABEL_213;
                }

                goto LABEL_117;
              }

              v135 = v313[7] + 16 * v17;
              v136 = 44;
              goto LABEL_115;
            }

            v14 = v312;
          }

LABEL_118:
          v144 = [v14 stGlobalSearchContext];
          if (v144)
          {
            v145 = v144;
            v146 = [v144 startedOrChanged];

            if (v146)
            {

              v147 = sub_25E9D7850();
              if (!v147)
              {
                goto LABEL_220;
              }

              v148 = v147;
              v13 = sub_25E9D7870();

              v149 = v303;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v313 = v149;
              v150 = sub_25E978F5C(v311, v18);
              v152 = *(v149 + 16);
              v153 = (v151 & 1) == 0;
              v51 = __OFADD__(v152, v153);
              v154 = v152 + v153;
              if (v51)
              {
                goto LABEL_183;
              }

              v155 = v151;
              if (*(v149 + 24) >= v154)
              {
                v14 = v312;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v218 = v150;
                  sub_25E97D5F4();
                  v14 = v312;
                  v150 = v218;
                }

                isUniquelyReferenced_nonNull_native = v308;
              }

              else
              {
                sub_25E979464(v154, isUniquelyReferenced_nonNull_native);
                v150 = sub_25E978F5C(v311, v310);
                if ((v155 & 1) != (v156 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v308;
                v14 = v312;
              }

              v169 = v313;
              v303 = v313;
              if ((v155 & 1) == 0)
              {
                v313[(v150 >> 6) + 8] |= 1 << v150;
                v172 = (v169[6] + 16 * v150);
                v18 = v310;
                *v172 = v311;
                v172[1] = v18;
                v173 = v169[7] + 16 * v150;
                *v173 = 45;
                *(v173 + 8) = v13;
                v174 = v169[2];
                v51 = __OFADD__(v174, 1);
                v175 = v174 + 1;
                if (v51)
                {
                  goto LABEL_193;
                }

LABEL_148:
                v169[2] = v175;

                goto LABEL_149;
              }

              v170 = v313[7] + 16 * v150;
              v171 = 45;
LABEL_146:
              *v170 = v171;
              *(v170 + 8) = v13;
              v18 = v310;
              goto LABEL_149;
            }
          }

          v14 = v312;
          v157 = [v312 stGlobalSearchContext];
          if (v157)
          {
            v158 = v157;
            v159 = [v157 ended];

            if (v159)
            {

              v160 = sub_25E9D7850();
              if (!v160)
              {
                goto LABEL_225;
              }

              v161 = v160;
              v13 = sub_25E9D7870();

              v162 = v299;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v313 = v162;
              v17 = sub_25E978F5C(v311, v18);
              v164 = *(v162 + 16);
              v165 = (v163 & 1) == 0;
              v51 = __OFADD__(v164, v165);
              v166 = v164 + v165;
              if (v51)
              {
                goto LABEL_188;
              }

              v167 = v163;
              if (*(v162 + 24) >= v166)
              {
                v14 = v312;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v222 = v17;
                  sub_25E97D5F4();
                  v14 = v312;
                  v17 = v222;
                }

                isUniquelyReferenced_nonNull_native = v308;
              }

              else
              {
                sub_25E979464(v166, isUniquelyReferenced_nonNull_native);
                v17 = sub_25E978F5C(v311, v310);
                if ((v167 & 1) != (v168 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v308;
                v14 = v312;
              }

              v169 = v313;
              v299 = v313;
              if ((v167 & 1) == 0)
              {
                v313[(v17 >> 6) + 8] |= 1 << v17;
                v176 = (v169[6] + 16 * v17);
                v18 = v310;
                *v176 = v311;
                v176[1] = v18;
                v177 = v169[7] + 16 * v17;
                *v177 = 46;
                *(v177 + 8) = v13;
                v178 = v169[2];
                v51 = __OFADD__(v178, 1);
                v175 = v178 + 1;
                if (v51)
                {
                  goto LABEL_214;
                }

                goto LABEL_148;
              }

              v170 = v313[7] + 16 * v17;
              v171 = 46;
              goto LABEL_146;
            }

            v14 = v312;
          }

LABEL_149:
          v179 = [v14 searchToolHallucinationDetectionContext];
          if (!v179 || (v180 = v179, v181 = [v179 startedOrChanged], v180, !v181))
          {
            v193 = v312;
            v194 = [v312 searchToolHallucinationDetectionContext];
            if (!v194)
            {
              v25 = isUniquelyReferenced_nonNull_native;
              isUniquelyReferenced_nonNull_native = v193;
LABEL_171:

LABEL_11:

              goto LABEL_12;
            }

            v195 = v194;
            v196 = [v194 ended];

            if (!v196)
            {
              v25 = isUniquelyReferenced_nonNull_native;
              isUniquelyReferenced_nonNull_native = v312;
              goto LABEL_171;
            }

            v197 = sub_25E9D7850();
            if (!v197)
            {
              goto LABEL_226;
            }

            v198 = v197;
            v13 = sub_25E9D7870();

            v199 = v298;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v313 = v199;
            v200 = sub_25E978F5C(v311, v18);
            v202 = *(v199 + 16);
            v203 = (v201 & 1) == 0;
            v51 = __OFADD__(v202, v203);
            v204 = v202 + v203;
            if (v51)
            {
              goto LABEL_189;
            }

            v18 = v201;
            if (*(v199 + 24) < v204)
            {
              sub_25E979464(v204, isUniquelyReferenced_nonNull_native);
              v200 = sub_25E978F5C(v311, v310);
              if ((v18 & 1) != (v205 & 1))
              {
                goto LABEL_227;
              }

              goto LABEL_173;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_173:
              isUniquelyReferenced_nonNull_native = v308;
              if (v18)
              {
                goto LABEL_174;
              }
            }

            else
            {
              v223 = v200;
              sub_25E97D5F4();
              v200 = v223;
              isUniquelyReferenced_nonNull_native = v308;
              if (v18)
              {
LABEL_174:
                v213 = v200;

                v298 = v313;
                v214 = v313[7] + 16 * v213;
                *v214 = 48;
                *(v214 + 8) = v13;

                goto LABEL_12;
              }
            }

            v14 = v313;
            v313[(v200 >> 6) + 8] |= 1 << v200;
            v224 = (v14[6] + 16 * v200);
            v225 = v310;
            *v224 = v311;
            v224[1] = v225;
            v226 = v14[7] + 16 * v200;
            *v226 = 48;
            *(v226 + 8) = v13;

            v227 = v14[2];
            v51 = __OFADD__(v227, 1);
            v228 = v227 + 1;
            if (v51)
            {
              goto LABEL_215;
            }

            v298 = v14;
            v14[2] = v228;
            goto LABEL_12;
          }

          v301 = v7;
          v7 = v6;
          v6 = v5;
          v5 = v4;

          v182 = sub_25E9D7850();
          if (!v182)
          {
            goto LABEL_221;
          }

          v183 = v182;
          v184 = sub_25E9D7870();

          v185 = v302;
          v4 = swift_isUniquelyReferenced_nonNull_native();
          v313 = v185;
          v187 = sub_25E978F5C(v311, v18);
          v188 = *(v185 + 16);
          v189 = (v186 & 1) == 0;
          v190 = v188 + v189;
          if (__OFADD__(v188, v189))
          {
            goto LABEL_184;
          }

          isUniquelyReferenced_nonNull_native = v186;
          if (*(v185 + 24) >= v190)
          {
            if ((v4 & 1) == 0)
            {
              sub_25E97D5F4();
            }
          }

          else
          {
            sub_25E979464(v190, v4);
            v191 = sub_25E978F5C(v311, v310);
            if ((isUniquelyReferenced_nonNull_native & 1) != (v192 & 1))
            {
              goto LABEL_227;
            }

            v187 = v191;
          }

          v4 = v5;
          v5 = v6;
          if (isUniquelyReferenced_nonNull_native)
          {

            v302 = v313;
            v206 = v313[7] + 16 * v187;
            *v206 = 47;
            *(v206 + 8) = v184;

            v6 = v7;
            v7 = v301;
          }

          else
          {
            v207 = v313;
            v313[(v187 >> 6) + 8] |= 1 << v187;
            v208 = (v207[6] + 16 * v187);
            v209 = v310;
            *v208 = v311;
            v208[1] = v209;
            v210 = v207[7] + 16 * v187;
            *v210 = 47;
            *(v210 + 8) = v184;

            v211 = v207[2];
            v51 = __OFADD__(v211, 1);
            v212 = v211 + 1;
            if (v51)
            {
              goto LABEL_194;
            }

            v6 = v7;
            v302 = v207;
            v207[2] = v212;
            v7 = v301;
          }

LABEL_12:
          v9 = 0x27FD0D000;
          ++v16;
          v21 = v307;
          if (v309 == v305)
          {
            goto LABEL_197;
          }
        }

        v29 = v28;
        v30 = [v28 searchToolId];

        if (v30)
        {
          v31 = v296;
          sub_25E9D8100();

          v32 = v31;
          v33 = sub_25E9D77F0();
          v34 = *(v33 - 8);
          if ((*(v34 + 48))(v32, 1, v33) != 1)
          {
            v35 = sub_25E9D77C0();
            v310 = v16;
            v311 = v35;
            v36 = v6;
            v37 = v4;
            v38 = v7;
            v39 = v5;
            v41 = v40;
            (*(v34 + 8))(v32, v33);
            v18 = v41;
            v5 = v39;
            v7 = v38;
            v4 = v37;
            v6 = v36;
            v16 = v310;
            goto LABEL_28;
          }

          sub_25E981210(v32, &qword_27FD0D7D8, &qword_25E9D9BC0);
        }

        v311 = 0;
        v18 = 0xE000000000000000;
LABEL_28:
        v27 = v312;
        goto LABEL_29;
      }
    }

LABEL_197:

    v0 = v295;
  }

  v0[2] = v4;

  v0[3] = v5;

  v0[4] = v6;

  v0[5] = v7;

  v0[6] = v304;

  v0[7] = v300;

  v0[8] = v303;

  v0[9] = v299;

  v0[10] = v302;

  v0[11] = v298;

  if (*(v9 + 1480) != -1)
  {
    swift_once();
  }

  v230 = sub_25E9D7F10();
  v312 = __swift_project_value_buffer(v230, qword_27FD0DB90);
  v231 = sub_25E9D7F00();
  v232 = sub_25E9D8120();
  v233 = os_log_type_enabled(v231, v232);
  v310 = v6;
  v311 = v5;
  v301 = v7;
  v309 = v4;
  if (v233)
  {
    v234 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v313 = v235;
    *v234 = 136315394;

    v236 = sub_25E9D7F40();
    v238 = v237;

    v239 = sub_25E9887EC(v236, v238, &v313);

    *(v234 + 4) = v239;
    *(v234 + 12) = 2080;

    v240 = sub_25E9D7F40();
    v242 = v241;

    v243 = sub_25E9887EC(v240, v242, &v313);

    *(v234 + 14) = v243;
    _os_log_impl(&dword_25E971000, v231, v232, "General Search Start Dict: %s, End Dict: %s", v234, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v235, -1, -1);
    MEMORY[0x25F8C51A0](v234, -1, -1);
  }

  v244 = sub_25E9D7F00();
  v245 = sub_25E9D8120();
  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v313 = v247;
    *v246 = 136315394;

    v248 = sub_25E9D7F40();
    v250 = v249;

    v251 = sub_25E9887EC(v248, v250, &v313);

    *(v246 + 4) = v251;
    *(v246 + 12) = 2080;

    v252 = sub_25E9D7F40();
    v254 = v253;

    v255 = sub_25E9887EC(v252, v254, &v313);

    *(v246 + 14) = v255;
    _os_log_impl(&dword_25E971000, v244, v245, "Answer Synthesis Start Dict: %s, End Dict: %s", v246, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v247, -1, -1);
    MEMORY[0x25F8C51A0](v246, -1, -1);
  }

  v256 = sub_25E9D7F00();
  v257 = sub_25E9D8120();
  if (os_log_type_enabled(v256, v257))
  {
    v258 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v313 = v259;
    *v258 = 136315394;

    v260 = sub_25E9D7F40();
    v262 = v261;

    v263 = sub_25E9887EC(v260, v262, &v313);

    *(v258 + 4) = v263;
    *(v258 + 12) = 2080;

    v264 = sub_25E9D7F40();
    v266 = v265;

    v267 = sub_25E9887EC(v264, v266, &v313);

    *(v258 + 14) = v267;
    _os_log_impl(&dword_25E971000, v256, v257, "Spotlight Start Dict: %s, End Dict: %s", v258, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v259, -1, -1);
    MEMORY[0x25F8C51A0](v258, -1, -1);
  }

  v268 = sub_25E9D7F00();
  v269 = sub_25E9D8120();
  if (os_log_type_enabled(v268, v269))
  {
    v270 = swift_slowAlloc();
    v271 = swift_slowAlloc();
    v313 = v271;
    *v270 = 136315394;

    v272 = sub_25E9D7F40();
    v274 = v273;

    v275 = sub_25E9887EC(v272, v274, &v313);

    *(v270 + 4) = v275;
    *(v270 + 12) = 2080;

    v276 = sub_25E9D7F40();
    v278 = v277;

    v279 = sub_25E9887EC(v276, v278, &v313);

    *(v270 + 14) = v279;
    _os_log_impl(&dword_25E971000, v268, v269, "Global Search Start Dict: %s, End Dict: %s", v270, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v271, -1, -1);
    MEMORY[0x25F8C51A0](v270, -1, -1);
  }

  v280 = sub_25E9D7F00();
  v281 = sub_25E9D8120();
  if (os_log_type_enabled(v280, v281))
  {
    v282 = swift_slowAlloc();
    v283 = swift_slowAlloc();
    v313 = v283;
    *v282 = 136315394;

    v284 = sub_25E9D7F40();
    v286 = v285;

    v287 = sub_25E9887EC(v284, v286, &v313);

    *(v282 + 4) = v287;
    *(v282 + 12) = 2080;

    v288 = sub_25E9D7F40();
    v290 = v289;

    v291 = sub_25E9887EC(v288, v290, &v313);

    *(v282 + 14) = v291;
    _os_log_impl(&dword_25E971000, v280, v281, "HallucinationDetection Start Dict: %s, End Dict: %s", v282, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v283, -1, -1);
    MEMORY[0x25F8C51A0](v282, -1, -1);
  }
}

void *SELFComponent.SearchTool.deinit()
{

  return v0;
}

uint64_t SELFComponent.SearchTool.__deallocating_deinit()
{
  SELFComponent.SearchTool.deinit();

  return swift_deallocClassInstance();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E978F04(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_25E978F5C(uint64_t a1, uint64_t a2)
{
  sub_25E9D8390();
  sub_25E9D8010();
  v4 = sub_25E9D83C0();

  return sub_25E979120(a1, a2, v4);
}

unint64_t sub_25E978FD4(uint64_t a1)
{
  sub_25E9D77F0();
  sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);
  v2 = sub_25E9D7F60();

  return sub_25E9791D8(a1, v2);
}

unint64_t sub_25E97906C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_25E9D7F60();
  return sub_25E979384(a1, v6, a2, a3);
}

unint64_t sub_25E979120(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25E9D8300())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E9791D8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25E9D77F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25E981094(&qword_27FD0D7A0, MEMORY[0x277CC9610]);
      v15 = sub_25E9D7F90();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_25E979384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      if (sub_25E9D7F90())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_25E979464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D730, &qword_25E9D91D0);
  v37 = v4;
  result = sub_25E9D82B0();
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
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
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
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
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

uint64_t sub_25E979724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D760, &qword_25E9D9200);
  v33 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      if (v33)
      {
        v24 = (*(v5 + 56) + 304 * v20);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 304 * v20), sizeof(__dst));

        sub_25E97F4EC(__dst, __src);
        v24 = __dst;
      }

      memcpy(__src, v24, 0x130uLL);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = memcpy((*(v7 + 56) + 304 * v15), __src, 0x130uLL);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25E979A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25E9D77F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7C0, &qword_25E9D9250);
  v43 = v4;
  result = sub_25E9D82B0();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v22 = (v16 - 1) & v16;
LABEL_15:
      v25 = v21 | (v12 << 6);
      v46 = v22;
      v26 = *(v6 + 72);
      v27 = *(v9 + 48) + v26 * v25;
      if (v43)
      {
        (*v44)(v47, v27, v5);
      }

      else
      {
        (*v40)(v47, v27, v5);
      }

      v28 = (*(v9 + 56) + 16 * v25);
      v29 = *(v28 + 1);
      v45 = *v28;
      sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);
      result = sub_25E9D7F60();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v26 * v19, v47, v5);
      v20 = *(v11 + 56) + 16 * v19;
      *v20 = v45;
      *(v20 + 8) = v29;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
      v16 = v46;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25E979E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25E9D77F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7A8, &qword_25E9D9238);
  v43 = v4;
  result = sub_25E9D82B0();
  v11 = result;
  if (*(v9 + 16))
  {
    v48 = v8;
    v49 = v5;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v47 = *(v19 + 72);
      v28 = v27 + v47 * v26;
      if (v43)
      {
        (*v44)(v48, v28, v49);
      }

      else
      {
        (*v41)(v48, v28, v49);
      }

      v29 = (*(v9 + 56) + 32 * v26);
      v30 = *v29;
      v45 = v29[1];
      v46 = v30;
      sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);
      result = sub_25E9D7F60();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v44)(*(v11 + 48) + v47 * v20, v48, v49);
      v21 = (*(v11 + 56) + 32 * v20);
      v22 = v45;
      *v21 = v46;
      v21[1] = v22;
      ++*(v11 + 16);
      v19 = v42;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25E97A210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v57 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v46 - v12;
  v13 = sub_25E9D77F0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = v10;
  v17 = v16;
  result = sub_25E9D82B0();
  v19 = result;
  if (*(v16 + 16))
  {
    v55 = v13;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v46 = v6;
    v47 = (v14 + 16);
    v48 = v16;
    v49 = v14;
    v53 = (v14 + 32);
    v26 = result + 64;
    v27 = v52;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v54 = *(v49 + 72);
      v34 = v33 + v54 * v32;
      if (v51)
      {
        (*v53)(v27, v34, v55);
        v35 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_25E981140(v35 + v36 * v32, v56, v57);
      }

      else
      {
        (*v47)(v27, v34, v55);
        v37 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_25E9810D8(v37 + v36 * v32, v56, v57);
      }

      sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);
      result = sub_25E9D7F60();
      v38 = -1 << *(v19 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v27 = v52;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v28 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v27 = v52;
LABEL_7:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v53)((*(v19 + 48) + v54 * v28), v27, v55);
      result = sub_25E981140(v56, *(v19 + 56) + v36 * v28, v57);
      ++*(v19 + 16);
      v17 = v48;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v17 + 32);
    v9 = v46;
    if (v45 >= 64)
    {
      bzero(v21, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v45;
    }

    *(v17 + 16) = 0;
  }

LABEL_34:
  *v9 = v19;
  return result;
}

uint64_t sub_25E97A670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D748, &qword_25E9D91E8);
  v34 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25E97A910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D740, &qword_25E9D91E0);
  v37 = v4;
  result = sub_25E9D82B0();
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

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
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

uint64_t sub_25E97ABE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D750, &qword_25E9D91F0);
  v36 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      if (v36)
      {
        v25 = *(v5 + 56) + 288 * v21;
        v37 = *(v25 + 8);
        v38 = *v25;
        v41 = *(v25 + 16);
        v26 = *(v25 + 20);
        v39 = *(v25 + 24);
        v40 = *(v25 + 40);
        v43 = *(v25 + 56);
        v42 = *(v25 + 64);
        v44 = *(v25 + 80);
        v45 = *(v25 + 96);
        v46 = *(v25 + 112);
        v47 = *(v25 + 128);
        v48 = *(v25 + 144);
        v49 = *(v25 + 160);
        v50 = *(v25 + 176);
        v51 = *(v25 + 192);
        v52 = *(v25 + 208);
        v53 = *(v25 + 224);
        v56 = *(v25 + 272);
        v54 = *(v25 + 240);
        v55 = *(v25 + 256);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 288 * v21), sizeof(__dst));
        v55 = __dst[16];
        v56 = __dst[17];
        v53 = __dst[14];
        v54 = __dst[15];
        v51 = __dst[12];
        v52 = __dst[13];
        v49 = __dst[10];
        v50 = __dst[11];
        v47 = __dst[8];
        v48 = __dst[9];
        v45 = __dst[6];
        v46 = __dst[7];
        v44 = __dst[5];
        v42 = __dst[4];
        v43 = BYTE8(__dst[3]);
        v39 = *(&__dst[1] + 8);
        v40 = *(&__dst[2] + 8);
        v41 = __dst[1];
        v26 = BYTE4(__dst[1]);
        v37 = *(&__dst[0] + 1);
        v38 = *&__dst[0];

        sub_25E981038(__dst, v57);
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(__dst[0]) = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 288 * v15;
      *v17 = v38;
      *(v17 + 8) = v37;
      *(v17 + 16) = v41;
      *(v17 + 20) = v26;
      *(v17 + 40) = v40;
      *(v17 + 24) = v39;
      *(v17 + 56) = v43;
      *(v17 + 64) = v42;
      *(v17 + 80) = v44;
      *(v17 + 96) = v45;
      *(v17 + 112) = v46;
      *(v17 + 128) = v47;
      *(v17 + 144) = v48;
      *(v17 + 160) = v49;
      *(v17 + 176) = v50;
      *(v17 + 192) = v51;
      *(v17 + 208) = v52;
      *(v17 + 224) = v53;
      *(v17 + 240) = v54;
      *(v17 + 256) = v55;
      *(v17 + 272) = v56;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25E97B044(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D8, &qword_25E9D9190);
  v34 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25E97B300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D0, &qword_25E9D9188);
  v32 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      memcpy(__src, (*(v5 + 56) + 360 * v20), sizeof(__src));
      if ((v32 & 1) == 0)
      {
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = memcpy((*(v7 + 56) + 360 * v15), __src, 0x168uLL);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25E97B5C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D728, &qword_25E9D91C8);
  v45 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 240 * v21);
      if (v45)
      {
        v72 = v25[11];
        v73 = v25[12];
        v74 = v25[13];
        v75 = v25[14];
        v68 = v25[7];
        v69 = v25[8];
        v70 = v25[9];
        v71 = v25[10];
        v64 = v25[3];
        v65 = v25[4];
        v66 = v25[5];
        v67 = v25[6];
        v61 = *v25;
        v62 = v25[1];
        v63 = v25[2];
      }

      else
      {
        v27 = v25[1];
        v26 = v25[2];
        v46 = *v25;
        v47 = v27;
        v48 = v26;
        v28 = v25[6];
        v30 = v25[3];
        v29 = v25[4];
        v51 = v25[5];
        v52 = v28;
        v49 = v30;
        v50 = v29;
        v31 = v25[10];
        v33 = v25[7];
        v32 = v25[8];
        v55 = v25[9];
        v56 = v31;
        v53 = v33;
        v54 = v32;
        v34 = v25[14];
        v36 = v25[11];
        v35 = v25[12];
        v59 = v25[13];
        v60 = v34;
        v57 = v36;
        v58 = v35;

        sub_25E980FDC(&v46, &v61);
        v73 = v58;
        v74 = v59;
        v75 = v60;
        v69 = v54;
        v70 = v55;
        v71 = v56;
        v72 = v57;
        v65 = v50;
        v66 = v51;
        v67 = v52;
        v68 = v53;
        v61 = v46;
        v62 = v47;
        v63 = v48;
        v64 = v49;
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 240 * v15);
      v17[11] = v72;
      v17[12] = v73;
      v17[13] = v74;
      v17[14] = v75;
      v17[7] = v68;
      v17[8] = v69;
      v17[9] = v70;
      v17[10] = v71;
      v17[3] = v64;
      v17[4] = v65;
      v17[5] = v66;
      v17[6] = v67;
      *v17 = v61;
      v17[1] = v62;
      v17[2] = v63;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero((v5 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25E97BA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_25E9D82B0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 4 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 4 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_25E97BCA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A8, &qword_25E9D9168);
  v36 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 232 * v21);
      v49 = v26[12];
      v50 = v26[13];
      v51 = *(v26 + 28);
      v45 = v26[8];
      v46 = v26[9];
      v47 = v26[10];
      v48 = v26[11];
      v41 = v26[4];
      v42 = v26[5];
      v43 = v26[6];
      v44 = v26[7];
      v37 = *v26;
      v38 = v26[1];
      v39 = v26[2];
      v40 = v26[3];
      if ((v36 & 1) == 0)
      {
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 232 * v15;
      *(v17 + 192) = v49;
      *(v17 + 208) = v50;
      *(v17 + 224) = v51;
      *(v17 + 128) = v45;
      *(v17 + 144) = v46;
      *(v17 + 160) = v47;
      *(v17 + 176) = v48;
      *(v17 + 64) = v41;
      *(v17 + 80) = v42;
      *(v17 + 96) = v43;
      *(v17 + 112) = v44;
      *v17 = v37;
      *(v17 + 16) = v38;
      *(v17 + 32) = v39;
      *(v17 + 48) = v40;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25E97BFCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A0, &qword_25E9D9160);
  v34 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      v35 = v25[1];
      v36 = *v25;
      if ((v34 & 1) == 0)
      {
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v36;
      v17[1] = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25E97C278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D700, &qword_25E9D91B0);
  v33 = v4;
  result = sub_25E9D82B0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_25E980EA8(v24, v34);
      }

      else
      {
        sub_25E980E4C(v24, v34);
      }

      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25E980EA8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

char *sub_25E97C530(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      sub_25E9D8390();

      sub_25E9D8010();
      v9 = sub_25E9D83C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 304 * v3);
        v15 = (v14 + 304 * v6);
        if (v3 != v6 || result >= v15 + 304)
        {
          result = memmove(result, v15, 0x130uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25E97C6E4(int64_t a1, uint64_t a2)
{
  v4 = sub_25E9D77F0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_25E9D8200();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);
      v22 = sub_25E9D7F60();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for PnRPlanResolutionRecord(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25E97CA14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      sub_25E9D8390();

      sub_25E9D8010();
      v9 = sub_25E9D83C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_25E97CBC4(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      sub_25E9D8390();

      sub_25E9D8010();
      v9 = sub_25E9D83C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 288 * v3);
        v15 = (v14 + 288 * v6);
        if (v3 != v6 || result >= v15 + 288)
        {
          result = memmove(result, v15, 0x120uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_25E97CD78(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      sub_25E9D8390();

      sub_25E9D8010();
      v9 = sub_25E9D83C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 360 * v3);
        v15 = (v14 + 360 * v6);
        if (v3 != v6 || result >= v15 + 360)
        {
          result = memmove(result, v15, 0x168uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_25E97CF2C(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      sub_25E9D8390();

      sub_25E9D8010();
      v9 = sub_25E9D83C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 240 * v3);
        v15 = (v14 + 240 * v6);
        if (v3 != v6 || result >= v15 + 240)
        {
          result = memmove(result, v15, 0xF0uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25E97D0E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      sub_25E9D8390();

      sub_25E9D8010();
      v9 = sub_25E9D83C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_25E97D290(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      sub_25E9D8390();

      sub_25E9D8010();
      v9 = sub_25E9D83C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 232 * v3);
        v15 = (v14 + 232 * v6);
        if (v3 != v6 || result >= v15 + 232)
        {
          result = memmove(result, v15, 0xE8uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25E97D444(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      sub_25E9D8390();

      sub_25E9D8010();
      v10 = sub_25E9D83C0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_25E97D5F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D730, &qword_25E9D91D0);
  v2 = *v0;
  v3 = sub_25E9D82A0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
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

void *sub_25E97D76C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D760, &qword_25E9D9200);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_25E97F4EC(__dst, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 304 * v16;
      memcpy(__dst, (*(v2 + 56) + 304 * v16), 0x130uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x130uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_25E97D964()
{
  v1 = v0;
  v34 = sub_25E9D77F0();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7C0, &qword_25E9D9250);
  v3 = *v0;
  v4 = sub_25E9D82A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v32 = v3;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v37 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v3 + 48) + v21, v34);
        v19 *= 16;
        v24 = *(v3 + 56) + v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        result = (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        v27 = *(v15 + 56) + v19;
        *v27 = v25;
        *(v27 + 8) = v26;
        v3 = v32;
        v13 = v37;
      }

      while (v37);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v35;
        goto LABEL_18;
      }

      v18 = *(v29 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_25E97DBF0()
{
  v1 = v0;
  v34 = sub_25E9D77F0();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7A8, &qword_25E9D9238);
  v3 = *v0;
  v4 = sub_25E9D82A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v32 = v36 + 16;
    v30 = v3 + 64;
    for (i = v36 + 32; v12; v27[1] = v28)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v36;
      v19 = *(v36 + 72) * v17;
      v20 = v33;
      v21 = v34;
      (*(v36 + 16))(v33, *(v3 + 48) + v19, v34);
      v17 *= 32;
      v22 = (*(v3 + 56) + v17);
      v23 = v35;
      v24 = *(v35 + 48);
      v25 = *(v18 + 32);
      v26 = *v22;
      v37 = v22[1];
      v38 = v26;
      result = v25(v24 + v19, v20, v21);
      v27 = (*(v23 + 56) + v17);
      v28 = v37;
      *v27 = v38;
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

        v1 = v29;
        v5 = v35;
        goto LABEL_18;
      }

      v16 = *(v30 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_25E97DEAC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v47 = a4;
  v7 = v4;
  v8 = a1(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v37 - v9;
  v44 = sub_25E9D77F0();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_25E9D82A0();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v48 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v48;
    v40 = v49 + 32;
    v41 = v49 + 16;
    v42 = v11;
    v24 = v49;
    v25 = v47;
    if (v21)
    {
      do
      {
        v26 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v30 = *(v24 + 72) * v29;
        v32 = v43;
        v31 = v44;
        (*(v24 + 16))(v43, *(v11 + 48) + v30, v44);
        v33 = *(v11 + 56);
        v34 = v45;
        v35 = *(v46 + 72) * v29;
        sub_25E9810D8(v33 + v35, v45, v25);
        (*(v24 + 32))(*(v23 + 48) + v30, v32, v31);
        v36 = v34;
        v11 = v42;
        result = sub_25E981140(v36, *(v23 + 56) + v35, v25);
        v21 = v50;
      }

      while (v50);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v48;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v50 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

void *sub_25E97E1C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D748, &qword_25E9D91E8);
  v2 = *v0;
  v3 = sub_25E9D82A0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_25E97E32C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D740, &qword_25E9D91E0);
  v2 = *v0;
  v3 = sub_25E9D82A0();
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

  return result;
}

void *sub_25E97E4B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D750, &qword_25E9D91F0);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 288 * v17;
        memcpy(__dst, (*(v2 + 56) + 288 * v17), 0x120uLL);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        memcpy((*(v4 + 56) + v22), __dst, 0x120uLL);

        result = sub_25E981038(__dst, v25);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25E97E674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D8, &qword_25E9D9190);
  v2 = *v0;
  v3 = sub_25E9D82A0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_25E97E7F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D0, &qword_25E9D9188);
  v22 = v0;
  v1 = *v0;
  v2 = sub_25E9D82A0();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    for (i = (v8 + 63) >> 6; v10; result = )
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v15 = v12 | (v7 << 6);
      v16 = 16 * v15;
      v17 = (*(v1 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = 360 * v15;
      memcpy(__dst, (*(v1 + 56) + 360 * v15), sizeof(__dst));
      v21 = (*(v3 + 48) + v16);
      *v21 = v19;
      v21[1] = v18;
      memcpy((*(v3 + 56) + v20), __dst, 0x168uLL);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_19;
      }

      v14 = *(v1 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v22 = v3;
  }

  return result;
}

void *sub_25E97E99C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D728, &qword_25E9D91C8);
  v2 = *v0;
  v3 = sub_25E9D82A0();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 240;
        v23 = *(v19 + v17 + 96);
        v25 = *(v19 + v17 + 48);
        v24 = *(v19 + v17 + 64);
        v53 = *(v19 + v17 + 80);
        v54 = v23;
        v51 = v25;
        v52 = v24;
        v26 = *(v19 + v17 + 160);
        v28 = *(v19 + v17 + 112);
        v27 = *(v19 + v17 + 128);
        v57 = *(v19 + v17 + 144);
        v58 = v26;
        v55 = v28;
        v56 = v27;
        v29 = *(v19 + v17 + 224);
        v31 = *(v19 + v17 + 176);
        v30 = *(v19 + v17 + 192);
        v61 = *(v19 + v17 + 208);
        v62 = v29;
        v59 = v31;
        v60 = v30;
        v33 = *(v19 + v17 + 16);
        v32 = *(v19 + v17 + 32);
        v48 = *(v19 + v17);
        v49 = v33;
        v50 = v32;
        v34 = (*(v4 + 48) + v18);
        *v34 = v22;
        v34[1] = v21;
        v35 = (*(v4 + 56) + v17);
        v36 = v48;
        v37 = v50;
        v35[1] = v49;
        v35[2] = v37;
        *v35 = v36;
        v38 = v51;
        v39 = v52;
        v40 = v54;
        v35[5] = v53;
        v35[6] = v40;
        v35[3] = v38;
        v35[4] = v39;
        v41 = v55;
        v42 = v56;
        v43 = v58;
        v35[9] = v57;
        v35[10] = v43;
        v35[7] = v41;
        v35[8] = v42;
        v44 = v59;
        v45 = v60;
        v46 = v62;
        v35[13] = v61;
        v35[14] = v46;
        v35[11] = v44;
        v35[12] = v45;

        result = sub_25E980FDC(&v48, &v47);
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

void *sub_25E97EBB4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25E9D82A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        LODWORD(v20) = *(*(v4 + 56) + 4 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + 4 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25E97ED0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A8, &qword_25E9D9168);
  v2 = *v0;
  v3 = sub_25E9D82A0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 232;
      v21 = *(v2 + 56) + v16;
      v36 = *(v21 + 192);
      v37 = *(v21 + 208);
      v38 = *(v21 + 224);
      v32 = *(v21 + 128);
      v33 = *(v21 + 144);
      v34 = *(v21 + 160);
      v35 = *(v21 + 176);
      v28 = *(v21 + 64);
      v29 = *(v21 + 80);
      v30 = *(v21 + 96);
      v31 = *(v21 + 112);
      v24 = *v21;
      v25 = *(v21 + 16);
      v26 = *(v21 + 32);
      v27 = *(v21 + 48);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      v23 = *(v4 + 56) + v16;
      *(v23 + 192) = v36;
      *(v23 + 208) = v37;
      *(v23 + 224) = v38;
      *(v23 + 128) = v32;
      *(v23 + 144) = v33;
      *(v23 + 160) = v34;
      *(v23 + 176) = v35;
      *(v23 + 64) = v28;
      *(v23 + 80) = v29;
      *(v23 + 96) = v30;
      *(v23 + 112) = v31;
      *v23 = v24;
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
      *(v23 + 48) = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_25E97EF0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A0, &qword_25E9D9160);
  v2 = *v0;
  v3 = sub_25E9D82A0();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
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

void *sub_25E97F080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D700, &qword_25E9D91B0);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25E980E4C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25E980EA8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_25E97F224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7E0, &qword_25E9D9268);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25E978F5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_25E97F328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D730, &qword_25E9D91D0);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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

double sub_25E97F43C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  return result;
}

uint64_t sub_25E97F474(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_25E97F624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D0, &qword_25E9D9260);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7C0, &qword_25E9D9250);
    v7 = sub_25E9D82C0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25E9811A8(v9, v5, &qword_27FD0D7D0, &qword_25E9D9260);
      result = sub_25E978FD4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25E9D77F0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 16 * v13;
      v17 = *(v8 + 1);
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_25E97F81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7C8, &qword_25E9D9258);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7B8, &qword_25E9D9248);
    v7 = sub_25E9D82C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25E9811A8(v9, v5, &qword_27FD0D7C8, &qword_25E9D9258);
      result = sub_25E978FD4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25E9D77F0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PRRequestContextMetadata(0);
      result = sub_25E981140(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for PRRequestContextMetadata);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_25E97FA38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7B0, &qword_25E9D9240);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7A8, &qword_25E9D9238);
    v7 = sub_25E9D82C0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25E9811A8(v9, v5, &qword_27FD0D7B0, &qword_25E9D9240);
      result = sub_25E978FD4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25E9D77F0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_25E97FC3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D740, &qword_25E9D91E0);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25E978F5C(v5, v6);
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

unint64_t sub_25E97FD50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D748, &qword_25E9D91E8);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_25E97FE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D8, &qword_25E9D9190);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_25E97FF78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 6)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_25E978F5C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 4 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_25E98006C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A0, &qword_25E9D9160);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_25E98017C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D760, &qword_25E9D9200);
  v3 = sub_25E9D82C0();

  memcpy(__dst, a1 + 4, 0x140uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_25E9811A8(__dst, v15, &qword_27FD0D768, &qword_25E9D9208);
  v6 = sub_25E978F5C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = a1 + 44;
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 304 * v6), &__dst[2], 0x130uLL);
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

    memcpy(__dst, v8, 0x140uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_25E9811A8(__dst, v15, &qword_27FD0D768, &qword_25E9D9208);
    v6 = sub_25E978F5C(v4, v5);
    v8 += 40;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E980308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D788, &qword_25E9D9228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D790, &qword_25E9D9230);
    v7 = sub_25E9D82C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25E9811A8(v9, v5, &qword_27FD0D788, &qword_25E9D9228);
      result = sub_25E978FD4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25E9D77F0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PnRPlanResolutionRecord(0);
      result = sub_25E981140(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for PnRPlanResolutionRecord);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_25E980524(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D750, &qword_25E9D91F0);
  v3 = sub_25E9D82C0();

  memcpy(__dst, a1 + 4, 0x130uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_25E9811A8(__dst, v15, &qword_27FD0D780, &qword_25E9D9220);
  v6 = sub_25E978F5C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = a1 + 42;
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 288 * v6), &__dst[2], 0x120uLL);
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

    memcpy(__dst, v8, 0x130uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_25E9811A8(__dst, v15, &qword_27FD0D780, &qword_25E9D9220);
    v6 = sub_25E978F5C(v4, v5);
    v8 += 38;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_25E9806B0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D0, &qword_25E9D9188);
  v3 = sub_25E9D82C0();

  memcpy(__dst, a1 + 4, 0x178uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_25E9811A8(__dst, v15, &qword_27FD0D778, &qword_25E9D9218);
  v6 = sub_25E978F5C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = a1 + 51;
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 360 * v6), &__dst[2], 0x168uLL);
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

    memcpy(__dst, v8, 0x178uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_25E9811A8(__dst, v15, &qword_27FD0D778, &qword_25E9D9218);
    v6 = sub_25E978F5C(v4, v5);
    v8 += 47;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E98083C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D728, &qword_25E9D91C8);
  v3 = sub_25E9D82C0();

  v4 = *(a1 + 240);
  v56 = *(a1 + 224);
  v57 = v4;
  v5 = *(a1 + 272);
  v58 = *(a1 + 256);
  v59 = v5;
  v6 = *(a1 + 176);
  v52 = *(a1 + 160);
  v53 = v6;
  v7 = *(a1 + 208);
  v54 = *(a1 + 192);
  v55 = v7;
  v8 = *(a1 + 112);
  v48 = *(a1 + 96);
  v49 = v8;
  v9 = *(a1 + 144);
  v50 = *(a1 + 128);
  v51 = v9;
  v10 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v10;
  v11 = *(a1 + 80);
  v46 = *(a1 + 64);
  v47 = v11;
  v13 = *(&v44 + 1);
  v12 = v44;
  sub_25E9811A8(&v44, v43, &qword_27FD0D770, &qword_25E9D9210);
  result = sub_25E978F5C(v12, v13);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v16 = (a1 + 288);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = (v3[7] + 240 * result);
    v19 = v45;
    v20 = v47;
    v18[1] = v46;
    v18[2] = v20;
    *v18 = v19;
    v21 = v48;
    v22 = v49;
    v23 = v51;
    v18[5] = v50;
    v18[6] = v23;
    v18[3] = v21;
    v18[4] = v22;
    v24 = v52;
    v25 = v53;
    v26 = v55;
    v18[9] = v54;
    v18[10] = v26;
    v18[7] = v24;
    v18[8] = v25;
    v27 = v56;
    v28 = v57;
    v29 = v59;
    v18[13] = v58;
    v18[14] = v29;
    v18[11] = v27;
    v18[12] = v28;
    v30 = v3[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    v3[2] = v32;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v33 = v16 + 16;
    v34 = v16[13];
    v56 = v16[12];
    v57 = v34;
    v35 = v16[15];
    v58 = v16[14];
    v59 = v35;
    v36 = v16[9];
    v52 = v16[8];
    v53 = v36;
    v37 = v16[11];
    v54 = v16[10];
    v55 = v37;
    v38 = v16[5];
    v48 = v16[4];
    v49 = v38;
    v39 = v16[7];
    v50 = v16[6];
    v51 = v39;
    v40 = v16[1];
    v44 = *v16;
    v45 = v40;
    v41 = v16[3];
    v46 = v16[2];
    v47 = v41;
    v13 = *(&v44 + 1);
    v12 = v44;
    sub_25E9811A8(&v44, v43, &qword_27FD0D770, &qword_25E9D9210);
    result = sub_25E978F5C(v12, v13);
    v16 = v33;
    if (v42)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E980A5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A8, &qword_25E9D9168);
  v3 = sub_25E9D82C0();

  v4 = *(a1 + 240);
  v54 = *(a1 + 224);
  v55 = v4;
  v56 = *(a1 + 256);
  v57 = *(a1 + 272);
  v5 = *(a1 + 176);
  v50 = *(a1 + 160);
  v51 = v5;
  v6 = *(a1 + 208);
  v52 = *(a1 + 192);
  v53 = v6;
  v7 = *(a1 + 112);
  v46 = *(a1 + 96);
  v47 = v7;
  v8 = *(a1 + 144);
  v48 = *(a1 + 128);
  v49 = v8;
  v9 = *(a1 + 48);
  v42 = *(a1 + 32);
  v43 = v9;
  v10 = *(a1 + 80);
  v44 = *(a1 + 64);
  v45 = v10;
  v12 = *(&v42 + 1);
  v11 = v42;
  sub_25E9811A8(&v42, v41, &qword_27FD0D758, &qword_25E9D91F8);
  result = sub_25E978F5C(v11, v12);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v15 = (a1 + 280);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = (v3[6] + 16 * result);
    *v16 = v11;
    v16[1] = v12;
    v17 = v3[7] + 232 * result;
    v18 = v43;
    v19 = v45;
    *(v17 + 16) = v44;
    *(v17 + 32) = v19;
    *v17 = v18;
    v20 = v46;
    v21 = v47;
    v22 = v49;
    *(v17 + 80) = v48;
    *(v17 + 96) = v22;
    *(v17 + 48) = v20;
    *(v17 + 64) = v21;
    v23 = v50;
    v24 = v51;
    v25 = v53;
    *(v17 + 144) = v52;
    *(v17 + 160) = v25;
    *(v17 + 112) = v23;
    *(v17 + 128) = v24;
    v26 = v54;
    v27 = v55;
    v28 = v56;
    *(v17 + 224) = v57;
    *(v17 + 192) = v27;
    *(v17 + 208) = v28;
    *(v17 + 176) = v26;
    v29 = v3[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      break;
    }

    v3[2] = v31;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v32 = (v15 + 248);
    v33 = v15[13];
    v54 = v15[12];
    v55 = v33;
    v56 = v15[14];
    v57 = *(v15 + 30);
    v34 = v15[9];
    v50 = v15[8];
    v51 = v34;
    v35 = v15[11];
    v52 = v15[10];
    v53 = v35;
    v36 = v15[5];
    v46 = v15[4];
    v47 = v36;
    v37 = v15[7];
    v48 = v15[6];
    v49 = v37;
    v38 = v15[1];
    v42 = *v15;
    v43 = v38;
    v39 = v15[3];
    v44 = v15[2];
    v45 = v39;
    v12 = *(&v42 + 1);
    v11 = v42;
    sub_25E9811A8(&v42, v41, &qword_27FD0D758, &qword_25E9D91F8);
    result = sub_25E978F5C(v11, v12);
    v15 = v32;
    if (v40)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E980C94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D700, &qword_25E9D91B0);
    v3 = sub_25E9D82C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_25E9811A8(v4, &v13, &qword_27FD0D720, &qword_25E9DAC00);
      v5 = v13;
      v6 = v14;
      result = sub_25E978F5C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25E980EA8(&v15, (v3[7] + 32 * result));
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

double sub_25E980E0C(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90C0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  return result;
}