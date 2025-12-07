uint64_t sub_26125B69C()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_analyticsLanguageSource);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_26125B6F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_analyticsLanguageSource);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_26125B7B4()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardDeclineCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125B7F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardDeclineCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125B8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readId;
  swift_beginAccess();
  v4 = sub_26139F13C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_26125B930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readId;
  swift_beginAccess();
  v4 = sub_26139F13C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_26125BA20()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_disconnectionCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BA64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_disconnectionCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BB14()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_attestationFailureCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BB58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_attestationFailureCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BC08()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerNotAvailableCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BC4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerNotAvailableCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BCFC()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_vasErrorCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BD40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_vasErrorCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BDF0()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readSuccessReceived;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BE34(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readSuccessReceived;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BEE4()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerReadyReceived;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BF28(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerReadyReceived;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125C010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26125C0D8()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerError;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_26125C124(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerError;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_26125C1E0()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readErrorToReturn;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_26125C22C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readErrorToReturn;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_26125C2EC()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob;
  swift_beginAccess();
  v2 = *v1;
  sub_26125C348(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_26125C348(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26124C778(result, a2);
  }

  return result;
}

uint64_t sub_26125C35C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26124A168(v6, v7);
}

uint64_t sub_26125C420()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature;
  swift_beginAccess();
  v2 = *v1;
  sub_26125C498(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

uint64_t sub_26125C498(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_26124C778(result, a2);

    return sub_26124C778(a3, a4);
  }

  return result;
}

uint64_t sub_26125C4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_26125C560(v10, v11, v12, v13);
}

uint64_t sub_26125C560(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_26124C6C4(result, a2);

    return sub_26124C6C4(a3, a4);
  }

  return result;
}

uint64_t sub_26125C610(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_26125C650(a1);
  return v2;
}

uint64_t sub_26125C650(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_resolvedCustomerLocale;
  v4 = sub_26139F1CC();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_resolvedCardPreferredLocale, 1, 1, v4);
  v6 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_analyticsLanguageSource);
  *v6 = sub_2613A055C();
  v6[1] = v7;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardDeclineCount) = 0;
  sub_26139F12C();
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_disconnectionCount) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_attestationFailureCount) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerNotAvailableCount) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_vasErrorCount) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readSuccessReceived) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerReadyReceived) = 0;
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionData;
  v9 = type metadata accessor for TransactionData(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerError;
  *v10 = 0;
  *(v10 + 8) = -4;
  v11 = v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readErrorToReturn;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob) = xmmword_2613A4620;
  v12 = v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature;
  *v12 = xmmword_2613A4620;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_26125C818(char a1)
{
  v3 = sub_26139F13C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for TransactionData(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(*v1 + 488))(v8);
  (*(*v1 + 512))(0, 252);
  (*(*v1 + 536))(0, 1);
  (*(*v1 + 560))(0, 0xF000000000000000);
  (*(*v1 + 440))(0);
  result = (*(*v1 + 464))(0);
  if ((a1 & 1) == 0)
  {
    sub_26139F12C();
    (*(*v1 + 320))(v5);
    (*(*v1 + 344))(0);
    (*(*v1 + 368))(0);
    (*(*v1 + 392))(0);
    return (*(*v1 + 416))(0);
  }

  return result;
}

uint64_t sub_26125CBB4()
{
  sub_2613A211C();

  strcpy(v10, "retry count D=");
  HIBYTE(v10[1]) = -18;
  (*(*v0 + 336))(v1);
  v2 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v2);

  v3 = MEMORY[0x2666FFEA0](4014368, 0xE300000000000000);
  (*(*v0 + 360))(v3);
  v4 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v4);

  v5 = MEMORY[0x2666FFEA0](1027690016, 0xE400000000000000);
  (*(*v0 + 384))(v5);
  v6 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v6);

  v7 = MEMORY[0x2666FFEA0](4019744, 0xE300000000000000);
  (*(*v0 + 408))(v7);
  v8 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v8);

  return v10[0];
}

uint64_t sub_26125CE0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for TransactionData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 480))(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v10 = sub_26124C718(v4, &qword_27FE9F340, &unk_2613A4B40);
  }

  else
  {
    sub_26125D080(v4, v9);
    sub_26139FD1C();
    v11 = sub_2613A033C();
    v13 = v12;
    if (v11 == sub_2613A033C() && v13 == v14)
    {
    }

    else
    {
      v15 = sub_2613A241C();

      if ((v15 & 1) == 0)
      {
        v19 = &v9[*(v5 + 36)];
        v21 = *v19;
        v20 = *(v19 + 1);
        v22 = v21 & 0xFFFFFFFFFFFFLL;
        if ((v20 & 0x2000000000000000) != 0)
        {
          v23 = HIBYTE(v20) & 0xF;
        }

        else
        {
          v23 = v22;
        }

        v10 = sub_26125D0E4(v9);
        if (!v23)
        {
          return 0;
        }

        goto LABEL_8;
      }
    }

    v10 = sub_26125D0E4(v9);
  }

LABEL_8:
  v16 = (*(*v1 + 552))(v10);
  if (v17 >> 60 == 15)
  {
    return 1;
  }

  sub_26124A168(v16, v17);
  return 0;
}

uint64_t sub_26125D080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26125D0E4(uint64_t a1)
{
  v2 = type metadata accessor for TransactionData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26125D140()
{
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_resolvedCustomerLocale, &qword_27FE9F338, &unk_2613A4630);
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_resolvedCardPreferredLocale, &qword_27FE9F338, &unk_2613A4630);

  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readId;
  v2 = sub_26139F13C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionData, &qword_27FE9F340, &unk_2613A4B40);
  sub_26124A168(*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob + 8));
  sub_26125C560(*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature + 8), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature + 16), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransactionStore(uint64_t a1)
{
  result = qword_27FEA17D0;
  if (!qword_27FEA17D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26125D2E0(uint64_t a1)
{
  sub_26125D480(319, &qword_27FE9F348, MEMORY[0x277CC9788]);
  if (v1 <= 0x3F)
  {
    sub_26139F13C();
    if (v2 <= 0x3F)
    {
      sub_26125D480(319, &qword_27FE9F350, type metadata accessor for TransactionData);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26125D480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2613A1F8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_26125D524(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v3[OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_environment] = 13;
  v11 = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_discoveryCache;
  type metadata accessor for DiscoveryCache(0);
  *&v3[v11] = sub_2612A6AC4();
  v12 = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_contentWebService;
  type metadata accessor for ContentWebService();
  *&v3[v12] = sub_2612F3988();
  v13 = &v3[OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_bundleId];
  *v13 = a2;
  v13[1] = a3;
  *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_connection] = a1;
  type metadata accessor for DiscoveryAnalyticsManager(0);

  v14 = a1;
  *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_analyticsManager] = sub_26127F718(a2, a3);
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, sel_init);
  v16 = sub_26129B97C();
  sub_26125A870(v16, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {

    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "created", v21, 2u);
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v18 + 8))(v10, v17);
  }

  return v15;
}

id sub_26125D7B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_26129B97C();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "DiscoveryService deinit", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_26125DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = sub_26139F90C();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26125DB78, 0, 0);
}

uint64_t sub_26125DB78(uint64_t a1)
{
  v2 = v1[37];
  v3 = sub_26129B97C();
  v1[38] = v3;
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v1[39] = v4;
  v5 = *(v4 - 8);
  v1[40] = v5;
  v6 = *(v5 + 48);
  v1[41] = v6;
  v1[42] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2, 1, v4) == 1)
  {
    sub_26124C718(v1[37], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "DiscoveryService - get content", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v1[37];

    (*(v5 + 8))(v10, v4);
  }

  v11 = swift_task_alloc();
  v1[43] = v11;
  *v11 = v1;
  v11[1] = sub_26125DD58;

  return sub_26125E3B0();
}

uint64_t sub_26125DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[44] = a2;
  v6[45] = a4;

  if (v4)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26125DED4, 0, 0);
  }
}

void sub_26125DED4()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_13:
    v11 = *(v0 + 328);
    v13 = *(v0 + 304);
    v12 = *(v0 + 312);
    v14 = *(v0 + 280);

    sub_26125A870(v13, v14, &qword_27FE9F560, &qword_2613A3CB0);
    if (v11(v14, 1, v12) == 1)
    {
      sub_26124C718(*(v0 + 280), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = sub_2613A122C();
      v16 = sub_2613A1D8C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "DiscoveryService - content not found", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      v18 = *(v0 + 312);
      v19 = *(v0 + 320);
      v20 = *(v0 + 280);

      (*(v19 + 8))(v20, v18);
    }

    sub_26126468C();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    goto LABEL_19;
  }

  v3 = 0;
  v4 = (v1 + 32);
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    if (v5 = *(v0 + 208), v6 = *(v0 + 216), v8 = v4[2], v7 = v4[3], v9 = v4[5], *(v0 + 80) = v4[4], *(v0 + 96) = v9, v10 = v4[1], *(v0 + 16) = *v4, *(v0 + 32) = v10, *(v0 + 48) = v8, *(v0 + 64) = v7, *(v0 + 80) == v5) && *(v0 + 88) == v6 || (sub_2613A241C())
    {
      if (*(v0 + 96) == *(v0 + 224) && *(v0 + 104) == *(v0 + 232) || (sub_2613A241C() & 1) != 0)
      {
        break;
      }
    }

LABEL_3:
    ++v3;
    v4 += 6;
    if (v2 == v3)
    {
      goto LABEL_13;
    }
  }

  sub_261264584(v0 + 16, v0 + 112);
  if ((sub_2612640F4((v0 + 16)) & 1) == 0)
  {
    sub_2612645E0(v0 + 16);
    goto LABEL_3;
  }

  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 256);
  sub_2613015E0();

  sub_2612645E0(v0 + 16);
  (*(v26 + 32))(v23, v24, v25);
  v27 = sub_261264634();
  v28 = sub_26124A620(v25, v27);
  if (v29 >> 60 == 15)
  {
    v30 = *(v0 + 328);
    v31 = *(v0 + 312);
    v32 = *(v0 + 288);
    sub_26125A870(*(v0 + 304), v32, &qword_27FE9F560, &qword_2613A3CB0);
    if (v30(v32, 1, v31) == 1)
    {
      sub_26124C718(*(v0 + 288), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "DiscoveryService - content encoding error", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      v39 = *(v0 + 312);
      v40 = *(v0 + 320);
      v41 = *(v0 + 288);

      (*(v40 + 8))(v41, v39);
    }

    v42 = *(v0 + 272);
    v43 = *(v0 + 248);
    v44 = *(v0 + 256);
    sub_26126468C();
    swift_allocError();
    *v45 = 6;
    swift_willThrow();
    (*(v44 + 8))(v42, v43);
LABEL_19:

    v22 = *(v0 + 8);

    v22();
  }

  else
  {
    v33 = v28;
    v34 = v29;
    (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));

    v35 = *(v0 + 8);

    v35(v33, v34);
  }
}

uint64_t sub_26125E3B0()
{
  v1[6] = v0;
  v2 = sub_26139F0BC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_26139F1CC();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26125E56C, 0, 0);
}

uint64_t sub_26125E56C(uint64_t a1)
{
  v2 = v1[18];
  v3 = sub_26129B97C();
  v1[19] = v3;
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v1[20] = v4;
  v5 = *(v4 - 8);
  v1[21] = v5;
  v6 = *(v5 + 48);
  v1[22] = v6;
  v1[23] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v2, 1, v4);
  v8 = v1[18];
  if (v7 == 1)
  {
    sub_26124C718(v1[18], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = v1[6];
    v10 = sub_26125A798();
    v11 = sub_261291AA8();
    sub_26129BC3C(v10 & 1, v9, 0x66696E614D746567, 0xED00002928747365, v11, v12);

    (*(v5 + 8))(v8, v4);
  }

  v13 = v1[12];
  v14 = v1[13];
  v15 = v1[10];
  v16 = v1[11];
  sub_26139F1BC();
  sub_26139F1AC();
  (*(v16 + 8))(v13, v15);
  v17 = sub_26139F19C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v14, 1, v17);
  v20 = v1[13];
  if (v19 == 1)
  {
    sub_26124C718(v1[13], &qword_27FE9F3B8, &qword_2613A4828);
    v21 = sub_2613A0D3C();
    v23 = v22;
  }

  else
  {
    v21 = sub_26139F17C();
    v23 = v24;
    (*(v18 + 8))(v20, v17);
  }

  v25 = v1[6];
  v1[24] = v23;
  v1[25] = v21;
  v26 = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_discoveryCache;
  v1[26] = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_discoveryCache;
  v27 = *(v25 + v26);
  v1[27] = v27;
  v28 = (*v27 + 144) & 0xFFFFFFFFFFFFLL | 0xAF7A000000000000;
  v1[28] = *(*v27 + 144);
  v1[29] = v28;

  return MEMORY[0x2822009F8](sub_26125E81C, v27, 0);
}

uint64_t sub_26125E81C()
{
  v1 = (*(v0 + 224))(*(v0 + 200), *(v0 + 192));
  v3 = v2;
  v5 = v4;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = v6;

  *(v0 + 240) = v1;
  *(v0 + 248) = v3;
  *(v0 + 256) = v5;

  return MEMORY[0x2822009F8](sub_26125E8B8, 0, 0);
}

uint64_t sub_26125E8B8()
{
  if (v0[31])
  {
    v18 = v0[31];
    v17 = v0[5];
    v1 = v0[22];
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[17];

    sub_26125A870(v3, v4, &qword_27FE9F560, &qword_2613A3CB0);
    if (v1(v4, 1, v2) == 1)
    {
      sub_26124C718(v0[17], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v8 = sub_2613A122C();
      v9 = sub_2613A1D9C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261243000, v8, v9, "DiscoveryService - configuration read from cache", v10, 2u);
        MEMORY[0x266701350](v10, -1, -1);
      }

      v12 = v0[20];
      v11 = v0[21];
      v13 = v0[17];

      (*(v11 + 8))(v13, v12);
    }

    v14 = v0[32];
    v15 = v0[30];

    v16 = v0[1];

    return v16(v15, v18, v14, v17);
  }

  else
  {
    v5 = sub_261261970();
    v6 = swift_task_alloc();
    v0[33] = v6;
    *v6 = v0;
    v6[1] = sub_26125EB2C;

    return sub_261261C24(v5);
  }
}

uint64_t sub_26125EB2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_26125F558;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_26125EC54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26125EC54()
{
  v1 = sub_261263400(v0[35]);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v0[36] = v3;
  v0[37] = v5;
  if (v3)
  {
    v0[38] = v7;

    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v8[1] = sub_26125EEFC;

    return sub_2612622F4(v1, v3);
  }

  else
  {
    v10 = v0[22];
    v11 = v0[19];
    v12 = v0[20];
    v13 = v0[14];

    sub_26125A870(v11, v13, &qword_27FE9F560, &qword_2613A3CB0);
    if (v10(v13, 1, v12) == 1)
    {
      sub_26124C718(v0[14], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D8C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "DiscoveryService - getManifest - unable to get region configuration", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      v17 = v0[20];
      v18 = v0[21];
      v19 = v0[14];

      (*(v18 + 8))(v19, v17);
    }

    sub_26126468C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_26125EEFC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[40] = a1;
  v4[41] = a2;
  v4[42] = v2;

  if (v2)
  {
    v5 = sub_26125F624;
  }

  else
  {

    v5 = sub_26125F01C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26125F01C()
{
  if (*(v0[41] + 16))
  {
    v1 = v0[22];
    v2 = v0[20];
    v3 = v0[16];
    sub_26125A870(v0[19], v3, &qword_27FE9F560, &qword_2613A3CB0);
    if (v1(v3, 1, v2) == 1)
    {
      sub_26124C718(v0[16], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v8 = sub_2613A122C();
      v9 = sub_2613A1D9C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261243000, v8, v9, "DiscoveryService - configuration & manifest read from back-end", v10, 2u);
        MEMORY[0x266701350](v10, -1, -1);
      }

      v11 = v0[20];
      v12 = v0[21];
      v13 = v0[16];

      (*(v12 + 8))(v13, v11);
    }

    v14 = *(v0[6] + v0[26]);
    v0[43] = v14;

    sub_26139F0AC();
    v15 = (*v14 + 128) & 0xFFFFFFFFFFFFLL | 0x7CDA000000000000;
    v0[44] = *(*v14 + 128);
    v0[45] = v15;

    return MEMORY[0x2822009F8](sub_26125F3AC, v14, 0);
  }

  else
  {
    v4 = v0[22];
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[15];

    sub_26125A870(v6, v7, &qword_27FE9F560, &qword_2613A3CB0);
    if (v4(v7, 1, v5) == 1)
    {
      sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "DiscoveryService - getManifest - empty manifest", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      v19 = v0[20];
      v20 = v0[21];
      v21 = v0[15];

      (*(v20 + 8))(v21, v19);
    }

    sub_26126468C();
    swift_allocError();
    *v22 = 6;
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_26125F3AC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v0 + 352))(v1, *(v0 + 200), *(v0 + 192), *(v0 + 320), *(v0 + 328), *(v0 + 296), *(v0 + 304));

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_26125F46C, 0, 0);
}

uint64_t sub_26125F46C()
{

  v1 = v0[40];
  v2 = v0[37];
  v5 = v0[38];
  v6 = v0[41];

  v3 = v0[1];

  return v3(v1, v6, v2, v5);
}

uint64_t sub_26125F558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26125F624()
{

  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26125F89C(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_2613A18CC();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_2613A18CC();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_26125F998;

  return sub_26125DA54(v6, v8, v9, v11);
}

uint64_t sub_26125F998(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = sub_26139EE6C();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = sub_26139EFFC();
    sub_26124C6C4(a1, a2);
    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_26125FB6C()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26125FC14, 0, 0);
}

uint64_t sub_26125FC14(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_26129B97C();
  v1[6] = v3;
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 48);
  v1[9] = v6;
  v1[10] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2, 1, v4) == 1)
  {
    sub_26124C718(v1[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "DiscoveryService - get content list", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v1[5];

    (*(v5 + 8))(v10, v4);
  }

  v11 = swift_task_alloc();
  v1[11] = v11;
  *v11 = v1;
  v11[1] = sub_26125FDF4;

  return sub_26125E3B0();
}

uint64_t sub_26125FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v9 = *v5;

  if (v4)
  {

    v10 = *(v9 + 8);

    return v10();
  }

  else
  {
    *(v8 + 96) = a4;
    *(v8 + 104) = a2;

    return MEMORY[0x2822009F8](sub_26125FF60, 0, 0);
  }
}

