uint64_t sub_275A87758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C18, "։");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static Stopwatch.start()(uint64_t a1)
{
  type metadata accessor for Stopwatch();
  swift_allocObject();
  sub_275A87818();
}

void sub_275A87818()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v1 timeIntervalSince1970];
  v3 = v2;

  v4 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    *(v0 + 16) = v4;
    return;
  }

LABEL_7:
  __break(1u);
}

void Stopwatch.elapsed()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v1 timeIntervalSince1970];
  v3 = v2;

  v4 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v4, *(v0 + 16)))
  {
LABEL_9:
    __break(1u);
  }
}

Swift::String __swiftcall SubscriptionClientRequest.OneOf_Type.toString()()
{
  v1 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  MEMORY[0x28223BE20](v1);
  sub_275A87AB0(v0, &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_275AE56E4();
  v5 = v4;
  sub_275A87B14(40, 0xE100000000000000, v3, v4);
  if ((v6 & 1) == 0)
  {
    v7 = sub_275AE5824();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v3 = MEMORY[0x277C86D90](v7, v9, v11, v13);
    v5 = v14;
  }

  v15 = v3;
  v16 = v5;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_275A87AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_275A87B14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_275AE5804() != a1 || v9 != a2)
  {
    v10 = sub_275AE5AC4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_275AE5764();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t SubscriptionClientRequest.requestType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  sub_275A880D4(v0, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_275A88144(v3);
    v13[0] = 0x284E574F4E4B4E55;
    v13[1] = 0xE800000000000000;
    type metadata accessor for SubscriptionClientRequest(0);
    sub_275A881AC();
    v11 = sub_275AE5464();
    MEMORY[0x277C86E00](v11);

    MEMORY[0x277C86E00](41, 0xE100000000000000);
    return v13[0];
  }

  else
  {
    sub_275A88204(v3, v10);
    sub_275A87AB0(v10, v8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0x726566664F77656ELL;
        break;
      case 2u:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0x7365727574616566;
        break;
      case 3u:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0x6574617453746567;
        break;
      case 4u:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 1635017060;
        break;
      case 5u:
      case 7u:
      case 0xDu:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0xD000000000000013;
        break;
      case 6u:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0x6341696C43746573;
        break;
      case 8u:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0x7974697669746361;
        break;
      case 9u:
      case 0xCu:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0x7974697669746361;
        break;
      case 0xAu:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0x656D6F6942746567;
        break;
      case 0xBu:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0xD000000000000016;
        break;
      case 0xEu:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0xD000000000000010;
        break;
      case 0xFu:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0xD000000000000015;
        break;
      case 0x10u:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 0xD000000000000011;
        break;
      default:
        sub_275A88268(v10);
        sub_275A88268(v8);
        result = 1735289200;
        break;
    }
  }

  return result;
}

uint64_t sub_275A880D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A88144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275A881AC()
{
  result = qword_281411C70[0];
  if (!qword_281411C70[0])
  {
    type metadata accessor for SubscriptionClientRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281411C70);
  }

  return result;
}

uint64_t sub_275A88204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A88268(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DaemonDelayedOfferXpcCallContext.isFailsafe.setter(char a1)
{
  result = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*FetchOffersContext.action.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for FetchOffersContext(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A883DC;
}

double FetchOffersContext.mlServerScore.getter()
{
  v1 = v0 + *(type metadata accessor for FetchOffersContext(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t FetchOffersContext.mlServerScore.setter(double a1)
{
  result = type metadata accessor for FetchOffersContext(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*FetchOffersContext.mlServerScore.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FetchOffersContext(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_275A57784;
}

Swift::Void __swiftcall FetchOffersContext.clearMlServerScore()()
{
  v1 = v0 + *(type metadata accessor for FetchOffersContext(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t FetchOffersContext.litmusInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(v1 + *(OffersContext + 28), v5, &qword_280A24650, &qword_275AEAC50);
  v7 = type metadata accessor for LitmusInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_275A88D48(v5, a1, type metadata accessor for LitmusInfo);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 8) = 256;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24650, &qword_275AEAC50);
  }

  return result;
}

uint64_t FetchOffersContext.litmusInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchOffersContext(0) + 28);
  sub_275A5FE04(v1 + v3, &qword_280A24650, &qword_275AEAC50);
  sub_275A88D48(a1, v1 + v3, type metadata accessor for LitmusInfo);
  v4 = type metadata accessor for LitmusInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchOffersContext.litmusInfo.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for LitmusInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FetchOffersContext(0) + 28);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24650, &qword_275AEAC50);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 256;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24650, &qword_275AEAC50);
    }
  }

  else
  {
    sub_275A88D48(v8, v14, type metadata accessor for LitmusInfo);
  }

  return sub_275A88A0C;
}

