unint64_t DeepLinkActivityType.userActivityType.getter()
{
  result = 0xD000000000000019;
  switch(*v0)
  {
    case 1:
    case 0xF:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 3:
    case 0x11:
      result = 0xD00000000000001CLL;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      return result;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 0xD:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xB:
      result = 0xD00000000000002CLL;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xE:
      result = 0xD000000000000028;
      break;
    case 0x10:
      result = 0xD000000000000025;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

id static HAUserActivity.createActivity(title:restorationType:profileIdentifier:eligibleForSearch:eligibleForHandoff:eligibleForPrediction:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4, char a5, BOOL a6, char a7)
{
  v10 = a6;
  v11 = *a3;
  DeepLinkActivityType.userActivityType.getter();
  v12 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
  v13 = sub_25130EF94();

  v14 = [v12 initWithActivityType_];

  v15 = v14;
  v16 = sub_25130EF94();
  [v15 setTitle_];

  [v15 setEligibleForSearch_];
  if (v10 == 2)
  {
    v17 = v11 != 5;
  }

  else
  {
    v17 = a6;
  }

  [v15 setEligibleForHandoff_];
  [v15 setEligibleForPrediction_];

  if (a4)
  {
    v18 = a4;
    v19 = sub_251308E90(v15, v18);

    v15 = v19;
  }

  sub_2512F2BD0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310350;
  sub_25130F1E4();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512F2F80(inited + 32);
  v21 = sub_25130EF64();

  [v15 addUserInfoEntriesFromDictionary_];

  return v15;
}

void sub_2512F2BD0(uint64_t a1)
{
  if (!qword_280C61358)
  {
    sub_2512F2C28();
    v1 = sub_25130F2B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C61358);
    }
  }
}

void sub_2512F2C28()
{
  if (!qword_280C61370)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C61370);
    }
  }
}

unint64_t sub_2512F2C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2512F2E00();
    v3 = sub_25130F264();
    v4 = a1 + 32;

    while (1)
    {
      sub_2512F2D9C(v4, v13);
      result = sub_2512F2E64(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2512F2EA8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_2512F2D9C(uint64_t a1, uint64_t a2)
{
  sub_2512F2C28();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2512F2E00()
{
  if (!qword_280C61368)
  {
    v0 = sub_25130F274();
    if (!v1)
    {
      atomic_store(v0, &qword_280C61368);
    }
  }
}

unint64_t sub_2512F2E64(uint64_t a1)
{
  v2 = sub_25130F1C4();

  return sub_2512F2EB8(a1, v2);
}

_OWORD *sub_2512F2EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2512F2EB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25130460C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253070F40](v9, a1);
      sub_2512F8B54(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2512F2F80(uint64_t a1)
{
  sub_2512F2C28();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *HealthAppOrchestrationClient.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for HealthAppOrchestrationClient.WeakClientProxy();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_clientProxy;
  *&v0[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_clientProxy] = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v5 = sub_25130EF94();
  v6 = [v4 initWithMachServiceName:v5 options:0];

  v7 = OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection;
  *&v0[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection] = v6;
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v11 = *&v0[v7];
  v12 = [v8 interfaceWithProtocol_];
  [v11 setExportedInterface_];

  [*&v0[v7] setExportedObject_];
  v13 = *&v0[v7];
  v14 = swift_allocObject();
  *(v14 + 16) = ObjectType;
  v27 = sub_2512FB038;
  v28 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2512F9AA0;
  v26 = &block_descriptor;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [v16 setInterruptionHandler_];
  _Block_release(v15);

  v17 = *&v0[v7];
  v18 = [v17 interruptionHandler];
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v27 = sub_2512FB048;
    v28 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2512F9AA0;
    v26 = &block_descriptor_6;
    v18 = _Block_copy(&aBlock);
  }

  [v17 setInvalidationHandler_];
  _Block_release(v18);

  [*&v0[v7] resume];
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  swift_unknownObjectWeakAssign();
  return v20;
}

uint64_t sub_2512F3360()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2512F3928()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2512F3960()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2512F3A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2512F3AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2512F3C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2512F3C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_2512F3CDC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

__CFString *HAStringForDataRequestType(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"write";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"read";
  }
}

id AllHealthAppAnalyticsAgreements()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"ImproveHealthAndAnalytics";
  v2[1] = @"ImproveHealthRecords";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];

  return v0;
}

uint64_t ContactDeepLinkingParameter.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactDeepLinkingParameter.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2512F7104@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2512F7110(void *a1)
{

  v4 = a1[1];
  *v1 = *a1;
  v1[1] = v4;
  return result;
}

uint64_t SharingInviteFlowURLData.contactData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static SharingInviteFlowURLData.isSharingInviteFlow(_:)(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_25130EFB4();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  DeepLinkActivityType.init(_:)(v5);
  if (v16 == 18)
  {
    v6 = 0;
  }

  else
  {
    v7 = DeepLinkActivityType.rawValue.getter();
    v9 = v8;
    v10 = [objc_opt_self() healthAppSharingInviteFlowPath];
    v11 = sub_25130EFB4();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_25130F2D4();
    }
  }

  return v6 & 1;
}

uint64_t SharingInviteFlowURLData.url()@<X0>(char *a1@<X8>)
{
  v3 = sub_25130ECE4();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512F8A34(0, &qword_27F429C08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_25130EEC4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = v1[1];
  sub_2512F75C0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2512F8AE4(v8, &qword_27F429C08, MEMORY[0x277CC9260]);
    return (*(v10 + 56))(a1, 1, 1, v9);
  }

  else
  {
    v21 = a1;
    v16 = *(v10 + 32);
    v16(v12, v8, v9);
    if (v14)
    {
      v23 = v13;
      v24 = v14;

      sub_25130ECD4();
      sub_2512F8818();
      v17 = sub_25130F164();
      v19 = v18;
      (*(v22 + 8))(v5, v3);

      sub_251305560(0x8000000251311680, v17, v19, v21);

      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      v20 = v21;
      v16(v21, v12, v9);
      return (*(v10 + 56))(v20, 0, 1, v9);
    }
  }
}

uint64_t sub_2512F75C0()
{
  v0 = objc_opt_self();
  v1 = [v0 externalHealthAppURLScheme];
  sub_25130EFB4();

  v2 = [v0 externalHealthAppURLHost];
  v3 = sub_25130EFB4();
  v5 = v4;

  MEMORY[0x253070D80](3092282, 0xE300000000000000);
  MEMORY[0x253070D80](v3, v5);

  MEMORY[0x253070D80](47, 0xE100000000000000);
  MEMORY[0x253070D80](0xD000000000000011, 0x8000000251311590);
  sub_25130EEB4();
}

uint64_t sub_2512F76E0()
{
  v0 = objc_opt_self();
  v1 = [v0 externalHealthAppURLScheme];
  sub_25130EFB4();

  v2 = [v0 externalHealthAppURLHost];
  v3 = sub_25130EFB4();
  v5 = v4;

  MEMORY[0x253070D80](3092282, 0xE300000000000000);
  MEMORY[0x253070D80](v3, v5);

  MEMORY[0x253070D80](47, 0xE100000000000000);
  MEMORY[0x253070D80](0x50676E6972616873, 0xEE00656C69666F72);
  sub_25130EEB4();
}

uint64_t static SharingInviteFlowURLData.fromURL(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25130EEC4();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = HAURL.queryItems.getter();
  if (v8)
  {
    sub_2512F7928(v8, &v11);

    result = sub_2512F886C(v6, type metadata accessor for HAURL);
    v10 = v12;
    if (v12)
    {
      *a2 = v11;
      a2[1] = v10;
      return result;
    }
  }

  else
  {
    result = sub_2512F886C(v6, type metadata accessor for HAURL);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_2512F7928@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_25130ED24();
  v27 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v25 = &v25 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_12;
  }

  v28 = *(v27 + 16);
  v10 = (v27 + 8);
  v11 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v12 = *(v27 + 72);
  while (1)
  {
    v28(v6, v11, v3);
    if (sub_25130ED04() == 0xD000000000000011 && 0x8000000251311680 == v13)
    {
      break;
    }

    v14 = sub_25130F2D4();

    if (v14)
    {
      goto LABEL_9;
    }

    result = (*v10)(v6, v3);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_12;
    }
  }

LABEL_9:
  v15 = v27 + 32;
  v16 = v25;
  (*(v27 + 32))(v25, v6, v3);
  v17 = sub_25130ED14();
  v19 = v18;
  result = (*(v15 - 24))(v16, v3);
  if (v19 && (v29 = v17, v30 = v19, sub_2512F8818(), v20 = sub_25130F184(), v22 = v21, result = , v22))
  {
    v23 = v26;
    *v26 = v20;
    v23[1] = v22;
  }

  else
  {
LABEL_12:
    v24 = v26;
    *v26 = 0;
    v24[1] = 0;
  }

  return result;
}

uint64_t sub_2512F7B74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_2512F8A34(0, &qword_27F429C18, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_25130EF24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25130ED24();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = *(a1 + 16);
  if (v17)
  {
    v43 = v6;
    v44 = &v40 - v15;
    v40 = v10;
    v41 = v8;
    v42 = v7;
    v45 = v16;
    v46 = a2;
    v18 = 0x55676E6972616873;
    v47 = *(v16 + 16);
    v19 = (v16 + 8);
    v20 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v21 = *(v16 + 72);
    while (1)
    {
      v47(v14, v20, v11);
      if (sub_25130ED04() == v18 && v22 == 0xEB00000000444955)
      {
        break;
      }

      v23 = v18;
      v24 = sub_25130F2D4();

      if (v24)
      {
        goto LABEL_9;
      }

      (*v19)(v14, v11);
      v20 += v21;
      --v17;
      v18 = v23;
      if (!v17)
      {
        goto LABEL_14;
      }
    }

LABEL_9:
    v25 = v44;
    v26 = v45 + 32;
    (*(v45 + 32))(v44, v14, v11);
    v27 = sub_25130ED14();
    v29 = v28;
    (*(v26 - 24))(v25, v11);
    if (!v29)
    {
LABEL_14:
      v35 = 1;
      a2 = v46;
      goto LABEL_15;
    }

    v48 = v27;
    v49 = v29;
    sub_2512F8818();
    sub_25130F184();
    v31 = v30;

    a2 = v46;
    if (!v31)
    {
      goto LABEL_13;
    }

    v32 = v43;
    _s10Foundation4UUIDV17HealthAppServicesE13fromURLStringyACSgSSFZ_0();

    v34 = v41;
    v33 = v42;
    if ((*(v41 + 48))(v32, 1, v42) == 1)
    {
      sub_2512F8AE4(v32, &qword_27F429C18, MEMORY[0x277CC95F0]);
      goto LABEL_13;
    }

    v38 = *(v34 + 32);
    v39 = v40;
    v38(v40, v32, v33);
    v38(a2, v39, v33);
    v35 = 0;
  }

  else
  {
LABEL_13:
    v35 = 1;
  }

LABEL_15:
  v36 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  return (*(*(v36 - 8) + 56))(a2, v35, 1, v36);
}