uint64_t sub_26125FF60()
{
  v1 = sub_2612646E0(v0[13]);

  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F398, &qword_2613A4710);
  v3 = sub_2612648B4();
  v4 = sub_26124A620(v2, v3);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[4];
    sub_26125A870(v0[6], v9, &qword_27FE9F560, &qword_2613A3CB0);
    if (v7(v9, 1, v8) == 1)
    {
      sub_26124C718(v0[4], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "DiscoveryService - content list encoding error", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v15 = v0[7];
      v16 = v0[8];
      v17 = v0[4];

      (*(v16 + 8))(v17, v15);
    }

    sub_26126468C();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }

  else
  {

    v10 = v0[1];

    return v10(v4, v6);
  }
}

uint64_t sub_261260328(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2612603D0;

  return sub_26125FB6C();
}

uint64_t sub_2612603D0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = sub_26139EE6C();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = sub_26139EFFC();
    sub_26124C6C4(a1, a2);
    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_261260564(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261260610, 0, 0);
}

uint64_t sub_261260610(uint64_t a1)
{
  v2 = v1[61];
  v3 = sub_26129B97C();
  v1[62] = v3;
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v1[63] = v4;
  v5 = *(v4 - 8);
  v1[64] = v5;
  v6 = *(v5 + 48);
  v1[65] = v6;
  v1[66] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2, 1, v4) == 1)
  {
    sub_26124C718(v1[61], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "DiscoveryService - get layoutBundle", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v1[61];

    (*(v5 + 8))(v10, v4);
  }

  type metadata accessor for Mock();
  if (sub_26129B0F4(40))
  {
    sub_26126468C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v12 = v1[1];

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    v1[67] = v14;
    *v14 = v1;
    v14[1] = sub_261260880;

    return sub_26125E3B0();
  }
}

uint64_t sub_261260880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[50] = v5;
  v6[51] = a1;
  v6[52] = a2;
  v6[53] = a3;
  v6[54] = a4;
  v6[55] = v4;
  v7 = *v5;
  v6[68] = a2;
  v6[69] = a4;

  if (v4)
  {

    v8 = v7[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2612609E8, 0, 0);
  }
}

uint64_t sub_2612609E8()
{
  v1 = *(v0 + 544);
  v2 = *(v1 + 16);
  v3 = 0uLL;
  if (v2)
  {
    v4 = (v1 + 32);
    while (1)
    {
      v5 = *(v0 + 456);
      v6 = *(v0 + 464);
      v7 = v4[1];
      *(v0 + 16) = *v4;
      *(v0 + 32) = v7;
      v8 = v4[2];
      v9 = v4[3];
      v10 = v4[5];
      *(v0 + 80) = v4[4];
      *(v0 + 96) = v10;
      *(v0 + 48) = v8;
      *(v0 + 64) = v9;
      v12 = *(v0 + 16);
      v11 = *(v0 + 24);
      v13 = *(v0 + 32);
      v14 = *(v0 + 40);
      v36 = *(v0 + 80);
      v37 = *(v0 + 64);
      v34 = *(v0 + 48);
      v35 = *(v0 + 96);
      if (v12 == v5 && v6 == v11)
      {
        sub_261264584(v0 + 16, v0 + 208);
        v12 = *(v0 + 456);
        goto LABEL_11;
      }

      if (sub_2613A241C())
      {
        break;
      }

      v4 += 6;
      if (!--v2)
      {
        v12 = 0;
        v11 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v3 = 0uLL;
        goto LABEL_12;
      }
    }

    sub_261264584(v0 + 16, v0 + 112);
LABEL_11:
    v3 = v34;
    v17 = v35;
    v16 = v36;
    v15 = v37;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

LABEL_12:
  *(v0 + 304) = v12;
  *(v0 + 312) = v11;
  *(v0 + 320) = v13;
  *(v0 + 328) = v14;
  *(v0 + 336) = v3;
  *(v0 + 352) = v15;
  *(v0 + 368) = v16;
  *(v0 + 384) = v17;
  if (v11)
  {
    v38 = v3;

    *(v0 + 448) = v38;

    sub_2613A23EC();
    v18 = objc_allocWithZone(sub_26139FC3C());
    v19 = sub_26139FC2C();
    sub_26124C718(v0 + 304, &qword_27FE9F3A8, &qword_2613A4720);

    v20 = *(v0 + 8);

    return v20(v19);
  }

  else
  {
    v22 = *(v0 + 520);
    v24 = *(v0 + 496);
    v23 = *(v0 + 504);
    v25 = *(v0 + 480);

    sub_26125A870(v24, v25, &qword_27FE9F560, &qword_2613A3CB0);
    if (v22(v25, 1, v23) == 1)
    {
      sub_26124C718(*(v0 + 480), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261243000, v26, v27, "DiscoveryService - get layoutBundle - content not found", v28, 2u);
        MEMORY[0x266701350](v28, -1, -1);
      }

      v29 = *(v0 + 504);
      v30 = *(v0 + 512);
      v31 = *(v0 + 480);

      (*(v30 + 8))(v31, v29);
    }

    sub_26126468C();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_261260F10(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2613A18CC();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_261260FE4;

  return sub_261260564(v5, v7);
}

uint64_t sub_261260FE4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_26139EE6C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2612611A0()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126123C, 0, 0);
}

uint64_t sub_26126123C(uint64_t a1)
{
  v2 = v1[3];
  v3 = sub_26129B97C();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[3];
  if (v6 == 1)
  {
    sub_26124C718(v1[3], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v1[2];
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v8, 0x65526C65636E6163, 0xEF29287473657571, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  v12 = *(**(v1[2] + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_contentWebService) + 128);

  v12(v13);

  v14 = v1[1];

  return v14();
}

uint64_t sub_261261568(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_261261610;

  return sub_2612611A0();
}

uint64_t sub_261261610()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_261261748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_26129B97C();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_26125A798();
    v13 = sub_261291AA8();
    sub_26129BC3C(v12 & 1, v3, 0xD00000000000001DLL, 0x80000002613B8320, v13, v14);

    (*(v11 + 8))(v8, v10);
  }

  return sub_26127F7B4(a1, a2);
}

uint64_t sub_261261970()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19[-v2];
  type metadata accessor for DiscoveryEnvironmentManager();
  v4 = sub_261292304();
  (*(*v4 + 120))(v4);

  nullsub_1();
  v6 = v5;
  v7 = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_environment;
  if (*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_environment) == 13 || (v19[6] = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_environment), v19[5] = v5, sub_2612650F0(), (sub_2613A188C() & 1) == 0))
  {
    *(v0 + v7) = v6;
    v8 = sub_26129B97C();
    sub_26125A870(v8, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v3, 1, v9) == 1)
    {
      sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = sub_2613A122C();
      v12 = sub_2613A1D9C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20 = v14;
        *v13 = 136315138;
        v19[7] = v6;
        v15 = sub_261290024(&type metadata for WCSEnvironmentContext, &off_2873B6DE8);
        v17 = sub_26124C11C(v15, v16, &v20);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_261243000, v11, v12, "\nENVIRONMENT: ------------------------------------\ncontents: %s\n-------------------------------------------------", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x266701350](v14, -1, -1);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v10 + 8))(v3, v9);
    }
  }

  return v6;
}

uint64_t sub_261261C24(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 57) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261261CD0, 0, 0);
}

uint64_t sub_261261CD0(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = sub_26129B97C();
  *(v1 + 88) = v3;
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  *(v1 + 96) = v4;
  v5 = *(v4 - 8);
  *(v1 + 104) = v5;
  v6 = *(v5 + 48);
  *(v1 + 112) = v6;
  *(v1 + 120) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v2, 1, v4);
  v8 = *(v1 + 80);
  if (v7 == 1)
  {
    sub_26124C718(*(v1 + 80), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = *(v1 + 64);
    v10 = sub_26125A798();
    v11 = sub_261291AA8();
    sub_26129BC3C(v10 & 1, v9, 0xD00000000000001ELL, 0x80000002613B84D0, v11, v12);

    (*(v5 + 8))(v8, v4);
  }

  v13 = *(*(v1 + 64) + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_contentWebService);
  *(v1 + 128) = v13;
  v14 = *(*v13 + 112);

  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v1 + 136) = v15;
  *v15 = v1;
  v15[1] = sub_261261F34;
  v16 = *(v1 + 57);

  return v18(v1 + 16, v16);
}

uint64_t sub_261261F34()
{

  return MEMORY[0x2822009F8](sub_26126204C, 0, 0);
}

uint64_t sub_26126204C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = 6;
    if (*(v0 + 16) == 3)
    {
      v5 = 3;
    }

    if (*(v0 + 16) == 5)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5;
    }

    sub_26125A870(*(v0 + 88), *(v0 + 72), &qword_27FE9F560, &qword_2613A3CB0);
    if (v2(v4, 1, v3) == 1)
    {
      sub_26124C718(*(v0 + 72), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v9 = sub_2613A122C();
      v10 = sub_2613A1D8C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        sub_26126468C();
        swift_allocError();
        *v13 = v6;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v14;
        *v12 = v14;
        _os_log_impl(&dword_261243000, v9, v10, "DiscoveryService - getConfiguration - %@", v11, 0xCu);
        sub_26124C718(v12, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v12, -1, -1);
        MEMORY[0x266701350](v11, -1, -1);
      }

      v15 = *(v0 + 96);
      v16 = *(v0 + 104);
      v17 = *(v0 + 72);

      (*(v16 + 8))(v17, v15);
    }

    sub_26126468C();
    swift_allocError();
    *v18 = v6;
    swift_willThrow();
    sub_26124C718(v0 + 16, &qword_27FE9F3C8, &unk_2613A4850);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {

    v7 = *(v0 + 8);

    return v7(v1);
  }
}

uint64_t sub_2612622F4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261262394, 0, 0);
}

uint64_t sub_261262394()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_contentWebService);
  v0[12] = v1;
  v2 = *(*v1 + 120);

  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2612624D4;
  v4 = v0[8];
  v5 = v0[9];

  return (v7)(v0 + 2, v4, v5);
}

uint64_t sub_2612624D4()
{

  return MEMORY[0x2822009F8](sub_2612625EC, 0, 0);
}

uint64_t sub_2612625EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 88);
  if (*(v1 + 56))
  {
    v4 = 6;
    if (*(v1 + 16) == 3)
    {
      v4 = 3;
    }

    if (*(v1 + 16) == 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v4;
    }

    v6 = sub_26129B97C();
    sub_26125A870(v6, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      sub_26124C718(*(v1 + 88), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        sub_26126468C();
        swift_allocError();
        *v16 = v5;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_261243000, v12, v13, "DiscoveryService - getManifest - %@", v14, 0xCu);
        sub_26124C718(v15, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v15, -1, -1);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v18 = *(v1 + 88);

      (*(v8 + 8))(v18, v7);
    }

    sub_26126468C();
    swift_allocError();
    *v19 = v5;
    swift_willThrow();
    sub_26124C718(v1 + 16, &qword_27FE9F3C0, &unk_2613A4840);

    v20 = *(v1 + 8);

    return v20();
  }

  else
  {
    v9 = *(v1 + 24);

    v10 = *(v1 + 8);

    return v10(v2, v9);
  }
}

uint64_t sub_2612628D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_261265144;

  return v6();
}

uint64_t sub_2612629BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_261262AA4;

  return v7();
}

uint64_t sub_261262AA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261262B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_26125A870(a3, v23 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2613A1C0C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2613A1BCC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2613A198C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

    return v21;
  }

LABEL_8:
  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_261262E94(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261262F8C;

  return v6(a1);
}

uint64_t sub_261262F8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_261263084(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B0, &qword_2613A4818);
  v10 = *(sub_26139F90C() - 8);
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
  v15 = *(sub_26139F90C() - 8);
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

uint64_t sub_26126325C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_261263308(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_2613A20FC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_261263400(uint64_t a1)
{
  v2 = sub_26139F1CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v52 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = v48 - v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v50 = (v3 + 8);

  v13 = 0;
  v49 = a1;
  v48[0] = v2;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v11)
        {

          v34 = 1 << *(a1 + 32);
          v35 = -1;
          if (v34 < 64)
          {
            v35 = ~(-1 << v34);
          }

          v36 = v35 & *(a1 + 64);
          v37 = (v34 + 63) >> 6;

          v38 = 0;
          if (v36)
          {
            while (1)
            {
              v39 = v38;
LABEL_25:
              v40 = (v39 << 10) | (16 * __clz(__rbit64(v36)));
              v41 = (*(a1 + 48) + v40);
              v42 = *v41;
              v43 = v41[1];
              v44 = *(*(a1 + 56) + v40);

              if (v42 == sub_2613A0D3C() && v43 == v45)
              {

                return v44;
              }

              v54 = v44;
              v47 = sub_2613A241C();

              if (v47)
              {
                break;
              }

              v36 &= v36 - 1;

              v38 = v39;
              if (!v36)
              {
                goto LABEL_22;
              }
            }

            return v54;
          }

LABEL_22:
          while (1)
          {
            v39 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v39 >= v37)
            {

              return 0;
            }

            v36 = *(v7 + 8 * v39);
            ++v38;
            if (v36)
            {
              goto LABEL_25;
            }
          }

LABEL_40:
          __break(1u);
          return result;
        }

        v10 = *(v7 + 8 * v14);
        ++v13;
        if (v10)
        {
          v13 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_11:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v10)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v53 = v17;
    v54 = v20;
    swift_bridgeObjectRetain_n();

    v22 = v52;
    sub_26139F1BC();
    v23 = v51;
    sub_26139F1AC();
    v24 = v22;
    v25 = v23;
    (*v50)(v24, v2);
    v26 = sub_26139F19C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_26124C718(v25, &qword_27FE9F3B8, &qword_2613A4828);

      a1 = v49;
      goto LABEL_5;
    }

    v48[1] = v21;
    v28 = v25;
    v29 = sub_26139F17C();
    v31 = v30;
    (*(v27 + 8))(v28, v26);
    if (v53 == v29 && v18 == v31)
    {

      return v54;
    }

    v33 = sub_2613A241C();

    a1 = v49;
    if (v33)
    {
      break;
    }

    v2 = v48[0];
LABEL_5:
    v10 &= v10 - 1;
  }

  return v54;
}

unint64_t sub_2612638AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2613A1A0C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2613A1AEC();
}

uint64_t sub_26126395C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_2613A1AAC() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_2613A19EC();
  v7 = sub_2612638AC(v6, a1, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v7 >> 14 == v9 >> 14)
  {

    return 0;
  }

  v15 = v7 >> 14;
  while (1)
  {
    v17 = sub_2613A1FBC();
    v18 = v16;
    if (v17 == 44 && v16 == 0xE100000000000000)
    {
      break;
    }

    if ((sub_2613A241C() & 1) != 0 || v17 == 46 && v18 == 0xE100000000000000)
    {
      break;
    }

    v19 = sub_2613A241C();

    if (v19)
    {
      goto LABEL_15;
    }

    v15 = sub_2613A1F9C() >> 14;
    if (v15 == v9 >> 14)
    {
      v20 = MEMORY[0x2666FFE20](v7, v9, v11, v13);

      return v20;
    }
  }

LABEL_15:
  if (v15 < v7 >> 14)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_2613A1FDC();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = MEMORY[0x2666FFE20](v21, v23, v25, v27);

    return v28;
  }

  return result;
}