uint64_t FetchOffersContext.maxDelayInSecs.setter(uint64_t a1)
{
  result = type metadata accessor for FetchOffersContext(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*FetchOffersContext.maxDelayInSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FetchOffersContext(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall FetchOffersContext.clearMaxDelayInSecs()()
{
  v1 = v0 + *(type metadata accessor for FetchOffersContext(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t FetchOffersContext.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(v1 + *(OffersContext + 36), v5, &qword_280A24658, &unk_275AE7960);
  v7 = type metadata accessor for QuotaServerState(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_275A88D48(v5, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[8]);
  *v12 = 0;
  v12[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t sub_275A88D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FetchOffersContext.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchOffersContext(0) + 36);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A88D48(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchOffersContext.quotaServerState.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FetchOffersContext(0) + 36);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A88D48(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275A890A4;
}

uint64_t sub_275A890CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A89134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL FetchOffersContext.hasQuotaServerState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(v0 + *(OffersContext + 36), v3, &qword_280A24658, &unk_275AE7960);
  v5 = type metadata accessor for QuotaServerState(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_275A5FE04(v3, &qword_280A24658, &unk_275AE7960);
  return v6;
}

Swift::Void __swiftcall FetchOffersContext.clearQuotaServerState()()
{
  v1 = *(type metadata accessor for FetchOffersContext(0) + 36);
  sub_275A5FE04(v0 + v1, &qword_280A24658, &unk_275AE7960);
  v2 = type metadata accessor for QuotaServerState(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_275A89360(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A8EA24();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t FetchOffersContext.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  OffersContext = type metadata accessor for FetchOffersContext(0);
  v3 = a1 + OffersContext[5];
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = a1 + OffersContext[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OffersContext[7];
  v6 = type metadata accessor for LitmusInfo(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + OffersContext[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OffersContext[9];
  v9 = type metadata accessor for QuotaServerState(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t static FetchOffersContext.Action.allCases.setter(void *a1)
{
  swift_beginAccess();
  static FetchOffersContext.Action.allCases = a1;
}

uint64_t sub_275A895AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static FetchOffersContext.Action.allCases;
}

uint64_t sub_275A89614(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[9])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_275A89694(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v5 = a2 & 1;
  result = a3(0);
  v7 = v3 + *(result + 20);
  *v7 = a1;
  *(v7 + 8) = v5;
  *(v7 + 9) = 0;
  return result;
}

uint64_t (*RefreshDetailsContext.action.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for RefreshDetailsContext(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A8EA78;
}

uint64_t sub_275A897A0(uint64_t (*a1)(void))
{
  result = a1(0);
  v3 = v1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

uint64_t RefreshDetailsContext.wasSubscriptionDaemonCalled.setter(char a1)
{
  result = type metadata accessor for RefreshDetailsContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*RefreshDetailsContext.wasSubscriptionDaemonCalled.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RefreshDetailsContext(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A6072C;
}

uint64_t RefreshDetailsContext.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  sub_275A5F510(v1 + *(refreshed + 28), v5, &qword_280A24658, &unk_275AE7960);
  v7 = type metadata accessor for QuotaServerState(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_275A88D48(v5, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[8]);
  *v12 = 0;
  v12[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t RefreshDetailsContext.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RefreshDetailsContext(0) + 28);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A88D48(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*RefreshDetailsContext.quotaServerState.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for RefreshDetailsContext(0) + 28);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A88D48(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275A8EA7C;
}

BOOL sub_275A89D94(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_275A5F510(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_275A5FE04(v11, a1, a2);
  return v14;
}

uint64_t sub_275A89ECC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_275A5FE04(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_275A89F90(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t RefreshDetailsContext.expectedCallbackTsSecs.setter(uint64_t a1)
{
  result = type metadata accessor for RefreshDetailsContext(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*RefreshDetailsContext.expectedCallbackTsSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for RefreshDetailsContext(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall RefreshDetailsContext.clearExpectedCallbackTsSecs()()
{
  v1 = v0 + *(type metadata accessor for RefreshDetailsContext(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t RefreshDetailsContext.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v3 = a1 + refreshed[5];
  *v3 = 0;
  *(v3 + 8) = 256;
  *(a1 + refreshed[6]) = 2;
  v4 = refreshed[7];
  v5 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + refreshed[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t DaemonDelayedOfferXpcCallContext.refreshDetailsContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  sub_275A5F510(v1 + *(v6 + 20), v5, &qword_280A24C30, &qword_275AE9508);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v8 = *(*(refreshed - 1) + 48);
  if (v8(v5, 1, refreshed) != 1)
  {
    return sub_275A88D48(v5, a1, type metadata accessor for RefreshDetailsContext);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = a1 + refreshed[5];
  *v9 = 0;
  *(v9 + 8) = 256;
  *(a1 + refreshed[6]) = 2;
  v10 = refreshed[7];
  v11 = type metadata accessor for QuotaServerState(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + refreshed[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v8)(v5, 1, refreshed);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24C30, &qword_275AE9508);
  }

  return result;
}

uint64_t DaemonDelayedOfferXpcCallContext.refreshDetailsContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 20);
  sub_275A5FE04(v1 + v3, &qword_280A24C30, &qword_275AE9508);
  sub_275A88D48(a1, v1 + v3, type metadata accessor for RefreshDetailsContext);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v5 = *(*(refreshed - 8) + 56);

  return v5(v1 + v3, 0, 1, refreshed);
}

void (*DaemonDelayedOfferXpcCallContext.refreshDetailsContext.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v5[2] = refreshed;
  v10 = *(refreshed - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 20);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24C30, &qword_275AE9508);
  v16 = *(v11 + 48);
  if (v16(v8, 1, refreshed) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + refreshed[5];
    *v17 = 0;
    *(v17 + 8) = 256;
    *(v14 + refreshed[6]) = 2;
    v18 = refreshed[7];
    v19 = type metadata accessor for QuotaServerState(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    v20 = v14 + refreshed[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v16(v8, 1, refreshed) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24C30, &qword_275AE9508);
    }
  }

  else
  {
    sub_275A88D48(v8, v14, type metadata accessor for RefreshDetailsContext);
  }

  return sub_275A8A6AC;
}

void sub_275A8A6D4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_275A890CC(v11, v10, a5);
    sub_275A5FE04(v14 + v9, a3, a4);
    sub_275A88D48(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_275A89134(v11, a5);
  }

  else
  {
    sub_275A5FE04(v14 + v9, a3, a4);
    sub_275A88D48(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL DaemonDelayedOfferXpcCallContext.hasRefreshDetailsContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  sub_275A5F510(v0 + *(v4 + 20), v3, &qword_280A24C30, &qword_275AE9508);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v6 = (*(*(refreshed - 8) + 48))(v3, 1, refreshed) != 1;
  sub_275A5FE04(v3, &qword_280A24C30, &qword_275AE9508);
  return v6;
}

Swift::Void __swiftcall DaemonDelayedOfferXpcCallContext.clearRefreshDetailsContext()()
{
  v1 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 20);
  sub_275A5FE04(v0 + v1, &qword_280A24C30, &qword_275AE9508);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v3 = *(*(refreshed - 8) + 56);

  v3(v0 + v1, 1, 1, refreshed);
}

uint64_t (*DaemonDelayedOfferXpcCallContext.isFailsafe.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t DaemonDelayedOfferXpcCallContext.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  v3 = *(v2 + 20);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  result = (*(*(refreshed - 8) + 56))(a1 + v3, 1, 1, refreshed);
  *(a1 + *(v2 + 24)) = 2;
  return result;
}

uint64_t sub_275A8AB34()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static FetchOffersContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FetchOffersContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE9490;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mlServerScore";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "litmusInfo";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "maxDelayInSecs";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "quotaServerState";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t FetchOffersContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275AE5344();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_275A8C014(a1, v5, a2, a3, type metadata accessor for FetchOffersContext, sub_275A8EA24, &type metadata for FetchOffersContext.Action);
        }

        else if (result == 2)
        {
          type metadata accessor for FetchOffersContext(0);
          sub_275AE53D4();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_275A8AF80(a1, v5, a2, a3);
            break;
          case 4:
            type metadata accessor for FetchOffersContext(0);
            sub_275AE53B4();
            break;
          case 5:
            sub_275A8B034(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275A8AF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchOffersContext(0);
  type metadata accessor for LitmusInfo(0);
  sub_275A8E104(&qword_280A245F0, type metadata accessor for LitmusInfo, &protocol conformance descriptor for LitmusInfo);
  return sub_275AE5404();
}

uint64_t sub_275A8B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchOffersContext(0);
  type metadata accessor for QuotaServerState(0);
  sub_275A8E104(&qword_280A24608, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);
  return sub_275AE5404();
}

uint64_t FetchOffersContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A8C248(v3, a1, a2, a3, type metadata accessor for FetchOffersContext, sub_275A8EA24, &type metadata for FetchOffersContext.Action);
  if (!v4)
  {
    sub_275A8B1E4(v3, a1, a2, a3);
    sub_275A8B25C(v3, a1, a2, a3);
    sub_275A8C514(v3, a1, a2, a3, type metadata accessor for FetchOffersContext);
    sub_275A8B46C(v3, a1, a2, a3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A8B1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FetchOffersContext(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A8B25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LitmusInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(a1 + *(OffersContext + 28), v7, &qword_280A24650, &qword_275AEAC50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24650, &qword_275AEAC50);
  }

  sub_275A88D48(v7, v11, type metadata accessor for LitmusInfo);
  sub_275A8E104(&qword_280A245F0, type metadata accessor for LitmusInfo, &protocol conformance descriptor for LitmusInfo);
  sub_275AE5534();
  return sub_275A89134(v11, type metadata accessor for LitmusInfo);
}

uint64_t sub_275A8B46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for QuotaServerState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(a1 + *(OffersContext + 36), v7, &qword_280A24658, &unk_275AE7960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24658, &unk_275AE7960);
  }

  sub_275A88D48(v7, v11, type metadata accessor for QuotaServerState);
  sub_275A8E104(&qword_280A24608, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);
  sub_275AE5534();
  return sub_275A89134(v11, type metadata accessor for QuotaServerState);
}

uint64_t sub_275A8B6C8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 256;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[7];
  v8 = type metadata accessor for LitmusInfo(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  v10 = a1[9];
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = type metadata accessor for QuotaServerState(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v10, 1, 1, v12);
}

uint64_t sub_275A8B808(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A8E104(&qword_280A24CE0, type metadata accessor for FetchOffersContext, &protocol conformance descriptor for FetchOffersContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A8B8A8(uint64_t a1)
{
  sub_275A8E104(&qword_280A24C80, type metadata accessor for FetchOffersContext, &protocol conformance descriptor for FetchOffersContext);

  return sub_275AE5464();
}

uint64_t sub_275A8B914(uint64_t a1, uint64_t a2)
{
  sub_275A8E104(&qword_280A24C80, type metadata accessor for FetchOffersContext, &protocol conformance descriptor for FetchOffersContext);

  return sub_275AE5474();
}

uint64_t sub_275A8B994()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static FetchOffersContext.Action._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FetchOffersContext.Action._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DO_NOT_CALL_ML_DAEMON";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "CALL_ML_DAEMON";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275A8BC38()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static RefreshDetailsContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static RefreshDetailsContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7230;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wasSubscriptionDaemonCalled";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "quotaServerState";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expectedCallbackTsSecs";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t RefreshDetailsContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275AE5344();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_275A8C09C(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          type metadata accessor for RefreshDetailsContext(0);
          sub_275AE53B4();
        }
      }

      else if (result == 1)
      {
        sub_275A8C014(a1, v5, a2, a3, type metadata accessor for RefreshDetailsContext, sub_275A56C9C, &type metadata for NewOfferAction);
      }

      else if (result == 2)
      {
        type metadata accessor for RefreshDetailsContext(0);
        sub_275AE5364();
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275A8C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  a5(0);
  a6();
  return sub_275AE5374();
}

uint64_t sub_275A8C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RefreshDetailsContext(0);
  type metadata accessor for QuotaServerState(0);
  sub_275A8E104(&qword_280A24608, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);
  return sub_275AE5404();
}

uint64_t RefreshDetailsContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A8C248(v3, a1, a2, a3, type metadata accessor for RefreshDetailsContext, sub_275A56C9C, &type metadata for NewOfferAction);
  if (!v4)
  {
    sub_275A8CE84(v3, a1, a2, a3, type metadata accessor for RefreshDetailsContext);
    sub_275A8C304(v3, a1, a2, a3);
    sub_275A8C514(v3, a1, a2, a3, type metadata accessor for RefreshDetailsContext);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A8C248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  result = a5(0);
  if ((*(a1 + *(result + 20) + 9) & 1) == 0)
  {
    a6(result, v10);
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275A8C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for QuotaServerState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  sub_275A5F510(a1 + *(refreshed + 28), v7, &qword_280A24658, &unk_275AE7960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24658, &unk_275AE7960);
  }

  sub_275A88D48(v7, v11, type metadata accessor for QuotaServerState);
  sub_275A8E104(&qword_280A24608, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);
  sub_275AE5534();
  return sub_275A89134(v11, type metadata accessor for QuotaServerState);
}

uint64_t sub_275A8C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A8C5DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 256;
  *(a2 + v4) = 2;
  v6 = a1[7];
  v7 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a2 + a1[8];
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_275A8C6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A8E104(&qword_280A24CD8, type metadata accessor for RefreshDetailsContext, &protocol conformance descriptor for RefreshDetailsContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A8C76C(uint64_t a1)
{
  sub_275A8E104(&qword_280A24C98, type metadata accessor for RefreshDetailsContext, &protocol conformance descriptor for RefreshDetailsContext);

  return sub_275AE5464();
}

uint64_t sub_275A8C7D8(uint64_t a1, uint64_t a2)
{
  sub_275A8E104(&qword_280A24C98, type metadata accessor for RefreshDetailsContext, &protocol conformance descriptor for RefreshDetailsContext);

  return sub_275AE5474();
}

uint64_t sub_275A8C880()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static DaemonDelayedOfferXpcCallContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DaemonDelayedOfferXpcCallContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "refreshDetailsContext";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isFailsafe";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t DaemonDelayedOfferXpcCallContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_275A8CB3C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
      sub_275AE5364();
    }
  }

  return result;
}

uint64_t sub_275A8CB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  type metadata accessor for RefreshDetailsContext(0);
  sub_275A8E104(&qword_280A24C98, type metadata accessor for RefreshDetailsContext, &protocol conformance descriptor for RefreshDetailsContext);
  return sub_275AE5404();
}

uint64_t DaemonDelayedOfferXpcCallContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A8CC74(v3, a1, a2, a3);
  if (!v4)
  {
    sub_275A8CE84(v3, a1, a2, a3, type metadata accessor for DaemonDelayedOfferXpcCallContext);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A8CC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v9 = *(refreshed - 8);
  MEMORY[0x28223BE20](refreshed);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  sub_275A5F510(a1 + *(v12 + 20), v7, &qword_280A24C30, &qword_275AE9508);
  if ((*(v9 + 48))(v7, 1, refreshed) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24C30, &qword_275AE9508);
  }

  sub_275A88D48(v7, v11, type metadata accessor for RefreshDetailsContext);
  sub_275A8E104(&qword_280A24C98, type metadata accessor for RefreshDetailsContext, &protocol conformance descriptor for RefreshDetailsContext);
  sub_275AE5534();
  return sub_275A89134(v11, type metadata accessor for RefreshDetailsContext);
}

uint64_t sub_275A8CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A8CF4C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_275AE5B54();
  a1(0);
  sub_275A8E104(a2, a3, a4);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A8CFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = *(a1 + 20);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  result = (*(*(refreshed - 8) + 56))(a2 + v4, 1, 1, refreshed);
  *(a2 + *(a1 + 24)) = 2;
  return result;
}

uint64_t sub_275A8D0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A8E104(&qword_280A24CD0, type metadata accessor for DaemonDelayedOfferXpcCallContext, &protocol conformance descriptor for DaemonDelayedOfferXpcCallContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A8D140(uint64_t a1)
{
  sub_275A8E104(qword_281410460, type metadata accessor for DaemonDelayedOfferXpcCallContext, &protocol conformance descriptor for DaemonDelayedOfferXpcCallContext);

  return sub_275AE5464();
}

uint64_t sub_275A8D1AC(uint64_t a1, uint64_t a2)
{
  sub_275A8E104(qword_281410460, type metadata accessor for DaemonDelayedOfferXpcCallContext, &protocol conformance descriptor for DaemonDelayedOfferXpcCallContext);

  return sub_275AE5474();
}

uint64_t _s31iCloudSubscriptionOptimizerCore32DaemonDelayedOfferXpcCallContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v5 = *(refreshed - 8);
  MEMORY[0x28223BE20](refreshed);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF0, &qword_275AE9AA8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v26 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  v27 = a1;
  v14 = *(v26 + 20);
  v15 = *(v11 + 56);
  sub_275A5F510(a1 + v14, v13, &qword_280A24C30, &qword_275AE9508);
  sub_275A5F510(a2 + v14, &v13[v15], &qword_280A24C30, &qword_275AE9508);
  v16 = *(v5 + 48);
  if (v16(v13, 1, refreshed) == 1)
  {
    if (v16(&v13[v15], 1, refreshed) == 1)
    {
      sub_275A5FE04(v13, &qword_280A24C30, &qword_275AE9508);
      goto LABEL_8;
    }
  }

  else
  {
    sub_275A5F510(v13, v9, &qword_280A24C30, &qword_275AE9508);
    if (v16(&v13[v15], 1, refreshed) != 1)
    {
      v18 = v25;
      sub_275A88D48(&v13[v15], v25, type metadata accessor for RefreshDetailsContext);
      v19 = _s31iCloudSubscriptionOptimizerCore21RefreshDetailsContextV2eeoiySbAC_ACtFZ_0(v9, v18);
      sub_275A89134(v18, type metadata accessor for RefreshDetailsContext);
      sub_275A89134(v9, type metadata accessor for RefreshDetailsContext);
      sub_275A5FE04(v13, &qword_280A24C30, &qword_275AE9508);
      if ((v19 & 1) == 0)
      {
LABEL_13:
        v17 = 0;
        return v17 & 1;
      }

LABEL_8:
      v20 = *(v26 + 24);
      v21 = *(v27 + v20);
      v22 = *(a2 + v20);
      if (v21 == 2)
      {
        if (v22 == 2)
        {
LABEL_14:
          sub_275AE52A4();
          sub_275A8E104(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v17 = sub_275AE5664();
          return v17 & 1;
        }
      }

      else if (v22 != 2 && ((v21 ^ v22) & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    sub_275A89134(v9, type metadata accessor for RefreshDetailsContext);
  }

  sub_275A5FE04(v13, &qword_280A24CF0, &qword_275AE9AA8);
  v17 = 0;
  return v17 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore21RefreshDetailsContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v15 = refreshed[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 9);
  v18 = a2 + v15;
  v19 = *(a2 + v15 + 9);
  if (v17)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v19)
    {
      goto LABEL_23;
    }

    v23 = *v16;
    v24 = *v18;
    if (*(v18 + 8))
    {
      if (v24 <= 2)
      {
        if (v24)
        {
          if (v24 == 1)
          {
            if (v23 != 1)
            {
              goto LABEL_23;
            }
          }

          else if (v23 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (v23)
        {
          goto LABEL_23;
        }
      }

      else if (v24 > 4)
      {
        if (v24 == 5)
        {
          if (v23 != 5)
          {
            goto LABEL_23;
          }
        }

        else if (v23 != 6)
        {
          goto LABEL_23;
        }
      }

      else if (v24 == 3)
      {
        if (v23 != 3)
        {
          goto LABEL_23;
        }
      }

      else if (v23 != 4)
      {
        goto LABEL_23;
      }
    }

    else if (v23 != v24)
    {
      goto LABEL_23;
    }
  }

  v20 = refreshed[6];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      goto LABEL_23;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    goto LABEL_23;
  }

  v39 = refreshed;
  v25 = refreshed[7];
  v26 = *(v11 + 48);
  sub_275A5F510(a1 + v25, v13, &qword_280A24658, &unk_275AE7960);
  v27 = a2 + v25;
  v28 = v26;
  sub_275A5F510(v27, &v13[v26], &qword_280A24658, &unk_275AE7960);
  v29 = *(v5 + 48);
  if (v29(v13, 1, v4) == 1)
  {
    if (v29(&v13[v28], 1, v4) == 1)
    {
      sub_275A5FE04(v13, &qword_280A24658, &unk_275AE7960);
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  sub_275A5F510(v13, v10, &qword_280A24658, &unk_275AE7960);
  if (v29(&v13[v28], 1, v4) == 1)
  {
    sub_275A89134(v10, type metadata accessor for QuotaServerState);
LABEL_22:
    sub_275A5FE04(v13, &qword_280A246F0, qword_275AE7E10);
    goto LABEL_23;
  }

  sub_275A88D48(&v13[v28], v7, type metadata accessor for QuotaServerState);
  v32 = static QuotaServerState.== infix(_:_:)();
  sub_275A89134(v7, type metadata accessor for QuotaServerState);
  sub_275A89134(v10, type metadata accessor for QuotaServerState);
  sub_275A5FE04(v13, &qword_280A24658, &unk_275AE7960);
  if (v32)
  {
LABEL_33:
    v33 = v39[8];
    v34 = (a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a2 + v33);
    v37 = *(a2 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (*v34 != *v36)
      {
        LOBYTE(v37) = 1;
      }

      if (v37)
      {
        goto LABEL_23;
      }
    }

    sub_275AE52A4();
    sub_275A8E104(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v30 = sub_275AE5664();
    return v30 & 1;
  }

LABEL_23:
  v30 = 0;
  return v30 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore18FetchOffersContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  MEMORY[0x28223BE20](v9);
  v65 = &v59 - v10;
  v11 = type metadata accessor for LitmusInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F8, &qword_275AEEB30);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  OffersContext = type metadata accessor for FetchOffersContext(0);
  v22 = OffersContext[5];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 9);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 9);
  if (v24)
  {
    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v26)
    {
      goto LABEL_24;
    }

    v32 = *v23;
    v33 = *v25;
    if (v25[1])
    {
      if (v33)
      {
        if (v33 == 1)
        {
          if (v32 != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v32 != 2)
        {
          goto LABEL_24;
        }
      }

      else if (v32)
      {
        goto LABEL_24;
      }
    }

    else if (v32 != v33)
    {
      goto LABEL_24;
    }
  }

  v27 = OffersContext[6];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_24;
    }
  }

  v59 = v6;
  v61 = OffersContext;
  v62 = a2;
  v34 = OffersContext[7];
  v35 = *(v18 + 48);
  v60 = a1;
  sub_275A5F510(a1 + v34, v20, &qword_280A24650, &qword_275AEAC50);
  v36 = v62 + v34;
  v37 = v62;
  sub_275A5F510(v36, &v20[v35], &qword_280A24650, &qword_275AEAC50);
  v38 = *(v12 + 48);
  if (v38(v20, 1, v11) != 1)
  {
    sub_275A5F510(v20, v17, &qword_280A24650, &qword_275AEAC50);
    if (v38(&v20[v35], 1, v11) != 1)
    {
      sub_275A88D48(&v20[v35], v14, type metadata accessor for LitmusInfo);
      v44 = static LitmusInfo.== infix(_:_:)();
      sub_275A89134(v14, type metadata accessor for LitmusInfo);
      sub_275A89134(v17, type metadata accessor for LitmusInfo);
      sub_275A5FE04(v20, &qword_280A24650, &qword_275AEAC50);
      if ((v44 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    sub_275A89134(v17, type metadata accessor for LitmusInfo);
LABEL_22:
    v39 = &qword_280A246F8;
    v40 = &qword_275AEEB30;
    v41 = v20;
LABEL_23:
    sub_275A5FE04(v41, v39, v40);
    goto LABEL_24;
  }

  if (v38(&v20[v35], 1, v11) != 1)
  {
    goto LABEL_22;
  }

  sub_275A5FE04(v20, &qword_280A24650, &qword_275AEAC50);
LABEL_27:
  v45 = v61[8];
  v46 = (v60 + v45);
  v47 = *(v60 + v45 + 8);
  v48 = (v37 + v45);
  v49 = *(v37 + v45 + 8);
  if (v47)
  {
    v50 = v66;
    if (!v49)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    v50 = v66;
    if (v49)
    {
      goto LABEL_24;
    }
  }

  v51 = v61[9];
  v52 = *(v9 + 48);
  v53 = v65;
  sub_275A5F510(v60 + v51, v65, &qword_280A24658, &unk_275AE7960);
  sub_275A5F510(v62 + v51, v53 + v52, &qword_280A24658, &unk_275AE7960);
  v54 = v64;
  v55 = *(v63 + 48);
  if (v55(v53, 1, v64) == 1)
  {
    if (v55(v53 + v52, 1, v54) == 1)
    {
      sub_275A5FE04(v53, &qword_280A24658, &unk_275AE7960);
LABEL_44:
      sub_275AE52A4();
      sub_275A8E104(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = sub_275AE5664();
      return v42 & 1;
    }

    goto LABEL_42;
  }

  sub_275A5F510(v53, v50, &qword_280A24658, &unk_275AE7960);
  if (v55(v53 + v52, 1, v54) == 1)
  {
    sub_275A89134(v50, type metadata accessor for QuotaServerState);
LABEL_42:
    v39 = &qword_280A246F0;
    v40 = qword_275AE7E10;
    v41 = v53;
    goto LABEL_23;
  }

  v56 = v53 + v52;
  v57 = v59;
  sub_275A88D48(v56, v59, type metadata accessor for QuotaServerState);
  v58 = static QuotaServerState.== infix(_:_:)();
  sub_275A89134(v57, type metadata accessor for QuotaServerState);
  sub_275A89134(v50, type metadata accessor for QuotaServerState);
  sub_275A5FE04(v53, &qword_280A24658, &unk_275AE7960);
  if (v58)
  {
    goto LABEL_44;
  }

LABEL_24:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_275A8E104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275A8E150()
{
  result = qword_280A24C50;
  if (!qword_280A24C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24C50);
  }

  return result;
}

unint64_t sub_275A8E1A8()
{
  result = qword_280A24C58;
  if (!qword_280A24C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24C58);
  }

  return result;
}

unint64_t sub_275A8E200()
{
  result = qword_280A24C60;
  if (!qword_280A24C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24C60);
  }

  return result;
}

unint64_t sub_275A8E258()
{
  result = qword_280A24C68;
  if (!qword_280A24C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24C70, &qword_275AE95F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24C68);
  }

  return result;
}

void sub_275A8E644(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_280A24CC0, &type metadata for FetchOffersContext.Action);
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF68, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_275A8E790(319, &qword_281412450, type metadata accessor for LitmusInfo);
        if (v4 <= 0x3F)
        {
          sub_275A56BFC(319, &qword_28140FF48, MEMORY[0x277D84A28]);
          if (v5 <= 0x3F)
          {
            sub_275A8E790(319, &qword_281412150, type metadata accessor for QuotaServerState);
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

void sub_275A8E790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_275AE5944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_275A8E81C(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_280A24CC8, &type metadata for NewOfferAction);
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_280A24A58, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_275A8E790(319, &qword_281412150, type metadata accessor for QuotaServerState);
        if (v4 <= 0x3F)
        {
          sub_275A56BFC(319, &qword_28140FF48, MEMORY[0x277D84A28]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_275A8E95C(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A8E790(319, qword_281411038, type metadata accessor for RefreshDetailsContext);
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_280A24A58, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_275A8EA24()
{
  result = qword_280A24CE8;
  if (!qword_280A24CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24CE8);
  }

  return result;
}

uint64_t SystemActivityHistory_RegisterAction.intervalMillis.setter(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SystemActivityHistory_RegisterAction.intervalMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SystemActivityHistory_RegisterAction(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall SystemActivityHistory_RegisterAction.clearIntervalMillis()()
{
  v1 = v0 + *(type metadata accessor for SystemActivityHistory_RegisterAction(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*SystemActivityHistory_RegisterAction.humanReadableInterval.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_RegisterAction(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

uint64_t SystemActivityHistory_RegisterAction.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_275A8ED74(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t SystemActivityHistory_RunAction.expectedRunTsMillis.setter(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_RunAction(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SystemActivityHistory_RunAction.expectedRunTsMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall SystemActivityHistory_RunAction.clearExpectedRunTsMillis()()
{
  v1 = v0 + *(type metadata accessor for SystemActivityHistory_RunAction(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_275A8EEE8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_275A8EF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*SystemActivityHistory_RunAction.humanReadableTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

uint64_t sub_275A8F0A0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*SystemActivityHistory_RunAction.deviationFromExpectedTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

int *SystemActivityHistory_RunAction.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SystemActivityHistory_RunAction(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t SystemActivityHistory_Action.tsMillis.getter()
{
  v1 = (v0 + *(type metadata accessor for SystemActivityHistory_Action(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SystemActivityHistory_Action.tsMillis.setter(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_Action(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SystemActivityHistory_Action.tsMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SystemActivityHistory_Action(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A57784;
}

Swift::Void __swiftcall SystemActivityHistory_Action.clearTsMillis()()
{
  v1 = v0 + *(type metadata accessor for SystemActivityHistory_Action(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_275A8F418(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_275A8F48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*SystemActivityHistory_Action.humanReadableTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_Action(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

uint64_t sub_275A8F5D0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t SystemActivityHistory_Action.msg.getter()
{
  v1 = (v0 + *(type metadata accessor for SystemActivityHistory_Action(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SystemActivityHistory_Action.msg.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SystemActivityHistory_Action(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*SystemActivityHistory_Action.msg.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_Action(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

Swift::Void __swiftcall SystemActivityHistory_Action.clearMsg()()
{
  v1 = (v0 + *(type metadata accessor for SystemActivityHistory_Action(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_275A8F7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SystemActivityHistory_Action.registerAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_275A5F510(v2, &v11 - v5, &qword_280A24CF8, &qword_275AE9AC0);
  v7 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_275A5FE04(v6, &qword_280A24CF8, &qword_275AE9AC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_275A8FEB8(v6, a1, type metadata accessor for SystemActivityHistory_RegisterAction);
    }

    sub_275A8FCC4(v6, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v9 = a1 + *(result + 20);
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + *(result + 24));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

void (*SystemActivityHistory_Action.registerAction.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_275A5F510(v1, v8, &qword_280A24CF8, &qword_275AE9AC0);
  v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24CF8, &qword_275AE9AC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_275A8FEB8(v8, v12, type metadata accessor for SystemActivityHistory_RegisterAction);
      return sub_275A8FC80;
    }

    sub_275A8FCC4(v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v15 = v12 + *(v9 + 20);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (v12 + *(v9 + 24));
  *v16 = 0;
  v16[1] = 0;
  return sub_275A8FC80;
}

uint64_t sub_275A8FCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *SystemActivityHistory_Action.runAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_275A5F510(v2, &v12 - v5, &qword_280A24CF8, &qword_275AE9AC0);
  v7 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_275A5FE04(v6, &qword_280A24CF8, &qword_275AE9AC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_275A8FEB8(v6, a1, type metadata accessor for SystemActivityHistory_RunAction);
    }

    sub_275A8FCC4(v6, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SystemActivityHistory_RunAction(0);
  v9 = a1 + result[5];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + result[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + result[7]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_275A8FEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*SystemActivityHistory_Action.runAction.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_275A5F510(v2, v9, &qword_280A24CF8, &qword_275AE9AC0);
  v14 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_275A5FE04(v9, &qword_280A24CF8, &qword_275AE9AC0);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v16 = v13 + v10[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v13 + v10[7]);
    *v18 = 0;
    v18[1] = 0;
    return sub_275A90184;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_275A8FCC4(v9, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A8FEB8(v9, v13, type metadata accessor for SystemActivityHistory_RunAction);
  return sub_275A90184;
}

uint64_t sub_275A901C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SystemActivityHistory_Action.unregisterAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_275A5F510(v2, &v9 - v5, &qword_280A24CF8, &qword_275AE9AC0);
  v7 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_275A5FE04(v6, &qword_280A24CF8, &qword_275AE9AC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_275A8FEB8(v6, a1, type metadata accessor for SystemActivityHistory_UnregisterAction);
    }

    sub_275A8FCC4(v6, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t sub_275A903CC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_275A5FE04(v3, &qword_280A24CF8, &qword_275AE9AC0);
  sub_275A8FEB8(a1, v3, a2);
  v6 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*SystemActivityHistory_Action.unregisterAction.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for SystemActivityHistory_UnregisterAction(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24CF8, &qword_275AE9AC0);
  v12 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24CF8, &qword_275AE9AC0);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275A9068C;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_275A8FCC4(v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A8FEB8(v8, v11, type metadata accessor for SystemActivityHistory_UnregisterAction);
  return sub_275A9068C;
}

void sub_275A906D0(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_275A901C8((*a1)[3], v10, a5);
    sub_275A5FE04(v13, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_275A8FCC4(v11, a6);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static SystemActivityHistory_UnregisterAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_275AE52A4();
  sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t SystemActivityHistory_Action.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for SystemActivityHistory_Action(0);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a1 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t (*SystemActivityHistory_Activity.activityID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_Activity(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A53DEC;
}

uint64_t SystemActivityHistory_Activity.actions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_275A90B78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_275A90C14(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SystemActivityHistory_Activity.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for SystemActivityHistory_Activity(0);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t SystemActivityHistory_File.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for SystemActivityHistory_File(0);
  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t sub_275A90E2C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_RegisterAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_RegisterAction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intervalMillis";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "humanReadableInterval";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_RegisterAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_275AE5344();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for SystemActivityHistory_RegisterAction(0);
      sub_275AE53B4();
    }

    else if (result == 2)
    {
      type metadata accessor for SystemActivityHistory_RegisterAction(0);
      sub_275AE53E4();
    }
  }

  return result;
}

uint64_t SystemActivityHistory_RegisterAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A91824(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RegisterAction);
  if (!v4)
  {
    sub_275A918A0(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RegisterAction, 2);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A911DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_275A9126C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D98, type metadata accessor for SystemActivityHistory_RegisterAction, &protocol conformance descriptor for SystemActivityHistory_RegisterAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A9130C(uint64_t a1)
{
  sub_275A97E94(&qword_2814103B0, type metadata accessor for SystemActivityHistory_RegisterAction, &protocol conformance descriptor for SystemActivityHistory_RegisterAction);

  return sub_275AE5464();
}

uint64_t sub_275A91378(uint64_t a1, uint64_t a2)
{
  sub_275A97E94(&qword_2814103B0, type metadata accessor for SystemActivityHistory_RegisterAction, &protocol conformance descriptor for SystemActivityHistory_RegisterAction);

  return sub_275AE5474();
}

uint64_t sub_275A91420()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_RunAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_RunAction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "expectedRunTsMillis";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "humanReadableTime";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "deviationFromExpectedTime";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_RunAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_275AE5344();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      type metadata accessor for SystemActivityHistory_RunAction(0);
      sub_275AE53E4();
    }

    else if (result == 1)
    {
      type metadata accessor for SystemActivityHistory_RunAction(0);
      sub_275AE53B4();
    }
  }

  return result;
}

uint64_t SystemActivityHistory_RunAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A91824(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RunAction);
  if (!v4)
  {
    sub_275A918A0(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RunAction, 2);
    sub_275A9378C(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RunAction, 3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A91824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A918A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A9196C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_275A91A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D90, type metadata accessor for SystemActivityHistory_RunAction, &protocol conformance descriptor for SystemActivityHistory_RunAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A91AA8(uint64_t a1)
{
  sub_275A97E94(&qword_281410508, type metadata accessor for SystemActivityHistory_RunAction, &protocol conformance descriptor for SystemActivityHistory_RunAction);

  return sub_275AE5464();
}

uint64_t sub_275A91B14(uint64_t a1, uint64_t a2)
{
  sub_275A97E94(&qword_281410508, type metadata accessor for SystemActivityHistory_RunAction, &protocol conformance descriptor for SystemActivityHistory_RunAction);

  return sub_275AE5474();
}

uint64_t sub_275A91BBC()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_UnregisterAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_UnregisterAction._protobuf_nameMap);
  return sub_275AE5564();
}

uint64_t SystemActivityHistory_UnregisterAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_275AE5344();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_275A91D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D88, type metadata accessor for SystemActivityHistory_UnregisterAction, &protocol conformance descriptor for SystemActivityHistory_UnregisterAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A91DE0(uint64_t a1)
{
  sub_275A97E94(&qword_280A24D48, type metadata accessor for SystemActivityHistory_UnregisterAction, &protocol conformance descriptor for SystemActivityHistory_UnregisterAction);

  return sub_275AE5464();
}

uint64_t sub_275A91E4C(uint64_t a1, uint64_t a2)
{
  sub_275A97E94(&qword_280A24D48, type metadata accessor for SystemActivityHistory_UnregisterAction, &protocol conformance descriptor for SystemActivityHistory_UnregisterAction);

  return sub_275AE5474();
}

uint64_t sub_275A91EC8(uint64_t a1, uint64_t a2)
{
  sub_275AE52A4();
  sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A91F78()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_Action._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_Action._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE9AB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tsMillis";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "humanReadableTime";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "msg";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "registerAction";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 101;
  *v16 = "runAction";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 102;
  *v18 = "unregisterAction";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_Action.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 99)
    {
      switch(result)
      {
        case 'd':
          sub_275A923D4(v5, a1, a2, a3);
          break;
        case 'e':
          sub_275A92984(v5, a1, a2, a3);
          break;
        case 'f':
          sub_275A92F40(v5, a1, a2, a3);
          break;
      }
    }

    else if (result == 1)
    {
      type metadata accessor for SystemActivityHistory_Action(0);
      sub_275AE53B4();
    }

    else if (result == 2 || result == 3)
    {
      type metadata accessor for SystemActivityHistory_Action(0);
      sub_275AE53E4();
    }
  }

  return result;
}

uint64_t sub_275A923D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DC0, &qword_275AEA480);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24CF8, &qword_275AE9AC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24CF8, &qword_275AE9AC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A8FEB8(v12, v19, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    sub_275A8FEB8(v19, v17, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_275A8FCC4(v17, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v29 = v44;
    }

    else
    {
      sub_275A5FE04(v24, &qword_280A24DC0, &qword_275AEA480);
      v31 = v39;
      sub_275A8FEB8(v17, v39, type metadata accessor for SystemActivityHistory_RegisterAction);
      sub_275A8FEB8(v31, v24, type metadata accessor for SystemActivityHistory_RegisterAction);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_275A97E94(&qword_2814103B0, type metadata accessor for SystemActivityHistory_RegisterAction, &protocol conformance descriptor for SystemActivityHistory_RegisterAction);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A24DC0, &qword_275AEA480);
  }

  sub_275A5F510(v24, v32, &qword_280A24DC0, &qword_275AEA480);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A24DC0, &qword_275AEA480);
    return sub_275A5FE04(v32, &qword_280A24DC0, &qword_275AEA480);
  }

  else
  {
    v35 = v40;
    sub_275A8FEB8(v32, v40, type metadata accessor for SystemActivityHistory_RegisterAction);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A24DC0, &qword_275AEA480);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v35, v36, type metadata accessor for SystemActivityHistory_RegisterAction);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275A92984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DC8, &qword_275AEA488);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24CF8, &qword_275AE9AC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24CF8, &qword_275AE9AC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A8FEB8(v12, v19, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    sub_275A8FEB8(v19, v17, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_275A5FE04(v24, &qword_280A24DC8, &qword_275AEA488);
      v31 = v40;
      sub_275A8FEB8(v17, v40, type metadata accessor for SystemActivityHistory_RunAction);
      sub_275A8FEB8(v31, v24, type metadata accessor for SystemActivityHistory_RunAction);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A8FCC4(v17, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275A97E94(&qword_281410508, type metadata accessor for SystemActivityHistory_RunAction, &protocol conformance descriptor for SystemActivityHistory_RunAction);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A24DC8, &qword_275AEA488);
  }

  sub_275A5F510(v24, v32, &qword_280A24DC8, &qword_275AEA488);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A24DC8, &qword_275AEA488);
    return sub_275A5FE04(v32, &qword_280A24DC8, &qword_275AEA488);
  }

  else
  {
    v35 = v39;
    sub_275A8FEB8(v32, v39, type metadata accessor for SystemActivityHistory_RunAction);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A24DC8, &qword_275AEA488);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v35, v36, type metadata accessor for SystemActivityHistory_RunAction);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275A92F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for SystemActivityHistory_UnregisterAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DD0, &unk_275AEA490);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24CF8, &qword_275AE9AC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24CF8, &qword_275AE9AC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A8FEB8(v12, v19, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    sub_275A8FEB8(v19, v17, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_275A5FE04(v24, &qword_280A24DD0, &unk_275AEA490);
      v31 = v40;
      sub_275A8FEB8(v17, v40, type metadata accessor for SystemActivityHistory_UnregisterAction);
      sub_275A8FEB8(v31, v24, type metadata accessor for SystemActivityHistory_UnregisterAction);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A8FCC4(v17, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275A97E94(&qword_280A24D48, type metadata accessor for SystemActivityHistory_UnregisterAction, &protocol conformance descriptor for SystemActivityHistory_UnregisterAction);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A24DD0, &unk_275AEA490);
  }

  sub_275A5F510(v24, v32, &qword_280A24DD0, &unk_275AEA490);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A24DD0, &unk_275AEA490);
    return sub_275A5FE04(v32, &qword_280A24DD0, &unk_275AEA490);
  }

  else
  {
    v35 = v39;
    sub_275A8FEB8(v32, v39, type metadata accessor for SystemActivityHistory_UnregisterAction);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A24DD0, &unk_275AEA490);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v35, v36, type metadata accessor for SystemActivityHistory_UnregisterAction);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t SystemActivityHistory_Action.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  result = sub_275A93714(v3, a1, a2, a3);
  if (!v4)
  {
    sub_275A9378C(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_Action, 2);
    sub_275A93810(v3, a1, a2, a3);
    sub_275A5F510(v3, v10, &qword_280A24CF8, &qword_275AE9AC0);
    v12 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_275A93ABC(v3, a1, a2, a3);
        }

        else
        {
          sub_275A93CF4(v3, a1, a2, a3);
        }
      }

      else
      {
        sub_275A93888(v3, a1, a2, a3);
      }

      sub_275A8FCC4(v10, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    }

    type metadata accessor for SystemActivityHistory_Action(0);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A93714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SystemActivityHistory_Action(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A9378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A93810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SystemActivityHistory_Action(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A93888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24CF8, &qword_275AE9AC0);
  v11 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24CF8, &qword_275AE9AC0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_275A8FEB8(v7, v10, type metadata accessor for SystemActivityHistory_RegisterAction);
    sub_275A97E94(&qword_2814103B0, type metadata accessor for SystemActivityHistory_RegisterAction, &protocol conformance descriptor for SystemActivityHistory_RegisterAction);
    sub_275AE5534();
    return sub_275A8FCC4(v10, type metadata accessor for SystemActivityHistory_RegisterAction);
  }

  result = sub_275A8FCC4(v7, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275A93ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for SystemActivityHistory_RunAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24CF8, &qword_275AE9AC0);
  v11 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24CF8, &qword_275AE9AC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_275A8FEB8(v7, v10, type metadata accessor for SystemActivityHistory_RunAction);
    sub_275A97E94(&qword_281410508, type metadata accessor for SystemActivityHistory_RunAction, &protocol conformance descriptor for SystemActivityHistory_RunAction);
    sub_275AE5534();
    return sub_275A8FCC4(v10, type metadata accessor for SystemActivityHistory_RunAction);
  }

  result = sub_275A8FCC4(v7, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275A93CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for SystemActivityHistory_UnregisterAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24CF8, &qword_275AE9AC0);
  v11 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24CF8, &qword_275AE9AC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_275A8FEB8(v7, v10, type metadata accessor for SystemActivityHistory_UnregisterAction);
    sub_275A97E94(&qword_280A24D48, type metadata accessor for SystemActivityHistory_UnregisterAction, &protocol conformance descriptor for SystemActivityHistory_UnregisterAction);
    sub_275AE5534();
    return sub_275A8FCC4(v10, type metadata accessor for SystemActivityHistory_UnregisterAction);
  }

  result = sub_275A8FCC4(v7, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275A93F78@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + a1[8]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_275A94088(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D80, type metadata accessor for SystemActivityHistory_Action, &protocol conformance descriptor for SystemActivityHistory_Action);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A94128(uint64_t a1)
{
  sub_275A97E94(&qword_2814106E0, type metadata accessor for SystemActivityHistory_Action, &protocol conformance descriptor for SystemActivityHistory_Action);

  return sub_275AE5464();
}

uint64_t sub_275A94194(uint64_t a1, uint64_t a2)
{
  sub_275A97E94(&qword_2814106E0, type metadata accessor for SystemActivityHistory_Action, &protocol conformance descriptor for SystemActivityHistory_Action);

  return sub_275AE5474();
}

uint64_t sub_275A9423C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_Activity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_Activity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activityId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actions";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_Activity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AE5344();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for SystemActivityHistory_Activity(0);
        sub_275AE53E4();
      }

      else if (result == 2)
      {
        type metadata accessor for SystemActivityHistory_Action(0);
        sub_275A97E94(&qword_2814106E0, type metadata accessor for SystemActivityHistory_Action, &protocol conformance descriptor for SystemActivityHistory_Action);
        sub_275AE53F4();
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t SystemActivityHistory_Activity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A918A0(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_Activity, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for SystemActivityHistory_Action(0);
      sub_275A97E94(&qword_2814106E0, type metadata accessor for SystemActivityHistory_Action, &protocol conformance descriptor for SystemActivityHistory_Action);
      sub_275AE5524();
    }

    type metadata accessor for SystemActivityHistory_Activity(0);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A946BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_275A94750(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D78, type metadata accessor for SystemActivityHistory_Activity, &protocol conformance descriptor for SystemActivityHistory_Activity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A947F0(uint64_t a1)
{
  sub_275A97E94(&qword_281411F48, type metadata accessor for SystemActivityHistory_Activity, &protocol conformance descriptor for SystemActivityHistory_Activity);

  return sub_275AE5464();
}

uint64_t sub_275A9485C(uint64_t a1, uint64_t a2)
{
  sub_275A97E94(&qword_281411F48, type metadata accessor for SystemActivityHistory_Activity, &protocol conformance descriptor for SystemActivityHistory_Activity);

  return sub_275AE5474();
}

uint64_t sub_275A94904()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_File._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_File._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_275AE7E30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "activities";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_275AE5544();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_File.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AE5344();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for SystemActivityHistory_Activity(0);
        sub_275A97E94(&qword_281411F48, type metadata accessor for SystemActivityHistory_Activity, &protocol conformance descriptor for SystemActivityHistory_Activity);
        sub_275AE53F4();
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t SystemActivityHistory_File.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for SystemActivityHistory_Activity(0), sub_275A97E94(&qword_281411F48, type metadata accessor for SystemActivityHistory_Activity, &protocol conformance descriptor for SystemActivityHistory_Activity), result = sub_275AE5524(), !v4))
  {
    type metadata accessor for SystemActivityHistory_File(0);
    return sub_275AE5284();
  }

  return result;
}

uint64_t static SystemActivityHistory_File.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_275A95248(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SystemActivityHistory_File(0);
  sub_275AE52A4();
  sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A94D70(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_275AE5B54();
  a1(0);
  sub_275A97E94(a2, a3, a4);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A94E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_275A94E88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_275A94F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D70, type metadata accessor for SystemActivityHistory_File, &protocol conformance descriptor for SystemActivityHistory_File);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A94FCC(uint64_t a1)
{
  sub_275A97E94(&qword_281410900, type metadata accessor for SystemActivityHistory_File, &protocol conformance descriptor for SystemActivityHistory_File);

  return sub_275AE5464();
}

uint64_t sub_275A95038(uint64_t a1, uint64_t a2)
{
  sub_275A97E94(&qword_281410900, type metadata accessor for SystemActivityHistory_File, &protocol conformance descriptor for SystemActivityHistory_File);

  return sub_275AE5474();
}

uint64_t sub_275A950B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_275A95248(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A9515C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_275AE5AC4() & 1) == 0)
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

uint64_t sub_275A951EC(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_275A95248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_UnregisterAction(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for SystemActivityHistory_RunAction(0);
  MEMORY[0x28223BE20](v161);
  v167 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  MEMORY[0x28223BE20](v8);
  v165 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB0, &qword_275AEA470);
  MEMORY[0x28223BE20](v162);
  v163 = &v141 - v10;
  v171 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v11 = *(v171 - 8);
  v12 = MEMORY[0x28223BE20](v171);
  v159 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v164 = &v141 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v158 = &v141 - v17;
  MEMORY[0x28223BE20](v16);
  v169 = &v141 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v19 - 8);
  v172 = &v141 - v20;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB8, &qword_275AEA478);
  MEMORY[0x28223BE20](v170);
  v22 = &v141 - v21;
  v23 = type metadata accessor for SystemActivityHistory_Action(0);
  v173 = *(v23 - 1);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v141 - v27;
  v29 = type metadata accessor for SystemActivityHistory_Activity(0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v30);
  v36 = &v141 - v35;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
    goto LABEL_112;
  }

  if (!v37 || a1 == a2)
  {
    v134 = 1;
    return v134 & 1;
  }

  v157 = v33;
  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = a1 + v38;
  v147 = a2 + v38;
  v40 = 0;
  v155 = (v11 + 48);
  v41 = *(v34 + 72);
  v142 = v6;
  v143 = v8;
  v160 = v32;
  v166 = &v141 - v35;
  v156 = v37;
  v145 = v39;
  v144 = v41;
  while (1)
  {
    v42 = v41 * v40;
    v43 = v40;
    v44 = v36;
    result = sub_275A901C8(v39 + v41 * v40, v36, type metadata accessor for SystemActivityHistory_Activity);
    v148 = v43;
    if (v43 == v156)
    {
      goto LABEL_116;
    }

    result = sub_275A901C8(v147 + v42, v32, type metadata accessor for SystemActivityHistory_Activity);
    v46 = *(v157 + 24);
    v47 = &v44[v46];
    v48 = *&v44[v46 + 8];
    v49 = (v32 + v46);
    v50 = v49[1];
    if (v48)
    {
      v51 = v155;
      if (!v50 || ((result = *v47, *v47 == *v49) ? (v52 = v48 == v50) : (v52 = 0), !v52 && (result = sub_275AE5AC4(), (result & 1) == 0)))
      {
LABEL_111:
        sub_275A8FCC4(v160, type metadata accessor for SystemActivityHistory_Activity);
        sub_275A8FCC4(v166, type metadata accessor for SystemActivityHistory_Activity);
LABEL_112:
        v134 = 0;
        return v134 & 1;
      }
    }

    else
    {
      v51 = v155;
      if (v50)
      {
        goto LABEL_111;
      }
    }

    v53 = *v166;
    v54 = *(*v166 + 16);
    v168 = *v160;
    if (v54 != *(v168 + 16))
    {
      goto LABEL_111;
    }

    if (v54 && v53 != v168)
    {
      break;
    }

LABEL_95:
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v133 = v166;
    v32 = v160;
    v134 = sub_275AE5664();
    sub_275A8FCC4(v32, type metadata accessor for SystemActivityHistory_Activity);
    sub_275A8FCC4(v133, type metadata accessor for SystemActivityHistory_Activity);
    if (v134)
    {
      v40 = v148 + 1;
      v36 = v166;
      v39 = v145;
      v41 = v144;
      if (v148 + 1 != v156)
      {
        continue;
      }
    }

    return v134 & 1;
  }

  v55 = 0;
  v56 = (*(v173 + 80) + 32) & ~*(v173 + 80);
  v154 = v53 + v56;
  v153 = v168 + v56;
  v146 = v22;
  v152 = v28;
  v150 = v53;
  v149 = v54;
  v151 = v26;
  while (v55 < *(v53 + 16))
  {
    v57 = *(v173 + 72) * v55;
    result = sub_275A901C8(v154 + v57, v28, type metadata accessor for SystemActivityHistory_Action);
    if (v55 >= *(v168 + 16))
    {
      goto LABEL_115;
    }

    sub_275A901C8(v153 + v57, v26, type metadata accessor for SystemActivityHistory_Action);
    v58 = v23[6];
    v59 = &v28[v58];
    v60 = v28[v58 + 8];
    v61 = &v26[v58];
    v62 = v26[v58 + 8];
    if (v60)
    {
      if (!v62)
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (*v59 != *v61)
      {
        LOBYTE(v62) = 1;
      }

      if (v62)
      {
        goto LABEL_110;
      }
    }

    v63 = v23[7];
    v64 = &v28[v63];
    v65 = *&v28[v63 + 8];
    v66 = &v26[v63];
    v67 = *(v66 + 1);
    if (v65)
    {
      if (!v67)
      {
        goto LABEL_110;
      }

      v68 = *v64 == *v66 && v65 == v67;
      if (!v68 && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v67)
    {
      goto LABEL_110;
    }

    v69 = v23[8];
    v70 = &v28[v69];
    v71 = *&v28[v69 + 8];
    v72 = &v26[v69];
    v73 = *(v72 + 1);
    if (v71)
    {
      if (!v73 || (*v70 != *v72 || v71 != v73) && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v73)
    {
      goto LABEL_110;
    }

    v74 = v26;
    v75 = v23;
    v76 = *(v170 + 48);
    sub_275A5F510(v28, v22, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A5F510(v74, &v22[v76], &qword_280A24CF8, &qword_275AE9AC0);
    v77 = *v51;
    v78 = v171;
    if ((*v51)(v22, 1, v171) != 1)
    {
      v80 = v172;
      sub_275A5F510(v22, v172, &qword_280A24CF8, &qword_275AE9AC0);
      if (v77(&v22[v76], 1, v78) == 1)
      {
        sub_275A8FCC4(v80, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
        v26 = v151;
        v28 = v152;
LABEL_101:
        v139 = &qword_280A24DB8;
        v140 = &qword_275AEA478;
        goto LABEL_109;
      }

      v81 = v169;
      sub_275A8FEB8(&v22[v76], v169, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v82 = v163;
      v83 = *(v162 + 48);
      sub_275A901C8(v80, v163, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v84 = v82;
      sub_275A901C8(v81, v82 + v83, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v23 = v75;
        if (EnumCaseMultiPayload == 1)
        {
          v86 = v82;
          v87 = v164;
          sub_275A901C8(v86, v164, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
          v88 = swift_getEnumCaseMultiPayload();
          v89 = v172;
          v22 = v146;
          v26 = v151;
          if (v88 != 1)
          {
            sub_275A8FCC4(v87, type metadata accessor for SystemActivityHistory_RunAction);
            goto LABEL_107;
          }

          v90 = v84 + v83;
          v91 = v167;
          sub_275A8FEB8(v90, v167, type metadata accessor for SystemActivityHistory_RunAction);
          v92 = v161[5];
          v93 = (v87 + v92);
          v94 = *(v87 + v92 + 8);
          v95 = (v91 + v92);
          v96 = *(v91 + v92 + 8);
          v28 = v152;
          if (v94)
          {
            v97 = v164;
            if (!v96)
            {
              goto LABEL_99;
            }
          }

          else
          {
            if (*v93 != *v95)
            {
              LOBYTE(v96) = 1;
            }

            v97 = v164;
            if (v96)
            {
LABEL_99:
              v135 = type metadata accessor for SystemActivityHistory_RunAction;
              v99 = v97;
              v136 = v84;
              v137 = type metadata accessor for SystemActivityHistory_RunAction;
              v138 = v167;
              goto LABEL_103;
            }
          }

          v113 = v161[6];
          v114 = (v97 + v113);
          v115 = *(v97 + v113 + 8);
          v116 = (v167 + v113);
          v117 = v116[1];
          if (v115)
          {
            if (!v117 || (*v114 != *v116 || v115 != v117) && (sub_275AE5AC4() & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          else if (v117)
          {
            goto LABEL_99;
          }

          v123 = v161[7];
          v124 = (v97 + v123);
          v125 = *(v97 + v123 + 8);
          v126 = (v167 + v123);
          v127 = v126[1];
          if (v125)
          {
            if (!v127 || (*v124 != *v126 || v125 != v127) && (sub_275AE5AC4() & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          else if (v127)
          {
            goto LABEL_99;
          }

          sub_275AE52A4();
          sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v131 = sub_275AE5664();
          v97 = v164;
          if ((v131 & 1) == 0)
          {
            goto LABEL_99;
          }

          v128 = type metadata accessor for SystemActivityHistory_RunAction;
          v82 = v84;
          v129 = type metadata accessor for SystemActivityHistory_RunAction;
          v130 = v167;
          goto LABEL_91;
        }

        v107 = v159;
        sub_275A901C8(v82, v159, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
        v108 = swift_getEnumCaseMultiPayload();
        v22 = v146;
        v26 = v151;
        if (v108 != 2)
        {
          sub_275A8FCC4(v107, type metadata accessor for SystemActivityHistory_UnregisterAction);
          v89 = v172;
          goto LABEL_107;
        }

        v109 = v142;
        sub_275A8FEB8(v82 + v83, v142, type metadata accessor for SystemActivityHistory_UnregisterAction);
        sub_275AE52A4();
        sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v110 = sub_275AE5664();
        v111 = v109;
        v112 = v169;
        sub_275A8FCC4(v111, type metadata accessor for SystemActivityHistory_UnregisterAction);
        sub_275A8FCC4(v107, type metadata accessor for SystemActivityHistory_UnregisterAction);
        v28 = v152;
        if ((v110 & 1) == 0)
        {
          sub_275A8FCC4(v82, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
          v89 = v172;
          goto LABEL_108;
        }
      }

      else
      {
        v98 = v82;
        v99 = v158;
        sub_275A901C8(v98, v158, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_275A8FCC4(v99, type metadata accessor for SystemActivityHistory_RegisterAction);
          v89 = v172;
          v22 = v146;
          v26 = v151;
LABEL_107:
          v28 = v152;
          sub_275A5FE04(v84, &qword_280A24DB0, &qword_275AEA470);
          goto LABEL_108;
        }

        v23 = v75;
        v100 = v84 + v83;
        v101 = v165;
        sub_275A8FEB8(v100, v165, type metadata accessor for SystemActivityHistory_RegisterAction);
        v102 = *(v143 + 20);
        v103 = (v99 + v102);
        v104 = *(v99 + v102 + 8);
        v105 = (v101 + v102);
        v106 = *(v101 + v102 + 8);
        v89 = v172;
        v22 = v146;
        v26 = v151;
        if (v104)
        {
          v28 = v152;
          if (!v106)
          {
            goto LABEL_102;
          }
        }

        else
        {
          if (*v103 != *v105)
          {
            LOBYTE(v106) = 1;
          }

          v28 = v152;
          if (v106)
          {
LABEL_102:
            v135 = type metadata accessor for SystemActivityHistory_RegisterAction;
            v136 = v84;
            v137 = type metadata accessor for SystemActivityHistory_RegisterAction;
            v138 = v165;
LABEL_103:
            sub_275A8FCC4(v138, v135);
            sub_275A8FCC4(v99, v137);
            sub_275A8FCC4(v136, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
LABEL_108:
            sub_275A8FCC4(v169, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
            sub_275A8FCC4(v89, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
            v139 = &qword_280A24CF8;
            v140 = &qword_275AE9AC0;
LABEL_109:
            sub_275A5FE04(v22, v139, v140);
LABEL_110:
            sub_275A8FCC4(v26, type metadata accessor for SystemActivityHistory_Action);
            sub_275A8FCC4(v28, type metadata accessor for SystemActivityHistory_Action);
            goto LABEL_111;
          }
        }

        v118 = *(v143 + 24);
        v119 = (v99 + v118);
        v120 = *(v99 + v118 + 8);
        v121 = (v165 + v118);
        v122 = v121[1];
        if (v120)
        {
          if (!v122 || (*v119 != *v121 || v120 != v122) && (sub_275AE5AC4() & 1) == 0)
          {
            goto LABEL_102;
          }
        }

        else if (v122)
        {
          goto LABEL_102;
        }

        sub_275AE52A4();
        sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if ((sub_275AE5664() & 1) == 0)
        {
          goto LABEL_102;
        }

        v128 = type metadata accessor for SystemActivityHistory_RegisterAction;
        v97 = v99;
        v82 = v84;
        v129 = type metadata accessor for SystemActivityHistory_RegisterAction;
        v130 = v165;
LABEL_91:
        sub_275A8FCC4(v130, v128);
        sub_275A8FCC4(v97, v129);
        v112 = v169;
      }

      sub_275A8FCC4(v82, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      sub_275A8FCC4(v112, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      sub_275A8FCC4(v172, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v51 = v155;
      goto LABEL_93;
    }

    v79 = v77(&v22[v76], 1, v78);
    v26 = v151;
    v28 = v152;
    if (v79 != 1)
    {
      goto LABEL_101;
    }

LABEL_93:
    sub_275A5FE04(v22, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v132 = sub_275AE5664();
    sub_275A8FCC4(v26, type metadata accessor for SystemActivityHistory_Action);
    result = sub_275A8FCC4(v28, type metadata accessor for SystemActivityHistory_Action);
    v53 = v150;
    if ((v132 & 1) == 0)
    {
      goto LABEL_111;
    }

    if (v149 == ++v55)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_275A96350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB8, &qword_275AEA478);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v59 = type metadata accessor for SystemActivityHistory_Action(0);
  v13 = MEMORY[0x28223BE20](v59);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_42:
    v52 = 0;
    return v52 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v52 = 1;
    return v52 & 1;
  }

  v57 = v4;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v56 = (v5 + 48);
  v23 = *(v16 + 72);
  v54 = v7;
  v55 = v23;
  v24 = v59;
  while (1)
  {
    result = sub_275A901C8(v21, v18, type metadata accessor for SystemActivityHistory_Action);
    if (!v19)
    {
      break;
    }

    v62 = v19;
    sub_275A901C8(v22, v15, type metadata accessor for SystemActivityHistory_Action);
    v26 = v24[6];
    v27 = &v18[v26];
    v28 = v18[v26 + 8];
    v29 = &v15[v26];
    v30 = v15[v26 + 8];
    if (v28)
    {
      if (!v30)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*v27 != *v29)
      {
        LOBYTE(v30) = 1;
      }

      if (v30)
      {
        goto LABEL_41;
      }
    }

    v31 = v24[7];
    v32 = &v18[v31];
    v33 = *&v18[v31 + 8];
    v34 = &v15[v31];
    v35 = *(v34 + 1);
    if (v33)
    {
      if (!v35)
      {
        goto LABEL_41;
      }

      v36 = *v32 == *v34 && v33 == v35;
      if (!v36 && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v35)
    {
      goto LABEL_41;
    }

    v37 = v24[8];
    v38 = &v18[v37];
    v39 = *&v18[v37 + 8];
    v40 = &v15[v37];
    v41 = *(v40 + 1);
    if (v39)
    {
      if (!v41)
      {
        goto LABEL_41;
      }

      v42 = *v38 == *v40 && v39 == v41;
      if (!v42 && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v41)
    {
      goto LABEL_41;
    }

    v60 = v22;
    v61 = v21;
    v43 = *(v10 + 48);
    sub_275A5F510(v18, v12, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A5F510(v15, &v12[v43], &qword_280A24CF8, &qword_275AE9AC0);
    v44 = v57;
    v45 = *v56;
    if ((*v56)(v12, 1, v57) == 1)
    {
      if (v45(&v12[v43], 1, v44) != 1)
      {
        goto LABEL_40;
      }

      sub_275A5FE04(v12, &qword_280A24CF8, &qword_275AE9AC0);
      v47 = v60;
      v46 = v61;
    }

    else
    {
      v48 = v10;
      v49 = v58;
      sub_275A5F510(v12, v58, &qword_280A24CF8, &qword_275AE9AC0);
      if (v45(&v12[v43], 1, v44) == 1)
      {
        sub_275A8FCC4(v49, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
LABEL_40:
        sub_275A5FE04(v12, &qword_280A24DB8, &qword_275AEA478);
LABEL_41:
        sub_275A8FCC4(v15, type metadata accessor for SystemActivityHistory_Action);
        sub_275A8FCC4(v18, type metadata accessor for SystemActivityHistory_Action);
        goto LABEL_42;
      }

      v50 = v54;
      sub_275A8FEB8(&v12[v43], v54, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v51 = _s31iCloudSubscriptionOptimizerCore28SystemActivityHistory_ActionV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v49, v50);
      sub_275A8FCC4(v50, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      sub_275A8FCC4(v49, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      sub_275A5FE04(v12, &qword_280A24CF8, &qword_275AE9AC0);
      v10 = v48;
      v24 = v59;
      v47 = v60;
      v46 = v61;
      if ((v51 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = sub_275AE5664();
    sub_275A8FCC4(v15, type metadata accessor for SystemActivityHistory_Action);
    sub_275A8FCC4(v18, type metadata accessor for SystemActivityHistory_Action);
    if (v52)
    {
      v19 = v62 - 1;
      v22 = v47 + v55;
      v21 = v46 + v55;
      if (v62 != 1)
      {
        continue;
      }
    }

    return v52 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_275A96938(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v56 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA8, &qword_275AEA468);
  MEMORY[0x28223BE20](v61);
  v9 = &v56 - v8;
  v59 = type metadata accessor for ActivityStatusResponse.Activity(0);
  v10 = MEMORY[0x28223BE20](v59);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v56 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    goto LABEL_55;
  }

  if (!v16 || a1 == a2)
  {
    v52 = 1;
    return v52 & 1;
  }

  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v64 = a2 + v17;
  v57 = *(v13 + 72);
  v58 = v4 + 48;
  v19 = v59;
  v20 = (v4 + 48);
  while (1)
  {
    v60 = v18;
    sub_275A901C8(v18, v15, type metadata accessor for ActivityStatusResponse.Activity);
    sub_275A901C8(v64, v12, type metadata accessor for ActivityStatusResponse.Activity);
    v21 = v19[5];
    v22 = &v15[v21];
    v23 = *&v15[v21 + 8];
    v24 = &v12[v21];
    v25 = *(v24 + 1);
    if (v23)
    {
      if (!v25)
      {
        goto LABEL_54;
      }

      v26 = *v22 == *v24 && v23 == v25;
      if (!v26 && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v25)
    {
      goto LABEL_54;
    }

    v27 = v19[6];
    v28 = &v15[v27];
    v29 = v15[v27 + 9];
    v30 = &v12[v27];
    v31 = v12[v27 + 9];
    if (v29)
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v31)
      {
        goto LABEL_54;
      }

      v32 = *v28;
      v33 = *v30;
      if (v30[8])
      {
        if (v33)
        {
          if (v33 == 1)
          {
            if (v32 != 1)
            {
              goto LABEL_54;
            }
          }

          else if (v32 != 2)
          {
            goto LABEL_54;
          }
        }

        else if (v32)
        {
          goto LABEL_54;
        }
      }

      else if (v32 != v33)
      {
        goto LABEL_54;
      }
    }

    v34 = v19[7];
    v35 = *(v61 + 48);
    sub_275A5F510(&v15[v34], v9, &qword_280A24DA0, &qword_275AEA460);
    sub_275A5F510(&v12[v34], &v9[v35], &qword_280A24DA0, &qword_275AEA460);
    v36 = *v20;
    if ((*v20)(v9, 1, v65) == 1)
    {
      if (v36(&v9[v35], 1, v65) != 1)
      {
        goto LABEL_52;
      }

      sub_275A5FE04(v9, &qword_280A24DA0, &qword_275AEA460);
      goto LABEL_46;
    }

    sub_275A5F510(v9, v63, &qword_280A24DA0, &qword_275AEA460);
    if (v36(&v9[v35], 1, v65) == 1)
    {
      break;
    }

    v37 = &v9[v35];
    v38 = v62;
    sub_275A8FEB8(v37, v62, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    v39 = *(v65 + 20);
    v40 = (v63 + v39);
    v41 = *(v63 + v39 + 8);
    v42 = (v38 + v39);
    v43 = *(v38 + v39 + 8);
    if (v41)
    {
      if (!v43)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v40 != *v42)
      {
        LOBYTE(v43) = 1;
      }

      if (v43)
      {
LABEL_50:
        sub_275A8FCC4(v62, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
        sub_275A8FCC4(v63, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
        v53 = &qword_280A24DA0;
        v54 = &qword_275AEA460;
        goto LABEL_53;
      }
    }

    v44 = *(v65 + 24);
    v45 = (v63 + v44);
    v46 = *(v63 + v44 + 8);
    v47 = (v62 + v44);
    v48 = v47[1];
    if (v46)
    {
      if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v48)
    {
      goto LABEL_50;
    }

    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v49 = v62;
    v50 = v63;
    v51 = sub_275AE5664();
    v19 = v59;
    sub_275A8FCC4(v49, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A8FCC4(v50, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A5FE04(v9, &qword_280A24DA0, &qword_275AEA460);
    if ((v51 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_46:
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = sub_275AE5664();
    sub_275A8FCC4(v12, type metadata accessor for ActivityStatusResponse.Activity);
    sub_275A8FCC4(v15, type metadata accessor for ActivityStatusResponse.Activity);
    if (v52)
    {
      v64 += v57;
      v18 = v60 + v57;
      if (--v16)
      {
        continue;
      }
    }

    return v52 & 1;
  }

  sub_275A8FCC4(v63, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
LABEL_52:
  v53 = &qword_280A24DA8;
  v54 = &qword_275AEA468;
LABEL_53:
  sub_275A5FE04(v9, v53, v54);
LABEL_54:
  sub_275A8FCC4(v12, type metadata accessor for ActivityStatusResponse.Activity);
  sub_275A8FCC4(v15, type metadata accessor for ActivityStatusResponse.Activity);
LABEL_55:
  v52 = 0;
  return v52 & 1;
}

uint64_t sub_275A9701C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDetails(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_275A901C8(v13, v10, type metadata accessor for FeatureDetails);
        sub_275A901C8(v14, v7, type metadata accessor for FeatureDetails);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_275AE5AC4() & 1) == 0))
          {
LABEL_27:
            sub_275A8FCC4(v7, type metadata accessor for FeatureDetails);
            sub_275A8FCC4(v10, type metadata accessor for FeatureDetails);
            goto LABEL_28;
          }
        }

        else if (v20)
        {
          goto LABEL_27;
        }

        v22 = *(v4 + 24);
        v23 = &v10[v22];
        v24 = *&v10[v22 + 8];
        v25 = &v7[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_27;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_275AE5AC4() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v26)
        {
          goto LABEL_27;
        }

        sub_275AE52A4();
        sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = sub_275AE5664();
        sub_275A8FCC4(v7, type metadata accessor for FeatureDetails);
        sub_275A8FCC4(v10, type metadata accessor for FeatureDetails);
        if (v28)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_28:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore31SystemActivityHistory_RunActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = sub_275AE5AC4();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  if (!v22)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore28SystemActivityHistory_ActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB8, &qword_275AEA478);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for SystemActivityHistory_Action(0);
  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_27;
    }
  }

  v20 = v14[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_27;
    }

    if (*v21 != *v23 || v22 != v24)
    {
      v25 = v14;
      v26 = sub_275AE5AC4();
      v14 = v25;
      if ((v26 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_27;
  }

  v27 = v14[8];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_27;
    }

    v38 = v14;
    if ((*v28 != *v30 || v29 != v31) && (sub_275AE5AC4() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v38 = v14;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  v32 = *(v11 + 48);
  sub_275A5F510(a1, v13, &qword_280A24CF8, &qword_275AE9AC0);
  sub_275A5F510(a2, &v13[v32], &qword_280A24CF8, &qword_275AE9AC0);
  v33 = *(v5 + 48);
  if (v33(v13, 1, v4) == 1)
  {
    if (v33(&v13[v32], 1, v4) == 1)
    {
      sub_275A5FE04(v13, &qword_280A24CF8, &qword_275AE9AC0);
LABEL_30:
      sub_275AE52A4();
      sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_275AE5664();
      return v34 & 1;
    }

    goto LABEL_26;
  }

  sub_275A5F510(v13, v10, &qword_280A24CF8, &qword_275AE9AC0);
  if (v33(&v13[v32], 1, v4) == 1)
  {
    sub_275A8FCC4(v10, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
LABEL_26:
    sub_275A5FE04(v13, &qword_280A24DB8, &qword_275AEA478);
    goto LABEL_27;
  }

  sub_275A8FEB8(&v13[v32], v7, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  v36 = _s31iCloudSubscriptionOptimizerCore28SystemActivityHistory_ActionV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_275A8FCC4(v7, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  sub_275A8FCC4(v10, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  sub_275A5FE04(v13, &qword_280A24CF8, &qword_275AE9AC0);
  if (v36)
  {
    goto LABEL_30;
  }

LABEL_27:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore36SystemActivityHistory_RegisterActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore28SystemActivityHistory_ActionV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for SystemActivityHistory_UnregisterAction(0);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SystemActivityHistory_RunAction(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB0, &qword_275AEA470);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v34 - v22;
  v24 = *(v21 + 56);
  sub_275A901C8(a1, &v34 - v22, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  sub_275A901C8(v35, &v23[v24], type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_275A901C8(v23, v19, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    if (swift_getEnumCaseMultiPayload())
    {
      v29 = type metadata accessor for SystemActivityHistory_RegisterAction;
      v30 = v19;
      goto LABEL_11;
    }

    sub_275A8FEB8(&v23[v24], v10, type metadata accessor for SystemActivityHistory_RegisterAction);
    v26 = _s31iCloudSubscriptionOptimizerCore36SystemActivityHistory_RegisterActionV2eeoiySbAC_ACtFZ_0(v19, v10);
    v32 = type metadata accessor for SystemActivityHistory_RegisterAction;
    sub_275A8FCC4(v10, type metadata accessor for SystemActivityHistory_RegisterAction);
    v27 = v19;
LABEL_13:
    v28 = v32;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_275A901C8(v23, v14, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v29 = type metadata accessor for SystemActivityHistory_UnregisterAction;
      v30 = v14;
      goto LABEL_11;
    }

    v31 = v34;
    sub_275A8FEB8(&v23[v24], v34, type metadata accessor for SystemActivityHistory_UnregisterAction);
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v26 = sub_275AE5664();
    v32 = type metadata accessor for SystemActivityHistory_UnregisterAction;
    sub_275A8FCC4(v31, type metadata accessor for SystemActivityHistory_UnregisterAction);
    v27 = v14;
    goto LABEL_13;
  }

  sub_275A901C8(v23, v17, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_275A8FEB8(&v23[v24], v7, type metadata accessor for SystemActivityHistory_RunAction);
    v26 = _s31iCloudSubscriptionOptimizerCore31SystemActivityHistory_RunActionV2eeoiySbAC_ACtFZ_0(v17, v7);
    sub_275A8FCC4(v7, type metadata accessor for SystemActivityHistory_RunAction);
    v27 = v17;
    v28 = type metadata accessor for SystemActivityHistory_RunAction;
LABEL_14:
    sub_275A8FCC4(v27, v28);
    sub_275A8FCC4(v23, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    return v26 & 1;
  }

  v29 = type metadata accessor for SystemActivityHistory_RunAction;
  v30 = v17;
LABEL_11:
  sub_275A8FCC4(v30, v29);
  sub_275A5FE04(v23, &qword_280A24DB0, &qword_275AEA470);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_275A97E94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for SystemActivityHistory_Activity(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_275A96350(*a1, *a2))
  {
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

void sub_275A986B8(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF48, MEMORY[0x277D84A28]);
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF88, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_275A98924(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF48, MEMORY[0x277D84A28]);
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF88, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_275A98A08(uint64_t a1)
{
  result = sub_275AE52A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_275A98A9C(uint64_t a1)
{
  sub_275A98D7C(319, qword_281410760, type metadata accessor for SystemActivityHistory_Action.OneOf_Type, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_275AE52A4();
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF48, MEMORY[0x277D84A28]);
      if (v3 <= 0x3F)
      {
        sub_275A56BFC(319, &qword_28140FF88, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_275A98BF0(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_RegisterAction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SystemActivityHistory_RunAction(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SystemActivityHistory_UnregisterAction(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_275A98CA0(uint64_t a1)
{
  sub_275A98D7C(319, &qword_28140FF78, type metadata accessor for SystemActivityHistory_Action, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_275AE52A4();
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF88, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275A98D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_44Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_275AE52A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_45Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_275AE52A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_275A98F58(uint64_t a1)
{
  sub_275A98D7C(319, &qword_28140FF80, type metadata accessor for SystemActivityHistory_Activity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_275AE52A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_275A9902C()
{
  v0 = type metadata accessor for Logger(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v1, qword_281410130);
  v4 = __swift_project_value_buffer(v0, qword_281410130);
  v7[1] = &type metadata for Threads;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DE0, &qword_275AEA4B8);
  *v3 = sub_275AE56E4();
  v3[1] = v5;

  sub_275AE5594();
  return sub_275A7B5F0(v3, v4);
}

uint64_t static Threads.runInMain(task:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v21 = a3;
  v6 = sub_275AE55C4();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_275AE55F4();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A99524();
  v22 = sub_275AE58C4();
  type metadata accessor for Stopwatch();
  swift_allocObject();
  sub_275A87818();
  v13 = v12;
  if (qword_281410128 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger(0);
  __swift_project_value_buffer(v14, qword_281410130);
  aBlock = 0;
  v28 = 0xE000000000000000;
  sub_275AE5A14();

  aBlock = 0xD000000000000011;
  v28 = 0x8000000275AF0FF0;
  MEMORY[0x277C86E00](a1, a2);
  MEMORY[0x277C86E00](0xD000000000000014, 0x8000000275AF1010);
  MEMORY[0x277C86E00](1852399981, 0xE400000000000000);
  MEMORY[0x277C86E00](2109021, 0xE300000000000000);
  v15 = _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0();
  MEMORY[0x277C86E00](v15);

  sub_275A7B8C0(1u, aBlock, v28);

  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = 1852399981;
  v16[5] = 0xE400000000000000;
  v16[6] = v13;
  v17 = v23;
  v16[7] = v21;
  v16[8] = v17;
  v31 = sub_275A9A0C8;
  v32 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_275A99DB0;
  v30 = &block_descriptor_0;
  v18 = _Block_copy(&aBlock);

  sub_275AE55E4();
  v26 = MEMORY[0x277D84F90];
  sub_275A9A0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DD8, &unk_275AEA4A0);
  sub_275A9A13C();
  sub_275AE59B4();
  v19 = v22;
  MEMORY[0x277C86F50](0, v11, v8, v18);
  _Block_release(v18);

  (*(v25 + 8))(v8, v6);
  (*(v9 + 8))(v11, v24);
}

unint64_t sub_275A99524()
{
  result = qword_28140FF60;
  if (!qword_28140FF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28140FF60);
  }

  return result;
}

uint64_t static Threads.runInBackground(task:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_275AE55C4();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275AE55F4();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275AE55D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A99524();
  (*(v13 + 104))(v15, *MEMORY[0x277D851A8], v12);
  v27 = sub_275AE58E4();
  (*(v13 + 8))(v15, v12);
  type metadata accessor for Stopwatch();
  swift_allocObject();
  sub_275A87818();
  v17 = v16;
  if (qword_281410128 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger(0);
  __swift_project_value_buffer(v18, qword_281410130);
  aBlock = 0;
  v35 = 0xE000000000000000;
  sub_275AE5A14();

  aBlock = 0xD000000000000011;
  v35 = 0x8000000275AF0FF0;
  MEMORY[0x277C86E00](a1, a2);
  MEMORY[0x277C86E00](0xD000000000000014, 0x8000000275AF1010);
  MEMORY[0x277C86E00](0x756F72676B636162, 0xEA0000000000646ELL);
  MEMORY[0x277C86E00](2109021, 0xE300000000000000);
  v19 = _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0();
  MEMORY[0x277C86E00](v19);

  sub_275A7B8C0(1u, aBlock, v35);

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = 0x756F72676B636162;
  v20[5] = 0xEA0000000000646ELL;
  v21 = v28;
  v22 = v29;
  v20[6] = v17;
  v20[7] = v21;
  v20[8] = v22;
  v38 = sub_275A9A218;
  v39 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_275A99DB0;
  v37 = &block_descriptor_7;
  v23 = _Block_copy(&aBlock);

  sub_275AE55E4();
  v33 = MEMORY[0x277D84F90];
  sub_275A9A0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DD8, &unk_275AEA4A0);
  sub_275A9A13C();
  sub_275AE59B4();
  v24 = v27;
  MEMORY[0x277C86F50](0, v11, v8, v23);
  _Block_release(v23);

  (*(v32 + 8))(v8, v6);
  (*(v30 + 8))(v11, v31);
}

uint64_t sub_275A99A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (qword_281410128 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger(0);
  __swift_project_value_buffer(v10, qword_281410130);
  sub_275AE5A14();

  strcpy(v16, "Running task [");
  HIBYTE(v16[1]) = -18;
  MEMORY[0x277C86E00](a1, a2);
  MEMORY[0x277C86E00](0x726874206E69205DLL, 0xED00005B20646165);
  MEMORY[0x277C86E00](a3, a4);
  MEMORY[0x277C86E00](2109021, 0xE300000000000000);
  MEMORY[0x277C86E00](0x3D64657370616C65, 0xE90000000000005BLL);
  Stopwatch.elapsed()();
  sub_275AE5A44();
  MEMORY[0x277C86E00](8285, 0xE200000000000000);
  v11 = _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0();
  MEMORY[0x277C86E00](v11);

  MEMORY[0x277C86E00](0, 0xE000000000000000);

  sub_275A7B8C0(1u, v16[0], v16[1]);

  a6(v12);
  sub_275AE5A14();

  MEMORY[0x277C86E00](a1, a2);
  MEMORY[0x277C86E00](0x726874206E69205DLL, 0xED00005B20646165);
  MEMORY[0x277C86E00](a3, a4);
  MEMORY[0x277C86E00](2109021, 0xE300000000000000);
  MEMORY[0x277C86E00](0x3D64657370616C65, 0xE90000000000005BLL);
  Stopwatch.elapsed()();
  sub_275AE5A44();
  MEMORY[0x277C86E00](8285, 0xE200000000000000);
  v13 = _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0();
  MEMORY[0x277C86E00](v13);

  MEMORY[0x277C86E00](0, 0xE000000000000000);

  sub_275A7B8C0(1u, 0xD000000000000017, 0x8000000275AF1030);
}

uint64_t sub_275A99DB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_275A99DF4(void *a1)
{
  v2 = sub_275AE5674();
  v3 = [a1 valueForKeyPath_];

  if (v3)
  {
    sub_275AE59A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v6[0] = v8;
  v6[1] = v9;
  if (!*(&v9 + 1))
  {
    return 0;
  }

  sub_275A78C1C(v6, &v5);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0()
{
  v0 = [objc_opt_self() currentThread];
  sub_275A99DF4(v0);
  if (v1)
  {
    v2 = 0xEC00000044495F44;
    v3 = 0x41455248545F4F4ELL;
  }

  else
  {
    v3 = sub_275AE5A94();
    v2 = v4;
  }

  MEMORY[0x277C86E00](v3, v2);

  MEMORY[0x277C86E00](32, 0xE100000000000000);
  MEMORY[0x277C86E00](3826793, 0xE300000000000000);

  v5 = [v0 isMainThread];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 1852399981;
  }

  else
  {
    v7 = 0x756F72676B636162;
  }

  if (v6)
  {
    v8 = 0xEA0000000000646ELL;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x277C86E00](v7, v8);

  MEMORY[0x277C86E00](0x3A65707974, 0xE500000000000000);

  MEMORY[0x277C86E00](93, 0xE100000000000000);

  return 0x54746E6572727563;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275A9A0E4()
{
  result = qword_28140FF90;
  if (!qword_28140FF90)
  {
    sub_275AE55C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140FF90);
  }

  return result;
}

unint64_t sub_275A9A13C()
{
  result = qword_28140FF70;
  if (!qword_28140FF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24DD8, &unk_275AEA4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140FF70);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t TimeDelta.init(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = __OFADD__(result, v6);
  v8 = result + v6;
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

id sub_275A9A320()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  result = [v0 setZeroFormattingBehavior_];
  qword_28140FFC0 = v0;
  return result;
}

uint64_t TimeDelta.prettyDescription.getter(uint64_t a1)
{
  if ((a1 + 59999) < 0x1D4BF)
  {
    goto LABEL_6;
  }

  if (qword_28140FFB8 != -1)
  {
    swift_once();
  }

  v2 = [qword_28140FFC0 stringFromTimeInterval_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_275AE5684();

    return v4;
  }

  else
  {
LABEL_6:
    sub_275AE5864();
    MEMORY[0x277C86E00](115, 0xE100000000000000);
    return 0;
  }
}

uint64_t TimeDelta.debugDescription.getter(uint64_t a1)
{
  v1 = TimeDelta.prettyDescription.getter(a1);
  MEMORY[0x277C86E00](v1);

  MEMORY[0x277C86E00](41, 0xE100000000000000);
  return 0x28748688E2;
}

Swift::Void __swiftcall TimeDelta.sleep()()
{
  v1 = v0;
  v2 = 1000 * v0;
  if ((v1 * 1000) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v2))
  {
    usleep(v2);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_275A9A570()
{
  result = qword_280A24DE8;
  if (!qword_280A24DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24DE8);
  }

  return result;
}

uint64_t sub_275A9A614()
{
  v1 = TimeDelta.prettyDescription.getter(*v0);
  MEMORY[0x277C86E00](v1);

  MEMORY[0x277C86E00](41, 0xE100000000000000);
  return 0x28748688E2;
}

void static Timestamp.now()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = v2 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t static Timestamp.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t Timestamp.toDate()(uint64_t result)
{
  if (qword_28140FFA0 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (__OFSUB__(result, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {

    return sub_275AE5174();
  }

  return result;
}

uint64_t sub_275A9A7E0()
{
  v0 = sub_275AE51F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275AE5174();
  sub_275AE51C4();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  v7 = v5 * 1000.0;
  if (COERCE__INT64(fabs(v5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    qword_28140FF98 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_275A9A914()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_275AE5674();
  [v0 setDateFormat_];

  qword_28140FFB0 = v0;
}

uint64_t static Timestamp.fromCFAbsoluteTime(_:)(double a1)
{
  v2 = a1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    v1 = v2;
    if (qword_28140FFA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  swift_once();
LABEL_5:
  result = v1 + qword_28140FF98;
  if (__OFADD__(v1, qword_28140FF98))
  {
    __break(1u);
  }

  return result;
}

uint64_t static Timestamp.fromDate(_:)()
{
  sub_275AE5184();
  v2 = v1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    v0 = v2;
    if (qword_28140FFA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  swift_once();
LABEL_5:
  result = v0 + qword_28140FF98;
  if (__OFADD__(v0, qword_28140FF98))
  {
    __break(1u);
  }

  return result;
}

uint64_t static Timestamp.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall Timestamp.toCFAbsoluteTime()()
{
  if (qword_28140FFA0 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  if (!__OFSUB__(v0, qword_28140FF98))
  {
    return (v0 - qword_28140FF98) / 1000.0;
  }

  __break(1u);
  return result;
}

NSNumber __swiftcall Timestamp.toNSNumber()()
{
  if (qword_28140FFA0 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  if (__OFSUB__(v0, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    v2.n128_f64[0] = (v0 - qword_28140FF98) / 1000.0;
  }

  return MEMORY[0x28211EAC0](v2);
}

uint64_t Timestamp.hourOfDay(withTimezone:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v25 = a1;
  v27 = sub_275AE5224();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_275AE5274();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v23 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v26 = sub_275AE5244();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_275AE51F4();
  v17 = *(v24 - 8);
  result = MEMORY[0x28223BE20](v24);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140FFA0 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v28, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    sub_275AE5174();
    sub_275AE5204();
    sub_275A9B0C4(v25, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_275A9B134(v7);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v8);
      (*(v9 + 16))(v23, v13, v8);
      sub_275AE5214();
      (*(v9 + 8))(v13, v8);
    }

    v21 = v27;
    (*(v2 + 104))(v4, *MEMORY[0x277CC9980], v27);
    v22 = sub_275AE5234();
    (*(v2 + 8))(v4, v21);
    (*(v14 + 8))(v16, v26);
    (*(v17 + 8))(v20, v24);
    return v22;
  }

  return result;
}

uint64_t sub_275A9B0C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A9B134(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Timestamp.dayOfWeek(withTimezone:)(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v27 = a1;
  v29 = sub_275AE5224();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_275AE5274();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v28 = sub_275AE5244();
  v14 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_275AE51F4();
  v17 = *(v26 - 8);
  result = MEMORY[0x28223BE20](v26);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140FFA0 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v30, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    sub_275AE5174();
    sub_275AE5204();
    sub_275A9B0C4(v27, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_275A9B134(v7);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v8);
      (*(v9 + 16))(v25, v13, v8);
      sub_275AE5214();
      (*(v9 + 8))(v13, v8);
    }

    v21 = v29;
    (*(v2 + 104))(v4, *MEMORY[0x277CC99B8], v29);
    v22 = sub_275AE5234();
    (*(v2 + 8))(v4, v21);
    _s31iCloudSubscriptionOptimizerCore9TimestampV18dayOfWeekFormatterySSSiFZ_0(v22);
    v24 = v23;
    (*(v14 + 8))(v16, v28);
    (*(v17 + 8))(v20, v26);
    return v24;
  }

  return result;
}

uint64_t Timestamp.subtract(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = a7 - v17;
  if (__OFSUB__(a7, v17))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t Timestamp.add(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = a7 + v17;
  if (__OFADD__(a7, v17))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t Timestamp.debugDescription.getter()
{
  sub_275AE5A14();

  v0 = sub_275AE5A94();
  MEMORY[0x277C86E00](v0);

  MEMORY[0x277C86E00](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

Swift::String __swiftcall Timestamp.toHumanReadable()()
{
  v1 = v0;
  v2 = sub_275AE51F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  if (qword_28140FFA8 != -1)
  {
    swift_once();
  }

  v9 = qword_28140FFB0;
  sub_275AE5254();
  v10 = sub_275AE5274();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_275AE5264();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setTimeZone_];

  if (qword_28140FFA0 != -1)
  {
    v13 = swift_once();
  }

  if (__OFSUB__(v1, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    sub_275AE5174();
    v15 = sub_275AE51A4();
    (*(v3 + 8))(v5, v2);
    v16 = [v9 stringFromDate_];

    v17 = sub_275AE5684();
    v19 = v18;

    v13 = v17;
    v14 = v19;
  }

  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t Timestamp.toDateIntervalSince(days:weeks:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE51F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v15 = 86400000 * a1;
  if ((a1 * 86400000) >> 64 != (86400000 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = 604800000 * a2;
  if ((a2 * 604800000) >> 64 != (604800000 * a2) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  a1 = a3 - v18;
  if (!__OFSUB__(a3, v18))
  {
    if (qword_28140FFA0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  result = swift_once();
LABEL_6:
  v19 = qword_28140FF98;
  if (__OFSUB__(a1, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    sub_275AE5174();
    result = (*(v7 + 16))(v11, v14, v6);
    if (!__OFSUB__(a3, v19))
    {
      sub_275AE5174();
      sub_275AE5074();
      return (*(v7 + 8))(v14, v6);
    }
  }

  __break(1u);
  return result;
}

void _s31iCloudSubscriptionOptimizerCore9TimestampV18dayOfWeekFormatterySSSiFZ_0(unint64_t a1)
{
  if (a1 - 8 >= 0xFFFFFFFFFFFFFFF9)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v3 = sub_275AE5674();
    [v2 setDateFormat_];

    v4 = [v2 weekdaySymbols];
    if (v4)
    {
      v5 = v4;
      v6 = sub_275AE5834();

      if (*(v6 + 16) >= a1)
      {

        sub_275AE5704();

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_275A9BE38()
{
  result = qword_280A24DF8;
  if (!qword_280A24DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24DF8);
  }

  return result;
}

Swift::Int64 __swiftcall TimeUnit.toMillis(_:)(Swift::Int64 a1)
{
  v3 = qword_275AEA750[v1];
  result = a1 * v3;
  if ((a1 * v3) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

Swift::Int64 __swiftcall TimeUnit.from(millis:secs:mins:hours:days:weeks:)(Swift::Int64 millis, Swift::Int64 secs, Swift::Int64 mins, Swift::Int64 hours, Swift::Int64 days, Swift::Int64 weeks)
{
  if ((secs * 1000) >> 64 != (1000 * secs) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = qword_275AEA750[v6];
  v8 = 1000 * secs / v7;
  v9 = __OFADD__(millis / v7, v8);
  v10 = millis / v7 + v8;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((mins * 60000) >> 64 != (60000 * mins) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = 60000 * mins / v7;
  v9 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((hours * 3600000) >> 64 != (3600000 * hours) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 3600000 * hours / v7;
  v9 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((days * 86400000) >> 64 != (86400000 * days) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = 86400000 * days / v7;
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((weeks * 604800000) >> 64 != (604800000 * weeks) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = 604800000 * weeks / v7;
  millis = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_21:
    __break(1u);
  }

  return millis;
}

uint64_t static TimeUnit.convert(from:in:to:)(uint64_t result, char a2, char a3)
{
  v3 = qword_275AEA750[a2];
  if ((result * v3) >> 64 == (result * v3) >> 63)
  {
    return result * v3 / qword_275AEA750[a3];
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toSecs(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 1000;
  }

  __break(1u);
  return result;
}

uint64_t TimeUnit.hashValue.getter(unsigned __int8 a1)
{
  sub_275AE5B54();
  MEMORY[0x277C871E0](a1);
  return sub_275AE5B74();
}

uint64_t sub_275A9C0BC()
{
  v1 = *v0;
  sub_275AE5B54();
  MEMORY[0x277C871E0](v1);
  return sub_275AE5B74();
}

uint64_t sub_275A9C130(uint64_t a1)
{
  v2 = *v1;
  sub_275AE5B54();
  MEMORY[0x277C871E0](v2);
  return sub_275AE5B74();
}

Swift::Int64 __swiftcall TimeUnit.toMinutes(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 60000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toHours(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 3600000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toDays(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 86400000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toWeeks(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 604800000;
  }

  __break(1u);
  return result;
}

unint64_t sub_275A9C298()
{
  result = qword_280A24E00;
  if (!qword_280A24E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24E00);
  }

  return result;
}

unint64_t sub_275A9C2F0()
{
  result = qword_280A24E08;
  if (!qword_280A24E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24E10, &qword_275AEA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24E08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimeUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_275A9C4A4(void *a1)
{
  v36[5] = *MEMORY[0x277D85DE8];
  v32 = a1;
  *&v33 = a1;
  sub_275A9CFE0();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E30, &qword_275AEA7A0);
  if (swift_dynamicCast())
  {
    sub_275A9D9A4(v34, v36);
    __swift_project_boxed_opaque_existential_0(v36, v36[3]);
    sub_275AE50F4();
    v34[0] = v33;
    __swift_destroy_boxed_opaque_existential_0(v36);
    goto LABEL_40;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_275A9D03C(v34);
  v3 = sub_275AE58F4();
  v4 = sub_275AE5904();
  v5 = sub_275AE58F4();
  v6 = sub_275AE5904();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = sub_275AE58F4();
  v8 = sub_275AE5904();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v34[0] = sub_275A9D89C(v4 - v3);
  *(&v34[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v34[0]);
  v31[2] = &v32;
  v12 = sub_275A9D0A4(sub_275A9D93C, v31);
  v13 = v10;
  v14 = *&v34[0];
  v15 = *(&v34[0] + 1) >> 62;
  if ((*(&v34[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v34[0] + 16);
      v16 = *(*&v34[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v34[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v34[0]), v34[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v34[0]) - LODWORD(v34[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v34[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v34[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          sub_275AE5134();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v36, 0, 15);
  if (v10 == sub_275AE5904())
  {
    goto LABEL_39;
  }

  v21 = sub_275AE5914();
  v22 = sub_275AE58F4();
  v23 = sub_275AE5904();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v36 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      *&v33 = v36[0];
      *(&v33 + 6) = *(v36 + 6);
      sub_275AE5144();
      if (v25 == sub_275AE5904())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == sub_275AE5904())
    {
      break;
    }

LABEL_32:
    v21 = sub_275AE5914();
    v26 = sub_275AE58F4();
    v27 = sub_275AE5904();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  *&v33 = v36[0];
  *(&v33 + 6) = *(v36 + 6);
  sub_275AE5144();
LABEL_39:

LABEL_40:
  v29 = v34[0];
  sub_275A9CC80(*&v34[0], *(&v34[0] + 1));

  sub_275A785F8(v29, *(&v29 + 1));
  return v29;
}

uint64_t sub_275A9C8A0()
{
  v0 = type metadata accessor for Logger(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v1, qword_280A24E18);
  v4 = __swift_project_value_buffer(v0, qword_280A24E18);
  v7[1] = &type metadata for XpcProtoCodec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E40, &qword_275AEA7B0);
  *v3 = sub_275AE56E4();
  v3[1] = v5;

  sub_275AE5594();
  return sub_275A7B5F0(v3, v4);
}

uint64_t static XpcProtoCodec.encode<A>(_:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger(0);
  MEMORY[0x28223BE20](v5);
  v6 = sub_275AE5454();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  sub_275A9CC80(v6, v8);
  v10 = sub_275AE5154();
  v11 = [v9 initWithData_];

  sub_275A785F8(v6, v8);
  v12 = sub_275AE5674();
  [a2 encodeObject:v11 forKey:v12];

  return sub_275A785F8(v6, v8);
}

uint64_t sub_275A9CC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A9CC80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t static XpcProtoCodec.decode<A>(coder:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Logger(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275AE5304();
  MEMORY[0x28223BE20](v8 - 8);
  sub_275A9CFE0();
  v9 = sub_275AE5924();
  if (v9)
  {
    v10 = v9;
    sub_275A9C4A4(v10);
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_275AE52F4();
    sub_275AE5444();

    v12 = 0;
  }

  else
  {
    if (qword_280A243F0 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v5, qword_280A24E18);
    sub_275A9CC1C(v11, v7);
    sub_275A7B8C0(3u, 0xD000000000000030, 0x8000000275AF10C0);
    sub_275A7819C(v7);
    v12 = 1;
  }

  return (*(*(a1 - 8) + 56))(a3, v12, 1, a1);
}

unint64_t sub_275A9CFE0()
{
  result = qword_28140FF58;
  if (!qword_28140FF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28140FF58);
  }

  return result;
}

uint64_t sub_275A9D03C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E38, &qword_275AEA7A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_275A9D0A4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_275A785F8(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_275A785F8(v7, v6);
    *v4 = xmmword_275AEA780;
    sub_275A785F8(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_275AE50A4() && __OFSUB__(v7, sub_275AE50D4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_275AE50E4();
      swift_allocObject();
      v14 = sub_275AE5084();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_275A9D538(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_275A785F8(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_275AEA780;
    sub_275A785F8(0, 0xC000000000000000);
    sub_275AE5114();
    result = sub_275A9D538(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_275A9D43C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_275A9D634(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_275A9D6EC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_275A9D768(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_275A9D4D0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_275A9D538(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_275AE50A4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_275AE50D4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_275AE50C4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

id sub_275A9D5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_275A9D9DC(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t sub_275A9D634(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_275A9D6EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_275AE50E4();
  swift_allocObject();
  result = sub_275AE5094();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_275AE5124();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_275A9D768(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_275AE50E4();
  swift_allocObject();
  result = sub_275AE5094();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_275A9D7EC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E48, &qword_275AEA7B8);
  v10 = sub_275A9DAD8();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_275A9D43C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_275A9D89C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_275AE50E4();
      swift_allocObject();
      sub_275AE50B4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_275AE5124();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_275A9D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_275A9D4D0(sub_275A9D9BC, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_275A9D9A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_275A9D9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AE58F4();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != sub_275AE5904())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = sub_275AE5914();
        v12 = sub_275AE58F4();
        result = sub_275AE5904();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = sub_275AE5904();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_275A9DAD8()
{
  result = qword_280A24E50;
  if (!qword_280A24E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24E48, &qword_275AEA7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24E50);
  }

  return result;
}

uint64_t XpcProtoSubscriptionClient.request(_:withReply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionClientResponse(0);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  type metadata accessor for XpcSubscriptionClientConnection();
  swift_allocObject();

  v9 = XpcSubscriptionClientConnection.init(forServiceName:onError:)(0xD000000000000031, 0x8000000275AEF080, sub_275A9E230, v8)[3];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275A9E238;
  aBlock[3] = &block_descriptor_1;
  v10 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v9 request:a1 withReply:v10];

  _Block_release(v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_275A9DE80(uint64_t a1, void (*a2)(id))
{
  v4 = type metadata accessor for SubscriptionClientResponse(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v15 = a1;
  sub_275A9E8A0(&qword_281411B18, type metadata accessor for SubscriptionClientResponse, &protocol conformance descriptor for SubscriptionClientResponse);
  sub_275AE5484();
  sub_275A9E784(v9, v7, type metadata accessor for SubscriptionClientResponse);
  v10 = type metadata accessor for XpcSubscriptionClientResponse(0);
  v11 = objc_allocWithZone(v10);
  sub_275A9E784(v7, v11 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto, type metadata accessor for SubscriptionClientResponse);
  v16.receiver = v11;
  v16.super_class = v10;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_275A9E7EC(v7, type metadata accessor for SubscriptionClientResponse);
  a2(v12);

  return sub_275A9E7EC(v9, type metadata accessor for SubscriptionClientResponse);
}

uint64_t sub_275A9E034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorResponse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2;
  sub_275A9E8A0(&qword_280A24E58, type metadata accessor for ErrorResponse, &protocol conformance descriptor for ErrorResponse);
  sub_275AE5484();
  sub_275A9E8E8(a1);
  sub_275A9E950(v6, a1);
  v7 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_275A9E198(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25810, &unk_275AE93E0);
  sub_275AE5A44();
  v3 = (a1 + *(type metadata accessor for ErrorResponse(0) + 20));

  *v3 = 0;
  v3[1] = 0xE000000000000000;
  return result;
}

void sub_275A9E238(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s31iCloudSubscriptionOptimizerCore08XpcProtoB6ClientC7request_9withReplyyAA0bG7RequestV_yAA0bG8ResponseVctF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionClientResponse(0);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for SubscriptionClientRequest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A9E784(a1, v10, type metadata accessor for SubscriptionClientRequest);
  v11 = type metadata accessor for XpcSubscriptionClientRequest(0);
  v12 = objc_allocWithZone(v11);
  sub_275A9E784(v10, v12 + OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto, type metadata accessor for SubscriptionClientRequest);
  v22.receiver = v12;
  v22.super_class = v11;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_275A9E7EC(v10, type metadata accessor for SubscriptionClientRequest);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_275A9E84C;
  *(v14 + 24) = v13;
  type metadata accessor for XpcSubscriptionClientConnection();
  swift_allocObject();
  swift_retain_n();

  v15 = XpcSubscriptionClientConnection.init(forServiceName:onError:)(0xD000000000000031, 0x8000000275AEF080, sub_275A9E9D4, v14)[3];
  aBlock[4] = sub_275A9E84C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275A9E238;
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v17 = v20;
  [v15 request:v20 withReply:v16];

  _Block_release(v16);

  return swift_unknownObjectRelease();
}

uint64_t sub_275A9E784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A9E7EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275A9E8A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275A9E8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275A9E950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double NewOfferRequest.mlServerScore.getter()
{
  v1 = v0 + *(type metadata accessor for NewOfferRequest(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t NewOfferRequest.litmusInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(v1 + *(v6 + 24), v5, &qword_280A24650, &qword_275AEAC50);
  v7 = type metadata accessor for LitmusInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_275A9ED50(v5, a1, type metadata accessor for LitmusInfo);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 8) = 256;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24650, &qword_275AEAC50);
  }

  return result;
}

uint64_t NewOfferRequest.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(v1 + *(v6 + 32), v5, &qword_280A24658, &unk_275AE7960);
  v7 = type metadata accessor for QuotaServerState(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_275A9ED50(v5, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[8]);
  *v12 = 0;
  v12[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t sub_275A9ED50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SubscriptionClientResponse.error.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for ErrorResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t (*ErrorResponse.msg.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ErrorResponse(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

uint64_t NewOfferRequest.mlServerScore.setter(double a1)
{
  result = type metadata accessor for NewOfferRequest(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NewOfferRequest.mlServerScore.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NewOfferRequest(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NewOfferRequest.clearMlServerScore()()
{
  v1 = v0 + *(type metadata accessor for NewOfferRequest(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NewOfferRequest.litmusInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewOfferRequest(0) + 24);
  sub_275A5FE04(v1 + v3, &qword_280A24650, &qword_275AEAC50);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for LitmusInfo);
  v4 = type metadata accessor for LitmusInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NewOfferRequest.litmusInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for LitmusInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NewOfferRequest(0) + 24);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24650, &qword_275AEAC50);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 256;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24650, &qword_275AEAC50);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for LitmusInfo);
  }

  return sub_275A9F420;
}

void sub_275A9F420(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for LitmusInfo);
    sub_275A5FE04(v9 + v3, &qword_280A24650, &qword_275AEAC50);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for LitmusInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for LitmusInfo);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24650, &qword_275AEAC50);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for LitmusInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL NewOfferRequest.hasLitmusInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(v0 + *(v4 + 24), v3, &qword_280A24650, &qword_275AEAC50);
  v5 = type metadata accessor for LitmusInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_275A5FE04(v3, &qword_280A24650, &qword_275AEAC50);
  return v6;
}

Swift::Void __swiftcall NewOfferRequest.clearLitmusInfo()()
{
  v1 = *(type metadata accessor for NewOfferRequest(0) + 24);
  sub_275A5FE04(v0 + v1, &qword_280A24650, &qword_275AEAC50);
  v2 = type metadata accessor for LitmusInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NewOfferRequest.maxDelayInSecs.setter(uint64_t a1)
{
  result = type metadata accessor for NewOfferRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NewOfferRequest.maxDelayInSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NewOfferRequest(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NewOfferRequest.clearMaxDelayInSecs()()
{
  v1 = v0 + *(type metadata accessor for NewOfferRequest(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NewOfferRequest.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewOfferRequest(0) + 32);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NewOfferRequest.quotaServerState.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NewOfferRequest(0) + 32);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275A9FB14;
}

void sub_275A9FB14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for QuotaServerState);
    sub_275A5FE04(v9 + v3, &qword_280A24658, &unk_275AE7960);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for QuotaServerState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for QuotaServerState);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24658, &unk_275AE7960);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for QuotaServerState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_275A9FC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A9FCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL NewOfferRequest.hasQuotaServerState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(v0 + *(v4 + 32), v3, &qword_280A24658, &unk_275AE7960);
  v5 = type metadata accessor for QuotaServerState(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_275A5FE04(v3, &qword_280A24658, &unk_275AE7960);
  return v6;
}

Swift::Void __swiftcall NewOfferRequest.clearQuotaServerState()()
{
  v1 = *(type metadata accessor for NewOfferRequest(0) + 32);
  sub_275A5FE04(v0 + v1, &qword_280A24658, &unk_275AE7960);
  v2 = type metadata accessor for QuotaServerState(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NewOfferRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v3 = type metadata accessor for NewOfferRequest(0);
  v4 = a2 + v3[5];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v3[6];
  v6 = type metadata accessor for LitmusInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a2 + v3[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3[8];
  v9 = type metadata accessor for QuotaServerState(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t (*NewOfferResponse.action.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NewOfferResponse(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A883DC;
}

uint64_t NewOfferResponse.maxDelayTimestampMillis.setter(uint64_t a1)
{
  result = type metadata accessor for NewOfferResponse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NewOfferResponse.maxDelayTimestampMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NewOfferResponse(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NewOfferResponse.clearMaxDelayTimestampMillis()()
{
  v1 = v0 + *(type metadata accessor for NewOfferResponse(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NewOfferResponse.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for NewOfferResponse(0);
  sub_275A5F510(v1 + *(v6 + 28), v5, &qword_280A24658, &unk_275AE7960);
  v7 = type metadata accessor for QuotaServerState(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_275A9ED50(v5, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[8]);
  *v12 = 0;
  v12[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t NewOfferResponse.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewOfferResponse(0) + 28);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NewOfferResponse.quotaServerState.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NewOfferResponse(0) + 28);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275AE2A18;
}

uint64_t NewOfferResponse.expectedCallbackTsSecs.setter(uint64_t a1)
{
  result = type metadata accessor for NewOfferResponse(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NewOfferResponse.expectedCallbackTsSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NewOfferResponse(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NewOfferResponse.clearExpectedCallbackTsSecs()()
{
  v1 = v0 + *(type metadata accessor for NewOfferResponse(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NewOfferResponse.mlModelName.getter()
{
  v1 = (v0 + *(type metadata accessor for NewOfferResponse(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}