NSUserActivity __swiftcall SharingInviteFlowURLData.userActivity()()
{
  v2 = *v0;
  v1 = v0[1];
  sub_25130F214();

  v3 = MEMORY[0x277D837D0];
  sub_2512F8A98(0, &qword_27F429C10, MEMORY[0x277D837D0]);

  v4 = sub_25130EFD4();
  MEMORY[0x253070D80](v4);

  v5 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
  v6 = sub_25130EF94();
  v7 = [v5 initWithActivityType_];

  v8 = v7;
  v9 = sub_25130EF94();

  [v8 setTitle_];

  [v8 setEligibleForSearch_];
  [v8 setEligibleForHandoff_];
  [v8 setEligibleForPrediction_];

  sub_2512F8A34(0, &qword_280C61358, sub_2512F2C28, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310350;
  sub_25130F1E4();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512F886C(inited + 32, sub_2512F2C28);
  v11 = sub_25130EF64();

  [v8 addUserInfoEntriesFromDictionary_];

  if (v1)
  {
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_251310350;
    sub_25130F1E4();
    *(v12 + 96) = v3;
    *(v12 + 72) = v2;
    *(v12 + 80) = v1;

    sub_2512F2C8C(v12);
    swift_setDeallocating();
    sub_2512F886C(v12 + 32, sub_2512F2C28);
    v13 = sub_25130EF64();

    [v8 addUserInfoEntriesFromDictionary_];
  }

  return v8;
}

double static SharingInviteFlowURLData.fromUserActivity(_:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2512F8364(a2, &v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_2512F8364@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [a1 userInfo];
  v4 = MEMORY[0x277D84F70];
  if (v3)
  {
    v5 = v3;
    v6 = sub_25130EF74();

    sub_25130F1E4();
    if (*(v6 + 16))
    {
      v7 = sub_2512F2E64(v11);
      if (v8)
      {
        sub_2512F8BA8(*(v6 + 56) + 32 * v7, v12);
        sub_2512F8B54(v11);

        goto LABEL_7;
      }
    }

    sub_2512F8B54(v11);
  }

  memset(v12, 0, sizeof(v12));
LABEL_7:
  sub_2512F8A98(0, &qword_27F429C20, v4 + 8);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v11[0];
  }

  else
  {
    v10 = 0uLL;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_2512F84A4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_2512F8A34(0, &qword_27F429C18, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_25130EF24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 userInfo];
  v12 = MEMORY[0x277D84F70];
  if (v11)
  {
    v13 = v11;
    v14 = sub_25130EF74();

    v23[1] = 0x55676E6972616873;
    v23[2] = 0xEB00000000444955;
    sub_25130F1E4();
    if (*(v14 + 16))
    {
      v15 = sub_2512F2E64(v24);
      if (v16)
      {
        sub_2512F8BA8(*(v14 + 56) + 32 * v15, v25);
        sub_2512F8B54(v24);

        goto LABEL_7;
      }
    }

    sub_2512F8B54(v24);
  }

  memset(v25, 0, sizeof(v25));
LABEL_7:
  sub_2512F8A98(0, &qword_27F429C20, v12 + 8);
  v17 = swift_dynamicCast();
  v18 = *(v8 + 56);
  if (v17)
  {
    v18(v6, 0, 1, v7);
    v19 = *(v8 + 32);
    v19(v10, v6, v7);
    v19(a2, v10, v7);
    v20 = 0;
  }

  else
  {
    v20 = 1;
    v18(v6, 1, 1, v7);
    sub_2512F8AE4(v6, &qword_27F429C18, MEMORY[0x277CC95F0]);
  }

  v21 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  return (*(*(v21 - 8) + 56))(a2, v20, 1, v21);
}

double sub_2512F87E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2512F8364(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t sub_2512F8818()
{
  result = qword_280C61378[0];
  if (!qword_280C61378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C61378);
  }

  return result;
}

uint64_t sub_2512F886C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2512F88E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2512F892C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2512F8978(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2512F89D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_2512F8A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2512F8A98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25130F144();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2512F8AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2512F8A34(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2512F8BA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2512F8C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_25130EDE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130EDD4();

  sub_25130EDA4();

  sub_25130EDB4();
  v10 = objc_opt_self();
  v11 = sub_25130EDC4();
  v12 = [v10 localizedStringFromPersonNameComponents:v11 style:a5 options:0];

  v13 = sub_25130EFB4();
  (*(v7 + 8))(v9, v6);
  return v13;
}

uint64_t static ProfileInformationSupport.localizedFullNameOrAccountIdentifier(firstName:lastName:isContact:accountIdentifier:shouldDisplaySuggestedName:newlineBetweenNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  HIDWORD(v33) = a8;
  v34 = a6;
  v11 = sub_25130EDE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130EDD4();

  sub_25130EDA4();

  sub_25130EDB4();
  v15 = objc_opt_self();
  v16 = sub_25130EDC4();
  v17 = [v15 localizedStringFromPersonNameComponents:v16 style:2 options:0];

  v18 = sub_25130EFB4();
  v20 = v19;

  (*(v12 + 8))(v14, v11);
  if ((a5 & 1) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    sub_25130ED94();

    if ((v33 & 0x100000000) != 0)
    {
      v24 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v24 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        sub_2512F9748(0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_251310350;
        v26 = MEMORY[0x277D837D0];
        *(v25 + 56) = MEMORY[0x277D837D0];
        v27 = sub_2512F9804();
        *(v25 + 64) = v27;
        *(v25 + 32) = v18;
        *(v25 + 40) = v20;

        v28 = sub_25130EFA4();
        v30 = v29;

        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_251310430;
        *(v31 + 56) = v26;
        *(v31 + 64) = v27;
        *(v31 + 32) = v34;
        *(v31 + 40) = a7;
        *(v31 + 96) = v26;
        *(v31 + 104) = v27;
        *(v31 + 72) = v28;
        *(v31 + 80) = v30;

        v18 = sub_25130EFC4();

        return v18;
      }
    }

LABEL_12:

    return v34;
  }

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_12;
  }

  return v18;
}

uint64_t static ProfileInformationSupport.localizedShortNameOrAccountIdentifier(firstName:lastName:isContact:accountIdentifier:shouldDisplaySuggestedName:newlineBetweenNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  v39 = a8;
  v40 = a6;
  v41 = a7;
  v42 = a5;
  v10 = sub_25130EDE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130EDD4();

  sub_25130EDA4();

  v38 = a3;
  sub_25130EDB4();
  v14 = objc_opt_self();
  v15 = sub_25130EDC4();
  v16 = [v14 localizedStringFromPersonNameComponents:v15 style:1 options:0];

  v17 = sub_25130EFB4();
  v19 = v18;

  v20 = *(v11 + 8);
  v20(v13, v10);
  if (v42)
  {
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_25130EDD4();

    sub_25130EDA4();

    sub_25130EDB4();
    v22 = sub_25130EDC4();
    v23 = [v14 localizedStringFromPersonNameComponents:v22 style:2 options:0];

    v24 = sub_25130EFB4();
    v26 = v25;

    v20(v13, v10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    sub_25130ED94();

    if ((v39 & 1) == 0)
    {
      goto LABEL_11;
    }

    v29 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v29 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {
LABEL_11:

LABEL_12:

      return v40;
    }

    sub_2512F9748(0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_251310350;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v32 = sub_2512F9804();
    *(v30 + 64) = v32;
    *(v30 + 32) = v24;
    *(v30 + 40) = v26;

    v33 = sub_25130EFA4();
    v35 = v34;

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_251310430;
    *(v36 + 56) = v31;
    *(v36 + 64) = v32;
    *(v36 + 32) = v40;
    *(v36 + 40) = v41;
    *(v36 + 96) = v31;
    *(v36 + 104) = v32;
    *(v36 + 72) = v33;
    *(v36 + 80) = v35;

    v17 = sub_25130EFC4();
  }

  return v17;
}

id sub_2512F9538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, char))
{
  v11 = a4;
  if (a3)
  {
    v12 = sub_25130EFB4();
    v14 = v13;
    if (v11)
    {
LABEL_3:
      v15 = sub_25130EFB4();
      v11 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v17 = sub_25130EFB4();
  v19 = v18;
  swift_getObjCClassMetadata();
  a9(v12, v14, v15, v11, a5, v17, v19, a7, a8);

  v20 = sub_25130EF94();

  return v20;
}

id ProfileInformationSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileInformationSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileInformationSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProfileInformationSupport.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ProfileInformationSupport();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2512F9748(uint64_t a1)
{
  if (!qword_27F429C28)
  {
    sub_2512F97A0();
    v1 = sub_25130F2B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F429C28);
    }
  }
}

unint64_t sub_2512F97A0()
{
  result = qword_27F429C30;
  if (!qword_27F429C30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F429C30);
  }

  return result;
}

unint64_t sub_2512F9804()
{
  result = qword_27F429C38;
  if (!qword_27F429C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429C38);
  }

  return result;
}

id sub_2512F987C()
{
  result = [objc_allocWithZone(type metadata accessor for HealthAppOrchestrationClient()) init];
  qword_27F429C40 = result;
  return result;
}

id HealthAppOrchestrationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static HealthAppOrchestrationClient.sharedConnection.getter()
{
  if (qword_27F429BF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F429C40;

  return v1;
}

void sub_2512F9958()
{
  if (qword_280C61590 != -1)
  {
    swift_once();
  }

  v0 = sub_25130EF54();
  __swift_project_value_buffer(v0, qword_280C61668);
  oslog = sub_25130EF34();
  v1 = sub_25130F124();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_251302D38(0xD000000000000022, 0x8000000251311920, &v5);
    _os_log_impl(&dword_2512F1000, oslog, v1, "%s: connection interrupted", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x253071680](v3, -1, -1);
    MEMORY[0x253071680](v2, -1, -1);
  }
}

uint64_t sub_2512F9AA0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void HealthAppOrchestrationClient.fireOnce(resetErrors:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_2512F9CE0(sub_2512FB3C0, v6);

  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v16 = sub_2512FB388;
    v17 = v8;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_2512F9AA0;
    v15 = &block_descriptor_21;
    v9 = _Block_copy(&v12);

    [v7 remote:v9 fireOnceWithCompletion:?];
    swift_unknownObjectRelease();
    _Block_release(v9);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v16 = sub_2512FB388;
    v17 = v10;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_2512F9AA0;
    v15 = &block_descriptor_15;
    v11 = _Block_copy(&v12);

    [v7 remote:v11 resetAndFireWithCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2512F9CE0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v19 = sub_2512FB220;
  v20 = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2512FAF98;
  v18 = &block_descriptor_109;
  v7 = _Block_copy(aBlock);
  v8 = v2;

  v9 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_25130F1A4();
  swift_unknownObjectRelease();
  sub_2512F8BA8(aBlock, v16);
  sub_2512FB22C();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return v15;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_25130F214();
    v11 = [v8 description];
    v12 = sub_25130EFB4();
    v14 = v13;

    MEMORY[0x253070D80](v12, v14);

    MEMORY[0x253070D80](0xD000000000000010, 0x8000000251311AE0);
    __swift_project_boxed_opaque_existential_0(aBlock, v18);
    sub_25130F2C4();
    MEMORY[0x253070D80](0xD000000000000099, 0x8000000251311B00);
    result = sub_25130F234();
    __break(1u);
  }

  return result;
}