unint64_t sub_261263B7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = sub_26126395C(a3, a4, a1, a2);
  v58 = result;
  v12 = v11;
  if (*(a5 + 16) && (result = sub_26124E5EC(a1, a2), (v13 & 1) != 0))
  {
    v14 = (*(a5 + 56) + 40 * result);
    v16 = *v14;
    v15 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v15 = 1;
  }

  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v21 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (!v12)
  {
LABEL_16:
    sub_261265024(v16, v15, v18, v17, v19);
    goto LABEL_17;
  }

  if (v15)
  {
    if (v15 == 1)
    {

LABEL_17:
      v22 = 0;
      return v22 & 1;
    }

    v23 = v15;
  }

  else
  {
    v23 = 0xE100000000000000;
    v16 = 48;
  }

  v24 = HIBYTE(v23) & 0xF;
  v25 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v26 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_84;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {

    v28 = sub_26124E93C(v16, v23, 10);
    v46 = v56;
LABEL_83:

    if ((v46 & 1) == 0)
    {
      if (v17)
      {
        v47 = v17;
      }

      else
      {
        LODWORD(v59) = 0x7FFFFFFF;
        v18 = sub_2613A23EC();
        v47 = v48;
      }

      v49 = sub_26124D158(v18, v47);
      if (v50)
      {
      }

      else
      {
        v51 = v49;
        v52 = sub_26124D158(v58, v12);
        if ((v53 & 1) == 0)
        {
          if (v52 < v28 || v51 < v52)
          {
            if (v19)
            {
              v54 = v19;
            }

            else
            {
              v54 = MEMORY[0x277D84F90];
            }

            v59 = a3;
            v60 = a4;
            MEMORY[0x28223BE20](v55);
            v57[2] = &v59;
            v22 = sub_26126325C(sub_261265078, v57, v54);
          }

          else
          {

            v22 = 1;
          }

          return v22 & 1;
        }
      }

      goto LABEL_92;
    }

LABEL_84:

LABEL_92:

    goto LABEL_17;
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    if ((v16 & 0x1000000000000000) != 0)
    {
      result = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2613A216C();
    }

    v27 = *result;
    if (v27 == 43)
    {
      if (v25 >= 1)
      {
        v24 = v25 - 1;
        if (v25 != 1)
        {
          v28 = 0;
          if (result)
          {
            v35 = (result + 1);
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                goto LABEL_81;
              }

              v37 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                goto LABEL_81;
              }

              v28 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_81;
              }

              ++v35;
              if (!--v24)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_81;
      }

      goto LABEL_105;
    }

    if (v27 != 45)
    {
      if (v25)
      {
        v28 = 0;
        if (result)
        {
          while (1)
          {
            v41 = *result - 48;
            if (v41 > 9)
            {
              goto LABEL_81;
            }

            v42 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_81;
            }

            v28 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              goto LABEL_81;
            }

            ++result;
            if (!--v25)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_81:
      v28 = 0;
      LOBYTE(v24) = 1;
      goto LABEL_82;
    }

    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (result)
        {
          v29 = (result + 1);
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_81;
            }

            v31 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_81;
            }

            v28 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              goto LABEL_81;
            }

            ++v29;
            if (!--v24)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_73:
        LOBYTE(v24) = 0;
LABEL_82:
        v61 = v24;
        v46 = v24;

        goto LABEL_83;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v59 = v16;
  v60 = v23 & 0xFFFFFFFFFFFFFFLL;
  if (v16 != 43)
  {
    if (v16 != 45)
    {
      if (v24)
      {
        v28 = 0;
        v43 = &v59;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            break;
          }

          v43 = (v43 + 1);
          if (!--v24)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v24)
    {
      if (--v24)
      {
        v28 = 0;
        v32 = &v59 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_104;
  }

  if (v24)
  {
    if (--v24)
    {
      v28 = 0;
      v38 = &v59 + 1;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        v40 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          break;
        }

        v28 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          break;
        }

        ++v38;
        if (!--v24)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_2612640F4(void *a1)
{
  type metadata accessor for Mock();
  v2 = sub_26129B1A8(54);
  v4 = v3;
  v5 = sub_26129B1A8(55);
  v7 = v5;
  v8 = v6;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 0x656E6F685069;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12 = a1[7];
  v13 = a1[5];
  v52 = a1[6];
  v53 = v10;
  v14 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v14 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    if ((v11 & 0x600000000000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = v11;

    sub_2613A121C();
    v2 = sub_2613A120C();
    v11 = v21;
    v4 = v22;
    if ((v21 & 0x600000000000000) != 0)
    {
LABEL_14:
      v15 = v11;
      if (v9)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  v23 = MCGestaltGetDeviceClass();
  if (!v23)
  {
    goto LABEL_41;
  }

  v24 = v23;
  v53 = sub_2613A18CC();
  v15 = v25;

  if (v9)
  {
LABEL_15:
    v54 = 0x656E6F685069;
    v55 = 0xE600000000000000;
    MEMORY[0x2666FFEA0](v7, v8);

    v17 = 0x656E6F685069;
    v16 = 0xE600000000000000;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_22:

  v26 = MCGestaltGetProductName();
  if (!v26)
  {
LABEL_41:

    goto LABEL_55;
  }

  v27 = v26;
  v17 = sub_2613A18CC();
  v16 = v28;

  if (v12)
  {
LABEL_16:
    v18 = sub_261263B7C(v53, v15, v17, v16, v12);

    if (v13 == 1)
    {

      v19 = 0;
      v20 = 0;
      if ((v18 & 1) == 0)
      {
        return v20 & 1;
      }

      goto LABEL_54;
    }

LABEL_28:
    v29 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v29 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {
      goto LABEL_50;
    }

    v54 = 0;
    if (!sub_261263308(v2, v4, &v54))
    {
      goto LABEL_50;
    }

    v30 = v15;
    v31 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v31 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
      goto LABEL_52;
    }

    v32 = *&v54;
    if (v13)
    {
      if (!*(v13 + 16))
      {
        goto LABEL_52;
      }

      v33 = sub_26124E5EC(v53, v15);
      if ((v34 & 1) == 0)
      {
        goto LABEL_50;
      }

      v35 = *(v13 + 56) + 24 * v33;
      if (*(v35 + 16))
      {
        goto LABEL_50;
      }

      v37 = *(v35 + 8);
      v54 = *v35;
      v36 = v54;
      v55 = v37;
      sub_26124C7CC();

      v38 = sub_2613A1FFC();
      v54 = 0;
      v40 = sub_261263308(v38, v39, &v54);
      sub_2612650D0(v36, v37, 0);

      if (!v40)
      {
        goto LABEL_50;
      }

      v41 = *&v54;
      v30 = v15;
    }

    else
    {
      v41 = 0.0;
    }

    if (!v52)
    {
      if (v41 <= v32)
      {
        v50 = 1.79769313e308;
        goto LABEL_58;
      }

LABEL_52:
      v19 = 0;
      goto LABEL_53;
    }

    if (!*(v52 + 16))
    {
      goto LABEL_52;
    }

    v42 = sub_26124E5EC(v53, v30);
    if (v43)
    {
      v44 = *(v52 + 56) + 24 * v42;
      if (!*(v44 + 16))
      {
        v45 = *(v44 + 8);
        v54 = *v44;
        v46 = v54;
        v55 = v45;
        sub_26124C7CC();

        v47 = sub_2613A1FFC();
        v54 = 0;
        v49 = sub_261263308(v47, v48, &v54);
        sub_2612650D0(v46, v45, 0);

        if (v49)
        {
          if (v41 <= v32)
          {
            v50 = *&v54;
LABEL_58:
            v19 = v32 <= v50;
LABEL_53:

            if (v18)
            {
LABEL_54:
              v20 = v13 == 1 || v19;
              return v20 & 1;
            }

LABEL_55:
            v20 = 0;
            return v20 & 1;
          }

          goto LABEL_52;
        }
      }
    }

LABEL_50:
    v19 = 0;
    goto LABEL_53;
  }

LABEL_24:

  if (v13 != 1)
  {
    v18 = 1;
    goto LABEL_28;
  }

  v20 = 1;
  return v20 & 1;
}

unint64_t sub_261264634()
{
  result = qword_27FE9F388;
  if (!qword_27FE9F388)
  {
    sub_26139F90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F388);
  }

  return result;
}

unint64_t sub_26126468C()
{
  result = qword_27FE9F390;
  if (!qword_27FE9F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F390);
  }

  return result;
}

void *sub_2612646E0(uint64_t a1)
{
  v2 = sub_26139F90C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = (a1 + 32);
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7[3];
    v16[2] = v7[2];
    v16[3] = v9;
    v10 = v7[5];
    v16[4] = v7[4];
    v16[5] = v10;
    v11 = v7[1];
    v16[0] = *v7;
    v16[1] = v11;
    sub_261264584(v16, v15);
    if (sub_2612640F4(v16))
    {
      sub_2613015E0();
      sub_2612645E0(v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_261263084(0, v8[2] + 1, 1, v8);
      }

      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        v8 = sub_261263084((v12 > 1), v13 + 1, 1, v8);
      }

      v8[2] = v13 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v5, v2);
    }

    else
    {
      sub_2612645E0(v16);
    }

    v7 += 6;
    --v6;
  }

  while (v6);
  return v8;
}

unint64_t sub_2612648B4()
{
  result = qword_27FE9F3A0;
  if (!qword_27FE9F3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F398, &qword_2613A4710);
    sub_261264634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F3A0);
  }

  return result;
}

uint64_t sub_26126495C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261261568(v2, v3);
}

uint64_t sub_261264A08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2612628D4(v2, v3, v4);
}

uint64_t sub_261264AC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261265144;

  return sub_2612629BC(a1, v4, v5, v6);
}

uint64_t sub_261264B94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261265144;

  return sub_261262E94(a1, v4);
}

uint64_t sub_261264C4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261262AA4;

  return sub_261262E94(a1, v4);
}

uint64_t sub_261264D04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261260F10(v2, v3, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261264DF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_261260328(v2, v3);
}

uint64_t sub_261264EA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26125F89C(v2, v3, v5, v4);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_BYTE *sub_261264FA4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

void sub_261265024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_261265078(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2613A241C() & 1;
  }
}

uint64_t sub_2612650D0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

unint64_t sub_2612650F0()
{
  result = qword_27FE9F3D0;
  if (!qword_27FE9F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F3D0);
  }

  return result;
}

uint64_t DeprecationWarning.deprecationDate.getter()
{
  v0 = sub_26139F0BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F09C();
  sub_26139F04C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t DeprecationWarning.isOSVersionDeprecation.getter()
{
  if (sub_2613A197C() == 0x49535245565F534FLL && v0 == 0xEA00000000004E4FLL)
  {

    return 1;
  }

  else
  {
    v2 = sub_2613A241C();

    return v2 & 1;
  }
}

uint64_t DeprecationWarning.init(deprecationType:deprecationTime:value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static DeprecationWarning.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_2613A241C();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_2613A241C();
}

uint64_t sub_2612653A4()
{
  v1 = 0x65756C6176;
  if (*v0 == 1)
  {
    v1 = 0x7461636572706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461636572706564;
  }
}

uint64_t sub_261265404@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261266188(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26126542C(uint64_t a1)
{
  v2 = sub_26126591C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261265468(uint64_t a1)
{
  v2 = sub_26126591C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeprecationWarning.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2613A19DC();
  MEMORY[0x266700A30](v2);

  return sub_2613A19DC();
}

uint64_t DeprecationWarning.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_2613A256C();
  sub_2613A19DC();
  MEMORY[0x266700A30](v1);
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t DeprecationWarning.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3D8, &unk_2613A4860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26126591C();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = 0;
  v9 = sub_2613A22DC();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_2613A232C();
  v21 = 2;
  v13 = sub_2613A22DC();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v18 = v19;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_2612657B8()
{
  v1 = *(v0 + 16);
  sub_2613A256C();
  sub_2613A19DC();
  MEMORY[0x266700A30](v1);
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_261265838(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2613A19DC();
  MEMORY[0x266700A30](v2);

  return sub_2613A19DC();
}

uint64_t sub_2612658A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2613A256C();
  sub_2613A19DC();
  MEMORY[0x266700A30](v2);
  sub_2613A19DC();
  return sub_2613A25CC();
}

unint64_t sub_26126591C()
{
  result = qword_27FEA17E0[0];
  if (!qword_27FEA17E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA17E0);
  }

  return result;
}

uint64_t sub_261265988(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_2613A241C();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_2613A241C();
}

uint64_t DeprecationWarning.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  sub_2613A211C();

  MEMORY[0x2666FFEA0](v1, v2);
  MEMORY[0x2666FFEA0](0x3A65746164205D20, 0xEB00000000205B20);
  v5 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v5);

  MEMORY[0x2666FFEA0](0x65756C6176205D20, 0xEC000000205B203ALL);
  MEMORY[0x2666FFEA0](v3, v4);
  MEMORY[0x2666FFEA0](23840, 0xE200000000000000);
  return 0x205B203A65707974;
}

uint64_t Array<A>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_261265DD4(0, v1, 0);
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 4);
      v5 = *(v3 - 3);
      v6 = *(v3 - 1);
      v7 = *v3;

      sub_2613A211C();

      MEMORY[0x2666FFEA0](v4, v5);
      MEMORY[0x2666FFEA0](0x3A65746164205D20, 0xEB00000000205B20);
      v8 = sub_2613A23EC();
      MEMORY[0x2666FFEA0](v8);

      MEMORY[0x2666FFEA0](0x65756C6176205D20, 0xEC000000205B203ALL);
      MEMORY[0x2666FFEA0](v6, v7);
      MEMORY[0x2666FFEA0](23840, 0xE200000000000000);

      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_261265DD4((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = 0x205B203A65707974;
      *(v11 + 40) = 0xE800000000000000;
      v3 += 5;
      --v1;
    }

    while (v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
    sub_261265DF4();
    v12 = sub_2613A184C();
    v14 = v13;
  }

  else
  {
    v14 = 0xE400000000000000;
    v12 = 1701736270;
  }

  MEMORY[0x2666FFEA0](v12, v14);

  return 0;
}

char *sub_261265DD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26126607C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_261265DF4()
{
  result = qword_27FE9F3E8;
  if (!qword_27FE9F3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F3E0, "R7");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F3E8);
  }

  return result;
}

unint64_t sub_261265E5C()
{
  result = qword_27FE9F3F0;
  if (!qword_27FE9F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F3F0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261265EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_261265F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261265F78()
{
  result = qword_27FEA1AF0;
  if (!qword_27FEA1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA1AF0);
  }

  return result;
}

unint64_t sub_261265FD0()
{
  result = qword_27FEA1C00;
  if (!qword_27FEA1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA1C00);
  }

  return result;
}

unint64_t sub_261266028()
{
  result = qword_27FEA1C08[0];
  if (!qword_27FEA1C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA1C08);
  }

  return result;
}

char *sub_26126607C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_261266188(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7461636572706564 && a2 == 0xEF657079546E6F69;
  if (v3 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEF656D69546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2613A241C();

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

uint64_t type metadata accessor for StoreAnalytics(uint64_t a1)
{
  result = qword_27FEA1C90;
  if (!qword_27FEA1C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2612662F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for StoreAnalytics(0);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612663C0, 0, 0);
}

uint64_t sub_2612663C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v0[8] = *(v4 + *(v0[4] + 24));
  sub_261266560(v4, v1);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[9] = v8;
  sub_2612665C4(v1, v8 + v6);
  *(v8 + v7) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v10 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_2612664CC, v10, v9);
}

uint64_t sub_2612664CC()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261266560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreAnalytics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612665C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreAnalytics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261266628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_261266648, 0, 0);
}

uint64_t sub_261266648()
{
  v1 = v0[2];
  type metadata accessor for StoreAnalytics(0);
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_261266708;
  v5 = v0[3];

  return MEMORY[0x2821A5190](v2, v3, v5, 0);
}

uint64_t sub_261266708()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261266800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26125A870(a3, v25 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2613A1BCC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2613A198C() + 32;
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

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

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

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
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

uint64_t sub_261266B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for StoreAnalytics(0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v16;
  v17 = sub_2613A0B1C();
  v18 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 80) = sub_2613A07BC();
  *(inited + 88) = v20;
  *(inited + 120) = v18;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  *(inited + 128) = sub_2613A07CC();
  *(inited + 136) = v21;
  *(inited + 168) = v18;
  if (a4)
  {
    v22 = a4;
  }

  else
  {
    a3 = sub_2613A0BFC();
  }

  *(inited + 144) = a3;
  *(inited + 152) = v22;

  v23 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (a5)
  {
    v24 = a5;
    v25 = sub_2613A086C();
    v27 = v26;
    v28 = [v24 description];
    v29 = sub_2613A18CC();
    v31 = v30;

    v49 = v18;
    *&v48 = v29;
    *(&v48 + 1) = v31;
    sub_26125A7B0(&v48, &v46);
    LOBYTE(v28) = swift_isUniquelyReferenced_nonNull_native();
    v45 = v23;
    v32 = __swift_mutable_project_boxed_opaque_existential_0(&v46, v47);
    MEMORY[0x28223BE20](v32);
    v34 = (&v41 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    sub_261267EDC(*v34, v34[1], v25, v27, v28, &v45);

    __swift_destroy_boxed_opaque_existential_0Tm(&v46);
    v23 = v45;
  }

  v36 = sub_2613A1C1C();
  (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
  v37 = v43;
  sub_261266560(v44, v43);
  v38 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  sub_2612665C4(v37, v39 + v38);
  *(v39 + ((v11 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  sub_261266800(0, 0, v14, &unk_2613A4AC0, v39);
}

uint64_t sub_261266F18()
{
  v1 = type metadata accessor for StoreAnalytics(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2613A1C1C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_261266560(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_2612665C4(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_261266800(0, 0, v6, &unk_2613A4AD0, v9);
}

uint64_t sub_2612670B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for StoreAnalytics(0);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261267178, 0, 0);
}

uint64_t sub_261267178()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  v0[7] = *(v3 + *(v0[3] + 24));
  sub_261266560(v3, v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  sub_2612665C4(v1, v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v7 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261267260, v7, v6);
}

uint64_t sub_261267260()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261267314()
{
  v1 = *(v0 + 16);
  type metadata accessor for StoreAnalytics(0);
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2612673CC;

  return MEMORY[0x2821A5178](v2, v3);
}

uint64_t sub_2612673CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2612674C4(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[6] = swift_task_alloc();
  v2 = sub_26139FA0C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612675BC, 0, 0);
}

uint64_t sub_2612675BC()
{
  sub_26139F9FC();
  v1 = sub_2613A090C();
  v3 = v2;
  *(v0 + 80) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_261267680;

  return MEMORY[0x2821A5168](v1, v3, 0, 0);
}

uint64_t sub_261267680(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[12] = a2;

  return MEMORY[0x2822009F8](sub_2612677A4, 0, 0);
}

uint64_t sub_2612677A4()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[3];
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[7];
    v6 = v0[5];
    v7 = type metadata accessor for StoreAnalytics(0);
    (*(v4 + 16))(&v6[*(v7 + 20)], v3, v5);
    *v6 = v2;
    *(v6 + 1) = v1;
    v8 = *(v7 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
    v9 = sub_26139F8BC();
    (*(v4 + 8))(v3, v5);
    *&v6[v8] = v9;
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v10 = v0[6];
    v11 = sub_26129B934();
    sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      v14 = v0[6];
      (*(v0[8] + 8))(v0[9], v0[7]);
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = sub_2613A122C();
      v16 = sub_2613A1D8C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "Could not create analytics session to report DB events", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      v19 = v0[8];
      v18 = v0[9];
      v21 = v0[6];
      v20 = v0[7];

      (*(v19 + 8))(v18, v20);
      (*(v13 + 8))(v21, v12);
    }

    v22 = v0[5];
    v23 = type metadata accessor for StoreAnalytics(0);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_261267A80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F428, &qword_2613A5500);
  v33 = v4;
  result = sub_2613A223C();
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
        sub_26125A7B0(v24, v34);
      }

      else
      {
        sub_26124C994(v24, v34);
      }

      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
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
      result = sub_26125A7B0(v34, (*(v7 + 56) + 32 * v15));
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

void *sub_261267D38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F428, &qword_2613A5500);
  v2 = *v0;
  v3 = sub_2613A222C();
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
        sub_26124C994(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26125A7B0(v25, (*(v4 + 56) + v22));
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

_OWORD *sub_261267EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_26124E5EC(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return sub_26125A7B0(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_261267D38();
    goto LABEL_7;
  }

  sub_261267A80(v16, a5 & 1);
  v22 = sub_26124E5EC(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_2612680C0(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v28);
}

_OWORD *sub_2612680C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_26125A7B0(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_261268144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F428, &qword_2613A5500);
    v3 = sub_2613A224C();
    v4 = a1 + 32;

    while (1)
    {
      sub_26125A870(v4, &v13, &qword_27FE9F410, &qword_2613A54F0);
      v5 = v13;
      v6 = v14;
      result = sub_26124E5EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26125A7B0(&v15, (v3[7] + 32 * result));
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

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for StoreAnalytics(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_26139FA0C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_261268384()
{
  v2 = *(type metadata accessor for StoreAnalytics(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2612662F8(v5, v6, v7, v0 + v3, v4);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2612684D4()
{
  v2 = *(type metadata accessor for StoreAnalytics(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_2612670B0(v4, v5, v6, v0 + v3);
}

void sub_2612685C4(uint64_t a1)
{
  sub_26139FA0C();
  if (v1 <= 0x3F)
  {
    sub_261268658();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_261268658()
{
  if (!qword_27FE9F418)
  {
    v0 = sub_26139F8CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9F418);
    }
  }
}

uint64_t sub_2612686AC()
{
  v2 = *(type metadata accessor for StoreAnalytics(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_2612672F4(v4, v0 + v3);
}

unint64_t sub_261268774()
{
  result = qword_27FE9F420;
  if (!qword_27FE9F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F400, &unk_2613A4A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F420);
  }

  return result;
}

uint64_t sub_2612687D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261265144;

  return sub_261262E94(a1, v4);
}

uint64_t sub_261268890()
{
  v2 = *(type metadata accessor for StoreAnalytics(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261266628(v5, v0 + v3, v4);
}

uint64_t sub_261268990@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionData;
  swift_beginAccess();
  return sub_2612689E8(v1 + v3, a1);
}

uint64_t sub_2612689E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261268A58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionData;
  swift_beginAccess();
  sub_261268AB8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_261268AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261268B88()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_readError;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_261268BD4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_readError;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_261268C94()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob;
  swift_beginAccess();
  v2 = *v1;
  sub_26125C348(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_261268CF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26124A168(v6, v7);
}

uint64_t sub_261268DB0()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_analyticsLanguageSource);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_261268E08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_analyticsLanguageSource);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_261268EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionData;
  v8 = type metadata accessor for TransactionData(0);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = v6 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_readError;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob) = xmmword_2613A4620;
  v10 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_analyticsLanguageSource);
  *v10 = sub_2613A055C();
  v10[1] = v11;
  v12 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID;
  v13 = sub_26139F13C();
  (*(*(v13 - 8) + 32))(v6 + v12, a1, v13);
  v14 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_pinToken);
  *v14 = a2;
  v14[1] = a3;
  return v6;
}

uint64_t sub_261268FF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for TransactionData(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  (*(*v0 + 136))(v3);
  return (*(*v0 + 184))(0, 0xF000000000000000);
}

BOOL sub_2612690F8()
{
  v1 = (*(*v0 + 176))();
  v3 = v2 >> 60;
  if (v2 >> 60 != 15)
  {
    sub_26124A168(v1, v2);
  }

  return v3 > 0xE;
}

uint64_t sub_261269150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2612691B8()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID;
  v2 = sub_26139F13C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_261269150(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionData);
  sub_26124A168(*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PINStore(uint64_t a1)
{
  result = qword_27FEA1CA0;
  if (!qword_27FEA1CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2612692F4(uint64_t a1)
{
  sub_26139F13C();
  if (v1 <= 0x3F)
  {
    sub_2612693D8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2612693D8(uint64_t a1)
{
  if (!qword_27FE9F350)
  {
    type metadata accessor for TransactionData(255);
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE9F350);
    }
  }
}

uint64_t sub_261269430()
{
  v1 = swift_allocObject();
  v2 = sub_261252928();
  if (v0)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v2;
  }

  return v1;
}

uint64_t sub_2612694A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1720) = v13;
  *(v9 + 1712) = v8;
  *(v9 + 1704) = a8;
  *(v9 + 153) = a5;
  *(v9 + 1696) = a4;
  *(v9 + 1688) = a3;
  *(v9 + 1680) = a2;
  *(v9 + 1672) = a1;
  v10 = sub_26139F13C();
  *(v9 + 1728) = v10;
  *(v9 + 1736) = *(v10 - 8);
  *(v9 + 1744) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = swift_task_alloc();
  *(v9 + 1776) = swift_task_alloc();
  *(v9 + 1784) = swift_task_alloc();
  *(v9 + 1792) = swift_task_alloc();
  *(v9 + 1800) = swift_task_alloc();
  *(v9 + 1808) = swift_task_alloc();
  *(v9 + 1816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126961C, 0, 0);
}

uint64_t sub_26126961C(uint64_t a1)
{
  v122 = v1;
  v2 = *(v1 + 1816);
  v3 = sub_26129B8EC();
  *(v1 + 1824) = v3;
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  *(v1 + 1832) = v4;
  v5 = *(v4 - 8);
  *(v1 + 1840) = v5;
  v6 = *(v5 + 48);
  *(v1 + 1848) = v6;
  *(v1 + 1856) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v107 = v4;
  v7 = v6(v2, 1);
  v8 = *(v1 + 1816);
  if (v7 == 1)
  {
    sub_26124C718(*(v1 + 1816), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v103 = *(v1 + 1712);
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v103, 0xD000000000000044, 0x80000002613B85C0, v10, v11);

    (*(v5 + 8))(v8, v107);
  }

  sub_261272CF4(*(v1 + 1688), *(v1 + 1696));
  v104 = v5;
  v12 = *(v1 + 1688);
  v13 = *(v12 + 80);
  *(v1 + 1864) = v13;
  v14 = *(v12 + 88);
  *(v1 + 1872) = v14;
  *(v1 + 1880) = type metadata accessor for SessionManager();
  v99 = v14;
  v101 = v13;
  v117 = v13;
  v118 = v14;

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  v15 = sub_261273E7C();
  *(v1 + 1888) = v15;
  v16 = sub_261273ED0();
  *(v1 + 1896) = v16;
  v94 = v15;
  v17 = v15;
  v18 = v16;
  sub_2612F7868(v13, v14, &type metadata for StoreAndForwardSession, v17, v16, (v1 + 304));

  v19 = *(v1 + 416);
  *(v1 + 256) = *(v1 + 400);
  *(v1 + 272) = v19;
  *(v1 + 281) = *(v1 + 425);
  v20 = *(v1 + 352);
  *(v1 + 192) = *(v1 + 336);
  *(v1 + 208) = v20;
  v21 = *(v1 + 384);
  *(v1 + 224) = *(v1 + 368);
  *(v1 + 240) = v21;
  v22 = *(v1 + 320);
  *(v1 + 160) = *(v1 + 304);
  *(v1 + 176) = v22;
  if (sub_261273F24(v1 + 160) == 1)
  {
    v23 = (*(**(v1 + 1696) + 376))();
    *(v1 + 1904) = v23;
    if (v23)
    {
      v24 = v23;
      v25 = *(v1 + 1776);
      sub_26125A870(v3, v25, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v6)(v25, 1, v107) == 1)
      {
        sub_26124C718(*(v1 + 1776), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v45 = sub_2613A122C();
        v46 = sub_2613A1D7C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_261243000, v45, v46, "Creating a new SAF session", v47, 2u);
          MEMORY[0x266701350](v47, -1, -1);
        }

        v48 = *(v1 + 1776);

        (*(v104 + 8))(v48, v107);
      }

      v49 = swift_task_alloc();
      *(v1 + 1912) = v49;
      *v49 = v1;
      v49[1] = sub_26126A584;

      return sub_26126B6B0(v101, v14, v24);
    }

    v43 = *(v1 + 1752);
    sub_26125A870(v3, v43, &qword_27FE9F560, &qword_2613A3CB0);
    v44 = (v6)(v43, 1, v107);
    v35 = *(v1 + 1752);
    if (v44 != 1)
    {
      v69 = sub_2613A122C();
      v70 = sub_2613A1D8C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_261243000, v69, v70, "Could not load the previous online session to start SAF mode", v71, 2u);
        MEMORY[0x266701350](v71, -1, -1);
      }

      v72 = *(v1 + 1752);

      (*(v104 + 8))(v72, v107);
      goto LABEL_35;
    }

LABEL_21:
    sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_35:
    v73 = objc_allocWithZone(sub_26139F2CC());
    goto LABEL_36;
  }

  v26 = *(v1 + 1808);
  v113 = *(v1 + 224);
  v114 = *(v1 + 240);
  v115 = *(v1 + 256);
  v116 = *(v1 + 272);
  v109 = *(v1 + 160);
  v110 = *(v1 + 176);
  v111 = *(v1 + 192);
  v112 = *(v1 + 208);
  v27 = *(v1 + 280);
  v97 = *(v1 + 284);
  v28 = *(v1 + 288);
  v92 = *(v1 + 296);
  sub_26125A870(v3, v26, &qword_27FE9F560, &qword_2613A3CB0);
  if ((v6)(v26, 1, v107) == 1)
  {
    sub_26124C718(*(v1 + 1808), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = sub_2613A122C();
    v30 = sub_2613A1D7C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261243000, v29, v30, "A SAF session is available", v31, 2u);
      MEMORY[0x266701350](v31, -1, -1);
    }

    v32 = *(v1 + 1808);

    (*(v104 + 8))(v32, v107);
  }

  if (*(v1 + 153) == 1)
  {
    v33 = *(v1 + 1800);
    *(v1 + 1520) = v113;
    *(v1 + 1536) = v114;
    *(v1 + 1552) = v115;
    *(v1 + 1568) = v116;
    *(v1 + 1456) = v109;
    *(v1 + 1472) = v110;
    *(v1 + 1488) = v111;
    *(v1 + 1504) = v112;
    *(v1 + 1576) = v27;
    *(v1 + 1580) = v97;
    *(v1 + 1584) = v28;
    *(v1 + 1592) = v92;
    sub_261273FD4(v1 + 1456);
    sub_26125A870(v3, v33, &qword_27FE9F560, &qword_2613A3CB0);
    v34 = (v6)(v33, 1, v107);
    v35 = *(v1 + 1800);
    if (v34 != 1)
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "Passcode changed and SAF session was invalidated", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      v39 = *(v1 + 1800);

      (*(v104 + 8))(v39, v107);
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v40 = *(v1 + 1688);
  v41 = *(v40 + 64);
  v42 = *(v40 + 72);
  v51 = sub_26126B184(&v117, *(v1 + 1704), *(*(v1 + 1696) + 48), *(*(v1 + 1696) + 56), v41, v42);
  v53 = v52;
  v85 = v42;
  v86 = v41;
  v87 = v117;
  v88 = v118;
  v54 = v120;
  v90 = v119;
  v55 = v121;
  v56 = sub_2612FF320();
  *(v1 + 1632) = v51;
  *(v1 + 1640) = v53;
  *(v1 + 1648) = v56;
  *(v1 + 1656) = v57;
  sub_261273F80();
  v58 = v51;
  v59 = sub_2613A185C();
  if (v59)
  {
    v60 = *(v1 + 1696);
    v117 = v101;
    v118 = v99;

    MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
    v61 = v117;
    v62 = v118;
    *(v1 + 944) = v113;
    *(v1 + 960) = v114;
    *(v1 + 976) = v115;
    *(v1 + 992) = v116;
    *(v1 + 880) = v109;
    *(v1 + 896) = v110;
    *(v1 + 912) = v111;
    *(v1 + 928) = v112;
    *(v1 + 1000) = v51;
    *(v1 + 1004) = v97;
    *(v1 + 1008) = v53;
    *(v1 + 1016) = v92;
    sub_2612F6F14(v61, v62, v1 + 880, &type metadata for StoreAndForwardSession, v94, v18);

    if (((*(*v60 + 304))(v63) & 1) == 0)
    {
      sub_2612736DC(v86, v85, *(v1 + 1696));
    }

    *(v1 + 1232) = v113;
    *(v1 + 1248) = v114;
    *(v1 + 1264) = v115;
    *(v1 + 1168) = v109;
    *(v1 + 1184) = v110;
    *(v1 + 1200) = v111;
    *(v1 + 1216) = v112;
    *(v1 + 1088) = v113;
    *(v1 + 1104) = v114;
    *(v1 + 1120) = v115;
    *(v1 + 1024) = v109;
    *(v1 + 1040) = v110;
    *(v1 + 1056) = v111;
    *(v1 + 1280) = v116;
    v64 = *(v1 + 1680);
    *(v1 + 1288) = v58;
    *(v1 + 1292) = v97;
    *(v1 + 1296) = v53;
    *(v1 + 1304) = v92;
    *(v1 + 1136) = v116;
    *(v1 + 1072) = v112;
    *(v1 + 1144) = v58;
    *(v1 + 1148) = v97;
    *(v1 + 1152) = v53;
    *(v1 + 1160) = v92;
    sub_261274028(v1 + 1168, v1 + 1312);
    sub_261273FD4(v1 + 1024);
    *v64 = v87;
    v64[1] = v88;
    v64[2] = v90;
    v64[3] = v54;
    v64[4] = v55;
    v108 = *(v1 + 1304);
    v105 = *(v1 + 1288);
    v65 = *(v1 + 1296);
    v66 = *(v1 + 1280);
    v100 = *(v1 + 1272);
    v102 = *(v1 + 1264);
    v96 = *(v1 + 1232);
    v98 = *(v1 + 1248);
    v93 = *(v1 + 1200);
    v95 = *(v1 + 1216);
    v89 = *(v1 + 1168);
    v91 = *(v1 + 1184);
    v67 = *(v1 + 1672);

    *v67 = v89;
    *(v67 + 16) = v91;
    *(v67 + 32) = v93;
    *(v67 + 48) = v95;
    *(v67 + 64) = v96;
    *(v67 + 80) = v98;
    *(v67 + 96) = v102;
    *(v67 + 104) = v100;
    *(v67 + 112) = v66;
    *(v67 + 120) = v105;
    *(v67 + 128) = v65;
    *(v67 + 136) = v108;
    v68 = *(v1 + 8);
    goto LABEL_37;
  }

  v78 = v27;
  v79 = *(v1 + 1792);
  sub_261273F3C(v87, v88, v90, v54, v55);
  *(v1 + 800) = v113;
  *(v1 + 816) = v114;
  *(v1 + 832) = v115;
  *(v1 + 848) = v116;
  *(v1 + 736) = v109;
  *(v1 + 752) = v110;
  *(v1 + 768) = v111;
  *(v1 + 784) = v112;
  *(v1 + 856) = v78;
  *(v1 + 860) = v97;
  *(v1 + 864) = v28;
  *(v1 + 872) = v92;
  sub_261273FD4(v1 + 736);
  sub_26125A870(v3, v79, &qword_27FE9F560, &qword_2613A3CB0);
  if ((v6)(v79, 1, v107) == 1)
  {
    sub_26124C718(*(v1 + 1792), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v80 = sub_2613A122C();
    v81 = sub_2613A1D8C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_261243000, v80, v81, "Stored SAF session has expired", v82, 2u);
      MEMORY[0x266701350](v82, -1, -1);
    }

    v83 = *(v1 + 1792);

    (*(v104 + 8))(v83, v107);
  }

  v84 = objc_allocWithZone(sub_26139F2CC());
LABEL_36:
  v74 = sub_26139F2DC();
  sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
  v75 = swift_allocError();
  *v76 = v74;
  swift_willThrow();
  v106 = *(v1 + 1720);
  v77 = sub_2612738E0(v75);
  *(v1 + 1664) = v77;
  sub_26139F2CC();
  sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
  swift_willThrowTypedImpl();

  *v106 = v77;
  v68 = *(v1 + 8);
LABEL_37:

  return v68();
}

uint64_t sub_26126A584()
{
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v2 = sub_26126AEFC;
  }

  else
  {
    v2 = sub_26126A698;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26126A698()
{
  v108 = v0;
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1688);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v5 = sub_26126B184(&v103, *(v0 + 1704), *(*(v0 + 1696) + 48), *(*(v0 + 1696) + 56), v3, v4);
  v7 = *(v0 + 1904);
  if (v1)
  {
    v8 = v1;
  }

  else
  {
    v9 = v107;
    v10 = *(v7 + 144);
    if (v10)
    {
      v11 = v6;
      v94 = v103;
      v96 = v104;
      v98 = v105;
      v100 = v106;
      v12 = *(v7 + 136);

      v13 = sub_2612FF320();
      *(v0 + 1600) = v5;
      *(v0 + 1608) = v11;
      *(v0 + 1616) = v13;
      *(v0 + 1624) = v14;
      sub_261273F80();
      if (sub_2613A185C())
      {
        v90 = v9;
        v15 = *(v0 + 1904);
        v86 = *(v0 + 1896);
        v83 = *(v0 + 1888);
        v81 = *(v0 + 1864);
        v82 = *(v0 + 1872);
        v16 = *(v0 + 1744);
        v80 = v12;
        v17 = *(v0 + 1736);
        v18 = *(v0 + 1728);
        v92 = *(v0 + 1696);
        v19 = *(v0 + 1688);
        v88 = *(v0 + 1680);
        sub_26139F12C();
        v78 = sub_26139F0FC();
        v79 = v20;
        v21 = (*(v17 + 8))(v16, v18);
        v22 = (*(*v15 + 192))(v21);
        v76 = v23;
        v77 = v22;
        v24 = v15[14];
        v74 = v15[13];
        v75 = v15[6];
        v25 = *(v19 + 40);
        v72 = *(v19 + 32);
        v73 = v15[7];
        v71 = *(*v92 + 208);

        v27 = v71(v26);
        *&v70 = v3;
        *(&v70 + 1) = v4;
        *&v69 = v80;
        *(&v69 + 1) = v10;
        sub_26127E734(v78, v79, v77, v76, v75, v73, v74, v24, v0 + 16, v27, v11, v69, v70, v72, v25, v5, 0);
        v103 = v81;
        v104 = v82;

        MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
        v28 = v103;
        v29 = v104;
        v30 = *(v0 + 128);
        *(v0 + 544) = *(v0 + 112);
        *(v0 + 560) = v30;
        *(v0 + 569) = *(v0 + 137);
        v31 = *(v0 + 64);
        *(v0 + 480) = *(v0 + 48);
        *(v0 + 496) = v31;
        v32 = *(v0 + 96);
        *(v0 + 512) = *(v0 + 80);
        *(v0 + 528) = v32;
        v33 = *(v0 + 32);
        *(v0 + 448) = *(v0 + 16);
        *(v0 + 464) = v33;
        sub_2612F6F14(v28, v29, v0 + 448, &type metadata for StoreAndForwardSession, v83, v86);

        sub_2612736DC(v3, v4, v92);

        *v88 = v94;
        v88[1] = v96;
        v88[2] = v98;
        v88[3] = v100;
        v88[4] = v90;
        v101 = *(v0 + 152);
        v99 = *(v0 + 136);
        v34 = *(v0 + 144);
        v35 = *(v0 + 128);
        v95 = *(v0 + 120);
        v97 = *(v0 + 112);
        v91 = *(v0 + 80);
        v93 = *(v0 + 96);
        v87 = *(v0 + 48);
        v89 = *(v0 + 64);
        v84 = *(v0 + 16);
        v85 = *(v0 + 32);
        v36 = *(v0 + 1672);

        *v36 = v84;
        *(v36 + 16) = v85;
        *(v36 + 32) = v87;
        *(v36 + 48) = v89;
        *(v36 + 64) = v91;
        *(v36 + 80) = v93;
        *(v36 + 96) = v97;
        *(v36 + 104) = v95;
        *(v36 + 112) = v35;
        *(v36 + 120) = v99;
        *(v36 + 128) = v34;
        *(v36 + 136) = v101;
        v37 = *(v0 + 8);
        goto LABEL_20;
      }

      v42 = *(v0 + 1848);
      v43 = *(v0 + 1832);
      v44 = *(v0 + 1824);
      v45 = *(v0 + 1768);
      sub_261273F3C(v94, v96, v98, v100, v9);

      sub_26125A870(v44, v45, &qword_27FE9F560, &qword_2613A3CB0);
      if (v42(v45, 1, v43) == 1)
      {
        sub_26124C718(*(v0 + 1768), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v58 = sub_2613A122C();
        v59 = sub_2613A1D8C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_261243000, v58, v59, "SAF is expired, cannot create session", v60, 2u);
          MEMORY[0x266701350](v60, -1, -1);
        }

        v61 = *(v0 + 1840);
        v62 = *(v0 + 1832);
        v63 = *(v0 + 1768);

        (*(v61 + 8))(v63, v62);
      }

      v64 = objc_allocWithZone(sub_26139F2CC());
    }

    else
    {
      v38 = *(v0 + 1848);
      v39 = *(v0 + 1832);
      v40 = *(v0 + 1824);
      v41 = *(v0 + 1760);
      sub_261273F3C(v103, v104, v105, v106, v107);
      sub_26125A870(v40, v41, &qword_27FE9F560, &qword_2613A3CB0);
      if (v38(v41, 1, v39) == 1)
      {
        sub_26124C718(*(v0 + 1760), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v46 = sub_2613A122C();
        v47 = sub_2613A1D8C();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_261243000, v46, v47, "Could not retrieve SAF tpid", v48, 2u);
          MEMORY[0x266701350](v48, -1, -1);
        }

        v49 = *(v0 + 1840);
        v50 = *(v0 + 1832);
        v51 = *(v0 + 1760);

        (*(v49 + 8))(v51, v50);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2613A4310;
      v53 = sub_26139F2CC();
      *(v52 + 32) = sub_26139F27C();
      *(v52 + 40) = v54;
      v55 = sub_2613A0F3C();
      *(v52 + 72) = MEMORY[0x277D837D0];
      *(v52 + 48) = v55;
      *(v52 + 56) = v56;
      sub_261259E78(v52);
      swift_setDeallocating();
      sub_26124C718(v52 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
      swift_deallocClassInstance();
      v57 = objc_allocWithZone(v53);
    }

    v65 = sub_26139F2DC();
    sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
    v8 = swift_allocError();
    *v66 = v65;
    swift_willThrow();
  }

  v102 = *(v0 + 1720);
  v67 = sub_2612738E0(v8);
  *(v0 + 1664) = v67;
  sub_26139F2CC();
  sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
  swift_willThrowTypedImpl();

  *v102 = v67;
  v37 = *(v0 + 8);
LABEL_20:

  return v37();
}

uint64_t sub_26126AEFC()
{

  v1 = v0[240];
  v5 = v0[215];
  v2 = sub_2612738E0(v1);
  v0[208] = v2;
  sub_26139F2CC();
  sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
  swift_willThrowTypedImpl();

  *v5 = v2;
  v3 = v0[1];

  return v3();
}

__n128 sub_26126B07C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SessionManager();
  *&v16 = a1;
  *(&v16 + 1) = a2;

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  v6 = sub_261273E7C();
  v7 = sub_261273ED0();
  sub_2612F7868(a1, a2, &type metadata for StoreAndForwardSession, v6, v7, v14);

  *(&v20[1] + 1) = *&v15[9];
  v20[1] = *&v15[8];
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  result = v14[1];
  v16 = v14[0];
  v9 = v14[5];
  v10 = *v15;
  *(a3 + 96) = v14[6];
  *(a3 + 112) = v10;
  *(a3 + 121) = *(&v20[1] + 1);
  v11 = v18;
  v12 = v19;
  v13 = v16;
  *(a3 + 32) = v17;
  *(a3 + 48) = v11;
  *(a3 + 64) = v12;
  *(a3 + 80) = v9;
  *a3 = v13;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_26126B184(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  v19 = *(v18 + 56);
  v57 = a3;
  v58 = a4;
  v20 = v59;
  result = v19(a3, a4, 0, 1, a5, a6, v17, v18);
  if (!v20)
  {
    v24 = v23;
    v56 = v22;
    v25 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v25);
    (*(v26 + 96))(v57, v58, v25, v26);
    v58 = 0;
    v28 = v27;
    type metadata accessor for Mock();
    v29 = sub_26129B284(29);
    v59 = v24;
    if (v29 >= 1)
    {
      v30 = v29;
      v31 = sub_26129B8EC();
      sub_26125A870(v31, v16, &qword_27FE9F560, &qword_2613A3CB0);
      v32 = sub_2613A124C();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v16, 1, v32) == 1)
      {
        sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v34 = sub_2613A122C();
        v35 = sub_2613A1D7C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          *(v36 + 4) = v30;
          _os_log_impl(&dword_261243000, v34, v35, "Using mocked SAF mode expiration interval of %ld seconds", v36, 0xCu);
          MEMORY[0x266701350](v36, -1, -1);
        }

        (*(v33 + 8))(v16, v32);
      }

      v28 = v30;
    }

    v37 = v60;
    v38 = sub_26129B8EC();
    sub_26125A870(v38, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v39 = sub_2613A124C();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v14, 1, v39) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v41 = sub_2613A122C();
      v42 = sub_2613A1D9C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v61[0] = v44;
        *v43 = 136315138;
        sub_26124BFC4(v28);
        v47 = sub_26124C11C(v45, v46, v61);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_261243000, v41, v42, "SAF session expires in: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x266701350](v44, -1, -1);
        MEMORY[0x266701350](v43, -1, -1);
      }

      (*(v40 + 8))(v14, v39);
      v37 = v60;
    }

    result = v59;
    v48 = *(v59 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = (v59 + 64);
      while (v49 < *(result + 16))
      {
        v51 = *(v50 - 4);
        v52 = *(v50 - 3);
        v53 = *(v50 - 2);
        v54 = *(v50 - 1);
        v55 = *v50;
        v61[0] = v51;
        v61[1] = v52;
        v61[2] = v53;
        v61[3] = v54;
        v61[4] = v55;

        if (DeprecationWarning.isOSVersionDeprecation.getter())
        {

          v37 = v60;
          goto LABEL_23;
        }

        ++v49;
        v50 += 5;
        result = v59;
        v37 = v60;
        if (v48 == v49)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:

      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
LABEL_23:

      sub_2612FF320();
      result = sub_2612FF364();
      *v37 = v51;
      v37[1] = v52;
      v37[2] = v53;
      v37[3] = v54;
      v37[4] = v55;
    }
  }

  return result;
}