uint64_t HealthAppOrchestrationClient.fetchOrchestrationStatus(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB058, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB088;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512FA078;
  v9[3] = &block_descriptor_30;
  v7 = _Block_copy(v9);

  [v5 remote:v7 fetchOrchestrationStatusWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_2512FA078(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_25130EFB4();
  v5 = v4;

  v2(v3, v5);
}

uint64_t HealthAppOrchestrationClient.fetchOrchestrationGraph(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB0B4, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB0E0;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512FA218;
  v9[3] = &block_descriptor_39;
  v7 = _Block_copy(v9);

  [v5 remote:v7 fetchOrchestrationGraphWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_2512FA218(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_25130F0D4();

  v2(v3);
}

uint64_t HealthAppOrchestrationClient.deleteCacheAndTerminate(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB10C, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB158;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512FA3BC;
  v9[3] = &block_descriptor_48;
  v7 = _Block_copy(v9);

  [v5 remote:v7 deleteCacheAndTerminateWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t HealthAppOrchestrationClient.cancelAllGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB180, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB1A8;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512F9AA0;
  v9[3] = &block_descriptor_57;
  v7 = _Block_copy(v9);

  [v5 remote:v7 cancelAllGenerationWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

id HealthAppOrchestrationClient.runForegroundGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB3C0, v4);

  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512FA614;
  v9[3] = &block_descriptor_63;
  v6 = _Block_copy(v9);

  v7 = [v5 remote:v6 runForegroundGenerationWithCompletion:?];
  _Block_release(v6);
  swift_unknownObjectRelease();
  return v7;
}

void sub_2512FA61C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void HealthAppOrchestrationClient.runBackgroundGeneration(plugins:commitAsUrgent:generationType:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  v11 = sub_2512F9CE0(sub_2512FB3C0, v10);

  if (a1)
  {
    a1 = sub_25130F0C4();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v14[4] = sub_2512FB180;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2512FA614;
  v14[3] = &block_descriptor_72;
  v13 = _Block_copy(v14);

  [v11 remote:a1 runBackgroundGenerationWithPlugins:a2 & 1 commitAsUrgent:a3 generationType:v13 completion:?];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t HealthAppOrchestrationClient.requestBackgroundGenerationForFeedItemsAfterUnlock(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB3C0, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB388;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512F9AA0;
  v9[3] = &block_descriptor_81;
  v7 = _Block_copy(v9);

  [v5 remote:v7 requestBackgroundGenerationForFeedItemsAfterUnlockWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t HealthAppOrchestrationClient.requestBackgroundGenerationForAllModelsAfterUnlock(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB3C0, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB388;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512F9AA0;
  v9[3] = &block_descriptor_90;
  v7 = _Block_copy(v9);

  [v5 remote:v7 requestBackgroundGenerationForAllModelsAfterUnlockWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t HealthAppOrchestrationClient.runOrRequestBackgroundGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB3C0, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB388;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512F9AA0;
  v9[3] = &block_descriptor_99;
  v7 = _Block_copy(v9);

  [v5 remote:v7 runOrRequestBackgroundGenerationWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

id HealthAppOrchestrationClient.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakAssign();
  [*&v0[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2512FACE8(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (qword_280C61590 != -1)
  {
    swift_once();
  }

  v8 = sub_25130EF54();
  __swift_project_value_buffer(v8, qword_280C61668);
  v9 = a2;
  v10 = a1;
  v11 = sub_25130EF34();
  v12 = sub_25130F114();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315394;
    v15 = v9;
    v16 = [v15 description];
    v17 = sub_25130EFB4();
    v29 = a4;
    v18 = a3;
    v20 = v19;

    v21 = sub_251302D38(v17, v20, &v30);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v24 + 16))(&v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = sub_25130EFD4();
    v27 = sub_251302D38(v25, v26, &v30);
    a3 = v18;

    *(v13 + 14) = v27;
    _os_log_impl(&dword_2512F1000, v11, v12, "%s: remoteObjectProxyWithErrorHandler error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253071680](v14, -1, -1);
    MEMORY[0x253071680](v13, -1, -1);
  }

  return a3(a1);
}

void sub_2512FAF98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2512FB000()
{
  sub_2512FB1F8(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_2512FB10C()
{
  v1 = *(v0 + 16);
  v2 = sub_25130EDF4();
  v1();
}

unint64_t sub_2512FB22C()
{
  result = qword_280C61598[0];
  if (!qword_280C61598[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280C61598);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t DeepLinkingDataConformable.healthAppBaseURL()(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 externalHealthAppURLScheme];
  sub_25130EFB4();

  v6 = [v4 externalHealthAppURLHost];
  v7 = sub_25130EFB4();
  v9 = v8;

  MEMORY[0x253070D80](3092282, 0xE300000000000000);
  MEMORY[0x253070D80](v7, v9);

  MEMORY[0x253070D80](47, 0xE100000000000000);
  v10 = (*(a2 + 8))(a1, a2);
  MEMORY[0x253070D80](v10);

  sub_25130EEB4();
}

HealthAppServices::HAUserActivity::UserActivityVersion __swiftcall NSUserActivityProtocol.versionInfo()()
{
  v2 = v1;
  v3 = (*(v0 + 32))();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  sub_25130F1E4();
  if (!*(v4 + 16) || (v5 = sub_2512F2E64(v9), (v6 & 1) == 0))
  {

    sub_2512F8B54(v9);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  sub_2512F8BA8(*(v4 + 56) + 32 * v5, &v10);
  sub_2512F8B54(v9);

  if (!*(&v11 + 1))
  {
LABEL_10:
    result = sub_2512FBB6C(&v10, sub_2512FB6A4);
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0 || !v9[0])
  {
    goto LABEL_11;
  }

  v8 = v9[0] == 1;
LABEL_12:
  *v2 = v8;
  return result;
}

void sub_2512FB6A4()
{
  if (!qword_27F429C20)
  {
    v0 = sub_25130F144();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429C20);
    }
  }
}

Swift::String_optional __swiftcall NSUserActivityProtocol.fetchUpToDatePluginIdForActivity(since:)(HealthAppServices::HAUserActivity::UserActivityVersion since)
{
  v2 = *since;
  v3 = (*(v1 + 32))();
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  sub_25130F1E4();
  if (!*(v4 + 16) || (v5 = sub_2512F2E64(v12), (v6 & 1) == 0))
  {

    sub_2512F8B54(v12);
LABEL_13:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_14;
  }

  sub_2512F8BA8(*(v4 + 56) + 32 * v5, &v13);
  sub_2512F8B54(v12);

  if (!*(&v14 + 1))
  {
LABEL_14:
    sub_2512FBB6C(&v13, sub_2512FB6A4);
    goto LABEL_15;
  }

  sub_2512FB8F0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v9 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  v7 = v12[0];
  v8 = ([v12[0] integerValue] != 63) | v2;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x8000000251311BA0;
  }

LABEL_16:
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

id NSUserActivityProtocol<>.ensureLatestVersionAndUpgradeIfNeeded()(uint64_t a1)
{
  NSUserActivityProtocol.versionInfo()();
  if (v4[16])
  {
    v1 = v3;
  }

  else
  {
    v4[0] = 0;
    v1 = sub_2512FB93C(v4);
  }

  return v1;
}

unint64_t sub_2512FB8F0()
{
  result = qword_27F429C58;
  if (!qword_27F429C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F429C58);
  }

  return result;
}

void *sub_2512FB93C(char *a1)
{
  v2 = v1;
  v3 = *a1;
  sub_2512F2BD0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310350;
  v13 = 0xEA00000000007965;
  v5 = MEMORY[0x277D837D0];
  sub_25130F1E4();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512FBB6C(inited + 32, sub_2512F2C28);
  v6 = sub_25130EF64();

  [v2 addUserInfoEntriesFromDictionary_];

  v12 = v2;
  v11 = v3;
  v7 = NSUserActivityProtocol.fetchUpToDatePluginIdForActivity(since:)(&v11);
  if (v7.value._object)
  {
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_251310350;
    v12 = 0x614E656C646E7562;
    v13 = 0xEA0000000000656DLL;
    sub_25130F1E4();
    *(v8 + 96) = v5;
    *(v8 + 72) = v7;
    sub_2512F2C8C(v8);
    swift_setDeallocating();
    sub_2512FBB6C(v8 + 32, sub_2512F2C28);
    v9 = sub_25130EF64();

    [v2 addUserInfoEntriesFromDictionary_];
  }

  return v2;
}

uint64_t sub_2512FBB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SharingUUIDDeepLinkingParameter.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130EF24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SharingUUIDDeepLinkingParameter.value.setter(uint64_t a1)
{
  v3 = sub_25130EF24();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SharingUUIDDeepLinkingParameter.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25130EF24();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2512FBD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25130EF24();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2512FBDD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130EF24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2512FBE3C(uint64_t a1)
{
  v3 = sub_25130EF24();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2512FBEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2512FBF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SharingManagementURLData.isSharingProfile(_:)(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_25130EFB4();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  DeepLinkActivityType.init(_:)(v5);
  if (v16 == 18)
  {
    v6 = 0;
  }

  else
  {
    v7 = DeepLinkActivityType.rawValue.getter();
    v9 = v8;
    v10 = [objc_opt_self() healthAppSharingProfilePath];
    v11 = sub_25130EFB4();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_25130F2D4();
    }
  }

  return v6 & 1;
}

uint64_t SharingManagementURLData.url()@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_25130ECE4();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25130EF24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512FCF30(0, &qword_27F429C08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_25130EEC4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512F76E0();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2512FCFEC(v11, &qword_27F429C08, MEMORY[0x277CC9260]);
    return (*(v13 + 56))(v24, 1, 1, v12);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v6 + 16))(v8, v1, v5);
    v17 = _s10Foundation4UUIDV17HealthAppServicesE11toURLStringSSyF_0();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v25 = v17;
    v26 = v19;
    sub_25130ECD4();
    sub_2512F8818();
    v20 = sub_25130F164();
    v22 = v21;
    (*(v2 + 8))(v4, v23);

    sub_251305560(0xEB00000000444955, v20, v22, v24);

    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t static SharingManagementURLData.fromURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2512FCF30(0, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25130EEC4();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = HAURL.queryItems.getter();
  if (v15)
  {
    sub_2512F7B74(v15, v6);

    sub_2512FD0B4(v13, type metadata accessor for HAURL);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_2512FCFEC(v6, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter);
      v16 = 1;
    }

    else
    {
      sub_2512FBF60(v6, v10);
      sub_2512FBF60(v10, a2);
      v16 = 0;
    }
  }

  else
  {
    sub_2512FD0B4(v13, type metadata accessor for HAURL);
    v16 = 1;
  }

  v17 = type metadata accessor for SharingManagementURLData(0);
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

NSUserActivity __swiftcall SharingManagementURLData.userActivity()()
{
  v1 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_25130F214();

  v20 = 0x50676E6972616853;
  v21 = 0xEF2E656C69666F72;
  sub_2512FBEB0(v0, v3);
  v4 = sub_25130EF24();
  sub_2512FD05C();
  v5 = sub_25130F2A4();
  MEMORY[0x253070D80](v5);

  v6 = *(v4 - 8);
  (*(v6 + 8))(v3, v4);
  v7 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
  v8 = sub_25130EF94();
  v9 = [v7 initWithActivityType_];

  v10 = v9;
  v11 = sub_25130EF94();

  [v10 setTitle_];

  [v10 setEligibleForSearch_];
  [v10 setEligibleForHandoff_];
  [v10 setEligibleForPrediction_];

  sub_2512FCF30(0, &qword_280C61358, sub_2512F2C28, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v18 = xmmword_251310350;
  *(inited + 16) = xmmword_251310350;
  v20 = 0x4B6E6F6973726576;
  v21 = 0xEA00000000007965;
  sub_25130F1E4();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512FD0B4(inited + 32, sub_2512F2C28);
  v13 = sub_25130EF64();

  [v10 addUserInfoEntriesFromDictionary_];

  v14 = swift_initStackObject();
  *(v14 + 16) = v18;
  v20 = 0x55676E6972616873;
  v21 = 0xEB00000000444955;
  sub_25130F1E4();
  *(v14 + 96) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v14 + 72));
  (*(v6 + 16))(boxed_opaque_existential_0, v19, v4);
  sub_2512F2C8C(v14);
  swift_setDeallocating();
  sub_2512FD0B4(v14 + 32, sub_2512F2C28);
  v16 = sub_25130EF64();

  [v10 addUserInfoEntriesFromDictionary_];

  return v10;
}

uint64_t static SharingManagementURLData.fromUserActivity(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2512FCF30(0, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512F84A4(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2512FCFEC(v6, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter);
    v11 = 1;
  }

  else
  {
    sub_2512FBF60(v6, v10);
    sub_2512FBF60(v10, a2);
    v11 = 0;
  }

  v12 = type metadata accessor for SharingManagementURLData(0);
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t sub_2512FCD58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2512FCF30(0, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512F84A4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2512FCFEC(v8, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter);
    v13 = 1;
  }

  else
  {
    sub_2512FBF60(v8, v12);
    sub_2512FBF60(v12, a3);
    v13 = 0;
  }

  return (*(*(a2 - 8) + 56))(a3, v13, 1, a2);
}

void sub_2512FCF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2512FCFB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2512FCFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2512FCF30(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2512FD05C()
{
  result = qword_27F429C68;
  if (!qword_27F429C68)
  {
    sub_25130EF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429C68);
  }

  return result;
}

uint64_t sub_2512FD0B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_2512FD2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2512FD394()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2512FD3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t HAURL.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t HAURL.queryItems.getter()
{
  v1 = type metadata accessor for HAURL(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  v8 = sub_25130EE54();
  v9 = [v7 initWithURL:v8 resolvingAgainstBaseURL:0];

  if (v9)
  {
    v10 = [v9 queryItems];
    if (v10)
    {
      v11 = v10;
      sub_25130ED24();
      v12 = sub_25130F0D4();

      return v12;
    }
  }

  if (qword_280C61590 != -1)
  {
    swift_once();
  }

  v14 = sub_25130EF54();
  __swift_project_value_buffer(v14, qword_280C61668);
  sub_251302CD4(v0, v6);
  v15 = sub_25130EF34();
  v16 = sub_25130F114();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, &v24);
    *(v17 + 12) = 2080;
    sub_251302CD4(v6, v4);
    v19 = sub_25130EFD4();
    v21 = v20;
    sub_2513032E8(v6, type metadata accessor for HAURL);
    v22 = sub_251302D38(v19, v21, &v24);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_2512F1000, v15, v16, "[%s] Could not resolve query items for URL: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253071680](v18, -1, -1);
    MEMORY[0x253071680](v17, -1, -1);
  }

  else
  {

    sub_2513032E8(v6, type metadata accessor for HAURL);
  }

  return 0;
}

uint64_t HAURL.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130EEC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *HAURL.objectType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HAURLValidator(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25130EEC4();
  (*(*(v5 - 8) + 16))(v4, v0, v5);
  v6 = sub_25130EEA4();
  if (v7)
  {
    v34[2] = v6;
    v34[3] = v7;
    v8 = objc_opt_self();
    v9 = [v8 internalHealthAppURLScheme];
    v10 = sub_25130EFB4();
    v12 = v11;

    v34[0] = v10;
    v34[1] = v12;
    sub_2512F8818();
    v13 = sub_25130F174();

    if (!v13)
    {
      v24 = sub_25130EE84();
      v26 = v25;
      v27 = [v8 sampleTypeHostName];
      v28 = sub_25130EFB4();
      v30 = v29;

      if (!v26)
      {

        goto LABEL_3;
      }

      if (v24 == v28 && v26 == v30)
      {
      }

      else
      {
        v32 = sub_25130F2D4();

        if ((v32 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v19 = sub_2512FDAA0();
      goto LABEL_15;
    }
  }

LABEL_3:
  v14 = objc_opt_self();
  v15 = [v14 sampleTypeHostName];
  v16 = sub_25130EFB4();
  v18 = v17;

  LOBYTE(v15) = sub_25130CA14(v1, v16, v18);

  if (v15)
  {
    v19 = sub_2512FDDC0();
LABEL_15:
    v31 = v19;
    goto LABEL_16;
  }

  v20 = [v14 dataTypeDetailHostName];
  v21 = sub_25130EFB4();
  v23 = v22;

  LOBYTE(v20) = sub_25130CA14(v1, v21, v23);

  if (v20)
  {
    v19 = sub_2512FE178();
    goto LABEL_15;
  }

  v31 = 0;
LABEL_16:
  sub_2513032E8(v4, type metadata accessor for HAURLValidator);
  return v31;
}

id sub_2512FDAA0()
{
  v1 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25130EE34();
  if (v4[2] < 2uLL || (v4[4] == 47 ? (v6 = v4[5] == 0xE100000000000000) : (v6 = 0), !v6 && (v7 = v4, v8 = sub_25130F2D4(), v4 = v7, (v8 & 1) == 0)))
  {

    return 0;
  }

  v10 = v4[6];
  v9 = v4[7];

  v11 = objc_opt_self();
  v12 = sub_25130EF94();
  v13 = [v11 _typeWithIdentifier_];

  if (!v13)
  {
    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v14 = sub_25130EF54();
    __swift_project_value_buffer(v14, qword_280C61668);
    sub_251302CD4(v0, v3);

    v15 = sub_25130EF34();
    v16 = sub_25130F114();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315651;
      *(v17 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, &v25);
      *(v17 + 12) = 2082;
      v19 = sub_251302D38(v10, v9, &v25);

      *(v17 + 14) = v19;
      *(v17 + 22) = 2081;
      v20 = sub_25130EE24();
      v22 = v21;
      sub_2513032E8(v3, type metadata accessor for HAURL);
      v23 = sub_251302D38(v20, v22, &v25);

      *(v17 + 24) = v23;
      _os_log_impl(&dword_2512F1000, v15, v16, "%s Invalid type identifier %{public}s provided in URL %{private}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253071680](v18, -1, -1);
      MEMORY[0x253071680](v17, -1, -1);
    }

    else
    {

      sub_2513032E8(v3, type metadata accessor for HAURL);
    }

    return 0;
  }

  return v13;
}

id sub_2512FDDC0()
{
  v1 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25130EE34();
  v5 = v4;
  if (v4[2] != 3)
  {
    goto LABEL_12;
  }

  v6 = v4[4] == 47 && v4[5] == 0xE100000000000000;
  if (!v6 && (sub_25130F2D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = v5[6];
  v7 = v5[7];
  v9 = objc_opt_self();

  v10 = [v9 sampleTypeHostName];
  v11 = sub_25130EFB4();
  v13 = v12;

  if (v8 == v11 && v7 == v13)
  {
  }

  else
  {
    v8 = sub_25130F2D4();

    if ((v8 & 1) == 0)
    {
LABEL_12:

      return 0;
    }
  }

  if (v5[2] < 3uLL)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_19:
    v19 = sub_25130EF54();
    __swift_project_value_buffer(v19, qword_280C61668);
    sub_251302CD4(v0, v3);

    v20 = sub_25130EF34();
    v21 = sub_25130F114();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315651;
      *(v22 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, &v30);
      *(v22 + 12) = 2082;
      v24 = sub_251302D38(v8, v7, &v30);

      *(v22 + 14) = v24;
      *(v22 + 22) = 2081;
      v25 = sub_25130EE24();
      v27 = v26;
      sub_2513032E8(v3, type metadata accessor for HAURL);
      v28 = sub_251302D38(v25, v27, &v30);

      *(v22 + 24) = v28;
      _os_log_impl(&dword_2512F1000, v20, v21, "%s Invalid type identifier %{public}s provided in URL %{private}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253071680](v23, -1, -1);
      MEMORY[0x253071680](v22, -1, -1);
    }

    else
    {

      sub_2513032E8(v3, type metadata accessor for HAURL);
    }

    return 0;
  }

  v8 = v5[8];
  v7 = v5[9];

  v16 = objc_opt_self();
  v17 = sub_25130EF94();
  v18 = [v16 _typeWithIdentifier_];

  if (!v18)
  {
    if (qword_280C61590 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  return v18;
}

unsigned __int8 *sub_2512FE178()
{
  v0 = sub_25130ED24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v67 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277CC8958];
  v4 = MEMORY[0x277D83D88];
  sub_251304874(0, &qword_27F429C70, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  sub_251304874(0, &qword_27F429C78, MEMORY[0x277CC8918], v4);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v61 - v12;
  sub_25130ED44();
  sub_251303348(v10, v8, &qword_27F429C70, v3);
  v13 = sub_25130ED84();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_2513033C8(v10, &qword_27F429C70, MEMORY[0x277CC8958]);
LABEL_15:
    v30 = MEMORY[0x277CC8958];
    v31 = v8;
    goto LABEL_16;
  }

  v15 = sub_25130ED34();
  (*(v14 + 8))(v8, v13);
  if (!v15)
  {
    v8 = v10;
    goto LABEL_15;
  }

  v63 = *(v15 + 16);
  if (v63)
  {
    v16 = objc_opt_self();
    v17 = 0;
    v65 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v66 = v16;
    v64 = v1 + 16;
    v62 = (v1 + 8);
    while (v17 < *(v15 + 16))
    {
      v18 = v15;
      v19 = v1;
      v20 = v0;
      (*(v1 + 16))(v67, v65 + *(v1 + 72) * v17, v0);
      v21 = sub_25130ED04();
      v23 = v22;
      v24 = [v66 queryParameterNameDataTypeCode];
      v25 = sub_25130EFB4();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {

LABEL_50:
        sub_2513033C8(v10, &qword_27F429C70, MEMORY[0x277CC8958]);

        v1 = v19;
        v32 = v61;
        v0 = v20;
        (*(v19 + 32))(v61, v67, v20);
        (*(v19 + 56))(v32, 0, 1, v20);
        goto LABEL_17;
      }

      v29 = sub_25130F2D4();

      if (v29)
      {
        goto LABEL_50;
      }

      ++v17;
      v0 = v20;
      (*v62)(v67, v20);
      v1 = v19;
      v15 = v18;
      if (v63 == v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_88;
  }

LABEL_13:

  v30 = MEMORY[0x277CC8958];
  v31 = v10;
LABEL_16:
  sub_2513033C8(v31, &qword_27F429C70, v30);
  v32 = v61;
  (*(v1 + 56))(v61, 1, 1, v0);
LABEL_17:
  if ((*(v1 + 48))(v32, 1, v0) == 1)
  {
    sub_2513033C8(v32, &qword_27F429C78, MEMORY[0x277CC8918]);
    return 0;
  }

  v33 = sub_25130ED14();
  v35 = v34;
  result = (*(v1 + 8))(v32, v0);
  if (!v35)
  {
    return 0;
  }

  v37 = HIBYTE(v35) & 0xF;
  v38 = v33 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v39 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
LABEL_88:

    return 0;
  }

  if ((v35 & 0x1000000000000000) != 0)
  {
    v41 = sub_251303438(v33, v35, 10);
    v59 = v60;
    goto LABEL_84;
  }

  if ((v35 & 0x2000000000000000) != 0)
  {
    v68[0] = v33;
    v68[1] = v35 & 0xFFFFFFFFFFFFFFLL;
    if (v33 == 43)
    {
      if (v37)
      {
        if (--v37)
        {
          v41 = 0;
          v51 = v68 + 1;
          while (1)
          {
            v52 = *v51 - 48;
            if (v52 > 9)
            {
              break;
            }

            v53 = 10 * v41;
            if ((v41 * 10) >> 64 != (10 * v41) >> 63)
            {
              break;
            }

            v41 = v53 + v52;
            if (__OFADD__(v53, v52))
            {
              break;
            }

            ++v51;
            if (!--v37)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }

LABEL_94:
      __break(1u);
      return result;
    }

    if (v33 != 45)
    {
      if (v37)
      {
        v41 = 0;
        v56 = v68;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          v58 = 10 * v41;
          if ((v41 * 10) >> 64 != (10 * v41) >> 63)
          {
            break;
          }

          v41 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          ++v56;
          if (!--v37)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_82;
    }

    if (v37)
    {
      if (--v37)
      {
        v41 = 0;
        v45 = v68 + 1;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v41;
          if ((v41 * 10) >> 64 != (10 * v41) >> 63)
          {
            break;
          }

          v41 = v47 - v46;
          if (__OFSUB__(v47, v46))
          {
            break;
          }

          ++v45;
          if (!--v37)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_82;
    }

    goto LABEL_92;
  }

  if ((v33 & 0x1000000000000000) != 0)
  {
    result = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_25130F224();
  }

  v40 = *result;
  if (v40 == 43)
  {
    if (v38 < 1)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v37 = v38 - 1;
    if (v38 != 1)
    {
      v41 = 0;
      if (result)
      {
        v48 = result + 1;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            goto LABEL_82;
          }

          v50 = 10 * v41;
          if ((v41 * 10) >> 64 != (10 * v41) >> 63)
          {
            goto LABEL_82;
          }

          v41 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            goto LABEL_82;
          }

          ++v48;
          if (!--v37)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_74;
    }

LABEL_82:
    v41 = 0;
    LOBYTE(v37) = 1;
    goto LABEL_83;
  }

  if (v40 != 45)
  {
    if (v38)
    {
      v41 = 0;
      if (result)
      {
        while (1)
        {
          v54 = *result - 48;
          if (v54 > 9)
          {
            goto LABEL_82;
          }

          v55 = 10 * v41;
          if ((v41 * 10) >> 64 != (10 * v41) >> 63)
          {
            goto LABEL_82;
          }

          v41 = v55 + v54;
          if (__OFADD__(v55, v54))
          {
            goto LABEL_82;
          }

          ++result;
          if (!--v38)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_74;
    }

    goto LABEL_82;
  }

  if (v38 < 1)
  {
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v37 = v38 - 1;
  if (v38 == 1)
  {
    goto LABEL_82;
  }

  v41 = 0;
  if (result)
  {
    v42 = result + 1;
    while (1)
    {
      v43 = *v42 - 48;
      if (v43 > 9)
      {
        goto LABEL_82;
      }

      v44 = 10 * v41;
      if ((v41 * 10) >> 64 != (10 * v41) >> 63)
      {
        goto LABEL_82;
      }

      v41 = v44 - v43;
      if (__OFSUB__(v44, v43))
      {
        goto LABEL_82;
      }

      ++v42;
      if (!--v37)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_74:
  LOBYTE(v37) = 0;
LABEL_83:
  v69 = v37;
  v59 = v37;
LABEL_84:

  if (v59)
  {
    return 0;
  }

  return [objc_opt_self() dataTypeWithCode_];
}

uint64_t HAURL.objectTypeAllDataNavigationSampleUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HAURLValidator(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25130EEC4();
  (*(*(v6 - 8) + 16))(v5, v1, v6);
  if ((sub_25130CBC0() & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(sub_25130EE34() + 16) <= 3uLL)
  {

LABEL_4:
    sub_2513032E8(v5, type metadata accessor for HAURLValidator);
    v7 = sub_25130EF24();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  _s10Foundation4UUIDV17HealthAppServicesE13fromURLStringyACSgSSFZ_0();

  return sub_2513032E8(v5, type metadata accessor for HAURLValidator);
}

uint64_t sub_2512FEB2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_25130ED24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CC8958];
  sub_251304874(0, &qword_27F429C70, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = *a1;
  v14 = &v36 - v13;
  sub_25130ED44();
  sub_251303348(v14, v11, &qword_27F429C70, v7);
  v15 = sub_25130ED84();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    sub_2513033C8(v14, &qword_27F429C70, MEMORY[0x277CC8958]);
LABEL_39:
    v33 = MEMORY[0x277CC8958];
    v34 = v11;
    goto LABEL_40;
  }

  v17 = sub_25130ED34();
  result = (*(v16 + 8))(v11, v15);
  if (!v17)
  {
    v11 = v14;
    goto LABEL_39;
  }

  v37 = v14;
  v40 = *(v17 + 16);
  if (v40)
  {
    v19 = 0;
    v42 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v41 = v4 + 16;
    v38 = v17;
    do
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v4 + 16))(v6, v42 + *(v4 + 72) * v19, v3);
      v20 = sub_25130ED04();
      v22 = v21;
      if (v12 > 4)
      {
        if (v12 > 6)
        {
          if (v12 == 7)
          {
            v23 = 0xE200000000000000;
            v24 = 26992;
            goto LABEL_31;
          }

          v43 = v20;
          if (v12 == 8)
          {
            v25 = [objc_opt_self() queryParameterNameTrendOverlay];
          }

          else
          {
            v25 = [objc_opt_self() queryParameterNameSource];
          }

          goto LABEL_30;
        }

        if (v12 == 5)
        {
          v24 = 0x79726F6765746163;
        }

        else
        {
          v24 = 0x656C646E7562;
        }

        if (v12 == 5)
        {
          v23 = 0xE800000000000000;
        }

        else
        {
          v23 = 0xE600000000000000;
        }
      }

      else
      {
        if (v12 <= 1)
        {
          v43 = v20;
          if (v12)
          {
            v25 = [objc_opt_self() queryParameterNameStartDate];
          }

          else
          {
            v25 = [objc_opt_self() queryParameterNameDate];
          }

LABEL_30:
          v29 = v25;
          v24 = sub_25130EFB4();
          v23 = v30;

          v20 = v43;
          v17 = v38;
          goto LABEL_31;
        }

        if (v12 == 2)
        {
          v43 = v20;
          v26 = [objc_opt_self() queryParameterNameEndDate];
        }

        else
        {
          if (v12 == 3)
          {
            v23 = 0xE600000000000000;
            v24 = 0x686372616573;
            goto LABEL_31;
          }

          v43 = v20;
          v26 = [objc_opt_self() queryParameterNameDataTypeCode];
        }

        v27 = v26;
        v24 = sub_25130EFB4();
        v23 = v28;

        v17 = v38;
        v20 = v43;
      }

LABEL_31:
      if (v20 == v24 && v22 == v23)
      {

LABEL_43:
        sub_2513033C8(v37, &qword_27F429C70, MEMORY[0x277CC8958]);

        v35 = v39;
        (*(v4 + 32))(v39, v6, v3);
        return (*(v4 + 56))(v35, 0, 1, v3);
      }

      v32 = sub_25130F2D4();

      if (v32)
      {
        goto LABEL_43;
      }

      ++v19;
      result = (*(v4 + 8))(v6, v3);
    }

    while (v40 != v19);
  }

  v33 = MEMORY[0x277CC8958];
  v34 = v37;
LABEL_40:
  sub_2513033C8(v34, &qword_27F429C70, v33);
  return (*(v4 + 56))(v39, 1, 1, v3);
}

unint64_t sub_2512FF0B8(unint64_t result, unint64_t a2)
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
        result = sub_25130F224();
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

  v6 = sub_251303438(result, a2, 10);
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

id HAURL.profileIdentifier.getter()
{
  v0 = sub_25130EE54();
  v1 = [v0 _hk_extractEncodedHKProfileIdentifier];

  return v1;
}

uint64_t sub_2512FF424@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277CC8918];
  sub_251304874(0, &qword_27F429C78, MEMORY[0x277CC8918], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  LOBYTE(v21) = *a1;
  sub_2512FEB2C(&v21, &v20 - v9);
  sub_251303348(v10, v8, &qword_27F429C78, v4);
  v11 = sub_25130ED24();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_2513033C8(v10, &qword_27F429C78, MEMORY[0x277CC8918]);
    v13 = 1;
    v10 = v8;
  }

  else
  {
    v14 = sub_25130ED14();
    v16 = v15;
    (*(v12 + 8))(v8, v11);
    if (v16 && (v21 = 0, v17 = sub_251304444(v14, v16, &v21), , v17))
    {
      sub_25130EEE4();
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }
  }

  sub_2513033C8(v10, &qword_27F429C78, MEMORY[0x277CC8918]);
  v18 = sub_25130EEF4();
  return (*(*(v18 - 8) + 56))(a2, v13, 1, v18);
}

void *HAURL.source.getter()
{
  v0 = sub_25130ED24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v41 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277CC8958];
  v4 = MEMORY[0x277D83D88];
  sub_251304874(0, &qword_27F429C70, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  sub_251304874(0, &qword_27F429C78, MEMORY[0x277CC8918], v4);
  MEMORY[0x28223BE20](v11 - 8);
  v35 = &v34 - v12;
  sub_25130ED44();
  sub_251303348(v10, v8, &qword_27F429C70, v3);
  v13 = sub_25130ED84();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_2513033C8(v10, &qword_27F429C70, MEMORY[0x277CC8958]);
LABEL_15:
    v30 = MEMORY[0x277CC8958];
    v31 = v8;
LABEL_16:
    sub_2513033C8(v31, &qword_27F429C70, v30);
    v32 = v35;
    (*(v1 + 56))(v35, 1, 1, v0);
LABEL_17:
    if ((*(v1 + 48))(v32, 1, v0) == 1)
    {
      sub_2513033C8(v32, &qword_27F429C78, MEMORY[0x277CC8918]);
      return 0;
    }

    else
    {
      v33 = sub_25130ED14();
      (*(v1 + 8))(v32, v0);
      return v33;
    }
  }

  v15 = sub_25130ED34();
  (*(v14 + 8))(v8, v13);
  if (!v15)
  {
    v8 = v10;
    goto LABEL_15;
  }

  v37 = *(v15 + 16);
  if (!v37)
  {
LABEL_13:

    v30 = MEMORY[0x277CC8958];
    v31 = v10;
    goto LABEL_16;
  }

  result = objc_opt_self();
  v17 = 0;
  v39 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v40 = result;
  v38 = v1 + 16;
  v36 = (v1 + 8);
  while (v17 < *(v15 + 16))
  {
    v18 = v15;
    v19 = v1;
    v20 = v0;
    (*(v1 + 16))(v41, v39 + *(v1 + 72) * v17, v0);
    v21 = sub_25130ED04();
    v23 = v22;
    v24 = [v40 queryParameterNameSource];
    v25 = sub_25130EFB4();
    v27 = v26;

    if (v21 == v25 && v23 == v27)
    {

LABEL_22:
      sub_2513033C8(v10, &qword_27F429C70, MEMORY[0x277CC8958]);

      v1 = v19;
      v32 = v35;
      v0 = v20;
      (*(v19 + 32))(v35, v41, v20);
      (*(v19 + 56))(v32, 0, 1, v20);
      goto LABEL_17;
    }

    v29 = sub_25130F2D4();

    if (v29)
    {
      goto LABEL_22;
    }

    ++v17;
    v0 = v20;
    result = (*v36)(v41, v20);
    v1 = v19;
    v15 = v18;
    if (v37 == v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t HAURL.pluginBundleName.getter()
{
  v1 = type metadata accessor for HAURLValidator(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25130EEC4();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  v5 = sub_25130EEA4();
  if (v6 && (v28 = v5, v29 = v6, v7 = [objc_opt_self() internalHealthAppURLScheme], v8 = sub_25130EFB4(), v10 = v9, v7, v27[2] = v8, v27[3] = v10, sub_2512F8818(), v11 = sub_25130F174(), , , !v11) && (v13 = sub_25130EE84(), v14))
  {
    v28 = 46;
    v29 = 0xE100000000000000;
    v15 = MEMORY[0x28223BE20](v13);
    v27[-2] = &v28;
    v16 = v15;
    v18 = v17;

    v19 = v16;
    v21 = sub_2513025BC(0x7FFFFFFFFFFFFFFFLL, 1, sub_25130453C, &v27[-4], v16, v18, v20);
    if (v21[2] == 2)
    {
      v22 = v21[8];
      v23 = v21[9];
      v24 = v21[10];
      v25 = v21[11];

      v26 = sub_251304594(v22, v23, v24, v25, 0x6C7068746C616568, 0xEC0000006E696775);

      sub_2513032E8(v3, type metadata accessor for HAURLValidator);
      if (v26)
      {
        return v19;
      }
    }

    else
    {
      sub_2513032E8(v3, type metadata accessor for HAURLValidator);
    }
  }

  else
  {
    sub_2513032E8(v3, type metadata accessor for HAURLValidator);
  }

  return 0;
}

unsigned __int8 *HAURL.trendTimescope.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25130ED24();
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_251304874(0, &qword_27F429C78, MEMORY[0x277CC8918], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v109 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v110 = &v107 - v12;
  sub_251304874(0, &qword_27F429C70, MEMORY[0x277CC8958], v8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v111 = &v107 - v17;
  v18 = type metadata accessor for HAURLValidator(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25130EEC4();
  (*(*(v21 - 8) + 16))(v20, v0, v21);
  v22 = sub_25130EEA4();
  if (!v23)
  {
    goto LABEL_3;
  }

  v117 = v22;
  v118 = v23;
  v24 = objc_opt_self();
  v25 = [v24 internalHealthAppURLScheme];
  v26 = sub_25130EFB4();
  v114 = v20;
  v28 = v27;

  v115 = v26;
  v116 = v28;
  sub_2512F8818();
  v29 = sub_25130F174();

  v20 = v114;

  if (v29)
  {
    goto LABEL_3;
  }

  v32 = sub_25130EE84();
  v34 = v33;
  v35 = [v24 sampleTypeHostName];
  v36 = sub_25130EFB4();
  v38 = v37;

  if (!v34)
  {

    v20 = v114;
    goto LABEL_3;
  }

  if (v32 == v36 && v34 == v38)
  {

    v20 = v114;
  }

  else
  {
    v39 = sub_25130F2D4();

    v20 = v114;
    if ((v39 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v40 = *(sub_25130EE34() + 16);

  if (v40 != 2)
  {
    goto LABEL_3;
  }

  v41 = sub_25130EE34();
  if (!v41[2])
  {

    goto LABEL_3;
  }

  v43 = v41[4];
  v42 = v41[5];

  if (v43 == 47 && v42 == 0xE100000000000000)
  {
  }

  else
  {
    v44 = sub_25130F2D4();

    if ((v44 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v45 = (sub_25130EE34() + 16);
  if (!*v45)
  {
LABEL_114:
    sub_2513032E8(v20, type metadata accessor for HAURLValidator);

    return 0;
  }

  v46 = &v45[2 * *v45];
  v47 = *v46;
  v48 = v46[1];

  v49 = objc_opt_self();
  v108 = v47;
  v50 = sub_25130EF94();
  v51 = [v49 _typeWithIdentifier_];

  if (!v51)
  {
    v55 = v108;
    if (qword_280C61590 == -1)
    {
LABEL_24:
      v56 = sub_25130EF54();
      __swift_project_value_buffer(v56, qword_280C61668);
      sub_251302CD4(v1, v4);

      v57 = sub_25130EF34();
      v58 = v48;
      v59 = sub_25130F114();

      if (os_log_type_enabled(v57, v59))
      {
        v60 = swift_slowAlloc();
        v61 = v20;
        v62 = swift_slowAlloc();
        v117 = v62;
        *v60 = 136315651;
        *(v60 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, &v117);
        *(v60 + 12) = 2082;
        v63 = sub_251302D38(v55, v58, &v117);

        *(v60 + 14) = v63;
        *(v60 + 22) = 2081;
        v64 = sub_25130EE24();
        v66 = v65;
        sub_2513032E8(v4, type metadata accessor for HAURL);
        v67 = sub_251302D38(v64, v66, &v117);

        *(v60 + 24) = v67;
        _os_log_impl(&dword_2512F1000, v57, v59, "%s Invalid type identifier %{public}s provided in URL %{private}s with trend", v60, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253071680](v62, -1, -1);
        MEMORY[0x253071680](v60, -1, -1);

        v30 = v61;
        goto LABEL_4;
      }

      sub_2513032E8(v4, type metadata accessor for HAURL);
LABEL_3:
      v30 = v20;
LABEL_4:
      sub_2513032E8(v30, type metadata accessor for HAURLValidator);
      return 0;
    }

LABEL_112:
    swift_once();
    goto LABEL_24;
  }

  v52 = v111;
  sub_25130ED44();
  sub_251303348(v52, v16, &qword_27F429C70, MEMORY[0x277CC8958]);
  v53 = sub_25130ED84();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v16, 1, v53) == 1)
  {
    sub_2513033C8(v16, &qword_27F429C70, MEMORY[0x277CC8958]);
    v48 = v112;
LABEL_37:
    v77 = v110;
    v55 = v113;
    (*(v48 + 56))(v110, 1, 1, v113);
    goto LABEL_42;
  }

  v4 = sub_25130ED34();
  (*(v54 + 8))(v16, v53);
  v48 = v112;
  if (!v4)
  {
    goto LABEL_37;
  }

  v55 = v113;
  v107 = *(v4 + 2);
  if (v107)
  {
    v1 = 0;
    v108 = v112 + 16;
    v20 = (v112 + 8);
    while (v1 < *(v4 + 2))
    {
      (*(v48 + 16))(v7, &v4[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v1], v55);
      v68 = sub_25130ED04();
      v70 = v69;
      v71 = [v24 queryParameterNameTrendOverlay];
      v72 = sub_25130EFB4();
      v74 = v73;

      if (v68 == v72 && v70 == v74)
      {

LABEL_40:

        v48 = v112;
        v55 = v113;
        v77 = v110;
        (*(v112 + 32))(v110, v7, v113);
        (*(v48 + 56))(v77, 0, 1, v55);
        goto LABEL_41;
      }

      v76 = sub_25130F2D4();

      if (v76)
      {
        goto LABEL_40;
      }

      ++v1;
      v55 = v113;
      (*v20)(v7, v113);
      v48 = v112;
      if (v107 == v1)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_112;
  }

LABEL_36:

  v77 = v110;
  (*(v48 + 56))(v110, 1, 1, v55);
LABEL_41:
  v20 = v114;
LABEL_42:
  v78 = v109;
  sub_251303348(v77, v109, &qword_27F429C78, MEMORY[0x277CC8918]);
  if ((*(v48 + 48))(v78, 1, v55) == 1)
  {
    v79 = MEMORY[0x277CC8918];
    sub_2513033C8(v77, &qword_27F429C78, MEMORY[0x277CC8918]);
    sub_2513033C8(v111, &qword_27F429C70, MEMORY[0x277CC8958]);
    sub_2513032E8(v20, type metadata accessor for HAURLValidator);
    sub_2513033C8(v78, &qword_27F429C78, v79);
    return 0;
  }

  v80 = sub_25130ED14();
  v82 = v81;
  result = (*(v48 + 8))(v78, v55);
  if (!v82)
  {
    sub_2513033C8(v77, &qword_27F429C78, MEMORY[0x277CC8918]);
    sub_2513033C8(v111, &qword_27F429C70, MEMORY[0x277CC8958]);
    goto LABEL_3;
  }

  v83 = HIBYTE(v82) & 0xF;
  v84 = v80 & 0xFFFFFFFFFFFFLL;
  if ((v82 & 0x2000000000000000) != 0)
  {
    v85 = HIBYTE(v82) & 0xF;
  }

  else
  {
    v85 = v80 & 0xFFFFFFFFFFFFLL;
  }

  if (!v85)
  {
    sub_2513033C8(v77, &qword_27F429C78, MEMORY[0x277CC8918]);
    sub_2513033C8(v111, &qword_27F429C70, MEMORY[0x277CC8958]);
    goto LABEL_114;
  }

  if ((v82 & 0x1000000000000000) == 0)
  {
    if ((v82 & 0x2000000000000000) != 0)
    {
      v117 = v80;
      v118 = v82 & 0xFFFFFFFFFFFFFFLL;
      if (v80 == 43)
      {
        if (v83)
        {
          if (--v83)
          {
            v87 = 0;
            v97 = &v117 + 1;
            while (1)
            {
              v98 = *v97 - 48;
              if (v98 > 9)
              {
                break;
              }

              v99 = 10 * v87;
              if ((v87 * 10) >> 64 != (10 * v87) >> 63)
              {
                break;
              }

              v87 = v99 + v98;
              if (__OFADD__(v99, v98))
              {
                break;
              }

              ++v97;
              if (!--v83)
              {
                goto LABEL_107;
              }
            }
          }

          goto LABEL_106;
        }

LABEL_120:
        __break(1u);
        return result;
      }

      if (v80 != 45)
      {
        if (v83)
        {
          v87 = 0;
          v102 = &v117;
          while (1)
          {
            v103 = *v102 - 48;
            if (v103 > 9)
            {
              break;
            }

            v104 = 10 * v87;
            if ((v87 * 10) >> 64 != (10 * v87) >> 63)
            {
              break;
            }

            v87 = v104 + v103;
            if (__OFADD__(v104, v103))
            {
              break;
            }

            v102 = (v102 + 1);
            if (!--v83)
            {
              goto LABEL_107;
            }
          }
        }

        goto LABEL_106;
      }

      if (v83)
      {
        if (--v83)
        {
          v87 = 0;
          v91 = &v117 + 1;
          while (1)
          {
            v92 = *v91 - 48;
            if (v92 > 9)
            {
              break;
            }

            v93 = 10 * v87;
            if ((v87 * 10) >> 64 != (10 * v87) >> 63)
            {
              break;
            }

            v87 = v93 - v92;
            if (__OFSUB__(v93, v92))
            {
              break;
            }

            ++v91;
            if (!--v83)
            {
              goto LABEL_107;
            }
          }
        }

        goto LABEL_106;
      }
    }

    else
    {
      if ((v80 & 0x1000000000000000) != 0)
      {
        result = ((v82 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_25130F224();
      }

      v86 = *result;
      if (v86 == 43)
      {
        if (v84 >= 1)
        {
          v83 = v84 - 1;
          if (v84 != 1)
          {
            v87 = 0;
            if (result)
            {
              v94 = result + 1;
              while (1)
              {
                v95 = *v94 - 48;
                if (v95 > 9)
                {
                  goto LABEL_106;
                }

                v96 = 10 * v87;
                if ((v87 * 10) >> 64 != (10 * v87) >> 63)
                {
                  goto LABEL_106;
                }

                v87 = v96 + v95;
                if (__OFADD__(v96, v95))
                {
                  goto LABEL_106;
                }

                ++v94;
                if (!--v83)
                {
                  goto LABEL_107;
                }
              }
            }

            goto LABEL_98;
          }

          goto LABEL_106;
        }

        goto LABEL_119;
      }

      if (v86 != 45)
      {
        if (v84)
        {
          v87 = 0;
          if (result)
          {
            while (1)
            {
              v100 = *result - 48;
              if (v100 > 9)
              {
                goto LABEL_106;
              }

              v101 = 10 * v87;
              if ((v87 * 10) >> 64 != (10 * v87) >> 63)
              {
                goto LABEL_106;
              }

              v87 = v101 + v100;
              if (__OFADD__(v101, v100))
              {
                goto LABEL_106;
              }

              ++result;
              if (!--v84)
              {
                goto LABEL_98;
              }
            }
          }

          goto LABEL_98;
        }

LABEL_106:
        v87 = 0;
        LOBYTE(v83) = 1;
        goto LABEL_107;
      }

      if (v84 >= 1)
      {
        v83 = v84 - 1;
        if (v84 != 1)
        {
          v87 = 0;
          if (result)
          {
            v88 = result + 1;
            while (1)
            {
              v89 = *v88 - 48;
              if (v89 > 9)
              {
                goto LABEL_106;
              }

              v90 = 10 * v87;
              if ((v87 * 10) >> 64 != (10 * v87) >> 63)
              {
                goto LABEL_106;
              }

              v87 = v90 - v89;
              if (__OFSUB__(v90, v89))
              {
                goto LABEL_106;
              }

              ++v88;
              if (!--v83)
              {
                goto LABEL_107;
              }
            }
          }

LABEL_98:
          LOBYTE(v83) = 0;
LABEL_107:
          LOBYTE(v115) = v83;
          v105 = v83;
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      __break(1u);
    }

    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v87 = sub_251303438(v80, v82, 10);
  v105 = v106;
LABEL_108:
  sub_2513033C8(v77, &qword_27F429C78, MEMORY[0x277CC8918]);
  sub_2513033C8(v111, &qword_27F429C70, MEMORY[0x277CC8958]);
  sub_2513032E8(v20, type metadata accessor for HAURLValidator);

  if (v105)
  {
    return 0;
  }

  else
  {
    return v87;
  }
}

uint64_t static HAURL.createURLComponents(pluginBundleName:)(uint64_t a1, uint64_t a2)
{
  sub_25130ED74();
  v4 = [objc_opt_self() internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_25130ED64();

  return MEMORY[0x253070AC0](a1, a2);
}

uint64_t static HAURL.appendProfileIdentifier(to:profileIdentifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_25130EE54();
  v6 = [v4 _hk_appendQueryParameterToURL_forHKProfileIdentifier_];

  if (v6)
  {
    sub_25130EE64();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_25130EEC4();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

Swift::OpaquePointer_optional __swiftcall HAURL.createUserActivityDictionary()()
{
  v1 = v0;
  v169[5] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HAURLValidator(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25130ED24();
  v164 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  v12 = sub_25130EE54();
  v13 = [v11 initWithURL:v12 resolvingAgainstBaseURL:0];

  if (v13)
  {
    v15 = [v13 queryItems];
    v152 = v13;
    if (v15)
    {
      v16 = v15;
      v17 = sub_25130F0D4();
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v18 = sub_2512F2C8C(MEMORY[0x277D84F90]);
    v163 = *(v17 + 16);
    if (v163)
    {
      v151 = v4;
      v20 = 0;
      v153 = 0;
      v162 = v17 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
      v161 = v164 + 16;
      v149 = 0x8000000251311620;
      v148 = 0x8000000251311600;
      v160 = (v164 + 8);
      *&v19 = 136315394;
      v150 = v19;
      v157 = v1;
      v155 = v7;
      v156 = v8;
      v159 = v17;
      while (1)
      {
        if (v20 >= *(v17 + 16))
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
        }

        (*(v164 + 16))(v10, v162 + *(v164 + 72) * v20, v8);
        v22._countAndFlagsBits = sub_25130ED04();
        QueryParameterName.init(paramName:)(v22);
        v23 = LOBYTE(v169[0]);
        if (LOBYTE(v169[0]) == 10 || (v24 = sub_25130ED14(), !v25))
        {
          v29 = sub_25130ED14();
          if (v30)
          {
            v31 = v29;
            v32 = v30;
            *&v167 = sub_25130ED04();
            *(&v167 + 1) = v33;
            v34 = MEMORY[0x277D837D0];
            sub_25130F1E4();
            v168 = v34;
            *&v167 = v31;
            *(&v167 + 1) = v32;
            sub_2512F2EA8(&v167, v166);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v165 = v18;
            v36 = sub_2512F2E64(v169);
            v38 = v18[2];
            v39 = (v37 & 1) == 0;
            v40 = __OFADD__(v38, v39);
            v41 = v38 + v39;
            if (v40)
            {
              goto LABEL_160;
            }

            v42 = v37;
            if (v18[3] >= v41)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v133 = v36;
                sub_2513042AC();
                v36 = v133;
              }
            }

            else
            {
              sub_251303E38(v41, isUniquelyReferenced_nonNull_native);
              v36 = sub_2512F2E64(v169);
              if ((v42 & 1) != (v43 & 1))
              {
                goto LABEL_164;
              }
            }

            v17 = v159;
            v18 = v165;
            if (v42)
            {
              v21 = (v165[7] + 32 * v36);
              __swift_destroy_boxed_opaque_existential_0(v21);
              sub_2512F2EA8(v166, v21);
              sub_2512F8B54(v169);
              (*v160)(v10, v8);
            }

            else
            {
              v165[(v36 >> 6) + 8] |= 1 << v36;
              v44 = v36;
              sub_25130460C(v169, v18[6] + 40 * v36);
              sub_2512F2EA8(v166, (v18[7] + 32 * v44));
              sub_2512F8B54(v169);
              (*v160)(v10, v8);
              v45 = v18[2];
              v40 = __OFADD__(v45, 1);
              v46 = v45 + 1;
              if (v40)
              {
                goto LABEL_161;
              }

              v18[2] = v46;
            }

            goto LABEL_9;
          }

          (*v160)(v10, v8);
          goto LABEL_22;
        }

        v26 = v25;
        v158 = v24;
        v27 = sub_25130EEC4();
        (*(*(v27 - 8) + 16))(v7, v1, v27);
        LOBYTE(v169[0]) = v23;
        if (QueryParameterName.rawValue.getter() == 26992 && v28 == 0xE200000000000000)
        {
        }

        else
        {
          v47 = sub_25130F2D4();

          if ((v47 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v48 = sub_25130EE54();
        v49 = [v48 _hk_extractEncodedHKProfileIdentifier];

        if (!v49)
        {
LABEL_36:
          LOBYTE(v169[0]) = v23;
          Parameter = QueryParameterName.rawValue.getter();
          v61 = v60;
          v154 = objc_opt_self();
          v62 = [v154 queryParameterNameDataTypeCode];
          v63 = sub_25130EFB4();
          v65 = v64;

          if (Parameter == v63 && v61 == v65)
          {

            goto LABEL_53;
          }

          v66 = sub_25130F2D4();

          if (v66)
          {
            goto LABEL_53;
          }

          LOBYTE(v169[0]) = v23;
          if (QueryParameterName.rawValue.getter() == 0x79726F6765746163 && v67 == 0xE800000000000000)
          {

            goto LABEL_53;
          }

          v82 = sub_25130F2D4();

          if (v82)
          {
LABEL_53:

            sub_2512FF0B8(v158, v26);
            if (v83)
            {
              goto LABEL_54;
            }

            if (v23 <= 4)
            {
              v1 = v157;
              v7 = v155;
              v8 = v156;
              v17 = v159;
              if (v23 > 1)
              {
                if (v23 == 2)
                {
                  v91 = 0xE700000000000000;
                  v92 = 0x65746144646E65;
                }

                else if (v23 == 3)
                {
                  v91 = 0xE500000000000000;
                  v92 = 0x7972657571;
                }

                else
                {
                  v92 = 0x6570795461746164;
                  v91 = 0xEC00000065646F43;
                }

                goto LABEL_134;
              }

              if (!v23)
              {
                v91 = 0xE400000000000000;
                v92 = 1702125924;
                goto LABEL_134;
              }

              v92 = 0x7461447472617473;
LABEL_132:
              v91 = 0xE900000000000065;
              goto LABEL_134;
            }

            v1 = v157;
            v7 = v155;
            v8 = v156;
            v17 = v159;
            if (v23 > 6)
            {
              if (v23 == 7)
              {
                v92 = 0xD000000000000011;
                v91 = v149;
                goto LABEL_134;
              }

              if (v23 == 8)
              {
                v92 = 0x6D6954646E657274;
                v91 = 0xEE0065706F637365;
                goto LABEL_134;
              }

              v92 = 0x6372756F536C7275;
              goto LABEL_132;
            }

            if (v23 == 5)
            {
              v92 = 0xD000000000000011;
              v91 = v148;
            }

            else
            {
              v91 = 0xEA0000000000656DLL;
              v92 = 0x614E656C646E7562;
            }

LABEL_134:
            *&v167 = v92;
            *(&v167 + 1) = v91;
            sub_25130F1E4();
            v129 = sub_25130F0F4();
            v168 = sub_2512FB8F0();
            *&v167 = v129;
LABEL_151:
            sub_2512F2EA8(&v167, v166);
            v132 = swift_isUniquelyReferenced_nonNull_native();
            v165 = v18;
            sub_2513040E4(v166, v169, v132);
            sub_2512F8B54(v169);
            sub_2513032E8(v7, type metadata accessor for HAURL);
            (*v160)(v10, v8);
            v18 = v165;
            goto LABEL_9;
          }

LABEL_54:
          LOBYTE(v169[0]) = v23;
          v84 = QueryParameterName.rawValue.getter();
          v86 = v85;
          v87 = [v154 queryParameterNameDate];
          v88 = sub_25130EFB4();
          v90 = v89;

          if (v84 == v88 && v86 == v90)
          {
LABEL_56:

            v1 = v157;
            goto LABEL_63;
          }

          v93 = sub_25130F2D4();

          v1 = v157;
          if ((v93 & 1) == 0)
          {
            LOBYTE(v169[0]) = v23;
            v101 = QueryParameterName.rawValue.getter();
            v103 = v102;
            v104 = [v154 queryParameterNameStartDate];
            v105 = sub_25130EFB4();
            v107 = v106;

            if (v101 == v105 && v103 == v107)
            {
              goto LABEL_56;
            }

            v108 = sub_25130F2D4();

            v1 = v157;
            if ((v108 & 1) == 0)
            {
              LOBYTE(v169[0]) = v23;
              v109 = QueryParameterName.rawValue.getter();
              v111 = v110;
              v112 = [v154 queryParameterNameEndDate];
              v113 = sub_25130EFB4();
              v115 = v114;

              if (v109 == v113 && v111 == v115)
              {
                goto LABEL_56;
              }

              v116 = sub_25130F2D4();

              v1 = v157;
              if ((v116 & 1) == 0)
              {
                v7 = v155;
                v8 = v156;
                v17 = v159;
                v94 = v158;
                if (v23 > 4)
                {
LABEL_85:
                  if (v23 <= 6)
                  {
                    if (v23 == 5)
                    {
                      v100 = 0xD000000000000011;
                      v99 = v148;
                    }

                    else
                    {
                      v99 = 0xEA0000000000656DLL;
                      v100 = 0x614E656C646E7562;
                    }

                    goto LABEL_142;
                  }

                  if (v23 == 7)
                  {
                    v100 = 0xD000000000000011;
                    v99 = v149;
                    goto LABEL_142;
                  }

                  if (v23 == 8)
                  {
                    v100 = 0x6D6954646E657274;
                    v99 = 0xEE0065706F637365;
LABEL_142:
                    *&v167 = v100;
                    *(&v167 + 1) = v99;
                    v130 = MEMORY[0x277D837D0];
                    sub_25130F1E4();
                    v168 = v130;
                    *&v167 = v94;
                    *(&v167 + 1) = v26;
                    goto LABEL_151;
                  }

                  v100 = 0x6372756F536C7275;
                  goto LABEL_140;
                }

LABEL_70:
                if (v23 > 1)
                {
                  if (v23 == 2)
                  {
                    v99 = 0xE700000000000000;
                    v100 = 0x65746144646E65;
                  }

                  else if (v23 == 3)
                  {
                    v99 = 0xE500000000000000;
                    v100 = 0x7972657571;
                  }

                  else
                  {
                    v100 = 0x6570795461746164;
                    v99 = 0xEC00000065646F43;
                  }

                  goto LABEL_142;
                }

                if (!v23)
                {
                  v99 = 0xE400000000000000;
                  v100 = 1702125924;
                  goto LABEL_142;
                }

                v100 = 0x7461447472617473;
LABEL_140:
                v99 = 0xE900000000000065;
                goto LABEL_142;
              }
            }
          }

LABEL_63:
          v169[0] = 0;
          v94 = v158;
          v95 = v153;
          v96 = sub_251304444(v158, v26, v169);
          v153 = v95;
          if (!v96)
          {
            v7 = v155;
            v8 = v156;
            v17 = v159;
            if (v23 > 4)
            {
              goto LABEL_85;
            }

            goto LABEL_70;
          }

          v7 = v155;
          v8 = v156;
          v17 = v159;
          if (v23 > 4)
          {
            if (v23 <= 6)
            {
              if (v23 == 5)
              {
                v98 = 0xD000000000000011;
                v97 = v148;
              }

              else
              {
                v97 = 0xEA0000000000656DLL;
                v98 = 0x614E656C646E7562;
              }

              goto LABEL_150;
            }

            if (v23 == 7)
            {
              v98 = 0xD000000000000011;
              v97 = v149;
              goto LABEL_150;
            }

            if (v23 == 8)
            {
              v98 = 0x6D6954646E657274;
              v97 = 0xEE0065706F637365;
LABEL_150:
              v131 = v169[0];
              *&v167 = v98;
              *(&v167 + 1) = v97;
              sub_25130F1E4();
              v168 = MEMORY[0x277D839F8];
              *&v167 = v131;
              goto LABEL_151;
            }

            v98 = 0x6372756F536C7275;
          }

          else
          {
            if (v23 > 1)
            {
              if (v23 == 2)
              {
                v97 = 0xE700000000000000;
                v98 = 0x65746144646E65;
              }

              else if (v23 == 3)
              {
                v97 = 0xE500000000000000;
                v98 = 0x7972657571;
              }

              else
              {
                v98 = 0x6570795461746164;
                v97 = 0xEC00000065646F43;
              }

              goto LABEL_150;
            }

            if (!v23)
            {
              v97 = 0xE400000000000000;
              v98 = 1702125924;
              goto LABEL_150;
            }

            v98 = 0x7461447472617473;
          }

          v97 = 0xE900000000000065;
          goto LABEL_150;
        }

        v50 = objc_opt_self();
        v169[0] = 0;
        v51 = [v50 archivedDataWithRootObject:v49 requiringSecureCoding:1 error:v169];
        v52 = v169[0];
        if (!v51)
        {
          v158 = v49;
          v68 = v52;
          v69 = sub_25130EE04();

          swift_willThrow();
          if (qword_280C61590 != -1)
          {
            swift_once();
          }

          v153 = 0;
          v70 = sub_25130EF54();
          __swift_project_value_buffer(v70, qword_280C61668);
          v71 = v69;
          v72 = sub_25130EF34();
          v73 = sub_25130F114();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v169[0] = v154;
            *v74 = v150;
            *(v74 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, v169);
            *(v74 + 12) = 2080;
            ErrorValue = swift_getErrorValue();
            MEMORY[0x28223BE20](ErrorValue);
            (*(v77 + 16))(&v148 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
            v78 = sub_25130EFD4();
            v80 = sub_251302D38(v78, v79, v169);
            v7 = v155;

            *(v74 + 14) = v80;
            v1 = v157;
            _os_log_impl(&dword_2512F1000, v72, v73, "%s Failed to encode data with error %s", v74, 0x16u);
            v81 = v154;
            swift_arrayDestroy();
            MEMORY[0x253071680](v81, -1, -1);
            MEMORY[0x253071680](v74, -1, -1);
          }

          sub_2513032E8(v7, type metadata accessor for HAURL);
          v8 = v156;
          (*v160)(v10, v156);
LABEL_22:
          v17 = v159;
          goto LABEL_9;
        }

        v53 = sub_25130EED4();
        v55 = v54;

        v56 = v49;
        if (v23 > 4)
        {
          if (v23 <= 6)
          {
            if (v23 == 5)
            {
              v58 = 0xD000000000000011;
              v57 = v148;
            }

            else
            {
              v57 = 0xEA0000000000656DLL;
              v58 = 0x614E656C646E7562;
            }

            goto LABEL_108;
          }

          if (v23 == 7)
          {
            v58 = 0xD000000000000011;
            v57 = v149;
          }

          else
          {
            if (v23 != 8)
            {
              v58 = 0x6372756F536C7275;
LABEL_106:
              v57 = 0xE900000000000065;
              goto LABEL_108;
            }

            v58 = 0x6D6954646E657274;
            v57 = 0xEE0065706F637365;
          }
        }

        else
        {
          if (v23 > 1)
          {
            if (v23 == 2)
            {
              v57 = 0xE700000000000000;
              v58 = 0x65746144646E65;
            }

            else if (v23 == 3)
            {
              v57 = 0xE500000000000000;
              v58 = 0x7972657571;
            }

            else
            {
              v58 = 0x6570795461746164;
              v57 = 0xEC00000065646F43;
            }

            goto LABEL_108;
          }

          if (v23)
          {
            v58 = 0x7461447472617473;
            goto LABEL_106;
          }

          v57 = 0xE400000000000000;
          v58 = 1702125924;
        }

LABEL_108:
        *&v167 = v58;
        *(&v167 + 1) = v57;
        sub_25130F1E4();
        v168 = MEMORY[0x277CC9318];
        *&v167 = v53;
        *(&v167 + 1) = v55;
        sub_2512F2EA8(&v167, v166);
        sub_251304668(v53, v55);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v18;
        v118 = sub_2512F2E64(v169);
        v120 = v18[2];
        v121 = (v119 & 1) == 0;
        v40 = __OFADD__(v120, v121);
        v122 = v120 + v121;
        if (v40)
        {
          goto LABEL_162;
        }

        v123 = v119;
        if (v18[3] >= v122)
        {
          if ((v117 & 1) == 0)
          {
            v134 = v118;
            sub_2513042AC();
            v118 = v134;
          }
        }

        else
        {
          sub_251303E38(v122, v117);
          v118 = sub_2512F2E64(v169);
          if ((v123 & 1) != (v124 & 1))
          {
LABEL_164:
            v147 = sub_25130F2F4();
            __break(1u);
            goto LABEL_165;
          }
        }

        v8 = v156;
        v18 = v165;
        if (v123)
        {
          v125 = (v165[7] + 32 * v118);
          __swift_destroy_boxed_opaque_existential_0(v125);
          sub_2512F2EA8(v166, v125);
          sub_2513046BC(v53, v55);

          sub_2512F8B54(v169);
          v7 = v155;
          sub_2513032E8(v155, type metadata accessor for HAURL);
          (*v160)(v10, v8);
        }

        else
        {
          v165[(v118 >> 6) + 8] |= 1 << v118;
          v126 = v118;
          sub_25130460C(v169, v18[6] + 40 * v118);
          sub_2512F2EA8(v166, (v18[7] + 32 * v126));
          sub_2513046BC(v53, v55);

          sub_2512F8B54(v169);
          v7 = v155;
          sub_2513032E8(v155, type metadata accessor for HAURL);
          (*v160)(v10, v8);
          v127 = v18[2];
          v40 = __OFADD__(v127, 1);
          v128 = v127 + 1;
          if (v40)
          {
            goto LABEL_163;
          }

          v18[2] = v128;
        }

        v17 = v159;
        v1 = v157;
LABEL_9:
        if (v163 == ++v20)
        {

          v4 = v151;
          goto LABEL_154;
        }
      }
    }

LABEL_154:
    v135 = sub_25130EEC4();
    (*(*(v135 - 8) + 16))(v4, v1, v135);
    v136 = sub_25130EEA4();
    if (v137 && (v169[0] = v136, v169[1] = v137, v138 = [objc_opt_self() internalHealthAppURLScheme], v139 = sub_25130EFB4(), v141 = v140, v138, *&v167 = v139, *(&v167 + 1) = v141, sub_2512F8818(), v142 = MEMORY[0x277D837D0], v143 = sub_25130F174(), , , !v143))
    {
      *&v167 = 0x63536D6F74737563;
      *(&v167 + 1) = 0xEF4C5255656D6568;
      sub_25130F1E4();
      v144 = sub_25130EE24();
      v168 = v142;
      *&v167 = v144;
      *(&v167 + 1) = v145;
      sub_2512F2EA8(&v167, v166);
      v146 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v18;
      sub_2513040E4(v166, v169, v146);

      sub_2512F8B54(v169);
      sub_2513032E8(v4, type metadata accessor for HAURLValidator);
      v18 = v165;
    }

    else
    {
      sub_2513032E8(v4, type metadata accessor for HAURLValidator);
    }
  }

  else
  {
    v18 = 0;
  }

  v147 = v18;
LABEL_165:
  result.value._rawValue = v147;
  result.is_nil = v14;
  return result;
}

unint64_t sub_2513025BC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25130F0B4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_251302B78(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_251302B78((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25130F094();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25130F004();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25130F004();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25130F0B4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_251302B78(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25130F0B4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_251302B78(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_251302B78((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25130F004();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_25130297C(void *result, int64_t a2, char a3, void *a4)
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

  sub_251304874(0, &qword_27F429C88, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v10 = *(sub_25130ED24() - 8);
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
  v15 = *(sub_25130ED24() - 8);
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

char *sub_251302B78(char *result, int64_t a2, char a3, char *a4)
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
    sub_251304828(0, &qword_280C61360, MEMORY[0x277D83E40]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for HAURL(uint64_t a1)
{
  result = qword_280C61448;
  if (!qword_280C61448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251302CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HAURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_251302D38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251302E04(v11, 0, 0, 1, a1, a2);
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
    sub_2512F8BA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251302E04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251302F10(a5, a6);
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
    result = sub_25130F224();
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

void *sub_251302F10(uint64_t a1, unint64_t a2)
{
  v3 = sub_251302F5C(a1, a2);
  sub_25130308C(&unk_286359A40);
  return v3;
}

void *sub_251302F5C(uint64_t a1, unint64_t a2)
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

  v6 = sub_251303178(v5, 0);
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

  result = sub_25130F224();
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
        v10 = sub_25130F024();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251303178(v10, 0);
        result = sub_25130F1F4();
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

uint64_t sub_25130308C(uint64_t result)
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

  result = sub_2513031F0(result, v11, 1, v3);
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

void *sub_251303178(uint64_t a1, uint64_t a2)
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

  sub_251304828(0, &qword_27F429C80, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2513031F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251304828(0, &qword_27F429C80, MEMORY[0x277D84B78]);
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

uint64_t sub_2513032E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251303348(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251304874(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2513033C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251304874(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unsigned __int8 *sub_251303438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25130F0A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2513039C4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25130F224();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2513039C4(uint64_t a1, unint64_t a2)
{
  v2 = sub_25130F0B4();
  v6 = sub_251303A44(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_251303A44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25130F154();
    if (!v9 || (v10 = v9, v11 = sub_251303178(v9, 0), v12 = sub_251303B9C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25130EFE4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25130EFE4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25130F224();
LABEL_4:

  return sub_25130EFE4();
}

unint64_t sub_251303B9C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_251303DBC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25130F054();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25130F224();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_251303DBC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25130F034();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_251303DBC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25130F064();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x253070DB0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_251303E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2512F2E00();
  result = sub_25130F254();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2512F2EA8((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_25130460C(v23, &v36);
        sub_2512F8BA8(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_25130F1C4();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2512F2EA8(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_2513040E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2512F2E64(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2513042AC();
      goto LABEL_7;
    }

    sub_251303E38(v13, a3 & 1);
    v19 = sub_2512F2E64(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25130460C(a2, v21);
      return sub_251304230(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_25130F2F4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_2512F2EA8(a1, v17);
}

_OWORD *sub_251304230(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2512F2EA8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_2513042AC()
{
  v1 = v0;
  sub_2512F2E00();
  v2 = *v0;
  v3 = sub_25130F244();
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
        v18 = 40 * v17;
        sub_25130460C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2512F8BA8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2512F2EA8(v22, (*(v4 + 56) + v17));
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

BOOL sub_251304444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_25130F204();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_25130453C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25130F2D4() & 1;
  }
}

uint64_t sub_251304594(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_25130F294() & 1;
  }
}

uint64_t sub_251304668(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2513046BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_251304738(uint64_t a1)
{
  result = sub_25130EEC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_2513047A4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_251304828(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25130F2B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251304874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DeepLinkingDataParameter.addToURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a4;
  v23[1] = a1;
  v6 = sub_25130ECE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v23 - v12;
  (*(a3 + 40))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = v16;
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  v23[2] = v15;
  v23[3] = v17;
  sub_25130ECD4();
  sub_2512F8818();
  v18 = sub_25130F164();
  v20 = v19;
  (*(v7 + 8))(v9, v6);

  (*(a3 + 32))(a2, a3);
  sub_251305560(v21, v18, v20, v23[0]);
}

uint64_t static DeepLinkingDataParameter.fromURLQueryItems(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_25130F144();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v54 = &v45 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v45 - v16;
  v17 = sub_25130ED24();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v23 = *(a1 + 16);
  if (v23)
  {
    v47 = AssociatedTypeWitness;
    v48 = &v45 - v21;
    v46 = v13;
    v55 = a4;
    v56 = a3;
    v57 = a2;
    v49 = v22;
    v24 = *(v22 + 16);
    v25 = (v22 + 8);
    v26 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v27 = *(v22 + 72);
    while (1)
    {
      v24(v20, v26, v17);
      if (sub_25130595C(v20, v4, v57, v56))
      {
        break;
      }

      (*v25)(v20, v17);
      v26 += v27;
      if (!--v23)
      {
        goto LABEL_12;
      }
    }

    v29 = v48;
    v30 = v49 + 32;
    (*(v49 + 32))(v48, v20, v17);
    v31 = sub_25130ED14();
    v33 = v32;
    (*(v30 - 24))(v29, v17);
    if (!v33)
    {
LABEL_12:
      v28 = 1;
      a2 = v57;
      goto LABEL_13;
    }

    v58 = v31;
    v59 = v33;
    sub_2512F8818();
    v34 = sub_25130F184();
    v36 = v35;

    a2 = v57;
    if (!v36)
    {
LABEL_11:
      v28 = 1;
LABEL_13:
      a4 = v55;
      return (*(*(a2 - 8) + 56))(a4, v28, 1, a2);
    }

    v37 = v56;
    v38 = v47;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v40 = v54;
    (*(AssociatedConformanceWitness + 16))(v34, v36, v38, AssociatedConformanceWitness);

    v41 = v46;
    if ((*(v46 + 48))(v40, 1, v38) == 1)
    {
      (*(v52 + 8))(v40, v53);
      goto LABEL_11;
    }

    v43 = v51;
    (*(v41 + 32))(v51, v40, v38);
    v44 = v50;
    (*(v41 + 16))(v50, v43, v38);
    a4 = v55;
    (*(v37 + 24))(v44, a2, v37);
    (*(v41 + 8))(v43, v38);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  return (*(*(a2 - 8) + 56))(a4, v28, 1, a2);
}

NSUserActivity __swiftcall DeepLinkingDataParameter.addToUserActivity(_:)(NSUserActivity a1)
{
  v3 = v2;
  v4 = v1;
  sub_251305A80(0, &qword_280C61358, sub_2512F2C28, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310350;
  (*(v3 + 32))(v4, v3);
  sub_25130F1E4();
  v6 = *(v3 + 40);
  *(inited + 96) = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0((inited + 72));
  v6(v4, v3);
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512F2F80(inited + 32);
  v7 = sub_25130EF64();

  [(objc_class *)a1.super.isa addUserInfoEntriesFromDictionary:v7];

  return a1.super.isa;
}

uint64_t static DeepLinkingDataParameter.fromUserActivity(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25130F144();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = [a1 userInfo];
  if (v18)
  {
    v19 = v18;
    v20 = sub_25130EF74();

    v32 = (*(a3 + 32))(a2, a3);
    v33 = v21;
    sub_25130F1E4();
    if (*(v20 + 16))
    {
      v22 = sub_2512F2E64(v34);
      v23 = v31;
      if (v24)
      {
        sub_2512F8BA8(*(v20 + 56) + 32 * v22, &v35);
        sub_2512F8B54(v34);
      }

      else
      {

        sub_2512F8B54(v34);
        v35 = 0u;
        v36 = 0u;
      }

      goto LABEL_8;
    }

    sub_2512F8B54(v34);
  }

  v35 = 0u;
  v36 = 0u;
  v23 = v31;
LABEL_8:
  sub_2512FB6A4();
  v25 = swift_dynamicCast();
  v26 = *(v12 + 56);
  if (v25)
  {
    v26(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v17, v11, AssociatedTypeWitness);
    (*(v12 + 16))(v15, v17, AssociatedTypeWitness);
    (*(a3 + 24))(v15, a2, a3);
    (*(v12 + 8))(v17, AssociatedTypeWitness);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v26(v11, 1, 1, AssociatedTypeWitness);
    (*(v29 + 8))(v11, v30);
  }

  return (*(*(a2 - 8) + 56))(v23, v27, 1, a2);
}

uint64_t sub_251305560@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33[2] = a3;
  v33[3] = a4;
  v33[1] = a2;
  sub_251305A80(0, &qword_27F429C08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v33 - v7;
  v9 = sub_25130ED24();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v33 - v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  v17 = sub_25130EE54();
  v18 = [v16 initWithURL:v17 resolvingAgainstBaseURL:0];

  if (v18)
  {
    v33[0] = a5;
    v19 = [v18 queryItems];
    if (v19)
    {
      v20 = v19;
      v21 = sub_25130F0D4();
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    sub_25130ECF4();
    (*(v10 + 16))(v13, v15, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_25130297C(0, v21[2] + 1, 1, v21);
    }

    v26 = v21[2];
    v25 = v21[3];
    if (v26 >= v25 >> 1)
    {
      v21 = sub_25130297C((v25 > 1), v26 + 1, 1, v21);
    }

    v21[2] = v26 + 1;
    (*(v10 + 32))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v13, v9);
    v27 = sub_25130F0C4();

    [v18 setQueryItems_];

    v28 = [v18 URL];
    if (v28)
    {
      v29 = v28;
      sub_25130EE64();

      (*(v10 + 8))(v15, v9);
      v30 = 0;
    }

    else
    {
      (*(v10 + 8))(v15, v9);

      v30 = 1;
    }

    v31 = v33[0];
    v32 = sub_25130EEC4();
    (*(*(v32 - 8) + 56))(v8, v30, 1, v32);
    return sub_251305AE4(v8, v31);
  }

  else
  {
    v22 = sub_25130EEC4();
    v23 = *(*(v22 - 8) + 56);

    return v23(a5, 1, 1, v22);
  }
}

uint64_t sub_25130595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25130ED04();
  v8 = v7;
  if (v6 == (*(a4 + 32))(a3, a4) && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25130F2D4();
  }

  return v11 & 1;
}

void sub_251305A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251305AE4(uint64_t a1, uint64_t a2)
{
  sub_251305A80(0, &qword_27F429C08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251305BF8(void *a3@<X8>)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_25130EF94();

  v6 = [v4 initWithActivityType_];

  *a3 = v6;
}

uint64_t sub_251305C70()
{
  v1 = [*v0 activityType];
  v2 = sub_25130EFB4();

  return v2;
}

uint64_t sub_251305CC8()
{
  v1 = [*v0 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25130EF74();

  return v3;
}

void sub_251305D38(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = sub_25130EF64();
  }

  else
  {
    v3 = 0;
  }

  [v2 setUserInfo_];
}

uint64_t (*sub_251305DC4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_251305EF8(v2);
  return sub_251305E38;
}

void sub_251305E38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_251305EF8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25130EF74();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_251305F94;
}

void sub_251305F94(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      v4 = sub_25130EF64();
    }

    else
    {
      v4 = 0;
    }

    [a1[1] setUserInfo_];
  }

  else if (v3)
  {
    v4 = sub_25130EF64();

    [a1[1] setUserInfo_];
  }

  else
  {
    v4 = 0;
    [a1[1] setUserInfo_];
  }
}

uint64_t sub_251306088()
{
  v0 = sub_25130EF54();
  __swift_allocate_value_buffer(v0, qword_280C61668);
  __swift_project_value_buffer(v0, qword_280C61668);
  return sub_25130EF44();
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

HealthAppServices::DeepLinkActivityType_optional __swiftcall DeepLinkActivityType.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v10 = v1;
  v4 = 0;
  while (1)
  {
    v5 = byte_286359A08[v4++ + 32];
    v6 = 0xD000000000000019;
    v7 = ".view.category.all";
    switch(v5)
    {
      case 1:
        v6 = 0xD00000000000001DLL;
        v7 = "com.apple.health.view.sharing";
        break;
      case 2:
        v6 = 0xD00000000000001CLL;
        v7 = ".view.notifications.settings";
        break;
      case 3:
        v6 = 0xD00000000000001CLL;
        v7 = ".profile.sources";
        break;
      case 4:
        v6 = 0xD00000000000001ELL;
        v7 = "com.apple.health.view.data";
        break;
      case 5:
        break;
      case 6:
        v6 = 0xD00000000000001ELL;
        v7 = "com.apple.health.view.category";
        break;
      case 7:
        v6 = 0xD00000000000001ALL;
        v7 = "com.apple.health.view.foryou";
        break;
      case 8:
        v6 = 0xD000000000000020;
        v7 = ".profile.medicalID";
        break;
      case 9:
        v6 = 0xD000000000000018;
        v7 = "com.apple.health.view.search";
        break;
      case 10:
        v6 = 0xD000000000000022;
        v7 = "com.apple.health.plugin";
        break;
      case 11:
        v6 = 0xD00000000000002CLL;
        v7 = "com.apple.Health";
        break;
      case 12:
        v6 = 0xD000000000000017;
        v7 = "com.apple.health.profile";
        break;
      case 13:
        v6 = 0xD000000000000020;
        v7 = "com.apple.health.view.summary";
        break;
      case 14:
        v6 = 0xD000000000000028;
        v7 = "SharingInviteFlow.";
        break;
      case 15:
        v6 = 0xD00000000000001DLL;
        v7 = "com.apple.health.view.trends";
        break;
      case 16:
        v6 = 0xD000000000000025;
        v7 = "com.apple.SleepHealth";
        break;
      case 17:
        v6 = 0xD00000000000001CLL;
        v7 = ".view.highlights";
        break;
      default:
        v6 = 0xD000000000000022;
        v7 = "com.apple.health.view.data.all";
        break;
    }

    if (v6 == countAndFlagsBits && (v7 | 0x8000000000000000) == object)
    {
      break;
    }

    v8 = sub_25130F2D4();

    if (v8)
    {
      goto LABEL_26;
    }

    if (v4 == 18)
    {

      LOBYTE(v5) = 18;
      goto LABEL_27;
    }
  }

LABEL_26:

LABEL_27:
  *v10 = v5;
  return result;
}

uint64_t DeepLinkActivityType.rawValue.getter()
{
  result = 0x67657461436C6C61;
  switch(*v0)
  {
    case 1:
      return 0x746C6165486C6C61;
    case 2:
      v2 = [objc_opt_self() healthTrendsHostName];
      goto LABEL_17;
    case 3:
      v2 = [objc_opt_self() healthAppBrowseHostName];
      goto LABEL_17;
    case 4:
      return 0x79726F6765746163;
    case 5:
    case 6:
      return 0x6570795461746164;
    case 7:
      v2 = [objc_opt_self() dataTypeDetailHostName];
      goto LABEL_17;
    case 8:
      return 0xD000000000000012;
    case 9:
      return 0x725068746C616568;
    case 0xA:
      v2 = [objc_opt_self() healthAppMedicalIDPath];
      goto LABEL_17;
    case 0xB:
      v2 = [objc_opt_self() healthAppNotificationSettingsPath];
      goto LABEL_17;
    case 0xC:
      return 0x6E6967756C70;
    case 0xD:
      return 0xD000000000000011;
    case 0xE:
      v2 = [objc_opt_self() healthAppSharingInviteFlowPath];
      goto LABEL_17;
    case 0xF:
      v2 = [objc_opt_self() sharingOverviewHostName];
      goto LABEL_17;
    case 0x10:
      v2 = [objc_opt_self() healthAppSharingProfilePath];
      goto LABEL_17;
    case 0x11:
      v2 = [objc_opt_self() healthAppSummaryHostName];
LABEL_17:
      v3 = v2;
      v4 = sub_25130EFB4();

      result = v4;
      break;
    default:
      return result;
  }

  return result;
}

HealthAppServices::DeepLinkActivityType_optional __swiftcall DeepLinkActivityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25130F2E4();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25130674C()
{
  v0 = DeepLinkActivityType.rawValue.getter();
  v2 = v1;
  if (v0 == DeepLinkActivityType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25130F2D4();
  }

  return v5 & 1;
}

unint64_t sub_2513067EC()
{
  result = qword_27F429C90;
  if (!qword_27F429C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429C90);
  }

  return result;
}

uint64_t sub_251306840()
{
  sub_25130F304();
  DeepLinkActivityType.rawValue.getter();
  sub_25130EFF4();

  return sub_25130F324();
}

uint64_t sub_2513068A8(uint64_t a1)
{
  DeepLinkActivityType.rawValue.getter();
  sub_25130EFF4();
}

uint64_t sub_25130690C(uint64_t a1)
{
  sub_25130F304();
  DeepLinkActivityType.rawValue.getter();
  sub_25130EFF4();

  return sub_25130F324();
}

unint64_t sub_251306974()
{
  result = qword_27F429C98;
  if (!qword_27F429C98)
  {
    sub_2513069CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429C98);
  }

  return result;
}

void sub_2513069CC()
{
  if (!qword_27F429CA0)
  {
    v0 = sub_25130F0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429CA0);
    }
  }
}

uint64_t sub_251306A38@<X0>(uint64_t *a1@<X8>)
{
  result = DeepLinkActivityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DeepLinkActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeepLinkActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id static NotificationSupport.defaultHealthAppNotificationSound.getter()
{
  v0 = [objc_opt_self() soundWithAlertType_];

  return v0;
}

id NotificationSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NotificationSupport.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NotificationSupport();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_251306E88@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2512F2E64(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2513042AC();
      v9 = v11;
    }

    sub_2512F8B54(*(v9 + 48) + 40 * v7);
    sub_2512F2EA8((*(v9 + 56) + 32 * v7), a2);
    sub_251306F2C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_251306F2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25130F1B4() + 1) & ~v5;
    do
    {
      sub_25130460C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_25130F1C4();
      result = sub_2512F8B54(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t _s17HealthAppServices19NotificationSupportC06createD8UserInfo3for4withSDys11AnyHashableVypGSo20HKNotificationDomainV_10Foundation3URLVSgtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_251307374(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2512F2C8C(MEMORY[0x277D84F90]);
  *&v23 = sub_25130EFB4();
  *(&v23 + 1) = v8;
  v9 = MEMORY[0x277D837D0];
  sub_25130F1E4();
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v24 = sub_2512FB8F0();
  *&v23 = v10;
  sub_2512F2EA8(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v7;
  sub_2513040E4(v22, v25, isUniquelyReferenced_nonNull_native);
  sub_2512F8B54(v25);
  v26 = v21;
  *&v23 = sub_25130EFB4();
  *(&v23 + 1) = v12;
  sub_25130F1E4();
  sub_2513073CC(a2, v6);
  v13 = sub_25130EEC4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    sub_251307430(v6, sub_251307374);
    sub_251306E88(v25, &v23);
    sub_251307430(&v23, sub_2512FB6A4);
    sub_2512F8B54(v25);
    return v26;
  }

  else
  {
    v16 = sub_25130EE24();
    v24 = v9;
    *&v23 = v16;
    *(&v23 + 1) = v17;
    (*(v14 + 8))(v6, v13);
    sub_2512F2EA8(&v23, v22);
    v18 = v26;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v18;
    sub_2513040E4(v22, v25, v19);
    sub_2512F8B54(v25);
    return v21;
  }
}

void sub_251307374(uint64_t a1)
{
  if (!qword_27F429C08)
  {
    sub_25130EEC4();
    v1 = sub_25130F144();
    if (!v2)
    {
      atomic_store(v1, &qword_27F429C08);
    }
  }
}

uint64_t sub_2513073CC(uint64_t a1, uint64_t a2)
{
  sub_251307374(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251307430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t QueryParameterName.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {
        v3 = [objc_opt_self() queryParameterNameStartDate];
      }

      else
      {
        v3 = [objc_opt_self() queryParameterNameDate];
      }
    }

    else if (v1 == 2)
    {
      v3 = [objc_opt_self() queryParameterNameEndDate];
    }

    else
    {
      if (v1 == 3)
      {
        return 0x686372616573;
      }

      v3 = [objc_opt_self() queryParameterNameDataTypeCode];
    }

LABEL_20:
    v4 = v3;
    v5 = sub_25130EFB4();

    return v5;
  }

  if (*v0 > 6u)
  {
    if (v1 == 7)
    {
      return 26992;
    }

    if (v1 == 8)
    {
      v3 = [objc_opt_self() queryParameterNameTrendOverlay];
    }

    else
    {
      v3 = [objc_opt_self() queryParameterNameSource];
    }

    goto LABEL_20;
  }

  if (v1 == 5)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x656C646E7562;
  }
}

HealthAppServices::QueryParameterName_optional __swiftcall QueryParameterName.init(paramName:)(Swift::String paramName)
{
  object = paramName._object;
  countAndFlagsBits = paramName._countAndFlagsBits;
  v4 = v1;
  v5 = 0;
  while (1)
  {
    v6 = byte_286359A68[v5 + 32];
    if (v6 <= 4)
    {
      if (byte_286359A68[v5 + 32] <= 1u)
      {
        if (byte_286359A68[v5 + 32])
        {
          v9 = [objc_opt_self() queryParameterNameStartDate];
        }

        else
        {
          v9 = [objc_opt_self() queryParameterNameDate];
        }
      }

      else if (v6 == 2)
      {
        v9 = [objc_opt_self() queryParameterNameEndDate];
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xE600000000000000;
          v8 = 0x686372616573;
          goto LABEL_25;
        }

        v9 = [objc_opt_self() queryParameterNameDataTypeCode];
      }

LABEL_24:
      v10 = v9;
      v8 = sub_25130EFB4();
      v7 = v11;

      goto LABEL_25;
    }

    if (byte_286359A68[v5 + 32] > 6u)
    {
      if (v6 == 7)
      {
        v7 = 0xE200000000000000;
        v8 = 26992;
        goto LABEL_25;
      }

      if (v6 == 8)
      {
        v9 = [objc_opt_self() queryParameterNameTrendOverlay];
      }

      else
      {
        v9 = [objc_opt_self() queryParameterNameSource];
      }

      goto LABEL_24;
    }

    v8 = v6 == 5 ? 0x79726F6765746163 : 0x656C646E7562;
    v7 = v6 == 5 ? 0xE800000000000000 : 0xE600000000000000;
LABEL_25:
    if (v8 == countAndFlagsBits && v7 == object)
    {
      break;
    }

    v13 = sub_25130F2D4();

    if (v13)
    {
      goto LABEL_34;
    }

    if (++v5 == 10)
    {
      LOBYTE(v6) = 10;
      goto LABEL_34;
    }
  }

LABEL_34:

  *v4 = v6;
  return result;
}

unint64_t QueryParameterName.restorationType.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0x6D6954646E657274;
    if (v1 != 8)
    {
      v7 = 0x6372756F536C7275;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0x614E656C646E7562;
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
    v2 = 1702125924;
    v3 = 0x65746144646E65;
    v4 = 0x7972657571;
    if (v1 != 3)
    {
      v4 = 0x6570795461746164;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7461447472617473;
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

HealthAppServices::QueryParameterName_optional __swiftcall QueryParameterName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25130F284();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2513079F0()
{
  Parameter = QueryParameterName.rawValue.getter();
  v2 = v1;
  if (Parameter == QueryParameterName.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25130F2D4();
  }

  return v5 & 1;
}

unint64_t sub_251307A90()
{
  result = qword_27F429CA8;
  if (!qword_27F429CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CA8);
  }

  return result;
}

uint64_t sub_251307AE4()
{
  sub_25130F304();
  QueryParameterName.rawValue.getter();
  sub_25130EFF4();

  return sub_25130F324();
}

uint64_t sub_251307B4C(uint64_t a1)
{
  QueryParameterName.rawValue.getter();
  sub_25130EFF4();
}

uint64_t sub_251307BB0(uint64_t a1)
{
  sub_25130F304();
  QueryParameterName.rawValue.getter();
  sub_25130EFF4();

  return sub_25130F324();
}

uint64_t sub_251307C20@<X0>(uint64_t *a1@<X8>)
{
  result = QueryParameterName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_251307C4C()
{
  result = qword_27F429CB0;
  if (!qword_27F429CB0)
  {
    sub_251307CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CB0);
  }

  return result;
}

void sub_251307CA4()
{
  if (!qword_27F429CB8)
  {
    v0 = sub_25130F0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429CB8);
    }
  }
}

uint64_t getEnumTagSinglePayload for QueryParameterName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryParameterName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251307E54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x65746144646E65;
    if (a1 != 2)
    {
      v13 = 0x7972657571;
      v12 = 0xE500000000000000;
    }

    v14 = 0x7461447472617473;
    if (a1)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v14 = 1702125924;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6E6F437472616863;
    v4 = 0xEC00000074786574;
    v5 = 0x6D6954646E657274;
    v6 = 0xEE0065706F637365;
    if (a1 != 7)
    {
      v5 = 0x6372756F536C7275;
      v6 = 0xE900000000000065;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6570795461746164;
    v8 = 0xEC00000065646F43;
    if (a1 != 4)
    {
      v7 = 0xD000000000000011;
      v8 = 0x8000000251311600;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x65746144646E65)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x7972657571)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (!a2)
    {
      v15 = 0xE400000000000000;
      if (v9 != 1702125924)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v18 = 0x7461447472617473;
    goto LABEL_47;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEE0065706F637365;
        if (v9 != 0x6D6954646E657274)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v18 = 0x6372756F536C7275;
LABEL_47:
      v15 = 0xE900000000000065;
      if (v9 != v18)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x6E6F437472616863;
    v17 = 1954047348;
LABEL_41:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v9 != v16)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v16 = 0x6570795461746164;
    v17 = 1701080899;
    goto LABEL_41;
  }

  v15 = 0x8000000251311600;
  if (v9 != 0xD000000000000011)
  {
LABEL_52:
    v19 = sub_25130F2D4();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v19 = 1;
LABEL_53:

  return v19 & 1;
}

HealthAppServices::HAUserActivity::UserActivityVersion_optional __swiftcall HAUserActivity.UserActivityVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t HAUserActivity.RestorationInfoKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 1702125924;
    v7 = 0x65746144646E65;
    if (v1 != 2)
    {
      v7 = 0x7972657571;
    }

    if (*v0)
    {
      v6 = 0x7461447472617473;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E6F437472616863;
    v3 = 0x6D6954646E657274;
    if (v1 != 7)
    {
      v3 = 0x6372756F536C7275;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6570795461746164;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2513082FC(uint64_t a1, unsigned __int8 a2)
{
  sub_25130EFF4();
}

uint64_t HAUserActivity.PluginUserInfoKey.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25130F284();

  *a3 = v4 != 0;
  return result;
}

uint64_t HAUserActivity.ProfilesRestorationKey.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25130F284();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2513085D8()
{
  sub_25130F304();
  sub_25130EFF4();
  return sub_25130F324();
}

uint64_t sub_25130864C(uint64_t a1)
{
  sub_25130F304();
  sub_25130EFF4();
  return sub_25130F324();
}

HealthAppServices::HAUserActivity::RestorationInfoKey_optional __swiftcall HAUserActivity.RestorationInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25130F284();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251308734()
{
  v1 = *v0;
  sub_25130F304();
  sub_2513082FC(v3, v1);
  return sub_25130F324();
}

uint64_t sub_251308784(uint64_t a1)
{
  v2 = *v1;
  sub_25130F304();
  sub_2513082FC(v4, v2);
  return sub_25130F324();
}

unint64_t sub_2513087D4@<X0>(unint64_t *a1@<X8>)
{
  result = HAUserActivity.RestorationInfoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HAUserActivity.URLConversionKey.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25130F284();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25130890C()
{
  v1 = *v0;
  sub_25130F304();
  MEMORY[0x253071080](v1);
  return sub_25130F324();
}

uint64_t sub_251308980(uint64_t a1)
{
  v2 = *v1;
  sub_25130F304();
  MEMORY[0x253071080](v2);
  return sub_25130F324();
}

void *sub_2513089C4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t HAUserActivity.VersioningKey.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25130F284();

  *a3 = v4 != 0;
  return result;
}

uint64_t HAUserActivity.ViewNavigationKeys.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25130F284();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_251308B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25130F304();
  sub_25130EFF4();
  return sub_25130F324();
}

uint64_t sub_251308BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25130F304();
  sub_25130EFF4();
  return sub_25130F324();
}

uint64_t sub_251308C38@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25130F284();

  *a3 = v4 != 0;
  return result;
}

id static HAUserActivity.addProfileIdentifier(to:profileIdentifier:)(void *a1, uint64_t a2)
{
  v2 = sub_251308E90(a1, a2);

  return v2;
}

id static HAUserActivity.createActivity(bundleName:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
  v5 = sub_25130EF94();
  v6 = [v4 initWithActivityType_];

  sub_2512F2BD0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310430;
  v8 = MEMORY[0x277D837D0];
  sub_25130F1E4();
  *(inited + 96) = v8;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  sub_25130F1E4();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512F2C28();
  swift_arrayDestroy();
  v9 = sub_25130EF64();

  [v6 addUserInfoEntriesFromDictionary_];

  return v6;
}

void *sub_251308E90(void *a1, uint64_t a2)
{
  v26[15] = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v26];
  v4 = v26[0];
  if (v3)
  {
    v5 = sub_25130EED4();
    v7 = v6;

    sub_2512F2BD0(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251310350;
    v26[0] = 0xD000000000000011;
    v26[1] = 0x8000000251311620;
    sub_25130F1E4();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v5;
    *(inited + 80) = v7;
    sub_251304668(v5, v7);
    sub_2512F2C8C(inited);
    swift_setDeallocating();
    sub_2512F2F80(inited + 32);
    v9 = sub_25130EF64();

    [a1 addUserInfoEntriesFromDictionary_];

    sub_2513046BC(v5, v7);
  }

  else
  {
    v10 = v4;
    v11 = sub_25130EE04();

    swift_willThrow();
    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v12 = sub_25130EF54();
    __swift_project_value_buffer(v12, qword_280C61668);
    v13 = v11;
    v14 = sub_25130EF34();
    v15 = sub_25130F114();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_251302D38(0x6341726573554148, 0xEE00797469766974, v26);
      *(v16 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v20 + 16))(v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
      v21 = sub_25130EFD4();
      v23 = sub_251302D38(v21, v22, v26);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_2512F1000, v14, v15, "%s Failed to encode profile identifier. Error: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253071680](v17, -1, -1);
      MEMORY[0x253071680](v16, -1, -1);
    }

    else
    {
    }
  }

  return a1;
}