uint64_t sub_26126B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4[6] = swift_task_alloc();
  v5 = sub_2613A1EBC();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v4[10] = swift_task_alloc();
  v6 = sub_26139F13C();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v4[13] = *(v7 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126B854, 0, 0);
}

uint64_t sub_26126B854()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_26139F0CC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    sub_26124C718(v0[10], &qword_27FE9F280, &unk_2613A42B0);
    v5 = sub_26129B8EC();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(v0[6], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_261243000, v23, v24, "Could not parse partner ID", v25, 2u);
        MEMORY[0x266701350](v25, -1, -1);
      }

      v26 = v0[6];

      (*(v7 + 8))(v26, v6);
    }

    v27 = objc_allocWithZone(sub_26139F2CC());
    v28 = sub_26139F2DC();
    sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
    swift_allocError();
    *v29 = v28;
    swift_willThrow();

    v30 = v0[1];

    return v30();
  }

  else
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[12];
    v11 = v0[11];
    v31 = v0[9];
    v12 = v0[5];
    v14 = v0[2];
    v13 = v0[3];
    v15 = *(v10 + 32);
    v15(v8, v0[10], v11);
    v16 = *(v12 + 16);
    v0[16] = v16;
    (*(v10 + 16))(v9, v8, v11);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    v0[17] = v18;
    *(v18 + 16) = v14;
    *(v18 + 24) = v13;
    v15(v18 + v17, v9, v11);

    v19 = MEMORY[0x277D84F78];
    sub_2612529C0(v31);
    v20 = swift_task_alloc();
    v0[18] = v20;
    *v20 = v0;
    v20[1] = sub_26126BC5C;
    v21 = v0[9];

    return sub_261252A34(v20, v21, sub_2612745FC, v18, v16, v19 + 8);
  }
}

uint64_t sub_26126BC5C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26126BEC4;
  }

  else
  {
    v5 = sub_26126BE0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26126BE0C()
{
  (*(v0[12] + 8))(v0[15], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26126BEC4()
{
  (*(v0[12] + 8))(v0[15], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26126BF78(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v4 = sub_26139F0BC();
  v3[70] = v4;
  v3[71] = *(v4 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v5 = sub_2613A1EBC();
  v3[74] = v5;
  v3[75] = *(v5 - 8);
  v3[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126C0EC, 0, 0);
}

uint64_t sub_26126C0EC()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  type metadata accessor for SessionManager();

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  v3 = sub_261273E7C();
  v4 = sub_261273ED0();
  sub_2612F7868(v2, v1, &type metadata for StoreAndForwardSession, v3, v4, (v0 + 304));

  *(v0 + 281) = *(v0 + 425);
  v5 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v5;
  v6 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v6;
  v7 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v7;
  v8 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v8;
  v9 = *(v0 + 272);
  *(v0 + 112) = *(v0 + 256);
  *(v0 + 128) = v9;
  *(v0 + 137) = *(v0 + 281);
  v10 = *(v0 + 208);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v10;
  v11 = *(v0 + 240);
  *(v0 + 80) = *(v0 + 224);
  *(v0 + 96) = v11;
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v8;
  if (sub_261273F24(v0 + 16) == 1)
  {
    v12 = *(v0 + 552);
    v13 = sub_26129B8EC();
    sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_26124C718(*(v0 + 552), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "SAF mode was not started", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      v28 = *(v0 + 552);

      (*(v15 + 8))(v28, v14);
    }

    *(v0 + 472) = 3;
    *(v0 + 480) = 2;
    sub_261274084();
    swift_willThrowTypedImpl();

    v29 = *(v0 + 8);

    return v29(3, 2);
  }

  else
  {
    v16 = *(v0 + 608);
    v17 = *(v0 + 528);
    v18 = *(v0 + 520);
    v19 = *(*(v0 + 536) + 16);
    *(v0 + 616) = v19;
    v20 = swift_allocObject();
    *(v0 + 624) = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v17;

    v21 = MEMORY[0x277D83B88];
    sub_2612529C0(v16);
    v22 = swift_task_alloc();
    *(v0 + 632) = v22;
    *v22 = v0;
    v22[1] = sub_26126C4C4;
    v23 = *(v0 + 608);

    return sub_261252A34(v0 + 504, v23, sub_2612746F8, v20, v19, v21);
  }
}

uint64_t sub_26126C4C4()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *(*v1 + 600);
  v5 = *(*v1 + 592);
  *(*v1 + 640) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    sub_26124C718(v2 + 160, &qword_27FE9F458, &unk_2613A4BE0);
    v6 = sub_26126C818;
  }

  else
  {
    v6 = sub_26126C698;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26126C698(uint64_t a1)
{
  v2 = v1[73];
  v3 = v1[72];
  v4 = v1[71];
  v5 = v1[70];
  sub_2612FF320();
  sub_26124C718((v1 + 20), &qword_27FE9F458, &unk_2613A4BE0);
  sub_26139F09C();
  sub_26139F04C();
  v6 = *(v4 + 8);
  v6(v3, v5);
  (*(v4 + 16))(v3, v2, v5);
  v7 = objc_allocWithZone(sub_2613A004C());
  v8 = sub_2613A003C();
  v6(v2, v5);

  v9 = v1[1];

  return v9(v8);
}

uint64_t sub_26126C818(uint64_t a1)
{
  v2 = *(v1 + 544);
  v3 = sub_26129B8EC();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(*(v1 + 544), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = *(v1 + 640);
    v7 = v6;
    v8 = sub_2613A122C();
    v9 = sub_2613A1D8C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v1 + 640);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v10;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_261243000, v8, v9, "An error happened while retrieving SAF status: [%@]", v11, 0xCu);
      sub_26124C718(v12, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v15 = *(v1 + 544);

    (*(v5 + 8))(v15, v4);
  }

  v16 = *(v1 + 640);
  swift_getErrorValue();
  v17 = sub_2613A250C();
  *(v1 + 488) = v17;
  *(v1 + 496) = 1;
  sub_261274084();
  swift_willThrowTypedImpl();

  v18 = *(v1 + 8);

  return v18(v17, 1);
}

uint64_t sub_26126CAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_26139F13C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  v7 = sub_2613A1EBC();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126CC1C, 0, 0);
}

uint64_t sub_26126CC1C(uint64_t a1)
{
  v2 = v1[25];
  v3 = sub_26129B8EC();
  v1[26] = v3;
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v1[27] = v4;
  v5 = *(v4 - 8);
  v1[28] = v5;
  v6 = *(v5 + 48);
  v1[29] = v6;
  v1[30] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v2, 1, v4);
  v8 = v1[25];
  if (v7 == 1)
  {
    sub_26124C718(v1[25], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = v1[16];
    v10 = sub_26125A798();
    v11 = sub_261291AA8();
    sub_26129BC3C(v10 & 1, v9, 0xD000000000000031, 0x80000002613B8610, v11, v12);

    (*(v5 + 8))(v8, v4);
  }

  v14 = v1[22];
  v13 = v1[23];
  v16 = v1[20];
  v15 = v1[21];
  v17 = v1[18];
  v18 = v1[17];
  v20 = v1[14];
  v19 = v1[15];
  v21 = v1[13];
  v22 = *(v1[16] + 16);
  v1[31] = v22;
  (*(v14 + 104))(v13, *MEMORY[0x277CBE110], v15);
  (*(v17 + 16))(v16, v19, v18);
  v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v24 = swift_allocObject();
  v1[32] = v24;
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  (*(v17 + 32))(v24 + v23, v16, v18);

  v25 = swift_task_alloc();
  v1[33] = v25;
  *v25 = v1;
  v25[1] = sub_26126CEC4;
  v26 = v1[23];
  v27 = MEMORY[0x277D84F78] + 8;

  return sub_261252A34(v25, v26, sub_2612740D8, v24, v22, v27);
}

uint64_t sub_26126CEC4()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  *(*v1 + 272) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26126D100;
  }

  else
  {
    v5 = sub_26126D074;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26126D074()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26126D100()
{
  v1 = *(v0 + 272);
  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 40);
    *(v0 + 72) = v3;
    v4 = *(v0 + 48);
    *(v0 + 80) = v4;
    sub_261274084();
    swift_willThrowTypedImpl();
    v5 = *(v0 + 88);
  }

  else
  {
    v6 = *(v0 + 232);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 192);

    sub_26125A870(v8, v9, &qword_27FE9F560, &qword_2613A3CB0);
    if (v6(v9, 1, v7) == 1)
    {
      sub_26124C718(*(v0 + 192), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v10 = *(v0 + 272);
      v11 = v10;
      v12 = sub_2613A122C();
      v13 = sub_2613A1D8C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 272);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = v14;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_261243000, v12, v13, "An error happened while declining a SAF transaction: [%@]", v15, 0xCu);
        sub_26124C718(v16, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v16, -1, -1);
        MEMORY[0x266701350](v15, -1, -1);
      }

      v19 = *(v0 + 216);
      v20 = *(v0 + 224);
      v21 = *(v0 + 192);

      (*(v20 + 8))(v21, v19);
    }

    v22 = *(v0 + 272);
    swift_getErrorValue();
    v3 = sub_2613A250C();
    *(v0 + 56) = v3;
    v4 = 1;
    *(v0 + 64) = 1;
    sub_261274084();
    swift_willThrowTypedImpl();
    v5 = v22;
  }

  v23 = *(v0 + 8);

  return v23(v3, v4);
}

void sub_26126D3E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = sub_261253708(a2, a3, a4, a5);
  if (!v5)
  {
    if (v19)
    {
      v42 = v19;
      if (sub_2612525F4(v19))
      {
        if (!sub_261252400())
        {
          sub_261255FE0(a2, a3, a4, a5);
LABEL_25:

          return;
        }

        v20 = sub_26129B8EC();
        sub_26125A870(v20, v16, &qword_27FE9F560, &qword_2613A3CB0);
        v21 = sub_2613A124C();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v16, 1, v21) == 1)
        {
          sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v38 = sub_2613A122C();
          v39 = sub_2613A1D8C();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_261243000, v38, v39, "Transaction cannot be declined as it was included in a batch", v40, 2u);
            MEMORY[0x266701350](v40, -1, -1);
          }

          (*(v22 + 8))(v16, v21);
        }

        sub_261274084();
        swift_allocError();
        v37 = 5;
      }

      else
      {
        v26 = sub_26129B8EC();
        sub_26125A870(v26, v13, &qword_27FE9F560, &qword_2613A3CB0);
        v27 = sub_2613A124C();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(v13, 1, v27) == 1)
        {
          sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v33 = sub_2613A122C();
          v34 = sub_2613A1D8C();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_261243000, v33, v34, "Transaction declination time has expired", v35, 2u);
            MEMORY[0x266701350](v35, -1, -1);
          }

          (*(v28 + 8))(v13, v27);
        }

        sub_261274084();
        swift_allocError();
        v37 = 4;
      }

      *v36 = v37;
      *(v36 + 8) = 2;
      swift_willThrow();
      goto LABEL_25;
    }

    v23 = sub_26129B8EC();
    sub_26125A870(v23, v18, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v18, 1, v24) == 1)
    {
      sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "Could not decline transaction as it was not found", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v25 + 8))(v18, v24);
    }

    sub_261274084();
    swift_allocError();
    *v32 = 6;
    *(v32 + 8) = 2;
    swift_willThrow();
  }
}

uint64_t sub_26126D92C(uint64_t a1)
{
  v2[132] = v1;
  v2[131] = a1;
  v3 = type metadata accessor for StoreAndForwardReadResult(0);
  v2[133] = v3;
  v4 = *(v3 - 8);
  v2[134] = v4;
  v2[135] = *(v4 + 64);
  v2[136] = swift_task_alloc();
  v5 = sub_2613A1EBC();
  v2[137] = v5;
  v2[138] = *(v5 - 8);
  v2[139] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v2[140] = swift_task_alloc();
  v6 = sub_26139F13C();
  v2[141] = v6;
  v7 = *(v6 - 8);
  v2[142] = v7;
  v2[143] = *(v7 + 64);
  v2[144] = swift_task_alloc();
  v2[145] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();
  v2[148] = swift_task_alloc();
  v2[149] = swift_task_alloc();
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v2[152] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126DB7C, 0, 0);
}

uint64_t sub_26126DB7C(uint64_t a1)
{
  v2 = *(v1 + 1216);
  v3 = sub_26129B8EC();
  *(v1 + 1224) = v3;
  v117 = v3;
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  *(v1 + 1232) = v4;
  v5 = *(v4 - 8);
  *(v1 + 1240) = v5;
  v6 = *(v5 + 48);
  *(v1 + 1248) = v6;
  *(v1 + 1256) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2, 1, v4) == 1)
  {
    v7 = v4;
    sub_26124C718(*(v1 + 1216), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v6;
      v11 = v5;
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "handleReadResult", v12, 2u);
      v13 = v12;
      v5 = v11;
      v6 = v10;
      MEMORY[0x266701350](v13, -1, -1);
    }

    v14 = *(v1 + 1216);

    v7 = v4;
    (*(v5 + 8))(v14, v4);
  }

  v15 = *(v1 + 1048);
  v16 = *v15;
  v17 = v15[1];
  type metadata accessor for SessionManager();
  v112 = v16;
  v113 = v17;
  v120 = v17;

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  v18 = v16;
  v19 = sub_261273E7C();
  v114 = sub_261273ED0();
  v115 = v19;
  sub_2612F7868(v18, v120, &type metadata for StoreAndForwardSession, v19, v114, (v1 + 160));

  v20 = *(v1 + 272);
  *(v1 + 112) = *(v1 + 256);
  *(v1 + 128) = v20;
  *(v1 + 137) = *(v1 + 281);
  v21 = *(v1 + 208);
  *(v1 + 48) = *(v1 + 192);
  *(v1 + 64) = v21;
  v22 = *(v1 + 240);
  *(v1 + 80) = *(v1 + 224);
  *(v1 + 96) = v22;
  v23 = *(v1 + 176);
  *(v1 + 16) = *(v1 + 160);
  *(v1 + 32) = v23;
  v24 = v7;
  if (sub_261273F24(v1 + 16) == 1)
  {
    goto LABEL_9;
  }

  v110 = v5;
  v111 = v6;
  v25 = (v1 + 880);
  v26 = *(v1 + 1136);
  v27 = *(v1 + 1128);
  v28 = *(v1 + 1120);
  v29 = *(v1 + 128);
  *(v1 + 976) = *(v1 + 112);
  *(v1 + 992) = v29;
  *(v1 + 1008) = *(v1 + 144);
  v30 = *(v1 + 64);
  *(v1 + 912) = *(v1 + 48);
  *(v1 + 928) = v30;
  v31 = *(v1 + 96);
  *(v1 + 944) = *(v1 + 80);
  *(v1 + 960) = v31;
  v32 = *(v1 + 32);
  *(v1 + 880) = *(v1 + 16);
  *(v1 + 896) = v32;
  v33 = *(v1 + 152);

  sub_26139F0CC();

  if ((*(v26 + 48))(v28, 1, v27) == 1)
  {
    v34 = *(v1 + 1120);
    v35 = *(v1 + 992);
    *(v1 + 400) = *(v1 + 976);
    *(v1 + 416) = v35;
    *(v1 + 432) = *(v1 + 1008);
    v36 = *(v1 + 928);
    *(v1 + 336) = *(v1 + 912);
    *(v1 + 352) = v36;
    v37 = *(v1 + 960);
    *(v1 + 368) = *(v1 + 944);
    *(v1 + 384) = v37;
    v38 = *(v1 + 896);
    *(v1 + 304) = *v25;
    *(v1 + 320) = v38;
    *(v1 + 440) = v33;
    sub_261273FD4(v1 + 304);
    sub_26124C718(v34, &qword_27FE9F280, &unk_2613A42B0);
    v5 = v110;
    v6 = v111;
LABEL_9:
    v39 = *(v1 + 1176);
    sub_26125A870(v117, v39, &qword_27FE9F560, &qword_2613A3CB0);
    if (v6(v39, 1, v24) == 1)
    {
      sub_26124C718(*(v1 + 1176), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v40 = sub_2613A122C();
      v41 = sub_2613A1D8C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_261243000, v40, v41, "Could not load SAF session", v42, 2u);
        MEMORY[0x266701350](v42, -1, -1);
      }

      v43 = *(v1 + 1176);

      (*(v5 + 8))(v43, v24);
    }

    v118 = 3;
LABEL_15:

    v44 = *(v1 + 8);

    return v44(v118, 2);
  }

  v46 = *(v1 + 1064);
  v47 = *(v1 + 1048);
  v109 = *(*(v1 + 1136) + 32);
  v109(*(v1 + 1160), *(v1 + 1120), *(v1 + 1128));
  type metadata accessor for Mock();
  v48 = sub_26129B338(36);
  v49 = v47 + *(v46 + 24);
  if (*(v49 + *(type metadata accessor for TransactionData(0) + 132)) != 1)
  {
    v50 = v111;
    if ((v48 & 1) == 0)
    {
LABEL_28:
      v62 = (v1 + 448);
      v63 = *(v1 + 1184);
      sub_26125A870(v117, v63, &qword_27FE9F560, &qword_2613A3CB0);
      if (v50(v63, 1, v24) == 1)
      {
        sub_26124C718(*(v1 + 1184), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v64 = sub_2613A122C();
        v65 = sub_2613A1D8C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_261243000, v64, v65, "Read was not executed in SAF mode, updating SAF session to force a new prepare", v66, 2u);
          MEMORY[0x266701350](v66, -1, -1);
        }

        v67 = *(v1 + 1184);

        (*(v110 + 8))(v67, v24);
      }

      v68 = *(v1 + 1160);
      v69 = *(v1 + 1136);
      v70 = *(v1 + 1128);
      v71 = *(v1 + 992);
      *(v1 + 544) = *(v1 + 976);
      *(v1 + 560) = v71;
      *(v1 + 576) = *(v1 + 1008);
      v72 = *(v1 + 928);
      *(v1 + 480) = *(v1 + 912);
      *(v1 + 496) = v72;
      v73 = *(v1 + 960);
      *(v1 + 512) = *(v1 + 944);
      *(v1 + 528) = v73;
      v74 = *(v1 + 896);
      *v62 = *v25;
      *(v1 + 464) = v74;
      v118 = 1;
      *(v1 + 584) = 1;

      MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
      v75 = *(v1 + 560);
      *(v1 + 688) = *(v1 + 544);
      *(v1 + 704) = v75;
      *(v1 + 713) = *(v1 + 569);
      v76 = *(v1 + 496);
      *(v1 + 624) = *(v1 + 480);
      *(v1 + 640) = v76;
      v77 = *(v1 + 528);
      *(v1 + 656) = *(v1 + 512);
      *(v1 + 672) = v77;
      v78 = *(v1 + 464);
      *(v1 + 592) = *v62;
      *(v1 + 608) = v78;
      sub_2612F6F14(v112, v113, v1 + 592, &type metadata for StoreAndForwardSession, v115, v114);

      (*(v69 + 8))(v68, v70);
      sub_261273FD4(v1 + 448);
      goto LABEL_15;
    }

LABEL_23:
    v57 = *(v1 + 1192);
    sub_26125A870(v117, v57, &qword_27FE9F560, &qword_2613A3CB0);
    if (v50(v57, 1, v24) == 1)
    {
      sub_26124C718(*(v1 + 1192), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v58 = sub_2613A122C();
      v59 = sub_2613A1D7C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_261243000, v58, v59, "Simulating SAF reader mode mismatch", v60, 2u);
        MEMORY[0x266701350](v60, -1, -1);
      }

      v61 = *(v1 + 1192);

      (*(v110 + 8))(v61, v24);
    }

    goto LABEL_28;
  }

  v50 = v111;
  if (v48)
  {
    goto LABEL_23;
  }

  v51 = *(v1 + 1208);
  v52 = *(v1 + 992);
  *(v1 + 832) = *(v1 + 976);
  *(v1 + 848) = v52;
  *(v1 + 864) = *(v1 + 1008);
  v53 = *(v1 + 928);
  *(v1 + 768) = *(v1 + 912);
  *(v1 + 784) = v53;
  v54 = *(v1 + 960);
  *(v1 + 800) = *(v1 + 944);
  *(v1 + 816) = v54;
  v55 = *(v1 + 896);
  *(v1 + 736) = *v25;
  *(v1 + 752) = v55;
  *(v1 + 872) = v33;
  sub_261273FD4(v1 + 736);
  sub_26125A870(v117, v51, &qword_27FE9F560, &qword_2613A3CB0);
  if (v111(v51, 1, v24) == 1)
  {
    sub_26124C718(*(v1 + 1208), &qword_27FE9F560, &qword_2613A3CB0);
    v56 = v110;
  }

  else
  {
    v79 = sub_2613A122C();
    v80 = sub_2613A1D7C();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_261243000, v79, v80, "Saving SAF transaction", v81, 2u);
      MEMORY[0x266701350](v81, -1, -1);
    }

    v82 = *(v1 + 1208);

    v56 = v110;
    (*(v110 + 8))(v82, v24);
  }

  v83 = sub_26129B284(30);
  if (v83 < 1)
  {
    v86 = *(v1 + 128);
  }

  else
  {
    v84 = v83;
    v85 = *(v1 + 1200);
    sub_26125A870(v117, v85, &qword_27FE9F560, &qword_2613A3CB0);
    if (v111(v85, 1, v24) == 1)
    {
      sub_26124C718(*(v1 + 1200), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v87 = sub_2613A122C();
      v88 = sub_2613A1D7C();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_261243000, v87, v88, "Using mocked SAF transactions expiration", v89, 2u);
        v90 = v89;
        v56 = v110;
        MEMORY[0x266701350](v90, -1, -1);
      }

      v91 = *(v1 + 1200);

      (*(v56 + 8))(v91, v24);
    }

    v86 = v84;
  }

  v92 = *(v1 + 1160);
  v93 = *(v1 + 1152);
  v94 = *(v1 + 1136);
  v95 = *(v1 + 1128);
  v96 = *(v1 + 1112);
  v97 = *(v1 + 1104);
  v98 = *(v1 + 1096);
  v99 = *(v1 + 1088);
  v100 = *(v1 + 1080);
  v101 = *(v1 + 1072);
  v102 = *(v1 + 1048);
  v116 = *(v1 + 1144);
  v119 = *(*(v1 + 1056) + 16);
  *(v1 + 1264) = v119;
  (*(v97 + 104))(v96, *MEMORY[0x277CBE110], v98);
  sub_261259440(v102, v99);
  (*(v94 + 16))(v93, v92, v95);
  v103 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v104 = (v100 + *(v94 + 80) + v103) & ~*(v94 + 80);
  v105 = swift_allocObject();
  *(v1 + 1272) = v105;
  sub_261274104(v99, v105 + v103);
  v109(v105 + v104, v93, v95);
  *(v105 + ((v116 + v104 + 7) & 0xFFFFFFFFFFFFFFF8)) = v86;

  v106 = swift_task_alloc();
  *(v1 + 1280) = v106;
  *v106 = v1;
  v106[1] = sub_26126E7B0;
  v107 = *(v1 + 1112);
  v108 = MEMORY[0x277D84F78] + 8;

  return sub_261252A34(v106, v107, sub_261274168, v105, v119, v108);
}

uint64_t sub_26126E7B0()
{
  v2 = *(*v1 + 1112);
  v3 = *(*v1 + 1104);
  v4 = *(*v1 + 1096);
  *(*v1 + 1288) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26126EA8C;
  }

  else
  {
    v5 = sub_26126E960;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26126E960()
{
  (*(v0[142] + 8))(v0[145], v0[141]);

  v1 = v0[1];

  return v1(0, 255);
}

uint64_t sub_26126EA8C()
{
  v1 = v0[156];
  v2 = v0[154];
  v3 = v0[146];
  sub_26125A870(v0[153], v3, &qword_27FE9F560, &qword_2613A3CB0);
  if (v1(v3, 1, v2) == 1)
  {
    sub_26124C718(v0[146], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v4 = v0[161];
    v5 = v4;
    v6 = sub_2613A122C();
    v7 = sub_2613A1D8C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[161];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v8;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_261243000, v6, v7, "Could not save SAF transaction due to: [ %@ ]", v9, 0xCu);
      sub_26124C718(v10, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v10, -1, -1);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v13 = v0[155];
    v14 = v0[154];
    v15 = v0[146];

    (*(v13 + 8))(v15, v14);
  }

  v16 = v0[161];
  v17 = v0[145];
  v18 = v0[142];
  v19 = v0[141];
  swift_getErrorValue();
  v22 = sub_2613A250C();

  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20(v22, 1);
}

uint64_t sub_26126ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v10 = sub_2613A1EBC();
  v9[11] = v10;
  v9[12] = *(v10 - 8);
  v9[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126EE58, 0, 0);
}

uint64_t sub_26126EE58(uint64_t a1)
{
  v2 = v1[14];
  v3 = sub_26129B8EC();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(v1[14], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Searching for expired transactions", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v1[14];

    (*(v5 + 8))(v9, v4);
  }

  v10 = v1[13];
  v12 = v1[3];
  v11 = v1[4];
  v13 = *(v1[10] + 16);
  v1[15] = v13;
  v14 = swift_allocObject();
  v1[16] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2B0, &qword_2613A4378);
  sub_2612529C0(v10);
  v16 = swift_task_alloc();
  v1[17] = v16;
  *v16 = v1;
  v16[1] = sub_26126F0B0;
  v17 = v1[13];

  return sub_261252A34((v1 + 2), v17, sub_2612742D4, v14, v13, v15);
}

uint64_t sub_26126F0B0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);

  if (v0)
  {
    v3 = sub_26126F73C;
  }

  else
  {
    v3 = sub_26126F258;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26126F258()
{
  v1 = v0[2];
  v0[19] = v1;
  v0[20] = *(v1 + 16);
  v0[21] = sub_2613A0D6C();
  if (*(v1 + 16))
  {
    type metadata accessor for SafMonitorEventDispatcher();
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_26126F49C;
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];

    return sub_26129F7F8(v4, v7, v5, v6, v3, v1);
  }

  else
  {

    if (v0[20] >= v0[21])
    {
      v10 = v0[13];
      v12 = v0[3];
      v11 = v0[4];
      v13 = *(v0[10] + 16);
      v0[15] = v13;
      v14 = swift_allocObject();
      v0[16] = v14;
      *(v14 + 16) = v12;
      *(v14 + 24) = v11;

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2B0, &qword_2613A4378);
      sub_2612529C0(v10);
      v16 = swift_task_alloc();
      v0[17] = v16;
      *v16 = v0;
      v16[1] = sub_26126F0B0;
      v17 = v0[13];

      return sub_261252A34((v0 + 2), v17, sub_2612742D4, v14, v13, v15);
    }

    else
    {

      v9 = v0[1];

      return v9();
    }
  }
}

uint64_t sub_26126F49C()
{

  return MEMORY[0x2822009F8](sub_26126F5B4, 0, 0);
}

uint64_t sub_26126F5B4()
{
  if (v0[20] >= v0[21])
  {
    v3 = v0[13];
    v5 = v0[3];
    v4 = v0[4];
    v6 = *(v0[10] + 16);
    v0[15] = v6;
    v7 = swift_allocObject();
    v0[16] = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2B0, &qword_2613A4378);
    sub_2612529C0(v3);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_26126F0B0;
    v10 = v0[13];

    return sub_261252A34((v0 + 2), v10, sub_2612742D4, v7, v6, v8);
  }

  else
  {

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_26126F73C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26126F7A8(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v29 = MEMORY[0x266700BB0](v10);
  v13 = sub_2613A0D6C();
  v14 = sub_261254C30(v13);
  sub_261254C34(a1, a2, a3, v13, v15, v14);
  if (v4)
  {
    objc_autoreleasePoolPop(v29);
  }

  else
  {
    v17 = v16;
    v28 = a4;
    if (*(v16 + 16))
    {
      v18 = sub_26129B8EC();
      sub_26125A870(v18, v12, &qword_27FE9F560, &qword_2613A3CB0);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      v21 = *(v20 + 48);
      v27 = v19;
      if (v21(v12, 1) == 1)
      {
        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v23 = sub_2613A122C();
        HIDWORD(v25) = sub_2613A1D9C();
        v26 = v23;
        if (os_log_type_enabled(v23, BYTE4(v25)))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_261243000, v26, BYTE4(v25), "Expired transactions found, deleting...", v24, 2u);
          MEMORY[0x266701350](v24, -1, -1);
        }

        (*(v20 + 8))(v12, v27);
      }

      sub_261256C8C(a1, a2, a3, v17);
      v22 = v28;
    }

    else
    {
      v22 = v28;
    }

    objc_autoreleasePoolPop(v29);
    *v22 = v17;
  }
}

uint64_t sub_26126FA18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2613A1EBC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126FB14, 0, 0);
}

uint64_t sub_26126FB14(uint64_t a1)
{
  v2 = v1[8];
  v3 = sub_26129B8EC();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(v1[8], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Checking for empty batches", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v1[8];

    (*(v5 + 8))(v9, v4);
  }

  v10 = v1[7];
  v11 = v1[3];
  v12 = v1[2];
  v13 = *(v1[4] + 16);
  v1[9] = v13;
  v14 = swift_allocObject();
  v1[10] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;

  v15 = MEMORY[0x277D84F78];
  sub_2612529C0(v10);
  v16 = swift_task_alloc();
  v1[11] = v16;
  *v16 = v1;
  v16[1] = sub_26126FD58;
  v17 = v1[7];

  return sub_261252A34(v16, v17, sub_2612742F0, v14, v13, v15 + 8);
}

uint64_t sub_26126FD58()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26126FF74;
  }

  else
  {
    v5 = sub_26126FF08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26126FF08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26126FF74()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26126FFE0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v136 = a4;
  v137 = a1;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v124 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v129 = &v113 - v11;
  MEMORY[0x28223BE20](v10);
  v127 = &v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v125 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v126 = &v113 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v133 = &v113 - v19;
  MEMORY[0x28223BE20](v18);
  v128 = &v113 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v113 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v113 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = &v113 - v31;
  v130 = v7;
  v35 = *(v7 + 56);
  v34 = v7 + 56;
  v33 = v35;
  v132 = v6;
  v35(&v113 - v31, 1, 1, v6);
  v131 = a2;
  v134 = a3;
  v36 = v135;
  v37 = sub_261257344(a2, a3, v136, v32);
  sub_26124C718(v32, &qword_27FE9F280, &unk_2613A42B0);
  if (!v36)
  {
    v120 = v27;
    v121 = v30;
    v122 = v33;
    v123 = v34;
    v119 = v24;
    v38 = v134;
    if (v37)
    {
      v39 = v37;
      v135 = 0;
      v117 = sub_26129B8EC();
      v40 = v133;
      sub_26125A870(v117, v133, &qword_27FE9F560, &qword_2613A3CB0);
      v41 = sub_2613A124C();
      v128 = *(v41 - 8);
      v42 = *(v128 + 48);
      v116 = v128 + 48;
      v115 = v42;
      v43 = v42(v40, 1, v41);
      v44 = &off_279AD5000;
      v118 = v41;
      if (v43 == 1)
      {
        sub_26124C718(v40, &qword_27FE9F560, &qword_2613A3CB0);
        v46 = v131;
        v45 = v132;
        v47 = v130;
      }

      else
      {
        v55 = v37;
        v56 = sub_2613A122C();
        v57 = sub_2613A1D9C();

        v58 = os_log_type_enabled(v56, v57);
        v59 = v132;
        v47 = v130;
        if (v58)
        {
          v60 = swift_slowAlloc();
          v113 = v60;
          v114 = swift_slowAlloc();
          v138 = v114;
          *v60 = 136315138;
          v61 = v57;
          v62 = [v55 batchId];
          v63 = v127;
          sub_26139F11C();

          sub_2612746B0(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v64 = sub_2613A23EC();
          v66 = v65;
          v67 = v63;
          v68 = v59;
          (*(v47 + 8))(v67, v59);
          v69 = sub_26124C11C(v64, v66, &v138);

          v70 = v113;
          *(v113 + 1) = v69;
          v44 = &off_279AD5000;
          _os_log_impl(&dword_261243000, v56, v61, "Checking if batch [%s] is empty", v70, 0xCu);
          v71 = v114;
          __swift_destroy_boxed_opaque_existential_0Tm(v114);
          MEMORY[0x266701350](v71, -1, -1);
          MEMORY[0x266701350](v70, -1, -1);

          v46 = v131;
        }

        else
        {
          v68 = v132;

          v46 = v131;
          v44 = &off_279AD5000;
        }

        (*(v128 + 8))(v133, v41);
        v38 = v134;
        v45 = v68;
      }

      v75 = [v39 v44[71]];
      v76 = v129;
      sub_26139F11C();

      v133 = v39;
      v77 = *(v47 + 32);
      v78 = v121;
      v77(v121, v76, v45);
      v79 = v122;
      v122(v78, 0, 1, v45);
      v80 = v120;
      v79(v120, 1, 1, v45);
      v81 = v135;
      v82 = sub_261253720(v46, v38, v136, v78, v80);
      if (v81)
      {

        sub_26124C718(v80, &qword_27FE9F280, &unk_2613A42B0);
        v54 = v78;
        v52 = &qword_27FE9F280;
        v53 = &unk_2613A42B0;
        goto LABEL_16;
      }

      v83 = v82;
      v129 = v77;
      v135 = 0;
      sub_26124C718(v80, &qword_27FE9F280, &unk_2613A42B0);
      sub_26124C718(v78, &qword_27FE9F280, &unk_2613A42B0);
      if (v83 < 1)
      {
        v86 = v125;
        sub_26125A870(v117, v125, &qword_27FE9F560, &qword_2613A3CB0);
        v87 = v118;
        if (v115(v86, 1, v118) == 1)
        {
          sub_26124C718(v86, &qword_27FE9F560, &qword_2613A3CB0);
          v88 = v136;
          v89 = v132;
          v90 = v124;
          v91 = v119;
          v92 = v129;
        }

        else
        {
          v98 = v133;
          v99 = sub_2613A122C();
          v100 = sub_2613A1D9C();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v138 = v102;
            *v101 = 136315138;
            v103 = [v98 batchId];
            LODWORD(v126) = v100;
            v104 = v103;
            v105 = v127;
            sub_26139F11C();

            sub_2612746B0(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v106 = v132;
            v107 = sub_2613A23EC();
            v109 = v108;
            (*(v130 + 8))(v105, v106);
            v110 = sub_26124C11C(v107, v109, &v138);

            *(v101 + 4) = v110;
            _os_log_impl(&dword_261243000, v99, v126, "Batch [%s] is empty, deleting it", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v102);
            MEMORY[0x266701350](v102, -1, -1);
            MEMORY[0x266701350](v101, -1, -1);
          }

          v88 = v136;
          v90 = v124;
          v92 = v129;
          (*(v128 + 8))(v125, v87);
          v89 = v132;
          v91 = v119;
        }

        v111 = v133;
        v112 = [v133 batchId];
        sub_26139F11C();

        v92(v91, v90, v89);
        v122(v91, 0, 1, v89);
        sub_261257484(v131, v134, v88, v91, v137);
        sub_26124C718(v91, &qword_27FE9F280, &unk_2613A42B0);
      }

      else
      {
        v84 = v126;
        sub_26125A870(v117, v126, &qword_27FE9F560, &qword_2613A3CB0);
        v85 = v118;
        if (v115(v84, 1, v118) == 1)
        {

          sub_26124C718(v84, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v93 = sub_2613A122C();
          v94 = sub_2613A1D9C();
          v95 = os_log_type_enabled(v93, v94);
          v96 = v133;
          if (v95)
          {
            v97 = swift_slowAlloc();
            *v97 = 0;
            _os_log_impl(&dword_261243000, v93, v94, "Batch is not empty", v97, 2u);
            MEMORY[0x266701350](v97, -1, -1);
          }

          (*(v128 + 8))(v84, v85);
        }
      }
    }

    else
    {
      v48 = sub_26129B8EC();
      v49 = v128;
      sub_26125A870(v48, v128, &qword_27FE9F560, &qword_2613A3CB0);
      v50 = sub_2613A124C();
      v51 = *(v50 - 8);
      if ((*(v51 + 48))(v49, 1, v50) == 1)
      {
        v52 = &qword_27FE9F560;
        v53 = &qword_2613A3CB0;
        v54 = v49;
LABEL_16:
        sub_26124C718(v54, v52, v53);
        return;
      }

      v72 = sub_2613A122C();
      v73 = sub_2613A1D9C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_261243000, v72, v73, "No batch found, cleanup is not needed", v74, 2u);
        MEMORY[0x266701350](v74, -1, -1);
      }

      (*(v51 + 8))(v49, v50);
    }
  }
}

uint64_t sub_261270B9C(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 128) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = sub_2613A1EBC();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261270CA0, 0, 0);
}

uint64_t sub_261270CA0(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = sub_26129B8EC();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(*(v1 + 80), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Checking RTC counter in the transactions", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = *(v1 + 80);

    (*(v5 + 8))(v9, v4);
  }

  v10 = *(v1 + 48);
  v11 = swift_allocObject();
  *(v1 + 88) = v11;
  *(v11 + 16) = 0;
  v12 = *(v1 + 72);
  v13 = *(v1 + 40);
  v14 = *(v1 + 128);
  v16 = *(v1 + 24);
  v15 = *(v1 + 32);
  v17 = *(v10 + 16);
  *(v1 + 96) = v17;
  v18 = swift_allocObject();
  *(v1 + 104) = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v13;
  *(v18 + 48) = v11;

  v19 = MEMORY[0x277D83B88];
  sub_2612529C0(v12);
  v20 = swift_task_alloc();
  *(v1 + 112) = v20;
  *v20 = v1;
  v20[1] = sub_261270F30;
  v21 = *(v1 + 72);

  return sub_261252A34(v1 + 16, v21, sub_26127430C, v18, v17, v19);
}

uint64_t sub_261270F30()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);

  if (v0)
  {
    v3 = sub_2612712A0;
  }

  else
  {
    v3 = sub_2612710D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2612710D8()
{
  v1 = *(v0 + 16);
  v2 = sub_2613A0D6C();
  v3 = *(v0 + 88);
  if (v1 >= v2)
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 128);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = *(*(v0 + 48) + 16);
    *(v0 + 96) = v11;
    v12 = swift_allocObject();
    *(v0 + 104) = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v9;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    *(v12 + 48) = v3;

    v13 = MEMORY[0x277D83B88];
    sub_2612529C0(v6);
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_261270F30;
    v15 = *(v0 + 72);

    return sub_261252A34(v0 + 16, v15, sub_26127430C, v12, v11, v13);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2612712A0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_261271318@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, double *a5@<X5>, uint64_t *a6@<X6>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v70 = a7;
  v71 = a6;
  v75 = *MEMORY[0x277D85DE8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  v23 = sub_2613A0D6C();
  v24 = v73;
  result = sub_26125545C(a1, a2, a3, a4, v23);
  v26 = v71;
  if (v24)
  {
LABEL_2:
    *v26 = v24;
    return result;
  }

  v27 = result;
  v68 = 0;
  v69 = v22;
  v73 = a1;
  v28 = (result >> 62);
  if (!(result >> 62))
  {
    v29 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_5;
    }

LABEL_30:

    swift_beginAccess();
    v52 = *a5;
    v53 = sub_26129B8EC();
    if (v52 == 0.0)
    {
      v54 = v20;
      sub_26125A870(v53, v20, &qword_27FE9F560, &qword_2613A3CB0);
      v55 = sub_2613A124C();
      v56 = *(v55 - 8);
      if ((*(v56 + 48))(v54, 1, v55) == 1)
      {
        result = sub_26124C718(v54, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v60 = sub_2613A122C();
        v61 = sub_2613A1D9C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_261243000, v60, v61, "All transactions have a valid RTC counter", v62, 2u);
          MEMORY[0x266701350](v62, -1, -1);
        }

        result = (*(v56 + 8))(v54, v55);
      }
    }

    else
    {
      v57 = v17;
      sub_26125A870(v53, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v58 = sub_2613A124C();
      v59 = *(v58 - 8);
      if ((*(v59 + 48))(v57, 1, v58) == 1)
      {
        result = sub_26124C718(v57, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v63 = sub_2613A122C();
        v64 = sub_2613A1D9C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_261243000, v63, v64, "No more transactions with invalid RTC counter", v65, 2u);
          MEMORY[0x266701350](v65, -1, -1);
        }

        result = (*(v59 + 8))(v57, v58);
      }
    }

    *v70 = 0;
    return result;
  }

LABEL_29:
  v29 = sub_2613A221C();
  if (!v29)
  {
    goto LABEL_30;
  }

LABEL_5:
  v72 = v29;
  v30 = sub_26129B8EC();
  v31 = v69;
  sub_26125A870(v30, v69, &qword_27FE9F560, &qword_2613A3CB0);
  v32 = sub_2613A124C();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v31, 1, v32);
  v67 = v28;
  if (v34 == 1)
  {
    sub_26124C718(v31, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = sub_2613A122C();
    v36 = sub_2613A1D9C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261243000, v35, v36, "There are RTC counters to be updated", v37, 2u);
      MEMORY[0x266701350](v37, -1, -1);
    }

    (*(v33 + 8))(v69, v32);
  }

  swift_beginAccess();
  swift_beginAccess();
  v20 = 0;
  v38 = v27 & 0xC000000000000001;
  v17 = (v27 & 0xFFFFFFFFFFFFFF8);
  v28 = &off_279AD5000;
  do
  {
    if (v38)
    {
      v39 = v27;
      v40 = MEMORY[0x2667005C0](v20, v27);
    }

    else
    {
      if (v20 >= *(v17 + 2))
      {
        goto LABEL_27;
      }

      v39 = v27;
      v40 = *(v27 + 8 * v20 + 32);
    }

    v41 = v40;
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v42 = *a5 + a8;
    sub_2613A0C6C();
    [v41 setTransactionCPUTime_];
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    [v41 setTransactionCPUTimeCounter_];

    *a5 = *a5 + 1.0;
    ++v20;
    v44 = v27 == v72;
    v27 = v39;
  }

  while (!v44);
  v74 = 0;
  v45 = [v73 save_];
  v46 = v74;
  if (!v45)
  {
    v48 = v74;

    v49 = sub_26139EE7C();

    result = swift_willThrow();
    v24 = v49;
    v26 = v71;
    goto LABEL_2;
  }

  if (v67)
  {
    v47 = sub_2613A221C();
  }

  else
  {
    v47 = *(v17 + 2);
  }

  v50 = v70;
  v51 = v46;

  *v50 = v47;
  return result;
}

uint64_t sub_2612719A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2613A1EBC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261271A6C, 0, 0);
}

uint64_t sub_261271A6C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[4] + 16);
  v0[8] = v4;
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;

  v6 = MEMORY[0x277D839B0];
  sub_2612529C0(v1);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_261271B90;
  v8 = v0[7];

  return sub_261252A34((v0 + 12), v8, sub_2612743D8, v5, v4, v6);
}

uint64_t sub_261271B90()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_261271DAC;
  }

  else
  {
    v5 = sub_261271D40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261271D40()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261271DAC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_261271E14()
{

  sub_261252DA0();
}

void sub_261271E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_26139F13C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = v60;
  v19 = sub_261253210(a2, a3, a4);
  if (!v18)
  {
    v60 = v17;
    v20 = v59;
    v57 = v10;
    if (v19)
    {
      v21 = v12;
      v58 = v19;
      v22 = [v19 partnerId];
      v23 = v60;
      sub_26139F11C();

      sub_2612746B0(&unk_281451E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      LOBYTE(v22) = sub_2613A188C();
      v56 = *(v12 + 8);
      v56(v23, v11);
      if (v22)
      {
      }

      else
      {
        v24 = sub_26129B8EC();
        v25 = v57;
        sub_26125A870(v24, v57, &qword_27FE9F560, &qword_2613A3CB0);
        v26 = sub_2613A124C();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v25, 1, v26) == 1)
        {
          sub_26124C718(v25, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v28 = v11;
          (*(v21 + 16))(v15, v20, v11);
          v29 = v58;
          v30 = sub_2613A122C();
          v31 = sub_2613A1D8C();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v55 = v27;
            v33 = v32;
            v54 = swift_slowAlloc();
            v61 = v54;
            *v33 = 136315394;
            v34 = [v29 partnerId];
            v59 = v26;
            v35 = v34;
            v53 = v30;
            v36 = v60;
            sub_26139F11C();

            sub_2612746B0(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v37 = sub_2613A23EC();
            v39 = v38;
            v40 = v36;
            LOBYTE(v36) = v31;
            v41 = v56;
            v56(v40, v28);
            v42 = sub_26124C11C(v37, v39, &v61);

            *(v33 + 4) = v42;
            *(v33 + 12) = 2080;
            v43 = sub_2613A23EC();
            v45 = v44;
            v41(v15, v28);
            v46 = sub_26124C11C(v43, v45, &v61);

            *(v33 + 14) = v46;
            v26 = v59;
            v25 = v57;
            v47 = v53;
            _os_log_impl(&dword_261243000, v53, v36, "Different partner IDs: [%s] vs [%s]", v33, 0x16u);
            v48 = v54;
            swift_arrayDestroy();
            MEMORY[0x266701350](v48, -1, -1);
            v49 = v33;
            v27 = v55;
            MEMORY[0x266701350](v49, -1, -1);
          }

          else
          {

            v56(v15, v28);
          }

          (*(v27 + 8))(v25, v26);
        }

        v50 = objc_allocWithZone(sub_26139F2CC());
        v51 = sub_26139F2DC();
        sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
        swift_allocError();
        *v52 = v51;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_2612723D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2613A1EBC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261272498, 0, 0);
}

uint64_t sub_261272498()
{
  v1 = v0[7];
  v2 = v0[3];
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  v5 = *(v0[4] + 16);
  v0[8] = v5;
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;

  v7 = MEMORY[0x277D83B88];
  sub_2612529C0(v1);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2612725BC;
  v9 = v0[7];

  return sub_261252A34((v0 + 2), v9, sub_261274418, v6, v5, v7);
}

uint64_t sub_2612725BC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_26127281C;
  }

  else
  {
    (*(v4 + 8))(v2[7], v2[5]);

    v6 = sub_2612727A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2612727A4()
{
  v1 = v0[2];
  v2 = v0[11] != 0;

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_26127281C()
{
  v1 = *(v0 + 88) != 0;

  v2 = *(v0 + 8);

  return v2(0, v1);
}

uint64_t sub_261272890@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v18 - v11);
  v13 = sub_26139F13C();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v14(v10, 1, 1, v13);
  v15 = v20;
  v16 = sub_261253720(a1, a2, a3, v12, v10);
  sub_26124C718(v10, &qword_27FE9F280, &unk_2613A42B0);
  result = sub_26124C718(v12, &qword_27FE9F280, &unk_2613A42B0);
  if (!v15)
  {
    *v19 = v16;
  }

  return result;
}

uint64_t sub_261272A24(uint64_t a1, char a2)
{
  if (!a2)
  {
    return 36;
  }

  if (a2 == 1)
  {
    return 37;
  }

  return qword_2613A4CF8[a1];
}

uint64_t sub_261272A54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionManager();

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  LOBYTE(a1) = sub_2612F8524(a1, a2);

  return a1 & 1;
}

uint64_t sub_261272AD4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_261272B0C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_2613A211C();

    v6 = 0xD000000000000010;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v6 = 0x7272454244666173;
LABEL_5:
    v2 = sub_2613A23EC();
    MEMORY[0x2666FFEA0](v2);

    MEMORY[0x2666FFEA0](41, 0xE100000000000000);
    return v6;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x41746F4E64616572;
    }
  }

  else
  {
    v4 = 0xD00000000000001ELL;
    if (a1 != 5)
    {
      v4 = 0xD000000000000011;
    }

    v5 = 0xD000000000000017;
    if (a1 == 3)
    {
      v5 = 0x7265646165526F6ELL;
    }

    if (a1 <= 4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_261272CF4(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v3 = sub_26139FAAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v74 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v78 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  v18 = sub_2612F9F2C();
  v19 = *v18;
  v20 = *(*v18 + 32);
  if (!v20)
  {
    v32 = sub_26129B8EC();
    sub_26125A870(v32, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v33 = sub_2613A124C();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v10, 1, v33) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v39 = sub_2613A122C();
      v40 = sub_2613A1D8C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v77 = v6;
        v42 = v41;
        *v41 = 0;
        _os_log_impl(&dword_261243000, v39, v40, "Could not retrieve boot ID from system", v41, 2u);
        v43 = v42;
        v6 = v77;
        MEMORY[0x266701350](v43, -1, -1);
      }

      (*(v34 + 8))(v10, v33);
    }

    (*(v4 + 104))(v6, *MEMORY[0x277D43850], v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    goto LABEL_22;
  }

  v74 = v17;
  v75 = v4;
  v76 = v3;
  v77 = v6;
  v21 = *(v19 + 24);
  v22 = *(*a2 + 280);

  v24 = v22(v23);
  v26 = v25;

  v28 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    v35 = sub_26129B8EC();
    sub_26125A870(v35, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v36 = sub_2613A124C();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v13, 1, v36) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      v4 = v75;
      v3 = v76;
    }

    else
    {
      v44 = sub_2613A122C();
      v45 = sub_2613A1D8C();
      v46 = os_log_type_enabled(v44, v45);
      v4 = v75;
      v3 = v76;
      if (v46)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_261243000, v44, v45, "Could not retrieve boot ID from previous session", v47, 2u);
        MEMORY[0x266701350](v47, -1, -1);
      }

      (*(v37 + 8))(v13, v36);
    }

    v6 = v77;
    (*(v4 + 104))(v77, *MEMORY[0x277D43850], v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
LABEL_22:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    v49 = sub_26139F2CC();
    *(inited + 32) = sub_26139F28C();
    *(inited + 40) = v50;
    v51 = sub_26139FA9C();
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v51;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    v52 = objc_allocWithZone(v49);
    v31 = sub_26139F2DC();
    (*(v4 + 8))(v6, v3);
    *&v90[0] = v31;
    sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
LABEL_23:
    swift_willThrowTypedImpl();
    return v31;
  }

  v29 = v22(v27);
  v31 = v30;
  if (v29 != v21 || v20 != v30)
  {
    v38 = sub_2613A241C();

    if (v38)
    {
      return v31;
    }

    v55 = *(v79 + 80);
    v54 = *(v79 + 88);
    type metadata accessor for SessionManager();
    *&v80 = v55;
    *(&v80 + 1) = v54;

    MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
    v56 = v80;
    v57 = sub_261273E7C();
    v58 = sub_261273ED0();
    sub_2612F7868(v56, *(&v56 + 1), &type metadata for StoreAndForwardSession, v57, v58, &v80);

    *(v89 + 9) = *(v87 + 9);
    v88[6] = v86;
    v89[0] = v87[0];
    v88[2] = v82;
    v88[3] = v83;
    v88[4] = v84;
    v88[5] = v85;
    v88[0] = v80;
    v88[1] = v81;
    v90[6] = v86;
    v91[0] = v87[0];
    *(v91 + 9) = *(v89 + 9);
    v90[2] = v82;
    v90[3] = v83;
    v90[4] = v84;
    v90[5] = v85;
    v90[0] = v80;
    v90[1] = v81;
    if (sub_261273F24(v90) == 1)
    {
      v59 = sub_26129B8EC();
      v60 = v78;
      sub_26125A870(v59, v78, &qword_27FE9F560, &qword_2613A3CB0);
      v61 = sub_2613A124C();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v60, 1, v61) == 1)
      {
        sub_26124C718(v60, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v67 = sub_2613A122C();
        v68 = sub_2613A1D8C();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_261243000, v67, v68, "SAF session cannot be created without a previous online synchronization", v69, 2u);
          MEMORY[0x266701350](v69, -1, -1);
        }

        (*(v62 + 8))(v60, v61);
      }
    }

    else
    {
      sub_26124C718(v88, &qword_27FE9F458, &unk_2613A4BE0);
      v63 = sub_26129B8EC();
      v64 = v74;
      sub_26125A870(v63, v74, &qword_27FE9F560, &qword_2613A3CB0);
      v65 = sub_2613A124C();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v64, 1, v65) == 1)
      {
        sub_26124C718(v64, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v70 = sub_2613A122C();
        v71 = sub_2613A1D8C();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_261243000, v70, v71, "Device rebooted and SAF session was invalidated", v72, 2u);
          MEMORY[0x266701350](v72, -1, -1);
        }

        (*(v66 + 8))(v74, v65);
      }
    }

    v73 = objc_allocWithZone(sub_26139F2CC());
    v31 = sub_26139F2DC();
    *&v80 = v31;
    sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618], MEMORY[0x277D43620]);
    goto LABEL_23;
  }

  return v31;
}

uint64_t sub_2612736DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_26129B8EC();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D7C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = 1;
      _os_log_impl(&dword_261243000, v12, v13, "Updating online session SAF active flag as [ %{BOOL}d ]", v14, 8u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  (*(*a3 + 312))(1);
  return sub_26125B1E4(a1, a2, a3);
}

id sub_2612738E0(void *a1)
{
  v2 = sub_26139FAAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v49 = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v13 = sub_26139F2CC();
  if (swift_dynamicCast())
  {
    v14 = v48;
    v15 = sub_26129B8EC();
    sub_26125A870(v15, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v11, 1, v16) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = v14;
      v21 = sub_2613A122C();
      v22 = sub_2613A1D8C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v49 = v24;
        *v23 = 136315138;
        sub_26139F2BC();
        v25 = sub_26139F2EC();
        v27 = sub_26124C11C(v25, v26, &v49);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_261243000, v21, v22, "[SAF] Returning error: [ %s ]", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x266701350](v24, -1, -1);
        MEMORY[0x266701350](v23, -1, -1);
      }

      (*(v17 + 8))(v11, v16);
    }
  }

  else
  {
    v18 = sub_26129B8EC();
    sub_26125A870(v18, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9, 1, v19) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v47 = v2;
      v28 = a1;
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();

      v46 = v30;
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = v29;
        v32 = v31;
        v33 = swift_slowAlloc();
        v48 = a1;
        v49 = v33;
        *v32 = 136315138;
        v34 = a1;
        v35 = sub_2613A195C();
        v37 = sub_26124C11C(v35, v36, &v49);

        *(v32 + 4) = v37;
        v38 = v45;
        _os_log_impl(&dword_261243000, v45, v46, "[SAF] Unexpected error: [ %s ]", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x266701350](v33, -1, -1);
        MEMORY[0x266701350](v32, -1, -1);
      }

      else
      {
      }

      v2 = v47;
      (*(v20 + 8))(v9, v19);
    }

    (*(v3 + 104))(v5, *MEMORY[0x277D43838], v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    *(inited + 32) = sub_26139F28C();
    *(inited + 40) = v40;
    v41 = sub_26139FA9C();
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v41;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    v42 = objc_allocWithZone(v13);
    v14 = sub_26139F2DC();
    (*(v3 + 8))(v5, v2);
  }

  return v14;
}

unint64_t sub_261273E7C()
{
  result = qword_27FE9F438;
  if (!qword_27FE9F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F438);
  }

  return result;
}

unint64_t sub_261273ED0()
{
  result = qword_27FE9F440;
  if (!qword_27FE9F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F440);
  }

  return result;
}

uint64_t sub_261273F24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_261273F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t sub_261273F80()
{
  result = qword_27FE9F448;
  if (!qword_27FE9F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F448);
  }

  return result;
}

unint64_t sub_261274084()
{
  result = qword_27FE9F450;
  if (!qword_27FE9F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F450);
  }

  return result;
}

uint64_t sub_261274104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreAndForwardReadResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_261274168(uint64_t a1, void *a2)
{
  v6 = *(type metadata accessor for StoreAndForwardReadResult(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_26139F13C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_261252DC4(a2, v2 + v7, v2 + v10, v11);
  if (!v3)
  {
    type metadata accessor for Mock();
    v12 = sub_26129B284(33);
    if (v12 >= 1)
    {
      sub_261257948(a2, (v2 + v7), (v2 + v10), v12 - 1, a1, v11);
    }
  }
}

void sub_26127430C(void *a1@<X1>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = MEMORY[0x266700BB0]();
  sub_261271318(a1, v6, v7, v8, (v10 + 16), &v12, &v13, v9);
  objc_autoreleasePoolPop(v11);
  if (!v3)
  {
    *a2 = v13;
  }
}

BOOL sub_2612743D8@<W0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_261255BA4(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
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

uint64_t getEnumTagSinglePayload for CardReadFailedReason(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CardReadFailedReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2612744F8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_261274510(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2612746B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261274710(char a1)
{
  if (!a1)
  {
    return 0x6164696C61766E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_261274774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000018;
  v4 = 0x80000002613B8760;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000002613B8760;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6164696C61766E69;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000646574;
  }

  v8 = 0xD000000000000018;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6164696C61766E69;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2613A241C();
  }

  return v11 & 1;
}

uint64_t sub_261274874()
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_261274924(uint64_t a1)
{
  sub_2613A19DC();
}

uint64_t sub_2612749C0(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

unint64_t sub_261274A6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26127BB94(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261274A9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0x80000002613B8760;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6164696C61766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261274B3C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void *sub_261274B7C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_261274BC0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_261274C40(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
  return swift_unknownObjectRelease();
}

void sub_261274CC0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void sub_261274D44(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_261274D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_261279B10(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_261274EA0(uint64_t a1, void *a2, char a3)
{
  v7 = *v3;
  swift_beginAccess();
  *(v3 + 16) = 1;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v7 + 80);
  v9[3] = *(v7 + 88);
  v9[4] = v8;
  if (a3)
  {

    v10 = sub_261276D98(sub_26127BC34, v3);
    sub_2612757A8(v10, a1, sub_26127BC2C, v9);
  }

  else
  {
    v10 = sub_261276D98(0, 0);
    sub_2612754B4(v10, a1, a2, sub_26127BC2C, v9);
  }
}

uint64_t sub_26127500C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18[-1] - v4;
  v6 = sub_26129B6C4();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      *v11 = 136315138;
      HIDWORD(v17) = v2;
      if (v2)
      {
        if (v2 == 1)
        {
          v13 = 0xD000000000000018;
        }

        else
        {
          v13 = 0x6E776F6E6B6E75;
        }

        if (v2 == 1)
        {
          v14 = 0x80000002613B8760;
        }

        else
        {
          v14 = 0xE700000000000000;
        }
      }

      else
      {
        v14 = 0xEB00000000646574;
        v13 = 0x6164696C61766E69;
      }

      v15 = sub_26124C11C(v13, v14, v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_261243000, v9, v10, "invalidationHandler - errorCode = %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);

      v2 = HIDWORD(v17);
    }

    else
    {
    }

    (*(v8 + 8))(v5, v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261275DC0(v2);
  }

  return result;
}